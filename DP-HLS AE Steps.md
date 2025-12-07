# Dependencies
1. Vitis HLS 2021.2
2. Python3

# Steps for Compilation
1. Clone the DP-HLS repository. 
2. Go to the demo folder in DP-HLS using `cd DP-HLS/demo/global_affine`.
3. Change the `config.json` to replace the `<dp_hls_root>` wirh the path to the DP-HLS repository. 
4. Install `nlohmann/json` library. Clone `https://github.com/nlohmann/json.git`, checkout to master branch, copy the folder `include/nlohmann` to under `/usr/include` as a global installation for the json header. 

# Steps for Cosim and Throughput
1. 

# Troubleshooting
## Ubuntu 24.04 Specific Problems
Vivado 2021.2 is too old, and some librarys on Ubuntu 22.04 is pretty new and will result in an error if you are trying to run Vivado with them. The error looks like:
```
INFO: [SIM 211-2] *************** CSIM start ***************
INFO: [SIM 211-4] CSIM will launch GCC as the compiler.
   Compiling ../../../../../../../../../testbench/test_csim_global_affine.cpp in debug mode
   Compiling ../../../../design_src/kernel_global_affine.cpp in debug mode
   Compiling ../../../../local_src/host_utils.cpp in debug mode
   Compiling ../../../../local_src/pe.cpp in debug mode
   Compiling ../../../../local_src/traceback.cpp in debug mode
   Compiling ../../../../local_src/utils.cpp in debug mode
   Compiling ../../../../local_src/align.cpp in debug mode
   Compiling ../../../../local_src/seq_align_multiple.cpp in debug mode
   Generating csim.exe
In file included from /home/ubuntu/ebs/Xilinx/Vitis_HLS/2021.2/include/ap_int.h:55:0,
                 from /home/ubuntu/DP-HLS/demo/global_affine/output/cosim/global_affine_256_256_32_4/local_include/PE.h:5,
                 from ../../../../local_src/pe.cpp:9:
/home/ubuntu/ebs/Xilinx/Vitis_HLS/2021.2/include/ap_common.h:134:0: warning: "INLINE" redefined
 #define INLINE inline
 
In file included from ../../../../local_src/pe.cpp:1:0:
/home/ubuntu/ebs/Xilinx/Vitis_HLS/2021.2/include/hls_vector.h:19:0: note: this is the location of the previous definition
 #define INLINE [[gnu::always_inline]]
 
/home/ubuntu/ebs/Xilinx/Vivado/2021.2/tps/lnx64/binutils-2.26/bin/ld: /lib/x86_64-linux-gnu/libm.so.6: don't know how to handle section `.relr.dyn' [0x      13]
/home/ubuntu/ebs/Xilinx/Vivado/2021.2/tps/lnx64/binutils-2.26/bin/ld: skipping incompatible /lib/x86_64-linux-gnu/libm.so.6 when searching for /lib/x86_64-linux-gnu/libm.so.6
/home/ubuntu/ebs/Xilinx/Vivado/2021.2/tps/lnx64/binutils-2.26/bin/ld: cannot find /lib/x86_64-linux-gnu/libm.so.6
/home/ubuntu/ebs/Xilinx/Vivado/2021.2/tps/lnx64/binutils-2.26/bin/ld: /lib/x86_64-linux-gnu/libmvec.so.1: don't know how to handle section `.relr.dyn' [0x      13]
/home/ubuntu/ebs/Xilinx/Vivado/2021.2/tps/lnx64/binutils-2.26/bin/ld: skipping incompatible /lib/x86_64-linux-gnu/libmvec.so.1 when searching for /lib/x86_64-linux-gnu/libmvec.so.1
/home/ubuntu/ebs/Xilinx/Vivado/2021.2/tps/lnx64/binutils-2.26/bin/ld: cannot find /lib/x86_64-linux-gnu/libmvec.so.1
collect2: error: ld returned 1 exit status
make: *** [Makefile.rules:393: csim.exe] Error 1
ERROR: [SIM 211-100] 'csim_design' failed: compilation error(s).
INFO: [SIM 211-3] *************** CSIM finish ***************
INFO: [HLS 200-111] Finished Command csim_design CPU user time: 10.07 seconds. CPU system time: 1.52 seconds. Elapsed time: 10.38 seconds; current allocated memory: -937.109 MB.
4
    while executing
"source ./cosim.tcl"
    ("uplevel" body line 1)
    invoked from within
"uplevel \#0 [list source $arg] "

INFO: [HLS 200-112] Total CPU user time: 11.48 seconds. Total CPU system time: 2.23 seconds. Total elapsed time: 11.75 seconds; peak allocated memory: 204.336 MB.
INFO: [Common 17-206] Exiting vitis_hls at Fri Dec  5 04:25:55 2025...
```
The fix is to rename the library to be compatible with th newer Ubuntu:
```
ubuntu@ip-172-31-33-125:~/DP-HLS/demo/global_affine$ sudo mv /home/ubuntu/ebs/Xilinx/Vivado/2021.2/tps/lnx64/binutils-2.26 /home/ubuntu/ebs/Xilinx/Vivado/2021.2/tps/lnx64/binutils-2.26.bak
```

## Kernel Numbers
- SDTW should actually use 256  x 256 sequeces. 
- Banding global linear need to set the correct band width. Need to confirm this. 