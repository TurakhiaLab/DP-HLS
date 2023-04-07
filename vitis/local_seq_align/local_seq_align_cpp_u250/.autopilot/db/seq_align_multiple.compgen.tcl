# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 683 \
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
    id 684 \
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
    id 909 \
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
    id 910 \
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
    id 911 \
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
    id 912 \
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
    id 913 \
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
    id 914 \
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
    id 915 \
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
    id 916 \
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
    id 917 \
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
    id 918 \
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
    id 919 \
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
    id 920 \
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
    id 921 \
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
    id 922 \
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
    id 923 \
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
    id 924 \
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
    id 925 \
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
    id 926 \
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
    id 685 \
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
    id 686 \
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
    id 687 \
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
    id 688 \
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
    id 689 \
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
    id 690 \
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
    id 691 \
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
    id 692 \
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
    id 693 \
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
    id 694 \
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
    id 695 \
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
    id 696 \
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
    id 697 \
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
    id 698 \
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
    id 699 \
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
    id 700 \
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
    id 701 \
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
    id 702 \
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
    id 703 \
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
    id 704 \
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
    id 705 \
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
    id 706 \
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
    id 707 \
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
    id 708 \
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
    id 709 \
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
    id 710 \
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
    id 711 \
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
    id 712 \
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
    id 713 \
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
    id 714 \
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
    id 715 \
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
    id 716 \
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
    id 717 \
    name dp_mem_1_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_0 \
    op interface \
    ports { dp_mem_1_0_i { I 10 vector } dp_mem_1_0_o { O 10 vector } dp_mem_1_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 718 \
    name dp_mem_1_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_1 \
    op interface \
    ports { dp_mem_1_1_i { I 10 vector } dp_mem_1_1_o { O 10 vector } dp_mem_1_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 719 \
    name dp_mem_1_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_2 \
    op interface \
    ports { dp_mem_1_2_i { I 10 vector } dp_mem_1_2_o { O 10 vector } dp_mem_1_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 720 \
    name dp_mem_1_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_3 \
    op interface \
    ports { dp_mem_1_3_i { I 10 vector } dp_mem_1_3_o { O 10 vector } dp_mem_1_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 721 \
    name dp_mem_1_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_4 \
    op interface \
    ports { dp_mem_1_4_i { I 10 vector } dp_mem_1_4_o { O 10 vector } dp_mem_1_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 722 \
    name dp_mem_1_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_5 \
    op interface \
    ports { dp_mem_1_5_i { I 10 vector } dp_mem_1_5_o { O 10 vector } dp_mem_1_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 723 \
    name dp_mem_1_6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_6 \
    op interface \
    ports { dp_mem_1_6_i { I 10 vector } dp_mem_1_6_o { O 10 vector } dp_mem_1_6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 724 \
    name dp_mem_1_7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_7 \
    op interface \
    ports { dp_mem_1_7_i { I 10 vector } dp_mem_1_7_o { O 10 vector } dp_mem_1_7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 725 \
    name dp_mem_1_8 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_8 \
    op interface \
    ports { dp_mem_1_8_i { I 10 vector } dp_mem_1_8_o { O 10 vector } dp_mem_1_8_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 726 \
    name dp_mem_1_9 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_9 \
    op interface \
    ports { dp_mem_1_9_i { I 10 vector } dp_mem_1_9_o { O 10 vector } dp_mem_1_9_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 727 \
    name dp_mem_1_10 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_10 \
    op interface \
    ports { dp_mem_1_10_i { I 10 vector } dp_mem_1_10_o { O 10 vector } dp_mem_1_10_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 728 \
    name dp_mem_1_11 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_11 \
    op interface \
    ports { dp_mem_1_11_i { I 10 vector } dp_mem_1_11_o { O 10 vector } dp_mem_1_11_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 729 \
    name dp_mem_1_12 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_12 \
    op interface \
    ports { dp_mem_1_12_i { I 10 vector } dp_mem_1_12_o { O 10 vector } dp_mem_1_12_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 730 \
    name dp_mem_1_13 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_13 \
    op interface \
    ports { dp_mem_1_13_i { I 10 vector } dp_mem_1_13_o { O 10 vector } dp_mem_1_13_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 731 \
    name dp_mem_1_14 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_14 \
    op interface \
    ports { dp_mem_1_14_i { I 10 vector } dp_mem_1_14_o { O 10 vector } dp_mem_1_14_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 732 \
    name dp_mem_1_15 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_15 \
    op interface \
    ports { dp_mem_1_15_i { I 10 vector } dp_mem_1_15_o { O 10 vector } dp_mem_1_15_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 733 \
    name dp_mem_1_16 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_16 \
    op interface \
    ports { dp_mem_1_16_i { I 10 vector } dp_mem_1_16_o { O 10 vector } dp_mem_1_16_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 734 \
    name dp_mem_1_17 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_17 \
    op interface \
    ports { dp_mem_1_17_i { I 10 vector } dp_mem_1_17_o { O 10 vector } dp_mem_1_17_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 735 \
    name dp_mem_1_18 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_18 \
    op interface \
    ports { dp_mem_1_18_i { I 10 vector } dp_mem_1_18_o { O 10 vector } dp_mem_1_18_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 736 \
    name dp_mem_1_19 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_19 \
    op interface \
    ports { dp_mem_1_19_i { I 10 vector } dp_mem_1_19_o { O 10 vector } dp_mem_1_19_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 737 \
    name dp_mem_1_20 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_20 \
    op interface \
    ports { dp_mem_1_20_i { I 10 vector } dp_mem_1_20_o { O 10 vector } dp_mem_1_20_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 738 \
    name dp_mem_1_21 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_21 \
    op interface \
    ports { dp_mem_1_21_i { I 10 vector } dp_mem_1_21_o { O 10 vector } dp_mem_1_21_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 739 \
    name dp_mem_1_22 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_22 \
    op interface \
    ports { dp_mem_1_22_i { I 10 vector } dp_mem_1_22_o { O 10 vector } dp_mem_1_22_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 740 \
    name dp_mem_1_23 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_23 \
    op interface \
    ports { dp_mem_1_23_i { I 10 vector } dp_mem_1_23_o { O 10 vector } dp_mem_1_23_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 741 \
    name dp_mem_1_24 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_24 \
    op interface \
    ports { dp_mem_1_24_i { I 10 vector } dp_mem_1_24_o { O 10 vector } dp_mem_1_24_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 742 \
    name dp_mem_1_25 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_25 \
    op interface \
    ports { dp_mem_1_25_i { I 10 vector } dp_mem_1_25_o { O 10 vector } dp_mem_1_25_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 743 \
    name dp_mem_1_26 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_26 \
    op interface \
    ports { dp_mem_1_26_i { I 10 vector } dp_mem_1_26_o { O 10 vector } dp_mem_1_26_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 744 \
    name dp_mem_1_27 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_27 \
    op interface \
    ports { dp_mem_1_27_i { I 10 vector } dp_mem_1_27_o { O 10 vector } dp_mem_1_27_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 745 \
    name dp_mem_1_28 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_28 \
    op interface \
    ports { dp_mem_1_28_i { I 10 vector } dp_mem_1_28_o { O 10 vector } dp_mem_1_28_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 746 \
    name dp_mem_1_29 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_29 \
    op interface \
    ports { dp_mem_1_29_i { I 10 vector } dp_mem_1_29_o { O 10 vector } dp_mem_1_29_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 747 \
    name dp_mem_1_30 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_30 \
    op interface \
    ports { dp_mem_1_30_i { I 10 vector } dp_mem_1_30_o { O 10 vector } dp_mem_1_30_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 748 \
    name dp_mem_1_31 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_1_31 \
    op interface \
    ports { dp_mem_1_31_i { I 10 vector } dp_mem_1_31_o { O 10 vector } dp_mem_1_31_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 749 \
    name dp_mem_2_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_0 \
    op interface \
    ports { dp_mem_2_0_i { I 10 vector } dp_mem_2_0_o { O 10 vector } dp_mem_2_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 750 \
    name dp_mem_2_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_1 \
    op interface \
    ports { dp_mem_2_1_i { I 10 vector } dp_mem_2_1_o { O 10 vector } dp_mem_2_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 751 \
    name dp_mem_2_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_2 \
    op interface \
    ports { dp_mem_2_2_i { I 10 vector } dp_mem_2_2_o { O 10 vector } dp_mem_2_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 752 \
    name dp_mem_2_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_3 \
    op interface \
    ports { dp_mem_2_3_i { I 10 vector } dp_mem_2_3_o { O 10 vector } dp_mem_2_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 753 \
    name dp_mem_2_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_4 \
    op interface \
    ports { dp_mem_2_4_i { I 10 vector } dp_mem_2_4_o { O 10 vector } dp_mem_2_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 754 \
    name dp_mem_2_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_5 \
    op interface \
    ports { dp_mem_2_5_i { I 10 vector } dp_mem_2_5_o { O 10 vector } dp_mem_2_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 755 \
    name dp_mem_2_6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_6 \
    op interface \
    ports { dp_mem_2_6_i { I 10 vector } dp_mem_2_6_o { O 10 vector } dp_mem_2_6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 756 \
    name dp_mem_2_7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_7 \
    op interface \
    ports { dp_mem_2_7_i { I 10 vector } dp_mem_2_7_o { O 10 vector } dp_mem_2_7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 757 \
    name dp_mem_2_8 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_8 \
    op interface \
    ports { dp_mem_2_8_i { I 10 vector } dp_mem_2_8_o { O 10 vector } dp_mem_2_8_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 758 \
    name dp_mem_2_9 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_9 \
    op interface \
    ports { dp_mem_2_9_i { I 10 vector } dp_mem_2_9_o { O 10 vector } dp_mem_2_9_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 759 \
    name dp_mem_2_10 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_10 \
    op interface \
    ports { dp_mem_2_10_i { I 10 vector } dp_mem_2_10_o { O 10 vector } dp_mem_2_10_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 760 \
    name dp_mem_2_11 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_11 \
    op interface \
    ports { dp_mem_2_11_i { I 10 vector } dp_mem_2_11_o { O 10 vector } dp_mem_2_11_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 761 \
    name dp_mem_2_12 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_12 \
    op interface \
    ports { dp_mem_2_12_i { I 10 vector } dp_mem_2_12_o { O 10 vector } dp_mem_2_12_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 762 \
    name dp_mem_2_13 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_13 \
    op interface \
    ports { dp_mem_2_13_i { I 10 vector } dp_mem_2_13_o { O 10 vector } dp_mem_2_13_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 763 \
    name dp_mem_2_14 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_14 \
    op interface \
    ports { dp_mem_2_14_i { I 10 vector } dp_mem_2_14_o { O 10 vector } dp_mem_2_14_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 764 \
    name dp_mem_2_15 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_15 \
    op interface \
    ports { dp_mem_2_15_i { I 10 vector } dp_mem_2_15_o { O 10 vector } dp_mem_2_15_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 765 \
    name dp_mem_2_16 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_16 \
    op interface \
    ports { dp_mem_2_16_i { I 10 vector } dp_mem_2_16_o { O 10 vector } dp_mem_2_16_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 766 \
    name dp_mem_2_17 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_17 \
    op interface \
    ports { dp_mem_2_17_i { I 10 vector } dp_mem_2_17_o { O 10 vector } dp_mem_2_17_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 767 \
    name dp_mem_2_18 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_18 \
    op interface \
    ports { dp_mem_2_18_i { I 10 vector } dp_mem_2_18_o { O 10 vector } dp_mem_2_18_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 768 \
    name dp_mem_2_19 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_19 \
    op interface \
    ports { dp_mem_2_19_i { I 10 vector } dp_mem_2_19_o { O 10 vector } dp_mem_2_19_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 769 \
    name dp_mem_2_20 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_20 \
    op interface \
    ports { dp_mem_2_20_i { I 10 vector } dp_mem_2_20_o { O 10 vector } dp_mem_2_20_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 770 \
    name dp_mem_2_21 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_21 \
    op interface \
    ports { dp_mem_2_21_i { I 10 vector } dp_mem_2_21_o { O 10 vector } dp_mem_2_21_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 771 \
    name dp_mem_2_22 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_22 \
    op interface \
    ports { dp_mem_2_22_i { I 10 vector } dp_mem_2_22_o { O 10 vector } dp_mem_2_22_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 772 \
    name dp_mem_2_23 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_23 \
    op interface \
    ports { dp_mem_2_23_i { I 10 vector } dp_mem_2_23_o { O 10 vector } dp_mem_2_23_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 773 \
    name dp_mem_2_24 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_24 \
    op interface \
    ports { dp_mem_2_24_i { I 10 vector } dp_mem_2_24_o { O 10 vector } dp_mem_2_24_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 774 \
    name dp_mem_2_25 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_25 \
    op interface \
    ports { dp_mem_2_25_i { I 10 vector } dp_mem_2_25_o { O 10 vector } dp_mem_2_25_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 775 \
    name dp_mem_2_26 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_26 \
    op interface \
    ports { dp_mem_2_26_i { I 10 vector } dp_mem_2_26_o { O 10 vector } dp_mem_2_26_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 776 \
    name dp_mem_2_27 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_27 \
    op interface \
    ports { dp_mem_2_27_i { I 10 vector } dp_mem_2_27_o { O 10 vector } dp_mem_2_27_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 777 \
    name dp_mem_2_28 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_28 \
    op interface \
    ports { dp_mem_2_28_i { I 10 vector } dp_mem_2_28_o { O 10 vector } dp_mem_2_28_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 778 \
    name dp_mem_2_29 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_29 \
    op interface \
    ports { dp_mem_2_29_i { I 10 vector } dp_mem_2_29_o { O 10 vector } dp_mem_2_29_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 779 \
    name dp_mem_2_30 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_30 \
    op interface \
    ports { dp_mem_2_30_i { I 10 vector } dp_mem_2_30_o { O 10 vector } dp_mem_2_30_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 780 \
    name dp_mem_2_31 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_dp_mem_2_31 \
    op interface \
    ports { dp_mem_2_31_i { I 10 vector } dp_mem_2_31_o { O 10 vector } dp_mem_2_31_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 781 \
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
    id 782 \
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
    id 783 \
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
    id 784 \
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
    id 785 \
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
    id 786 \
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
    id 787 \
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
    id 788 \
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
    id 789 \
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
    id 790 \
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
    id 791 \
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
    id 792 \
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
    id 793 \
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
    id 794 \
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
    id 795 \
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
    id 796 \
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
    id 797 \
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
    id 798 \
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
    id 799 \
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
    id 800 \
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
    id 801 \
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
    id 802 \
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
    id 803 \
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
    id 804 \
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
    id 805 \
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
    id 806 \
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
    id 807 \
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
    id 808 \
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
    id 809 \
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
    id 810 \
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
    id 811 \
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
    id 812 \
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
    id 813 \
    name Ix_mem_1_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_0 \
    op interface \
    ports { Ix_mem_1_0_i { I 10 vector } Ix_mem_1_0_o { O 10 vector } Ix_mem_1_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 814 \
    name Ix_mem_1_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_1 \
    op interface \
    ports { Ix_mem_1_1_i { I 10 vector } Ix_mem_1_1_o { O 10 vector } Ix_mem_1_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 815 \
    name Ix_mem_1_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_2 \
    op interface \
    ports { Ix_mem_1_2_i { I 10 vector } Ix_mem_1_2_o { O 10 vector } Ix_mem_1_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 816 \
    name Ix_mem_1_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_3 \
    op interface \
    ports { Ix_mem_1_3_i { I 10 vector } Ix_mem_1_3_o { O 10 vector } Ix_mem_1_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 817 \
    name Ix_mem_1_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_4 \
    op interface \
    ports { Ix_mem_1_4_i { I 10 vector } Ix_mem_1_4_o { O 10 vector } Ix_mem_1_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 818 \
    name Ix_mem_1_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_5 \
    op interface \
    ports { Ix_mem_1_5_i { I 10 vector } Ix_mem_1_5_o { O 10 vector } Ix_mem_1_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 819 \
    name Ix_mem_1_6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_6 \
    op interface \
    ports { Ix_mem_1_6_i { I 10 vector } Ix_mem_1_6_o { O 10 vector } Ix_mem_1_6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 820 \
    name Ix_mem_1_7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_7 \
    op interface \
    ports { Ix_mem_1_7_i { I 10 vector } Ix_mem_1_7_o { O 10 vector } Ix_mem_1_7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 821 \
    name Ix_mem_1_8 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_8 \
    op interface \
    ports { Ix_mem_1_8_i { I 10 vector } Ix_mem_1_8_o { O 10 vector } Ix_mem_1_8_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 822 \
    name Ix_mem_1_9 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_9 \
    op interface \
    ports { Ix_mem_1_9_i { I 10 vector } Ix_mem_1_9_o { O 10 vector } Ix_mem_1_9_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 823 \
    name Ix_mem_1_10 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_10 \
    op interface \
    ports { Ix_mem_1_10_i { I 10 vector } Ix_mem_1_10_o { O 10 vector } Ix_mem_1_10_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 824 \
    name Ix_mem_1_11 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_11 \
    op interface \
    ports { Ix_mem_1_11_i { I 10 vector } Ix_mem_1_11_o { O 10 vector } Ix_mem_1_11_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 825 \
    name Ix_mem_1_12 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_12 \
    op interface \
    ports { Ix_mem_1_12_i { I 10 vector } Ix_mem_1_12_o { O 10 vector } Ix_mem_1_12_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 826 \
    name Ix_mem_1_13 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_13 \
    op interface \
    ports { Ix_mem_1_13_i { I 10 vector } Ix_mem_1_13_o { O 10 vector } Ix_mem_1_13_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 827 \
    name Ix_mem_1_14 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_14 \
    op interface \
    ports { Ix_mem_1_14_i { I 10 vector } Ix_mem_1_14_o { O 10 vector } Ix_mem_1_14_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 828 \
    name Ix_mem_1_15 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_15 \
    op interface \
    ports { Ix_mem_1_15_i { I 10 vector } Ix_mem_1_15_o { O 10 vector } Ix_mem_1_15_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 829 \
    name Ix_mem_1_16 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_16 \
    op interface \
    ports { Ix_mem_1_16_i { I 10 vector } Ix_mem_1_16_o { O 10 vector } Ix_mem_1_16_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 830 \
    name Ix_mem_1_17 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_17 \
    op interface \
    ports { Ix_mem_1_17_i { I 10 vector } Ix_mem_1_17_o { O 10 vector } Ix_mem_1_17_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 831 \
    name Ix_mem_1_18 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_18 \
    op interface \
    ports { Ix_mem_1_18_i { I 10 vector } Ix_mem_1_18_o { O 10 vector } Ix_mem_1_18_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 832 \
    name Ix_mem_1_19 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_19 \
    op interface \
    ports { Ix_mem_1_19_i { I 10 vector } Ix_mem_1_19_o { O 10 vector } Ix_mem_1_19_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 833 \
    name Ix_mem_1_20 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_20 \
    op interface \
    ports { Ix_mem_1_20_i { I 10 vector } Ix_mem_1_20_o { O 10 vector } Ix_mem_1_20_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 834 \
    name Ix_mem_1_21 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_21 \
    op interface \
    ports { Ix_mem_1_21_i { I 10 vector } Ix_mem_1_21_o { O 10 vector } Ix_mem_1_21_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 835 \
    name Ix_mem_1_22 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_22 \
    op interface \
    ports { Ix_mem_1_22_i { I 10 vector } Ix_mem_1_22_o { O 10 vector } Ix_mem_1_22_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 836 \
    name Ix_mem_1_23 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_23 \
    op interface \
    ports { Ix_mem_1_23_i { I 10 vector } Ix_mem_1_23_o { O 10 vector } Ix_mem_1_23_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 837 \
    name Ix_mem_1_24 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_24 \
    op interface \
    ports { Ix_mem_1_24_i { I 10 vector } Ix_mem_1_24_o { O 10 vector } Ix_mem_1_24_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 838 \
    name Ix_mem_1_25 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_25 \
    op interface \
    ports { Ix_mem_1_25_i { I 10 vector } Ix_mem_1_25_o { O 10 vector } Ix_mem_1_25_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 839 \
    name Ix_mem_1_26 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_26 \
    op interface \
    ports { Ix_mem_1_26_i { I 10 vector } Ix_mem_1_26_o { O 10 vector } Ix_mem_1_26_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 840 \
    name Ix_mem_1_27 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_27 \
    op interface \
    ports { Ix_mem_1_27_i { I 10 vector } Ix_mem_1_27_o { O 10 vector } Ix_mem_1_27_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 841 \
    name Ix_mem_1_28 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_28 \
    op interface \
    ports { Ix_mem_1_28_i { I 10 vector } Ix_mem_1_28_o { O 10 vector } Ix_mem_1_28_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 842 \
    name Ix_mem_1_29 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_29 \
    op interface \
    ports { Ix_mem_1_29_i { I 10 vector } Ix_mem_1_29_o { O 10 vector } Ix_mem_1_29_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 843 \
    name Ix_mem_1_30 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_30 \
    op interface \
    ports { Ix_mem_1_30_i { I 10 vector } Ix_mem_1_30_o { O 10 vector } Ix_mem_1_30_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 844 \
    name Ix_mem_1_31 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Ix_mem_1_31 \
    op interface \
    ports { Ix_mem_1_31_i { I 10 vector } Ix_mem_1_31_o { O 10 vector } Ix_mem_1_31_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 845 \
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
    id 846 \
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
    id 847 \
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
    id 848 \
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
    id 849 \
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
    id 850 \
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
    id 851 \
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
    id 852 \
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
    id 853 \
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
    id 854 \
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
    id 855 \
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
    id 856 \
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
    id 857 \
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
    id 858 \
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
    id 859 \
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
    id 860 \
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
    id 861 \
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
    id 862 \
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
    id 863 \
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
    id 864 \
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
    id 865 \
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
    id 866 \
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
    id 867 \
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
    id 868 \
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
    id 869 \
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
    id 870 \
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
    id 871 \
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
    id 872 \
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
    id 873 \
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
    id 874 \
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
    id 875 \
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
    id 876 \
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
    id 877 \
    name Iy_mem_1_0 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_0 \
    op interface \
    ports { Iy_mem_1_0_i { I 10 vector } Iy_mem_1_0_o { O 10 vector } Iy_mem_1_0_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 878 \
    name Iy_mem_1_1 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_1 \
    op interface \
    ports { Iy_mem_1_1_i { I 10 vector } Iy_mem_1_1_o { O 10 vector } Iy_mem_1_1_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 879 \
    name Iy_mem_1_2 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_2 \
    op interface \
    ports { Iy_mem_1_2_i { I 10 vector } Iy_mem_1_2_o { O 10 vector } Iy_mem_1_2_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 880 \
    name Iy_mem_1_3 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_3 \
    op interface \
    ports { Iy_mem_1_3_i { I 10 vector } Iy_mem_1_3_o { O 10 vector } Iy_mem_1_3_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 881 \
    name Iy_mem_1_4 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_4 \
    op interface \
    ports { Iy_mem_1_4_i { I 10 vector } Iy_mem_1_4_o { O 10 vector } Iy_mem_1_4_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 882 \
    name Iy_mem_1_5 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_5 \
    op interface \
    ports { Iy_mem_1_5_i { I 10 vector } Iy_mem_1_5_o { O 10 vector } Iy_mem_1_5_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 883 \
    name Iy_mem_1_6 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_6 \
    op interface \
    ports { Iy_mem_1_6_i { I 10 vector } Iy_mem_1_6_o { O 10 vector } Iy_mem_1_6_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 884 \
    name Iy_mem_1_7 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_7 \
    op interface \
    ports { Iy_mem_1_7_i { I 10 vector } Iy_mem_1_7_o { O 10 vector } Iy_mem_1_7_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 885 \
    name Iy_mem_1_8 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_8 \
    op interface \
    ports { Iy_mem_1_8_i { I 10 vector } Iy_mem_1_8_o { O 10 vector } Iy_mem_1_8_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 886 \
    name Iy_mem_1_9 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_9 \
    op interface \
    ports { Iy_mem_1_9_i { I 10 vector } Iy_mem_1_9_o { O 10 vector } Iy_mem_1_9_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 887 \
    name Iy_mem_1_10 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_10 \
    op interface \
    ports { Iy_mem_1_10_i { I 10 vector } Iy_mem_1_10_o { O 10 vector } Iy_mem_1_10_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 888 \
    name Iy_mem_1_11 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_11 \
    op interface \
    ports { Iy_mem_1_11_i { I 10 vector } Iy_mem_1_11_o { O 10 vector } Iy_mem_1_11_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 889 \
    name Iy_mem_1_12 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_12 \
    op interface \
    ports { Iy_mem_1_12_i { I 10 vector } Iy_mem_1_12_o { O 10 vector } Iy_mem_1_12_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 890 \
    name Iy_mem_1_13 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_13 \
    op interface \
    ports { Iy_mem_1_13_i { I 10 vector } Iy_mem_1_13_o { O 10 vector } Iy_mem_1_13_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 891 \
    name Iy_mem_1_14 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_14 \
    op interface \
    ports { Iy_mem_1_14_i { I 10 vector } Iy_mem_1_14_o { O 10 vector } Iy_mem_1_14_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 892 \
    name Iy_mem_1_15 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_15 \
    op interface \
    ports { Iy_mem_1_15_i { I 10 vector } Iy_mem_1_15_o { O 10 vector } Iy_mem_1_15_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 893 \
    name Iy_mem_1_16 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_16 \
    op interface \
    ports { Iy_mem_1_16_i { I 10 vector } Iy_mem_1_16_o { O 10 vector } Iy_mem_1_16_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 894 \
    name Iy_mem_1_17 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_17 \
    op interface \
    ports { Iy_mem_1_17_i { I 10 vector } Iy_mem_1_17_o { O 10 vector } Iy_mem_1_17_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 895 \
    name Iy_mem_1_18 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_18 \
    op interface \
    ports { Iy_mem_1_18_i { I 10 vector } Iy_mem_1_18_o { O 10 vector } Iy_mem_1_18_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 896 \
    name Iy_mem_1_19 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_19 \
    op interface \
    ports { Iy_mem_1_19_i { I 10 vector } Iy_mem_1_19_o { O 10 vector } Iy_mem_1_19_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 897 \
    name Iy_mem_1_20 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_20 \
    op interface \
    ports { Iy_mem_1_20_i { I 10 vector } Iy_mem_1_20_o { O 10 vector } Iy_mem_1_20_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 898 \
    name Iy_mem_1_21 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_21 \
    op interface \
    ports { Iy_mem_1_21_i { I 10 vector } Iy_mem_1_21_o { O 10 vector } Iy_mem_1_21_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 899 \
    name Iy_mem_1_22 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_22 \
    op interface \
    ports { Iy_mem_1_22_i { I 10 vector } Iy_mem_1_22_o { O 10 vector } Iy_mem_1_22_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 900 \
    name Iy_mem_1_23 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_23 \
    op interface \
    ports { Iy_mem_1_23_i { I 10 vector } Iy_mem_1_23_o { O 10 vector } Iy_mem_1_23_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 901 \
    name Iy_mem_1_24 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_24 \
    op interface \
    ports { Iy_mem_1_24_i { I 10 vector } Iy_mem_1_24_o { O 10 vector } Iy_mem_1_24_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 902 \
    name Iy_mem_1_25 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_25 \
    op interface \
    ports { Iy_mem_1_25_i { I 10 vector } Iy_mem_1_25_o { O 10 vector } Iy_mem_1_25_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 903 \
    name Iy_mem_1_26 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_26 \
    op interface \
    ports { Iy_mem_1_26_i { I 10 vector } Iy_mem_1_26_o { O 10 vector } Iy_mem_1_26_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 904 \
    name Iy_mem_1_27 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_27 \
    op interface \
    ports { Iy_mem_1_27_i { I 10 vector } Iy_mem_1_27_o { O 10 vector } Iy_mem_1_27_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 905 \
    name Iy_mem_1_28 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_28 \
    op interface \
    ports { Iy_mem_1_28_i { I 10 vector } Iy_mem_1_28_o { O 10 vector } Iy_mem_1_28_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 906 \
    name Iy_mem_1_29 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_29 \
    op interface \
    ports { Iy_mem_1_29_i { I 10 vector } Iy_mem_1_29_o { O 10 vector } Iy_mem_1_29_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 907 \
    name Iy_mem_1_30 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_30 \
    op interface \
    ports { Iy_mem_1_30_i { I 10 vector } Iy_mem_1_30_o { O 10 vector } Iy_mem_1_30_o_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 908 \
    name Iy_mem_1_31 \
    type other \
    dir IO \
    reset_level 1 \
    sync_rst true \
    corename dc_Iy_mem_1_31 \
    op interface \
    ports { Iy_mem_1_31_i { I 10 vector } Iy_mem_1_31_o { O 10 vector } Iy_mem_1_31_o_ap_vld { O 1 bit } } \
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


