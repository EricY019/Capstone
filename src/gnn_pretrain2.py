# pre_train.py

import torch
import torch.nn as nn
import torch.nn.functional as F
from torch_geometric.nn import TransformerConv, JumpingKnowledge
from torch_geometric.data import Data
from torch_geometric.data import Data, DataLoader

from data import get_data_list, MyOwnDataset
from data import get_kernel_samples, split_dataset, split_dataset_resample, split_train_test_kernel
from collections import OrderedDict, defaultdict

from nn_att import MyGlobalAttention

from tqdm import tqdm

gpu_id=0
log_dir = "ckpt_pretrain"
version = "5"
import os

def process_split_data(dataset):
    dataset_dict = defaultdict(list)
    dataset_dict['train'] = dataset
    dataset_dict['test'] = None
    # if not FLAGS.all_kernels:
    #     dataset = get_kernel_samples(dataset)
    #     dataset_dict['train'] = dataset
    # elif FLAGS.test_kernels is not None:
    #     dataset_dict = split_train_test_kernel(dataset)
        
    return dataset_dict

def get_train_val_count(num_graphs, val_ratio, test_ratio):
    # if FLAGS.test_kernels is not None:
    #     r1 = int(num_graphs * (1.0 - val_ratio))
    #     r2 = int(num_graphs * (val_ratio))
    # else:
    r1 = int(num_graphs * (1.0 - val_ratio - test_ratio))
    r2 = int(num_graphs * (val_ratio))
        
    return r1, r2

class GNNModel(nn.Module):
    def __init__(self, in_channels, hidden_channels, out_channels, num_layers=5, dropout=0.1):
        super(GNNModel, self).__init__()
        self.conv_first = TransformerConv(in_channels, hidden_channels, edge_dim=335, heads=1, dropout=dropout)
        self.conv_layers = nn.ModuleList([
            TransformerConv(hidden_channels, hidden_channels, heads=1, edge_dim=335, dropout=dropout)
            for _ in range(num_layers-1)
        ])
        self.num_conv_layers = num_layers
        self.dropout = dropout
        self.jkn = JumpingKnowledge('max', 64, num_layers=2)
        
        self.gate_nn = nn.Sequential(
            nn.Linear(hidden_channels, hidden_channels),
            nn.ReLU(),
            nn.Linear(hidden_channels, 1),)
        self.glob = MyGlobalAttention(self.gate_nn, None)

        # MLP heads (6 tasks)
        # self.loop_head = nn.Sequential(
        #     nn.Linear(64, 16),
        #     nn.ReLU(),
        #     nn.Linear(16, 1)
        # )
        # self.computation_head = nn.Sequential(
        #     nn.Linear(64, 16),
        #     nn.ReLU(),
        #     nn.Linear(16, 1)
        # )
        # self.execution_time_head = nn.Sequential(
        #     nn.Linear(64, 16),
        #     nn.ReLU(),
        #     nn.Linear(16, 1)
        # )
        # self.instruction_head = nn.Sequential(
        #     nn.Linear(64, 16),
        #     nn.ReLU(),
        #     nn.Linear(16, 1)
        # )
        # self.cpi_head = nn.Sequential(
        #     nn.Linear(64, 16),
        #     nn.ReLU(),
        #     nn.Linear(16, 1)
        # )
        # self.total_memory_head = nn.Sequential(
        #     nn.Linear(64, 16),
        #     nn.ReLU(),
        #     nn.Linear(16, 1)
        # )
        
        self.loop_head = nn.Sequential(
            # nn.Linear(64, 16),
            # nn.ReLU(),
            nn.Linear(64, 1)
        )
        self.computation_head = nn.Sequential(
            # nn.Linear(64, 16),
            # nn.ReLU(),
            nn.Linear(64, 1)
        )
        self.execution_time_head = nn.Sequential(
            # nn.Linear(64, 16),
            # nn.ReLU(),
            nn.Linear(64, 1)
        )
        self.instruction_head = nn.Sequential(
            # nn.Linear(64, 16),
            # nn.ReLU(),
            nn.Linear(64, 1)
        )
        self.cpi_head = nn.Sequential(
            # nn.Linear(64, 16),
            # nn.ReLU(),
            nn.Linear(64, 1)
        )
        self.total_memory_head = nn.Sequential(
            # nn.Linear(64, 16),
            # nn.ReLU(),
            nn.Linear(64, 1)
        )

    def forward(self, x, edge_index, edge_attr=None, batch=None):
        activation = F.elu
        outs = []
        out = activation(self.conv_first(x, edge_index, edge_attr=edge_attr))
        outs.append(out)
        for i, conv in enumerate(self.conv_layers):
            out = conv(out, edge_index, edge_attr=edge_attr)
            if i != self.num_conv_layers - 1:
                out = activation(out)
            outs.append(out)
        
        # Embeddings from jumping knowledge
        out = self.jkn(outs)
        
        out, _ = self.glob(out, batch)

        # Predictions from each MLP head
        loop_pred = self.loop_head(out)
        computation_pred = self.computation_head(out)
        execution_time_pred = self.execution_time_head(out)
        instruction_pred = self.instruction_head(out)
        cpi_pred = self.cpi_head(out)
        total_memory_pred = self.total_memory_head(out)

        return {
            'loop': loop_pred,
            'computation': computation_pred,
            'execution_time': execution_time_pred,
            'instruction': instruction_pred,
            'cpi': cpi_pred,
            'total_memory': total_memory_pred
        }

    def embed_nodes(self, x, edge_index, edge_attr=None):
        activation = F.elu
        out = activation(self.conv_first(x, edge_index, edge_attr=edge_attr))
        for i, conv in enumerate(self.conv_layers):
            out = conv(out, edge_index, edge_attr=edge_attr)
            if i != self.num_conv_layers - 1:
                out = activation(out)
        out = self.jkn(out)
        return out

