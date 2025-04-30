# pre_train.py

import torch
import torch.nn as nn
import torch.nn.functional as F
from torch_geometric.nn import TransformerConv, JumpingKnowledge, GraphNorm
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

# 1) Enable Anomaly Detection globally
#torch.autograd.set_detect_anomaly(True)
# If you're using LoRA via PEFT:
from peft import LoraConfig, get_peft_model, TaskType
# Global flags to control training objectives

USE_EXECUTION_COMPUTATION = True
USE_MEMORY_CACHE = True
USE_SYSTEM_ENVIRONMENT = False

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
    def __init__(self, in_channels, hidden_channels, out_channels,
                 num_layers=5, dropout=0.1):
        super(GNNModel, self).__init__()
        
        self.num_conv_layers = num_layers
        self.dropout = dropout

        # 1) First convolution
        self.conv_first = TransformerConv(
            in_channels, hidden_channels,
            edge_dim=335, heads=1, dropout=dropout
        )
        self.norm_first = GraphNorm(hidden_channels)  # or LayerNorm(hidden_channels)

        # 2) Subsequent conv layers
        self.conv_layers = nn.ModuleList()
        self.norm_layers = nn.ModuleList()
        for _ in range(num_layers - 1):
            self.conv_layers.append(
                TransformerConv(hidden_channels, hidden_channels, edge_dim=335, heads=1, dropout=dropout)
            )
            self.norm_layers.append(GraphNorm(hidden_channels))  # or LayerNorm

        # 3) Jumping Knowledge
        self.jkn = JumpingKnowledge('max', channels=hidden_channels, num_layers=num_layers)

        # 4) Global Attention
        self.gate_nn = nn.Sequential(
            nn.Linear(hidden_channels, hidden_channels),
            nn.ReLU(),
            nn.Linear(hidden_channels, 1)
        )
        self.glob = MyGlobalAttention(self.gate_nn, None)
        '''
        # 5) MLP Heads (with deeper layers to reduce abrupt changes)
        self.loop_head = nn.Sequential(
            nn.Linear(hidden_channels, 128),
            nn.ReLU(),
            nn.Linear(128, 128),
            nn.ReLU(),
            nn.Linear(128, 1)
        )
        self.computation_head = nn.Sequential(
            nn.Linear(hidden_channels, 128),
            nn.ReLU(),
            nn.Linear(128, 128),
            nn.ReLU(),
            nn.Linear(128, 1)
        )
        self.execution_time_head = nn.Sequential(
            nn.Linear(hidden_channels, 128),
            nn.ReLU(),
            nn.Linear(128, 128),
            nn.ReLU(),
            nn.Linear(128, 1)
        )
        self.instruction_head = nn.Sequential(
            nn.Linear(hidden_channels, 128),
            nn.ReLU(),
            nn.Linear(128, 128),
            nn.ReLU(),
            nn.Linear(128, 1)
        )
        self.cpi_head = nn.Sequential(
            nn.Linear(hidden_channels, 128),
            nn.ReLU(),
            nn.Linear(128, 128),
            nn.ReLU(),
            nn.Linear(128, 1)
        )
        '''
    def forward(self, x, edge_index, edge_attr=None, batch=None):
        """
        Forward pass with normalization, activation, and optional skip connections.
        """
        # 1) First layer
        out = self.conv_first(x, edge_index, edge_attr=edge_attr)
        out = self.norm_first(out) #FIXME: extra_graph_norm
        out = F.elu(out)  # or F.relu(out), or F.leaky_relu

        # keep track of each layer's output for Jumping Knowledge
        outs = [out]

        # 2) Iterative Convs
        for i, conv in enumerate(self.conv_layers):
            # Optional skip-connection: e.g. skip_input = out
            out = conv(out, edge_index, edge_attr=edge_attr)
            out = self.norm_layers[i](out)
            if i != self.num_conv_layers - 2:  # last conv has no activation
                out = F.elu(out)
            # out += skip_input  # if you want skip connection
            outs.append(out)

        # 3) Jumping Knowledge
        # outs is a list [layer0_out, layer1_out, ... layerN_out]
        out = self.jkn(outs)

        # 4) Global Attention
        out, _ = self.glob(out, batch)
        return out
        #TODO: EXTRA steps (check if they worked)
        # 5) Optionally clamp or remove NaNs/infs
        out = torch.nan_to_num(out, nan=0.0, posinf=1e12, neginf=-1e12)
        out = torch.clamp(out, min=-1e12, max=1e12)
        
        '''
        # 6) Heads
        loop_pred = self.loop_head(out)
        computation_pred = self.computation_head(out)
        execution_time_pred = self.execution_time_head(out)
        instruction_pred = self.instruction_head(out)
        cpi_pred = self.cpi_head(out)

        return {
            'loop': loop_pred,
            'computation': computation_pred,
            'execution_time': execution_time_pred,
            'instruction': instruction_pred,
            'cpi': cpi_pred
        }
        '''

    def embed_nodes(self, x, edge_index, edge_attr=None):
        """
        If you only want node embeddings from the last layer (or from JKN).
        """
        out = self.conv_first(x, edge_index, edge_attr=edge_attr)
        out = self.norm_first(out)
        out = F.elu(out)

        for i, conv in enumerate(self.conv_layers):
            out = conv(out, edge_index, edge_attr=edge_attr)
            out = self.norm_layers[i](out)
            if i != self.num_conv_layers - 2:
                out = F.elu(out)
        out = self.jkn([out])  # or use the list of intermediate outs if needed
        return out

