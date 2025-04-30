# pre_train.py

import torch
import torch.nn as nn
import torch.nn.functional as F
from torch_geometric.nn import TransformerConv, JumpingKnowledge
from torch_geometric.data import Data, DataLoader
# CHANGED: data -> data_pretrain
from data_pretrain import get_data_list, MyOwnDataset
from data_pretrain import get_kernel_samples, split_dataset, split_dataset_resample, split_train_test_kernel
from collections import OrderedDict, defaultdict
from nn_att import MyGlobalAttention
from tqdm import tqdm
import os
import glob
from os.path import join
import os.path as osp
from torch_geometric.data import Data, Dataset, Batch
from torch_geometric.loader import DataLoader

gpu_id=0
log_dir = "ckpt_pretrain"
version = "5"

def process_split_data(dataset):
    dataset_dict = defaultdict(list)
    dataset_dict['train'] = dataset
    dataset_dict['test'] = None
    return dataset_dict

def get_train_val_count(num_graphs, val_ratio, test_ratio):
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

        
        self.loop_head = nn.Sequential(
            nn.Linear(64, 1)
        )
        self.computation_head = nn.Sequential(
            nn.Linear(64, 1)
        )
        self.execution_time_head = nn.Sequential(
            nn.Linear(64, 1)
        )
        self.instruction_head = nn.Sequential(
            nn.Linear(64, 1)
        )
        self.cpi_head = nn.Sequential(
            nn.Linear(64, 1)
        )
        self.total_memory_head = nn.Sequential(
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
'''
class GNNModel(nn.Module):
    def __init__(self, in_channels, hidden_channels, out_channels, num_layers=5, dropout=0.1):
        super(GNNModel, self).__init__()
        # First convolution layer: using 2 heads for richer representations.
        self.conv_first = TransformerConv(in_channels, hidden_channels, edge_dim=335, heads=2, dropout=dropout)
        # The output dimension of conv_first becomes hidden_channels * 2 (due to concatenation of heads)
        self.conv_layers = nn.ModuleList()
        self.norm_layers = nn.ModuleList()
        for _ in range(num_layers - 1):
            conv = TransformerConv(hidden_channels * 2, hidden_channels, edge_dim=335, heads=2, dropout=dropout)
            self.conv_layers.append(conv)
            # LayerNorm is applied over the output dimension (hidden_channels * 2)
            self.norm_layers.append(nn.LayerNorm(hidden_channels * 2))
        self.num_layers = num_layers
        self.dropout = dropout
        
        # Use Jumping Knowledge with the concatenation ("cat") strategy.
        # Note: 'cat' is accepted, and the output dimension is num_layers * (hidden_channels * 2).
        self.jkn = JumpingKnowledge(mode='cat', channels=hidden_channels * 2, num_layers=num_layers)
        jkn_out_dim = num_layers * hidden_channels * 2
        
        # Global pooling using attention. If you have a custom MyGlobalAttention, ensure it is defined.
        self.gate_nn = nn.Sequential(
            nn.Linear(jkn_out_dim, jkn_out_dim),
            nn.ReLU(),
            nn.Linear(jkn_out_dim, 1)
        )
        self.glob = MyGlobalAttention(self.gate_nn, None)
        
        # Define a two-layer MLP head for each task.
        def make_head():
            return nn.Sequential(
                nn.Linear(jkn_out_dim, jkn_out_dim // 2),
                nn.ReLU(),
                nn.Linear(jkn_out_dim // 2, 1)
            )
        self.loop_head = make_head()
        self.computation_head = make_head()
        self.execution_time_head = make_head()
        self.instruction_head = make_head()
        self.cpi_head = make_head()
        self.total_memory_head = make_head()

    def forward(self, x, edge_index, edge_attr=None, batch=None):
        activation = F.relu
        outs = []
        # First layer.
        out = self.conv_first(x, edge_index, edge_attr=edge_attr)
        out = activation(out)
        outs.append(out)
        # Subsequent layers with residual connections and normalization.
        for conv, norm in zip(self.conv_layers, self.norm_layers):
            residual = out
            out = conv(out, edge_index, edge_attr=edge_attr)
            out = activation(out)
            out = out + residual
            out = norm(out)
            outs.append(out)
        # Combine layer outputs using Jumping Knowledge.
        out = self.jkn(outs)
        # Global pooling using attention.
        out, _ = self.glob(out, batch)
        # Predictions from each head.
        return {
            'loop': self.loop_head(out),
            'computation': self.computation_head(out),
            'execution_time': self.execution_time_head(out),
            'instruction': self.instruction_head(out),
            'cpi': self.cpi_head(out),
            'total_memory': self.total_memory_head(out)
        }

    def embed_nodes(self, x, edge_index, edge_attr=None):
        activation = F.relu
        out = self.conv_first(x, edge_index, edge_attr=edge_attr)
        out = activation(out)
        outs = [out]
        for conv, norm in zip(self.conv_layers, self.norm_layers):
            residual = out
            out = conv(out, edge_index, edge_attr=edge_attr)
            out = activation(out)
            out = out + residual
            out = norm(out)
            outs.append(out)
        out = self.jkn(outs)
        return out
'''    
def compute_loss(preds, data):
    loss_fn = nn.MSELoss(reduction='none')
    loop_loss = torch.sqrt(loss_fn(preds['loop'], data.loop_count))
    computation_loss = torch.sqrt(loss_fn(preds['computation'], data.computation_count))
    execution_time_loss = torch.sqrt(loss_fn(preds['execution_time'], data.execution_time_cycles))
    instruction_loss = torch.sqrt(loss_fn(preds['instruction'], data.instruction_count))
    cpi_loss = torch.sqrt(loss_fn(preds['cpi'], data.cpi))
    total_loss = (loop_loss + computation_loss + execution_time_loss +
                  instruction_loss + cpi_loss) / 5
    return total_loss

def custom_collate(data_list):
    filtered_data = [d for d in data_list if d is not None]
    return Batch.from_data_list(filtered_data)
'''
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
'''
'''
if resample == -1:
    li = split_dataset(dataset_dict['train'], r1, r2, dataset_test=dataset_dict['test'])
else:
    li = split_dataset_resample(dataset_dict['train'], 1.0 - val_ratio - test_ratio, val_ratio, test_ratio, test_id=resample)
'''
def gen_dataset(li, batch_size):
    # Pass the custom collate function to each DataLoader.
    train_loader = DataLoader(li[0],
                              batch_size=batch_size,
                              shuffle=False,
                              pin_memory=True,
                              num_workers=1)
    val_loader = DataLoader(li[1],
                            batch_size=batch_size,
                            pin_memory=True,
                            num_workers=1)
    test_loader = DataLoader(li[2],
                             batch_size=batch_size,
                             pin_memory=True,
                             num_workers=1)
    
    # Get feature sizes from a valid sample in the training loader.
    loader = train_loader if len(train_loader.dataset) > 0 else test_loader
    sample = next(iter(loader))
    num_features = sample.x.shape[1]
    edge_dim = sample.edge_attr.shape[1] if hasattr(sample, 'edge_attr') and sample.edge_attr is not None else None
    print(f'num features for training: {num_features}')
    if edge_dim is not None:
        print(f'size of the edge attribute is {edge_dim}')
    
    return train_loader, val_loader, test_loader, num_features, edge_dim

def check_dataset_shapes(dataset):
    """
    Iterate over all samples in the dataset and print out the shapes
    of the node feature tensor (data.x) and edge attribute tensor (data.edge_attr),
    along with an identifying attribute (like gname) if available.
    """
    for i in range(len(dataset)):
        data = dataset[i]
        gname = getattr(data, 'gname', f'sample_{i}')
        
        if hasattr(data, 'edge_index') and data.edge_index.shape[0] != 2:
            print(f"Sample {i} ({gname}):")
            print("  edge_index shape:", data.edge_index.shape)
            print("-" * 40)

if __name__ == "__main__":
    val_ratio = 0
    test_ratio = 0
    resample = -1
    batch_size = 8
    gpu=3
    LOSS_THRESHOLD = 1e8
    LR = 0.00001
    dataset = MyOwnDataset()
    
    #check_dataset_shapes(dataset)#TODO: delete it
    #exit()
    
    dataset_dict = process_split_data(dataset)
    num_graphs = len(dataset_dict['train'])
    print(f"Number of graphs in the dataset: {num_graphs}")
    r1, r2 = get_train_val_count(num_graphs, val_ratio, test_ratio)

    li = split_dataset(dataset_dict['train'], r1, r2, dataset_test=dataset_dict['test'])
    
    train_loader, val_loader, test_loader, num_features, edge_dim = gen_dataset(li, batch_size)

    device = torch.device(f'cuda:{gpu_id}' if torch.cuda.is_available() else 'cpu')

    model = GNNModel(in_channels=num_features,
                     hidden_channels=64,
                     out_channels=1, # Not directly used since we have separate heads
                     num_layers=7,
                     dropout=0.1).to(device)

    optimizer = torch.optim.Adam(model.parameters(), lr=LR, weight_decay=1e-4)
    num_epochs = 1000  # For demonstration
    
    os.makedirs(log_dir, exist_ok=True)

    from tqdm import tqdm
    for epoch in range(num_epochs):
        model.train()
        bar = tqdm(train_loader)
        total_loss = 0
        total_cnt = 0
        for i, data in enumerate(bar):
        # for i, data in enumerate(train_loader):
        #     if data.edge_index.shape[0] == 3:
            #     print(i, data.gname)
            #     # break
            data = data.to(device)
            preds = model(data.x, data.edge_index, edge_attr=data.edge_attr, batch=data.batch)
            
            losses = compute_loss(preds, data)
            # If the loss has more than one dimension (other than batch), average over those dims
            if losses.dim() > 1:
                losses = losses.mean(dim=list(range(1, losses.dim())))
            # Create a mask to keep only samples with loss below the threshold
            valid_mask = losses < LOSS_THRESHOLD
            # If no samples pass the threshold, skip this batch
            if valid_mask.sum() == 0:
                print("Skipping batch: no samples with loss below threshold.")
                continue            
            loss = losses[valid_mask].mean()
            bar.set_description(f"Loss: {loss.item():.4f}")
            
            optimizer.zero_grad()
            loss.backward()
            optimizer.step()
            # print(i, loss.item())
            total_loss += loss.item()
            total_cnt += 1
        
        
        if epoch % 10 == 0:
            save_dir = f"{log_dir}/{version}"
            os.makedirs(save_dir, exist_ok=True)
            torch.save(model.state_dict(), f"{save_dir}/model_{epoch}.pt")

        average_loss = total_loss / total_cnt
        print(f"Epoch {epoch+1}/{num_epochs}, Loss: {average_loss:.4f}")
# python test_gnn_pretrain2_origin.py