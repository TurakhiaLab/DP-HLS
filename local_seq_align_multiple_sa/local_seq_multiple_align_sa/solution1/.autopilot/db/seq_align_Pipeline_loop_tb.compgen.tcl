# This script segment is generated automatically by AutoPilot

set id 907
set name seq_align_multiple_mux_325_2_1_1
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
set din16_width 2
set din16_signed 0
set din17_width 2
set din17_signed 0
set din18_width 2
set din18_signed 0
set din19_width 2
set din19_signed 0
set din20_width 2
set din20_signed 0
set din21_width 2
set din21_signed 0
set din22_width 2
set din22_signed 0
set din23_width 2
set din23_signed 0
set din24_width 2
set din24_signed 0
set din25_width 2
set din25_signed 0
set din26_width 2
set din26_signed 0
set din27_width 2
set din27_signed 0
set din28_width 2
set din28_signed 0
set din29_width 2
set din29_signed 0
set din30_width 2
set din30_signed 0
set din31_width 2
set din31_signed 0
set din32_width 5
set din32_signed 0
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
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
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
    id 911 \
    name traceback_V \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V \
    op interface \
    ports { traceback_V_address0 { O 11 vector } traceback_V_ce0 { O 1 bit } traceback_V_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 912 \
    name traceback_V_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_1 \
    op interface \
    ports { traceback_V_1_address0 { O 11 vector } traceback_V_1_ce0 { O 1 bit } traceback_V_1_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 913 \
    name traceback_V_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_2 \
    op interface \
    ports { traceback_V_2_address0 { O 11 vector } traceback_V_2_ce0 { O 1 bit } traceback_V_2_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 914 \
    name traceback_V_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_3 \
    op interface \
    ports { traceback_V_3_address0 { O 11 vector } traceback_V_3_ce0 { O 1 bit } traceback_V_3_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 915 \
    name traceback_V_4 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_4 \
    op interface \
    ports { traceback_V_4_address0 { O 11 vector } traceback_V_4_ce0 { O 1 bit } traceback_V_4_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 916 \
    name traceback_V_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_5 \
    op interface \
    ports { traceback_V_5_address0 { O 11 vector } traceback_V_5_ce0 { O 1 bit } traceback_V_5_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 917 \
    name traceback_V_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_6 \
    op interface \
    ports { traceback_V_6_address0 { O 11 vector } traceback_V_6_ce0 { O 1 bit } traceback_V_6_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 918 \
    name traceback_V_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_7 \
    op interface \
    ports { traceback_V_7_address0 { O 11 vector } traceback_V_7_ce0 { O 1 bit } traceback_V_7_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 919 \
    name traceback_V_8 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_8 \
    op interface \
    ports { traceback_V_8_address0 { O 11 vector } traceback_V_8_ce0 { O 1 bit } traceback_V_8_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 920 \
    name traceback_V_9 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_9 \
    op interface \
    ports { traceback_V_9_address0 { O 11 vector } traceback_V_9_ce0 { O 1 bit } traceback_V_9_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 921 \
    name traceback_V_10 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_10 \
    op interface \
    ports { traceback_V_10_address0 { O 11 vector } traceback_V_10_ce0 { O 1 bit } traceback_V_10_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 922 \
    name traceback_V_11 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_11 \
    op interface \
    ports { traceback_V_11_address0 { O 11 vector } traceback_V_11_ce0 { O 1 bit } traceback_V_11_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 923 \
    name traceback_V_12 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_12 \
    op interface \
    ports { traceback_V_12_address0 { O 11 vector } traceback_V_12_ce0 { O 1 bit } traceback_V_12_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 924 \
    name traceback_V_13 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_13 \
    op interface \
    ports { traceback_V_13_address0 { O 11 vector } traceback_V_13_ce0 { O 1 bit } traceback_V_13_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 925 \
    name traceback_V_14 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_14 \
    op interface \
    ports { traceback_V_14_address0 { O 11 vector } traceback_V_14_ce0 { O 1 bit } traceback_V_14_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 926 \
    name traceback_V_15 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_15 \
    op interface \
    ports { traceback_V_15_address0 { O 11 vector } traceback_V_15_ce0 { O 1 bit } traceback_V_15_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 927 \
    name traceback_V_16 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_16 \
    op interface \
    ports { traceback_V_16_address0 { O 11 vector } traceback_V_16_ce0 { O 1 bit } traceback_V_16_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 928 \
    name traceback_V_17 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_17 \
    op interface \
    ports { traceback_V_17_address0 { O 11 vector } traceback_V_17_ce0 { O 1 bit } traceback_V_17_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 929 \
    name traceback_V_18 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_18 \
    op interface \
    ports { traceback_V_18_address0 { O 11 vector } traceback_V_18_ce0 { O 1 bit } traceback_V_18_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 930 \
    name traceback_V_19 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_19 \
    op interface \
    ports { traceback_V_19_address0 { O 11 vector } traceback_V_19_ce0 { O 1 bit } traceback_V_19_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 931 \
    name traceback_V_20 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_20 \
    op interface \
    ports { traceback_V_20_address0 { O 11 vector } traceback_V_20_ce0 { O 1 bit } traceback_V_20_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 932 \
    name traceback_V_21 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_21 \
    op interface \
    ports { traceback_V_21_address0 { O 11 vector } traceback_V_21_ce0 { O 1 bit } traceback_V_21_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 933 \
    name traceback_V_22 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_22 \
    op interface \
    ports { traceback_V_22_address0 { O 11 vector } traceback_V_22_ce0 { O 1 bit } traceback_V_22_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 934 \
    name traceback_V_23 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_23 \
    op interface \
    ports { traceback_V_23_address0 { O 11 vector } traceback_V_23_ce0 { O 1 bit } traceback_V_23_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 935 \
    name traceback_V_24 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_24 \
    op interface \
    ports { traceback_V_24_address0 { O 11 vector } traceback_V_24_ce0 { O 1 bit } traceback_V_24_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 936 \
    name traceback_V_25 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_25 \
    op interface \
    ports { traceback_V_25_address0 { O 11 vector } traceback_V_25_ce0 { O 1 bit } traceback_V_25_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 937 \
    name traceback_V_26 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_26 \
    op interface \
    ports { traceback_V_26_address0 { O 11 vector } traceback_V_26_ce0 { O 1 bit } traceback_V_26_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 938 \
    name traceback_V_27 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_27 \
    op interface \
    ports { traceback_V_27_address0 { O 11 vector } traceback_V_27_ce0 { O 1 bit } traceback_V_27_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 939 \
    name traceback_V_28 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_28 \
    op interface \
    ports { traceback_V_28_address0 { O 11 vector } traceback_V_28_ce0 { O 1 bit } traceback_V_28_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 940 \
    name traceback_V_29 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_29 \
    op interface \
    ports { traceback_V_29_address0 { O 11 vector } traceback_V_29_ce0 { O 1 bit } traceback_V_29_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 941 \
    name traceback_V_30 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_30 \
    op interface \
    ports { traceback_V_30_address0 { O 11 vector } traceback_V_30_ce0 { O 1 bit } traceback_V_30_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 942 \
    name traceback_V_31 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename traceback_V_31 \
    op interface \
    ports { traceback_V_31_address0 { O 11 vector } traceback_V_31_ce0 { O 1 bit } traceback_V_31_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'traceback_V_31'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 909 \
    name ultimate_col_value \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ultimate_col_value \
    op interface \
    ports { ultimate_col_value { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 910 \
    name ultimate_row_value \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_ultimate_row_value \
    op interface \
    ports { ultimate_row_value { I 32 vector } } \
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


