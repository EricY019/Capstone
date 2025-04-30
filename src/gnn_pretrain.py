import torch
import torch.nn as nn
import torch.optim as optim
import torch.nn.functional as F
from torch_geometric.nn import TransformerConv
from torch_geometric.data import Data, DataLoader
from typing import List, Tuple
import copy
import random

from data import get_data_list, MyOwnDataset
from data import get_kernel_samples, split_dataset, split_dataset_resample, split_train_test_kernel
from collections import OrderedDict, defaultdict

from tqdm import tqdm

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

#############################################################
# Model Definition
#############################################################
class GNNModel(nn.Module):
    def __init__(self, in_channels, hidden_channels, out_channels, num_layers=5, dropout=0.1):
        super(GNNModel, self).__init__()
        self.conv_first = TransformerConv(in_channels, hidden_channels, edge_dim=335, heads=1, dropout=dropout)
        self.conv_layers = nn.ModuleList([
            TransformerConv(hidden_channels, hidden_channels, heads=1, edge_dim=335, dropout=dropout)
            for _ in range(num_layers-1)
        ])
        self.out_proj = nn.Linear(hidden_channels, out_channels)
        self.num_conv_layers = num_layers
        self.dropout = dropout

    def forward(self, x, edge_index, edge_attr=None):
        activation = F.elu
        out = activation(self.conv_first(x, edge_index, edge_attr=edge_attr))
        for i, conv in enumerate(self.conv_layers):
            out = conv(out, edge_index, edge_attr=edge_attr)
            if i != self.num_conv_layers - 1:
                out = activation(out)
                # out = F.dropout(out, p=self.dropout, training=self.training)
        # final projection
        return self.out_proj(out)

    def embed_nodes(self, x, edge_index, edge_attr=None):
        # Returns node embeddings before the final projection
        activation = F.elu
        out = activation(self.conv_first(x, edge_index, edge_attr=edge_attr))
        for i, conv in enumerate(self.conv_layers):
            out = conv(out, edge_index, edge_attr=edge_attr)
            if i != self.num_conv_layers - 1:
                out = activation(out)
                # out = F.dropout(out, p=self.dropout, training=self.training)
        return out

#############################################################
# Pre-Training Tasks Implementations
#############################################################

### 1. Node Feature Masking ###
def mask_node_features(data: Data, mask_ratio=0.15):
    x = data.x.clone()
    num_nodes, num_features = x.size()
    mask = torch.rand(num_nodes, num_features) < mask_ratio
    x_masked = x.clone()
    x_masked[mask] = 0.0
    return x_masked, mask

def node_feature_reconstruction_loss(pred_x, original_x, mask):
    # pred_x should match the dimension of original_x
    # We assume pred_x is produced by some reconstruction head from node embeddings
    loss = F.mse_loss(pred_x[mask], original_x[mask])
    return loss

### 2. Node-Pair Classification (Compiler-Based Tasks) ###
# For example: reachability, dominators, data dependencies, liveness, memory alias
# Assume data.node_pairs = dict of task_name -> list[(u,v,label)] for different tasks
# For simplicity, we combine all tasks and sum their losses, but you may weight them.
def node_pair_classification_loss(node_embeddings, node_pairs_dict):
    loss_total = torch.tensor(0.0, device=node_embeddings.device)
    count = 0
    for task_name, node_pairs in node_pairs_dict.items():
        if len(node_pairs) == 0:
            continue
        scores = []
        targets = []
        for (u,v,y) in node_pairs:
            score = (node_embeddings[u] * node_embeddings[v]).sum()
            scores.append(score)
            targets.append(y)
        scores = torch.stack(scores)
        targets = torch.tensor(targets, device=node_embeddings.device, dtype=torch.float)
        task_loss = F.binary_cross_entropy_with_logits(scores, targets)
        loss_total += task_loss
        count += 1
    if count > 0:
        loss_total = loss_total / float(count)
    return loss_total

### 3. Subgraph-Level Classification (e.g., Resource Usage Bands) ###
# Assume data.subgraph_nodes: List[List[int]] indicating which nodes form a subgraph
# and data.subgraph_labels: List[int] resource usage classes (e.g., 0=low,1=medium,2=high)
def subgraph_classification_loss(node_embeddings, subgraph_nodes, subgraph_labels, num_classes=3):
    # Pool node embeddings in the subgraph (mean pooling)
    # Then predict the class
    # We'll have a separate linear head for this task
    # For simplicity, define head outside or inline here
    # In practice, you might have a separate module member for these.
    subgraph_emb = []
    for nodes in subgraph_nodes:
        sg_emb = node_embeddings[nodes].mean(dim=0)
        subgraph_emb.append(sg_emb)
    subgraph_emb = torch.stack(subgraph_emb)
    subgraph_labels = torch.tensor(subgraph_labels, device=node_embeddings.device, dtype=torch.long)
    # A simple classifier:
    classifier = nn.Linear(node_embeddings.size(-1), num_classes).to(node_embeddings.device)
    classifier.train()
    logits = classifier(subgraph_emb)
    loss = F.cross_entropy(logits, subgraph_labels)
    return loss

