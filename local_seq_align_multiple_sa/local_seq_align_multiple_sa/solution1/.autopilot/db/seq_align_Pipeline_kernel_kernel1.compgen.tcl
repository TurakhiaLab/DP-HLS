# This script segment is generated automatically by AutoPilot

set id 147
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
    id 306 \
    name local_reference_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_V \
    op interface \
    ports { local_reference_V_address0 { O 6 vector } local_reference_V_ce0 { O 1 bit } local_reference_V_q0 { I 2 vector } local_reference_V_address1 { O 6 vector } local_reference_V_ce1 { O 1 bit } local_reference_V_q1 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 307 \
    name local_reference_V_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_V_1 \
    op interface \
    ports { local_reference_V_1_address0 { O 6 vector } local_reference_V_1_ce0 { O 1 bit } local_reference_V_1_q0 { I 2 vector } local_reference_V_1_address1 { O 6 vector } local_reference_V_1_ce1 { O 1 bit } local_reference_V_1_q1 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 308 \
    name local_reference_V_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_V_2 \
    op interface \
    ports { local_reference_V_2_address0 { O 6 vector } local_reference_V_2_ce0 { O 1 bit } local_reference_V_2_q0 { I 2 vector } local_reference_V_2_address1 { O 6 vector } local_reference_V_2_ce1 { O 1 bit } local_reference_V_2_q1 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 309 \
    name local_reference_V_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_V_3 \
    op interface \
    ports { local_reference_V_3_address0 { O 6 vector } local_reference_V_3_ce0 { O 1 bit } local_reference_V_3_q0 { I 2 vector } local_reference_V_3_address1 { O 6 vector } local_reference_V_3_ce1 { O 1 bit } local_reference_V_3_q1 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 310 \
    name local_reference_V_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_V_4 \
    op interface \
    ports { local_reference_V_4_address0 { O 6 vector } local_reference_V_4_ce0 { O 1 bit } local_reference_V_4_q0 { I 2 vector } local_reference_V_4_address1 { O 6 vector } local_reference_V_4_ce1 { O 1 bit } local_reference_V_4_q1 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 311 \
    name local_reference_V_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_V_5 \
    op interface \
    ports { local_reference_V_5_address0 { O 6 vector } local_reference_V_5_ce0 { O 1 bit } local_reference_V_5_q0 { I 2 vector } local_reference_V_5_address1 { O 6 vector } local_reference_V_5_ce1 { O 1 bit } local_reference_V_5_q1 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 312 \
    name local_reference_V_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_V_6 \
    op interface \
    ports { local_reference_V_6_address0 { O 6 vector } local_reference_V_6_ce0 { O 1 bit } local_reference_V_6_q0 { I 2 vector } local_reference_V_6_address1 { O 6 vector } local_reference_V_6_ce1 { O 1 bit } local_reference_V_6_q1 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 313 \
    name local_reference_V_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_V_7 \
    op interface \
    ports { local_reference_V_7_address0 { O 6 vector } local_reference_V_7_ce0 { O 1 bit } local_reference_V_7_q0 { I 2 vector } local_reference_V_7_address1 { O 6 vector } local_reference_V_7_ce1 { O 1 bit } local_reference_V_7_q1 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 314 \
    name local_reference_V_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_V_8 \
    op interface \
    ports { local_reference_V_8_address0 { O 6 vector } local_reference_V_8_ce0 { O 1 bit } local_reference_V_8_q0 { I 2 vector } local_reference_V_8_address1 { O 6 vector } local_reference_V_8_ce1 { O 1 bit } local_reference_V_8_q1 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 315 \
    name local_reference_V_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_V_9 \
    op interface \
    ports { local_reference_V_9_address0 { O 6 vector } local_reference_V_9_ce0 { O 1 bit } local_reference_V_9_q0 { I 2 vector } local_reference_V_9_address1 { O 6 vector } local_reference_V_9_ce1 { O 1 bit } local_reference_V_9_q1 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 316 \
    name local_reference_V_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_V_10 \
    op interface \
    ports { local_reference_V_10_address0 { O 6 vector } local_reference_V_10_ce0 { O 1 bit } local_reference_V_10_q0 { I 2 vector } local_reference_V_10_address1 { O 6 vector } local_reference_V_10_ce1 { O 1 bit } local_reference_V_10_q1 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 317 \
    name local_reference_V_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_V_11 \
    op interface \
    ports { local_reference_V_11_address0 { O 6 vector } local_reference_V_11_ce0 { O 1 bit } local_reference_V_11_q0 { I 2 vector } local_reference_V_11_address1 { O 6 vector } local_reference_V_11_ce1 { O 1 bit } local_reference_V_11_q1 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 318 \
    name local_reference_V_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_V_12 \
    op interface \
    ports { local_reference_V_12_address0 { O 6 vector } local_reference_V_12_ce0 { O 1 bit } local_reference_V_12_q0 { I 2 vector } local_reference_V_12_address1 { O 6 vector } local_reference_V_12_ce1 { O 1 bit } local_reference_V_12_q1 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 319 \
    name local_reference_V_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_V_13 \
    op interface \
    ports { local_reference_V_13_address0 { O 6 vector } local_reference_V_13_ce0 { O 1 bit } local_reference_V_13_q0 { I 2 vector } local_reference_V_13_address1 { O 6 vector } local_reference_V_13_ce1 { O 1 bit } local_reference_V_13_q1 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 320 \
    name local_reference_V_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_V_14 \
    op interface \
    ports { local_reference_V_14_address0 { O 6 vector } local_reference_V_14_ce0 { O 1 bit } local_reference_V_14_q0 { I 2 vector } local_reference_V_14_address1 { O 6 vector } local_reference_V_14_ce1 { O 1 bit } local_reference_V_14_q1 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 321 \
    name local_reference_V_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_V_15 \
    op interface \
    ports { local_reference_V_15_address0 { O 6 vector } local_reference_V_15_ce0 { O 1 bit } local_reference_V_15_q0 { I 2 vector } local_reference_V_15_address1 { O 6 vector } local_reference_V_15_ce1 { O 1 bit } local_reference_V_15_q1 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 322 \
    name dp_matrix_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V \
    op interface \
    ports { dp_matrix_V_address0 { O 16 vector } dp_matrix_V_ce0 { O 1 bit } dp_matrix_V_we0 { O 1 bit } dp_matrix_V_d0 { O 9 vector } dp_matrix_V_address1 { O 16 vector } dp_matrix_V_ce1 { O 1 bit } dp_matrix_V_we1 { O 1 bit } dp_matrix_V_d1 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 323 \
    name last_pe_score_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename last_pe_score_V \
    op interface \
    ports { last_pe_score_V_address0 { O 10 vector } last_pe_score_V_ce0 { O 1 bit } last_pe_score_V_we0 { O 1 bit } last_pe_score_V_d0 { O 9 vector } last_pe_score_V_address1 { O 10 vector } last_pe_score_V_ce1 { O 1 bit } last_pe_score_V_q1 { I 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'last_pe_score_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 324 \
    name last_pe_scoreIx_V \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename last_pe_scoreIx_V \
    op interface \
    ports { last_pe_scoreIx_V_address0 { O 10 vector } last_pe_scoreIx_V_ce0 { O 1 bit } last_pe_scoreIx_V_we0 { O 1 bit } last_pe_scoreIx_V_d0 { O 10 vector } last_pe_scoreIx_V_address1 { O 10 vector } last_pe_scoreIx_V_ce1 { O 1 bit } last_pe_scoreIx_V_q1 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'last_pe_scoreIx_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 325 \
    name chunk1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename chunk1 \
    op interface \
    ports { chunk1_address0 { O 10 vector } chunk1_ce0 { O 1 bit } chunk1_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name p_reload543 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload543 \
    op interface \
    ports { p_reload543 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name p_reload542 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload542 \
    op interface \
    ports { p_reload542 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name p_reload541 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload541 \
    op interface \
    ports { p_reload541 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name p_reload540 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload540 \
    op interface \
    ports { p_reload540 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name p_reload539 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload539 \
    op interface \
    ports { p_reload539 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name p_reload538 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload538 \
    op interface \
    ports { p_reload538 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name p_reload537 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload537 \
    op interface \
    ports { p_reload537 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name p_reload536 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload536 \
    op interface \
    ports { p_reload536 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name p_reload535 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload535 \
    op interface \
    ports { p_reload535 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name p_reload534 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload534 \
    op interface \
    ports { p_reload534 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name p_reload533 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload533 \
    op interface \
    ports { p_reload533 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name p_reload532 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload532 \
    op interface \
    ports { p_reload532 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name p_reload531 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload531 \
    op interface \
    ports { p_reload531 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name p_reload530 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload530 \
    op interface \
    ports { p_reload530 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name p_reload529 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload529 \
    op interface \
    ports { p_reload529 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name p_reload528 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload528 \
    op interface \
    ports { p_reload528 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name p_reload527 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload527 \
    op interface \
    ports { p_reload527 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name p_reload526 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload526 \
    op interface \
    ports { p_reload526 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name p_reload525 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload525 \
    op interface \
    ports { p_reload525 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name p_reload524 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload524 \
    op interface \
    ports { p_reload524 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name p_reload523 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload523 \
    op interface \
    ports { p_reload523 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name p_reload522 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload522 \
    op interface \
    ports { p_reload522 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name p_reload521 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload521 \
    op interface \
    ports { p_reload521 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name p_reload520 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload520 \
    op interface \
    ports { p_reload520 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name p_reload519 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload519 \
    op interface \
    ports { p_reload519 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name p_reload518 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload518 \
    op interface \
    ports { p_reload518 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name p_reload517 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload517 \
    op interface \
    ports { p_reload517 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name p_reload516 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload516 \
    op interface \
    ports { p_reload516 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name p_reload515 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload515 \
    op interface \
    ports { p_reload515 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name p_reload514 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload514 \
    op interface \
    ports { p_reload514 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name p_reload513 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload513 \
    op interface \
    ports { p_reload513 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name p_reload481 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload481 \
    op interface \
    ports { p_reload481 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name p_reload512 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload512 \
    op interface \
    ports { p_reload512 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name p_reload511 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload511 \
    op interface \
    ports { p_reload511 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name p_reload510 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload510 \
    op interface \
    ports { p_reload510 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name p_reload509 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload509 \
    op interface \
    ports { p_reload509 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name p_reload508 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload508 \
    op interface \
    ports { p_reload508 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name p_reload507 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload507 \
    op interface \
    ports { p_reload507 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name p_reload506 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload506 \
    op interface \
    ports { p_reload506 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name p_reload505 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload505 \
    op interface \
    ports { p_reload505 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name p_reload504 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload504 \
    op interface \
    ports { p_reload504 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name p_reload503 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload503 \
    op interface \
    ports { p_reload503 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name p_reload502 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload502 \
    op interface \
    ports { p_reload502 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name p_reload501 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload501 \
    op interface \
    ports { p_reload501 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name p_reload500 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload500 \
    op interface \
    ports { p_reload500 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name p_reload499 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload499 \
    op interface \
    ports { p_reload499 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name p_reload498 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload498 \
    op interface \
    ports { p_reload498 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name p_reload497 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload497 \
    op interface \
    ports { p_reload497 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name p_reload496 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload496 \
    op interface \
    ports { p_reload496 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name p_reload495 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload495 \
    op interface \
    ports { p_reload495 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name p_reload494 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload494 \
    op interface \
    ports { p_reload494 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name p_reload493 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload493 \
    op interface \
    ports { p_reload493 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name p_reload492 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload492 \
    op interface \
    ports { p_reload492 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name p_reload491 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload491 \
    op interface \
    ports { p_reload491 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name p_reload490 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload490 \
    op interface \
    ports { p_reload490 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name p_reload489 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload489 \
    op interface \
    ports { p_reload489 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name p_reload488 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload488 \
    op interface \
    ports { p_reload488 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name p_reload487 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload487 \
    op interface \
    ports { p_reload487 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name p_reload486 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload486 \
    op interface \
    ports { p_reload486 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name p_reload485 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload485 \
    op interface \
    ports { p_reload485 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name p_reload484 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload484 \
    op interface \
    ports { p_reload484 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name p_reload483 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload483 \
    op interface \
    ports { p_reload483 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name p_reload482 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload482 \
    op interface \
    ports { p_reload482 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name p_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload \
    op interface \
    ports { p_reload { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name p_reload385 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload385 \
    op interface \
    ports { p_reload385 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name p_reload384 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload384 \
    op interface \
    ports { p_reload384 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name p_reload383 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload383 \
    op interface \
    ports { p_reload383 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name p_reload382 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload382 \
    op interface \
    ports { p_reload382 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name p_reload381 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload381 \
    op interface \
    ports { p_reload381 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name p_reload380 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload380 \
    op interface \
    ports { p_reload380 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name p_reload379 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload379 \
    op interface \
    ports { p_reload379 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name p_reload378 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload378 \
    op interface \
    ports { p_reload378 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name p_reload377 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload377 \
    op interface \
    ports { p_reload377 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name p_reload376 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload376 \
    op interface \
    ports { p_reload376 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name p_reload375 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload375 \
    op interface \
    ports { p_reload375 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name p_reload374 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload374 \
    op interface \
    ports { p_reload374 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name p_reload373 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload373 \
    op interface \
    ports { p_reload373 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name p_reload372 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload372 \
    op interface \
    ports { p_reload372 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name p_reload371 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload371 \
    op interface \
    ports { p_reload371 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name p_reload370 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload370 \
    op interface \
    ports { p_reload370 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name p_reload369 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload369 \
    op interface \
    ports { p_reload369 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name p_reload368 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload368 \
    op interface \
    ports { p_reload368 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name p_reload367 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload367 \
    op interface \
    ports { p_reload367 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name p_reload366 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload366 \
    op interface \
    ports { p_reload366 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name p_reload365 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload365 \
    op interface \
    ports { p_reload365 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name p_reload364 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload364 \
    op interface \
    ports { p_reload364 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name p_reload363 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload363 \
    op interface \
    ports { p_reload363 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name p_reload362 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload362 \
    op interface \
    ports { p_reload362 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name p_reload361 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload361 \
    op interface \
    ports { p_reload361 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name p_reload360 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload360 \
    op interface \
    ports { p_reload360 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name p_reload359 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload359 \
    op interface \
    ports { p_reload359 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name p_reload358 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload358 \
    op interface \
    ports { p_reload358 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name p_reload357 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload357 \
    op interface \
    ports { p_reload357 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name p_reload356 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload356 \
    op interface \
    ports { p_reload356 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name p_reload355 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload355 \
    op interface \
    ports { p_reload355 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name p_reload416 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload416 \
    op interface \
    ports { p_reload416 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name p_reload415 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload415 \
    op interface \
    ports { p_reload415 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name p_reload414 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload414 \
    op interface \
    ports { p_reload414 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name p_reload413 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload413 \
    op interface \
    ports { p_reload413 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name p_reload412 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload412 \
    op interface \
    ports { p_reload412 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name p_reload411 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload411 \
    op interface \
    ports { p_reload411 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name p_reload410 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload410 \
    op interface \
    ports { p_reload410 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name p_reload409 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload409 \
    op interface \
    ports { p_reload409 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name p_reload408 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload408 \
    op interface \
    ports { p_reload408 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name p_reload407 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload407 \
    op interface \
    ports { p_reload407 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name p_reload406 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload406 \
    op interface \
    ports { p_reload406 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name p_reload405 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload405 \
    op interface \
    ports { p_reload405 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name p_reload404 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload404 \
    op interface \
    ports { p_reload404 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name p_reload403 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload403 \
    op interface \
    ports { p_reload403 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name p_reload402 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload402 \
    op interface \
    ports { p_reload402 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name p_reload401 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload401 \
    op interface \
    ports { p_reload401 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name p_reload400 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload400 \
    op interface \
    ports { p_reload400 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name p_reload399 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload399 \
    op interface \
    ports { p_reload399 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 293 \
    name p_reload398 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload398 \
    op interface \
    ports { p_reload398 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 294 \
    name p_reload397 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload397 \
    op interface \
    ports { p_reload397 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name p_reload396 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload396 \
    op interface \
    ports { p_reload396 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name p_reload395 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload395 \
    op interface \
    ports { p_reload395 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name p_reload394 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload394 \
    op interface \
    ports { p_reload394 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name p_reload393 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload393 \
    op interface \
    ports { p_reload393 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name p_reload392 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload392 \
    op interface \
    ports { p_reload392 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name p_reload391 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload391 \
    op interface \
    ports { p_reload391 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name p_reload390 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload390 \
    op interface \
    ports { p_reload390 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name p_reload389 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload389 \
    op interface \
    ports { p_reload389 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name p_reload388 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload388 \
    op interface \
    ports { p_reload388 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name p_reload387 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload387 \
    op interface \
    ports { p_reload387 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name p_reload386 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_reload386 \
    op interface \
    ports { p_reload386 { I 10 vector } } \
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