def compute_loss(preds, data, clamp_min=1e-12, clamp_max=1e12):
    """
    Computes the task losses based on the selected features.
    """
    loss_fn = nn.MSELoss(reduction='none')
    eps = 1e-8
    losses = []
    
    if USE_EXECUTION_COMPUTATION:
        loop_pred = preds['loop'].view(-1)
        loop_label = data.loop_count.view(-1)
        computation_pred = preds['computation'].view(-1)
        computation_label = data.computation_count.view(-1)
        execution_pred = preds['execution_time'].view(-1)
        execution_label = data.execution_time_cycles.view(-1)
        instruction_pred = preds['instruction'].view(-1)
        instruction_label = data.instruction_count.view(-1)
        cpi_pred = preds['cpi'].view(-1)
        cpi_label = data.cpi.view(-1)

        loop_loss = torch.sqrt(torch.clamp(loss_fn(loop_pred, loop_label), clamp_min, clamp_max) + eps)
        computation_loss = torch.sqrt(torch.clamp(loss_fn(computation_pred, computation_label), clamp_min, clamp_max) + eps)
        execution_loss = torch.sqrt(torch.clamp(loss_fn(execution_pred, execution_label), clamp_min, clamp_max) + eps)
        instruction_loss = torch.sqrt(torch.clamp(loss_fn(instruction_pred, instruction_label), clamp_min, clamp_max) + eps)
        cpi_loss = torch.sqrt(torch.clamp(loss_fn(cpi_pred, cpi_label), clamp_min, clamp_max) + eps)
        losses.extend([loop_loss, computation_loss, execution_loss, instruction_loss, cpi_loss])
    
    if USE_MEMORY_CACHE:
        I1mr_pred = preds['I1mr'].view(-1)
        I1mr_label = data.I1mr.view(-1)
        Dr_pred = preds['Dr'].view(-1)
        Dr_label = data.Dr.view(-1)
        Dw_pred = preds['Dw'].view(-1)
        Dw_label = data.Dw.view(-1)
        D1mr_pred = preds['D1mr'].view(-1)
        D1mr_label = data.D1mr.view(-1)
        DLmr_pred = preds['DLmr'].view(-1)
        DLmr_label = data.DLmr.view(-1)

        memory_losses = [
            torch.sqrt(torch.clamp(loss_fn(I1mr_pred, I1mr_label), clamp_min, clamp_max) + eps),
            torch.sqrt(torch.clamp(loss_fn(Dr_pred, Dr_label), clamp_min, clamp_max) + eps),
            torch.sqrt(torch.clamp(loss_fn(Dw_pred, Dw_label), clamp_min, clamp_max) + eps),
            torch.sqrt(torch.clamp(loss_fn(D1mr_pred, D1mr_label), clamp_min, clamp_max) + eps),
            torch.sqrt(torch.clamp(loss_fn(DLmr_pred, DLmr_label), clamp_min, clamp_max) + eps)
        ]
        losses.extend(memory_losses)
    
    if USE_SYSTEM_ENVIRONMENT:
        cpu_fre_pred = preds['cpu_fre'].view(-1)
        cpu_fre_label = data.cpu_fre.view(-1)
        total_memory_pred = preds['total_memory'].view(-1)
        total_memory_label = data.total_memory.view(-1)
        instruction_cache_miss_pred = preds['instruction_cache_miss_rate'].view(-1)
        instruction_cache_miss_label = data.instruction_cache_miss_rate.view(-1)
        data_cache_miss_pred = preds['data_cache_miss_rate'].view(-1)
        data_cache_miss_label = data.data_cache_miss_rate.view(-1)

        system_losses = [
            torch.sqrt(torch.clamp(loss_fn(cpu_fre_pred, cpu_fre_label), clamp_min, clamp_max) + eps),
            torch.sqrt(torch.clamp(loss_fn(total_memory_pred, total_memory_label), clamp_min, clamp_max) + eps),
            torch.sqrt(torch.clamp(loss_fn(instruction_cache_miss_pred, instruction_cache_miss_label), clamp_min, clamp_max) + eps),
            torch.sqrt(torch.clamp(loss_fn(data_cache_miss_pred, data_cache_miss_label), clamp_min, clamp_max) + eps)
        ]
        losses.extend(system_losses)
    
    # Compute total loss as the average over selected losses
    total_loss = sum(losses) / len(losses)
    
    # Optional check for NaN/Inf values
    if torch.isnan(total_loss).any() or torch.isinf(total_loss).any():
        print("[Warning] NaN or Inf detected in compute_loss!")
    
    return total_loss

