############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project local_seq_align_cpp_vitis
set_top seq_align_multiple
add_files src/params.h
add_files src/seq_align.cpp
add_files src/seq_align.h
add_files -tb src/seq_align_test.cpp
open_solution "local_seq_align_cpp_vitis" -flow_target vivado
set_part {xcvu5p-flva2104-1-e}
create_clock -period 10 -name default
#source "./local_seq_align_cpp_vitis/local_seq_align_cpp_vitis/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
