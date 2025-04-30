from config import FLAGS
from saver import saver
from utils import get_root_path, print_stats, get_save_path, \
    create_dir_if_not_exists, plot_dist, load
from result import Result, persist
from os.path import join, basename, dirname
from glob import glob, iglob
from math import ceil
from sklearn.preprocessing import OneHotEncoder
from torch_geometric.data import Data, Batch
import networkx as nx
import redis 
import pickle5 as pickle
import numpy as np
from collections import Counter, defaultdict, OrderedDict
from scipy.sparse import hstack, coo_matrix, csr_matrix
from tqdm import tqdm
import os.path as osp
import os
import torch
from torch_geometric.data import Dataset
from torch.utils.data import random_split
from shutil import rmtree
import math

NON_OPT_PRAGMAS = ['LOOP_TRIPCOUNT', 'INTERFACE', 'INTERFACE', 'KERNEL']
WITH_VAR_PRAGMAS = ['DEPENDENCE', 'RESOURCE', 'STREAM', 'ARRAY_PARTITION']
TARGET = ['perf', 'util-DSP', 'util-BRAM', 'util-LUT', 'util-FF']
# SAVE_DIR = join(get_save_path(), FLAGS.dataset,  f'{FLAGS.v_db}_MLP-{FLAGS.pragma_as_MLP}-{FLAGS.graph_type}-{FLAGS.task}_edge-position-{FLAGS.encode_edge_position}_norm_with-invalid_{FLAGS.invalid}-normalization_{FLAGS.norm_method}_tag_{FLAGS.tag}_{"".join(TARGET)}')
# TODO: var1 is the folder name of the output .pt graph
SAVE_DIR = "/local2/shared_data/hugging_face_c/graphs_harp/harp_23k/pt_GNN"
# "/home/jade1st/pj/Pretrain/graph_input_name" #CS259
# "../save/harp2"

ENCODER_PATH = join(SAVE_DIR, 'encoders')
create_dir_if_not_exists(SAVE_DIR)

db_path = []
for benchmark in FLAGS.benchmarks:
    db_path.append(f'../dse_database/{benchmark}/databases/**/*')

# TODO： var2 is the folder name of the input graph
GEXF_FOLDER= '/local2/shared_data/hugging_face_c/graphs_harp/harp_23k/general/processed/extended-pseudo-block-connected-hierarchy/*'
# '/share/user/lm/24fall/cs259/HARP/dse_database/harp/our_ll/processed/extended-pseudo-block-connected-hierarchy/*'#TODO change folder
#FIXME:NEW
GRAPH_dir = SAVE_DIR
# "/home/jade1st/pj/Pretrain/graph_input_name"
CODE_dir = "/local2/shared_data/hugging_face_c/graphs_harp/harp_23k/general"
# "/home/jade1st/pj/GNN_Pretrain_for_HLS/pretrain_code_modified_on_HARP/combine2"
# "/local2/shared_data/hugging_face_c/code" # My full code repo

import config
TARGETS = config.TARGETS
MACHSUITE_KERNEL = config.MACHSUITE_KERNEL
poly_KERNEL = config.poly_KERNEL
ALL_KERNEL = MACHSUITE_KERNEL + poly_KERNEL

def finte_diff_as_quality(new_result: Result, ref_result: Result) -> float:
    """Compute the quality of the point by finite difference method.

    Args:
        new_result: The new result to be qualified.
        ref_result: The reference result.

    Returns:
        The quality value (negative finite differnece). Larger the better.
    """

    def quantify_util(result: Result) -> float:
        """Quantify the resource utilization to a float number.

        util' = 5 * ceil(util / 5) for each util,
        area = sum(2^1(1/(1-util))) for each util'

        Args:
            result: The evaluation result.

        Returns:
            The quantified area value with the range (2*N) to infinite,
            where N is # of resources.
        """

        # Reduce the sensitivity to (100 / 5) = 20 intervals
        utils = [
            5 * ceil(u * 100 / 5) / 100 + FLAGS.epsilon for k, u in result.res_util.items()
            if k.startswith('util')
        ]

        # Compute the area
        return sum([2.0**(1.0 / (1.0 - u)) for u in utils])

    ref_util = quantify_util(ref_result)
    new_util = quantify_util(new_result)

    # if (new_result.perf / ref_result.perf) > 1.05:
    #     # Performance is too worse to be considered
    #     return -float('inf')

    if new_util == ref_util:
        if new_result.perf < ref_result.perf:
            # Free lunch
            # return float('inf')
            return FLAGS.max_number
        # Same util but slightly worse performance, neutral
        return 0

    return -(new_result.perf - ref_result.perf) / (new_util - ref_util)