def custom_collate(data_list):
    filtered_data = [d for d in data_list if d is not None]
    return Batch.from_data_list(filtered_data)

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
# --- 3. LLM Model using CodeLlama ---
from transformers import AutoModelForCausalLM, AutoTokenizer
class LLMModel(nn.Module):
    def __init__(self, model_name="meta-llama/CodeLlama-7b-hf", device_llm="cuda:0"):
        super(LLMModel, self).__init__()
        self.tokenizer = AutoTokenizer.from_pretrained(model_name)
        self.tokenizer.pad_token = self.tokenizer.eos_token
        # Set device based on device_llm string (e.g., "cuda:6")
        self.device_llm = device_llm
        # self.model 
        basemodel = AutoModelForCausalLM.from_pretrained(
            model_name,
            torch_dtype=torch.float16,
            device_map={"": int(device_llm.split(":")[-1])}
        )
        peft_config = LoraConfig(
            r=8,               # LoRA rank
            lora_alpha=32,
            lora_dropout=0.1,
            bias="none",
            target_modules=["q_proj", "v_proj"],
            task_type=TaskType.CAUSAL_LM  # Or TaskType.OTHER if you're not doing LM
        )
        # Convert the LLM part to a PEFT model
        self.model = get_peft_model(basemodel, peft_config)
        
        # Project LLM's hidden size to dimension 64 (to match GNN embedding)
        self.projection = nn.Linear(self.model.config.hidden_size, 64)
        
    def forward(self, code_texts):
        # code_texts: list of strings (one per sample)
        inputs = self.tokenizer(code_texts, return_tensors="pt", padding=True, truncation=True, max_length=512)
        inputs = {k: v.to(self.model.device) for k, v in inputs.items()}
        '''
        with torch.no_grad():
            outputs = self.model(**inputs, output_hidden_states=True)
        '''
        outputs = self.model(**inputs, output_hidden_states=True)
        hidden_states = outputs.hidden_states[-1]  # shape: (batch, seq_len, hidden_size)
        
        mask = inputs["attention_mask"].unsqueeze(-1).float()  # shape: (batch, seq_len, 1)
        pooled = (hidden_states * mask).sum(dim=1) / mask.sum(dim=1)
        projected = self.projection(pooled)
        return projected
