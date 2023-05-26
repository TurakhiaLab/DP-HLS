# Note
This file document the usages. 

## util.sh
This script is used to sync updated sourcefile into the vitis project. 

## Nomenclature
### Module and Testbench
The file named as `<align_type>.cpp` is the top level design being synthesized. The file named 
`<aligh_type>_<test>.cpp` is the testbench file. Note that the model name in the top level design
have to be the same as the file name. 

### C and C++
For the same folder name in *src*, the *_cpp* suffix means the project are defined in C++, while 
others are usually in C. 

### Debug Suffix
The suffix `_d` in the function or variable signiture is the debug version of the function or variable. 

----
# HLS
## `ap_int.h`


