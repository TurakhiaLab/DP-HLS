# This script segment is generated automatically by AutoPilot

set id 82
set name seq_align_multiple_mux_42_2_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 2
set din0_signed 0
set din1_width 2
set din1_signed 0
set din2_width 2
set din2_signed 0
set din3_width 2
set din3_signed 0
set din4_width 2
set din4_signed 0
set dout_width 2
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 98
set name seq_align_multiple_mux_164_2_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 2
set din0_signed 0
set din1_width 2
set din1_signed 0
set din2_width 2
set din2_signed 0
set din3_width 2
set din3_signed 0
set din4_width 2
set din4_signed 0
set din5_width 2
set din5_signed 0
set din6_width 2
set din6_signed 0
set din7_width 2
set din7_signed 0
set din8_width 2
set din8_signed 0
set din9_width 2
set din9_signed 0
set din10_width 2
set din10_signed 0
set din11_width 2
set din11_signed 0
set din12_width 2
set din12_signed 0
set din13_width 2
set din13_signed 0
set din14_width 2
set din14_signed 0
set din15_width 2
set din15_signed 0
set din16_width 4
set din16_signed 0
set dout_width 2
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 404 \
    name dp_matrix_V_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_15 \
    op interface \
    ports { dp_matrix_V_15_address0 { O 8 vector } dp_matrix_V_15_ce0 { O 1 bit } dp_matrix_V_15_we0 { O 1 bit } dp_matrix_V_15_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 405 \
    name dp_matrix_V_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_14 \
    op interface \
    ports { dp_matrix_V_14_address0 { O 8 vector } dp_matrix_V_14_ce0 { O 1 bit } dp_matrix_V_14_we0 { O 1 bit } dp_matrix_V_14_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 406 \
    name dp_matrix_V_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_13 \
    op interface \
    ports { dp_matrix_V_13_address0 { O 8 vector } dp_matrix_V_13_ce0 { O 1 bit } dp_matrix_V_13_we0 { O 1 bit } dp_matrix_V_13_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 407 \
    name dp_matrix_V_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_12 \
    op interface \
    ports { dp_matrix_V_12_address0 { O 8 vector } dp_matrix_V_12_ce0 { O 1 bit } dp_matrix_V_12_we0 { O 1 bit } dp_matrix_V_12_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 408 \
    name dp_matrix_V_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_11 \
    op interface \
    ports { dp_matrix_V_11_address0 { O 8 vector } dp_matrix_V_11_ce0 { O 1 bit } dp_matrix_V_11_we0 { O 1 bit } dp_matrix_V_11_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 409 \
    name dp_matrix_V_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_10 \
    op interface \
    ports { dp_matrix_V_10_address0 { O 8 vector } dp_matrix_V_10_ce0 { O 1 bit } dp_matrix_V_10_we0 { O 1 bit } dp_matrix_V_10_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 410 \
    name dp_matrix_V_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_9 \
    op interface \
    ports { dp_matrix_V_9_address0 { O 8 vector } dp_matrix_V_9_ce0 { O 1 bit } dp_matrix_V_9_we0 { O 1 bit } dp_matrix_V_9_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 411 \
    name dp_matrix_V_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_8 \
    op interface \
    ports { dp_matrix_V_8_address0 { O 8 vector } dp_matrix_V_8_ce0 { O 1 bit } dp_matrix_V_8_we0 { O 1 bit } dp_matrix_V_8_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 412 \
    name dp_matrix_V_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_7 \
    op interface \
    ports { dp_matrix_V_7_address0 { O 8 vector } dp_matrix_V_7_ce0 { O 1 bit } dp_matrix_V_7_we0 { O 1 bit } dp_matrix_V_7_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 413 \
    name dp_matrix_V_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_6 \
    op interface \
    ports { dp_matrix_V_6_address0 { O 8 vector } dp_matrix_V_6_ce0 { O 1 bit } dp_matrix_V_6_we0 { O 1 bit } dp_matrix_V_6_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 414 \
    name dp_matrix_V_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_5 \
    op interface \
    ports { dp_matrix_V_5_address0 { O 8 vector } dp_matrix_V_5_ce0 { O 1 bit } dp_matrix_V_5_we0 { O 1 bit } dp_matrix_V_5_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 415 \
    name dp_matrix_V_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_4 \
    op interface \
    ports { dp_matrix_V_4_address0 { O 8 vector } dp_matrix_V_4_ce0 { O 1 bit } dp_matrix_V_4_we0 { O 1 bit } dp_matrix_V_4_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 416 \
    name dp_matrix_V_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_3 \
    op interface \
    ports { dp_matrix_V_3_address0 { O 8 vector } dp_matrix_V_3_ce0 { O 1 bit } dp_matrix_V_3_we0 { O 1 bit } dp_matrix_V_3_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 417 \
    name dp_matrix_V_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_2 \
    op interface \
    ports { dp_matrix_V_2_address0 { O 8 vector } dp_matrix_V_2_ce0 { O 1 bit } dp_matrix_V_2_we0 { O 1 bit } dp_matrix_V_2_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 418 \
    name dp_matrix_V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_1 \
    op interface \
    ports { dp_matrix_V_1_address0 { O 8 vector } dp_matrix_V_1_ce0 { O 1 bit } dp_matrix_V_1_we0 { O 1 bit } dp_matrix_V_1_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 435 \
    name dp_matrix_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V \
    op interface \
    ports { dp_matrix_V_address0 { O 8 vector } dp_matrix_V_ce0 { O 1 bit } dp_matrix_V_we0 { O 1 bit } dp_matrix_V_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 436 \
    name query_string_comp_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename query_string_comp_0 \
    op interface \
    ports { query_string_comp_0_address0 { O 6 vector } query_string_comp_0_ce0 { O 1 bit } query_string_comp_0_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'query_string_comp_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 501 \
    name last_pe_score_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename last_pe_score_0 \
    op interface \
    ports { last_pe_score_0_address0 { O 6 vector } last_pe_score_0_ce0 { O 1 bit } last_pe_score_0_we0 { O 1 bit } last_pe_score_0_d0 { O 10 vector } last_pe_score_0_address1 { O 6 vector } last_pe_score_0_ce1 { O 1 bit } last_pe_score_0_q1 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'last_pe_score_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 502 \
    name last_pe_scoreIx_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename last_pe_scoreIx_0 \
    op interface \
    ports { last_pe_scoreIx_0_address0 { O 6 vector } last_pe_scoreIx_0_ce0 { O 1 bit } last_pe_scoreIx_0_we0 { O 1 bit } last_pe_scoreIx_0_d0 { O 10 vector } last_pe_scoreIx_0_address1 { O 6 vector } last_pe_scoreIx_0_ce1 { O 1 bit } last_pe_scoreIx_0_q1 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'last_pe_scoreIx_0'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 356 \
    name dp_mem_0_2_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_0_load \
    op interface \
    ports { dp_mem_0_2_0_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 357 \
    name Ix_mem_0_1_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_0_load \
    op interface \
    ports { Ix_mem_0_1_0_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
    name Iy_mem_0_1_0_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_0_load \
    op interface \
    ports { Iy_mem_0_1_0_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name dp_mem_0_2_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_1_load \
    op interface \
    ports { dp_mem_0_2_1_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name Ix_mem_0_1_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_1_load \
    op interface \
    ports { Ix_mem_0_1_1_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
    name Iy_mem_0_1_1_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_1_load \
    op interface \
    ports { Iy_mem_0_1_1_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name dp_mem_0_2_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_2_load \
    op interface \
    ports { dp_mem_0_2_2_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name Ix_mem_0_1_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_2_load \
    op interface \
    ports { Ix_mem_0_1_2_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name Iy_mem_0_1_2_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_2_load \
    op interface \
    ports { Iy_mem_0_1_2_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 365 \
    name dp_mem_0_2_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_3_load \
    op interface \
    ports { dp_mem_0_2_3_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 366 \
    name Ix_mem_0_1_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_3_load \
    op interface \
    ports { Ix_mem_0_1_3_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 367 \
    name Iy_mem_0_1_3_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_3_load \
    op interface \
    ports { Iy_mem_0_1_3_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 368 \
    name dp_mem_0_2_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_4_load \
    op interface \
    ports { dp_mem_0_2_4_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 369 \
    name Ix_mem_0_1_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_4_load \
    op interface \
    ports { Ix_mem_0_1_4_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 370 \
    name Iy_mem_0_1_4_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_4_load \
    op interface \
    ports { Iy_mem_0_1_4_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 371 \
    name dp_mem_0_2_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_5_load \
    op interface \
    ports { dp_mem_0_2_5_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 372 \
    name Ix_mem_0_1_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_5_load \
    op interface \
    ports { Ix_mem_0_1_5_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 373 \
    name Iy_mem_0_1_5_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_5_load \
    op interface \
    ports { Iy_mem_0_1_5_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 374 \
    name dp_mem_0_2_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_6_load \
    op interface \
    ports { dp_mem_0_2_6_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 375 \
    name Ix_mem_0_1_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_6_load \
    op interface \
    ports { Ix_mem_0_1_6_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 376 \
    name Iy_mem_0_1_6_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_6_load \
    op interface \
    ports { Iy_mem_0_1_6_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 377 \
    name dp_mem_0_2_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_7_load \
    op interface \
    ports { dp_mem_0_2_7_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 378 \
    name Ix_mem_0_1_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_7_load \
    op interface \
    ports { Ix_mem_0_1_7_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 379 \
    name Iy_mem_0_1_7_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_7_load \
    op interface \
    ports { Iy_mem_0_1_7_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 380 \
    name dp_mem_0_2_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_8_load \
    op interface \
    ports { dp_mem_0_2_8_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 381 \
    name Ix_mem_0_1_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_8_load \
    op interface \
    ports { Ix_mem_0_1_8_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 382 \
    name Iy_mem_0_1_8_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_8_load \
    op interface \
    ports { Iy_mem_0_1_8_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 383 \
    name dp_mem_0_2_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_9_load \
    op interface \
    ports { dp_mem_0_2_9_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 384 \
    name Ix_mem_0_1_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_9_load \
    op interface \
    ports { Ix_mem_0_1_9_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 385 \
    name Iy_mem_0_1_9_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_9_load \
    op interface \
    ports { Iy_mem_0_1_9_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 386 \
    name dp_mem_0_2_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_10_load \
    op interface \
    ports { dp_mem_0_2_10_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 387 \
    name Ix_mem_0_1_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_10_load \
    op interface \
    ports { Ix_mem_0_1_10_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 388 \
    name Iy_mem_0_1_10_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_10_load \
    op interface \
    ports { Iy_mem_0_1_10_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 389 \
    name dp_mem_0_2_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_11_load \
    op interface \
    ports { dp_mem_0_2_11_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 390 \
    name Ix_mem_0_1_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_11_load \
    op interface \
    ports { Ix_mem_0_1_11_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 391 \
    name Iy_mem_0_1_11_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_11_load \
    op interface \
    ports { Iy_mem_0_1_11_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 392 \
    name dp_mem_0_2_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_12_load \
    op interface \
    ports { dp_mem_0_2_12_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 393 \
    name Ix_mem_0_1_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_12_load \
    op interface \
    ports { Ix_mem_0_1_12_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 394 \
    name Iy_mem_0_1_12_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_12_load \
    op interface \
    ports { Iy_mem_0_1_12_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 395 \
    name dp_mem_0_2_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_13_load \
    op interface \
    ports { dp_mem_0_2_13_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 396 \
    name Ix_mem_0_1_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_13_load \
    op interface \
    ports { Ix_mem_0_1_13_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 397 \
    name Iy_mem_0_1_13_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_13_load \
    op interface \
    ports { Iy_mem_0_1_13_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 398 \
    name dp_mem_0_2_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_14_load \
    op interface \
    ports { dp_mem_0_2_14_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 399 \
    name Ix_mem_0_1_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_14_load \
    op interface \
    ports { Ix_mem_0_1_14_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name Iy_mem_0_1_14_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_14_load \
    op interface \
    ports { Iy_mem_0_1_14_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name dp_mem_0_2_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_15_load \
    op interface \
    ports { dp_mem_0_2_15_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 402 \
    name Ix_mem_0_1_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_15_load \
    op interface \
    ports { Ix_mem_0_1_15_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name Iy_mem_0_1_15_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_15_load \
    op interface \
    ports { Iy_mem_0_1_15_load { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 419 \
    name dp_mem_0_1_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_1_0 \
    op interface \
    ports { dp_mem_0_1_0_i { I 10 vector } dp_mem_0_1_0_o { O 10 vector } dp_mem_0_1_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 420 \
    name dp_mem_0_1_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_1_1 \
    op interface \
    ports { dp_mem_0_1_1_i { I 10 vector } dp_mem_0_1_1_o { O 10 vector } dp_mem_0_1_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 421 \
    name dp_mem_0_1_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_1_2 \
    op interface \
    ports { dp_mem_0_1_2_i { I 10 vector } dp_mem_0_1_2_o { O 10 vector } dp_mem_0_1_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 422 \
    name dp_mem_0_1_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_1_3 \
    op interface \
    ports { dp_mem_0_1_3_i { I 10 vector } dp_mem_0_1_3_o { O 10 vector } dp_mem_0_1_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 423 \
    name dp_mem_0_1_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_1_4 \
    op interface \
    ports { dp_mem_0_1_4_i { I 10 vector } dp_mem_0_1_4_o { O 10 vector } dp_mem_0_1_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 424 \
    name dp_mem_0_1_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_1_5 \
    op interface \
    ports { dp_mem_0_1_5_i { I 10 vector } dp_mem_0_1_5_o { O 10 vector } dp_mem_0_1_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 425 \
    name dp_mem_0_1_6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_1_6 \
    op interface \
    ports { dp_mem_0_1_6_i { I 10 vector } dp_mem_0_1_6_o { O 10 vector } dp_mem_0_1_6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 426 \
    name dp_mem_0_1_7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_1_7 \
    op interface \
    ports { dp_mem_0_1_7_i { I 10 vector } dp_mem_0_1_7_o { O 10 vector } dp_mem_0_1_7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 427 \
    name dp_mem_0_1_8 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_1_8 \
    op interface \
    ports { dp_mem_0_1_8_i { I 10 vector } dp_mem_0_1_8_o { O 10 vector } dp_mem_0_1_8_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 428 \
    name dp_mem_0_1_9 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_1_9 \
    op interface \
    ports { dp_mem_0_1_9_i { I 10 vector } dp_mem_0_1_9_o { O 10 vector } dp_mem_0_1_9_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 429 \
    name dp_mem_0_1_10 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_1_10 \
    op interface \
    ports { dp_mem_0_1_10_i { I 10 vector } dp_mem_0_1_10_o { O 10 vector } dp_mem_0_1_10_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name dp_mem_0_1_11 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_1_11 \
    op interface \
    ports { dp_mem_0_1_11_i { I 10 vector } dp_mem_0_1_11_o { O 10 vector } dp_mem_0_1_11_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name dp_mem_0_1_12 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_1_12 \
    op interface \
    ports { dp_mem_0_1_12_i { I 10 vector } dp_mem_0_1_12_o { O 10 vector } dp_mem_0_1_12_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name dp_mem_0_1_13 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_1_13 \
    op interface \
    ports { dp_mem_0_1_13_i { I 10 vector } dp_mem_0_1_13_o { O 10 vector } dp_mem_0_1_13_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name dp_mem_0_1_14 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_1_14 \
    op interface \
    ports { dp_mem_0_1_14_i { I 10 vector } dp_mem_0_1_14_o { O 10 vector } dp_mem_0_1_14_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 434 \
    name dp_mem_0_1_15 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_1_15 \
    op interface \
    ports { dp_mem_0_1_15_i { I 10 vector } dp_mem_0_1_15_o { O 10 vector } dp_mem_0_1_15_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 437 \
    name local_reference_V_0_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_0_reload \
    op interface \
    ports { local_reference_V_0_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 438 \
    name local_reference_V_1_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_0_reload \
    op interface \
    ports { local_reference_V_1_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 439 \
    name local_reference_V_2_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_0_reload \
    op interface \
    ports { local_reference_V_2_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 440 \
    name local_reference_V_3_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_0_reload \
    op interface \
    ports { local_reference_V_3_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 441 \
    name local_reference_V_0_1_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_1_0_reload \
    op interface \
    ports { local_reference_V_0_1_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 442 \
    name local_reference_V_1_1_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_1_0_reload \
    op interface \
    ports { local_reference_V_1_1_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 443 \
    name local_reference_V_2_1_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_1_0_reload \
    op interface \
    ports { local_reference_V_2_1_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 444 \
    name local_reference_V_3_1_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_1_0_reload \
    op interface \
    ports { local_reference_V_3_1_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 445 \
    name local_reference_V_0_2_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_2_0_reload \
    op interface \
    ports { local_reference_V_0_2_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 446 \
    name local_reference_V_1_2_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_2_0_reload \
    op interface \
    ports { local_reference_V_1_2_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 447 \
    name local_reference_V_2_2_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_2_0_reload \
    op interface \
    ports { local_reference_V_2_2_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 448 \
    name local_reference_V_3_2_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_2_0_reload \
    op interface \
    ports { local_reference_V_3_2_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 449 \
    name local_reference_V_0_3_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_3_0_reload \
    op interface \
    ports { local_reference_V_0_3_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 450 \
    name local_reference_V_1_3_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_3_0_reload \
    op interface \
    ports { local_reference_V_1_3_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 451 \
    name local_reference_V_2_3_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_3_0_reload \
    op interface \
    ports { local_reference_V_2_3_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 452 \
    name local_reference_V_3_3_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_3_0_reload \
    op interface \
    ports { local_reference_V_3_3_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 453 \
    name local_reference_V_0_4_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_4_0_reload \
    op interface \
    ports { local_reference_V_0_4_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 454 \
    name local_reference_V_1_4_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_4_0_reload \
    op interface \
    ports { local_reference_V_1_4_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 455 \
    name local_reference_V_2_4_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_4_0_reload \
    op interface \
    ports { local_reference_V_2_4_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 456 \
    name local_reference_V_3_4_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_4_0_reload \
    op interface \
    ports { local_reference_V_3_4_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 457 \
    name local_reference_V_0_5_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_5_0_reload \
    op interface \
    ports { local_reference_V_0_5_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
    name local_reference_V_1_5_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_5_0_reload \
    op interface \
    ports { local_reference_V_1_5_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 459 \
    name local_reference_V_2_5_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_5_0_reload \
    op interface \
    ports { local_reference_V_2_5_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 460 \
    name local_reference_V_3_5_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_5_0_reload \
    op interface \
    ports { local_reference_V_3_5_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 461 \
    name local_reference_V_0_6_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_6_0_reload \
    op interface \
    ports { local_reference_V_0_6_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 462 \
    name local_reference_V_1_6_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_6_0_reload \
    op interface \
    ports { local_reference_V_1_6_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name local_reference_V_2_6_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_6_0_reload \
    op interface \
    ports { local_reference_V_2_6_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name local_reference_V_3_6_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_6_0_reload \
    op interface \
    ports { local_reference_V_3_6_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name local_reference_V_0_7_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_7_0_reload \
    op interface \
    ports { local_reference_V_0_7_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name local_reference_V_1_7_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_7_0_reload \
    op interface \
    ports { local_reference_V_1_7_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 467 \
    name local_reference_V_2_7_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_7_0_reload \
    op interface \
    ports { local_reference_V_2_7_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 468 \
    name local_reference_V_3_7_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_7_0_reload \
    op interface \
    ports { local_reference_V_3_7_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 469 \
    name local_reference_V_0_8_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_8_0_reload \
    op interface \
    ports { local_reference_V_0_8_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 470 \
    name local_reference_V_1_8_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_8_0_reload \
    op interface \
    ports { local_reference_V_1_8_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 471 \
    name local_reference_V_2_8_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_8_0_reload \
    op interface \
    ports { local_reference_V_2_8_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 472 \
    name local_reference_V_3_8_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_8_0_reload \
    op interface \
    ports { local_reference_V_3_8_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 473 \
    name local_reference_V_0_9_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_9_0_reload \
    op interface \
    ports { local_reference_V_0_9_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 474 \
    name local_reference_V_1_9_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_9_0_reload \
    op interface \
    ports { local_reference_V_1_9_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 475 \
    name local_reference_V_2_9_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_9_0_reload \
    op interface \
    ports { local_reference_V_2_9_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 476 \
    name local_reference_V_3_9_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_9_0_reload \
    op interface \
    ports { local_reference_V_3_9_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 477 \
    name local_reference_V_0_10_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_10_0_reload \
    op interface \
    ports { local_reference_V_0_10_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 478 \
    name local_reference_V_1_10_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_10_0_reload \
    op interface \
    ports { local_reference_V_1_10_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 479 \
    name local_reference_V_2_10_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_10_0_reload \
    op interface \
    ports { local_reference_V_2_10_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 480 \
    name local_reference_V_3_10_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_10_0_reload \
    op interface \
    ports { local_reference_V_3_10_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 481 \
    name local_reference_V_0_11_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_11_0_reload \
    op interface \
    ports { local_reference_V_0_11_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 482 \
    name local_reference_V_1_11_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_11_0_reload \
    op interface \
    ports { local_reference_V_1_11_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 483 \
    name local_reference_V_2_11_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_11_0_reload \
    op interface \
    ports { local_reference_V_2_11_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 484 \
    name local_reference_V_3_11_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_11_0_reload \
    op interface \
    ports { local_reference_V_3_11_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 485 \
    name local_reference_V_0_12_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_12_0_reload \
    op interface \
    ports { local_reference_V_0_12_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 486 \
    name local_reference_V_1_12_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_12_0_reload \
    op interface \
    ports { local_reference_V_1_12_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 487 \
    name local_reference_V_2_12_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_12_0_reload \
    op interface \
    ports { local_reference_V_2_12_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 488 \
    name local_reference_V_3_12_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_12_0_reload \
    op interface \
    ports { local_reference_V_3_12_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 489 \
    name local_reference_V_0_13_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_13_0_reload \
    op interface \
    ports { local_reference_V_0_13_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 490 \
    name local_reference_V_1_13_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_13_0_reload \
    op interface \
    ports { local_reference_V_1_13_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 491 \
    name local_reference_V_2_13_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_13_0_reload \
    op interface \
    ports { local_reference_V_2_13_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 492 \
    name local_reference_V_3_13_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_13_0_reload \
    op interface \
    ports { local_reference_V_3_13_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 493 \
    name local_reference_V_0_14_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_14_0_reload \
    op interface \
    ports { local_reference_V_0_14_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 494 \
    name local_reference_V_1_14_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_14_0_reload \
    op interface \
    ports { local_reference_V_1_14_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 495 \
    name local_reference_V_2_14_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_14_0_reload \
    op interface \
    ports { local_reference_V_2_14_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 496 \
    name local_reference_V_3_14_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_14_0_reload \
    op interface \
    ports { local_reference_V_3_14_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 497 \
    name local_reference_V_0_15_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_15_0_reload \
    op interface \
    ports { local_reference_V_0_15_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 498 \
    name local_reference_V_1_15_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_15_0_reload \
    op interface \
    ports { local_reference_V_1_15_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 499 \
    name local_reference_V_2_15_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_15_0_reload \
    op interface \
    ports { local_reference_V_2_15_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 500 \
    name local_reference_V_3_15_0_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_15_0_reload \
    op interface \
    ports { local_reference_V_3_15_0_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 503 \
    name dp_mem_0_2_0_flag_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_0_flag_1_out \
    op interface \
    ports { dp_mem_0_2_0_flag_1_out { O 1 vector } dp_mem_0_2_0_flag_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 504 \
    name dp_mem_0_2_0_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_0_loc_1_out \
    op interface \
    ports { dp_mem_0_2_0_loc_1_out { O 10 vector } dp_mem_0_2_0_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 505 \
    name Ix_mem_0_1_0_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_0_loc_1_out \
    op interface \
    ports { Ix_mem_0_1_0_loc_1_out { O 10 vector } Ix_mem_0_1_0_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 506 \
    name Iy_mem_0_1_0_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_0_loc_1_out \
    op interface \
    ports { Iy_mem_0_1_0_loc_1_out { O 10 vector } Iy_mem_0_1_0_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 507 \
    name dp_mem_0_2_1_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_1_loc_1_out \
    op interface \
    ports { dp_mem_0_2_1_loc_1_out { O 10 vector } dp_mem_0_2_1_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 508 \
    name Ix_mem_0_1_1_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_1_loc_1_out \
    op interface \
    ports { Ix_mem_0_1_1_loc_1_out { O 10 vector } Ix_mem_0_1_1_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 509 \
    name Iy_mem_0_1_1_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_1_loc_1_out \
    op interface \
    ports { Iy_mem_0_1_1_loc_1_out { O 10 vector } Iy_mem_0_1_1_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 510 \
    name dp_mem_0_2_2_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_2_loc_1_out \
    op interface \
    ports { dp_mem_0_2_2_loc_1_out { O 10 vector } dp_mem_0_2_2_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 511 \
    name Ix_mem_0_1_2_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_2_loc_1_out \
    op interface \
    ports { Ix_mem_0_1_2_loc_1_out { O 10 vector } Ix_mem_0_1_2_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 512 \
    name Iy_mem_0_1_2_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_2_loc_1_out \
    op interface \
    ports { Iy_mem_0_1_2_loc_1_out { O 10 vector } Iy_mem_0_1_2_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 513 \
    name dp_mem_0_2_3_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_3_loc_1_out \
    op interface \
    ports { dp_mem_0_2_3_loc_1_out { O 10 vector } dp_mem_0_2_3_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 514 \
    name Ix_mem_0_1_3_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_3_loc_1_out \
    op interface \
    ports { Ix_mem_0_1_3_loc_1_out { O 10 vector } Ix_mem_0_1_3_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 515 \
    name Iy_mem_0_1_3_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_3_loc_1_out \
    op interface \
    ports { Iy_mem_0_1_3_loc_1_out { O 10 vector } Iy_mem_0_1_3_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 516 \
    name dp_mem_0_2_4_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_4_loc_1_out \
    op interface \
    ports { dp_mem_0_2_4_loc_1_out { O 10 vector } dp_mem_0_2_4_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 517 \
    name Ix_mem_0_1_4_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_4_loc_1_out \
    op interface \
    ports { Ix_mem_0_1_4_loc_1_out { O 10 vector } Ix_mem_0_1_4_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 518 \
    name Iy_mem_0_1_4_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_4_loc_1_out \
    op interface \
    ports { Iy_mem_0_1_4_loc_1_out { O 10 vector } Iy_mem_0_1_4_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 519 \
    name dp_mem_0_2_5_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_5_loc_1_out \
    op interface \
    ports { dp_mem_0_2_5_loc_1_out { O 10 vector } dp_mem_0_2_5_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 520 \
    name Ix_mem_0_1_5_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_5_loc_1_out \
    op interface \
    ports { Ix_mem_0_1_5_loc_1_out { O 10 vector } Ix_mem_0_1_5_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 521 \
    name Iy_mem_0_1_5_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_5_loc_1_out \
    op interface \
    ports { Iy_mem_0_1_5_loc_1_out { O 10 vector } Iy_mem_0_1_5_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 522 \
    name dp_mem_0_2_6_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_6_loc_1_out \
    op interface \
    ports { dp_mem_0_2_6_loc_1_out { O 10 vector } dp_mem_0_2_6_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 523 \
    name Ix_mem_0_1_6_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_6_loc_1_out \
    op interface \
    ports { Ix_mem_0_1_6_loc_1_out { O 10 vector } Ix_mem_0_1_6_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 524 \
    name Iy_mem_0_1_6_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_6_loc_1_out \
    op interface \
    ports { Iy_mem_0_1_6_loc_1_out { O 10 vector } Iy_mem_0_1_6_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 525 \
    name dp_mem_0_2_7_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_7_loc_1_out \
    op interface \
    ports { dp_mem_0_2_7_loc_1_out { O 10 vector } dp_mem_0_2_7_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 526 \
    name Ix_mem_0_1_7_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_7_loc_1_out \
    op interface \
    ports { Ix_mem_0_1_7_loc_1_out { O 10 vector } Ix_mem_0_1_7_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 527 \
    name Iy_mem_0_1_7_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_7_loc_1_out \
    op interface \
    ports { Iy_mem_0_1_7_loc_1_out { O 10 vector } Iy_mem_0_1_7_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 528 \
    name dp_mem_0_2_8_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_8_loc_1_out \
    op interface \
    ports { dp_mem_0_2_8_loc_1_out { O 10 vector } dp_mem_0_2_8_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 529 \
    name Ix_mem_0_1_8_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_8_loc_1_out \
    op interface \
    ports { Ix_mem_0_1_8_loc_1_out { O 10 vector } Ix_mem_0_1_8_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 530 \
    name Iy_mem_0_1_8_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_8_loc_1_out \
    op interface \
    ports { Iy_mem_0_1_8_loc_1_out { O 10 vector } Iy_mem_0_1_8_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 531 \
    name dp_mem_0_2_9_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_9_loc_1_out \
    op interface \
    ports { dp_mem_0_2_9_loc_1_out { O 10 vector } dp_mem_0_2_9_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 532 \
    name Ix_mem_0_1_9_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_9_loc_1_out \
    op interface \
    ports { Ix_mem_0_1_9_loc_1_out { O 10 vector } Ix_mem_0_1_9_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 533 \
    name Iy_mem_0_1_9_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_9_loc_1_out \
    op interface \
    ports { Iy_mem_0_1_9_loc_1_out { O 10 vector } Iy_mem_0_1_9_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 534 \
    name dp_mem_0_2_10_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_10_loc_1_out \
    op interface \
    ports { dp_mem_0_2_10_loc_1_out { O 10 vector } dp_mem_0_2_10_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 535 \
    name Ix_mem_0_1_10_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_10_loc_1_out \
    op interface \
    ports { Ix_mem_0_1_10_loc_1_out { O 10 vector } Ix_mem_0_1_10_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 536 \
    name Iy_mem_0_1_10_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_10_loc_1_out \
    op interface \
    ports { Iy_mem_0_1_10_loc_1_out { O 10 vector } Iy_mem_0_1_10_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 537 \
    name dp_mem_0_2_11_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_11_loc_1_out \
    op interface \
    ports { dp_mem_0_2_11_loc_1_out { O 10 vector } dp_mem_0_2_11_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 538 \
    name Ix_mem_0_1_11_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_11_loc_1_out \
    op interface \
    ports { Ix_mem_0_1_11_loc_1_out { O 10 vector } Ix_mem_0_1_11_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 539 \
    name Iy_mem_0_1_11_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_11_loc_1_out \
    op interface \
    ports { Iy_mem_0_1_11_loc_1_out { O 10 vector } Iy_mem_0_1_11_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 540 \
    name dp_mem_0_2_12_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_12_loc_1_out \
    op interface \
    ports { dp_mem_0_2_12_loc_1_out { O 10 vector } dp_mem_0_2_12_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 541 \
    name Ix_mem_0_1_12_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_12_loc_1_out \
    op interface \
    ports { Ix_mem_0_1_12_loc_1_out { O 10 vector } Ix_mem_0_1_12_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 542 \
    name Iy_mem_0_1_12_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_12_loc_1_out \
    op interface \
    ports { Iy_mem_0_1_12_loc_1_out { O 10 vector } Iy_mem_0_1_12_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 543 \
    name dp_mem_0_2_13_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_13_loc_1_out \
    op interface \
    ports { dp_mem_0_2_13_loc_1_out { O 10 vector } dp_mem_0_2_13_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 544 \
    name Ix_mem_0_1_13_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_13_loc_1_out \
    op interface \
    ports { Ix_mem_0_1_13_loc_1_out { O 10 vector } Ix_mem_0_1_13_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 545 \
    name Iy_mem_0_1_13_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_13_loc_1_out \
    op interface \
    ports { Iy_mem_0_1_13_loc_1_out { O 10 vector } Iy_mem_0_1_13_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 546 \
    name dp_mem_0_2_14_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_14_loc_1_out \
    op interface \
    ports { dp_mem_0_2_14_loc_1_out { O 10 vector } dp_mem_0_2_14_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 547 \
    name Ix_mem_0_1_14_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_14_loc_1_out \
    op interface \
    ports { Ix_mem_0_1_14_loc_1_out { O 10 vector } Ix_mem_0_1_14_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 548 \
    name Iy_mem_0_1_14_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_14_loc_1_out \
    op interface \
    ports { Iy_mem_0_1_14_loc_1_out { O 10 vector } Iy_mem_0_1_14_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 549 \
    name dp_mem_0_2_15_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2_15_loc_1_out \
    op interface \
    ports { dp_mem_0_2_15_loc_1_out { O 10 vector } dp_mem_0_2_15_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 550 \
    name Ix_mem_0_1_15_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1_15_loc_1_out \
    op interface \
    ports { Ix_mem_0_1_15_loc_1_out { O 10 vector } Ix_mem_0_1_15_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 551 \
    name Iy_mem_0_1_15_loc_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1_15_loc_1_out \
    op interface \
    ports { Iy_mem_0_1_15_loc_1_out { O 10 vector } Iy_mem_0_1_15_loc_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 552 \
    name local_query_V_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_15_out \
    op interface \
    ports { local_query_V_15_out { O 2 vector } local_query_V_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 553 \
    name local_query_V_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_14_out \
    op interface \
    ports { local_query_V_14_out { O 2 vector } local_query_V_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 554 \
    name local_query_V_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_13_out \
    op interface \
    ports { local_query_V_13_out { O 2 vector } local_query_V_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 555 \
    name local_query_V_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_12_out \
    op interface \
    ports { local_query_V_12_out { O 2 vector } local_query_V_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 556 \
    name local_query_V_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_11_out \
    op interface \
    ports { local_query_V_11_out { O 2 vector } local_query_V_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 557 \
    name local_query_V_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_10_out \
    op interface \
    ports { local_query_V_10_out { O 2 vector } local_query_V_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 558 \
    name local_query_V_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_9_out \
    op interface \
    ports { local_query_V_9_out { O 2 vector } local_query_V_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 559 \
    name local_query_V_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_8_out \
    op interface \
    ports { local_query_V_8_out { O 2 vector } local_query_V_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 560 \
    name local_query_V_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_7_out \
    op interface \
    ports { local_query_V_7_out { O 2 vector } local_query_V_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 561 \
    name local_query_V_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_6_out \
    op interface \
    ports { local_query_V_6_out { O 2 vector } local_query_V_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 562 \
    name local_query_V_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_5_out \
    op interface \
    ports { local_query_V_5_out { O 2 vector } local_query_V_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 563 \
    name local_query_V_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_4_out \
    op interface \
    ports { local_query_V_4_out { O 2 vector } local_query_V_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 564 \
    name local_query_V_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_3_out \
    op interface \
    ports { local_query_V_3_out { O 2 vector } local_query_V_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 565 \
    name local_query_V_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_2_out \
    op interface \
    ports { local_query_V_2_out { O 2 vector } local_query_V_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 566 \
    name local_query_V_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_1_out \
    op interface \
    ports { local_query_V_1_out { O 2 vector } local_query_V_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 567 \
    name local_query_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_out \
    op interface \
    ports { local_query_V_out { O 2 vector } local_query_V_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 568 \
    name cond_lvalue_i4629_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue_i4629_phi_out \
    op interface \
    ports { cond_lvalue_i4629_phi_out { O 10 vector } cond_lvalue_i4629_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 569 \
    name cond_lvalue88_i4639_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue88_i4639_phi_out \
    op interface \
    ports { cond_lvalue88_i4639_phi_out { O 10 vector } cond_lvalue88_i4639_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 570 \
    name cond_lvalue102_i4644_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue102_i4644_phi_out \
    op interface \
    ports { cond_lvalue102_i4644_phi_out { O 10 vector } cond_lvalue102_i4644_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 571 \
    name cond_lvalue_i_1704649_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue_i_1704649_phi_out \
    op interface \
    ports { cond_lvalue_i_1704649_phi_out { O 10 vector } cond_lvalue_i_1704649_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 572 \
    name cond_lvalue88_i_1874659_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue88_i_1874659_phi_out \
    op interface \
    ports { cond_lvalue88_i_1874659_phi_out { O 10 vector } cond_lvalue88_i_1874659_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 573 \
    name cond_lvalue102_i_1964664_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue102_i_1964664_phi_out \
    op interface \
    ports { cond_lvalue102_i_1964664_phi_out { O 10 vector } cond_lvalue102_i_1964664_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 574 \
    name cond_lvalue_i_21064669_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue_i_21064669_phi_out \
    op interface \
    ports { cond_lvalue_i_21064669_phi_out { O 10 vector } cond_lvalue_i_21064669_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 575 \
    name cond_lvalue88_i_21234679_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue88_i_21234679_phi_out \
    op interface \
    ports { cond_lvalue88_i_21234679_phi_out { O 10 vector } cond_lvalue88_i_21234679_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 576 \
    name cond_lvalue102_i_21324684_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue102_i_21324684_phi_out \
    op interface \
    ports { cond_lvalue102_i_21324684_phi_out { O 10 vector } cond_lvalue102_i_21324684_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 577 \
    name cond_lvalue_i_31424689_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue_i_31424689_phi_out \
    op interface \
    ports { cond_lvalue_i_31424689_phi_out { O 10 vector } cond_lvalue_i_31424689_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 578 \
    name cond_lvalue88_i_31594699_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue88_i_31594699_phi_out \
    op interface \
    ports { cond_lvalue88_i_31594699_phi_out { O 10 vector } cond_lvalue88_i_31594699_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 579 \
    name cond_lvalue102_i_31684704_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue102_i_31684704_phi_out \
    op interface \
    ports { cond_lvalue102_i_31684704_phi_out { O 10 vector } cond_lvalue102_i_31684704_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 580 \
    name cond_lvalue_i_41784709_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue_i_41784709_phi_out \
    op interface \
    ports { cond_lvalue_i_41784709_phi_out { O 10 vector } cond_lvalue_i_41784709_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 581 \
    name cond_lvalue88_i_41954719_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue88_i_41954719_phi_out \
    op interface \
    ports { cond_lvalue88_i_41954719_phi_out { O 10 vector } cond_lvalue88_i_41954719_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 582 \
    name cond_lvalue102_i_42044724_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue102_i_42044724_phi_out \
    op interface \
    ports { cond_lvalue102_i_42044724_phi_out { O 10 vector } cond_lvalue102_i_42044724_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 583 \
    name cond_lvalue_i_52144729_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue_i_52144729_phi_out \
    op interface \
    ports { cond_lvalue_i_52144729_phi_out { O 10 vector } cond_lvalue_i_52144729_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 584 \
    name cond_lvalue88_i_52314739_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue88_i_52314739_phi_out \
    op interface \
    ports { cond_lvalue88_i_52314739_phi_out { O 10 vector } cond_lvalue88_i_52314739_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 585 \
    name cond_lvalue102_i_52404744_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue102_i_52404744_phi_out \
    op interface \
    ports { cond_lvalue102_i_52404744_phi_out { O 10 vector } cond_lvalue102_i_52404744_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 586 \
    name cond_lvalue_i_62504749_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue_i_62504749_phi_out \
    op interface \
    ports { cond_lvalue_i_62504749_phi_out { O 10 vector } cond_lvalue_i_62504749_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 587 \
    name cond_lvalue88_i_62674759_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue88_i_62674759_phi_out \
    op interface \
    ports { cond_lvalue88_i_62674759_phi_out { O 10 vector } cond_lvalue88_i_62674759_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 588 \
    name cond_lvalue102_i_62764764_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue102_i_62764764_phi_out \
    op interface \
    ports { cond_lvalue102_i_62764764_phi_out { O 10 vector } cond_lvalue102_i_62764764_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 589 \
    name cond_lvalue_i_72864769_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue_i_72864769_phi_out \
    op interface \
    ports { cond_lvalue_i_72864769_phi_out { O 10 vector } cond_lvalue_i_72864769_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 590 \
    name cond_lvalue88_i_73034779_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue88_i_73034779_phi_out \
    op interface \
    ports { cond_lvalue88_i_73034779_phi_out { O 10 vector } cond_lvalue88_i_73034779_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 591 \
    name cond_lvalue102_i_73124784_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue102_i_73124784_phi_out \
    op interface \
    ports { cond_lvalue102_i_73124784_phi_out { O 10 vector } cond_lvalue102_i_73124784_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 592 \
    name cond_lvalue_i_84789_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue_i_84789_phi_out \
    op interface \
    ports { cond_lvalue_i_84789_phi_out { O 10 vector } cond_lvalue_i_84789_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 593 \
    name cond_lvalue88_i_84799_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue88_i_84799_phi_out \
    op interface \
    ports { cond_lvalue88_i_84799_phi_out { O 10 vector } cond_lvalue88_i_84799_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 594 \
    name cond_lvalue102_i_84804_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue102_i_84804_phi_out \
    op interface \
    ports { cond_lvalue102_i_84804_phi_out { O 10 vector } cond_lvalue102_i_84804_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 595 \
    name cond_lvalue_i_94809_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue_i_94809_phi_out \
    op interface \
    ports { cond_lvalue_i_94809_phi_out { O 10 vector } cond_lvalue_i_94809_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 596 \
    name cond_lvalue88_i_94819_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue88_i_94819_phi_out \
    op interface \
    ports { cond_lvalue88_i_94819_phi_out { O 10 vector } cond_lvalue88_i_94819_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 597 \
    name cond_lvalue102_i_94824_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue102_i_94824_phi_out \
    op interface \
    ports { cond_lvalue102_i_94824_phi_out { O 10 vector } cond_lvalue102_i_94824_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 598 \
    name cond_lvalue_i_104829_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue_i_104829_phi_out \
    op interface \
    ports { cond_lvalue_i_104829_phi_out { O 10 vector } cond_lvalue_i_104829_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 599 \
    name cond_lvalue88_i_104839_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue88_i_104839_phi_out \
    op interface \
    ports { cond_lvalue88_i_104839_phi_out { O 10 vector } cond_lvalue88_i_104839_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 600 \
    name cond_lvalue102_i_104844_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue102_i_104844_phi_out \
    op interface \
    ports { cond_lvalue102_i_104844_phi_out { O 10 vector } cond_lvalue102_i_104844_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 601 \
    name cond_lvalue_i_114849_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue_i_114849_phi_out \
    op interface \
    ports { cond_lvalue_i_114849_phi_out { O 10 vector } cond_lvalue_i_114849_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 602 \
    name cond_lvalue88_i_114859_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue88_i_114859_phi_out \
    op interface \
    ports { cond_lvalue88_i_114859_phi_out { O 10 vector } cond_lvalue88_i_114859_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 603 \
    name cond_lvalue102_i_114864_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue102_i_114864_phi_out \
    op interface \
    ports { cond_lvalue102_i_114864_phi_out { O 10 vector } cond_lvalue102_i_114864_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 604 \
    name cond_lvalue_i_124869_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue_i_124869_phi_out \
    op interface \
    ports { cond_lvalue_i_124869_phi_out { O 10 vector } cond_lvalue_i_124869_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 605 \
    name cond_lvalue88_i_124879_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue88_i_124879_phi_out \
    op interface \
    ports { cond_lvalue88_i_124879_phi_out { O 10 vector } cond_lvalue88_i_124879_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 606 \
    name cond_lvalue102_i_124884_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue102_i_124884_phi_out \
    op interface \
    ports { cond_lvalue102_i_124884_phi_out { O 10 vector } cond_lvalue102_i_124884_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 607 \
    name cond_lvalue_i_134889_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue_i_134889_phi_out \
    op interface \
    ports { cond_lvalue_i_134889_phi_out { O 10 vector } cond_lvalue_i_134889_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 608 \
    name cond_lvalue88_i_134899_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue88_i_134899_phi_out \
    op interface \
    ports { cond_lvalue88_i_134899_phi_out { O 10 vector } cond_lvalue88_i_134899_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 609 \
    name cond_lvalue102_i_134904_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue102_i_134904_phi_out \
    op interface \
    ports { cond_lvalue102_i_134904_phi_out { O 10 vector } cond_lvalue102_i_134904_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 610 \
    name cond_lvalue_i_144909_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue_i_144909_phi_out \
    op interface \
    ports { cond_lvalue_i_144909_phi_out { O 10 vector } cond_lvalue_i_144909_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 611 \
    name cond_lvalue88_i_144919_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue88_i_144919_phi_out \
    op interface \
    ports { cond_lvalue88_i_144919_phi_out { O 10 vector } cond_lvalue88_i_144919_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 612 \
    name cond_lvalue102_i_144924_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue102_i_144924_phi_out \
    op interface \
    ports { cond_lvalue102_i_144924_phi_out { O 10 vector } cond_lvalue102_i_144924_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 613 \
    name p_phi774_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi774_out \
    op interface \
    ports { p_phi774_out { O 10 vector } p_phi774_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 614 \
    name p_phi775_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi775_out \
    op interface \
    ports { p_phi775_out { O 10 vector } p_phi775_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 615 \
    name cond_lvalue102_i_154944_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_cond_lvalue102_i_154944_phi_out \
    op interface \
    ports { cond_lvalue102_i_154944_phi_out { O 10 vector } cond_lvalue102_i_154944_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName seq_align_multiple_flow_control_loop_pipe_sequential_init_U
set CompName seq_align_multiple_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix seq_align_multiple_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