# --- 4. Cross-Modal Model ---
class CrossModalModel(nn.Module):
    def __init__(self, gnn_config, llm_config = None, mode="both", latent_align=True, fusion_method="attention"):
        """
        mode: "gnn", "llm", or "both"
        latent_align: if True, the forward function will return embeddings for computing alignment loss.
        fusion_method: "concat" or "attention"
        """
        super(CrossModalModel, self).__init__()
        self.mode = mode
        self.latent_align = latent_align
        self.fusion_method = fusion_method
        # Instantiate GNN and LLM modules.
        self.gnn = GNNModel(**gnn_config)
        if llm_config is not None:
            self.llm = LLMModel(**llm_config)
        # Fusion layers.
        if fusion_method == "attention":
            self.fusion_linear = nn.Linear(64*2, 2)
        elif fusion_method == "concat":
            self.fusion_proj = nn.Linear(64*2, 64)
        # Prediction heads
        self.task_heads = nn.ModuleDict()
        if USE_EXECUTION_COMPUTATION:
            self.task_heads.update({
                'loop': nn.Sequential(nn.Linear(64, 1)),
                'computation': nn.Sequential(nn.Linear(64, 1)),
                'execution_time': nn.Sequential(nn.Linear(64, 1)),
                'instruction': nn.Sequential(nn.Linear(64, 1)),
                'cpi': nn.Sequential(nn.Linear(64, 1)),
            })
        
        if USE_MEMORY_CACHE:
            self.task_heads.update({
                'I1mr': nn.Sequential(nn.Linear(64, 1)),
                'Dr': nn.Sequential(nn.Linear(64, 1)),
                'Dw': nn.Sequential(nn.Linear(64, 1)),
                'D1mr': nn.Sequential(nn.Linear(64, 1)),
                'DLmr': nn.Sequential(nn.Linear(64, 1)),
            })
        
        if USE_SYSTEM_ENVIRONMENT:
            self.task_heads.update({
                'cpu_fre': nn.Sequential(nn.Linear(64, 1)),
                'total_memory': nn.Sequential(nn.Linear(64, 1)),
                'instruction_cache_miss_rate': nn.Sequential(nn.Linear(64, 1)),
                'data_cache_miss_rate': nn.Sequential(nn.Linear(64, 1)),
            })
        
    def _gnn_encode(self, x, edge_index, edge_attr, batch):
        activation = F.elu
        outs = []
        out = activation(self.gnn.conv_first(x, edge_index, edge_attr=edge_attr))
        outs.append(out)
        for i, conv in enumerate(self.gnn.conv_layers):
            out = conv(out, edge_index, edge_attr=edge_attr)
            if i != self.gnn.num_conv_layers - 1:
                out = activation(out)
            outs.append(out)
        out = self.gnn.jkn(outs)
        out, _ = self.gnn.glob(out, batch)
        return out

    def forward(self, x, edge_index, edge_attr, batch, code_texts):
        gnn_emb = None
        llm_emb = None
        if self.mode in ["gnn", "both"]:
            gnn_emb = self._gnn_encode(x, edge_index, edge_attr, batch)
        if self.mode in ["llm", "both"]:
            llm_emb = self.llm(code_texts)
        
        if self.mode == "gnn":
            fused = gnn_emb
        elif self.mode == "llm":
            fused = llm_emb
        else:
            # mode == "both"
            if self.fusion_method == "concat":
                combined = torch.cat([gnn_emb, llm_emb], dim=1)
                fused = self.fusion_proj(combined)
            elif self.fusion_method == "attention":
                combined = torch.cat([gnn_emb, llm_emb], dim=1)
                logits = self.fusion_linear(combined)
                weights = F.softmax(logits, dim=1)
                alpha_G = weights[:, 0].unsqueeze(1)
                alpha_T = weights[:, 1].unsqueeze(1)
                fused = alpha_G * gnn_emb + alpha_T * llm_emb
            else:
                fused = 0.5 * gnn_emb + 0.5 * llm_emb
        outputs = {task: head(fused) for task, head in self.task_heads.items()}
        if self.mode == "both" and self.latent_align:
            return outputs, gnn_emb, llm_emb
        else:
            return outputs