class MyOwnDataset(Dataset):
    def __init__(self,
                 graph_dir=GRAPH_dir,
                 code_dir=CODE_dir,
                 transform=None,
                 pre_transform=None,
                 graph_files=None,
                 code_files=None,
                 data_files=None):
        """
        For paired graph and code data.
        
        New parameters:
          - data_files (list): Optional list of graph file paths. When provided, the
            code files are derived from these by matching the base name and replacing
            the extension with ".c" in the code directory.
        """
        super(MyOwnDataset, self).__init__(graph_dir, transform, pre_transform)
        self.graph_dir = graph_dir
        self.code_dir = code_dir

        if data_files is not None:
            # When data_files is provided, treat it as the list of graph files.
            # Then, for each graph file, derive the corresponding code file.
            self.data_files = data_files
            self.graph_files = data_files
            self.code_files = []
            for gf in data_files:
                # Get the base name (without extension)
                base = os.path.basename(gf).split('.pt')[0]
                candidate = join(self.code_dir, base + ".c") #join(self.code_dir, base, base + ".c") 259 version
                #print("candidate", candidate)
                if not os.path.exists(candidate):
                    raise ValueError(f"Code file {candidate} not found for graph file {gf}.")
                self.code_files.append(candidate)
        else:
            # Otherwise, use provided graph_files and code_files or discover them by glob.
            self.graph_files = graph_files if graph_files is not None else glob(join(graph_dir, "*.pt"))
            self.code_files = code_files if code_files is not None else glob(join(CODE_dir, "*.c")) 
            #TODO: first level glob(join(CODE_dir, "*.c"))
            #2nd level 259 glob(join(CODE_dir, '**', '*.c'), recursive=True)
        
        # Build the pairing list (a list of tuples: (graph_file, code_file)).
        self.graph_code_pairs = self._pair_graphs_and_codes()
        
        valid_pairs = []
        for graph_file, code_file in self.graph_code_pairs:
            try:
                data = torch.load(graph_file)
            except Exception as e:
                print(f"Skipping {graph_file} because it could not be loaded: {e}")
                continue
            # Optionally, attach a name for debugging.
            data.gname = os.path.basename(graph_file)
            if hasattr(data, 'edge_index') and data.edge_index.shape[0] == 2:  # at least 2 rows in edge_index
                valid_pairs.append((graph_file, code_file))
            else:
                print(f"Skipping {data.gname} due to invalid edge_index shape: {data.edge_index.shape}")
        self.graph_code_pairs = valid_pairs
        print(f"Filtered dataset: {len(self.graph_code_pairs)} valid pairs remain.")
        
    def _pair_graphs_and_codes(self):
        """
        Pairs graph files with code files based on matching base names.
        For example, "data_1.pt" is paired with "data_1.c".
        """
        paired_files = []
        # Create mapping from base name to file path for graphs and codes.
        #print("graph files", len(self.graph_files))
        #print("code files", len(self.code_files))
        graph_base_names = {os.path.basename(f).split('.pt')[0]: f for f in self.graph_files}
        code_base_names = {os.path.basename(f).split('.c')[0]: f for f in self.code_files}
        #print("graph base names", len(graph_base_names))
        #print("code base names", len(code_base_names))
        for base_name, gfile in graph_base_names.items():
            if base_name in code_base_names:
                paired_files.append((gfile, code_base_names[base_name]))
                
        if len(paired_files) == 0:
            #print("graph_base_names", graph_base_names)
            #print("code_base_names", code_base_names)
            print("No paired graph and code files found. Check naming consistency.")
        return paired_files

    def len(self):
        return len(self.graph_code_pairs)

    def __len__(self):
        return self.len()

    def get(self, idx):
        """
        Returns a paired sample:
          - Loads the graph data from the .pt file.
          - Loads the corresponding code (as text) and attaches it as the "text" attribute.
        """
        graph_path, code_path = self.graph_code_pairs[idx]

        # Load graph data
        graph_data = torch.load(graph_path)

        # Load code data
        with open(code_path, "r") as f:
            code_text = f.read()
        graph_data.text = code_text
        graph_data.gname = os.path.basename(graph_path)
        '''
        if hasattr(graph_data, 'edge_index') and graph_data.edge_index.shape[0] != 2:
            # You could either return None or raise a custom exception.
            print(f"Skipping sample {graph_data.gname} due to invalid edge_index shape: {graph_data.edge_index.shape}")
            return None
        '''
        return graph_data
    '''    def __getitem__(self, idx):
            """
            Override __getitem__ to skip invalid samples.
            If get(idx) returns None, try subsequent indices until a valid sample is found.
            """
            original_idx = idx
            attempts = 0
            while True:
                data = self.get(idx)
                if data is not None:
                    return data
                # If the sample is invalid, try the next index (with wrap-around)
                idx = (idx + 1) % len(self)
                attempts += 1
                if idx == original_idx or attempts > len(self):
                    # If we've looped over the entire dataset, then no valid sample exists.
                    raise ValueError("No valid samples in the dataset.")
    '''
    @property
    def processed_file_names(self):
        """
        When using the splitting functions, this property should return the list of graph files.
        If the dataset was instantiated with data_files, use that; otherwise, discover the files.
        """
        return [pair[0] for pair in self.graph_code_pairs]

    def get_file_path(self, idx):
        """
        Returns the graph file path corresponding to the given index.
        """
        if hasattr(self, 'data_files'):
            fn = self.data_files[idx]
        else:
            fn = osp.join(self.graph_dir, 'data_{}.pt'.format(idx))
        return fn

