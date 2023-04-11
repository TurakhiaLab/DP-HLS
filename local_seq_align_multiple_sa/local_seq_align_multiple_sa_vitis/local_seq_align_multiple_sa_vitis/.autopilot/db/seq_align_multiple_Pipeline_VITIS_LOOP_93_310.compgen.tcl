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
    id 2140 \
    name reference_string_comp_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reference_string_comp_3 \
    op interface \
    ports { reference_string_comp_3_address0 { O 6 vector } reference_string_comp_3_ce0 { O 1 bit } reference_string_comp_3_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reference_string_comp_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2076 \
    name local_reference_V_3_15_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_15_6_reload \
    op interface \
    ports { local_reference_V_3_15_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2077 \
    name local_reference_V_2_15_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_15_6_reload \
    op interface \
    ports { local_reference_V_2_15_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2078 \
    name local_reference_V_1_15_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_15_6_reload \
    op interface \
    ports { local_reference_V_1_15_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2079 \
    name local_reference_V_0_15_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_15_6_reload \
    op interface \
    ports { local_reference_V_0_15_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2080 \
    name local_reference_V_3_14_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_14_6_reload \
    op interface \
    ports { local_reference_V_3_14_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2081 \
    name local_reference_V_2_14_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_14_6_reload \
    op interface \
    ports { local_reference_V_2_14_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2082 \
    name local_reference_V_1_14_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_14_6_reload \
    op interface \
    ports { local_reference_V_1_14_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2083 \
    name local_reference_V_0_14_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_14_6_reload \
    op interface \
    ports { local_reference_V_0_14_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2084 \
    name local_reference_V_3_13_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_13_6_reload \
    op interface \
    ports { local_reference_V_3_13_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2085 \
    name local_reference_V_2_13_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_13_6_reload \
    op interface \
    ports { local_reference_V_2_13_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2086 \
    name local_reference_V_1_13_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_13_6_reload \
    op interface \
    ports { local_reference_V_1_13_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2087 \
    name local_reference_V_0_13_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_13_6_reload \
    op interface \
    ports { local_reference_V_0_13_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2088 \
    name local_reference_V_3_12_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_12_6_reload \
    op interface \
    ports { local_reference_V_3_12_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2089 \
    name local_reference_V_2_12_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_12_6_reload \
    op interface \
    ports { local_reference_V_2_12_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2090 \
    name local_reference_V_1_12_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_12_6_reload \
    op interface \
    ports { local_reference_V_1_12_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2091 \
    name local_reference_V_0_12_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_12_6_reload \
    op interface \
    ports { local_reference_V_0_12_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2092 \
    name local_reference_V_3_11_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_11_6_reload \
    op interface \
    ports { local_reference_V_3_11_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2093 \
    name local_reference_V_2_11_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_11_6_reload \
    op interface \
    ports { local_reference_V_2_11_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2094 \
    name local_reference_V_1_11_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_11_6_reload \
    op interface \
    ports { local_reference_V_1_11_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2095 \
    name local_reference_V_0_11_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_11_6_reload \
    op interface \
    ports { local_reference_V_0_11_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2096 \
    name local_reference_V_3_10_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_10_6_reload \
    op interface \
    ports { local_reference_V_3_10_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2097 \
    name local_reference_V_2_10_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_10_6_reload \
    op interface \
    ports { local_reference_V_2_10_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2098 \
    name local_reference_V_1_10_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_10_6_reload \
    op interface \
    ports { local_reference_V_1_10_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2099 \
    name local_reference_V_0_10_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_10_6_reload \
    op interface \
    ports { local_reference_V_0_10_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2100 \
    name local_reference_V_3_9_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_9_6_reload \
    op interface \
    ports { local_reference_V_3_9_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2101 \
    name local_reference_V_2_9_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_9_6_reload \
    op interface \
    ports { local_reference_V_2_9_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2102 \
    name local_reference_V_1_9_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_9_6_reload \
    op interface \
    ports { local_reference_V_1_9_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2103 \
    name local_reference_V_0_9_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_9_6_reload \
    op interface \
    ports { local_reference_V_0_9_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2104 \
    name local_reference_V_3_8_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_8_6_reload \
    op interface \
    ports { local_reference_V_3_8_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2105 \
    name local_reference_V_2_8_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_8_6_reload \
    op interface \
    ports { local_reference_V_2_8_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2106 \
    name local_reference_V_1_8_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_8_6_reload \
    op interface \
    ports { local_reference_V_1_8_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2107 \
    name local_reference_V_0_8_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_8_6_reload \
    op interface \
    ports { local_reference_V_0_8_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2108 \
    name local_reference_V_3_7_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_7_6_reload \
    op interface \
    ports { local_reference_V_3_7_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2109 \
    name local_reference_V_2_7_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_7_6_reload \
    op interface \
    ports { local_reference_V_2_7_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2110 \
    name local_reference_V_1_7_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_7_6_reload \
    op interface \
    ports { local_reference_V_1_7_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2111 \
    name local_reference_V_0_7_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_7_6_reload \
    op interface \
    ports { local_reference_V_0_7_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2112 \
    name local_reference_V_3_6_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_6_6_reload \
    op interface \
    ports { local_reference_V_3_6_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2113 \
    name local_reference_V_2_6_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_6_6_reload \
    op interface \
    ports { local_reference_V_2_6_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2114 \
    name local_reference_V_1_6_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_6_6_reload \
    op interface \
    ports { local_reference_V_1_6_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2115 \
    name local_reference_V_0_6_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_6_6_reload \
    op interface \
    ports { local_reference_V_0_6_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2116 \
    name local_reference_V_3_5_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_5_6_reload \
    op interface \
    ports { local_reference_V_3_5_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2117 \
    name local_reference_V_2_5_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_5_6_reload \
    op interface \
    ports { local_reference_V_2_5_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2118 \
    name local_reference_V_1_5_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_5_6_reload \
    op interface \
    ports { local_reference_V_1_5_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2119 \
    name local_reference_V_0_5_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_5_6_reload \
    op interface \
    ports { local_reference_V_0_5_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2120 \
    name local_reference_V_3_4_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_4_6_reload \
    op interface \
    ports { local_reference_V_3_4_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2121 \
    name local_reference_V_2_4_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_4_6_reload \
    op interface \
    ports { local_reference_V_2_4_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2122 \
    name local_reference_V_1_4_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_4_6_reload \
    op interface \
    ports { local_reference_V_1_4_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2123 \
    name local_reference_V_0_4_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_4_6_reload \
    op interface \
    ports { local_reference_V_0_4_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2124 \
    name local_reference_V_3_3_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_3_6_reload \
    op interface \
    ports { local_reference_V_3_3_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2125 \
    name local_reference_V_2_3_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_3_6_reload \
    op interface \
    ports { local_reference_V_2_3_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2126 \
    name local_reference_V_1_3_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_3_6_reload \
    op interface \
    ports { local_reference_V_1_3_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2127 \
    name local_reference_V_0_3_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_3_6_reload \
    op interface \
    ports { local_reference_V_0_3_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2128 \
    name local_reference_V_3_2_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_2_6_reload \
    op interface \
    ports { local_reference_V_3_2_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2129 \
    name local_reference_V_2_2_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_2_6_reload \
    op interface \
    ports { local_reference_V_2_2_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2130 \
    name local_reference_V_1_2_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_2_6_reload \
    op interface \
    ports { local_reference_V_1_2_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2131 \
    name local_reference_V_0_2_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_2_6_reload \
    op interface \
    ports { local_reference_V_0_2_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2132 \
    name local_reference_V_3_1_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_1_6_reload \
    op interface \
    ports { local_reference_V_3_1_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2133 \
    name local_reference_V_2_1_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_1_6_reload \
    op interface \
    ports { local_reference_V_2_1_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2134 \
    name local_reference_V_1_1_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_1_6_reload \
    op interface \
    ports { local_reference_V_1_1_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2135 \
    name local_reference_V_0_1_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_1_6_reload \
    op interface \
    ports { local_reference_V_0_1_6_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2136 \
    name local_reference_V_3_657_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_657_reload \
    op interface \
    ports { local_reference_V_3_657_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2137 \
    name local_reference_V_2_642_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_642_reload \
    op interface \
    ports { local_reference_V_2_642_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2138 \
    name local_reference_V_1_627_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_627_reload \
    op interface \
    ports { local_reference_V_1_627_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2139 \
    name local_reference_V_0_611_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_611_reload \
    op interface \
    ports { local_reference_V_0_611_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2141 \
    name local_reference_V_3_15_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_15_9_out \
    op interface \
    ports { local_reference_V_3_15_9_out { O 2 vector } local_reference_V_3_15_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2142 \
    name local_reference_V_2_15_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_15_9_out \
    op interface \
    ports { local_reference_V_2_15_9_out { O 2 vector } local_reference_V_2_15_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2143 \
    name local_reference_V_1_15_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_15_9_out \
    op interface \
    ports { local_reference_V_1_15_9_out { O 2 vector } local_reference_V_1_15_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2144 \
    name local_reference_V_0_15_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_15_9_out \
    op interface \
    ports { local_reference_V_0_15_9_out { O 2 vector } local_reference_V_0_15_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2145 \
    name local_reference_V_3_14_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_14_9_out \
    op interface \
    ports { local_reference_V_3_14_9_out { O 2 vector } local_reference_V_3_14_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2146 \
    name local_reference_V_2_14_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_14_9_out \
    op interface \
    ports { local_reference_V_2_14_9_out { O 2 vector } local_reference_V_2_14_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2147 \
    name local_reference_V_1_14_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_14_9_out \
    op interface \
    ports { local_reference_V_1_14_9_out { O 2 vector } local_reference_V_1_14_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2148 \
    name local_reference_V_0_14_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_14_9_out \
    op interface \
    ports { local_reference_V_0_14_9_out { O 2 vector } local_reference_V_0_14_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2149 \
    name local_reference_V_3_13_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_13_9_out \
    op interface \
    ports { local_reference_V_3_13_9_out { O 2 vector } local_reference_V_3_13_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2150 \
    name local_reference_V_2_13_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_13_9_out \
    op interface \
    ports { local_reference_V_2_13_9_out { O 2 vector } local_reference_V_2_13_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2151 \
    name local_reference_V_1_13_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_13_9_out \
    op interface \
    ports { local_reference_V_1_13_9_out { O 2 vector } local_reference_V_1_13_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2152 \
    name local_reference_V_0_13_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_13_9_out \
    op interface \
    ports { local_reference_V_0_13_9_out { O 2 vector } local_reference_V_0_13_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2153 \
    name local_reference_V_3_12_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_12_9_out \
    op interface \
    ports { local_reference_V_3_12_9_out { O 2 vector } local_reference_V_3_12_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2154 \
    name local_reference_V_2_12_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_12_9_out \
    op interface \
    ports { local_reference_V_2_12_9_out { O 2 vector } local_reference_V_2_12_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2155 \
    name local_reference_V_1_12_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_12_9_out \
    op interface \
    ports { local_reference_V_1_12_9_out { O 2 vector } local_reference_V_1_12_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2156 \
    name local_reference_V_0_12_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_12_9_out \
    op interface \
    ports { local_reference_V_0_12_9_out { O 2 vector } local_reference_V_0_12_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2157 \
    name local_reference_V_3_11_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_11_9_out \
    op interface \
    ports { local_reference_V_3_11_9_out { O 2 vector } local_reference_V_3_11_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2158 \
    name local_reference_V_2_11_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_11_9_out \
    op interface \
    ports { local_reference_V_2_11_9_out { O 2 vector } local_reference_V_2_11_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2159 \
    name local_reference_V_1_11_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_11_9_out \
    op interface \
    ports { local_reference_V_1_11_9_out { O 2 vector } local_reference_V_1_11_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2160 \
    name local_reference_V_0_11_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_11_9_out \
    op interface \
    ports { local_reference_V_0_11_9_out { O 2 vector } local_reference_V_0_11_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2161 \
    name local_reference_V_3_10_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_10_9_out \
    op interface \
    ports { local_reference_V_3_10_9_out { O 2 vector } local_reference_V_3_10_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2162 \
    name local_reference_V_2_10_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_10_9_out \
    op interface \
    ports { local_reference_V_2_10_9_out { O 2 vector } local_reference_V_2_10_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2163 \
    name local_reference_V_1_10_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_10_9_out \
    op interface \
    ports { local_reference_V_1_10_9_out { O 2 vector } local_reference_V_1_10_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2164 \
    name local_reference_V_0_10_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_10_9_out \
    op interface \
    ports { local_reference_V_0_10_9_out { O 2 vector } local_reference_V_0_10_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2165 \
    name local_reference_V_3_9_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_9_9_out \
    op interface \
    ports { local_reference_V_3_9_9_out { O 2 vector } local_reference_V_3_9_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2166 \
    name local_reference_V_2_9_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_9_9_out \
    op interface \
    ports { local_reference_V_2_9_9_out { O 2 vector } local_reference_V_2_9_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2167 \
    name local_reference_V_1_9_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_9_9_out \
    op interface \
    ports { local_reference_V_1_9_9_out { O 2 vector } local_reference_V_1_9_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2168 \
    name local_reference_V_0_9_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_9_9_out \
    op interface \
    ports { local_reference_V_0_9_9_out { O 2 vector } local_reference_V_0_9_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2169 \
    name local_reference_V_3_8_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_8_9_out \
    op interface \
    ports { local_reference_V_3_8_9_out { O 2 vector } local_reference_V_3_8_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2170 \
    name local_reference_V_2_8_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_8_9_out \
    op interface \
    ports { local_reference_V_2_8_9_out { O 2 vector } local_reference_V_2_8_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2171 \
    name local_reference_V_1_8_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_8_9_out \
    op interface \
    ports { local_reference_V_1_8_9_out { O 2 vector } local_reference_V_1_8_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2172 \
    name local_reference_V_0_8_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_8_9_out \
    op interface \
    ports { local_reference_V_0_8_9_out { O 2 vector } local_reference_V_0_8_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2173 \
    name local_reference_V_3_7_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_7_9_out \
    op interface \
    ports { local_reference_V_3_7_9_out { O 2 vector } local_reference_V_3_7_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2174 \
    name local_reference_V_2_7_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_7_9_out \
    op interface \
    ports { local_reference_V_2_7_9_out { O 2 vector } local_reference_V_2_7_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2175 \
    name local_reference_V_1_7_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_7_9_out \
    op interface \
    ports { local_reference_V_1_7_9_out { O 2 vector } local_reference_V_1_7_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2176 \
    name local_reference_V_0_7_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_7_9_out \
    op interface \
    ports { local_reference_V_0_7_9_out { O 2 vector } local_reference_V_0_7_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2177 \
    name local_reference_V_3_6_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_6_9_out \
    op interface \
    ports { local_reference_V_3_6_9_out { O 2 vector } local_reference_V_3_6_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2178 \
    name local_reference_V_2_6_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_6_9_out \
    op interface \
    ports { local_reference_V_2_6_9_out { O 2 vector } local_reference_V_2_6_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2179 \
    name local_reference_V_1_6_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_6_9_out \
    op interface \
    ports { local_reference_V_1_6_9_out { O 2 vector } local_reference_V_1_6_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2180 \
    name local_reference_V_0_6_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_6_9_out \
    op interface \
    ports { local_reference_V_0_6_9_out { O 2 vector } local_reference_V_0_6_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2181 \
    name local_reference_V_3_5_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_5_9_out \
    op interface \
    ports { local_reference_V_3_5_9_out { O 2 vector } local_reference_V_3_5_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2182 \
    name local_reference_V_2_5_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_5_9_out \
    op interface \
    ports { local_reference_V_2_5_9_out { O 2 vector } local_reference_V_2_5_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2183 \
    name local_reference_V_1_5_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_5_9_out \
    op interface \
    ports { local_reference_V_1_5_9_out { O 2 vector } local_reference_V_1_5_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2184 \
    name local_reference_V_0_5_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_5_9_out \
    op interface \
    ports { local_reference_V_0_5_9_out { O 2 vector } local_reference_V_0_5_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2185 \
    name local_reference_V_3_4_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_4_9_out \
    op interface \
    ports { local_reference_V_3_4_9_out { O 2 vector } local_reference_V_3_4_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2186 \
    name local_reference_V_2_4_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_4_9_out \
    op interface \
    ports { local_reference_V_2_4_9_out { O 2 vector } local_reference_V_2_4_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2187 \
    name local_reference_V_1_4_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_4_9_out \
    op interface \
    ports { local_reference_V_1_4_9_out { O 2 vector } local_reference_V_1_4_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2188 \
    name local_reference_V_0_4_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_4_9_out \
    op interface \
    ports { local_reference_V_0_4_9_out { O 2 vector } local_reference_V_0_4_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2189 \
    name local_reference_V_3_3_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_3_9_out \
    op interface \
    ports { local_reference_V_3_3_9_out { O 2 vector } local_reference_V_3_3_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2190 \
    name local_reference_V_2_3_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_3_9_out \
    op interface \
    ports { local_reference_V_2_3_9_out { O 2 vector } local_reference_V_2_3_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2191 \
    name local_reference_V_1_3_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_3_9_out \
    op interface \
    ports { local_reference_V_1_3_9_out { O 2 vector } local_reference_V_1_3_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2192 \
    name local_reference_V_0_3_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_3_9_out \
    op interface \
    ports { local_reference_V_0_3_9_out { O 2 vector } local_reference_V_0_3_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2193 \
    name local_reference_V_3_2_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_2_9_out \
    op interface \
    ports { local_reference_V_3_2_9_out { O 2 vector } local_reference_V_3_2_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2194 \
    name local_reference_V_2_2_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_2_9_out \
    op interface \
    ports { local_reference_V_2_2_9_out { O 2 vector } local_reference_V_2_2_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2195 \
    name local_reference_V_1_2_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_2_9_out \
    op interface \
    ports { local_reference_V_1_2_9_out { O 2 vector } local_reference_V_1_2_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2196 \
    name local_reference_V_0_2_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_2_9_out \
    op interface \
    ports { local_reference_V_0_2_9_out { O 2 vector } local_reference_V_0_2_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2197 \
    name local_reference_V_3_1_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_1_9_out \
    op interface \
    ports { local_reference_V_3_1_9_out { O 2 vector } local_reference_V_3_1_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2198 \
    name local_reference_V_2_1_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_1_9_out \
    op interface \
    ports { local_reference_V_2_1_9_out { O 2 vector } local_reference_V_2_1_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2199 \
    name local_reference_V_1_1_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_1_9_out \
    op interface \
    ports { local_reference_V_1_1_9_out { O 2 vector } local_reference_V_1_1_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2200 \
    name local_reference_V_0_1_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_1_9_out \
    op interface \
    ports { local_reference_V_0_1_9_out { O 2 vector } local_reference_V_0_1_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2201 \
    name local_reference_V_3_960_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_960_out \
    op interface \
    ports { local_reference_V_3_960_out { O 2 vector } local_reference_V_3_960_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2202 \
    name local_reference_V_2_945_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_945_out \
    op interface \
    ports { local_reference_V_2_945_out { O 2 vector } local_reference_V_2_945_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2203 \
    name local_reference_V_1_930_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_930_out \
    op interface \
    ports { local_reference_V_1_930_out { O 2 vector } local_reference_V_1_930_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2204 \
    name local_reference_V_0_914_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_914_out \
    op interface \
    ports { local_reference_V_0_914_out { O 2 vector } local_reference_V_0_914_out_ap_vld { O 1 bit } } \
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


