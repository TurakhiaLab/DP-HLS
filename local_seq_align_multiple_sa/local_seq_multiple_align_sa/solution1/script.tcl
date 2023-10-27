############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
## Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
############################################################
open_project local_seq_multiple_align_sa
set_top seq_align_multiple
add_files shift_reg.h
add_files seq_align_multiple.h
add_files seq_align_multiple.cpp
add_files params.h
add_files -tb seq_align_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vitis
set_part {xczu7ev-ffvc1156-2-i}
create_clock -period 4 -name default
config_interface -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512
config_rtl -register_reset_num 3
source "./local_seq_multiple_align_sa/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