def split_dataset(dataset, train, val, dataset_test=None):
    file_li = dataset.processed_file_names
    print(len(file_li))
    li = random_split(file_li, [train, val, len(dataset) - train - val],
                          generator=torch.Generator().manual_seed(FLAGS.random_seed))
    if dataset_test is None:
        dataset_test = li[2]
    saver.log_info(f'{len(file_li)} graphs in total:'
          f' {len(li[0])} train {len(li[1])} val '
          f'{len(dataset_test)} test')
    train_dataset = MyOwnDataset(data_files=li[0])
    val_dataset = MyOwnDataset(data_files=li[1])
    test_dataset = MyOwnDataset(data_files=dataset_test)

    return [train_dataset, val_dataset, test_dataset]

def split_dataset_resample(dataset, train, val, test, test_id=0):
    file_li = dataset.processed_file_names
    num_batch = int(1 / test)
    splits_ratio = [int(len(dataset) * test)] * num_batch
    splits_ratio[-1] = len(dataset) - int(len(dataset) * test * (num_batch-1))
    print(splits_ratio, len(dataset), sum(splits_ratio))
    splits_ = random_split(file_li, splits_ratio,
                          generator=torch.Generator().manual_seed(100))
    test_split = splits_[test_id]
    train_val_data = []
    for i in range(num_batch):
        if i != test_id:
            train_val_data.extend(splits_[i])
    new_train, new_val = int(len(train_val_data) * train / (train+val)), len(train_val_data) - int(len(train_val_data) * train / (train+val))
    li = random_split(train_val_data, [new_train, new_val],
                          generator=torch.Generator().manual_seed(100))
    saver.log_info(f'{len(file_li)} graphs in total:'
          f' {len(li[0])} train {len(li[1])} val '
          f'{len(test_split)} test')
    train_dataset = MyOwnDataset(data_files=li[0])
    val_dataset = MyOwnDataset(data_files=li[1])
    test_dataset = MyOwnDataset(data_files=test_split)
    return train_dataset, val_dataset, test_dataset

def get_kernel_samples(dataset):
    samples = defaultdict(list)
    for data in dataset:
        if f'{FLAGS.target_kernel}_' in data.gname:
            samples[FLAGS.target_kernel].append(data)

    return samples[FLAGS.target_kernel]

def split_train_test_kernel(dataset):
    samples = defaultdict(list)
    assert FLAGS.test_kernels is not None, 'No test_kernels selected'
    for idx, data in enumerate(dataset):
        if any(f'{kernel_name}_' in data.kernel for kernel_name in FLAGS.test_kernels):
            samples['test'].append(dataset.get_file_path(idx))
        else:
            samples['train'].append(dataset.get_file_path(idx))

            
    data_dict = defaultdict()
    data_dict['train'] = MyOwnDataset(data_files=samples['train'])
    # data_dict['test'] = MyOwnDataset(data_files=samples['test'])
    data_dict['test'] = samples['test']

    return data_dict

def log_graph_properties(ntypes, itypes, btypes, ftypes, ptypes, numerics):
    saver.log_info(f'\tntypes {len(ntypes)} {ntypes}')
    saver.log_info(f'\titypes {len(itypes)} {itypes}')
    saver.log_info(f'\tbtypes {len(btypes)} {btypes}')
    saver.log_info(f'\tftypes {len(ftypes)} {ftypes}')
    saver.log_info(f'\tptypes {len(ptypes)} {ptypes}')
    saver.log_info(f'\tnumerics {len(numerics)} {numerics}')
    
'''

05/29/2023: A database object to use either the redis database or a custom object.

'''

from config import FLAGS
from saver import saver
from collections import OrderedDict

class OurDatabase(object):
    def __int__(self):
        self.flushdb()

    def flushdb(self):
        self.d = {}
        self.d_decoded = {}

    def hmset(self, n, data):
        self.d[n] = data
        new_data = OrderedDict()
        assert type(data) is dict
        for k, v in data.items():
            new_data[k.decode('utf-8')] = v
        self.d_decoded[n] = new_data
        
    def hset(self, n, mapping):
        self.d[n] = mapping
        new_data = OrderedDict()
        for k, v in mapping.items():
            new_data[k.decode('utf-8')] = v
        self.d_decoded[n] = new_data
        

    def hkeys(self, n):
        if n not in self.d:
            return []
        return list(self.d[n].keys())

    def hget(self, n, key):
        try:
            return self.d_decoded[n][key]
        except KeyError as e:
            exit()


def create_database():  ## never used
    # if FLAGS.use_redis:
    #     import redis
    #     rtn = redis.StrictRedis(host='localhost', port=6379)
    #     saver.log_info(f'Connection established to port 6379')
    #     return rtn
    # else:
    return OurDatabase()


import pandas as pd
from torch_geometric.data import Data
from collections import OrderedDict
import networkx as nx
import torch
import numpy as np
import math
import os.path as osp
from tqdm import tqdm