### 4. Graph Contrastive Learning ###
# We create augmented graphs and maximize similarity between their global embeddings.
# Assume we have a function augment_graph(data) that returns a perturbed version of the graph.
# We can compute graph-level embedding by pooling node embeddings.

def augment_graph(data: Data):
    # Placeholder. Implement your augmentation: remove some edges, mask some features, etc.
    # Just returns the same data for now.
    return data

def pool_graph_embeddings(node_embeddings, batch=None):
    # If batch is None, assume single graph. Else mean-pool by graph in batch.
    # For simplicity, assume single graph scenario:
    return node_embeddings.mean(dim=0, keepdim=True)

def graph_contrastive_loss(model, data, device):
    # Augment the graph
    data_aug = augment_graph(data)
    data = data.to(device)
    data_aug = data_aug.to(device)

    emb_original = model.embed_nodes(data.x, data.edge_index, data.edge_attr)
    emb_aug = model.embed_nodes(data_aug.x, data_aug.edge_index, data_aug.edge_attr)

    g_emb = pool_graph_embeddings(emb_original)
    g_emb_aug = pool_graph_embeddings(emb_aug)

    # InfoNCE-like loss:
    # We need negative samples. For simplicity, assume a batch of graphs.
    # Here we have just one graph pair, so no negatives. We'll create dummy negatives from random vectors.
    # In practice, gather embeddings from a batch.
    positives = F.cosine_similarity(g_emb, g_emb_aug)
    negatives = torch.randn_like(g_emb_aug)  # dummy negatives
    neg_sim = F.cosine_similarity(g_emb, negatives)
    # InfoNCE: L = -log(exp(pos) / (exp(pos) + sum exp(negs)))
    # With one negative:
    pos_score = torch.exp(positives)
    neg_score = torch.exp(neg_sim)
    loss = -torch.log(pos_score / (pos_score + neg_score))
    return loss.mean()

#############################################################
# Guidance Loss for Fine-Tuning
#############################################################
def guidance_loss(pretrained_emb, target_emb, node_mapping):
    sim = 0.0
    count = 0
    for (gn, gpn) in node_mapping:
        sim += F.cosine_similarity(target_emb[gn].unsqueeze(0), pretrained_emb[gpn].unsqueeze(0))
        count += 1
    if count == 0:
        return 0.0
    sim = sim / count
    # Guidance loss = 1 - sim
    return 1 - sim.mean()

#############################################################
# Example Training Routines
#############################################################
def train_stage_1(model, optimizer, loader, device):
    # Stage 1: Node masking & reconstruction only
    # For reconstruction, we need the model to output node features:
    # Let's add a small reconstruction head on the fly:
    rec_head = nn.Linear(model.conv_layers[-1].out_channels, loader.dataset[0].x.size(1)).to(device)
    rec_head_optimizer = optim.Adam(rec_head.parameters(), lr=0.001)

    model.train()
    total_loss = 0
    for data in tqdm(loader):
        data = data.to(device)
        x_masked, mask = mask_node_features(data)

        embeddings = model.embed_nodes(x_masked, data.edge_index, data.edge_attr)
        pred_x = rec_head(embeddings)
        loss = node_feature_reconstruction_loss(pred_x, data.x, mask)

        optimizer.zero_grad()
        rec_head_optimizer.zero_grad()
        loss.backward()
        optimizer.step()
        rec_head_optimizer.step()
        total_loss += loss.item()

    return total_loss / len(loader)


def train_stage_2(model, optimizer, loader, device):
    # Stage 2: Add node-pair classification tasks
    # We'll assume node_pairs_dict is available in data
    model.train()
    total_loss = 0
    for data in tqdm(loader):
        data = data.to(device)
        embeddings = model.embed_nodes(data.x, data.edge_index, data.edge_attr)

        # If data.node_pairs_dict contains multiple tasks:
        # {'reachability':[(u,v,l),...], 'dominators':..., ...}
        if hasattr(data, 'node_pairs_dict'):
            np_loss = node_pair_classification_loss(embeddings, data.node_pairs_dict)
        else:
            np_loss = 0
        
        if np_loss == 0:
            continue
        optimizer.zero_grad()
        np_loss.backward()
        optimizer.step()
        total_loss += np_loss.item()

    return total_loss / len(loader)