def compute_loss(preds, data):
    loss_fn = nn.MSELoss()
    loop_loss = torch.sqrt(loss_fn(preds['loop'], data.loop_count))
    computation_loss = torch.sqrt(loss_fn(preds['computation'], data.computation_count))
    execution_time_loss = torch.sqrt(loss_fn(preds['execution_time'], data.execution_time_cycles))
    instruction_loss = torch.sqrt(loss_fn(preds['instruction'], data.instruction_count))
    cpi_loss = torch.sqrt(loss_fn(preds['cpi'], data.cpi))
    # total_memory_loss = torch.sqrt(loss_fn(preds['total_memory'], data.total_memory))
    
    
    # _total_loss = (loop_loss + computation_loss + execution_time_loss +
    #               instruction_loss + cpi_loss + total_memory_loss) / 6
    
    
    # total_loss = (loop_loss / loop_loss.detach() + computation_loss / computation_loss.detach() + execution_time_loss / execution_time_loss.detach() +
    #               instruction_loss / instruction_loss.detach() + cpi_loss / cpi_loss.detach() + total_memory_loss / total_memory_loss.detach()) / 6
    # total_loss = (loop_loss ) / 1
    
    total_loss = (loop_loss + computation_loss + execution_time_loss +
                  instruction_loss + cpi_loss) / 5
    
    
    return total_loss

def gen_dataset(li, batch_size):
    train_loader = DataLoader(li[0], batch_size=batch_size, shuffle=False, pin_memory=True, num_workers=1)
    val_loader = DataLoader(li[1], batch_size=batch_size, pin_memory=True, num_workers=1)  # TODO: split make sure no seen kernels in val/test
    test_loader = DataLoader(li[2], batch_size=batch_size, pin_memory=True, num_workers=1)  # TODO

    loader = train_loader
    if len(test_loader.dataset) > 0: loader = test_loader
    num_features = loader.dataset[0].num_features
    print(f'num features for training: {num_features}')
    edge_dim = loader.dataset[0].edge_attr.shape[1]
    print(f'size of the edge attribute is {edge_dim}')
    
    return train_loader, val_loader, test_loader, num_features, edge_dim 