def get_data_list(): 
    '''
    New version for cross modality generation
    '''
    # Load CSV data and create a lookup index
    # FIXME: make it customized
    csv_path = "/home/jade1st/pj/Pretrain/dataset_csv/processed_23k_mean.csv"
    # "/home/jade1st/pj/Pretrain/dataset_csv/processed_23k_median.csv" #23k median
    #'/home/jade1st/pj/GNN_Pretrain_for_HLS/pretrain_code_modified_on_HARP/src/259_2k_std.csv'  # CS259
    print("accessing csv file: ", csv_path)
    csv_data = pd.read_csv(csv_path)
    # Create a key that matches the GEXF file naming convention
    # dse_database/harp/our_ll/processed/extended-pseudo-block-connected-hierarchy/000-1178select-sort_processed_result.gexf
    csv_data['key'] = csv_data['unique_id'].astype(str) + "_" + csv_data['path'].apply(lambda x: x.split('/')[-1].split('.')[0]) + "_processed_result"
    csv_data['saved_name'] = csv_data['unique_id'].astype(str) + "_" + csv_data['path'].apply(lambda x: x.split('/')[-1].split('.')[0])
    csv_lookup = csv_data.set_index('key')
    saved_name_dict = csv_data.set_index('key')['saved_name'].to_dict()  # Dictionary: {key -> saved_name}
    
    #GEXF_FILES = sorted([f for f in iglob(GEXF_FOLDER, recursive=True) if f.endswith('.gexf') and FLAGS.graph_type in f])#OLD HARP search
    GEXF_FILES = sorted([f for f in iglob(GEXF_FOLDER, recursive=True) if f.endswith('.gexf')]) 
    saver.log_info(f'Found {len(GEXF_FILES)} gexf files under {GEXF_FOLDER}')
    # create a redis database
    database = OurDatabase()

    # We no longer need all these counters and encoders for complex tasks, 
    # but if your encoding functions (_encode_X_torch, _encode_edge_torch) still need them,
    # keep the basic setup. Just ensure we ultimately produce `x`, `edge_index`, and `edge_attr`.
    ntypes = Counter()
    ptypes = Counter()
    numerics = Counter()
    itypes = Counter()
    ftypes = Counter()
    btypes = Counter()
    ptypes_edge = Counter()
    ftypes_edge = Counter()

    # If encoders are required for node/edge features:
    if FLAGS.encoder_path != None:
        saver.info(f'loading encoder from {FLAGS.encoder_path}')
        encoders = load(FLAGS.encoder_path, saver.logdir)
        enc_ntype = encoders['enc_ntype']
        enc_ptype = encoders['enc_ptype']
        enc_itype = encoders['enc_itype']
        enc_ftype = encoders['enc_ftype']
        enc_btype = encoders['enc_btype']
        enc_ftype_edge = encoders['enc_ftype_edge']
        enc_ptype_edge = encoders['enc_ptype_edge']
    else:
        enc_ntype = OneHotEncoder(handle_unknown='ignore')
        enc_ptype = OneHotEncoder(handle_unknown='ignore')
        enc_itype = OneHotEncoder(handle_unknown='ignore')
        enc_ftype = OneHotEncoder(handle_unknown='ignore')
        enc_btype = OneHotEncoder(handle_unknown='ignore')
        enc_ftype_edge = OneHotEncoder(handle_unknown='ignore')
        enc_ptype_edge = OneHotEncoder(handle_unknown='ignore')

    data_list = []
    saved_names = []
    all_gs = OrderedDict()
    X_ntype_all, X_ptype_all, X_itype_all = [], [], []
    X_ftype_all, X_btype_all = [], []
    edge_ftype_all, edge_ptype_all = [], []
    tot_configs, num_files, dead = 0, 0, 0
    for gexf_file in tqdm(GEXF_FILES[0:]): 
        saver.info(f'Working on graph file: {gexf_file}')
        g = nx.read_gexf(gexf_file)
        g.variants = OrderedDict()
        gname = osp.basename(gexf_file).split('.')[0]  # e.g. '12345_file'

        # Lookup corresponding CSV row
        if gname not in csv_lookup.index:
            #saver.warning(f"No matching CSV entry found for {gname}. Skipping.")#TODO: remove comment if I want to know
            continue
        row = csv_lookup.loc[gname]
        saved_names.append(saved_name_dict[gname])  # Store correct file name for saving
        
        # Here we assume you still have a database loading mechanism. 
        # If no longer needed, you can remove the database logic and just encode the graph.
        # database.flushdb()
        # The below lines depend on your logic. Just ensure that you form variants. 
        # If your original code uses `database.hset()` and picks keys, do that minimally.
        
        # ... Your existing logic to create variants ...
        # The essential part is that after you've processed the GEXF and created variant data,
        # you encode them and create Data objects with only x, edge_index, edge_attr plus CSV data.
        
        # Assume g.variants is populated with a single variant or multiple variants as before.
        # Each variant is (d_node, d_edge) dictionary containing node/edge feature information.
        
        database.flushdb()

        # saver.log_info(f'db_paths for {n}:')
        # for d in db_paths:
        #     saver.log_info(f'{d}')

        # if len(db_paths) == 0:
        #     saver.warning(f'no database file for {n}')
        #     return

        # # load all database files for this kernel/graph
        # for idx, file in enumerate(db_paths):
        #     with open(file, 'rb') as f_db:
        #         data = pickle.load(f_db)
        #         database.hset(0, mapping=data)

        # keys = [k.decode('utf-8') for k in database.hkeys(0)]

        # saver.log_info(f'num keys for {n}: {len(keys)}')

        # for key in sorted(keys):
        # pickle_obj = database.hget(0, key)
        # if pickle_obj is None:
        #     continue
        # obj = pickle.loads(pickle_obj)
        # # We expect obj to have a 'point' attribute which is a dict containing relevant node/edge info
        # if not hasattr(obj, 'point') or not isinstance(obj.point, dict):
        #     continue

        # Encode node and edge features
        new_gname = gname.split('_')[0]
        print(new_gname)
        excluded = ['000-7470thread', '015-27833locked', '017-11584pointers']
        if new_gname in excluded:
            continue
        try:
            xy_dict = _encode_X_dict(
                g, 
                ntypes=ntypes, 
                ptypes=ptypes, 
                itypes=itypes, 
                ftypes=ftypes, 
                btypes=btypes, 
                numerics=numerics, 
                point=None
            )
            edge_dict = _encode_edge_dict(
                g, 
                ftypes=ftypes_edge, 
                ptypes=ptypes_edge
            )

            
            # Store variant data
            vname = new_gname
            g.variants[vname] = (xy_dict, edge_dict)

            # Collect feature data for fitting encoders if needed
            X_ntype_all += xy_dict['X_ntype']
            X_ptype_all += xy_dict['X_ptype']
            X_itype_all += xy_dict['X_itype']
            X_ftype_all += xy_dict['X_ftype']
            X_btype_all += xy_dict['X_btype']

            edge_ftype_all += edge_dict['X_ftype']
            edge_ptype_all += edge_dict['X_ptype']

            # Example: after your _encode_X_dict and _encode_edge_dict, you have:
            # d_node, d_edge = some_variant
            # X = _encode_X_torch(d_node, enc_ntype, enc_ptype, enc_itype, enc_ftype, enc_btype)
            # edge_attr = _encode_edge_torch(d_edge, enc_ftype_edge, enc_ptype_edge)
            #
            # Create edge_index:
            edge_index = create_edge_index(g)

            # If you need a simplified gname, else just use gname

            # Retrieve CSV-based labels
            # TODO: adjust the target column names based on your CSV structure
            loop_count = torch.FloatTensor([row['loop_count']])
            computation_count = torch.FloatTensor([row['computation_count']])
            execution_time_cycles = torch.FloatTensor([row['execution_time_cycles_mean']])
            instruction_count = torch.FloatTensor([row['instruction_count_mean']])
            cpi = torch.FloatTensor([row['cpi_mean']])
            I1mr = torch.FloatTensor([row['I1mr_mean']])
            Dr = torch.FloatTensor([row['Dr_mean']])
            Dw = torch.FloatTensor([row['Dw_mean']])
            D1mr = torch.FloatTensor([row['D1mr_mean']])
            DLmr = torch.FloatTensor([row['DLmr_mean']])
            cpu_fre = torch.FloatTensor([row['cpu_fre_mean']])
            total_memory = torch.FloatTensor([row['total_memory_mean']])
            instruction_cache_miss_rate = torch.FloatTensor([row['instruction_cache_miss_rate_mean']])
            data_cache_miss_rate = torch.FloatTensor([row['data_cache_miss_rate_mean']])

            # Now append to data_list only the required attributes:
            for vname, d in g.variants.items():
                d_node, d_edge = d
                # Encode the node and edge attributes
                X = _encode_X_torch(d_node, enc_ntype, enc_ptype, enc_itype, enc_ftype, enc_btype)
                edge_attr = _encode_edge_torch(d_edge, enc_ftype_edge, enc_ptype_edge)

                data_list.append(Data(
                    gname=new_gname,
                    x=X,
                    edge_index=edge_index,
                    edge_attr=edge_attr,
                    loop_count=loop_count,
                    computation_count=computation_count,
                    execution_time_cycles=execution_time_cycles,
                    instruction_count=instruction_count,
                    cpi=cpi,
                    I1mr=I1mr,
                    Dr=Dr,
                    Dw=Dw,
                    D1mr=D1mr,
                    DLmr=DLmr,
                    cpu_fre=cpu_fre,
                    total_memory=total_memory,
                    instruction_cache_miss_rate=instruction_cache_miss_rate,
                    data_cache_miss_rate=data_cache_miss_rate
                ))
            #TODO: end of modification

            tot_configs += len(g.variants)
            num_files += 1
        except Exception as e:
            saver.warning(f'Error processing {gname}: {e}')
            dead += 1
            print(f'dead: {dead}')
            continue

    saver.log_info(f'Done {num_files} files tot_configs {tot_configs}')

    # If training encoders is needed (in case no FLAGS.encoder_path)
    if FLAGS.encoder_path is None:
        enc_ptype.fit(X_ptype_all)
        enc_ntype.fit(X_ntype_all)
        enc_itype.fit(X_itype_all)
        enc_ftype.fit(X_ftype_all)
        enc_btype.fit(X_btype_all)
        enc_ftype_edge.fit(edge_ftype_all)
        enc_ptype_edge.fit(edge_ptype_all)

    # Save data if needed
    if FLAGS.force_regen:
        saver.log_info(f'Saving {len(data_list)} to disk {SAVE_DIR}; Deleting existing files')
        rmtree(SAVE_DIR)
        create_dir_if_not_exists(SAVE_DIR)
        for data, name in tqdm(zip(data_list, saved_names), total=len(data_list)):
            torch.save(data, osp.join(SAVE_DIR, f"{name}.pt"))
            
    # If needed, save the encoders
    if FLAGS.force_regen:
        from utils import save
        obj = {'enc_ntype': enc_ntype, 'enc_ptype': enc_ptype,
               'enc_itype': enc_itype, 'enc_ftype': enc_ftype,
               'enc_btype': enc_btype, 
               'enc_ftype_edge': enc_ftype_edge, 'enc_ptype_edge': enc_ptype_edge}
        p = ENCODER_PATH
        save(obj, p)

    rtn = MyOwnDataset()
    return rtn, {}  # return empty dict or relevant info if needed

