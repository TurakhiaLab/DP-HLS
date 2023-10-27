# This script segment is generated automatically by AutoPilot

set id 674
set name seq_align_multiple_static_mux_32_5_16_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 16
set din0_signed 0
set din1_width 16
set din1_signed 0
set din2_width 16
set din2_signed 0
set din3_width 16
set din3_signed 0
set din4_width 16
set din4_signed 0
set din5_width 16
set din5_signed 0
set din6_width 16
set din6_signed 0
set din7_width 16
set din7_signed 0
set din8_width 16
set din8_signed 0
set din9_width 16
set din9_signed 0
set din10_width 16
set din10_signed 0
set din11_width 16
set din11_signed 0
set din12_width 16
set din12_signed 0
set din13_width 16
set din13_signed 0
set din14_width 16
set din14_signed 0
set din15_width 16
set din15_signed 0
set din16_width 16
set din16_signed 0
set din17_width 16
set din17_signed 0
set din18_width 16
set din18_signed 0
set din19_width 16
set din19_signed 0
set din20_width 16
set din20_signed 0
set din21_width 16
set din21_signed 0
set din22_width 16
set din22_signed 0
set din23_width 16
set din23_signed 0
set din24_width 16
set din24_signed 0
set din25_width 16
set din25_signed 0
set din26_width 16
set din26_signed 0
set din27_width 16
set din27_signed 0
set din28_width 16
set din28_signed 0
set din29_width 16
set din29_signed 0
set din30_width 16
set din30_signed 0
set din31_width 16
set din31_signed 0
set din32_width 5
set din32_signed 0
set dout_width 16
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


