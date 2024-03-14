# Vitis HLS Project
When doing Vitis HLS, use the kernels from the kernels directory. 
When changing from sequential implementation to parallel implementation, just comment or uncomment the macro definition for `DP_HLS_UNROLLED` in `params.h`. For example, in the file `/home/centos/workspace/DP-HLS/kernels/dtw/params.h`. 

You must start the vitis_hls in the folder where you create the project to properly use the include path. 

# F1 AFI
WHen genrate the bitstream for AWS F1 software development workflow, need to tweak the `params.h` a little bit for the parallel compile format. 

# Modularized Design
In the modularized design, all functions, including the class functions, are desinated to accept input data structures and write to the output data structures. And, the temporary variables of each class is initialized in itself. 
However, the data access pattern is a struggle. 

Modularize means a simple standard to follow. 

# Insertion and Deletion
The insertion and deletion in this repo is inserting to the query sequence or deleting from the query sequence. 
## Traceback
The traceback stored in the result of the python library is from the beginning of the traceback to the end of the
traceback. The beginning of the traceback normally means the maximum score globally or at the last row or column. 