def _get_y(data, target):
    return getattr(data, target.replace('-', '_'))

def print_data_stats(data_loader, tvt):
    nns, ads, ys = [], [], []
    for d in tqdm(data_loader):
        nns.append(d.x.shape[0])
        # ads.append(d.edge_index.shape[1] / d.x.shape[0])
        ys.append(d.y.item())
    print_stats(nns, f'{tvt} number of nodes')
    # print_stats(ads, f'{tvt} avg degrees')
    plot_dist(ys, f'{tvt} ys', saver.get_log_dir(), saver=saver, analyze_dist=True, bins=None)
    saver.log_info(f'{tvt} ys', Counter(ys))

def load_encoders():
    from utils import load
    rtn = load(ENCODER_PATH, saver.logdir)
    return rtn

def find_pragma_node(g, nid):
    pragma_nodes = {}
    for neighbor in g.neighbors(str(nid)):
        for pragma in ['pipeline', 'parallel', 'tile']:
            if g.nodes[neighbor]['text'].lower() == pragma:
                pragma_nodes[pragma] = neighbor
                break
    
    return pragma_nodes

def get_pragma_numeric(pragma_text, point, pragma_type):
    t_li = pragma_text.split(' ')
    reduction = 0
    for i in range(len(t_li)):
        if 'REDUCTION' in t_li[i].upper(): 
            reduction = 1
        elif 'AUTO{' in t_li[i].upper():
            # print(t_li[i])
            auto_what = _in_between(t_li[i], '{', '}')
            numeric = point[auto_what]
            if type(numeric) is not int: ## '', 'off', 'flatten'
                assert pragma_type.lower() == 'pipeline'
                if numeric == 'flatten':
                    numeric = 10
                elif numeric == 'off':
                    numeric = 1
                else:
                    numeric = 5
            
    return reduction, numeric

