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
    id 17 \
    name init_col_scr_local_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename init_col_scr_local_0 \
    op interface \
    ports { init_col_scr_local_0_address0 { O 6 vector } init_col_scr_local_0_ce0 { O 1 bit } init_col_scr_local_0_we0 { O 1 bit } init_col_scr_local_0_d0 { O 16 vector } init_col_scr_local_0_q0 { I 16 vector } init_col_scr_local_0_address1 { O 6 vector } init_col_scr_local_0_ce1 { O 1 bit } init_col_scr_local_0_we1 { O 1 bit } init_col_scr_local_0_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'init_col_scr_local_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 18 \
    name init_col_scr_local_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename init_col_scr_local_1 \
    op interface \
    ports { init_col_scr_local_1_address0 { O 6 vector } init_col_scr_local_1_ce0 { O 1 bit } init_col_scr_local_1_we0 { O 1 bit } init_col_scr_local_1_d0 { O 16 vector } init_col_scr_local_1_q0 { I 16 vector } init_col_scr_local_1_address1 { O 6 vector } init_col_scr_local_1_ce1 { O 1 bit } init_col_scr_local_1_we1 { O 1 bit } init_col_scr_local_1_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'init_col_scr_local_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 19 \
    name init_col_scr_local_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename init_col_scr_local_2 \
    op interface \
    ports { init_col_scr_local_2_address0 { O 6 vector } init_col_scr_local_2_ce0 { O 1 bit } init_col_scr_local_2_we0 { O 1 bit } init_col_scr_local_2_d0 { O 16 vector } init_col_scr_local_2_q0 { I 16 vector } init_col_scr_local_2_address1 { O 6 vector } init_col_scr_local_2_ce1 { O 1 bit } init_col_scr_local_2_we1 { O 1 bit } init_col_scr_local_2_d1 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'init_col_scr_local_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 20 \
    name init_col_scr \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename init_col_scr \
    op interface \
    ports { init_col_scr_address0 { O 8 vector } init_col_scr_ce0 { O 1 bit } init_col_scr_q0 { I 48 vector } init_col_scr_address1 { O 8 vector } init_col_scr_ce1 { O 1 bit } init_col_scr_q1 { I 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'init_col_scr'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name idx \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_idx \
    op interface \
    ports { idx { I 8 vector } } \
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