# --- 5. Latent Alignment Loss ---
def compute_alignment_loss(gnn_emb, llm_emb, tau=0.07):
    """
    Compute latent alignment loss between gnn_emb and llm_emb using cosine similarity.
    """
    """
    Same as before, but you might optionally do:
    gnn_norm = F.normalize(gnn_emb, p=2, dim=1)
    llm_norm = F.normalize(llm_emb, p=2, dim=1)
    """
    gnn_norm = torch.nan_to_num(F.normalize(gnn_emb, p=2, dim=1))
    llm_norm = torch.nan_to_num(F.normalize(llm_emb, p=2, dim=1))
    sim_matrix = torch.matmul(gnn_norm, llm_norm.t())  # shape: (batch, batch)
    sim_matrix = sim_matrix / tau
    log_probs = F.log_softmax(sim_matrix, dim=1)
    loss = -torch.diag(log_probs).mean()
    return loss

import torch
import torch.nn as nn
import os
from torch.nn import DataParallel
from tqdm import tqdm


if __name__ == "__main__":
        # P1 Hyperparameters
    val_ratio = 0.15  # Modified for validation
    test_ratio = 0.15  # Modified for testing
    resample = -1
    batch_size = 64  # Adjusted batch size for larger dataset
    LR = 5e-5
    num_epochs = 1000  # For demonstration
    gpu_id = 3
    
    MODEL = "gnn" #
    ALIGN = 1
    FUSION = "attention"
    
    log_dir = "23k"
    version = log_dir + "_" + MODEL + "_b8_lr5e5_Feb25" #23k_llm_b8_lr5e5_Feb25"#"23k_cross_b8_lr5e5_Feb9"
    accumulation_steps = 4  # Added gradient accumulation
    # P2 Data Preparation
    dataset = MyOwnDataset()
    dataset_dict = process_split_data(dataset)
    num_graphs = len(dataset_dict['train'])
    print(f"Number of graphs in the dataset: {num_graphs}")
    r1, r2 = get_train_val_count(num_graphs, val_ratio, test_ratio)
    li = split_dataset(dataset_dict['train'], r1, r2, dataset_test=dataset_dict['test'])
    train_loader, val_loader, test_loader, num_features, edge_dim = gen_dataset(li, batch_size)
    device = torch.device(f'cuda:{gpu_id}' if torch.cuda.is_available() else 'cpu')

    # P3 Model Initialization
    gnn_config = {
        "in_channels": num_features,
        "hidden_channels": 64,
        "out_channels": 1,
        "num_layers": 7,
        "dropout": 0.1
    }
    llm_config = {
        "model_name": "meta-llama/CodeLlama-7b-hf",
        "device_llm": "cuda:" + str(gpu_id)
    }
    if MODEL == "gnn":
        model = CrossModalModel(gnn_config, mode='gnn').to(device)
    elif MODEL == "llm":
        model = CrossModalModel(gnn_config, llm_config, mode="llm").to(device)
    elif MODEL == "cross":
        model = CrossModalModel(gnn_config, llm_config, mode="both", latent_align=ALIGN, fusion_method=FUSION).to(device)
    
    optimizer = torch.optim.Adam(model.parameters(), lr=LR, weight_decay=1e-4)
    os.makedirs(log_dir, exist_ok=True)
    loss_log_path = f"{log_dir}/{version}/loss_log.txt"

    save_dir = f"{log_dir}/{version}"
    os.makedirs(save_dir, exist_ok=True)
    best_train_loss = float('inf')
    best_val_loss = float('inf')
    for epoch in range(num_epochs):
        model.train()
        bar = tqdm(train_loader)
        total_loss = 0.0
        total_cnt = 0
        
        for i, data in enumerate(bar):
            data = data.to(device)
            sample_name = data.gname if hasattr(data, "gname") else f"Batch index {i}"
            code_texts = data.text if isinstance(data.text, list) else [data.text] * data.x.size(0)
            
            # NaN detection in input
            if torch.isnan(data.x).any():
                print(f"[Warning] NaN detected in input features at batch {i}: {sample_name}")
                continue
            if torch.isnan(data.edge_attr).any():
                print(f"[Warning] NaN detected in edge attributes at batch {i}: {sample_name}")
                continue
                        
            outputs = model(data.x, data.edge_index, edge_attr=data.edge_attr, batch=data.batch, code_texts=code_texts)
            
            if isinstance(outputs, tuple):
                preds, gnn_emb, llm_emb = outputs
                align_loss = compute_alignment_loss(gnn_emb, llm_emb, tau=0.1)
            else:
                preds = outputs
                align_loss = 0.0
            
            # NaN detection in model outputs
            if any(torch.isnan(out).any() for out in preds.values()):
                print(f"[Warning] NaN detected in model outputs at batch {i}: {sample_name}")
                continue            
            
            task_loss = compute_loss(preds, data).mean()
            loss = task_loss + align_loss
            
            # NaN detection in loss computation
            if torch.isnan(loss):
                print(f"[Warning] NaN detected in loss computation at batch {i}: {sample_name}")
                continue
            '''
            if MODEL == "cross" and ALIGN == 1:
                bar.set_description(f"Total loss: {loss.item():.8f}, TASK Loss: {task_loss.item():.8f}, Alignment Loss: {align_loss.item():.8f}")#
            else:
                bar.set_description(f"Total loss: {loss.item():.8f}")
            '''
            loss = loss / accumulation_steps  # Gradient Accumulation
            loss.backward()
            
            if (i + 1) % accumulation_steps == 0 or (i + 1) == len(train_loader):
                torch.nn.utils.clip_grad_norm_(model.parameters(), max_norm=1.0)
                optimizer.step()
                optimizer.zero_grad()            
            
            total_loss += loss.item()
            total_cnt += 1

        average_train_loss = total_loss / max(total_cnt, 1)
      
        # Validation Step
        model.eval()
        val_task_loss = 0.0
        val_align_loss = 0.0
        val_cnt = 0
        with torch.no_grad():
            for data in val_loader:
                data = data.to(device)
                outputs = model(data.x, data.edge_index, edge_attr=data.edge_attr, batch=data.batch, code_texts=data.text)
                if isinstance(outputs, tuple):
                    preds, gnn_emb, llm_emb = outputs
                    align_loss = compute_alignment_loss(gnn_emb, llm_emb, tau=0.1)
                else:
                    preds = outputs
                    align_loss = 0.0
                task_loss = compute_loss(preds, data).mean()
                val_task_loss += task_loss
                val_align_loss += align_loss
                val_cnt += 1
        val_avg_loss = (val_task_loss + val_align_loss) / max(val_cnt, 1)
        val_align_loss = val_align_loss / max(val_cnt, 1)
        val_task_loss = val_task_loss / max(val_cnt, 1)
        
        print(f"\nEpoch {epoch+1}/{num_epochs}, Training Loss: {average_train_loss:.8f}, Validation Loss: {val_avg_loss:.8f}")
        '''
        try:
            if MODEL == "cross" and ALIGN == 1:
                bar.set_description(f"TASK Loss: {val_task_loss:.8f}, Alignment Loss: {val_align_loss:.8f}")#
        except:
            pass
        '''
        # Save best training model checkpoint
        if average_train_loss < best_train_loss:
            best_train_loss = average_train_loss
            torch.save(model.state_dict(), f"{save_dir}/best_train_model.pt")
            print(f"Epoch {epoch+1}: Saved best training model checkpoint.")          
        if val_avg_loss < best_val_loss:
            best_val_loss = val_avg_loss
            torch.save(model.state_dict(), f"{save_dir}/best_val_model.pt")
            print(f"Epoch {epoch+1}: Saved best validation model checkpoint.")        
        # Record Losses to File
        with open(loss_log_path, "a") as log_file:
            log_file.write(f"Epoch {epoch+1}, Train Loss: {average_train_loss:.8f}, Val Loss: {val_avg_loss:.8f}\n")
        
    # Test Evaluation
    model.eval()
    test_loss = 0.0
    test_cnt = 0
    with torch.no_grad():
        for data in test_loader:
            data = data.to(device)
            outputs = model(data.x, data.edge_index, edge_attr=data.edge_attr, batch=data.batch, code_texts=data.text)
            if isinstance(outputs, tuple):
                preds, gnn_emb, llm_emb = outputs
                align_loss = compute_alignment_loss(gnn_emb, llm_emb, tau=0.1)
            else:
                preds = outputs
                align_loss = 0.0
            task_loss = compute_loss(preds, data).mean()
            test_loss = task_loss + align_loss
            test_cnt += 1
    test_avg_loss = test_loss / max(test_cnt, 1)
    print(f"Final Test Loss: {test_avg_loss:.8f}")
    
    with open(loss_log_path, "a") as log_file:
        log_file.write(f"Final Test Loss: {test_avg_loss:.8f}\n")
    
    LORA_SAVE_DIR = f"{log_dir}/{version}/lora_weights"
    #model.llm.save_pretrained(LORA_SAVE_DIR)
    # ==================== END: MODIFIED TRAINING LOOP ====================
    print("Training complete. Model and losses logged.")