def fill_pragma_vector(g, neighbor_pragmas, pragma_vector, point, node):
    '''
        # for each node, a vector of [tile factor, pipeline type, parallel type, parallel factor] 
        # pipeline type: 1: off, 5: cg, 10: flatten
        # parallel type: 1: normal, 2: reduction
        # if no pragma assigned to node, a vector of [0, 0, 0, 0]
    '''
    vector_id = {'pipeline': 1, 'parallel': 3, 'tile': 0}
    for pragma in ['pipeline', 'parallel', 'tile']:
        if pragma in neighbor_pragmas:
            nid = neighbor_pragmas[pragma]
            pragma_text = g.nodes[nid]['full_text']
            reduction, numeric = get_pragma_numeric(pragma_text, point, pragma_type=pragma)
            pragma_vector[vector_id[pragma]] = numeric
            if pragma == 'parallel':
                if reduction == 0:
                    pragma_vector[vector_id[pragma] - 1] = 1
                else:
                    pragma_vector[vector_id[pragma] - 1] = 2
    # saver.log_info(f'point: {point}')
    # saver.log_info(f'{node}, {pragma_vector}')
    return pragma_vector


def encode_g_torch(g, enc_ntype, enc_ptype, enc_itype, enc_ftype, enc_btype):
    x_dict = _encode_X_dict(g, ntypes=None, ptypes=None, numerics=None, itypes=None, eftypes=None, btypes=None, point=None)

    X = _encode_X_torch(x_dict, enc_ntype, enc_ptype, enc_itype, enc_ftype, enc_btype)

    edge_index = create_edge_index(g)

    return X, edge_index