# def train_stage_3(model, optimizer, loader, device):
#     # Stage 3: Subgraph-level classification (e.g., resource usage)
#     model.train()
#     total_loss = 0
#     classifier = nn.Linear(model.conv_layers[-1].out_channels, 3).to(device)
#     cls_optimizer = optim.Adam(classifier.parameters(), lr=0.001)

#     for data in tqdm(loader):
#         data = data.to(device)
#         embeddings = model.embed_nodes(data.x, data.edge_index, data.edge_attr)

#         # Assuming data.subgraph_nodes and data.subgraph_labels exist
#         if hasattr(data, 'subgraph_nodes') and hasattr(data, 'subgraph_labels'):
#             subgraph_nodes = data.subgraph_nodes
#             subgraph_labels = data.subgraph_labels
#             sg_emb = []
#             for nodes in subgraph_nodes:
#                 sg_emb.append(embeddings[nodes].mean(dim=0))
#             sg_emb = torch.stack(sg_emb)
#             subgraph_labels = torch.tensor(subgraph_labels, dtype=torch.long, device=device)

#             logits = classifier(sg_emb)
#             loss = F.cross_entropy(logits, subgraph_labels)

#             optimizer.zero_grad()
#             cls_optimizer.zero_grad()
#             loss.backward()
#             optimizer.step()
#             cls_optimizer.step()
#             total_loss += loss.item()
#         else:
#             continue

#     return total_loss / len(loader)


def train_stage_3(model, optimizer, loader, device, classifier, cls_optimizer):
    model.train()
    total_loss = 0.0
    count = 0
    for data in tqdm(loader):
        data = data.to(device)
        embeddings = model.embed_nodes(data.x, data.edge_index, data.edge_attr)

        if hasattr(data, 'subgraph_nodes') and hasattr(data, 'subgraph_labels'):
            subgraph_nodes = data.subgraph_nodes
            subgraph_labels = data.subgraph_labels

            if len(subgraph_nodes) > 0 and len(subgraph_labels) > 0:
                sg_emb = []
                for nodes in subgraph_nodes:
                    if len(nodes) == 0:
                        continue
                    sg_emb.append(embeddings[nodes].mean(dim=0))
                if len(sg_emb) == 0:
                    continue
                sg_emb = torch.stack(sg_emb)
                subgraph_labels = torch.tensor(subgraph_labels, dtype=torch.long, device=device)

                logits = classifier(sg_emb)
                loss = F.cross_entropy(logits, subgraph_labels)

                optimizer.zero_grad()
                cls_optimizer.zero_grad()
                loss.backward()
                optimizer.step()
                cls_optimizer.step()

                total_loss += loss.item()
                count += 1
        else:
            # No subgraph labels in this data sample
            continue

    if count > 0:
        return total_loss / count
    else:
        return 0.0


def train_stage_4(model, optimizer, loader, device):
    # Stage 4: Graph contrastive learning
    model.train()
    total_loss = 0
    for data in tqdm(loader):
        loss = graph_contrastive_loss(model, data, device)
        optimizer.zero_grad()
        loss.backward()
        optimizer.step()
        total_loss += loss.item()
    return total_loss / len(loader)

def gen_dataset(li, batch_size):
    train_loader = DataLoader(li[0], batch_size=batch_size, shuffle=False, pin_memory=True, num_workers=4)
    val_loader = DataLoader(li[1], batch_size=batch_size, pin_memory=True, num_workers=4)  # TODO: split make sure no seen kernels in val/test
    test_loader = DataLoader(li[2], batch_size=batch_size, pin_memory=True, num_workers=4)  # TODO

    loader = train_loader
    if len(test_loader.dataset) > 0: loader = test_loader
    num_features = loader.dataset[0].num_features
    print(f'num features for training: {num_features}')
    edge_dim = loader.dataset[0].edge_attr.shape[1]
    print(f'size of the edge attribute is {edge_dim}')
    
    return train_loader, val_loader, test_loader, num_features, edge_dim 


