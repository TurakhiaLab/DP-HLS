# This script segment is generated automatically by AutoPilot

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
    id 4988 \
    name reference_string_comp_7 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reference_string_comp_7 \
    op interface \
    ports { reference_string_comp_7_address0 { O 6 vector } reference_string_comp_7_ce0 { O 1 bit } reference_string_comp_7_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reference_string_comp_7'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4924 \
    name local_reference_V_3_15_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_15_18_reload \
    op interface \
    ports { local_reference_V_3_15_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4925 \
    name local_reference_V_2_15_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_15_18_reload \
    op interface \
    ports { local_reference_V_2_15_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4926 \
    name local_reference_V_1_15_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_15_18_reload \
    op interface \
    ports { local_reference_V_1_15_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4927 \
    name local_reference_V_0_15_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_15_18_reload \
    op interface \
    ports { local_reference_V_0_15_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4928 \
    name local_reference_V_3_14_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_14_18_reload \
    op interface \
    ports { local_reference_V_3_14_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4929 \
    name local_reference_V_2_14_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_14_18_reload \
    op interface \
    ports { local_reference_V_2_14_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4930 \
    name local_reference_V_1_14_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_14_18_reload \
    op interface \
    ports { local_reference_V_1_14_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4931 \
    name local_reference_V_0_14_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_14_18_reload \
    op interface \
    ports { local_reference_V_0_14_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4932 \
    name local_reference_V_3_13_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_13_18_reload \
    op interface \
    ports { local_reference_V_3_13_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4933 \
    name local_reference_V_2_13_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_13_18_reload \
    op interface \
    ports { local_reference_V_2_13_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4934 \
    name local_reference_V_1_13_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_13_18_reload \
    op interface \
    ports { local_reference_V_1_13_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4935 \
    name local_reference_V_0_13_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_13_18_reload \
    op interface \
    ports { local_reference_V_0_13_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4936 \
    name local_reference_V_3_12_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_12_18_reload \
    op interface \
    ports { local_reference_V_3_12_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4937 \
    name local_reference_V_2_12_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_12_18_reload \
    op interface \
    ports { local_reference_V_2_12_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4938 \
    name local_reference_V_1_12_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_12_18_reload \
    op interface \
    ports { local_reference_V_1_12_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4939 \
    name local_reference_V_0_12_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_12_18_reload \
    op interface \
    ports { local_reference_V_0_12_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4940 \
    name local_reference_V_3_11_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_11_18_reload \
    op interface \
    ports { local_reference_V_3_11_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4941 \
    name local_reference_V_2_11_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_11_18_reload \
    op interface \
    ports { local_reference_V_2_11_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4942 \
    name local_reference_V_1_11_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_11_18_reload \
    op interface \
    ports { local_reference_V_1_11_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4943 \
    name local_reference_V_0_11_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_11_18_reload \
    op interface \
    ports { local_reference_V_0_11_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4944 \
    name local_reference_V_3_10_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_10_18_reload \
    op interface \
    ports { local_reference_V_3_10_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4945 \
    name local_reference_V_2_10_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_10_18_reload \
    op interface \
    ports { local_reference_V_2_10_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4946 \
    name local_reference_V_1_10_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_10_18_reload \
    op interface \
    ports { local_reference_V_1_10_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4947 \
    name local_reference_V_0_10_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_10_18_reload \
    op interface \
    ports { local_reference_V_0_10_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4948 \
    name local_reference_V_3_9_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_9_18_reload \
    op interface \
    ports { local_reference_V_3_9_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4949 \
    name local_reference_V_2_9_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_9_18_reload \
    op interface \
    ports { local_reference_V_2_9_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4950 \
    name local_reference_V_1_9_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_9_18_reload \
    op interface \
    ports { local_reference_V_1_9_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4951 \
    name local_reference_V_0_9_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_9_18_reload \
    op interface \
    ports { local_reference_V_0_9_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4952 \
    name local_reference_V_3_8_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_8_18_reload \
    op interface \
    ports { local_reference_V_3_8_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4953 \
    name local_reference_V_2_8_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_8_18_reload \
    op interface \
    ports { local_reference_V_2_8_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4954 \
    name local_reference_V_1_8_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_8_18_reload \
    op interface \
    ports { local_reference_V_1_8_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4955 \
    name local_reference_V_0_8_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_8_18_reload \
    op interface \
    ports { local_reference_V_0_8_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4956 \
    name local_reference_V_3_7_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_7_18_reload \
    op interface \
    ports { local_reference_V_3_7_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4957 \
    name local_reference_V_2_7_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_7_18_reload \
    op interface \
    ports { local_reference_V_2_7_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4958 \
    name local_reference_V_1_7_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_7_18_reload \
    op interface \
    ports { local_reference_V_1_7_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4959 \
    name local_reference_V_0_7_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_7_18_reload \
    op interface \
    ports { local_reference_V_0_7_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4960 \
    name local_reference_V_3_6_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_6_18_reload \
    op interface \
    ports { local_reference_V_3_6_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4961 \
    name local_reference_V_2_6_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_6_18_reload \
    op interface \
    ports { local_reference_V_2_6_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4962 \
    name local_reference_V_1_6_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_6_18_reload \
    op interface \
    ports { local_reference_V_1_6_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4963 \
    name local_reference_V_0_6_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_6_18_reload \
    op interface \
    ports { local_reference_V_0_6_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4964 \
    name local_reference_V_3_5_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_5_18_reload \
    op interface \
    ports { local_reference_V_3_5_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4965 \
    name local_reference_V_2_5_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_5_18_reload \
    op interface \
    ports { local_reference_V_2_5_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4966 \
    name local_reference_V_1_5_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_5_18_reload \
    op interface \
    ports { local_reference_V_1_5_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4967 \
    name local_reference_V_0_5_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_5_18_reload \
    op interface \
    ports { local_reference_V_0_5_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4968 \
    name local_reference_V_3_4_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_4_18_reload \
    op interface \
    ports { local_reference_V_3_4_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4969 \
    name local_reference_V_2_4_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_4_18_reload \
    op interface \
    ports { local_reference_V_2_4_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4970 \
    name local_reference_V_1_4_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_4_18_reload \
    op interface \
    ports { local_reference_V_1_4_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4971 \
    name local_reference_V_0_4_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_4_18_reload \
    op interface \
    ports { local_reference_V_0_4_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4972 \
    name local_reference_V_3_3_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_3_18_reload \
    op interface \
    ports { local_reference_V_3_3_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4973 \
    name local_reference_V_2_3_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_3_18_reload \
    op interface \
    ports { local_reference_V_2_3_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4974 \
    name local_reference_V_1_3_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_3_18_reload \
    op interface \
    ports { local_reference_V_1_3_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4975 \
    name local_reference_V_0_3_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_3_18_reload \
    op interface \
    ports { local_reference_V_0_3_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4976 \
    name local_reference_V_3_2_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_2_18_reload \
    op interface \
    ports { local_reference_V_3_2_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4977 \
    name local_reference_V_2_2_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_2_18_reload \
    op interface \
    ports { local_reference_V_2_2_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4978 \
    name local_reference_V_1_2_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_2_18_reload \
    op interface \
    ports { local_reference_V_1_2_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4979 \
    name local_reference_V_0_2_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_2_18_reload \
    op interface \
    ports { local_reference_V_0_2_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4980 \
    name local_reference_V_3_1_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_1_18_reload \
    op interface \
    ports { local_reference_V_3_1_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4981 \
    name local_reference_V_2_1_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_1_18_reload \
    op interface \
    ports { local_reference_V_2_1_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4982 \
    name local_reference_V_1_1_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_1_18_reload \
    op interface \
    ports { local_reference_V_1_1_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4983 \
    name local_reference_V_0_1_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_1_18_reload \
    op interface \
    ports { local_reference_V_0_1_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4984 \
    name local_reference_V_3_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_18_reload \
    op interface \
    ports { local_reference_V_3_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4985 \
    name local_reference_V_2_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_18_reload \
    op interface \
    ports { local_reference_V_2_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4986 \
    name local_reference_V_1_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_18_reload \
    op interface \
    ports { local_reference_V_1_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4987 \
    name local_reference_V_0_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_18_reload \
    op interface \
    ports { local_reference_V_0_18_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4989 \
    name local_reference_V_3_15_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_15_21_out \
    op interface \
    ports { local_reference_V_3_15_21_out { O 2 vector } local_reference_V_3_15_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4990 \
    name local_reference_V_2_15_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_15_21_out \
    op interface \
    ports { local_reference_V_2_15_21_out { O 2 vector } local_reference_V_2_15_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4991 \
    name local_reference_V_1_15_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_15_21_out \
    op interface \
    ports { local_reference_V_1_15_21_out { O 2 vector } local_reference_V_1_15_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4992 \
    name local_reference_V_0_15_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_15_21_out \
    op interface \
    ports { local_reference_V_0_15_21_out { O 2 vector } local_reference_V_0_15_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4993 \
    name local_reference_V_3_14_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_14_21_out \
    op interface \
    ports { local_reference_V_3_14_21_out { O 2 vector } local_reference_V_3_14_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4994 \
    name local_reference_V_2_14_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_14_21_out \
    op interface \
    ports { local_reference_V_2_14_21_out { O 2 vector } local_reference_V_2_14_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4995 \
    name local_reference_V_1_14_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_14_21_out \
    op interface \
    ports { local_reference_V_1_14_21_out { O 2 vector } local_reference_V_1_14_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4996 \
    name local_reference_V_0_14_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_14_21_out \
    op interface \
    ports { local_reference_V_0_14_21_out { O 2 vector } local_reference_V_0_14_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4997 \
    name local_reference_V_3_13_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_13_21_out \
    op interface \
    ports { local_reference_V_3_13_21_out { O 2 vector } local_reference_V_3_13_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4998 \
    name local_reference_V_2_13_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_13_21_out \
    op interface \
    ports { local_reference_V_2_13_21_out { O 2 vector } local_reference_V_2_13_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4999 \
    name local_reference_V_1_13_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_13_21_out \
    op interface \
    ports { local_reference_V_1_13_21_out { O 2 vector } local_reference_V_1_13_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5000 \
    name local_reference_V_0_13_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_13_21_out \
    op interface \
    ports { local_reference_V_0_13_21_out { O 2 vector } local_reference_V_0_13_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5001 \
    name local_reference_V_3_12_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_12_21_out \
    op interface \
    ports { local_reference_V_3_12_21_out { O 2 vector } local_reference_V_3_12_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5002 \
    name local_reference_V_2_12_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_12_21_out \
    op interface \
    ports { local_reference_V_2_12_21_out { O 2 vector } local_reference_V_2_12_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5003 \
    name local_reference_V_1_12_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_12_21_out \
    op interface \
    ports { local_reference_V_1_12_21_out { O 2 vector } local_reference_V_1_12_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5004 \
    name local_reference_V_0_12_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_12_21_out \
    op interface \
    ports { local_reference_V_0_12_21_out { O 2 vector } local_reference_V_0_12_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5005 \
    name local_reference_V_3_11_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_11_21_out \
    op interface \
    ports { local_reference_V_3_11_21_out { O 2 vector } local_reference_V_3_11_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5006 \
    name local_reference_V_2_11_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_11_21_out \
    op interface \
    ports { local_reference_V_2_11_21_out { O 2 vector } local_reference_V_2_11_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5007 \
    name local_reference_V_1_11_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_11_21_out \
    op interface \
    ports { local_reference_V_1_11_21_out { O 2 vector } local_reference_V_1_11_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5008 \
    name local_reference_V_0_11_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_11_21_out \
    op interface \
    ports { local_reference_V_0_11_21_out { O 2 vector } local_reference_V_0_11_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5009 \
    name local_reference_V_3_10_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_10_21_out \
    op interface \
    ports { local_reference_V_3_10_21_out { O 2 vector } local_reference_V_3_10_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5010 \
    name local_reference_V_2_10_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_10_21_out \
    op interface \
    ports { local_reference_V_2_10_21_out { O 2 vector } local_reference_V_2_10_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5011 \
    name local_reference_V_1_10_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_10_21_out \
    op interface \
    ports { local_reference_V_1_10_21_out { O 2 vector } local_reference_V_1_10_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5012 \
    name local_reference_V_0_10_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_10_21_out \
    op interface \
    ports { local_reference_V_0_10_21_out { O 2 vector } local_reference_V_0_10_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5013 \
    name local_reference_V_3_9_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_9_21_out \
    op interface \
    ports { local_reference_V_3_9_21_out { O 2 vector } local_reference_V_3_9_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5014 \
    name local_reference_V_2_9_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_9_21_out \
    op interface \
    ports { local_reference_V_2_9_21_out { O 2 vector } local_reference_V_2_9_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5015 \
    name local_reference_V_1_9_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_9_21_out \
    op interface \
    ports { local_reference_V_1_9_21_out { O 2 vector } local_reference_V_1_9_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5016 \
    name local_reference_V_0_9_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_9_21_out \
    op interface \
    ports { local_reference_V_0_9_21_out { O 2 vector } local_reference_V_0_9_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5017 \
    name local_reference_V_3_8_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_8_21_out \
    op interface \
    ports { local_reference_V_3_8_21_out { O 2 vector } local_reference_V_3_8_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5018 \
    name local_reference_V_2_8_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_8_21_out \
    op interface \
    ports { local_reference_V_2_8_21_out { O 2 vector } local_reference_V_2_8_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5019 \
    name local_reference_V_1_8_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_8_21_out \
    op interface \
    ports { local_reference_V_1_8_21_out { O 2 vector } local_reference_V_1_8_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5020 \
    name local_reference_V_0_8_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_8_21_out \
    op interface \
    ports { local_reference_V_0_8_21_out { O 2 vector } local_reference_V_0_8_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5021 \
    name local_reference_V_3_7_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_7_21_out \
    op interface \
    ports { local_reference_V_3_7_21_out { O 2 vector } local_reference_V_3_7_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5022 \
    name local_reference_V_2_7_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_7_21_out \
    op interface \
    ports { local_reference_V_2_7_21_out { O 2 vector } local_reference_V_2_7_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5023 \
    name local_reference_V_1_7_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_7_21_out \
    op interface \
    ports { local_reference_V_1_7_21_out { O 2 vector } local_reference_V_1_7_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5024 \
    name local_reference_V_0_7_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_7_21_out \
    op interface \
    ports { local_reference_V_0_7_21_out { O 2 vector } local_reference_V_0_7_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5025 \
    name local_reference_V_3_6_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_6_21_out \
    op interface \
    ports { local_reference_V_3_6_21_out { O 2 vector } local_reference_V_3_6_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5026 \
    name local_reference_V_2_6_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_6_21_out \
    op interface \
    ports { local_reference_V_2_6_21_out { O 2 vector } local_reference_V_2_6_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5027 \
    name local_reference_V_1_6_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_6_21_out \
    op interface \
    ports { local_reference_V_1_6_21_out { O 2 vector } local_reference_V_1_6_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5028 \
    name local_reference_V_0_6_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_6_21_out \
    op interface \
    ports { local_reference_V_0_6_21_out { O 2 vector } local_reference_V_0_6_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5029 \
    name local_reference_V_3_5_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_5_21_out \
    op interface \
    ports { local_reference_V_3_5_21_out { O 2 vector } local_reference_V_3_5_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5030 \
    name local_reference_V_2_5_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_5_21_out \
    op interface \
    ports { local_reference_V_2_5_21_out { O 2 vector } local_reference_V_2_5_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5031 \
    name local_reference_V_1_5_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_5_21_out \
    op interface \
    ports { local_reference_V_1_5_21_out { O 2 vector } local_reference_V_1_5_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5032 \
    name local_reference_V_0_5_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_5_21_out \
    op interface \
    ports { local_reference_V_0_5_21_out { O 2 vector } local_reference_V_0_5_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5033 \
    name local_reference_V_3_4_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_4_21_out \
    op interface \
    ports { local_reference_V_3_4_21_out { O 2 vector } local_reference_V_3_4_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5034 \
    name local_reference_V_2_4_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_4_21_out \
    op interface \
    ports { local_reference_V_2_4_21_out { O 2 vector } local_reference_V_2_4_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5035 \
    name local_reference_V_1_4_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_4_21_out \
    op interface \
    ports { local_reference_V_1_4_21_out { O 2 vector } local_reference_V_1_4_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5036 \
    name local_reference_V_0_4_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_4_21_out \
    op interface \
    ports { local_reference_V_0_4_21_out { O 2 vector } local_reference_V_0_4_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5037 \
    name local_reference_V_3_3_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_3_21_out \
    op interface \
    ports { local_reference_V_3_3_21_out { O 2 vector } local_reference_V_3_3_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5038 \
    name local_reference_V_2_3_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_3_21_out \
    op interface \
    ports { local_reference_V_2_3_21_out { O 2 vector } local_reference_V_2_3_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5039 \
    name local_reference_V_1_3_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_3_21_out \
    op interface \
    ports { local_reference_V_1_3_21_out { O 2 vector } local_reference_V_1_3_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5040 \
    name local_reference_V_0_3_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_3_21_out \
    op interface \
    ports { local_reference_V_0_3_21_out { O 2 vector } local_reference_V_0_3_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5041 \
    name local_reference_V_3_2_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_2_21_out \
    op interface \
    ports { local_reference_V_3_2_21_out { O 2 vector } local_reference_V_3_2_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5042 \
    name local_reference_V_2_2_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_2_21_out \
    op interface \
    ports { local_reference_V_2_2_21_out { O 2 vector } local_reference_V_2_2_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5043 \
    name local_reference_V_1_2_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_2_21_out \
    op interface \
    ports { local_reference_V_1_2_21_out { O 2 vector } local_reference_V_1_2_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5044 \
    name local_reference_V_0_2_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_2_21_out \
    op interface \
    ports { local_reference_V_0_2_21_out { O 2 vector } local_reference_V_0_2_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5045 \
    name local_reference_V_3_1_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_1_21_out \
    op interface \
    ports { local_reference_V_3_1_21_out { O 2 vector } local_reference_V_3_1_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5046 \
    name local_reference_V_2_1_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_1_21_out \
    op interface \
    ports { local_reference_V_2_1_21_out { O 2 vector } local_reference_V_2_1_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5047 \
    name local_reference_V_1_1_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_1_21_out \
    op interface \
    ports { local_reference_V_1_1_21_out { O 2 vector } local_reference_V_1_1_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5048 \
    name local_reference_V_0_1_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_1_21_out \
    op interface \
    ports { local_reference_V_0_1_21_out { O 2 vector } local_reference_V_0_1_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5049 \
    name local_reference_V_3_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_21_out \
    op interface \
    ports { local_reference_V_3_21_out { O 2 vector } local_reference_V_3_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5050 \
    name local_reference_V_2_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_21_out \
    op interface \
    ports { local_reference_V_2_21_out { O 2 vector } local_reference_V_2_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5051 \
    name local_reference_V_1_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_21_out \
    op interface \
    ports { local_reference_V_1_21_out { O 2 vector } local_reference_V_1_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5052 \
    name local_reference_V_0_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_21_out \
    op interface \
    ports { local_reference_V_0_21_out { O 2 vector } local_reference_V_0_21_out_ap_vld { O 1 bit } } \
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