set id 675
set name seq_align_multiple_static_mux_32_5_32_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 0
set din3_width 32
set din3_signed 0
set din4_width 32
set din4_signed 0
set din5_width 32
set din5_signed 0
set din6_width 32
set din6_signed 0
set din7_width 32
set din7_signed 0
set din8_width 32
set din8_signed 0
set din9_width 32
set din9_signed 0
set din10_width 32
set din10_signed 0
set din11_width 32
set din11_signed 0
set din12_width 32
set din12_signed 0
set din13_width 32
set din13_signed 0
set din14_width 32
set din14_signed 0
set din15_width 32
set din15_signed 0
set din16_width 32
set din16_signed 0
set din17_width 32
set din17_signed 0
set din18_width 32
set din18_signed 0
set din19_width 32
set din19_signed 0
set din20_width 32
set din20_signed 0
set din21_width 32
set din21_signed 0
set din22_width 32
set din22_signed 0
set din23_width 32
set din23_signed 0
set din24_width 32
set din24_signed 0
set din25_width 32
set din25_signed 0
set din26_width 32
set din26_signed 0
set din27_width 32
set din27_signed 0
set din28_width 32
set din28_signed 0
set din29_width 32
set din29_signed 0
set din30_width 32
set din30_signed 0
set din31_width 32
set din31_signed 0
set din32_width 5
set din32_signed 0
set dout_width 32
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    din14_width ${din14_width} \
    din14_signed ${din14_signed} \
    din15_width ${din15_width} \
    din15_signed ${din15_signed} \
    din16_width ${din16_width} \
    din16_signed ${din16_signed} \
    din17_width ${din17_width} \
    din17_signed ${din17_signed} \
    din18_width ${din18_width} \
    din18_signed ${din18_signed} \
    din19_width ${din19_width} \
    din19_signed ${din19_signed} \
    din20_width ${din20_width} \
    din20_signed ${din20_signed} \
    din21_width ${din21_width} \
    din21_signed ${din21_signed} \
    din22_width ${din22_width} \
    din22_signed ${din22_signed} \
    din23_width ${din23_width} \
    din23_signed ${din23_signed} \
    din24_width ${din24_width} \
    din24_signed ${din24_signed} \
    din25_width ${din25_width} \
    din25_signed ${din25_signed} \
    din26_width ${din26_width} \
    din26_signed ${din26_signed} \
    din27_width ${din27_width} \
    din27_signed ${din27_signed} \
    din28_width ${din28_width} \
    din28_signed ${din28_signed} \
    din29_width ${din29_width} \
    din29_signed ${din29_signed} \
    din30_width ${din30_width} \
    din30_signed ${din30_signed} \
    din31_width ${din31_width} \
    din31_signed ${din31_signed} \
    din32_width ${din32_width} \
    din32_signed ${din32_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler seq_align_multiple_static_AlignStatic_Pipeline_VITIS_LOOP_463_1_local_max_pe_ROM_AUTO_1R BINDTYPE {storage} TYPE {rom} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 680 \
    name max_score \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_score \
    op interface \
    ports { max_score { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 681 \
    name max_chunk_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_chunk_offset \
    op interface \
    ports { max_chunk_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 682 \
    name max_pe_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_max_pe_offset \
    op interface \
    ports { max_pe_offset { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 683 \
    name local_max_score_32_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_32_2 \
    op interface \
    ports { local_max_score_32_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 684 \
    name local_max_score_33_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_33_2 \
    op interface \
    ports { local_max_score_33_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 685 \
    name local_max_score_34_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_34_2 \
    op interface \
    ports { local_max_score_34_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 686 \
    name local_max_score_35_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_35_2 \
    op interface \
    ports { local_max_score_35_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 687 \
    name local_max_score_36_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_36_2 \
    op interface \
    ports { local_max_score_36_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 688 \
    name local_max_score_37_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_37_2 \
    op interface \
    ports { local_max_score_37_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 689 \
    name local_max_score_38_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_38_2 \
    op interface \
    ports { local_max_score_38_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 690 \
    name local_max_score_39_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_39_2 \
    op interface \
    ports { local_max_score_39_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 691 \
    name local_max_score_40_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_40_2 \
    op interface \
    ports { local_max_score_40_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 692 \
    name local_max_score_41_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_41_2 \
    op interface \
    ports { local_max_score_41_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 693 \
    name local_max_score_42_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_42_2 \
    op interface \
    ports { local_max_score_42_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 694 \
    name local_max_score_43_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_43_2 \
    op interface \
    ports { local_max_score_43_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 695 \
    name local_max_score_44_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_44_2 \
    op interface \
    ports { local_max_score_44_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 696 \
    name local_max_score_45_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_45_2 \
    op interface \
    ports { local_max_score_45_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 697 \
    name local_max_score_46_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_46_2 \
    op interface \
    ports { local_max_score_46_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 698 \
    name local_max_score_47_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_47_2 \
    op interface \
    ports { local_max_score_47_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 699 \
    name local_max_score_48_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_48_2 \
    op interface \
    ports { local_max_score_48_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 700 \
    name local_max_score_49_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_49_2 \
    op interface \
    ports { local_max_score_49_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 701 \
    name local_max_score_50_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_50_2 \
    op interface \
    ports { local_max_score_50_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 702 \
    name local_max_score_51_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_51_2 \
    op interface \
    ports { local_max_score_51_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 703 \
    name local_max_score_52_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_52_2 \
    op interface \
    ports { local_max_score_52_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 704 \
    name local_max_score_53_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_53_2 \
    op interface \
    ports { local_max_score_53_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 705 \
    name local_max_score_54_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_54_2 \
    op interface \
    ports { local_max_score_54_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 706 \
    name local_max_score_55_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_55_2 \
    op interface \
    ports { local_max_score_55_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 707 \
    name local_max_score_56_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_56_2 \
    op interface \
    ports { local_max_score_56_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 708 \
    name local_max_score_57_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_57_2 \
    op interface \
    ports { local_max_score_57_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 709 \
    name local_max_score_58_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_58_2 \
    op interface \
    ports { local_max_score_58_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 710 \
    name local_max_score_59_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_59_2 \
    op interface \
    ports { local_max_score_59_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 711 \
    name local_max_score_60_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_60_2 \
    op interface \
    ports { local_max_score_60_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 712 \
    name local_max_score_61_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_61_2 \
    op interface \
    ports { local_max_score_61_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 713 \
    name local_max_score_62_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_score_62_2 \
    op interface \
    ports { local_max_score_62_2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 714 \
    name local_max_chunk_offset_32_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_32_2 \
    op interface \
    ports { local_max_chunk_offset_32_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 715 \
    name local_max_chunk_offset_33_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_33_2 \
    op interface \
    ports { local_max_chunk_offset_33_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 716 \
    name local_max_chunk_offset_34_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_34_2 \
    op interface \
    ports { local_max_chunk_offset_34_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 717 \
    name local_max_chunk_offset_35_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_35_2 \
    op interface \
    ports { local_max_chunk_offset_35_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 718 \
    name local_max_chunk_offset_36_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_36_2 \
    op interface \
    ports { local_max_chunk_offset_36_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 719 \
    name local_max_chunk_offset_37_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_37_2 \
    op interface \
    ports { local_max_chunk_offset_37_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 720 \
    name local_max_chunk_offset_38_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_38_2 \
    op interface \
    ports { local_max_chunk_offset_38_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 721 \
    name local_max_chunk_offset_39_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_39_2 \
    op interface \
    ports { local_max_chunk_offset_39_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 722 \
    name local_max_chunk_offset_40_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_40_2 \
    op interface \
    ports { local_max_chunk_offset_40_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 723 \
    name local_max_chunk_offset_41_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_41_2 \
    op interface \
    ports { local_max_chunk_offset_41_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 724 \
    name local_max_chunk_offset_42_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_42_2 \
    op interface \
    ports { local_max_chunk_offset_42_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 725 \
    name local_max_chunk_offset_43_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_43_2 \
    op interface \
    ports { local_max_chunk_offset_43_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 726 \
    name local_max_chunk_offset_44_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_44_2 \
    op interface \
    ports { local_max_chunk_offset_44_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 727 \
    name local_max_chunk_offset_45_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_45_2 \
    op interface \
    ports { local_max_chunk_offset_45_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 728 \
    name local_max_chunk_offset_46_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_46_2 \
    op interface \
    ports { local_max_chunk_offset_46_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 729 \
    name local_max_chunk_offset_47_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_47_2 \
    op interface \
    ports { local_max_chunk_offset_47_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 730 \
    name local_max_chunk_offset_48_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_48_2 \
    op interface \
    ports { local_max_chunk_offset_48_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 731 \
    name local_max_chunk_offset_49_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_49_2 \
    op interface \
    ports { local_max_chunk_offset_49_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 732 \
    name local_max_chunk_offset_50_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_50_2 \
    op interface \
    ports { local_max_chunk_offset_50_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 733 \
    name local_max_chunk_offset_51_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_51_2 \
    op interface \
    ports { local_max_chunk_offset_51_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 734 \
    name local_max_chunk_offset_52_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_52_2 \
    op interface \
    ports { local_max_chunk_offset_52_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 735 \
    name local_max_chunk_offset_53_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_53_2 \
    op interface \
    ports { local_max_chunk_offset_53_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 736 \
    name local_max_chunk_offset_54_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_54_2 \
    op interface \
    ports { local_max_chunk_offset_54_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 737 \
    name local_max_chunk_offset_55_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_55_2 \
    op interface \
    ports { local_max_chunk_offset_55_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 738 \
    name local_max_chunk_offset_56_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_56_2 \
    op interface \
    ports { local_max_chunk_offset_56_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 739 \
    name local_max_chunk_offset_57_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_57_2 \
    op interface \
    ports { local_max_chunk_offset_57_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 740 \
    name local_max_chunk_offset_58_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_58_2 \
    op interface \
    ports { local_max_chunk_offset_58_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 741 \
    name local_max_chunk_offset_59_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_59_2 \
    op interface \
    ports { local_max_chunk_offset_59_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 742 \
    name local_max_chunk_offset_60_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_60_2 \
    op interface \
    ports { local_max_chunk_offset_60_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 743 \
    name local_max_chunk_offset_61_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_61_2 \
    op interface \
    ports { local_max_chunk_offset_61_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 744 \
    name local_max_chunk_offset_62_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_chunk_offset_62_2 \
    op interface \
    ports { local_max_chunk_offset_62_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 745 \
    name local_max_pe_offset_32_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_32_2 \
    op interface \
    ports { local_max_pe_offset_32_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 746 \
    name local_max_pe_offset_33_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_33_2 \
    op interface \
    ports { local_max_pe_offset_33_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 747 \
    name local_max_pe_offset_34_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_34_2 \
    op interface \
    ports { local_max_pe_offset_34_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 748 \
    name local_max_pe_offset_35_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_35_2 \
    op interface \
    ports { local_max_pe_offset_35_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 749 \
    name local_max_pe_offset_36_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_36_2 \
    op interface \
    ports { local_max_pe_offset_36_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 750 \
    name local_max_pe_offset_37_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_37_2 \
    op interface \
    ports { local_max_pe_offset_37_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 751 \
    name local_max_pe_offset_38_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_38_2 \
    op interface \
    ports { local_max_pe_offset_38_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 752 \
    name local_max_pe_offset_39_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_39_2 \
    op interface \
    ports { local_max_pe_offset_39_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 753 \
    name local_max_pe_offset_40_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_40_2 \
    op interface \
    ports { local_max_pe_offset_40_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 754 \
    name local_max_pe_offset_41_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_41_2 \
    op interface \
    ports { local_max_pe_offset_41_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 755 \
    name local_max_pe_offset_42_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_42_2 \
    op interface \
    ports { local_max_pe_offset_42_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 756 \
    name local_max_pe_offset_43_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_43_2 \
    op interface \
    ports { local_max_pe_offset_43_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 757 \
    name local_max_pe_offset_44_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_44_2 \
    op interface \
    ports { local_max_pe_offset_44_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 758 \
    name local_max_pe_offset_45_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_45_2 \
    op interface \
    ports { local_max_pe_offset_45_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 759 \
    name local_max_pe_offset_46_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_46_2 \
    op interface \
    ports { local_max_pe_offset_46_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 760 \
    name local_max_pe_offset_47_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_47_2 \
    op interface \
    ports { local_max_pe_offset_47_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 761 \
    name local_max_pe_offset_48_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_48_2 \
    op interface \
    ports { local_max_pe_offset_48_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 762 \
    name local_max_pe_offset_49_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_49_2 \
    op interface \
    ports { local_max_pe_offset_49_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 763 \
    name local_max_pe_offset_50_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_50_2 \
    op interface \
    ports { local_max_pe_offset_50_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 764 \
    name local_max_pe_offset_51_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_51_2 \
    op interface \
    ports { local_max_pe_offset_51_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 765 \
    name local_max_pe_offset_52_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_52_2 \
    op interface \
    ports { local_max_pe_offset_52_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 766 \
    name local_max_pe_offset_53_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_53_2 \
    op interface \
    ports { local_max_pe_offset_53_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 767 \
    name local_max_pe_offset_54_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_54_2 \
    op interface \
    ports { local_max_pe_offset_54_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 768 \
    name local_max_pe_offset_55_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_55_2 \
    op interface \
    ports { local_max_pe_offset_55_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 769 \
    name local_max_pe_offset_56_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_56_2 \
    op interface \
    ports { local_max_pe_offset_56_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 770 \
    name local_max_pe_offset_57_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_57_2 \
    op interface \
    ports { local_max_pe_offset_57_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 771 \
    name local_max_pe_offset_58_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_58_2 \
    op interface \
    ports { local_max_pe_offset_58_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 772 \
    name local_max_pe_offset_59_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_59_2 \
    op interface \
    ports { local_max_pe_offset_59_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 773 \
    name local_max_pe_offset_60_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_60_2 \
    op interface \
    ports { local_max_pe_offset_60_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 774 \
    name local_max_pe_offset_61_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_61_2 \
    op interface \
    ports { local_max_pe_offset_61_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 775 \
    name local_max_pe_offset_62_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_max_pe_offset_62_2 \
    op interface \
    ports { local_max_pe_offset_62_2 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 776 \
    name max_chunk_offset_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_chunk_offset_1_out \
    op interface \
    ports { max_chunk_offset_1_out { O 32 vector } max_chunk_offset_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 777 \
    name max_pe_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_pe_1_out \
    op interface \
    ports { max_pe_1_out { O 32 vector } max_pe_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 778 \
    name max_pe_offset_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_pe_offset_1_out \
    op interface \
    ports { max_pe_offset_1_out { O 32 vector } max_pe_offset_1_out_ap_vld { O 1 bit } } \
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