#############################################################
# Main Script (Illustration)
#############################################################
if __name__ == "__main__":
    # Construct dummy dataset. In practice, load your real dataset.
    # dataset = []
    # for i in range(10):  # small dummy dataset
    #     num_nodes = 100
    #     num_features = 153
    #     x = torch.randn(num_nodes, num_features)
    #     edge_index = torch.randint(0, num_nodes, (2, 300))
    #     edge_attr = torch.randn(300, 335)  # Example shape

    #     data = Data(x=x, edge_index=edge_index, edge_attr=edge_attr)

    #     # Example node_pairs_dict for multiple tasks
    #     node_pairs_dict = {
    #         'reachability': [],
    #         'dominators': [],
    #         'data_dependencies': [],
    #         'liveness': [],
    #         'memory_alias': []
    #     }
    #     for _ in range(10):
    #         u = random.randint(0, num_nodes-1)
    #         v = random.randint(0, num_nodes-1)
    #         lbl = random.randint(0,1)
    #         # Add to one of the tasks randomly
    #         task_key = random.choice(list(node_pairs_dict.keys()))
    #         node_pairs_dict[task_key].append((u,v,lbl))
    #     data.node_pairs_dict = node_pairs_dict

    #     # Example subgraph-level data
    #     # Subgraph: pick random nodes and assign a label
    #     # Real data would be based on known patterns or heuristic resource usage.
    #     sub_nodes = [torch.randint(0, num_nodes, (5,)).tolist() for _ in range(2)]
    #     sub_labels = [random.randint(0,2) for _ in range(2)]
    #     data.subgraph_nodes = sub_nodes
    #     data.subgraph_labels = sub_labels

    #     dataset.append(data)

    # train_dataset = dataset[:8]
    # val_dataset = dataset[8:]
    
    val_ratio = 0.15
    test_ratio = 0.15
    resample = -1
    batch_size = 64
    gpu=3
    
    dataset = MyOwnDataset()
    
    dataset_dict = process_split_data(dataset)
    num_graphs = len(dataset_dict['train'])
    r1, r2 = get_train_val_count(num_graphs, val_ratio, test_ratio)

    if resample == -1:
        li = split_dataset(dataset_dict['train'], r1, r2, dataset_test=dataset_dict['test'])
    else:
        li = split_dataset_resample(dataset_dict['train'], 1.0 - val_ratio - test_ratio, val_ratio, test_ratio, test_id=resample)
    
    train_loader, val_loader, test_loader, num_features, edge_dim = gen_dataset(li, batch_size)
    
    # train_loader = DataLoader(train_dataset, batch_size=1, shuffle=True)
    # val_loader = DataLoader(val_dataset, batch_size=1, shuffle=False)

    device = torch.device(f'cuda:{str(gpu)}' if torch.cuda.is_available() else 'cpu')
    model = GNNModel(in_channels=153, hidden_channels=64, out_channels=153).to(device)
    print(model)
    optimizer = optim.Adam(model.parameters(), lr=0.001)

    # Multi-stage Pre-Training:
    # print("Stage 1: Node Feature Masking")
    # for epoch in range(3):
    #     loss = train_stage_1(model, optimizer, train_loader, device)
    #     print(f"Stage 1 Epoch {epoch}, Loss: {loss}")

    # print("Stage 2: Node-Pair Classification")
    # for epoch in range(3):
    #     loss = train_stage_2(model, optimizer, train_loader, device)
    #     print(f"Stage 2 Epoch {epoch}, Loss: {loss}")

    classifier = nn.Linear(model.conv_layers[-1].out_channels, 3).to(device)
    cls_optimizer = optim.Adam(classifier.parameters(), lr=0.001)
    print("Stage 3: Subgraph-Level Classification")
    for epoch in range(3):
        loss = train_stage_3(model, optimizer, train_loader, device, classifier, cls_optimizer)
        print(f"Stage 3 Epoch {epoch}, Loss: {loss}")

    print("Stage 4: Graph Contrastive Learning")
    for epoch in range(3):
        loss = train_stage_4(model, optimizer, train_loader, device)
        print(f"Stage 4 Epoch {epoch}, Loss: {loss}")

    # After multi-stage pre-training:
    pretrained_state_dict = copy.deepcopy(model.state_dict())
    torch.save(pretrained_state_dict, "improved_pretrained_gnn.pt")

    # Guidance and downstream fine-tuning would be similar to previous example
    # (Needs a pretrained model, a target model with pragma nodes, and node_mapping)
    # This is left as an exercise to fit your data.
    #
    # Example:
    # pretrained_model = GNNModel(153, 64, 153).to(device)
    # pretrained_model.load_state_dict(pretrained_state_dict)
    # pretrained_model.eval()
    #
    # target_model = GNNModel(153, 64, 153).to(device)
    # target_optimizer = optim.Adam(target_model.parameters(), lr=0.001)
    #
    # # Suppose we have G (with pragmas) and G' (without), and node_mapping
    # # G_data, G_prime_data, node_mapping = ...
    # # For a few epochs:
    # #   with torch.no_grad():
    # #       G_prime_emb = pretrained_model.embed_nodes(G_prime_data.x, G_prime_data.edge_index, G_prime_data.edge_attr)
    # #   G_emb = target_model.embed_nodes(G_data.x, G_data.edge_index, G_data.edge_attr)
    # #   g_loss = guidance_loss(G_prime_emb, G_emb, node_mapping)
    # #   downstream_loss = ...
    # #   loss = g_loss + downstream_loss
    # #   target_optimizer.zero_grad()
    # #   loss.backward()
    # #   target_optimizer.step()