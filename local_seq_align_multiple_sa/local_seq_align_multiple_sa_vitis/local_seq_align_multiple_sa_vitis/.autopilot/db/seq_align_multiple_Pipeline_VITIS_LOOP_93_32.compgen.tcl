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
    id 716 \
    name reference_string_comp_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename reference_string_comp_1 \
    op interface \
    ports { reference_string_comp_1_address0 { O 6 vector } reference_string_comp_1_ce0 { O 1 bit } reference_string_comp_1_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reference_string_comp_1'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 652 \
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
    id 653 \
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
    id 654 \
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
    id 655 \
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
    id 656 \
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
    id 657 \
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
    id 658 \
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
    id 659 \
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
    id 660 \
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
    id 661 \
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
    id 662 \
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
    id 663 \
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
    id 664 \
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
    id 665 \
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
    id 666 \
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
    id 667 \
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
    id 668 \
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
    id 669 \
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
    id 670 \
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
    id 671 \
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
    id 672 \
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
    id 673 \
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
    id 674 \
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
    id 675 \
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
    id 676 \
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
    id 677 \
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
    id 678 \
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
    id 679 \
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
    id 680 \
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
    id 681 \
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
    id 682 \
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
    id 683 \
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
    id 684 \
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
    id 685 \
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
    id 686 \
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
    id 687 \
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
    id 688 \
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
    id 689 \
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
    id 690 \
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
    id 691 \
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
    id 692 \
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
    id 693 \
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
    id 694 \
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
    id 695 \
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
    id 696 \
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
    id 697 \
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
    id 698 \
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
    id 699 \
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
    id 700 \
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
    id 701 \
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
    id 702 \
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
    id 703 \
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
    id 704 \
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
    id 705 \
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
    id 706 \
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
    id 707 \
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
    id 708 \
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
    id 709 \
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
    id 710 \
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
    id 711 \
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
    id 712 \
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
    id 713 \
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
    id 714 \
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
    id 715 \
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
    id 717 \
    name local_reference_V_3_15_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_15_3_out \
    op interface \
    ports { local_reference_V_3_15_3_out { O 2 vector } local_reference_V_3_15_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 718 \
    name local_reference_V_2_15_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_15_3_out \
    op interface \
    ports { local_reference_V_2_15_3_out { O 2 vector } local_reference_V_2_15_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 719 \
    name local_reference_V_1_15_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_15_3_out \
    op interface \
    ports { local_reference_V_1_15_3_out { O 2 vector } local_reference_V_1_15_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 720 \
    name local_reference_V_0_15_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_15_3_out \
    op interface \
    ports { local_reference_V_0_15_3_out { O 2 vector } local_reference_V_0_15_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 721 \
    name local_reference_V_3_14_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_14_3_out \
    op interface \
    ports { local_reference_V_3_14_3_out { O 2 vector } local_reference_V_3_14_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 722 \
    name local_reference_V_2_14_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_14_3_out \
    op interface \
    ports { local_reference_V_2_14_3_out { O 2 vector } local_reference_V_2_14_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 723 \
    name local_reference_V_1_14_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_14_3_out \
    op interface \
    ports { local_reference_V_1_14_3_out { O 2 vector } local_reference_V_1_14_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 724 \
    name local_reference_V_0_14_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_14_3_out \
    op interface \
    ports { local_reference_V_0_14_3_out { O 2 vector } local_reference_V_0_14_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 725 \
    name local_reference_V_3_13_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_13_3_out \
    op interface \
    ports { local_reference_V_3_13_3_out { O 2 vector } local_reference_V_3_13_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 726 \
    name local_reference_V_2_13_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_13_3_out \
    op interface \
    ports { local_reference_V_2_13_3_out { O 2 vector } local_reference_V_2_13_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 727 \
    name local_reference_V_1_13_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_13_3_out \
    op interface \
    ports { local_reference_V_1_13_3_out { O 2 vector } local_reference_V_1_13_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 728 \
    name local_reference_V_0_13_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_13_3_out \
    op interface \
    ports { local_reference_V_0_13_3_out { O 2 vector } local_reference_V_0_13_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 729 \
    name local_reference_V_3_12_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_12_3_out \
    op interface \
    ports { local_reference_V_3_12_3_out { O 2 vector } local_reference_V_3_12_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 730 \
    name local_reference_V_2_12_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_12_3_out \
    op interface \
    ports { local_reference_V_2_12_3_out { O 2 vector } local_reference_V_2_12_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 731 \
    name local_reference_V_1_12_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_12_3_out \
    op interface \
    ports { local_reference_V_1_12_3_out { O 2 vector } local_reference_V_1_12_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 732 \
    name local_reference_V_0_12_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_12_3_out \
    op interface \
    ports { local_reference_V_0_12_3_out { O 2 vector } local_reference_V_0_12_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 733 \
    name local_reference_V_3_11_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_11_3_out \
    op interface \
    ports { local_reference_V_3_11_3_out { O 2 vector } local_reference_V_3_11_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 734 \
    name local_reference_V_2_11_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_11_3_out \
    op interface \
    ports { local_reference_V_2_11_3_out { O 2 vector } local_reference_V_2_11_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 735 \
    name local_reference_V_1_11_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_11_3_out \
    op interface \
    ports { local_reference_V_1_11_3_out { O 2 vector } local_reference_V_1_11_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 736 \
    name local_reference_V_0_11_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_11_3_out \
    op interface \
    ports { local_reference_V_0_11_3_out { O 2 vector } local_reference_V_0_11_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 737 \
    name local_reference_V_3_10_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_10_3_out \
    op interface \
    ports { local_reference_V_3_10_3_out { O 2 vector } local_reference_V_3_10_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 738 \
    name local_reference_V_2_10_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_10_3_out \
    op interface \
    ports { local_reference_V_2_10_3_out { O 2 vector } local_reference_V_2_10_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 739 \
    name local_reference_V_1_10_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_10_3_out \
    op interface \
    ports { local_reference_V_1_10_3_out { O 2 vector } local_reference_V_1_10_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 740 \
    name local_reference_V_0_10_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_10_3_out \
    op interface \
    ports { local_reference_V_0_10_3_out { O 2 vector } local_reference_V_0_10_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 741 \
    name local_reference_V_3_9_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_9_3_out \
    op interface \
    ports { local_reference_V_3_9_3_out { O 2 vector } local_reference_V_3_9_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 742 \
    name local_reference_V_2_9_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_9_3_out \
    op interface \
    ports { local_reference_V_2_9_3_out { O 2 vector } local_reference_V_2_9_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 743 \
    name local_reference_V_1_9_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_9_3_out \
    op interface \
    ports { local_reference_V_1_9_3_out { O 2 vector } local_reference_V_1_9_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 744 \
    name local_reference_V_0_9_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_9_3_out \
    op interface \
    ports { local_reference_V_0_9_3_out { O 2 vector } local_reference_V_0_9_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 745 \
    name local_reference_V_3_8_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_8_3_out \
    op interface \
    ports { local_reference_V_3_8_3_out { O 2 vector } local_reference_V_3_8_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 746 \
    name local_reference_V_2_8_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_8_3_out \
    op interface \
    ports { local_reference_V_2_8_3_out { O 2 vector } local_reference_V_2_8_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 747 \
    name local_reference_V_1_8_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_8_3_out \
    op interface \
    ports { local_reference_V_1_8_3_out { O 2 vector } local_reference_V_1_8_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 748 \
    name local_reference_V_0_8_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_8_3_out \
    op interface \
    ports { local_reference_V_0_8_3_out { O 2 vector } local_reference_V_0_8_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 749 \
    name local_reference_V_3_7_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_7_3_out \
    op interface \
    ports { local_reference_V_3_7_3_out { O 2 vector } local_reference_V_3_7_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 750 \
    name local_reference_V_2_7_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_7_3_out \
    op interface \
    ports { local_reference_V_2_7_3_out { O 2 vector } local_reference_V_2_7_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 751 \
    name local_reference_V_1_7_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_7_3_out \
    op interface \
    ports { local_reference_V_1_7_3_out { O 2 vector } local_reference_V_1_7_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 752 \
    name local_reference_V_0_7_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_7_3_out \
    op interface \
    ports { local_reference_V_0_7_3_out { O 2 vector } local_reference_V_0_7_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 753 \
    name local_reference_V_3_6_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_6_3_out \
    op interface \
    ports { local_reference_V_3_6_3_out { O 2 vector } local_reference_V_3_6_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 754 \
    name local_reference_V_2_6_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_6_3_out \
    op interface \
    ports { local_reference_V_2_6_3_out { O 2 vector } local_reference_V_2_6_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 755 \
    name local_reference_V_1_6_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_6_3_out \
    op interface \
    ports { local_reference_V_1_6_3_out { O 2 vector } local_reference_V_1_6_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 756 \
    name local_reference_V_0_6_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_6_3_out \
    op interface \
    ports { local_reference_V_0_6_3_out { O 2 vector } local_reference_V_0_6_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 757 \
    name local_reference_V_3_5_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_5_3_out \
    op interface \
    ports { local_reference_V_3_5_3_out { O 2 vector } local_reference_V_3_5_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 758 \
    name local_reference_V_2_5_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_5_3_out \
    op interface \
    ports { local_reference_V_2_5_3_out { O 2 vector } local_reference_V_2_5_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 759 \
    name local_reference_V_1_5_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_5_3_out \
    op interface \
    ports { local_reference_V_1_5_3_out { O 2 vector } local_reference_V_1_5_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 760 \
    name local_reference_V_0_5_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_5_3_out \
    op interface \
    ports { local_reference_V_0_5_3_out { O 2 vector } local_reference_V_0_5_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 761 \
    name local_reference_V_3_4_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_4_3_out \
    op interface \
    ports { local_reference_V_3_4_3_out { O 2 vector } local_reference_V_3_4_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 762 \
    name local_reference_V_2_4_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_4_3_out \
    op interface \
    ports { local_reference_V_2_4_3_out { O 2 vector } local_reference_V_2_4_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 763 \
    name local_reference_V_1_4_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_4_3_out \
    op interface \
    ports { local_reference_V_1_4_3_out { O 2 vector } local_reference_V_1_4_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 764 \
    name local_reference_V_0_4_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_4_3_out \
    op interface \
    ports { local_reference_V_0_4_3_out { O 2 vector } local_reference_V_0_4_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 765 \
    name local_reference_V_3_3_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_3_3_out \
    op interface \
    ports { local_reference_V_3_3_3_out { O 2 vector } local_reference_V_3_3_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 766 \
    name local_reference_V_2_3_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_3_3_out \
    op interface \
    ports { local_reference_V_2_3_3_out { O 2 vector } local_reference_V_2_3_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 767 \
    name local_reference_V_1_3_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_3_3_out \
    op interface \
    ports { local_reference_V_1_3_3_out { O 2 vector } local_reference_V_1_3_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 768 \
    name local_reference_V_0_3_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_3_3_out \
    op interface \
    ports { local_reference_V_0_3_3_out { O 2 vector } local_reference_V_0_3_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 769 \
    name local_reference_V_3_2_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_2_3_out \
    op interface \
    ports { local_reference_V_3_2_3_out { O 2 vector } local_reference_V_3_2_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 770 \
    name local_reference_V_2_2_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_2_3_out \
    op interface \
    ports { local_reference_V_2_2_3_out { O 2 vector } local_reference_V_2_2_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 771 \
    name local_reference_V_1_2_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_2_3_out \
    op interface \
    ports { local_reference_V_1_2_3_out { O 2 vector } local_reference_V_1_2_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 772 \
    name local_reference_V_0_2_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_2_3_out \
    op interface \
    ports { local_reference_V_0_2_3_out { O 2 vector } local_reference_V_0_2_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 773 \
    name local_reference_V_3_1_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_1_3_out \
    op interface \
    ports { local_reference_V_3_1_3_out { O 2 vector } local_reference_V_3_1_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 774 \
    name local_reference_V_2_1_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_1_3_out \
    op interface \
    ports { local_reference_V_2_1_3_out { O 2 vector } local_reference_V_2_1_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 775 \
    name local_reference_V_1_1_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_1_3_out \
    op interface \
    ports { local_reference_V_1_1_3_out { O 2 vector } local_reference_V_1_1_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 776 \
    name local_reference_V_0_1_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_1_3_out \
    op interface \
    ports { local_reference_V_0_1_3_out { O 2 vector } local_reference_V_0_1_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 777 \
    name local_reference_V_3_354_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_354_out \
    op interface \
    ports { local_reference_V_3_354_out { O 2 vector } local_reference_V_3_354_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 778 \
    name local_reference_V_2_339_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_339_out \
    op interface \
    ports { local_reference_V_2_339_out { O 2 vector } local_reference_V_2_339_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 779 \
    name local_reference_V_1_324_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_324_out \
    op interface \
    ports { local_reference_V_1_324_out { O 2 vector } local_reference_V_1_324_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 780 \
    name local_reference_V_0_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_38_out \
    op interface \
    ports { local_reference_V_0_38_out { O 2 vector } local_reference_V_0_38_out_ap_vld { O 1 bit } } \
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


