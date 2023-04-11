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
    id 4276 \
    name reference_string_comp_6 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reference_string_comp_6 \
    op interface \
    ports { reference_string_comp_6_address0 { O 6 vector } reference_string_comp_6_ce0 { O 1 bit } reference_string_comp_6_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reference_string_comp_6'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4212 \
    name local_reference_V_3_15_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_15_15_reload \
    op interface \
    ports { local_reference_V_3_15_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4213 \
    name local_reference_V_2_15_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_15_15_reload \
    op interface \
    ports { local_reference_V_2_15_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4214 \
    name local_reference_V_1_15_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_15_15_reload \
    op interface \
    ports { local_reference_V_1_15_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4215 \
    name local_reference_V_0_15_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_15_15_reload \
    op interface \
    ports { local_reference_V_0_15_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4216 \
    name local_reference_V_3_14_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_14_15_reload \
    op interface \
    ports { local_reference_V_3_14_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4217 \
    name local_reference_V_2_14_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_14_15_reload \
    op interface \
    ports { local_reference_V_2_14_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4218 \
    name local_reference_V_1_14_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_14_15_reload \
    op interface \
    ports { local_reference_V_1_14_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4219 \
    name local_reference_V_0_14_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_14_15_reload \
    op interface \
    ports { local_reference_V_0_14_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4220 \
    name local_reference_V_3_13_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_13_15_reload \
    op interface \
    ports { local_reference_V_3_13_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4221 \
    name local_reference_V_2_13_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_13_15_reload \
    op interface \
    ports { local_reference_V_2_13_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4222 \
    name local_reference_V_1_13_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_13_15_reload \
    op interface \
    ports { local_reference_V_1_13_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4223 \
    name local_reference_V_0_13_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_13_15_reload \
    op interface \
    ports { local_reference_V_0_13_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4224 \
    name local_reference_V_3_12_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_12_15_reload \
    op interface \
    ports { local_reference_V_3_12_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4225 \
    name local_reference_V_2_12_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_12_15_reload \
    op interface \
    ports { local_reference_V_2_12_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4226 \
    name local_reference_V_1_12_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_12_15_reload \
    op interface \
    ports { local_reference_V_1_12_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4227 \
    name local_reference_V_0_12_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_12_15_reload \
    op interface \
    ports { local_reference_V_0_12_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4228 \
    name local_reference_V_3_11_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_11_15_reload \
    op interface \
    ports { local_reference_V_3_11_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4229 \
    name local_reference_V_2_11_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_11_15_reload \
    op interface \
    ports { local_reference_V_2_11_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4230 \
    name local_reference_V_1_11_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_11_15_reload \
    op interface \
    ports { local_reference_V_1_11_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4231 \
    name local_reference_V_0_11_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_11_15_reload \
    op interface \
    ports { local_reference_V_0_11_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4232 \
    name local_reference_V_3_10_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_10_15_reload \
    op interface \
    ports { local_reference_V_3_10_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4233 \
    name local_reference_V_2_10_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_10_15_reload \
    op interface \
    ports { local_reference_V_2_10_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4234 \
    name local_reference_V_1_10_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_10_15_reload \
    op interface \
    ports { local_reference_V_1_10_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4235 \
    name local_reference_V_0_10_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_10_15_reload \
    op interface \
    ports { local_reference_V_0_10_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4236 \
    name local_reference_V_3_9_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_9_15_reload \
    op interface \
    ports { local_reference_V_3_9_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4237 \
    name local_reference_V_2_9_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_9_15_reload \
    op interface \
    ports { local_reference_V_2_9_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4238 \
    name local_reference_V_1_9_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_9_15_reload \
    op interface \
    ports { local_reference_V_1_9_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4239 \
    name local_reference_V_0_9_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_9_15_reload \
    op interface \
    ports { local_reference_V_0_9_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4240 \
    name local_reference_V_3_8_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_8_15_reload \
    op interface \
    ports { local_reference_V_3_8_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4241 \
    name local_reference_V_2_8_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_8_15_reload \
    op interface \
    ports { local_reference_V_2_8_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4242 \
    name local_reference_V_1_8_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_8_15_reload \
    op interface \
    ports { local_reference_V_1_8_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4243 \
    name local_reference_V_0_8_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_8_15_reload \
    op interface \
    ports { local_reference_V_0_8_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4244 \
    name local_reference_V_3_7_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_7_15_reload \
    op interface \
    ports { local_reference_V_3_7_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4245 \
    name local_reference_V_2_7_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_7_15_reload \
    op interface \
    ports { local_reference_V_2_7_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4246 \
    name local_reference_V_1_7_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_7_15_reload \
    op interface \
    ports { local_reference_V_1_7_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4247 \
    name local_reference_V_0_7_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_7_15_reload \
    op interface \
    ports { local_reference_V_0_7_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4248 \
    name local_reference_V_3_6_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_6_15_reload \
    op interface \
    ports { local_reference_V_3_6_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4249 \
    name local_reference_V_2_6_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_6_15_reload \
    op interface \
    ports { local_reference_V_2_6_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4250 \
    name local_reference_V_1_6_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_6_15_reload \
    op interface \
    ports { local_reference_V_1_6_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4251 \
    name local_reference_V_0_6_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_6_15_reload \
    op interface \
    ports { local_reference_V_0_6_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4252 \
    name local_reference_V_3_5_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_5_15_reload \
    op interface \
    ports { local_reference_V_3_5_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4253 \
    name local_reference_V_2_5_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_5_15_reload \
    op interface \
    ports { local_reference_V_2_5_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4254 \
    name local_reference_V_1_5_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_5_15_reload \
    op interface \
    ports { local_reference_V_1_5_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4255 \
    name local_reference_V_0_5_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_5_15_reload \
    op interface \
    ports { local_reference_V_0_5_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4256 \
    name local_reference_V_3_4_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_4_15_reload \
    op interface \
    ports { local_reference_V_3_4_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4257 \
    name local_reference_V_2_4_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_4_15_reload \
    op interface \
    ports { local_reference_V_2_4_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4258 \
    name local_reference_V_1_4_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_4_15_reload \
    op interface \
    ports { local_reference_V_1_4_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4259 \
    name local_reference_V_0_4_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_4_15_reload \
    op interface \
    ports { local_reference_V_0_4_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4260 \
    name local_reference_V_3_3_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_3_15_reload \
    op interface \
    ports { local_reference_V_3_3_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4261 \
    name local_reference_V_2_3_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_3_15_reload \
    op interface \
    ports { local_reference_V_2_3_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4262 \
    name local_reference_V_1_3_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_3_15_reload \
    op interface \
    ports { local_reference_V_1_3_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4263 \
    name local_reference_V_0_3_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_3_15_reload \
    op interface \
    ports { local_reference_V_0_3_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4264 \
    name local_reference_V_3_2_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_2_15_reload \
    op interface \
    ports { local_reference_V_3_2_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4265 \
    name local_reference_V_2_2_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_2_15_reload \
    op interface \
    ports { local_reference_V_2_2_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4266 \
    name local_reference_V_1_2_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_2_15_reload \
    op interface \
    ports { local_reference_V_1_2_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4267 \
    name local_reference_V_0_2_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_2_15_reload \
    op interface \
    ports { local_reference_V_0_2_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4268 \
    name local_reference_V_3_1_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_1_15_reload \
    op interface \
    ports { local_reference_V_3_1_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4269 \
    name local_reference_V_2_1_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_1_15_reload \
    op interface \
    ports { local_reference_V_2_1_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4270 \
    name local_reference_V_1_1_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_1_15_reload \
    op interface \
    ports { local_reference_V_1_1_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4271 \
    name local_reference_V_0_1_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_1_15_reload \
    op interface \
    ports { local_reference_V_0_1_15_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4272 \
    name local_reference_V_3_1566_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_1566_reload \
    op interface \
    ports { local_reference_V_3_1566_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4273 \
    name local_reference_V_2_1551_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_1551_reload \
    op interface \
    ports { local_reference_V_2_1551_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4274 \
    name local_reference_V_1_1536_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_1536_reload \
    op interface \
    ports { local_reference_V_1_1536_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4275 \
    name local_reference_V_0_1520_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_1520_reload \
    op interface \
    ports { local_reference_V_0_1520_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4277 \
    name local_reference_V_3_15_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_15_18_out \
    op interface \
    ports { local_reference_V_3_15_18_out { O 2 vector } local_reference_V_3_15_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4278 \
    name local_reference_V_2_15_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_15_18_out \
    op interface \
    ports { local_reference_V_2_15_18_out { O 2 vector } local_reference_V_2_15_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4279 \
    name local_reference_V_1_15_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_15_18_out \
    op interface \
    ports { local_reference_V_1_15_18_out { O 2 vector } local_reference_V_1_15_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4280 \
    name local_reference_V_0_15_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_15_18_out \
    op interface \
    ports { local_reference_V_0_15_18_out { O 2 vector } local_reference_V_0_15_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4281 \
    name local_reference_V_3_14_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_14_18_out \
    op interface \
    ports { local_reference_V_3_14_18_out { O 2 vector } local_reference_V_3_14_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4282 \
    name local_reference_V_2_14_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_14_18_out \
    op interface \
    ports { local_reference_V_2_14_18_out { O 2 vector } local_reference_V_2_14_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4283 \
    name local_reference_V_1_14_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_14_18_out \
    op interface \
    ports { local_reference_V_1_14_18_out { O 2 vector } local_reference_V_1_14_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4284 \
    name local_reference_V_0_14_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_14_18_out \
    op interface \
    ports { local_reference_V_0_14_18_out { O 2 vector } local_reference_V_0_14_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4285 \
    name local_reference_V_3_13_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_13_18_out \
    op interface \
    ports { local_reference_V_3_13_18_out { O 2 vector } local_reference_V_3_13_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4286 \
    name local_reference_V_2_13_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_13_18_out \
    op interface \
    ports { local_reference_V_2_13_18_out { O 2 vector } local_reference_V_2_13_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4287 \
    name local_reference_V_1_13_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_13_18_out \
    op interface \
    ports { local_reference_V_1_13_18_out { O 2 vector } local_reference_V_1_13_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4288 \
    name local_reference_V_0_13_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_13_18_out \
    op interface \
    ports { local_reference_V_0_13_18_out { O 2 vector } local_reference_V_0_13_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4289 \
    name local_reference_V_3_12_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_12_18_out \
    op interface \
    ports { local_reference_V_3_12_18_out { O 2 vector } local_reference_V_3_12_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4290 \
    name local_reference_V_2_12_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_12_18_out \
    op interface \
    ports { local_reference_V_2_12_18_out { O 2 vector } local_reference_V_2_12_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4291 \
    name local_reference_V_1_12_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_12_18_out \
    op interface \
    ports { local_reference_V_1_12_18_out { O 2 vector } local_reference_V_1_12_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4292 \
    name local_reference_V_0_12_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_12_18_out \
    op interface \
    ports { local_reference_V_0_12_18_out { O 2 vector } local_reference_V_0_12_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4293 \
    name local_reference_V_3_11_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_11_18_out \
    op interface \
    ports { local_reference_V_3_11_18_out { O 2 vector } local_reference_V_3_11_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4294 \
    name local_reference_V_2_11_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_11_18_out \
    op interface \
    ports { local_reference_V_2_11_18_out { O 2 vector } local_reference_V_2_11_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4295 \
    name local_reference_V_1_11_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_11_18_out \
    op interface \
    ports { local_reference_V_1_11_18_out { O 2 vector } local_reference_V_1_11_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4296 \
    name local_reference_V_0_11_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_11_18_out \
    op interface \
    ports { local_reference_V_0_11_18_out { O 2 vector } local_reference_V_0_11_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4297 \
    name local_reference_V_3_10_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_10_18_out \
    op interface \
    ports { local_reference_V_3_10_18_out { O 2 vector } local_reference_V_3_10_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4298 \
    name local_reference_V_2_10_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_10_18_out \
    op interface \
    ports { local_reference_V_2_10_18_out { O 2 vector } local_reference_V_2_10_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4299 \
    name local_reference_V_1_10_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_10_18_out \
    op interface \
    ports { local_reference_V_1_10_18_out { O 2 vector } local_reference_V_1_10_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4300 \
    name local_reference_V_0_10_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_10_18_out \
    op interface \
    ports { local_reference_V_0_10_18_out { O 2 vector } local_reference_V_0_10_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4301 \
    name local_reference_V_3_9_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_9_18_out \
    op interface \
    ports { local_reference_V_3_9_18_out { O 2 vector } local_reference_V_3_9_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4302 \
    name local_reference_V_2_9_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_9_18_out \
    op interface \
    ports { local_reference_V_2_9_18_out { O 2 vector } local_reference_V_2_9_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4303 \
    name local_reference_V_1_9_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_9_18_out \
    op interface \
    ports { local_reference_V_1_9_18_out { O 2 vector } local_reference_V_1_9_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4304 \
    name local_reference_V_0_9_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_9_18_out \
    op interface \
    ports { local_reference_V_0_9_18_out { O 2 vector } local_reference_V_0_9_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4305 \
    name local_reference_V_3_8_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_8_18_out \
    op interface \
    ports { local_reference_V_3_8_18_out { O 2 vector } local_reference_V_3_8_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4306 \
    name local_reference_V_2_8_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_8_18_out \
    op interface \
    ports { local_reference_V_2_8_18_out { O 2 vector } local_reference_V_2_8_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4307 \
    name local_reference_V_1_8_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_8_18_out \
    op interface \
    ports { local_reference_V_1_8_18_out { O 2 vector } local_reference_V_1_8_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4308 \
    name local_reference_V_0_8_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_8_18_out \
    op interface \
    ports { local_reference_V_0_8_18_out { O 2 vector } local_reference_V_0_8_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4309 \
    name local_reference_V_3_7_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_7_18_out \
    op interface \
    ports { local_reference_V_3_7_18_out { O 2 vector } local_reference_V_3_7_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4310 \
    name local_reference_V_2_7_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_7_18_out \
    op interface \
    ports { local_reference_V_2_7_18_out { O 2 vector } local_reference_V_2_7_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4311 \
    name local_reference_V_1_7_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_7_18_out \
    op interface \
    ports { local_reference_V_1_7_18_out { O 2 vector } local_reference_V_1_7_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4312 \
    name local_reference_V_0_7_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_7_18_out \
    op interface \
    ports { local_reference_V_0_7_18_out { O 2 vector } local_reference_V_0_7_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4313 \
    name local_reference_V_3_6_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_6_18_out \
    op interface \
    ports { local_reference_V_3_6_18_out { O 2 vector } local_reference_V_3_6_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4314 \
    name local_reference_V_2_6_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_6_18_out \
    op interface \
    ports { local_reference_V_2_6_18_out { O 2 vector } local_reference_V_2_6_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4315 \
    name local_reference_V_1_6_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_6_18_out \
    op interface \
    ports { local_reference_V_1_6_18_out { O 2 vector } local_reference_V_1_6_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4316 \
    name local_reference_V_0_6_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_6_18_out \
    op interface \
    ports { local_reference_V_0_6_18_out { O 2 vector } local_reference_V_0_6_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4317 \
    name local_reference_V_3_5_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_5_18_out \
    op interface \
    ports { local_reference_V_3_5_18_out { O 2 vector } local_reference_V_3_5_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4318 \
    name local_reference_V_2_5_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_5_18_out \
    op interface \
    ports { local_reference_V_2_5_18_out { O 2 vector } local_reference_V_2_5_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4319 \
    name local_reference_V_1_5_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_5_18_out \
    op interface \
    ports { local_reference_V_1_5_18_out { O 2 vector } local_reference_V_1_5_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4320 \
    name local_reference_V_0_5_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_5_18_out \
    op interface \
    ports { local_reference_V_0_5_18_out { O 2 vector } local_reference_V_0_5_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4321 \
    name local_reference_V_3_4_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_4_18_out \
    op interface \
    ports { local_reference_V_3_4_18_out { O 2 vector } local_reference_V_3_4_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4322 \
    name local_reference_V_2_4_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_4_18_out \
    op interface \
    ports { local_reference_V_2_4_18_out { O 2 vector } local_reference_V_2_4_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4323 \
    name local_reference_V_1_4_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_4_18_out \
    op interface \
    ports { local_reference_V_1_4_18_out { O 2 vector } local_reference_V_1_4_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4324 \
    name local_reference_V_0_4_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_4_18_out \
    op interface \
    ports { local_reference_V_0_4_18_out { O 2 vector } local_reference_V_0_4_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4325 \
    name local_reference_V_3_3_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_3_18_out \
    op interface \
    ports { local_reference_V_3_3_18_out { O 2 vector } local_reference_V_3_3_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4326 \
    name local_reference_V_2_3_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_3_18_out \
    op interface \
    ports { local_reference_V_2_3_18_out { O 2 vector } local_reference_V_2_3_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4327 \
    name local_reference_V_1_3_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_3_18_out \
    op interface \
    ports { local_reference_V_1_3_18_out { O 2 vector } local_reference_V_1_3_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4328 \
    name local_reference_V_0_3_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_3_18_out \
    op interface \
    ports { local_reference_V_0_3_18_out { O 2 vector } local_reference_V_0_3_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4329 \
    name local_reference_V_3_2_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_2_18_out \
    op interface \
    ports { local_reference_V_3_2_18_out { O 2 vector } local_reference_V_3_2_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4330 \
    name local_reference_V_2_2_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_2_18_out \
    op interface \
    ports { local_reference_V_2_2_18_out { O 2 vector } local_reference_V_2_2_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4331 \
    name local_reference_V_1_2_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_2_18_out \
    op interface \
    ports { local_reference_V_1_2_18_out { O 2 vector } local_reference_V_1_2_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4332 \
    name local_reference_V_0_2_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_2_18_out \
    op interface \
    ports { local_reference_V_0_2_18_out { O 2 vector } local_reference_V_0_2_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4333 \
    name local_reference_V_3_1_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_1_18_out \
    op interface \
    ports { local_reference_V_3_1_18_out { O 2 vector } local_reference_V_3_1_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4334 \
    name local_reference_V_2_1_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_1_18_out \
    op interface \
    ports { local_reference_V_2_1_18_out { O 2 vector } local_reference_V_2_1_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4335 \
    name local_reference_V_1_1_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_1_18_out \
    op interface \
    ports { local_reference_V_1_1_18_out { O 2 vector } local_reference_V_1_1_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4336 \
    name local_reference_V_0_1_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_1_18_out \
    op interface \
    ports { local_reference_V_0_1_18_out { O 2 vector } local_reference_V_0_1_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4337 \
    name local_reference_V_3_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_18_out \
    op interface \
    ports { local_reference_V_3_18_out { O 2 vector } local_reference_V_3_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4338 \
    name local_reference_V_2_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_18_out \
    op interface \
    ports { local_reference_V_2_18_out { O 2 vector } local_reference_V_2_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4339 \
    name local_reference_V_1_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_18_out \
    op interface \
    ports { local_reference_V_1_18_out { O 2 vector } local_reference_V_1_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4340 \
    name local_reference_V_0_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_18_out \
    op interface \
    ports { local_reference_V_0_18_out { O 2 vector } local_reference_V_0_18_out_ap_vld { O 1 bit } } \
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


