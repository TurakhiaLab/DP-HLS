# This script segment is generated automatically by AutoPilot

set id 258
set name seq_align_multiple_mux_164_8_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 8
set din0_signed 0
set din1_width 8
set din1_signed 0
set din2_width 8
set din2_signed 0
set din3_width 8
set din3_signed 0
set din4_width 8
set din4_signed 0
set din5_width 8
set din5_signed 0
set din6_width 8
set din6_signed 0
set din7_width 8
set din7_signed 0
set din8_width 8
set din8_signed 0
set din9_width 8
set din9_signed 0
set din10_width 8
set din10_signed 0
set din11_width 8
set din11_signed 0
set din12_width 8
set din12_signed 0
set din13_width 8
set din13_signed 0
set din14_width 8
set din14_signed 0
set din15_width 8
set din15_signed 0
set din16_width 4
set din16_signed 0
set dout_width 8
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
    id 388 \
    name traceback_V_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename traceback_V_14 \
    op interface \
    ports { traceback_V_14_address0 { O 16 vector } traceback_V_14_ce0 { O 1 bit } traceback_V_14_we0 { O 1 bit } traceback_V_14_d0 { O 2 vector } traceback_V_14_address1 { O 16 vector } traceback_V_14_ce1 { O 1 bit } traceback_V_14_we1 { O 1 bit } traceback_V_14_d1 { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 389 \
    name traceback_V_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename traceback_V_13 \
    op interface \
    ports { traceback_V_13_address0 { O 16 vector } traceback_V_13_ce0 { O 1 bit } traceback_V_13_we0 { O 1 bit } traceback_V_13_d0 { O 2 vector } traceback_V_13_address1 { O 16 vector } traceback_V_13_ce1 { O 1 bit } traceback_V_13_we1 { O 1 bit } traceback_V_13_d1 { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 390 \
    name traceback_V_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename traceback_V_12 \
    op interface \
    ports { traceback_V_12_address0 { O 16 vector } traceback_V_12_ce0 { O 1 bit } traceback_V_12_we0 { O 1 bit } traceback_V_12_d0 { O 2 vector } traceback_V_12_address1 { O 16 vector } traceback_V_12_ce1 { O 1 bit } traceback_V_12_we1 { O 1 bit } traceback_V_12_d1 { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 391 \
    name traceback_V_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename traceback_V_11 \
    op interface \
    ports { traceback_V_11_address0 { O 16 vector } traceback_V_11_ce0 { O 1 bit } traceback_V_11_we0 { O 1 bit } traceback_V_11_d0 { O 2 vector } traceback_V_11_address1 { O 16 vector } traceback_V_11_ce1 { O 1 bit } traceback_V_11_we1 { O 1 bit } traceback_V_11_d1 { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 392 \
    name traceback_V_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename traceback_V_10 \
    op interface \
    ports { traceback_V_10_address0 { O 16 vector } traceback_V_10_ce0 { O 1 bit } traceback_V_10_we0 { O 1 bit } traceback_V_10_d0 { O 2 vector } traceback_V_10_address1 { O 16 vector } traceback_V_10_ce1 { O 1 bit } traceback_V_10_we1 { O 1 bit } traceback_V_10_d1 { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 393 \
    name traceback_V_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename traceback_V_9 \
    op interface \
    ports { traceback_V_9_address0 { O 16 vector } traceback_V_9_ce0 { O 1 bit } traceback_V_9_we0 { O 1 bit } traceback_V_9_d0 { O 2 vector } traceback_V_9_address1 { O 16 vector } traceback_V_9_ce1 { O 1 bit } traceback_V_9_we1 { O 1 bit } traceback_V_9_d1 { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 394 \
    name traceback_V_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename traceback_V_8 \
    op interface \
    ports { traceback_V_8_address0 { O 16 vector } traceback_V_8_ce0 { O 1 bit } traceback_V_8_we0 { O 1 bit } traceback_V_8_d0 { O 2 vector } traceback_V_8_address1 { O 16 vector } traceback_V_8_ce1 { O 1 bit } traceback_V_8_we1 { O 1 bit } traceback_V_8_d1 { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 395 \
    name traceback_V_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename traceback_V_7 \
    op interface \
    ports { traceback_V_7_address0 { O 16 vector } traceback_V_7_ce0 { O 1 bit } traceback_V_7_we0 { O 1 bit } traceback_V_7_d0 { O 2 vector } traceback_V_7_address1 { O 16 vector } traceback_V_7_ce1 { O 1 bit } traceback_V_7_we1 { O 1 bit } traceback_V_7_d1 { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 396 \
    name traceback_V_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename traceback_V_6 \
    op interface \
    ports { traceback_V_6_address0 { O 16 vector } traceback_V_6_ce0 { O 1 bit } traceback_V_6_we0 { O 1 bit } traceback_V_6_d0 { O 2 vector } traceback_V_6_address1 { O 16 vector } traceback_V_6_ce1 { O 1 bit } traceback_V_6_we1 { O 1 bit } traceback_V_6_d1 { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 397 \
    name traceback_V_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename traceback_V_5 \
    op interface \
    ports { traceback_V_5_address0 { O 16 vector } traceback_V_5_ce0 { O 1 bit } traceback_V_5_we0 { O 1 bit } traceback_V_5_d0 { O 2 vector } traceback_V_5_address1 { O 16 vector } traceback_V_5_ce1 { O 1 bit } traceback_V_5_we1 { O 1 bit } traceback_V_5_d1 { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 398 \
    name traceback_V_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename traceback_V_4 \
    op interface \
    ports { traceback_V_4_address0 { O 16 vector } traceback_V_4_ce0 { O 1 bit } traceback_V_4_we0 { O 1 bit } traceback_V_4_d0 { O 2 vector } traceback_V_4_address1 { O 16 vector } traceback_V_4_ce1 { O 1 bit } traceback_V_4_we1 { O 1 bit } traceback_V_4_d1 { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 399 \
    name traceback_V_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename traceback_V_3 \
    op interface \
    ports { traceback_V_3_address0 { O 16 vector } traceback_V_3_ce0 { O 1 bit } traceback_V_3_we0 { O 1 bit } traceback_V_3_d0 { O 2 vector } traceback_V_3_address1 { O 16 vector } traceback_V_3_ce1 { O 1 bit } traceback_V_3_we1 { O 1 bit } traceback_V_3_d1 { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 400 \
    name traceback_V_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename traceback_V_2 \
    op interface \
    ports { traceback_V_2_address0 { O 16 vector } traceback_V_2_ce0 { O 1 bit } traceback_V_2_we0 { O 1 bit } traceback_V_2_d0 { O 2 vector } traceback_V_2_address1 { O 16 vector } traceback_V_2_ce1 { O 1 bit } traceback_V_2_we1 { O 1 bit } traceback_V_2_d1 { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 401 \
    name traceback_V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename traceback_V_1 \
    op interface \
    ports { traceback_V_1_address0 { O 16 vector } traceback_V_1_ce0 { O 1 bit } traceback_V_1_we0 { O 1 bit } traceback_V_1_d0 { O 2 vector } traceback_V_1_address1 { O 16 vector } traceback_V_1_ce1 { O 1 bit } traceback_V_1_we1 { O 1 bit } traceback_V_1_d1 { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 402 \
    name traceback_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename traceback_V \
    op interface \
    ports { traceback_V_address0 { O 16 vector } traceback_V_ce0 { O 1 bit } traceback_V_we0 { O 1 bit } traceback_V_d0 { O 2 vector } traceback_V_address1 { O 16 vector } traceback_V_ce1 { O 1 bit } traceback_V_we1 { O 1 bit } traceback_V_d1 { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 404 \
    name traceback_V_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename traceback_V_15 \
    op interface \
    ports { traceback_V_15_address0 { O 16 vector } traceback_V_15_ce0 { O 1 bit } traceback_V_15_we0 { O 1 bit } traceback_V_15_d0 { O 2 vector } traceback_V_15_address1 { O 16 vector } traceback_V_15_ce1 { O 1 bit } traceback_V_15_we1 { O 1 bit } traceback_V_15_d1 { O 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 406 \
    name local_reference \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference \
    op interface \
    ports { local_reference_address0 { O 6 vector } local_reference_ce0 { O 1 bit } local_reference_q0 { I 8 vector } local_reference_address1 { O 6 vector } local_reference_ce1 { O 1 bit } local_reference_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 407 \
    name local_reference_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_1 \
    op interface \
    ports { local_reference_1_address0 { O 6 vector } local_reference_1_ce0 { O 1 bit } local_reference_1_q0 { I 8 vector } local_reference_1_address1 { O 6 vector } local_reference_1_ce1 { O 1 bit } local_reference_1_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 408 \
    name local_reference_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_2 \
    op interface \
    ports { local_reference_2_address0 { O 6 vector } local_reference_2_ce0 { O 1 bit } local_reference_2_q0 { I 8 vector } local_reference_2_address1 { O 6 vector } local_reference_2_ce1 { O 1 bit } local_reference_2_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 409 \
    name local_reference_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_3 \
    op interface \
    ports { local_reference_3_address0 { O 6 vector } local_reference_3_ce0 { O 1 bit } local_reference_3_q0 { I 8 vector } local_reference_3_address1 { O 6 vector } local_reference_3_ce1 { O 1 bit } local_reference_3_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 410 \
    name local_reference_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_4 \
    op interface \
    ports { local_reference_4_address0 { O 6 vector } local_reference_4_ce0 { O 1 bit } local_reference_4_q0 { I 8 vector } local_reference_4_address1 { O 6 vector } local_reference_4_ce1 { O 1 bit } local_reference_4_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 411 \
    name local_reference_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_5 \
    op interface \
    ports { local_reference_5_address0 { O 6 vector } local_reference_5_ce0 { O 1 bit } local_reference_5_q0 { I 8 vector } local_reference_5_address1 { O 6 vector } local_reference_5_ce1 { O 1 bit } local_reference_5_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 412 \
    name local_reference_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_6 \
    op interface \
    ports { local_reference_6_address0 { O 6 vector } local_reference_6_ce0 { O 1 bit } local_reference_6_q0 { I 8 vector } local_reference_6_address1 { O 6 vector } local_reference_6_ce1 { O 1 bit } local_reference_6_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 413 \
    name local_reference_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_7 \
    op interface \
    ports { local_reference_7_address0 { O 6 vector } local_reference_7_ce0 { O 1 bit } local_reference_7_q0 { I 8 vector } local_reference_7_address1 { O 6 vector } local_reference_7_ce1 { O 1 bit } local_reference_7_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 414 \
    name local_reference_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_8 \
    op interface \
    ports { local_reference_8_address0 { O 6 vector } local_reference_8_ce0 { O 1 bit } local_reference_8_q0 { I 8 vector } local_reference_8_address1 { O 6 vector } local_reference_8_ce1 { O 1 bit } local_reference_8_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 415 \
    name local_reference_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_9 \
    op interface \
    ports { local_reference_9_address0 { O 6 vector } local_reference_9_ce0 { O 1 bit } local_reference_9_q0 { I 8 vector } local_reference_9_address1 { O 6 vector } local_reference_9_ce1 { O 1 bit } local_reference_9_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 416 \
    name local_reference_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_10 \
    op interface \
    ports { local_reference_10_address0 { O 6 vector } local_reference_10_ce0 { O 1 bit } local_reference_10_q0 { I 8 vector } local_reference_10_address1 { O 6 vector } local_reference_10_ce1 { O 1 bit } local_reference_10_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 417 \
    name local_reference_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_11 \
    op interface \
    ports { local_reference_11_address0 { O 6 vector } local_reference_11_ce0 { O 1 bit } local_reference_11_q0 { I 8 vector } local_reference_11_address1 { O 6 vector } local_reference_11_ce1 { O 1 bit } local_reference_11_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 418 \
    name local_reference_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_12 \
    op interface \
    ports { local_reference_12_address0 { O 6 vector } local_reference_12_ce0 { O 1 bit } local_reference_12_q0 { I 8 vector } local_reference_12_address1 { O 6 vector } local_reference_12_ce1 { O 1 bit } local_reference_12_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 419 \
    name local_reference_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_13 \
    op interface \
    ports { local_reference_13_address0 { O 6 vector } local_reference_13_ce0 { O 1 bit } local_reference_13_q0 { I 8 vector } local_reference_13_address1 { O 6 vector } local_reference_13_ce1 { O 1 bit } local_reference_13_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 420 \
    name local_reference_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_14 \
    op interface \
    ports { local_reference_14_address0 { O 6 vector } local_reference_14_ce0 { O 1 bit } local_reference_14_q0 { I 8 vector } local_reference_14_address1 { O 6 vector } local_reference_14_ce1 { O 1 bit } local_reference_14_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 421 \
    name local_reference_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename local_reference_15 \
    op interface \
    ports { local_reference_15_address0 { O 6 vector } local_reference_15_ce0 { O 1 bit } local_reference_15_q0 { I 8 vector } local_reference_15_address1 { O 6 vector } local_reference_15_ce1 { O 1 bit } local_reference_15_q1 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 422 \
    name last_pe_score \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename last_pe_score \
    op interface \
    ports { last_pe_score_address0 { O 10 vector } last_pe_score_ce0 { O 1 bit } last_pe_score_we0 { O 1 bit } last_pe_score_d0 { O 31 vector } last_pe_score_address1 { O 10 vector } last_pe_score_ce1 { O 1 bit } last_pe_score_q1 { I 31 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'last_pe_score'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name max_col_value_95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_95 \
    op interface \
    ports { max_col_value_95 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name max_col_value_94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_94 \
    op interface \
    ports { max_col_value_94 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 293 \
    name max_col_value_93 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_93 \
    op interface \
    ports { max_col_value_93 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 294 \
    name max_col_value_92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_92 \
    op interface \
    ports { max_col_value_92 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name max_col_value_91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_91 \
    op interface \
    ports { max_col_value_91 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name max_col_value_90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_90 \
    op interface \
    ports { max_col_value_90 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name max_col_value_89 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_89 \
    op interface \
    ports { max_col_value_89 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name max_col_value_88 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_88 \
    op interface \
    ports { max_col_value_88 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name max_col_value_87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_87 \
    op interface \
    ports { max_col_value_87 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name max_col_value_86 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_86 \
    op interface \
    ports { max_col_value_86 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name max_col_value_85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_85 \
    op interface \
    ports { max_col_value_85 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name max_col_value_84 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_84 \
    op interface \
    ports { max_col_value_84 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name max_col_value_83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_83 \
    op interface \
    ports { max_col_value_83 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name max_col_value_82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_82 \
    op interface \
    ports { max_col_value_82 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name max_col_value_81 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_81 \
    op interface \
    ports { max_col_value_81 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name max_col_value_80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_80 \
    op interface \
    ports { max_col_value_80 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name max_col_value_79 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_79 \
    op interface \
    ports { max_col_value_79 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name max_col_value_78 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_78 \
    op interface \
    ports { max_col_value_78 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name max_col_value_77 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_77 \
    op interface \
    ports { max_col_value_77 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name max_col_value_76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_76 \
    op interface \
    ports { max_col_value_76 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 311 \
    name max_col_value_75 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_75 \
    op interface \
    ports { max_col_value_75 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name max_col_value_74 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_74 \
    op interface \
    ports { max_col_value_74 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name max_col_value_73 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_73 \
    op interface \
    ports { max_col_value_73 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name max_col_value_72 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_72 \
    op interface \
    ports { max_col_value_72 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name max_col_value_71 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_71 \
    op interface \
    ports { max_col_value_71 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name max_col_value_70 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_70 \
    op interface \
    ports { max_col_value_70 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
    name max_col_value_69 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_69 \
    op interface \
    ports { max_col_value_69 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 318 \
    name max_col_value_68 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_68 \
    op interface \
    ports { max_col_value_68 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name max_col_value_67 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_67 \
    op interface \
    ports { max_col_value_67 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name max_col_value_66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_66 \
    op interface \
    ports { max_col_value_66 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name max_col_value_65 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_65 \
    op interface \
    ports { max_col_value_65 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name max_col_value_64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_64 \
    op interface \
    ports { max_col_value_64 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 323 \
    name max_row_value_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_63 \
    op interface \
    ports { max_row_value_63 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name max_row_value_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_62 \
    op interface \
    ports { max_row_value_62 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name max_row_value_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_61 \
    op interface \
    ports { max_row_value_61 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 326 \
    name max_row_value_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_60 \
    op interface \
    ports { max_row_value_60 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 327 \
    name max_row_value_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_59 \
    op interface \
    ports { max_row_value_59 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name max_row_value_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_58 \
    op interface \
    ports { max_row_value_58 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 329 \
    name max_row_value_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_57 \
    op interface \
    ports { max_row_value_57 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 330 \
    name max_row_value_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_56 \
    op interface \
    ports { max_row_value_56 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name max_row_value_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_55 \
    op interface \
    ports { max_row_value_55 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 332 \
    name max_row_value_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_54 \
    op interface \
    ports { max_row_value_54 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 333 \
    name max_row_value_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_53 \
    op interface \
    ports { max_row_value_53 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 334 \
    name max_row_value_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_52 \
    op interface \
    ports { max_row_value_52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 335 \
    name max_row_value_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_51 \
    op interface \
    ports { max_row_value_51 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 336 \
    name max_row_value_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_50 \
    op interface \
    ports { max_row_value_50 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 337 \
    name max_row_value_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_49 \
    op interface \
    ports { max_row_value_49 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 338 \
    name max_row_value_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_48 \
    op interface \
    ports { max_row_value_48 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 339 \
    name max_row_value_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_47 \
    op interface \
    ports { max_row_value_47 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name max_row_value_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_46 \
    op interface \
    ports { max_row_value_46 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 341 \
    name max_row_value_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_45 \
    op interface \
    ports { max_row_value_45 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 342 \
    name max_row_value_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_44 \
    op interface \
    ports { max_row_value_44 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 343 \
    name max_row_value_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_43 \
    op interface \
    ports { max_row_value_43 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 344 \
    name max_row_value_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_42 \
    op interface \
    ports { max_row_value_42 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 345 \
    name max_row_value_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_41 \
    op interface \
    ports { max_row_value_41 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name max_row_value_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_40 \
    op interface \
    ports { max_row_value_40 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 347 \
    name max_row_value_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_39 \
    op interface \
    ports { max_row_value_39 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 348 \
    name max_row_value_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_38 \
    op interface \
    ports { max_row_value_38 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 349 \
    name max_row_value_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_37 \
    op interface \
    ports { max_row_value_37 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 350 \
    name max_row_value_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_36 \
    op interface \
    ports { max_row_value_36 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name max_row_value_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_35 \
    op interface \
    ports { max_row_value_35 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name max_row_value_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_34 \
    op interface \
    ports { max_row_value_34 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 353 \
    name max_row_value_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_33 \
    op interface \
    ports { max_row_value_33 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 354 \
    name max_row_value_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_32 \
    op interface \
    ports { max_row_value_32 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 355 \
    name max_score_63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_63 \
    op interface \
    ports { max_score_63 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 356 \
    name max_score_62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_62 \
    op interface \
    ports { max_score_62 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 357 \
    name max_score_61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_61 \
    op interface \
    ports { max_score_61 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
    name max_score_60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_60 \
    op interface \
    ports { max_score_60 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name max_score_59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_59 \
    op interface \
    ports { max_score_59 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name max_score_58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_58 \
    op interface \
    ports { max_score_58 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 361 \
    name max_score_57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_57 \
    op interface \
    ports { max_score_57 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 362 \
    name max_score_56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_56 \
    op interface \
    ports { max_score_56 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 363 \
    name max_score_55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_55 \
    op interface \
    ports { max_score_55 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 364 \
    name max_score_54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_54 \
    op interface \
    ports { max_score_54 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 365 \
    name max_score_53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_53 \
    op interface \
    ports { max_score_53 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 366 \
    name max_score_52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_52 \
    op interface \
    ports { max_score_52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 367 \
    name max_score_51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_51 \
    op interface \
    ports { max_score_51 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 368 \
    name max_score_50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_50 \
    op interface \
    ports { max_score_50 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 369 \
    name max_score_49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_49 \
    op interface \
    ports { max_score_49 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 370 \
    name max_score_48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_48 \
    op interface \
    ports { max_score_48 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 371 \
    name max_score_47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_47 \
    op interface \
    ports { max_score_47 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 372 \
    name max_score_46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_46 \
    op interface \
    ports { max_score_46 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 373 \
    name max_score_45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_45 \
    op interface \
    ports { max_score_45 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 374 \
    name max_score_44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_44 \
    op interface \
    ports { max_score_44 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 375 \
    name max_score_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_43 \
    op interface \
    ports { max_score_43 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 376 \
    name max_score_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_42 \
    op interface \
    ports { max_score_42 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 377 \
    name max_score_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_41 \
    op interface \
    ports { max_score_41 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 378 \
    name max_score_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_40 \
    op interface \
    ports { max_score_40 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 379 \
    name max_score_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_39 \
    op interface \
    ports { max_score_39 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 380 \
    name max_score_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_38 \
    op interface \
    ports { max_score_38 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 381 \
    name max_score_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_37 \
    op interface \
    ports { max_score_37 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 382 \
    name max_score_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_36 \
    op interface \
    ports { max_score_36 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 383 \
    name max_score_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_35 \
    op interface \
    ports { max_score_35 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 384 \
    name max_score_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_34 \
    op interface \
    ports { max_score_34 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 385 \
    name max_score_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_33 \
    op interface \
    ports { max_score_33 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 386 \
    name max_score_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_32 \
    op interface \
    ports { max_score_32 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 387 \
    name zext_ln288 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln288 \
    op interface \
    ports { zext_ln288 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name zext_ln280_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln280_1 \
    op interface \
    ports { zext_ln280_1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 405 \
    name tmp_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_tmp_3 \
    op interface \
    ports { tmp_3 { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 423 \
    name p_cast8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast8 \
    op interface \
    ports { p_cast8 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 424 \
    name p_phi_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi_reload \
    op interface \
    ports { p_phi_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 425 \
    name cmp_i30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i30 \
    op interface \
    ports { cmp_i30 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 426 \
    name p_cast10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast10 \
    op interface \
    ports { p_cast10 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 427 \
    name cmp_i_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_1 \
    op interface \
    ports { cmp_i_1 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 428 \
    name query_data_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_reload \
    op interface \
    ports { query_data_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 429 \
    name p_cast11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast11 \
    op interface \
    ports { p_cast11 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name cmp_i_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_2 \
    op interface \
    ports { cmp_i_2 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name query_data_30_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_30_reload \
    op interface \
    ports { query_data_30_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name p_cast12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast12 \
    op interface \
    ports { p_cast12 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name cmp_i_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_3 \
    op interface \
    ports { cmp_i_3 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 434 \
    name query_data_29_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_29_reload \
    op interface \
    ports { query_data_29_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 435 \
    name p_cast13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast13 \
    op interface \
    ports { p_cast13 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 436 \
    name cmp_i_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_4 \
    op interface \
    ports { cmp_i_4 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 437 \
    name query_data_28_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_28_reload \
    op interface \
    ports { query_data_28_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 438 \
    name p_cast14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast14 \
    op interface \
    ports { p_cast14 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 439 \
    name cmp_i_5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_5 \
    op interface \
    ports { cmp_i_5 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 440 \
    name query_data_27_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_27_reload \
    op interface \
    ports { query_data_27_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 441 \
    name p_cast15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast15 \
    op interface \
    ports { p_cast15 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 442 \
    name cmp_i_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_6 \
    op interface \
    ports { cmp_i_6 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 443 \
    name query_data_26_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_26_reload \
    op interface \
    ports { query_data_26_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 444 \
    name p_cast16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast16 \
    op interface \
    ports { p_cast16 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 445 \
    name cmp_i_7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_7 \
    op interface \
    ports { cmp_i_7 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 446 \
    name query_data_25_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_25_reload \
    op interface \
    ports { query_data_25_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 447 \
    name p_cast17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast17 \
    op interface \
    ports { p_cast17 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 448 \
    name cmp_i_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_8 \
    op interface \
    ports { cmp_i_8 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 449 \
    name query_data_24_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_24_reload \
    op interface \
    ports { query_data_24_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 450 \
    name p_cast18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast18 \
    op interface \
    ports { p_cast18 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 451 \
    name cmp_i_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_9 \
    op interface \
    ports { cmp_i_9 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 452 \
    name query_data_23_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_23_reload \
    op interface \
    ports { query_data_23_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 453 \
    name p_cast19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast19 \
    op interface \
    ports { p_cast19 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 454 \
    name cmp_i_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_10 \
    op interface \
    ports { cmp_i_10 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 455 \
    name query_data_22_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_22_reload \
    op interface \
    ports { query_data_22_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 456 \
    name p_cast20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast20 \
    op interface \
    ports { p_cast20 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 457 \
    name cmp_i_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_11 \
    op interface \
    ports { cmp_i_11 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
    name query_data_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_21_reload \
    op interface \
    ports { query_data_21_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 459 \
    name p_cast21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast21 \
    op interface \
    ports { p_cast21 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 460 \
    name cmp_i_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_12 \
    op interface \
    ports { cmp_i_12 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 461 \
    name query_data_20_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_20_reload \
    op interface \
    ports { query_data_20_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 462 \
    name p_cast22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast22 \
    op interface \
    ports { p_cast22 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name cmp_i_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_13 \
    op interface \
    ports { cmp_i_13 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name query_data_19_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_19_reload \
    op interface \
    ports { query_data_19_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name p_cast23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast23 \
    op interface \
    ports { p_cast23 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name cmp_i_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_14 \
    op interface \
    ports { cmp_i_14 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 467 \
    name query_data_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_18_reload \
    op interface \
    ports { query_data_18_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 468 \
    name p_cast24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast24 \
    op interface \
    ports { p_cast24 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 469 \
    name cmp_i_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_15 \
    op interface \
    ports { cmp_i_15 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 470 \
    name query_data_17_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_17_reload \
    op interface \
    ports { query_data_17_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 471 \
    name p_cast26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast26 \
    op interface \
    ports { p_cast26 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 472 \
    name cmp_i_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_16 \
    op interface \
    ports { cmp_i_16 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 473 \
    name query_data_16_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_16_reload \
    op interface \
    ports { query_data_16_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 474 \
    name p_cast27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast27 \
    op interface \
    ports { p_cast27 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 475 \
    name cmp_i_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_17 \
    op interface \
    ports { cmp_i_17 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 476 \
    name query_data_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_15_reload \
    op interface \
    ports { query_data_15_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 477 \
    name p_cast28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast28 \
    op interface \
    ports { p_cast28 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 478 \
    name cmp_i_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_18 \
    op interface \
    ports { cmp_i_18 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 479 \
    name query_data_14_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_14_reload \
    op interface \
    ports { query_data_14_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 480 \
    name p_cast29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast29 \
    op interface \
    ports { p_cast29 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 481 \
    name cmp_i_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_19 \
    op interface \
    ports { cmp_i_19 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 482 \
    name query_data_13_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_13_reload \
    op interface \
    ports { query_data_13_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 483 \
    name p_cast30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast30 \
    op interface \
    ports { p_cast30 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 484 \
    name cmp_i_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_20 \
    op interface \
    ports { cmp_i_20 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 485 \
    name query_data_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_12_reload \
    op interface \
    ports { query_data_12_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 486 \
    name p_cast31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast31 \
    op interface \
    ports { p_cast31 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 487 \
    name cmp_i_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_21 \
    op interface \
    ports { cmp_i_21 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 488 \
    name query_data_11_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_11_reload \
    op interface \
    ports { query_data_11_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 489 \
    name p_cast32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast32 \
    op interface \
    ports { p_cast32 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 490 \
    name cmp_i_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_22 \
    op interface \
    ports { cmp_i_22 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 491 \
    name query_data_10_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_10_reload \
    op interface \
    ports { query_data_10_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 492 \
    name p_cast33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast33 \
    op interface \
    ports { p_cast33 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 493 \
    name cmp_i_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_23 \
    op interface \
    ports { cmp_i_23 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 494 \
    name query_data_9_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_9_reload \
    op interface \
    ports { query_data_9_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 495 \
    name p_cast34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast34 \
    op interface \
    ports { p_cast34 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 496 \
    name cmp_i_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_24 \
    op interface \
    ports { cmp_i_24 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 497 \
    name query_data_8_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_8_reload \
    op interface \
    ports { query_data_8_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 498 \
    name p_cast35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast35 \
    op interface \
    ports { p_cast35 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 499 \
    name cmp_i_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_25 \
    op interface \
    ports { cmp_i_25 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 500 \
    name query_data_7_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_7_reload \
    op interface \
    ports { query_data_7_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 501 \
    name p_cast36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast36 \
    op interface \
    ports { p_cast36 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 502 \
    name cmp_i_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_26 \
    op interface \
    ports { cmp_i_26 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 503 \
    name query_data_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_6_reload \
    op interface \
    ports { query_data_6_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 504 \
    name p_cast37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast37 \
    op interface \
    ports { p_cast37 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 505 \
    name cmp_i_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_27 \
    op interface \
    ports { cmp_i_27 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 506 \
    name query_data_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_5_reload \
    op interface \
    ports { query_data_5_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 507 \
    name p_cast38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast38 \
    op interface \
    ports { p_cast38 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 508 \
    name cmp_i_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_28 \
    op interface \
    ports { cmp_i_28 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 509 \
    name query_data_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_4_reload \
    op interface \
    ports { query_data_4_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 510 \
    name p_cast39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast39 \
    op interface \
    ports { p_cast39 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 511 \
    name cmp_i_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_29 \
    op interface \
    ports { cmp_i_29 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 512 \
    name query_data_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_3_reload \
    op interface \
    ports { query_data_3_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 513 \
    name p_cast40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_cast40 \
    op interface \
    ports { p_cast40 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 514 \
    name cmp_i_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_30 \
    op interface \
    ports { cmp_i_30 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 515 \
    name query_data_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_2_reload \
    op interface \
    ports { query_data_2_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 516 \
    name zext_ln252 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_zext_ln252 \
    op interface \
    ports { zext_ln252 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 517 \
    name cmp_i_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_cmp_i_31 \
    op interface \
    ports { cmp_i_31 { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 518 \
    name query_data_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_1_reload \
    op interface \
    ports { query_data_1_reload { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 519 \
    name max_col_value_127_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_127_out \
    op interface \
    ports { max_col_value_127_out { O 32 vector } max_col_value_127_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 520 \
    name max_col_value_126_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_126_out \
    op interface \
    ports { max_col_value_126_out { O 32 vector } max_col_value_126_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 521 \
    name max_col_value_125_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_125_out \
    op interface \
    ports { max_col_value_125_out { O 32 vector } max_col_value_125_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 522 \
    name max_col_value_124_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_124_out \
    op interface \
    ports { max_col_value_124_out { O 32 vector } max_col_value_124_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 523 \
    name max_col_value_123_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_123_out \
    op interface \
    ports { max_col_value_123_out { O 32 vector } max_col_value_123_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 524 \
    name max_col_value_122_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_122_out \
    op interface \
    ports { max_col_value_122_out { O 32 vector } max_col_value_122_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 525 \
    name max_col_value_121_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_121_out \
    op interface \
    ports { max_col_value_121_out { O 32 vector } max_col_value_121_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 526 \
    name max_col_value_120_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_120_out \
    op interface \
    ports { max_col_value_120_out { O 32 vector } max_col_value_120_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 527 \
    name max_col_value_119_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_119_out \
    op interface \
    ports { max_col_value_119_out { O 32 vector } max_col_value_119_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 528 \
    name max_col_value_118_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_118_out \
    op interface \
    ports { max_col_value_118_out { O 32 vector } max_col_value_118_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 529 \
    name max_col_value_117_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_117_out \
    op interface \
    ports { max_col_value_117_out { O 32 vector } max_col_value_117_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 530 \
    name max_col_value_116_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_116_out \
    op interface \
    ports { max_col_value_116_out { O 32 vector } max_col_value_116_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 531 \
    name max_col_value_115_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_115_out \
    op interface \
    ports { max_col_value_115_out { O 32 vector } max_col_value_115_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 532 \
    name max_col_value_114_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_114_out \
    op interface \
    ports { max_col_value_114_out { O 32 vector } max_col_value_114_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 533 \
    name max_col_value_113_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_113_out \
    op interface \
    ports { max_col_value_113_out { O 32 vector } max_col_value_113_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 534 \
    name max_col_value_112_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_112_out \
    op interface \
    ports { max_col_value_112_out { O 32 vector } max_col_value_112_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 535 \
    name max_col_value_111_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_111_out \
    op interface \
    ports { max_col_value_111_out { O 32 vector } max_col_value_111_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 536 \
    name max_col_value_110_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_110_out \
    op interface \
    ports { max_col_value_110_out { O 32 vector } max_col_value_110_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 537 \
    name max_col_value_109_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_109_out \
    op interface \
    ports { max_col_value_109_out { O 32 vector } max_col_value_109_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 538 \
    name max_col_value_108_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_108_out \
    op interface \
    ports { max_col_value_108_out { O 32 vector } max_col_value_108_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 539 \
    name max_col_value_107_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_107_out \
    op interface \
    ports { max_col_value_107_out { O 32 vector } max_col_value_107_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 540 \
    name max_col_value_106_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_106_out \
    op interface \
    ports { max_col_value_106_out { O 32 vector } max_col_value_106_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 541 \
    name max_col_value_105_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_105_out \
    op interface \
    ports { max_col_value_105_out { O 32 vector } max_col_value_105_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 542 \
    name max_col_value_104_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_104_out \
    op interface \
    ports { max_col_value_104_out { O 32 vector } max_col_value_104_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 543 \
    name max_col_value_103_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_103_out \
    op interface \
    ports { max_col_value_103_out { O 32 vector } max_col_value_103_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 544 \
    name max_col_value_102_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_102_out \
    op interface \
    ports { max_col_value_102_out { O 32 vector } max_col_value_102_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 545 \
    name max_col_value_101_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_101_out \
    op interface \
    ports { max_col_value_101_out { O 32 vector } max_col_value_101_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 546 \
    name max_col_value_100_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_100_out \
    op interface \
    ports { max_col_value_100_out { O 32 vector } max_col_value_100_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 547 \
    name max_col_value_99_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_99_out \
    op interface \
    ports { max_col_value_99_out { O 32 vector } max_col_value_99_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 548 \
    name max_col_value_98_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_98_out \
    op interface \
    ports { max_col_value_98_out { O 32 vector } max_col_value_98_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 549 \
    name max_col_value_97_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_97_out \
    op interface \
    ports { max_col_value_97_out { O 32 vector } max_col_value_97_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 550 \
    name max_col_value_96_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_col_value_96_out \
    op interface \
    ports { max_col_value_96_out { O 32 vector } max_col_value_96_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 551 \
    name max_row_value_95_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_95_out \
    op interface \
    ports { max_row_value_95_out { O 32 vector } max_row_value_95_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 552 \
    name max_row_value_94_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_94_out \
    op interface \
    ports { max_row_value_94_out { O 32 vector } max_row_value_94_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 553 \
    name max_row_value_93_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_93_out \
    op interface \
    ports { max_row_value_93_out { O 32 vector } max_row_value_93_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 554 \
    name max_row_value_92_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_92_out \
    op interface \
    ports { max_row_value_92_out { O 32 vector } max_row_value_92_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 555 \
    name max_row_value_91_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_91_out \
    op interface \
    ports { max_row_value_91_out { O 32 vector } max_row_value_91_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 556 \
    name max_row_value_90_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_90_out \
    op interface \
    ports { max_row_value_90_out { O 32 vector } max_row_value_90_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 557 \
    name max_row_value_89_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_89_out \
    op interface \
    ports { max_row_value_89_out { O 32 vector } max_row_value_89_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 558 \
    name max_row_value_88_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_88_out \
    op interface \
    ports { max_row_value_88_out { O 32 vector } max_row_value_88_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 559 \
    name max_row_value_87_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_87_out \
    op interface \
    ports { max_row_value_87_out { O 32 vector } max_row_value_87_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 560 \
    name max_row_value_86_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_86_out \
    op interface \
    ports { max_row_value_86_out { O 32 vector } max_row_value_86_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 561 \
    name max_row_value_85_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_85_out \
    op interface \
    ports { max_row_value_85_out { O 32 vector } max_row_value_85_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 562 \
    name max_row_value_84_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_84_out \
    op interface \
    ports { max_row_value_84_out { O 32 vector } max_row_value_84_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 563 \
    name max_row_value_83_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_83_out \
    op interface \
    ports { max_row_value_83_out { O 32 vector } max_row_value_83_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 564 \
    name max_row_value_82_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_82_out \
    op interface \
    ports { max_row_value_82_out { O 32 vector } max_row_value_82_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 565 \
    name max_row_value_81_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_81_out \
    op interface \
    ports { max_row_value_81_out { O 32 vector } max_row_value_81_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 566 \
    name max_row_value_80_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_80_out \
    op interface \
    ports { max_row_value_80_out { O 32 vector } max_row_value_80_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 567 \
    name max_row_value_79_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_79_out \
    op interface \
    ports { max_row_value_79_out { O 32 vector } max_row_value_79_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 568 \
    name max_row_value_78_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_78_out \
    op interface \
    ports { max_row_value_78_out { O 32 vector } max_row_value_78_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 569 \
    name max_row_value_77_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_77_out \
    op interface \
    ports { max_row_value_77_out { O 32 vector } max_row_value_77_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 570 \
    name max_row_value_76_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_76_out \
    op interface \
    ports { max_row_value_76_out { O 32 vector } max_row_value_76_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 571 \
    name max_row_value_75_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_75_out \
    op interface \
    ports { max_row_value_75_out { O 32 vector } max_row_value_75_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 572 \
    name max_row_value_74_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_74_out \
    op interface \
    ports { max_row_value_74_out { O 32 vector } max_row_value_74_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 573 \
    name max_row_value_73_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_73_out \
    op interface \
    ports { max_row_value_73_out { O 32 vector } max_row_value_73_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 574 \
    name max_row_value_72_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_72_out \
    op interface \
    ports { max_row_value_72_out { O 32 vector } max_row_value_72_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 575 \
    name max_row_value_71_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_71_out \
    op interface \
    ports { max_row_value_71_out { O 32 vector } max_row_value_71_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 576 \
    name max_row_value_70_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_70_out \
    op interface \
    ports { max_row_value_70_out { O 32 vector } max_row_value_70_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 577 \
    name max_row_value_69_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_69_out \
    op interface \
    ports { max_row_value_69_out { O 32 vector } max_row_value_69_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 578 \
    name max_row_value_68_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_68_out \
    op interface \
    ports { max_row_value_68_out { O 32 vector } max_row_value_68_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 579 \
    name max_row_value_67_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_67_out \
    op interface \
    ports { max_row_value_67_out { O 32 vector } max_row_value_67_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 580 \
    name max_row_value_66_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_66_out \
    op interface \
    ports { max_row_value_66_out { O 32 vector } max_row_value_66_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 581 \
    name max_row_value_65_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_65_out \
    op interface \
    ports { max_row_value_65_out { O 32 vector } max_row_value_65_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 582 \
    name max_row_value_64_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_row_value_64_out \
    op interface \
    ports { max_row_value_64_out { O 32 vector } max_row_value_64_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 583 \
    name max_score_95_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_95_out \
    op interface \
    ports { max_score_95_out { O 32 vector } max_score_95_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 584 \
    name max_score_94_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_94_out \
    op interface \
    ports { max_score_94_out { O 32 vector } max_score_94_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 585 \
    name max_score_93_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_93_out \
    op interface \
    ports { max_score_93_out { O 32 vector } max_score_93_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 586 \
    name max_score_92_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_92_out \
    op interface \
    ports { max_score_92_out { O 32 vector } max_score_92_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 587 \
    name max_score_91_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_91_out \
    op interface \
    ports { max_score_91_out { O 32 vector } max_score_91_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 588 \
    name max_score_90_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_90_out \
    op interface \
    ports { max_score_90_out { O 32 vector } max_score_90_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 589 \
    name max_score_89_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_89_out \
    op interface \
    ports { max_score_89_out { O 32 vector } max_score_89_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 590 \
    name max_score_88_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_88_out \
    op interface \
    ports { max_score_88_out { O 32 vector } max_score_88_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 591 \
    name max_score_87_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_87_out \
    op interface \
    ports { max_score_87_out { O 32 vector } max_score_87_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 592 \
    name max_score_86_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_86_out \
    op interface \
    ports { max_score_86_out { O 32 vector } max_score_86_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 593 \
    name max_score_85_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_85_out \
    op interface \
    ports { max_score_85_out { O 32 vector } max_score_85_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 594 \
    name max_score_84_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_84_out \
    op interface \
    ports { max_score_84_out { O 32 vector } max_score_84_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 595 \
    name max_score_83_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_83_out \
    op interface \
    ports { max_score_83_out { O 32 vector } max_score_83_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 596 \
    name max_score_82_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_82_out \
    op interface \
    ports { max_score_82_out { O 32 vector } max_score_82_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 597 \
    name max_score_81_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_81_out \
    op interface \
    ports { max_score_81_out { O 32 vector } max_score_81_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 598 \
    name max_score_80_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_80_out \
    op interface \
    ports { max_score_80_out { O 32 vector } max_score_80_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 599 \
    name max_score_79_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_79_out \
    op interface \
    ports { max_score_79_out { O 32 vector } max_score_79_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 600 \
    name max_score_78_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_78_out \
    op interface \
    ports { max_score_78_out { O 32 vector } max_score_78_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 601 \
    name max_score_77_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_77_out \
    op interface \
    ports { max_score_77_out { O 32 vector } max_score_77_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 602 \
    name max_score_76_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_76_out \
    op interface \
    ports { max_score_76_out { O 32 vector } max_score_76_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 603 \
    name max_score_75_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_75_out \
    op interface \
    ports { max_score_75_out { O 32 vector } max_score_75_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 604 \
    name max_score_74_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_74_out \
    op interface \
    ports { max_score_74_out { O 32 vector } max_score_74_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 605 \
    name max_score_73_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_73_out \
    op interface \
    ports { max_score_73_out { O 32 vector } max_score_73_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 606 \
    name max_score_72_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_72_out \
    op interface \
    ports { max_score_72_out { O 32 vector } max_score_72_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 607 \
    name max_score_71_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_71_out \
    op interface \
    ports { max_score_71_out { O 32 vector } max_score_71_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 608 \
    name max_score_70_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_70_out \
    op interface \
    ports { max_score_70_out { O 32 vector } max_score_70_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 609 \
    name max_score_69_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_69_out \
    op interface \
    ports { max_score_69_out { O 32 vector } max_score_69_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 610 \
    name max_score_68_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_68_out \
    op interface \
    ports { max_score_68_out { O 32 vector } max_score_68_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 611 \
    name max_score_67_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_67_out \
    op interface \
    ports { max_score_67_out { O 32 vector } max_score_67_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 612 \
    name max_score_66_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_66_out \
    op interface \
    ports { max_score_66_out { O 32 vector } max_score_66_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 613 \
    name max_score_65_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_65_out \
    op interface \
    ports { max_score_65_out { O 32 vector } max_score_65_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 614 \
    name max_score_64_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score_64_out \
    op interface \
    ports { max_score_64_out { O 32 vector } max_score_64_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 615 \
    name p_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out \
    op interface \
    ports { p_out_i { I 32 vector } p_out_o { O 32 vector } p_out_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 616 \
    name p_out1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out1 \
    op interface \
    ports { p_out1_i { I 32 vector } p_out1_o { O 32 vector } p_out1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 617 \
    name p_out2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out2 \
    op interface \
    ports { p_out2_i { I 32 vector } p_out2_o { O 32 vector } p_out2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 618 \
    name p_out3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out3 \
    op interface \
    ports { p_out3_i { I 32 vector } p_out3_o { O 32 vector } p_out3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 619 \
    name p_out4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out4 \
    op interface \
    ports { p_out4_i { I 32 vector } p_out4_o { O 32 vector } p_out4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 620 \
    name p_out5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out5 \
    op interface \
    ports { p_out5_i { I 32 vector } p_out5_o { O 32 vector } p_out5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 621 \
    name p_out6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out6 \
    op interface \
    ports { p_out6_i { I 32 vector } p_out6_o { O 32 vector } p_out6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 622 \
    name p_out7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out7 \
    op interface \
    ports { p_out7_i { I 32 vector } p_out7_o { O 32 vector } p_out7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 623 \
    name p_out8 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out8 \
    op interface \
    ports { p_out8_i { I 32 vector } p_out8_o { O 32 vector } p_out8_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 624 \
    name p_out9 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out9 \
    op interface \
    ports { p_out9_i { I 32 vector } p_out9_o { O 32 vector } p_out9_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 625 \
    name p_out10 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out10 \
    op interface \
    ports { p_out10_i { I 32 vector } p_out10_o { O 32 vector } p_out10_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 626 \
    name p_out11 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out11 \
    op interface \
    ports { p_out11_i { I 32 vector } p_out11_o { O 32 vector } p_out11_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 627 \
    name p_out12 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out12 \
    op interface \
    ports { p_out12_i { I 32 vector } p_out12_o { O 32 vector } p_out12_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 628 \
    name p_out13 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out13 \
    op interface \
    ports { p_out13_i { I 32 vector } p_out13_o { O 32 vector } p_out13_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 629 \
    name p_out14 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out14 \
    op interface \
    ports { p_out14_i { I 32 vector } p_out14_o { O 32 vector } p_out14_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 630 \
    name p_out15 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out15 \
    op interface \
    ports { p_out15_i { I 32 vector } p_out15_o { O 32 vector } p_out15_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 631 \
    name p_out16 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out16 \
    op interface \
    ports { p_out16_i { I 32 vector } p_out16_o { O 32 vector } p_out16_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 632 \
    name p_out17 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out17 \
    op interface \
    ports { p_out17_i { I 32 vector } p_out17_o { O 32 vector } p_out17_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 633 \
    name p_out18 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out18 \
    op interface \
    ports { p_out18_i { I 32 vector } p_out18_o { O 32 vector } p_out18_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 634 \
    name p_out19 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out19 \
    op interface \
    ports { p_out19_i { I 32 vector } p_out19_o { O 32 vector } p_out19_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 635 \
    name p_out20 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out20 \
    op interface \
    ports { p_out20_i { I 32 vector } p_out20_o { O 32 vector } p_out20_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 636 \
    name p_out21 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out21 \
    op interface \
    ports { p_out21_i { I 32 vector } p_out21_o { O 32 vector } p_out21_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 637 \
    name p_out22 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out22 \
    op interface \
    ports { p_out22_i { I 32 vector } p_out22_o { O 32 vector } p_out22_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 638 \
    name p_out23 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out23 \
    op interface \
    ports { p_out23_i { I 32 vector } p_out23_o { O 32 vector } p_out23_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 639 \
    name p_out24 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out24 \
    op interface \
    ports { p_out24_i { I 32 vector } p_out24_o { O 32 vector } p_out24_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 640 \
    name p_out25 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out25 \
    op interface \
    ports { p_out25_i { I 32 vector } p_out25_o { O 32 vector } p_out25_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 641 \
    name p_out26 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out26 \
    op interface \
    ports { p_out26_i { I 32 vector } p_out26_o { O 32 vector } p_out26_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 642 \
    name p_out27 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out27 \
    op interface \
    ports { p_out27_i { I 32 vector } p_out27_o { O 32 vector } p_out27_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 643 \
    name p_out28 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out28 \
    op interface \
    ports { p_out28_i { I 32 vector } p_out28_o { O 32 vector } p_out28_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 644 \
    name p_out29 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out29 \
    op interface \
    ports { p_out29_i { I 32 vector } p_out29_o { O 32 vector } p_out29_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 645 \
    name p_out30 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out30 \
    op interface \
    ports { p_out30_i { I 32 vector } p_out30_o { O 32 vector } p_out30_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 646 \
    name p_out31 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out31 \
    op interface \
    ports { p_out31_i { I 32 vector } p_out31_o { O 32 vector } p_out31_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 647 \
    name p_out32 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out32 \
    op interface \
    ports { p_out32_i { I 32 vector } p_out32_o { O 32 vector } p_out32_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 648 \
    name p_out33 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out33 \
    op interface \
    ports { p_out33_i { I 32 vector } p_out33_o { O 32 vector } p_out33_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 649 \
    name p_out34 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out34 \
    op interface \
    ports { p_out34_i { I 32 vector } p_out34_o { O 32 vector } p_out34_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 650 \
    name p_out35 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out35 \
    op interface \
    ports { p_out35_i { I 32 vector } p_out35_o { O 32 vector } p_out35_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 651 \
    name p_out36 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out36 \
    op interface \
    ports { p_out36_i { I 32 vector } p_out36_o { O 32 vector } p_out36_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 652 \
    name p_out37 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out37 \
    op interface \
    ports { p_out37_i { I 32 vector } p_out37_o { O 32 vector } p_out37_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 653 \
    name p_out38 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out38 \
    op interface \
    ports { p_out38_i { I 32 vector } p_out38_o { O 32 vector } p_out38_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 654 \
    name p_out39 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out39 \
    op interface \
    ports { p_out39_i { I 32 vector } p_out39_o { O 32 vector } p_out39_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 655 \
    name p_out40 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out40 \
    op interface \
    ports { p_out40_i { I 32 vector } p_out40_o { O 32 vector } p_out40_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 656 \
    name p_out41 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out41 \
    op interface \
    ports { p_out41_i { I 32 vector } p_out41_o { O 32 vector } p_out41_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 657 \
    name p_out42 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out42 \
    op interface \
    ports { p_out42_i { I 32 vector } p_out42_o { O 32 vector } p_out42_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 658 \
    name p_out43 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out43 \
    op interface \
    ports { p_out43_i { I 32 vector } p_out43_o { O 32 vector } p_out43_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 659 \
    name p_out44 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out44 \
    op interface \
    ports { p_out44_i { I 32 vector } p_out44_o { O 32 vector } p_out44_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 660 \
    name p_out45 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out45 \
    op interface \
    ports { p_out45_i { I 32 vector } p_out45_o { O 32 vector } p_out45_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 661 \
    name p_out46 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out46 \
    op interface \
    ports { p_out46_i { I 32 vector } p_out46_o { O 32 vector } p_out46_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 662 \
    name p_out47 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out47 \
    op interface \
    ports { p_out47_i { I 32 vector } p_out47_o { O 32 vector } p_out47_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 663 \
    name p_out48 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out48 \
    op interface \
    ports { p_out48_i { I 32 vector } p_out48_o { O 32 vector } p_out48_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 664 \
    name p_out49 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out49 \
    op interface \
    ports { p_out49_i { I 32 vector } p_out49_o { O 32 vector } p_out49_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 665 \
    name p_out50 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out50 \
    op interface \
    ports { p_out50_i { I 32 vector } p_out50_o { O 32 vector } p_out50_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 666 \
    name p_out51 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out51 \
    op interface \
    ports { p_out51_i { I 32 vector } p_out51_o { O 32 vector } p_out51_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 667 \
    name p_out52 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out52 \
    op interface \
    ports { p_out52_i { I 32 vector } p_out52_o { O 32 vector } p_out52_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 668 \
    name p_out53 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out53 \
    op interface \
    ports { p_out53_i { I 32 vector } p_out53_o { O 32 vector } p_out53_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 669 \
    name p_out54 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out54 \
    op interface \
    ports { p_out54_i { I 32 vector } p_out54_o { O 32 vector } p_out54_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 670 \
    name p_out55 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out55 \
    op interface \
    ports { p_out55_i { I 32 vector } p_out55_o { O 32 vector } p_out55_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 671 \
    name p_out56 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out56 \
    op interface \
    ports { p_out56_i { I 32 vector } p_out56_o { O 32 vector } p_out56_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 672 \
    name p_out57 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out57 \
    op interface \
    ports { p_out57_i { I 32 vector } p_out57_o { O 32 vector } p_out57_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 673 \
    name p_out58 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out58 \
    op interface \
    ports { p_out58_i { I 32 vector } p_out58_o { O 32 vector } p_out58_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 674 \
    name p_out59 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out59 \
    op interface \
    ports { p_out59_i { I 32 vector } p_out59_o { O 32 vector } p_out59_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 675 \
    name p_out60 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out60 \
    op interface \
    ports { p_out60_i { I 32 vector } p_out60_o { O 32 vector } p_out60_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 676 \
    name p_out61 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out61 \
    op interface \
    ports { p_out61_i { I 32 vector } p_out61_o { O 32 vector } p_out61_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 677 \
    name p_out62 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out62 \
    op interface \
    ports { p_out62_i { I 32 vector } p_out62_o { O 32 vector } p_out62_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 678 \
    name temp_1_out \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_1_out \
    op interface \
    ports { temp_1_out_i { I 32 vector } temp_1_out_o { O 32 vector } temp_1_out_o_ap_vld { O 1 bit } } \
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


