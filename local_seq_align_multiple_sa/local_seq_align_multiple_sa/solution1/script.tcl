############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project local_seq_align_multiple_sa
set_top seq_align_multiple
add_files seq_align_multiple.h
add_files seq_align_multiple.cpp
add_files params.h
add_files -tb seq_align_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xcvu5p-flva2104-1-e}
create_clock -period 4 -name default
source "./local_seq_align_multiple_sa/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
