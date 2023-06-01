# GAMMA
Source code for our paper: **GPU-Accelerated Batch-Dynamic Subgraph Matching**

GPMA is a data structure to maintain dynamic graphs on GPUs. This repository illustrates a demo to conduct BFS/Connected Component/PageRank on a dynamic graph, which is maintained by GPMA, on the GPU.

# Platform
* Ubuntu 20.04
* CUDA 11.1
* NVIDIA GTX 3090

# Usage

1. Build the project with ```make```.
2. Put the dataset in the ```datasets``` folder, which should include the ```data_graph``` and ```query_graph``` folders.
3. Run the project with ```./gamma -d ../datasets/data_graph/<data_graph> -i ../datasets/data_graph/<edge_stream> -q ../datasets/query_graph/<query_graph>```.

# Dataset
All the datasets used can be download from [here](https://hkustconnect-my.sharepoint.com/personal/xsunax_connect_ust_hk/_layouts/15/onedrive.aspx?id=%2Fpersonal%2Fxsunax%5Fconnect%5Fust%5Fhk%2FDocuments%2FShared%2FCSM%5Fdatasets%5Fand%5Fquerysets&ga=1)

### Formats of data graph and query graph
```
v id label
...
e src dst
...
```

### Formats edge_stream
```
v id label
...
e src dst
...
```