def _encode_X_dict(g, ntypes=None, ptypes=None, numerics=None, itypes=None, ftypes=None, btypes=None, point=None):
    X_ntype = [] # node type <attribute id="3" title="type" type="long" />
    X_ptype = [] # pragma type
    X_numeric = []
    X_itype = [] # instruction type (text) <attribute id="2" title="text" type="string" />
    X_ftype = [] # function type <attribute id="1" title="function" type="long" />
    X_btype = [] # block type <attribute id="0" title="block" type="long" />
    X_contextnids = [] # 0 or 1 showing context node
    X_pragmanids = [] # 0 or 1 showing pragma node
    X_pseudonids = [] # 0 or 1 showing pseudo node
    X_icmpnids = [] # 0 or 1 showing icmp node
    ## for pragma as MLP
    X_pragma_per_node = [] # for each node, a vector of [tile factor, pipeline type, parallel type, parallel factor] 
                           # pipeline type: 1: off, 5: cg, 10: flatten
                           # parallel type: 1: normal, 2: reduction
                           # if no pragma assigned to node, a vector of [0, 0, 0, 0]
    X_pragmascopenids = [] # 0 or 1 showing if previous vector is all zero or not
    
    
      
    for nid, (node, ndata) in enumerate(g.nodes(data=True)):  # TODO: node ordering
        # print(node['type'], type(node['type']))
        assert nid == int(node), f'{nid} {node}'
        if ntypes is not None:
            ntypes[ndata['type']] += 1
        if itypes is not None:
            itypes[ndata['text']] += 1
        if btypes is not None:
            btypes[ndata['block']] += 1
        if ftypes is not None:
            ftypes[ndata['function']] += 1
            
        pragma_vector = [0, 0, 0, 0]
        if 'pseudo' in ndata['text']:
            X_pseudonids.append(1)
            ## for pragma as MLP
            if FLAGS.pragma_scope == 'block':
                ## check if the block incules any pragma nodes
                neighbor_pragmas = find_pragma_node(g, node)
                if len(neighbor_pragmas) == 0:
                    X_pragmascopenids.append(0)
                else:
                    X_pragmascopenids.append(1)
                    pragma_vector = fill_pragma_vector(g, neighbor_pragmas, pragma_vector, point, node)
            else: ## other pragma scopes are not implemented yet
                raise NotImplementedError()
        else:
            X_pseudonids.append(0)
            X_pragmascopenids.append(0)
        ## for pragma as MLP: a vector of [tile factor, pipeline type, parallel type, parallel factor]
        X_pragma_per_node.append(pragma_vector)

        numeric = 0

        if 'full_text' in ndata and 'icmp' in ndata['full_text']:
            cmp_t = ndata['full_text'].split(',')[-1]
            cmp_t = cmp_t.strip()
            if cmp_t.isdigit():
                cmp_t = eval(cmp_t)
                numeric = cmp_t
                X_icmpnids.append(1)
            else:
                X_icmpnids.append(0)
                pass
        else:
            X_icmpnids.append(0)

        if 'full_text' in ndata and 'pragma' in ndata['full_text']:
            # print(ndata['content'])
            p_text = ndata['full_text'].rstrip()
            assert p_text[0:8] == '#pragma '
            p_text_type = p_text[8:].upper()

            if _check_any_in_str(NON_OPT_PRAGMAS, p_text_type):
                p_text_type = 'None'
            else:
                if _check_any_in_str(WITH_VAR_PRAGMAS, p_text_type):
                    # HLS DEPENDENCE VARIABLE=CSIYIY ARRAY INTER FALSE
                    # HLS DEPENDENCE VARIABLE=<> ARRAY INTER FALSE
                    t_li = p_text_type.split(' ')
                    for i in range(len(t_li)):
                        if 'VARIABLE=' in t_li[i]:
                            t_li[i] = 'VARIABLE=<>'
                        elif 'DEPTH=' in t_li[i]:
                            t_li[i] = 'DEPTH=<>'  # TODO: later add back
                        elif 'DIM=' in t_li[i]:
                            numeric = int(t_li[i][4:])
                            t_li[i] = 'DIM=<>'
                        elif 'LATENCY=' in t_li[i]:
                            numeric = int(t_li[i][8:])
                            t_li[i] = 'LATENCY=<>'
                    p_text_type = ' '.join(t_li)

                pragma_shortened = []
                if point is not None:
                    t_li = p_text_type.split(' ')
                    skip_next_two = 0
                    for i in range(len(t_li)):
                        if skip_next_two == 2:
                            if t_li[i] == '=':
                                skip_next_two = 1
                                continue
                            else:
                                skip_next_two = 0
                        elif skip_next_two == 1:
                            skip_next_two = 0
                            continue
                        if 'REDUCTION' in t_li[i]: ### NEW: use one type for all reductions (previously reduction=D and reduction=C were different)
                            if FLAGS.keep_pragma_attribute: ## see reduction as a different kind of parallelization
                                pragma_shortened.append('REDUCTION')
                            skip_next_two = 2
                        # elif 'PARALLEL' in t_li[i]:
                        #     pragma_shortened.append('PRALLEL REDUCTION')
                        elif not FLAGS.keep_pragma_attribute and 'PIPELINE' in t_li[i]: ## see all the pipeline option as the same
                            pragma_shortened.append(t_li[i])
                            break
                        elif 'AUTO{' in t_li[i]:
                            # print(t_li[i])
                            auto_what = _in_between(t_li[i], '{', '}')
                            numeric = point[auto_what]
                            if type(numeric) is not int:
                                t_li[i] = numeric
                                pragma_shortened.append(numeric)
                                numeric = 0  # TODO: ? '', 'off', 'flatten'
                            else:
                                t_li[i] = 'AUTO{<>}'
                                pragma_shortened.append('AUTO{<>}')
                            break
                        else:
                            pragma_shortened.append(t_li[i])
                    p_text_type = ' '.join(pragma_shortened)
                else:
                    assert 'AUTO' not in p_text_type
            if not FLAGS.keep_pragma_attribute: ## see all the pragma options as the same
                numeric = 1
            ptype = p_text_type
            X_pragmanids.append(1)
            X_contextnids.append(0)
        else:
            ptype = 'None'
            X_pragmanids.append(0)
            ## exclude pseudo nodes from context nodes
            if 'pseudo' in ndata['text']:
                X_contextnids.append(0)
            else:
                X_contextnids.append(1)
                
        if ptypes is not None:
            ptypes[ptype] += 1
        if numerics is not None:
            numerics[numeric] += 1

        X_ntype.append([ndata['type']])
        X_ptype.append([ptype])
        X_numeric.append([numeric])
        X_itype.append([ndata['text']])
        X_ftype.append([ndata['function']])
        X_btype.append([ndata['block']])

    X_pragma_per_node = transform_X_torch(X_pragma_per_node)
    return {'X_ntype': X_ntype, 'X_ptype': X_ptype,
            'X_numeric': X_numeric, 'X_itype': X_itype,
            'X_ftype': X_ftype, 'X_btype': X_btype,
            'X_contextnids': torch.FloatTensor(np.array(X_contextnids)),
            'X_pragmanids': torch.FloatTensor(np.array(X_pragmanids)),
            'X_pragmascopenids': torch.FloatTensor(np.array(X_pragmascopenids)),
            'X_pseudonids': torch.FloatTensor(np.array(X_pseudonids)),
            'X_icmpnids': torch.FloatTensor(np.array(X_icmpnids)),
            'X_pragma_per_node': X_pragma_per_node
            }


