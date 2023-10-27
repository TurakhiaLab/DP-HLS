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
    id 670 \
    name init_row_score \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename init_row_score \
    op interface \
    ports { init_row_score_address0 { O 8 vector } init_row_score_ce0 { O 1 bit } init_row_score_we0 { O 1 bit } init_row_score_d0 { O 48 vector } init_row_score_address1 { O 8 vector } init_row_score_ce1 { O 1 bit } init_row_score_q1 { I 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'init_row_score'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 671 \
    name preserved_row_buffer \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename preserved_row_buffer \
    op interface \
    ports { preserved_row_buffer_address0 { O 8 vector } preserved_row_buffer_ce0 { O 1 bit } preserved_row_buffer_we0 { O 1 bit } preserved_row_buffer_d0 { O 16 vector } preserved_row_buffer_address1 { O 8 vector } preserved_row_buffer_ce1 { O 1 bit } preserved_row_buffer_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'preserved_row_buffer'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 672 \
    name preserved_row_buffer_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename preserved_row_buffer_3 \
    op interface \
    ports { preserved_row_buffer_3_address0 { O 8 vector } preserved_row_buffer_3_ce0 { O 1 bit } preserved_row_buffer_3_we0 { O 1 bit } preserved_row_buffer_3_d0 { O 16 vector } preserved_row_buffer_3_address1 { O 8 vector } preserved_row_buffer_3_ce1 { O 1 bit } preserved_row_buffer_3_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'preserved_row_buffer_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 673 \
    name preserved_row_buffer_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename preserved_row_buffer_4 \
    op interface \
    ports { preserved_row_buffer_4_address0 { O 8 vector } preserved_row_buffer_4_ce0 { O 1 bit } preserved_row_buffer_4_we0 { O 1 bit } preserved_row_buffer_4_d0 { O 16 vector } preserved_row_buffer_4_address1 { O 8 vector } preserved_row_buffer_4_ce1 { O 1 bit } preserved_row_buffer_4_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'preserved_row_buffer_4'"
}
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
set InstName seq_align_multiple_static_flow_control_loop_pipe_sequential_init_U
set CompName seq_align_multiple_static_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix seq_align_multiple_static_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


