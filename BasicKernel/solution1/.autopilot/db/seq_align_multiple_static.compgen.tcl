# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler seq_align_multiple_static_gmem_0_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler seq_align_multiple_static_gmem_m_axi BINDTYPE {interface} TYPE {adapter} IMPL {m_axi}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
set port_control {
querys_0 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 16
	offset_end 27
}
querys_1 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 28
	offset_end 39
}
querys_2 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 40
	offset_end 51
}
querys_3 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 52
	offset_end 63
}
querys_4 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 64
	offset_end 75
}
querys_5 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 76
	offset_end 87
}
querys_6 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 88
	offset_end 99
}
querys_7 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 100
	offset_end 111
}
querys_8 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 112
	offset_end 123
}
querys_9 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 124
	offset_end 135
}
querys_10 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 136
	offset_end 147
}
querys_11 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 148
	offset_end 159
}
querys_12 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 160
	offset_end 171
}
querys_13 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 172
	offset_end 183
}
querys_14 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 184
	offset_end 195
}
querys_15 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 196
	offset_end 207
}
querys_16 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 208
	offset_end 219
}
querys_17 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 220
	offset_end 231
}
querys_18 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 232
	offset_end 243
}
querys_19 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 244
	offset_end 255
}
querys_20 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 256
	offset_end 267
}
querys_21 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 268
	offset_end 279
}
querys_22 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 280
	offset_end 291
}
querys_23 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 292
	offset_end 303
}
querys_24 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 304
	offset_end 315
}
querys_25 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 316
	offset_end 327
}
querys_26 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 328
	offset_end 339
}
querys_27 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 340
	offset_end 351
}
querys_28 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 352
	offset_end 363
}
querys_29 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 364
	offset_end 375
}
querys_30 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 376
	offset_end 387
}
querys_31 { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 388
	offset_end 399
}
references { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 400
	offset_end 411
}
query_lengths { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 412
	offset_end 423
}
reference_lengths { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 424
	offset_end 435
}
penalties { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 436
	offset_end 447
}
tb_streams { 
	dir I
	width 64
	depth 1
	mode ap_none
	offset 448
	offset_end 459
}
ap_start { }
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict control $port_control


# Native S_AXILite:
if {${::AESL::PGuard_simmodel_gen}} {
	if {[info proc ::AESL_LIB_XILADAPTER::s_axilite_gen] == "::AESL_LIB_XILADAPTER::s_axilite_gen"} {
		eval "::AESL_LIB_XILADAPTER::s_axilite_gen { \
			id 873 \
			corename seq_align_multiple_static_control_axilite \
			name seq_align_multiple_static_control_s_axi \
			ports {$port_control} \
			op interface \
			interrupt_clear_mode TOW \
			interrupt_trigger_type default \
			is_flushable 0 \
			is_datawidth64 0 \
			is_addrwidth64 1 \
		} "
	} else {
		puts "@W \[IMPL-110\] Cannot find AXI Lite interface model in the library. Ignored generation of AXI Lite  interface for 'control'"
	}
}

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler seq_align_multiple_static_control_s_axi BINDTYPE interface TYPE interface_s_axilite
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -1 \
    name ${PortName} \
    reset_level 0 \
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
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -2 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
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