def transform_X_torch(X):
    X = torch.FloatTensor(np.array(X))
    X = coo_matrix(X)
    X = _coo_to_sparse(X)
    X = X.to_dense()
    return X

def _encode_X_torch(x_dict, enc_ntype, enc_ptype, enc_itype, enc_ftype, enc_btype):
    """
    x_dict is the returned dict by _encode_X_dict()
    """
    X_ntype = enc_ntype.transform(x_dict['X_ntype'])
    X_ptype = enc_ptype.transform(x_dict['X_ptype'])
    X_itype = enc_itype.transform(x_dict['X_itype'])
    X_ftype = enc_ftype.transform(x_dict['X_ftype'])
    X_btype = enc_btype.transform(x_dict['X_btype'])

    X_numeric = x_dict['X_numeric']
    # print(len(enc_ntype.categories_[0]))
    # print(len(X_numeric))
    # saver.log_info(X_ntype.shape(0), X_ptype.shape(0), X_itype.shape(0), X_ftype.shape(0), X_btype.shape(0)) #X_numeric.shape(0))
    
    X = hstack((X_ntype, X_ptype, X_numeric, X_itype, X_ftype, X_btype))
    X = _coo_to_sparse(X)
    X = X.to_dense()

    return X




def _encode_edge_dict(g, ftypes=None, ptypes=None):
    X_ftype = [] # flow type <attribute id="5" title="flow" type="long" />
    X_ptype = [] # position type <attribute id="6" title="position" type="long" />    
      
    for nid1, nid2, edata in g.edges(data=True):  # TODO: node ordering
        X_ftype.append([edata['flow']])
        X_ptype.append([edata['position']])

    return {'X_ftype': X_ftype, 'X_ptype': X_ptype}

    
def _encode_edge_torch(edge_dict, enc_ftype, enc_ptype):
    """
    edge_dict is the dictionary returned by _encode_edge_dict
    """
    X_ftype = enc_ftype.transform(edge_dict['X_ftype'])
    X_ptype = enc_ptype.transform(edge_dict['X_ptype'])

    if FLAGS.encode_edge_position:
        X = hstack((X_ftype, X_ptype))
    else:
        X = coo_matrix(X_ftype)
    if isinstance(X, csr_matrix):
        # Convert CSR to COO
        X = X.tocoo()
    X = _coo_to_sparse(X)
    X = X.to_dense()

    return X
        

def _in_between(text, left, right):
    # text = 'I want to find a string between two substrings'
    # left = 'find a '
    # right = 'between two'
    return text[text.index(left) + len(left):text.index(right)]


def _check_any_in_str(li, s):
    for li_item in li:
        if li_item in s:
            return True
    return False


def create_edge_index(g):
    g = nx.convert_node_labels_to_integers(g, ordering='sorted')
    edge_index = torch.LongTensor(list(g.edges)).t().contiguous()
    return edge_index


def _coo_to_sparse(coo):
    values = coo.data
    indices = np.vstack((coo.row, coo.col))

    i = torch.LongTensor(indices)
    v = torch.FloatTensor(values)
    shape = coo.shape

    rtn = torch.sparse.FloatTensor(i, v, torch.Size(shape))
    return rtn