# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler seq_align_multiple_seq_align_local_reference_V_RAM_1WNR_AUTO_1R1W BINDTYPE {storage} TYPE {ram_1wnr} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
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
    id 439 \
    name query_string_comp \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename query_string_comp \
    op interface \
    ports { query_string_comp_address0 { O 9 vector } query_string_comp_ce0 { O 1 bit } query_string_comp_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'query_string_comp'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 440 \
    name reference_string_comp \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reference_string_comp \
    op interface \
    ports { reference_string_comp_address0 { O 10 vector } reference_string_comp_ce0 { O 1 bit } reference_string_comp_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reference_string_comp'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 665 \
    name last_pe_score \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename last_pe_score \
    op interface \
    ports { last_pe_score_address0 { O 10 vector } last_pe_score_ce0 { O 1 bit } last_pe_score_we0 { O 1 bit } last_pe_score_d0 { O 10 vector } last_pe_score_address1 { O 10 vector } last_pe_score_ce1 { O 1 bit } last_pe_score_q1 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'last_pe_score'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 666 \
    name last_pe_scoreIx \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename last_pe_scoreIx \
    op interface \
    ports { last_pe_scoreIx_address0 { O 10 vector } last_pe_scoreIx_ce0 { O 1 bit } last_pe_scoreIx_we0 { O 1 bit } last_pe_scoreIx_d0 { O 10 vector } last_pe_scoreIx_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'last_pe_scoreIx'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 667 \
    name dp_matrix1_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix1_0 \
    op interface \
    ports { dp_matrix1_0_address0 { O 15 vector } dp_matrix1_0_ce0 { O 1 bit } dp_matrix1_0_we0 { O 1 bit } dp_matrix1_0_d0 { O 10 vector } dp_matrix1_0_address1 { O 15 vector } dp_matrix1_0_ce1 { O 1 bit } dp_matrix1_0_we1 { O 1 bit } dp_matrix1_0_d1 { O 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 668 \
    name dp_matrix1_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix1_1 \
    op interface \
    ports { dp_matrix1_1_address0 { O 15 vector } dp_matrix1_1_ce0 { O 1 bit } dp_matrix1_1_we0 { O 1 bit } dp_matrix1_1_d0 { O 10 vector } dp_matrix1_1_address1 { O 15 vector } dp_matrix1_1_ce1 { O 1 bit } dp_matrix1_1_we1 { O 1 bit } dp_matrix1_1_d1 { O 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 669 \
    name dp_matrix1_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix1_2 \
    op interface \
    ports { dp_matrix1_2_address0 { O 15 vector } dp_matrix1_2_ce0 { O 1 bit } dp_matrix1_2_we0 { O 1 bit } dp_matrix1_2_d0 { O 10 vector } dp_matrix1_2_address1 { O 15 vector } dp_matrix1_2_ce1 { O 1 bit } dp_matrix1_2_we1 { O 1 bit } dp_matrix1_2_d1 { O 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 670 \
    name dp_matrix1_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix1_3 \
    op interface \
    ports { dp_matrix1_3_address0 { O 15 vector } dp_matrix1_3_ce0 { O 1 bit } dp_matrix1_3_we0 { O 1 bit } dp_matrix1_3_d0 { O 10 vector } dp_matrix1_3_address1 { O 15 vector } dp_matrix1_3_ce1 { O 1 bit } dp_matrix1_3_we1 { O 1 bit } dp_matrix1_3_d1 { O 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 671 \
    name dp_matrix1_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix1_4 \
    op interface \
    ports { dp_matrix1_4_address0 { O 15 vector } dp_matrix1_4_ce0 { O 1 bit } dp_matrix1_4_we0 { O 1 bit } dp_matrix1_4_d0 { O 10 vector } dp_matrix1_4_address1 { O 15 vector } dp_matrix1_4_ce1 { O 1 bit } dp_matrix1_4_we1 { O 1 bit } dp_matrix1_4_d1 { O 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix1_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 672 \
    name dp_matrix1_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix1_5 \
    op interface \
    ports { dp_matrix1_5_address0 { O 15 vector } dp_matrix1_5_ce0 { O 1 bit } dp_matrix1_5_we0 { O 1 bit } dp_matrix1_5_d0 { O 10 vector } dp_matrix1_5_address1 { O 15 vector } dp_matrix1_5_ce1 { O 1 bit } dp_matrix1_5_we1 { O 1 bit } dp_matrix1_5_d1 { O 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix1_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 673 \
    name dp_matrix1_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix1_6 \
    op interface \
    ports { dp_matrix1_6_address0 { O 15 vector } dp_matrix1_6_ce0 { O 1 bit } dp_matrix1_6_we0 { O 1 bit } dp_matrix1_6_d0 { O 10 vector } dp_matrix1_6_address1 { O 15 vector } dp_matrix1_6_ce1 { O 1 bit } dp_matrix1_6_we1 { O 1 bit } dp_matrix1_6_d1 { O 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix1_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 674 \
    name dp_matrix1_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix1_7 \
    op interface \
    ports { dp_matrix1_7_address0 { O 15 vector } dp_matrix1_7_ce0 { O 1 bit } dp_matrix1_7_we0 { O 1 bit } dp_matrix1_7_d0 { O 10 vector } dp_matrix1_7_address1 { O 15 vector } dp_matrix1_7_ce1 { O 1 bit } dp_matrix1_7_we1 { O 1 bit } dp_matrix1_7_d1 { O 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix1_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 675 \
    name dp_matrix1_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix1_8 \
    op interface \
    ports { dp_matrix1_8_address0 { O 15 vector } dp_matrix1_8_ce0 { O 1 bit } dp_matrix1_8_we0 { O 1 bit } dp_matrix1_8_d0 { O 10 vector } dp_matrix1_8_address1 { O 15 vector } dp_matrix1_8_ce1 { O 1 bit } dp_matrix1_8_we1 { O 1 bit } dp_matrix1_8_d1 { O 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix1_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 676 \
    name dp_matrix1_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix1_9 \
    op interface \
    ports { dp_matrix1_9_address0 { O 15 vector } dp_matrix1_9_ce0 { O 1 bit } dp_matrix1_9_we0 { O 1 bit } dp_matrix1_9_d0 { O 10 vector } dp_matrix1_9_address1 { O 15 vector } dp_matrix1_9_ce1 { O 1 bit } dp_matrix1_9_we1 { O 1 bit } dp_matrix1_9_d1 { O 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix1_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 677 \
    name dp_matrix1_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix1_10 \
    op interface \
    ports { dp_matrix1_10_address0 { O 15 vector } dp_matrix1_10_ce0 { O 1 bit } dp_matrix1_10_we0 { O 1 bit } dp_matrix1_10_d0 { O 10 vector } dp_matrix1_10_address1 { O 15 vector } dp_matrix1_10_ce1 { O 1 bit } dp_matrix1_10_we1 { O 1 bit } dp_matrix1_10_d1 { O 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix1_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 678 \
    name dp_matrix1_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix1_11 \
    op interface \
    ports { dp_matrix1_11_address0 { O 15 vector } dp_matrix1_11_ce0 { O 1 bit } dp_matrix1_11_we0 { O 1 bit } dp_matrix1_11_d0 { O 10 vector } dp_matrix1_11_address1 { O 15 vector } dp_matrix1_11_ce1 { O 1 bit } dp_matrix1_11_we1 { O 1 bit } dp_matrix1_11_d1 { O 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix1_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 679 \
    name dp_matrix1_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix1_12 \
    op interface \
    ports { dp_matrix1_12_address0 { O 15 vector } dp_matrix1_12_ce0 { O 1 bit } dp_matrix1_12_we0 { O 1 bit } dp_matrix1_12_d0 { O 10 vector } dp_matrix1_12_address1 { O 15 vector } dp_matrix1_12_ce1 { O 1 bit } dp_matrix1_12_we1 { O 1 bit } dp_matrix1_12_d1 { O 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix1_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 680 \
    name dp_matrix1_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix1_13 \
    op interface \
    ports { dp_matrix1_13_address0 { O 15 vector } dp_matrix1_13_ce0 { O 1 bit } dp_matrix1_13_we0 { O 1 bit } dp_matrix1_13_d0 { O 10 vector } dp_matrix1_13_address1 { O 15 vector } dp_matrix1_13_ce1 { O 1 bit } dp_matrix1_13_we1 { O 1 bit } dp_matrix1_13_d1 { O 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix1_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 681 \
    name dp_matrix1_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix1_14 \
    op interface \
    ports { dp_matrix1_14_address0 { O 15 vector } dp_matrix1_14_ce0 { O 1 bit } dp_matrix1_14_we0 { O 1 bit } dp_matrix1_14_d0 { O 10 vector } dp_matrix1_14_address1 { O 15 vector } dp_matrix1_14_ce1 { O 1 bit } dp_matrix1_14_we1 { O 1 bit } dp_matrix1_14_d1 { O 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix1_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 682 \
    name dp_matrix1_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix1_15 \
    op interface \
    ports { dp_matrix1_15_address0 { O 15 vector } dp_matrix1_15_ce0 { O 1 bit } dp_matrix1_15_we0 { O 1 bit } dp_matrix1_15_d0 { O 10 vector } dp_matrix1_15_address1 { O 15 vector } dp_matrix1_15_ce1 { O 1 bit } dp_matrix1_15_we1 { O 1 bit } dp_matrix1_15_d1 { O 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix1_15'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 441 \
    name dp_mem_0_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_0 \
    op interface \
    ports { dp_mem_0_0 { O 10 vector } dp_mem_0_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 442 \
    name dp_mem_0_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_1 \
    op interface \
    ports { dp_mem_0_1 { O 10 vector } dp_mem_0_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 443 \
    name dp_mem_0_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_2 \
    op interface \
    ports { dp_mem_0_2 { O 10 vector } dp_mem_0_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 444 \
    name dp_mem_0_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_3 \
    op interface \
    ports { dp_mem_0_3 { O 10 vector } dp_mem_0_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 445 \
    name dp_mem_0_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_4 \
    op interface \
    ports { dp_mem_0_4 { O 10 vector } dp_mem_0_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 446 \
    name dp_mem_0_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_5 \
    op interface \
    ports { dp_mem_0_5 { O 10 vector } dp_mem_0_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 447 \
    name dp_mem_0_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_6 \
    op interface \
    ports { dp_mem_0_6 { O 10 vector } dp_mem_0_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 448 \
    name dp_mem_0_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_7 \
    op interface \
    ports { dp_mem_0_7 { O 10 vector } dp_mem_0_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 449 \
    name dp_mem_0_8 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_8 \
    op interface \
    ports { dp_mem_0_8 { O 10 vector } dp_mem_0_8_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 450 \
    name dp_mem_0_9 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_9 \
    op interface \
    ports { dp_mem_0_9 { O 10 vector } dp_mem_0_9_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 451 \
    name dp_mem_0_10 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_10 \
    op interface \
    ports { dp_mem_0_10 { O 10 vector } dp_mem_0_10_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 452 \
    name dp_mem_0_11 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_11 \
    op interface \
    ports { dp_mem_0_11 { O 10 vector } dp_mem_0_11_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 453 \
    name dp_mem_0_12 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_12 \
    op interface \
    ports { dp_mem_0_12 { O 10 vector } dp_mem_0_12_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 454 \
    name dp_mem_0_13 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_13 \
    op interface \
    ports { dp_mem_0_13 { O 10 vector } dp_mem_0_13_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 455 \
    name dp_mem_0_14 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_14 \
    op interface \
    ports { dp_mem_0_14 { O 10 vector } dp_mem_0_14_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 456 \
    name dp_mem_0_15 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_15 \
    op interface \
    ports { dp_mem_0_15 { O 10 vector } dp_mem_0_15_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 457 \
    name dp_mem_0_16 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_16 \
    op interface \
    ports { dp_mem_0_16 { O 10 vector } dp_mem_0_16_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
    name dp_mem_0_17 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_17 \
    op interface \
    ports { dp_mem_0_17 { O 10 vector } dp_mem_0_17_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 459 \
    name dp_mem_0_18 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_18 \
    op interface \
    ports { dp_mem_0_18 { O 10 vector } dp_mem_0_18_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 460 \
    name dp_mem_0_19 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_19 \
    op interface \
    ports { dp_mem_0_19 { O 10 vector } dp_mem_0_19_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 461 \
    name dp_mem_0_20 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_20 \
    op interface \
    ports { dp_mem_0_20 { O 10 vector } dp_mem_0_20_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 462 \
    name dp_mem_0_21 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_21 \
    op interface \
    ports { dp_mem_0_21 { O 10 vector } dp_mem_0_21_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name dp_mem_0_22 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_22 \
    op interface \
    ports { dp_mem_0_22 { O 10 vector } dp_mem_0_22_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name dp_mem_0_23 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_23 \
    op interface \
    ports { dp_mem_0_23 { O 10 vector } dp_mem_0_23_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name dp_mem_0_24 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_24 \
    op interface \
    ports { dp_mem_0_24 { O 10 vector } dp_mem_0_24_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name dp_mem_0_25 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_25 \
    op interface \
    ports { dp_mem_0_25 { O 10 vector } dp_mem_0_25_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 467 \
    name dp_mem_0_26 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_26 \
    op interface \
    ports { dp_mem_0_26 { O 10 vector } dp_mem_0_26_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 468 \
    name dp_mem_0_27 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_27 \
    op interface \
    ports { dp_mem_0_27 { O 10 vector } dp_mem_0_27_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 469 \
    name dp_mem_0_28 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_28 \
    op interface \
    ports { dp_mem_0_28 { O 10 vector } dp_mem_0_28_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 470 \
    name dp_mem_0_29 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_29 \
    op interface \
    ports { dp_mem_0_29 { O 10 vector } dp_mem_0_29_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 471 \
    name dp_mem_0_30 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_30 \
    op interface \
    ports { dp_mem_0_30 { O 10 vector } dp_mem_0_30_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 472 \
    name dp_mem_0_31 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_0_31 \
    op interface \
    ports { dp_mem_0_31 { O 10 vector } dp_mem_0_31_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 473 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 474 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 475 \
    name p_read3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read3 \
    op interface \
    ports { p_read3 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 476 \
    name p_read4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read4 \
    op interface \
    ports { p_read4 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 477 \
    name p_read5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read5 \
    op interface \
    ports { p_read5 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 478 \
    name p_read6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read6 \
    op interface \
    ports { p_read6 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 479 \
    name p_read7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read7 \
    op interface \
    ports { p_read7 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 480 \
    name p_read8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read8 \
    op interface \
    ports { p_read8 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 481 \
    name p_read9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read9 \
    op interface \
    ports { p_read9 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 482 \
    name p_read10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read10 \
    op interface \
    ports { p_read10 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 483 \
    name p_read11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read11 \
    op interface \
    ports { p_read11 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 484 \
    name p_read12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read12 \
    op interface \
    ports { p_read12 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 485 \
    name p_read13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read13 \
    op interface \
    ports { p_read13 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 486 \
    name p_read14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read14 \
    op interface \
    ports { p_read14 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 487 \
    name p_read15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read15 \
    op interface \
    ports { p_read15 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 488 \
    name p_read16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read16 \
    op interface \
    ports { p_read16 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 489 \
    name p_read17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read17 \
    op interface \
    ports { p_read17 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 490 \
    name p_read18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read18 \
    op interface \
    ports { p_read18 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 491 \
    name p_read19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read19 \
    op interface \
    ports { p_read19 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 492 \
    name p_read20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read20 \
    op interface \
    ports { p_read20 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 493 \
    name p_read21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read21 \
    op interface \
    ports { p_read21 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 494 \
    name p_read22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read22 \
    op interface \
    ports { p_read22 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 495 \
    name p_read23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read23 \
    op interface \
    ports { p_read23 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 496 \
    name p_read24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read24 \
    op interface \
    ports { p_read24 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 497 \
    name p_read25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read25 \
    op interface \
    ports { p_read25 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 498 \
    name p_read26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read26 \
    op interface \
    ports { p_read26 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 499 \
    name p_read27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read27 \
    op interface \
    ports { p_read27 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 500 \
    name p_read28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read28 \
    op interface \
    ports { p_read28 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 501 \
    name p_read29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read29 \
    op interface \
    ports { p_read29 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 502 \
    name p_read30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read30 \
    op interface \
    ports { p_read30 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 503 \
    name p_read31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read31 \
    op interface \
    ports { p_read31 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 504 \
    name p_read32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read32 \
    op interface \
    ports { p_read32 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 505 \
    name p_read33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read33 \
    op interface \
    ports { p_read33 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 506 \
    name p_read34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read34 \
    op interface \
    ports { p_read34 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 507 \
    name p_read35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read35 \
    op interface \
    ports { p_read35 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 508 \
    name p_read36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read36 \
    op interface \
    ports { p_read36 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 509 \
    name p_read37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read37 \
    op interface \
    ports { p_read37 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 510 \
    name p_read38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read38 \
    op interface \
    ports { p_read38 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 511 \
    name p_read39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read39 \
    op interface \
    ports { p_read39 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 512 \
    name p_read40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read40 \
    op interface \
    ports { p_read40 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 513 \
    name p_read41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read41 \
    op interface \
    ports { p_read41 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 514 \
    name p_read42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read42 \
    op interface \
    ports { p_read42 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 515 \
    name p_read43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read43 \
    op interface \
    ports { p_read43 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 516 \
    name p_read44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read44 \
    op interface \
    ports { p_read44 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 517 \
    name p_read45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read45 \
    op interface \
    ports { p_read45 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 518 \
    name p_read46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read46 \
    op interface \
    ports { p_read46 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 519 \
    name p_read47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read47 \
    op interface \
    ports { p_read47 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 520 \
    name p_read48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read48 \
    op interface \
    ports { p_read48 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 521 \
    name p_read49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read49 \
    op interface \
    ports { p_read49 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 522 \
    name p_read50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read50 \
    op interface \
    ports { p_read50 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 523 \
    name p_read51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read51 \
    op interface \
    ports { p_read51 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 524 \
    name p_read52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read52 \
    op interface \
    ports { p_read52 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 525 \
    name p_read53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read53 \
    op interface \
    ports { p_read53 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 526 \
    name p_read54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read54 \
    op interface \
    ports { p_read54 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 527 \
    name p_read55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read55 \
    op interface \
    ports { p_read55 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 528 \
    name p_read56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read56 \
    op interface \
    ports { p_read56 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 529 \
    name p_read57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read57 \
    op interface \
    ports { p_read57 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 530 \
    name p_read58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read58 \
    op interface \
    ports { p_read58 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 531 \
    name p_read59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read59 \
    op interface \
    ports { p_read59 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 532 \
    name p_read60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read60 \
    op interface \
    ports { p_read60 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 533 \
    name p_read61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read61 \
    op interface \
    ports { p_read61 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 534 \
    name p_read62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read62 \
    op interface \
    ports { p_read62 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 535 \
    name p_read63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read63 \
    op interface \
    ports { p_read63 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 536 \
    name p_read64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read64 \
    op interface \
    ports { p_read64 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 537 \
    name Ix_mem_0_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_0 \
    op interface \
    ports { Ix_mem_0_0 { O 10 vector } Ix_mem_0_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 538 \
    name Ix_mem_0_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_1 \
    op interface \
    ports { Ix_mem_0_1 { O 10 vector } Ix_mem_0_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 539 \
    name Ix_mem_0_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_2 \
    op interface \
    ports { Ix_mem_0_2 { O 10 vector } Ix_mem_0_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 540 \
    name Ix_mem_0_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_3 \
    op interface \
    ports { Ix_mem_0_3 { O 10 vector } Ix_mem_0_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 541 \
    name Ix_mem_0_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_4 \
    op interface \
    ports { Ix_mem_0_4 { O 10 vector } Ix_mem_0_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 542 \
    name Ix_mem_0_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_5 \
    op interface \
    ports { Ix_mem_0_5 { O 10 vector } Ix_mem_0_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 543 \
    name Ix_mem_0_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_6 \
    op interface \
    ports { Ix_mem_0_6 { O 10 vector } Ix_mem_0_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 544 \
    name Ix_mem_0_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_7 \
    op interface \
    ports { Ix_mem_0_7 { O 10 vector } Ix_mem_0_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 545 \
    name Ix_mem_0_8 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_8 \
    op interface \
    ports { Ix_mem_0_8 { O 10 vector } Ix_mem_0_8_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 546 \
    name Ix_mem_0_9 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_9 \
    op interface \
    ports { Ix_mem_0_9 { O 10 vector } Ix_mem_0_9_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 547 \
    name Ix_mem_0_10 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_10 \
    op interface \
    ports { Ix_mem_0_10 { O 10 vector } Ix_mem_0_10_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 548 \
    name Ix_mem_0_11 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_11 \
    op interface \
    ports { Ix_mem_0_11 { O 10 vector } Ix_mem_0_11_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 549 \
    name Ix_mem_0_12 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_12 \
    op interface \
    ports { Ix_mem_0_12 { O 10 vector } Ix_mem_0_12_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 550 \
    name Ix_mem_0_13 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_13 \
    op interface \
    ports { Ix_mem_0_13 { O 10 vector } Ix_mem_0_13_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 551 \
    name Ix_mem_0_14 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_14 \
    op interface \
    ports { Ix_mem_0_14 { O 10 vector } Ix_mem_0_14_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 552 \
    name Ix_mem_0_15 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_15 \
    op interface \
    ports { Ix_mem_0_15 { O 10 vector } Ix_mem_0_15_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 553 \
    name Ix_mem_0_16 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_16 \
    op interface \
    ports { Ix_mem_0_16 { O 10 vector } Ix_mem_0_16_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 554 \
    name Ix_mem_0_17 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_17 \
    op interface \
    ports { Ix_mem_0_17 { O 10 vector } Ix_mem_0_17_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 555 \
    name Ix_mem_0_18 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_18 \
    op interface \
    ports { Ix_mem_0_18 { O 10 vector } Ix_mem_0_18_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 556 \
    name Ix_mem_0_19 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_19 \
    op interface \
    ports { Ix_mem_0_19 { O 10 vector } Ix_mem_0_19_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 557 \
    name Ix_mem_0_20 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_20 \
    op interface \
    ports { Ix_mem_0_20 { O 10 vector } Ix_mem_0_20_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 558 \
    name Ix_mem_0_21 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_21 \
    op interface \
    ports { Ix_mem_0_21 { O 10 vector } Ix_mem_0_21_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 559 \
    name Ix_mem_0_22 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_22 \
    op interface \
    ports { Ix_mem_0_22 { O 10 vector } Ix_mem_0_22_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 560 \
    name Ix_mem_0_23 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_23 \
    op interface \
    ports { Ix_mem_0_23 { O 10 vector } Ix_mem_0_23_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 561 \
    name Ix_mem_0_24 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_24 \
    op interface \
    ports { Ix_mem_0_24 { O 10 vector } Ix_mem_0_24_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 562 \
    name Ix_mem_0_25 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_25 \
    op interface \
    ports { Ix_mem_0_25 { O 10 vector } Ix_mem_0_25_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 563 \
    name Ix_mem_0_26 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_26 \
    op interface \
    ports { Ix_mem_0_26 { O 10 vector } Ix_mem_0_26_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 564 \
    name Ix_mem_0_27 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_27 \
    op interface \
    ports { Ix_mem_0_27 { O 10 vector } Ix_mem_0_27_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 565 \
    name Ix_mem_0_28 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_28 \
    op interface \
    ports { Ix_mem_0_28 { O 10 vector } Ix_mem_0_28_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 566 \
    name Ix_mem_0_29 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_29 \
    op interface \
    ports { Ix_mem_0_29 { O 10 vector } Ix_mem_0_29_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 567 \
    name Ix_mem_0_30 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_30 \
    op interface \
    ports { Ix_mem_0_30 { O 10 vector } Ix_mem_0_30_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 568 \
    name Ix_mem_0_31 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_0_31 \
    op interface \
    ports { Ix_mem_0_31 { O 10 vector } Ix_mem_0_31_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 569 \
    name p_read65 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read65 \
    op interface \
    ports { p_read65 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 570 \
    name p_read66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read66 \
    op interface \
    ports { p_read66 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 571 \
    name p_read67 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read67 \
    op interface \
    ports { p_read67 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 572 \
    name p_read68 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read68 \
    op interface \
    ports { p_read68 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 573 \
    name p_read69 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read69 \
    op interface \
    ports { p_read69 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 574 \
    name p_read70 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read70 \
    op interface \
    ports { p_read70 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 575 \
    name p_read71 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read71 \
    op interface \
    ports { p_read71 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 576 \
    name p_read72 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read72 \
    op interface \
    ports { p_read72 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 577 \
    name p_read73 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read73 \
    op interface \
    ports { p_read73 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 578 \
    name p_read74 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read74 \
    op interface \
    ports { p_read74 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 579 \
    name p_read75 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read75 \
    op interface \
    ports { p_read75 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 580 \
    name p_read76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read76 \
    op interface \
    ports { p_read76 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 581 \
    name p_read77 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read77 \
    op interface \
    ports { p_read77 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 582 \
    name p_read78 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read78 \
    op interface \
    ports { p_read78 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 583 \
    name p_read79 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read79 \
    op interface \
    ports { p_read79 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 584 \
    name p_read80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read80 \
    op interface \
    ports { p_read80 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 585 \
    name p_read81 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read81 \
    op interface \
    ports { p_read81 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 586 \
    name p_read82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read82 \
    op interface \
    ports { p_read82 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 587 \
    name p_read83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read83 \
    op interface \
    ports { p_read83 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 588 \
    name p_read84 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read84 \
    op interface \
    ports { p_read84 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 589 \
    name p_read85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read85 \
    op interface \
    ports { p_read85 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 590 \
    name p_read86 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read86 \
    op interface \
    ports { p_read86 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 591 \
    name p_read87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read87 \
    op interface \
    ports { p_read87 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 592 \
    name p_read88 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read88 \
    op interface \
    ports { p_read88 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 593 \
    name p_read89 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read89 \
    op interface \
    ports { p_read89 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 594 \
    name p_read90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read90 \
    op interface \
    ports { p_read90 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 595 \
    name p_read91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read91 \
    op interface \
    ports { p_read91 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 596 \
    name p_read92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read92 \
    op interface \
    ports { p_read92 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 597 \
    name p_read93 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read93 \
    op interface \
    ports { p_read93 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 598 \
    name p_read94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read94 \
    op interface \
    ports { p_read94 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 599 \
    name p_read95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read95 \
    op interface \
    ports { p_read95 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 600 \
    name p_read96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read96 \
    op interface \
    ports { p_read96 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 601 \
    name Iy_mem_0_0 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_0 \
    op interface \
    ports { Iy_mem_0_0 { O 10 vector } Iy_mem_0_0_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 602 \
    name Iy_mem_0_1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_1 \
    op interface \
    ports { Iy_mem_0_1 { O 10 vector } Iy_mem_0_1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 603 \
    name Iy_mem_0_2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_2 \
    op interface \
    ports { Iy_mem_0_2 { O 10 vector } Iy_mem_0_2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 604 \
    name Iy_mem_0_3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_3 \
    op interface \
    ports { Iy_mem_0_3 { O 10 vector } Iy_mem_0_3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 605 \
    name Iy_mem_0_4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_4 \
    op interface \
    ports { Iy_mem_0_4 { O 10 vector } Iy_mem_0_4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 606 \
    name Iy_mem_0_5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_5 \
    op interface \
    ports { Iy_mem_0_5 { O 10 vector } Iy_mem_0_5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 607 \
    name Iy_mem_0_6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_6 \
    op interface \
    ports { Iy_mem_0_6 { O 10 vector } Iy_mem_0_6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 608 \
    name Iy_mem_0_7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_7 \
    op interface \
    ports { Iy_mem_0_7 { O 10 vector } Iy_mem_0_7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 609 \
    name Iy_mem_0_8 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_8 \
    op interface \
    ports { Iy_mem_0_8 { O 10 vector } Iy_mem_0_8_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 610 \
    name Iy_mem_0_9 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_9 \
    op interface \
    ports { Iy_mem_0_9 { O 10 vector } Iy_mem_0_9_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 611 \
    name Iy_mem_0_10 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_10 \
    op interface \
    ports { Iy_mem_0_10 { O 10 vector } Iy_mem_0_10_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 612 \
    name Iy_mem_0_11 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_11 \
    op interface \
    ports { Iy_mem_0_11 { O 10 vector } Iy_mem_0_11_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 613 \
    name Iy_mem_0_12 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_12 \
    op interface \
    ports { Iy_mem_0_12 { O 10 vector } Iy_mem_0_12_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 614 \
    name Iy_mem_0_13 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_13 \
    op interface \
    ports { Iy_mem_0_13 { O 10 vector } Iy_mem_0_13_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 615 \
    name Iy_mem_0_14 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_14 \
    op interface \
    ports { Iy_mem_0_14 { O 10 vector } Iy_mem_0_14_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 616 \
    name Iy_mem_0_15 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_15 \
    op interface \
    ports { Iy_mem_0_15 { O 10 vector } Iy_mem_0_15_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 617 \
    name Iy_mem_0_16 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_16 \
    op interface \
    ports { Iy_mem_0_16 { O 10 vector } Iy_mem_0_16_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 618 \
    name Iy_mem_0_17 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_17 \
    op interface \
    ports { Iy_mem_0_17 { O 10 vector } Iy_mem_0_17_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 619 \
    name Iy_mem_0_18 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_18 \
    op interface \
    ports { Iy_mem_0_18 { O 10 vector } Iy_mem_0_18_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 620 \
    name Iy_mem_0_19 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_19 \
    op interface \
    ports { Iy_mem_0_19 { O 10 vector } Iy_mem_0_19_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 621 \
    name Iy_mem_0_20 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_20 \
    op interface \
    ports { Iy_mem_0_20 { O 10 vector } Iy_mem_0_20_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 622 \
    name Iy_mem_0_21 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_21 \
    op interface \
    ports { Iy_mem_0_21 { O 10 vector } Iy_mem_0_21_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 623 \
    name Iy_mem_0_22 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_22 \
    op interface \
    ports { Iy_mem_0_22 { O 10 vector } Iy_mem_0_22_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 624 \
    name Iy_mem_0_23 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_23 \
    op interface \
    ports { Iy_mem_0_23 { O 10 vector } Iy_mem_0_23_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 625 \
    name Iy_mem_0_24 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_24 \
    op interface \
    ports { Iy_mem_0_24 { O 10 vector } Iy_mem_0_24_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 626 \
    name Iy_mem_0_25 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_25 \
    op interface \
    ports { Iy_mem_0_25 { O 10 vector } Iy_mem_0_25_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 627 \
    name Iy_mem_0_26 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_26 \
    op interface \
    ports { Iy_mem_0_26 { O 10 vector } Iy_mem_0_26_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 628 \
    name Iy_mem_0_27 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_27 \
    op interface \
    ports { Iy_mem_0_27 { O 10 vector } Iy_mem_0_27_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 629 \
    name Iy_mem_0_28 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_28 \
    op interface \
    ports { Iy_mem_0_28 { O 10 vector } Iy_mem_0_28_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 630 \
    name Iy_mem_0_29 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_29 \
    op interface \
    ports { Iy_mem_0_29 { O 10 vector } Iy_mem_0_29_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 631 \
    name Iy_mem_0_30 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_30 \
    op interface \
    ports { Iy_mem_0_30 { O 10 vector } Iy_mem_0_30_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 632 \
    name Iy_mem_0_31 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_0_31 \
    op interface \
    ports { Iy_mem_0_31 { O 10 vector } Iy_mem_0_31_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 633 \
    name p_read97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read97 \
    op interface \
    ports { p_read97 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 634 \
    name p_read98 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read98 \
    op interface \
    ports { p_read98 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 635 \
    name p_read99 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read99 \
    op interface \
    ports { p_read99 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 636 \
    name p_read100 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read100 \
    op interface \
    ports { p_read100 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 637 \
    name p_read101 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read101 \
    op interface \
    ports { p_read101 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 638 \
    name p_read102 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read102 \
    op interface \
    ports { p_read102 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 639 \
    name p_read103 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read103 \
    op interface \
    ports { p_read103 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 640 \
    name p_read104 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read104 \
    op interface \
    ports { p_read104 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 641 \
    name p_read105 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read105 \
    op interface \
    ports { p_read105 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 642 \
    name p_read106 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read106 \
    op interface \
    ports { p_read106 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 643 \
    name p_read107 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read107 \
    op interface \
    ports { p_read107 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 644 \
    name p_read108 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read108 \
    op interface \
    ports { p_read108 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 645 \
    name p_read109 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read109 \
    op interface \
    ports { p_read109 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 646 \
    name p_read110 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read110 \
    op interface \
    ports { p_read110 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 647 \
    name p_read111 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read111 \
    op interface \
    ports { p_read111 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 648 \
    name p_read112 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read112 \
    op interface \
    ports { p_read112 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 649 \
    name p_read113 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read113 \
    op interface \
    ports { p_read113 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 650 \
    name p_read114 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read114 \
    op interface \
    ports { p_read114 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 651 \
    name p_read115 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read115 \
    op interface \
    ports { p_read115 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 652 \
    name p_read116 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read116 \
    op interface \
    ports { p_read116 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 653 \
    name p_read117 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read117 \
    op interface \
    ports { p_read117 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 654 \
    name p_read118 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read118 \
    op interface \
    ports { p_read118 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 655 \
    name p_read119 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read119 \
    op interface \
    ports { p_read119 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 656 \
    name p_read120 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read120 \
    op interface \
    ports { p_read120 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 657 \
    name p_read121 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read121 \
    op interface \
    ports { p_read121 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 658 \
    name p_read122 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read122 \
    op interface \
    ports { p_read122 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 659 \
    name p_read123 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read123 \
    op interface \
    ports { p_read123 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 660 \
    name p_read124 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read124 \
    op interface \
    ports { p_read124 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 661 \
    name p_read125 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read125 \
    op interface \
    ports { p_read125 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 662 \
    name p_read126 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read126 \
    op interface \
    ports { p_read126 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 663 \
    name p_read127 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read127 \
    op interface \
    ports { p_read127 { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 664 \
    name p_read128 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read128 \
    op interface \
    ports { p_read128 { I 10 vector } } \
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

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 1 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
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
    id -4 \
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