# source /home/jade1st/miniconda3/bin/activate /home/jade1st/miniconda3/envs/harp
# cd /home/jade1st/pj/GNN_Pretrain_for_HLS/pretrain_code_modified_on_HARP/src                        
# python -W ignore test_cross_model.py > 23k_gnn_EM_b8_5e5_Feb25_t1.log 2>&1  
# 23k_cross_EM_b8_5e5_Feb9
'''
    # P1 Hyperparameters
    val_ratio = 0
    test_ratio = 0
    resample = -1
    batch_size = 8
    LOSS_THRESHOLD = 1e9
    LR = 5e-5#1e-5
    num_epochs = 1000  # For demonstration
    gpu_id= 2
    log_dir = "23k"
    version = "cross_final_opt_b8_l2_lr5e5"#"cross_b8_l2_lr5e5" #opt= gradient clipping + peft
    
    MODEL = "cross" #gnn llm cross
    ALIGN = 1 #0 1
    FUSION = "attention" #"concat" "attention"
    
    # P2 Data Preparation
    dataset = MyOwnDataset()
    #check_dataset_shapes(dataset)#TODO: delete it
    dataset_dict = process_split_data(dataset)
    num_graphs = len(dataset_dict['train'])
    print(f"Number of graphs in the dataset: {num_graphs}")
    r1, r2 = get_train_val_count(num_graphs, val_ratio, test_ratio)
    li = split_dataset(dataset_dict['train'], r1, r2, dataset_test=dataset_dict['test'])
    train_loader, val_loader, test_loader, num_features, edge_dim = gen_dataset(li, batch_size)
    device = torch.device(f'cuda:{gpu_id}' if torch.cuda.is_available() else 'cpu')
    
    #P3 models
    gnn_config = {
        "in_channels": num_features,
        "hidden_channels": 64,
        "out_channels": 1,
        "num_layers": 7,
        "dropout": 0.1
    }
    llm_config = {
        "model_name": "meta-llama/CodeLlama-7b-hf",
        "device_llm": "cuda:" + str(gpu_id)
    }
    if MODEL =="gnn":
        model = GNNModel(in_channels=num_features,
                        hidden_channels=64,
                        out_channels=1, # Not directly used since we have separate heads
                        num_layers=7,
                        dropout=0.1).to(device)
    elif MODEL == "llm":
        model = CrossModalModel(gnn_config, llm_config, mode="llm").to(device)
    elif MODEL == "cross":
        model = CrossModalModel(gnn_config, llm_config, mode="both", latent_align=ALIGN, fusion_method=FUSION).to(device)
    
    optimizer = torch.optim.Adam(model.parameters(), lr=LR, weight_decay=1e-4)
    os.makedirs(log_dir, exist_ok=True)
    
    # P4 Training Loop
    from tqdm import tqdm
    for epoch in range(num_epochs):
        model.train()
        bar = tqdm(train_loader)
        total_loss = 0.0
        total_cnt = 0
        for i, data in enumerate(bar):
            data = data.to(device)
            sample_name = data.gname if hasattr(data, "gname") else f"Batch index {i}"
            if isinstance(data.text, list):
                code_texts = data.text
            else:
                # If data.text is a string for each sample, assume batch_size copies.
                code_texts = [data.text] * data.x.size(0)
                
            outputs = model(data.x, data.edge_index, edge_attr=data.edge_attr, batch=data.batch, code_texts=code_texts)
            
            if isinstance(outputs, tuple):
                preds, gnn_emb, llm_emb = outputs
                #FIXME: debug NaN
                #print("gnn_emb mean/std:", gnn_emb.mean().item(), gnn_emb.std().item())
                #print("llm_emb mean/std:", llm_emb.mean().item(), llm_emb.std().item())
                align_loss = compute_alignment_loss(gnn_emb, llm_emb, tau=0.1)
            else:
                preds = outputs
                gnn_emb = None
                align_loss = 0.0
            if gnn_emb is not None and torch.isnan(gnn_emb).any():
                print(f"Bad sample detected: {sample_name}")
                # Optionally, you can skip this batch
                continue
            task_loss = compute_loss(preds, data).mean()

            #loss = task_loss
            loss = task_loss + align_loss
            #print("task_loss:", task_loss)
            #print("align_loss:", align_loss)
            if MODEL == "cross" and ALIGN == 1:
                bar.set_description(f"Total loss: {loss.item():.8f}, TASK Loss: {task_loss.item():.8f}, Alignment Loss: {align_loss.item():.8f}")#
            else:
                bar.set_description(f"Total loss: {loss.item():.8f}")
            optimizer.zero_grad()
            loss.backward()
            #gradient clipping
            torch.nn.utils.clip_grad_norm_(model.parameters(), max_norm=1.0)
            optimizer.step()
            # print(i, loss.item())
            total_loss += loss.item()
            total_cnt += 1
        
        if epoch % 100 == 0:
            save_dir = f"{log_dir}/{version}"
            os.makedirs(save_dir, exist_ok=True)
            torch.save(model.state_dict(), f"{save_dir}/model_{epoch}.pt")

        average_loss = total_loss / total_cnt
        print(f"Epoch {epoch+1}/{num_epochs}, Loss: {average_loss:.8f}")
    LORA_SAVE_DIR = f"{log_dir}/{version}/lora_weights"
    model.llm.save_pretrained(LORA_SAVE_DIR)
'''

# python -W ignore ./test_cross_model.py > 23k_cross_EM_b16_5e5.log 2>&1
# python -W ignore /home/jade1st/pj/GNN_Pretrain_for_HLS/pretrain_code_modified_on_HARP/src/test_cross_model.py > 23k_cross_EM_b8_5e5.log 2>&1
# fusion_b8_l2_lre4.log 2>&1
# cross_b8_l2_lre4.log 2>&1 
# conca_b8_l2_lre4.log 2>&1

'''
# If the loss has more than one dimension (other than batch), average over those dims
if task_loss.dim() > 1:
    task_loss = task_loss.mean(dim=list(range(1, task_loss.dim())))
# Create a mask to keep only samples with loss below the threshold
valid_mask = task_loss < LOSS_THRESHOLD
# If no samples pass the threshold, skip this batch
if valid_mask.sum() == 0:
    print("Skipping batch: no samples with loss below threshold.")
    continue            
loss = task_loss[valid_mask].mean()
'''