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
    id 3564 \
    name reference_string_comp_5 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reference_string_comp_5 \
    op interface \
    ports { reference_string_comp_5_address0 { O 6 vector } reference_string_comp_5_ce0 { O 1 bit } reference_string_comp_5_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reference_string_comp_5'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3500 \
    name local_reference_V_3_15_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_15_12_reload \
    op interface \
    ports { local_reference_V_3_15_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3501 \
    name local_reference_V_2_15_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_15_12_reload \
    op interface \
    ports { local_reference_V_2_15_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3502 \
    name local_reference_V_1_15_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_15_12_reload \
    op interface \
    ports { local_reference_V_1_15_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3503 \
    name local_reference_V_0_15_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_15_12_reload \
    op interface \
    ports { local_reference_V_0_15_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3504 \
    name local_reference_V_3_14_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_14_12_reload \
    op interface \
    ports { local_reference_V_3_14_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3505 \
    name local_reference_V_2_14_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_14_12_reload \
    op interface \
    ports { local_reference_V_2_14_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3506 \
    name local_reference_V_1_14_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_14_12_reload \
    op interface \
    ports { local_reference_V_1_14_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3507 \
    name local_reference_V_0_14_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_14_12_reload \
    op interface \
    ports { local_reference_V_0_14_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3508 \
    name local_reference_V_3_13_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_13_12_reload \
    op interface \
    ports { local_reference_V_3_13_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3509 \
    name local_reference_V_2_13_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_13_12_reload \
    op interface \
    ports { local_reference_V_2_13_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3510 \
    name local_reference_V_1_13_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_13_12_reload \
    op interface \
    ports { local_reference_V_1_13_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3511 \
    name local_reference_V_0_13_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_13_12_reload \
    op interface \
    ports { local_reference_V_0_13_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3512 \
    name local_reference_V_3_12_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_12_12_reload \
    op interface \
    ports { local_reference_V_3_12_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3513 \
    name local_reference_V_2_12_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_12_12_reload \
    op interface \
    ports { local_reference_V_2_12_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3514 \
    name local_reference_V_1_12_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_12_12_reload \
    op interface \
    ports { local_reference_V_1_12_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3515 \
    name local_reference_V_0_12_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_12_12_reload \
    op interface \
    ports { local_reference_V_0_12_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3516 \
    name local_reference_V_3_11_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_11_12_reload \
    op interface \
    ports { local_reference_V_3_11_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3517 \
    name local_reference_V_2_11_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_11_12_reload \
    op interface \
    ports { local_reference_V_2_11_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3518 \
    name local_reference_V_1_11_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_11_12_reload \
    op interface \
    ports { local_reference_V_1_11_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3519 \
    name local_reference_V_0_11_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_11_12_reload \
    op interface \
    ports { local_reference_V_0_11_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3520 \
    name local_reference_V_3_10_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_10_12_reload \
    op interface \
    ports { local_reference_V_3_10_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3521 \
    name local_reference_V_2_10_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_10_12_reload \
    op interface \
    ports { local_reference_V_2_10_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3522 \
    name local_reference_V_1_10_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_10_12_reload \
    op interface \
    ports { local_reference_V_1_10_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3523 \
    name local_reference_V_0_10_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_10_12_reload \
    op interface \
    ports { local_reference_V_0_10_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3524 \
    name local_reference_V_3_9_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_9_12_reload \
    op interface \
    ports { local_reference_V_3_9_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3525 \
    name local_reference_V_2_9_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_9_12_reload \
    op interface \
    ports { local_reference_V_2_9_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3526 \
    name local_reference_V_1_9_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_9_12_reload \
    op interface \
    ports { local_reference_V_1_9_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3527 \
    name local_reference_V_0_9_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_9_12_reload \
    op interface \
    ports { local_reference_V_0_9_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3528 \
    name local_reference_V_3_8_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_8_12_reload \
    op interface \
    ports { local_reference_V_3_8_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3529 \
    name local_reference_V_2_8_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_8_12_reload \
    op interface \
    ports { local_reference_V_2_8_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3530 \
    name local_reference_V_1_8_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_8_12_reload \
    op interface \
    ports { local_reference_V_1_8_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3531 \
    name local_reference_V_0_8_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_8_12_reload \
    op interface \
    ports { local_reference_V_0_8_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3532 \
    name local_reference_V_3_7_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_7_12_reload \
    op interface \
    ports { local_reference_V_3_7_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3533 \
    name local_reference_V_2_7_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_7_12_reload \
    op interface \
    ports { local_reference_V_2_7_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3534 \
    name local_reference_V_1_7_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_7_12_reload \
    op interface \
    ports { local_reference_V_1_7_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3535 \
    name local_reference_V_0_7_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_7_12_reload \
    op interface \
    ports { local_reference_V_0_7_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3536 \
    name local_reference_V_3_6_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_6_12_reload \
    op interface \
    ports { local_reference_V_3_6_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3537 \
    name local_reference_V_2_6_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_6_12_reload \
    op interface \
    ports { local_reference_V_2_6_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3538 \
    name local_reference_V_1_6_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_6_12_reload \
    op interface \
    ports { local_reference_V_1_6_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3539 \
    name local_reference_V_0_6_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_6_12_reload \
    op interface \
    ports { local_reference_V_0_6_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3540 \
    name local_reference_V_3_5_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_5_12_reload \
    op interface \
    ports { local_reference_V_3_5_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3541 \
    name local_reference_V_2_5_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_5_12_reload \
    op interface \
    ports { local_reference_V_2_5_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3542 \
    name local_reference_V_1_5_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_5_12_reload \
    op interface \
    ports { local_reference_V_1_5_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3543 \
    name local_reference_V_0_5_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_5_12_reload \
    op interface \
    ports { local_reference_V_0_5_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3544 \
    name local_reference_V_3_4_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_4_12_reload \
    op interface \
    ports { local_reference_V_3_4_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3545 \
    name local_reference_V_2_4_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_4_12_reload \
    op interface \
    ports { local_reference_V_2_4_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3546 \
    name local_reference_V_1_4_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_4_12_reload \
    op interface \
    ports { local_reference_V_1_4_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3547 \
    name local_reference_V_0_4_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_4_12_reload \
    op interface \
    ports { local_reference_V_0_4_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3548 \
    name local_reference_V_3_3_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_3_12_reload \
    op interface \
    ports { local_reference_V_3_3_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3549 \
    name local_reference_V_2_3_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_3_12_reload \
    op interface \
    ports { local_reference_V_2_3_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3550 \
    name local_reference_V_1_3_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_3_12_reload \
    op interface \
    ports { local_reference_V_1_3_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3551 \
    name local_reference_V_0_3_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_3_12_reload \
    op interface \
    ports { local_reference_V_0_3_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3552 \
    name local_reference_V_3_2_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_2_12_reload \
    op interface \
    ports { local_reference_V_3_2_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3553 \
    name local_reference_V_2_2_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_2_12_reload \
    op interface \
    ports { local_reference_V_2_2_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3554 \
    name local_reference_V_1_2_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_2_12_reload \
    op interface \
    ports { local_reference_V_1_2_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3555 \
    name local_reference_V_0_2_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_2_12_reload \
    op interface \
    ports { local_reference_V_0_2_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3556 \
    name local_reference_V_3_1_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_1_12_reload \
    op interface \
    ports { local_reference_V_3_1_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3557 \
    name local_reference_V_2_1_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_1_12_reload \
    op interface \
    ports { local_reference_V_2_1_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3558 \
    name local_reference_V_1_1_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_1_12_reload \
    op interface \
    ports { local_reference_V_1_1_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3559 \
    name local_reference_V_0_1_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_1_12_reload \
    op interface \
    ports { local_reference_V_0_1_12_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3560 \
    name local_reference_V_3_1263_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_1263_reload \
    op interface \
    ports { local_reference_V_3_1263_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3561 \
    name local_reference_V_2_1248_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_1248_reload \
    op interface \
    ports { local_reference_V_2_1248_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3562 \
    name local_reference_V_1_1233_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_1233_reload \
    op interface \
    ports { local_reference_V_1_1233_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3563 \
    name local_reference_V_0_1217_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_1217_reload \
    op interface \
    ports { local_reference_V_0_1217_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3565 \
    name local_reference_V_3_15_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_15_15_out \
    op interface \
    ports { local_reference_V_3_15_15_out { O 2 vector } local_reference_V_3_15_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3566 \
    name local_reference_V_2_15_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_15_15_out \
    op interface \
    ports { local_reference_V_2_15_15_out { O 2 vector } local_reference_V_2_15_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3567 \
    name local_reference_V_1_15_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_15_15_out \
    op interface \
    ports { local_reference_V_1_15_15_out { O 2 vector } local_reference_V_1_15_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3568 \
    name local_reference_V_0_15_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_15_15_out \
    op interface \
    ports { local_reference_V_0_15_15_out { O 2 vector } local_reference_V_0_15_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3569 \
    name local_reference_V_3_14_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_14_15_out \
    op interface \
    ports { local_reference_V_3_14_15_out { O 2 vector } local_reference_V_3_14_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3570 \
    name local_reference_V_2_14_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_14_15_out \
    op interface \
    ports { local_reference_V_2_14_15_out { O 2 vector } local_reference_V_2_14_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3571 \
    name local_reference_V_1_14_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_14_15_out \
    op interface \
    ports { local_reference_V_1_14_15_out { O 2 vector } local_reference_V_1_14_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3572 \
    name local_reference_V_0_14_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_14_15_out \
    op interface \
    ports { local_reference_V_0_14_15_out { O 2 vector } local_reference_V_0_14_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3573 \
    name local_reference_V_3_13_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_13_15_out \
    op interface \
    ports { local_reference_V_3_13_15_out { O 2 vector } local_reference_V_3_13_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3574 \
    name local_reference_V_2_13_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_13_15_out \
    op interface \
    ports { local_reference_V_2_13_15_out { O 2 vector } local_reference_V_2_13_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3575 \
    name local_reference_V_1_13_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_13_15_out \
    op interface \
    ports { local_reference_V_1_13_15_out { O 2 vector } local_reference_V_1_13_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3576 \
    name local_reference_V_0_13_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_13_15_out \
    op interface \
    ports { local_reference_V_0_13_15_out { O 2 vector } local_reference_V_0_13_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3577 \
    name local_reference_V_3_12_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_12_15_out \
    op interface \
    ports { local_reference_V_3_12_15_out { O 2 vector } local_reference_V_3_12_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3578 \
    name local_reference_V_2_12_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_12_15_out \
    op interface \
    ports { local_reference_V_2_12_15_out { O 2 vector } local_reference_V_2_12_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3579 \
    name local_reference_V_1_12_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_12_15_out \
    op interface \
    ports { local_reference_V_1_12_15_out { O 2 vector } local_reference_V_1_12_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3580 \
    name local_reference_V_0_12_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_12_15_out \
    op interface \
    ports { local_reference_V_0_12_15_out { O 2 vector } local_reference_V_0_12_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3581 \
    name local_reference_V_3_11_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_11_15_out \
    op interface \
    ports { local_reference_V_3_11_15_out { O 2 vector } local_reference_V_3_11_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3582 \
    name local_reference_V_2_11_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_11_15_out \
    op interface \
    ports { local_reference_V_2_11_15_out { O 2 vector } local_reference_V_2_11_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3583 \
    name local_reference_V_1_11_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_11_15_out \
    op interface \
    ports { local_reference_V_1_11_15_out { O 2 vector } local_reference_V_1_11_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3584 \
    name local_reference_V_0_11_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_11_15_out \
    op interface \
    ports { local_reference_V_0_11_15_out { O 2 vector } local_reference_V_0_11_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3585 \
    name local_reference_V_3_10_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_10_15_out \
    op interface \
    ports { local_reference_V_3_10_15_out { O 2 vector } local_reference_V_3_10_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3586 \
    name local_reference_V_2_10_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_10_15_out \
    op interface \
    ports { local_reference_V_2_10_15_out { O 2 vector } local_reference_V_2_10_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3587 \
    name local_reference_V_1_10_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_10_15_out \
    op interface \
    ports { local_reference_V_1_10_15_out { O 2 vector } local_reference_V_1_10_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3588 \
    name local_reference_V_0_10_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_10_15_out \
    op interface \
    ports { local_reference_V_0_10_15_out { O 2 vector } local_reference_V_0_10_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3589 \
    name local_reference_V_3_9_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_9_15_out \
    op interface \
    ports { local_reference_V_3_9_15_out { O 2 vector } local_reference_V_3_9_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3590 \
    name local_reference_V_2_9_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_9_15_out \
    op interface \
    ports { local_reference_V_2_9_15_out { O 2 vector } local_reference_V_2_9_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3591 \
    name local_reference_V_1_9_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_9_15_out \
    op interface \
    ports { local_reference_V_1_9_15_out { O 2 vector } local_reference_V_1_9_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3592 \
    name local_reference_V_0_9_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_9_15_out \
    op interface \
    ports { local_reference_V_0_9_15_out { O 2 vector } local_reference_V_0_9_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3593 \
    name local_reference_V_3_8_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_8_15_out \
    op interface \
    ports { local_reference_V_3_8_15_out { O 2 vector } local_reference_V_3_8_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3594 \
    name local_reference_V_2_8_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_8_15_out \
    op interface \
    ports { local_reference_V_2_8_15_out { O 2 vector } local_reference_V_2_8_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3595 \
    name local_reference_V_1_8_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_8_15_out \
    op interface \
    ports { local_reference_V_1_8_15_out { O 2 vector } local_reference_V_1_8_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3596 \
    name local_reference_V_0_8_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_8_15_out \
    op interface \
    ports { local_reference_V_0_8_15_out { O 2 vector } local_reference_V_0_8_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3597 \
    name local_reference_V_3_7_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_7_15_out \
    op interface \
    ports { local_reference_V_3_7_15_out { O 2 vector } local_reference_V_3_7_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3598 \
    name local_reference_V_2_7_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_7_15_out \
    op interface \
    ports { local_reference_V_2_7_15_out { O 2 vector } local_reference_V_2_7_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3599 \
    name local_reference_V_1_7_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_7_15_out \
    op interface \
    ports { local_reference_V_1_7_15_out { O 2 vector } local_reference_V_1_7_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3600 \
    name local_reference_V_0_7_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_7_15_out \
    op interface \
    ports { local_reference_V_0_7_15_out { O 2 vector } local_reference_V_0_7_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3601 \
    name local_reference_V_3_6_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_6_15_out \
    op interface \
    ports { local_reference_V_3_6_15_out { O 2 vector } local_reference_V_3_6_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3602 \
    name local_reference_V_2_6_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_6_15_out \
    op interface \
    ports { local_reference_V_2_6_15_out { O 2 vector } local_reference_V_2_6_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3603 \
    name local_reference_V_1_6_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_6_15_out \
    op interface \
    ports { local_reference_V_1_6_15_out { O 2 vector } local_reference_V_1_6_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3604 \
    name local_reference_V_0_6_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_6_15_out \
    op interface \
    ports { local_reference_V_0_6_15_out { O 2 vector } local_reference_V_0_6_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3605 \
    name local_reference_V_3_5_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_5_15_out \
    op interface \
    ports { local_reference_V_3_5_15_out { O 2 vector } local_reference_V_3_5_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3606 \
    name local_reference_V_2_5_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_5_15_out \
    op interface \
    ports { local_reference_V_2_5_15_out { O 2 vector } local_reference_V_2_5_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3607 \
    name local_reference_V_1_5_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_5_15_out \
    op interface \
    ports { local_reference_V_1_5_15_out { O 2 vector } local_reference_V_1_5_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3608 \
    name local_reference_V_0_5_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_5_15_out \
    op interface \
    ports { local_reference_V_0_5_15_out { O 2 vector } local_reference_V_0_5_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3609 \
    name local_reference_V_3_4_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_4_15_out \
    op interface \
    ports { local_reference_V_3_4_15_out { O 2 vector } local_reference_V_3_4_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3610 \
    name local_reference_V_2_4_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_4_15_out \
    op interface \
    ports { local_reference_V_2_4_15_out { O 2 vector } local_reference_V_2_4_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3611 \
    name local_reference_V_1_4_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_4_15_out \
    op interface \
    ports { local_reference_V_1_4_15_out { O 2 vector } local_reference_V_1_4_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3612 \
    name local_reference_V_0_4_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_4_15_out \
    op interface \
    ports { local_reference_V_0_4_15_out { O 2 vector } local_reference_V_0_4_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3613 \
    name local_reference_V_3_3_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_3_15_out \
    op interface \
    ports { local_reference_V_3_3_15_out { O 2 vector } local_reference_V_3_3_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3614 \
    name local_reference_V_2_3_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_3_15_out \
    op interface \
    ports { local_reference_V_2_3_15_out { O 2 vector } local_reference_V_2_3_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3615 \
    name local_reference_V_1_3_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_3_15_out \
    op interface \
    ports { local_reference_V_1_3_15_out { O 2 vector } local_reference_V_1_3_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3616 \
    name local_reference_V_0_3_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_3_15_out \
    op interface \
    ports { local_reference_V_0_3_15_out { O 2 vector } local_reference_V_0_3_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3617 \
    name local_reference_V_3_2_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_2_15_out \
    op interface \
    ports { local_reference_V_3_2_15_out { O 2 vector } local_reference_V_3_2_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3618 \
    name local_reference_V_2_2_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_2_15_out \
    op interface \
    ports { local_reference_V_2_2_15_out { O 2 vector } local_reference_V_2_2_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3619 \
    name local_reference_V_1_2_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_2_15_out \
    op interface \
    ports { local_reference_V_1_2_15_out { O 2 vector } local_reference_V_1_2_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3620 \
    name local_reference_V_0_2_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_2_15_out \
    op interface \
    ports { local_reference_V_0_2_15_out { O 2 vector } local_reference_V_0_2_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3621 \
    name local_reference_V_3_1_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_1_15_out \
    op interface \
    ports { local_reference_V_3_1_15_out { O 2 vector } local_reference_V_3_1_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3622 \
    name local_reference_V_2_1_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_1_15_out \
    op interface \
    ports { local_reference_V_2_1_15_out { O 2 vector } local_reference_V_2_1_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3623 \
    name local_reference_V_1_1_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_1_15_out \
    op interface \
    ports { local_reference_V_1_1_15_out { O 2 vector } local_reference_V_1_1_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3624 \
    name local_reference_V_0_1_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_1_15_out \
    op interface \
    ports { local_reference_V_0_1_15_out { O 2 vector } local_reference_V_0_1_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3625 \
    name local_reference_V_3_1566_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_1566_out \
    op interface \
    ports { local_reference_V_3_1566_out { O 2 vector } local_reference_V_3_1566_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3626 \
    name local_reference_V_2_1551_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_1551_out \
    op interface \
    ports { local_reference_V_2_1551_out { O 2 vector } local_reference_V_2_1551_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3627 \
    name local_reference_V_1_1536_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_1536_out \
    op interface \
    ports { local_reference_V_1_1536_out { O 2 vector } local_reference_V_1_1536_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3628 \
    name local_reference_V_0_1520_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_1520_out \
    op interface \
    ports { local_reference_V_0_1520_out { O 2 vector } local_reference_V_0_1520_out_ap_vld { O 1 bit } } \
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