if __name__ == "__main__":
    # ------------------------------------------------------------------
    # Load and prepare the dataset
    val_ratio = 0.1
    test_ratio = 0.1
    resample = -1
    batch_size = 8
    gpu_id = 3
    num_epochs = 200
    lr = 1e-5
    log_dir = "./pretraining_logs"
    pretrained_save_dir = "./pretrained_encoders"

    os.makedirs(log_dir, exist_ok=True)
    os.makedirs(pretrained_save_dir, exist_ok=True)

    # Load your dataset
    dataset = MyOwnDataset()  # Replace with your dataset class
    dataset_dict = process_split_data(dataset)
    num_graphs = len(dataset_dict["train"])
    r1, r2 = get_train_val_count(num_graphs, val_ratio, test_ratio)

    if resample == -1:
        li = split_dataset(dataset_dict["train"], r1, r2, dataset_test=dataset_dict["test"])
    else:
        li = split_dataset_resample(dataset_dict["train"], 1.0 - val_ratio - test_ratio, val_ratio, test_ratio, test_id=resample)

    train_loader, val_loader, test_loader, num_features, edge_dim = gen_dataset(li, batch_size)

    # ------------------------------------------------------------------
    # Initialize models and optimizer
    device = torch.device(f"cuda:{gpu_id}" if torch.cuda.is_available() else "cpu")

    # GNN Model
    gnn_model = GNNModel(
        in_channels=num_features,
        hidden_channels=64,
        out_channels=1,
        num_layers=7,
        dropout=0.1,
    ).to(device)

    # CodeLlama Encoder
    llm_encoder = CodeLlamaEncoder(
        model_name="meta-llama/CodeLlama-7b-hf",
        device=device,
        embedding_dim=64,
    ).to(device)

    # Pretraining Model
    pretraining_model = PretrainingModel(gnn_model, llm_encoder, embedding_dim=64).to(device)

    # Optimizer
    optimizer = torch.optim.Adam(pretraining_model.parameters(), lr=lr, weight_decay=1e-4)

    # ------------------------------------------------------------------
    # Training Loop
    from tqdm import tqdm

    for epoch in range(num_epochs):
        pretraining_model.train()
        bar = tqdm(train_loader)
        total_loss = 0
        total_cnt = 0

        for i, data in enumerate(bar):
            # Process graph data and text data
            graph_data = data.to(device)
            text_data = [text for text in data.text]  # Assuming text is part of the dataset

            # Forward pass
            output = pretraining_model(graph_data, text_data)
            aligned_embedding = output["aligned_embedding"]
            graph_embedding = output["graph_embedding"]
            text_embedding = output["text_embedding"]
            predictions = output["predictions"]

            # Compute losses
            align_loss = alignment_loss(graph_embedding, text_embedding)
            task_loss = compute_loss(predictions, graph_data)
            total_loss_batch = align_loss + task_loss

            # Backpropagation
            optimizer.zero_grad()
            total_loss_batch.backward()
            optimizer.step()

            total_loss += total_loss_batch.item()
            total_cnt += 1

            bar.set_description(f"Epoch {epoch+1}, Loss: {total_loss_batch.item():.4f}")

        # Save model checkpoints every 10 epochs
        if (epoch + 1) % 10 == 0 or (epoch + 1) == num_epochs:
            torch.save(pretraining_model.gnn.state_dict(), os.path.join(pretrained_save_dir, f"gnn_encoder_epoch_{epoch+1}.pt"))
            torch.save(pretraining_model.llm.state_dict(), os.path.join(pretrained_save_dir, f"llm_encoder_epoch_{epoch+1}.pt"))

        # Print average loss for the epoch
        average_loss = total_loss / total_cnt
        print(f"Epoch {epoch+1}/{num_epochs}, Average Loss: {average_loss:.4f}")

    # ------------------------------------------------------------------
    # Validation Loop
    pretraining_model.eval()
    alignment_loss_total = 0
    task_loss_total = 0

    with torch.no_grad():
        for data in val_loader:
            # Process graph data and text data
            graph_data = data.to(device)
            text_data = [text for text in data.text]

            # Forward pass
            output = pretraining_model(graph_data, text_data)
            graph_embedding = output["graph_embedding"]
            text_embedding = output["text_embedding"]
            predictions = output["predictions"]

            # Compute losses
            alignment_loss_total += alignment_loss(graph_embedding, text_embedding).item()
            task_loss_total += compute_loss(predictions, graph_data).item()

    print(f"Validation: Alignment Loss = {alignment_loss_total / len(val_loader):.4f}, "
          f"Task Loss = {task_loss_total / len(val_loader):.4f}")

    # ------------------------------------------------------------------
    # Test Loop (Optional)
    # If needed, you can add a test loop here, similar to the validation loop,
    # to evaluate the performance of the pretrained model on unseen data.