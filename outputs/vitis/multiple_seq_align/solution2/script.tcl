############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project multiple_seq_align
set_top seq_align_multiple
add_files ../src/PE.cpp
add_files ../src/seq_align.cpp
add_files ../src/traceback.cpp
add_files ../src/seq_align_multiple.cpp
add_files ../src/params.h
add_files ../src/seq_align.h
add_files ../src/traceback.h
add_files ../src/seq_align_multiple.h
add_files ../src/PE.h
add_files ../src/utils/loop_counter.h
add_files ../src/utils/shift_reg.h
add_files -tb ../testbench/seq_align_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution2" -flow_target vivado
set_part {xcvu5p-flva2104-1-e}
create_clock -period 4 -name default
config_interface -m_axi_latency 0
#source "./multiple_seq_align/solution2/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
