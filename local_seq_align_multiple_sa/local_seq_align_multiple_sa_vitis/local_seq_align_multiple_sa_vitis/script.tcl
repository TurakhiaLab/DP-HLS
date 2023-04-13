############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project local_seq_align_multiple_sa_vitis
set_top seq_align_multiple
add_files src/seq_align_multiple.h
add_files src/seq_align_multiple.cpp
add_files src/params.h
add_files -tb src/seq_align_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb src/params.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "local_seq_align_multiple_sa_vitis" -flow_target vivado
set_part {xcvu5p-flva2104-1-e}
create_clock -period 10 -name default
source "./local_seq_align_multiple_sa_vitis/local_seq_align_multiple_sa_vitis/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
