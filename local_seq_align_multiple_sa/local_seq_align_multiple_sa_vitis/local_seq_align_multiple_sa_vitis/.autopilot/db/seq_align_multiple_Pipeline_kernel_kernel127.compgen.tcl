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
    id 4998 \
    name Ix_mem_3_1_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Ix_mem_3_1_15 \
    op interface \
    ports { Ix_mem_3_1_15_address0 { O 1 vector } Ix_mem_3_1_15_ce0 { O 1 bit } Ix_mem_3_1_15_we0 { O 1 bit } Ix_mem_3_1_15_d0 { O 10 vector } Ix_mem_3_1_15_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Ix_mem_3_1_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 4999 \
    name dp_mem_3_2_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_2_15 \
    op interface \
    ports { dp_mem_3_2_15_address0 { O 1 vector } dp_mem_3_2_15_ce0 { O 1 bit } dp_mem_3_2_15_we0 { O 1 bit } dp_mem_3_2_15_d0 { O 10 vector } dp_mem_3_2_15_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_2_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5000 \
    name dp_mem_3_1_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_1_15 \
    op interface \
    ports { dp_mem_3_1_15_address0 { O 1 vector } dp_mem_3_1_15_ce0 { O 1 bit } dp_mem_3_1_15_we0 { O 1 bit } dp_mem_3_1_15_d0 { O 10 vector } dp_mem_3_1_15_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_1_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5001 \
    name Iy_mem_3_1_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Iy_mem_3_1_14 \
    op interface \
    ports { Iy_mem_3_1_14_address0 { O 1 vector } Iy_mem_3_1_14_ce0 { O 1 bit } Iy_mem_3_1_14_we0 { O 1 bit } Iy_mem_3_1_14_d0 { O 10 vector } Iy_mem_3_1_14_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Iy_mem_3_1_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5002 \
    name Ix_mem_3_1_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Ix_mem_3_1_14 \
    op interface \
    ports { Ix_mem_3_1_14_address0 { O 1 vector } Ix_mem_3_1_14_ce0 { O 1 bit } Ix_mem_3_1_14_we0 { O 1 bit } Ix_mem_3_1_14_d0 { O 10 vector } Ix_mem_3_1_14_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Ix_mem_3_1_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5003 \
    name dp_mem_3_2_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_2_14 \
    op interface \
    ports { dp_mem_3_2_14_address0 { O 1 vector } dp_mem_3_2_14_ce0 { O 1 bit } dp_mem_3_2_14_we0 { O 1 bit } dp_mem_3_2_14_d0 { O 10 vector } dp_mem_3_2_14_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_2_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5004 \
    name dp_mem_3_1_14 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_1_14 \
    op interface \
    ports { dp_mem_3_1_14_address0 { O 1 vector } dp_mem_3_1_14_ce0 { O 1 bit } dp_mem_3_1_14_we0 { O 1 bit } dp_mem_3_1_14_d0 { O 10 vector } dp_mem_3_1_14_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_1_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5005 \
    name Iy_mem_3_1_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Iy_mem_3_1_13 \
    op interface \
    ports { Iy_mem_3_1_13_address0 { O 1 vector } Iy_mem_3_1_13_ce0 { O 1 bit } Iy_mem_3_1_13_we0 { O 1 bit } Iy_mem_3_1_13_d0 { O 10 vector } Iy_mem_3_1_13_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Iy_mem_3_1_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5006 \
    name Ix_mem_3_1_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Ix_mem_3_1_13 \
    op interface \
    ports { Ix_mem_3_1_13_address0 { O 1 vector } Ix_mem_3_1_13_ce0 { O 1 bit } Ix_mem_3_1_13_we0 { O 1 bit } Ix_mem_3_1_13_d0 { O 10 vector } Ix_mem_3_1_13_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Ix_mem_3_1_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5007 \
    name dp_mem_3_2_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_2_13 \
    op interface \
    ports { dp_mem_3_2_13_address0 { O 1 vector } dp_mem_3_2_13_ce0 { O 1 bit } dp_mem_3_2_13_we0 { O 1 bit } dp_mem_3_2_13_d0 { O 10 vector } dp_mem_3_2_13_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_2_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5008 \
    name dp_mem_3_1_13 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_1_13 \
    op interface \
    ports { dp_mem_3_1_13_address0 { O 1 vector } dp_mem_3_1_13_ce0 { O 1 bit } dp_mem_3_1_13_we0 { O 1 bit } dp_mem_3_1_13_d0 { O 10 vector } dp_mem_3_1_13_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_1_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5009 \
    name Iy_mem_3_1_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Iy_mem_3_1_12 \
    op interface \
    ports { Iy_mem_3_1_12_address0 { O 1 vector } Iy_mem_3_1_12_ce0 { O 1 bit } Iy_mem_3_1_12_we0 { O 1 bit } Iy_mem_3_1_12_d0 { O 10 vector } Iy_mem_3_1_12_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Iy_mem_3_1_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5010 \
    name Ix_mem_3_1_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Ix_mem_3_1_12 \
    op interface \
    ports { Ix_mem_3_1_12_address0 { O 1 vector } Ix_mem_3_1_12_ce0 { O 1 bit } Ix_mem_3_1_12_we0 { O 1 bit } Ix_mem_3_1_12_d0 { O 10 vector } Ix_mem_3_1_12_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Ix_mem_3_1_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5011 \
    name dp_mem_3_2_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_2_12 \
    op interface \
    ports { dp_mem_3_2_12_address0 { O 1 vector } dp_mem_3_2_12_ce0 { O 1 bit } dp_mem_3_2_12_we0 { O 1 bit } dp_mem_3_2_12_d0 { O 10 vector } dp_mem_3_2_12_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_2_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5012 \
    name dp_mem_3_1_12 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_1_12 \
    op interface \
    ports { dp_mem_3_1_12_address0 { O 1 vector } dp_mem_3_1_12_ce0 { O 1 bit } dp_mem_3_1_12_we0 { O 1 bit } dp_mem_3_1_12_d0 { O 10 vector } dp_mem_3_1_12_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_1_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5013 \
    name Iy_mem_3_1_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Iy_mem_3_1_11 \
    op interface \
    ports { Iy_mem_3_1_11_address0 { O 1 vector } Iy_mem_3_1_11_ce0 { O 1 bit } Iy_mem_3_1_11_we0 { O 1 bit } Iy_mem_3_1_11_d0 { O 10 vector } Iy_mem_3_1_11_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Iy_mem_3_1_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5014 \
    name Ix_mem_3_1_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Ix_mem_3_1_11 \
    op interface \
    ports { Ix_mem_3_1_11_address0 { O 1 vector } Ix_mem_3_1_11_ce0 { O 1 bit } Ix_mem_3_1_11_we0 { O 1 bit } Ix_mem_3_1_11_d0 { O 10 vector } Ix_mem_3_1_11_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Ix_mem_3_1_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5015 \
    name dp_mem_3_2_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_2_11 \
    op interface \
    ports { dp_mem_3_2_11_address0 { O 1 vector } dp_mem_3_2_11_ce0 { O 1 bit } dp_mem_3_2_11_we0 { O 1 bit } dp_mem_3_2_11_d0 { O 10 vector } dp_mem_3_2_11_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_2_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5016 \
    name dp_mem_3_1_11 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_1_11 \
    op interface \
    ports { dp_mem_3_1_11_address0 { O 1 vector } dp_mem_3_1_11_ce0 { O 1 bit } dp_mem_3_1_11_we0 { O 1 bit } dp_mem_3_1_11_d0 { O 10 vector } dp_mem_3_1_11_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_1_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5017 \
    name Iy_mem_3_1_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Iy_mem_3_1_10 \
    op interface \
    ports { Iy_mem_3_1_10_address0 { O 1 vector } Iy_mem_3_1_10_ce0 { O 1 bit } Iy_mem_3_1_10_we0 { O 1 bit } Iy_mem_3_1_10_d0 { O 10 vector } Iy_mem_3_1_10_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Iy_mem_3_1_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5018 \
    name Ix_mem_3_1_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Ix_mem_3_1_10 \
    op interface \
    ports { Ix_mem_3_1_10_address0 { O 1 vector } Ix_mem_3_1_10_ce0 { O 1 bit } Ix_mem_3_1_10_we0 { O 1 bit } Ix_mem_3_1_10_d0 { O 10 vector } Ix_mem_3_1_10_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Ix_mem_3_1_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5019 \
    name dp_mem_3_2_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_2_10 \
    op interface \
    ports { dp_mem_3_2_10_address0 { O 1 vector } dp_mem_3_2_10_ce0 { O 1 bit } dp_mem_3_2_10_we0 { O 1 bit } dp_mem_3_2_10_d0 { O 10 vector } dp_mem_3_2_10_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_2_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5020 \
    name dp_mem_3_1_10 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_1_10 \
    op interface \
    ports { dp_mem_3_1_10_address0 { O 1 vector } dp_mem_3_1_10_ce0 { O 1 bit } dp_mem_3_1_10_we0 { O 1 bit } dp_mem_3_1_10_d0 { O 10 vector } dp_mem_3_1_10_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_1_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5021 \
    name Iy_mem_3_1_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Iy_mem_3_1_9 \
    op interface \
    ports { Iy_mem_3_1_9_address0 { O 1 vector } Iy_mem_3_1_9_ce0 { O 1 bit } Iy_mem_3_1_9_we0 { O 1 bit } Iy_mem_3_1_9_d0 { O 10 vector } Iy_mem_3_1_9_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Iy_mem_3_1_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5022 \
    name Ix_mem_3_1_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Ix_mem_3_1_9 \
    op interface \
    ports { Ix_mem_3_1_9_address0 { O 1 vector } Ix_mem_3_1_9_ce0 { O 1 bit } Ix_mem_3_1_9_we0 { O 1 bit } Ix_mem_3_1_9_d0 { O 10 vector } Ix_mem_3_1_9_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Ix_mem_3_1_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5023 \
    name dp_mem_3_2_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_2_9 \
    op interface \
    ports { dp_mem_3_2_9_address0 { O 1 vector } dp_mem_3_2_9_ce0 { O 1 bit } dp_mem_3_2_9_we0 { O 1 bit } dp_mem_3_2_9_d0 { O 10 vector } dp_mem_3_2_9_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_2_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5024 \
    name dp_mem_3_1_9 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_1_9 \
    op interface \
    ports { dp_mem_3_1_9_address0 { O 1 vector } dp_mem_3_1_9_ce0 { O 1 bit } dp_mem_3_1_9_we0 { O 1 bit } dp_mem_3_1_9_d0 { O 10 vector } dp_mem_3_1_9_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_1_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5025 \
    name Iy_mem_3_1_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Iy_mem_3_1_8 \
    op interface \
    ports { Iy_mem_3_1_8_address0 { O 1 vector } Iy_mem_3_1_8_ce0 { O 1 bit } Iy_mem_3_1_8_we0 { O 1 bit } Iy_mem_3_1_8_d0 { O 10 vector } Iy_mem_3_1_8_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Iy_mem_3_1_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5026 \
    name Ix_mem_3_1_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Ix_mem_3_1_8 \
    op interface \
    ports { Ix_mem_3_1_8_address0 { O 1 vector } Ix_mem_3_1_8_ce0 { O 1 bit } Ix_mem_3_1_8_we0 { O 1 bit } Ix_mem_3_1_8_d0 { O 10 vector } Ix_mem_3_1_8_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Ix_mem_3_1_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5027 \
    name dp_mem_3_2_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_2_8 \
    op interface \
    ports { dp_mem_3_2_8_address0 { O 1 vector } dp_mem_3_2_8_ce0 { O 1 bit } dp_mem_3_2_8_we0 { O 1 bit } dp_mem_3_2_8_d0 { O 10 vector } dp_mem_3_2_8_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_2_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5028 \
    name dp_mem_3_1_8 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_1_8 \
    op interface \
    ports { dp_mem_3_1_8_address0 { O 1 vector } dp_mem_3_1_8_ce0 { O 1 bit } dp_mem_3_1_8_we0 { O 1 bit } dp_mem_3_1_8_d0 { O 10 vector } dp_mem_3_1_8_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_1_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5029 \
    name Iy_mem_3_1_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Iy_mem_3_1_7 \
    op interface \
    ports { Iy_mem_3_1_7_address0 { O 1 vector } Iy_mem_3_1_7_ce0 { O 1 bit } Iy_mem_3_1_7_we0 { O 1 bit } Iy_mem_3_1_7_d0 { O 10 vector } Iy_mem_3_1_7_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Iy_mem_3_1_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5030 \
    name Ix_mem_3_1_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Ix_mem_3_1_7 \
    op interface \
    ports { Ix_mem_3_1_7_address0 { O 1 vector } Ix_mem_3_1_7_ce0 { O 1 bit } Ix_mem_3_1_7_we0 { O 1 bit } Ix_mem_3_1_7_d0 { O 10 vector } Ix_mem_3_1_7_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Ix_mem_3_1_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5031 \
    name dp_mem_3_2_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_2_7 \
    op interface \
    ports { dp_mem_3_2_7_address0 { O 1 vector } dp_mem_3_2_7_ce0 { O 1 bit } dp_mem_3_2_7_we0 { O 1 bit } dp_mem_3_2_7_d0 { O 10 vector } dp_mem_3_2_7_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_2_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5032 \
    name dp_mem_3_1_7 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_1_7 \
    op interface \
    ports { dp_mem_3_1_7_address0 { O 1 vector } dp_mem_3_1_7_ce0 { O 1 bit } dp_mem_3_1_7_we0 { O 1 bit } dp_mem_3_1_7_d0 { O 10 vector } dp_mem_3_1_7_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_1_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5033 \
    name Iy_mem_3_1_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Iy_mem_3_1_6 \
    op interface \
    ports { Iy_mem_3_1_6_address0 { O 1 vector } Iy_mem_3_1_6_ce0 { O 1 bit } Iy_mem_3_1_6_we0 { O 1 bit } Iy_mem_3_1_6_d0 { O 10 vector } Iy_mem_3_1_6_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Iy_mem_3_1_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5034 \
    name Ix_mem_3_1_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Ix_mem_3_1_6 \
    op interface \
    ports { Ix_mem_3_1_6_address0 { O 1 vector } Ix_mem_3_1_6_ce0 { O 1 bit } Ix_mem_3_1_6_we0 { O 1 bit } Ix_mem_3_1_6_d0 { O 10 vector } Ix_mem_3_1_6_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Ix_mem_3_1_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5035 \
    name dp_mem_3_2_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_2_6 \
    op interface \
    ports { dp_mem_3_2_6_address0 { O 1 vector } dp_mem_3_2_6_ce0 { O 1 bit } dp_mem_3_2_6_we0 { O 1 bit } dp_mem_3_2_6_d0 { O 10 vector } dp_mem_3_2_6_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_2_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5036 \
    name dp_mem_3_1_6 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_1_6 \
    op interface \
    ports { dp_mem_3_1_6_address0 { O 1 vector } dp_mem_3_1_6_ce0 { O 1 bit } dp_mem_3_1_6_we0 { O 1 bit } dp_mem_3_1_6_d0 { O 10 vector } dp_mem_3_1_6_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_1_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5037 \
    name Iy_mem_3_1_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Iy_mem_3_1_5 \
    op interface \
    ports { Iy_mem_3_1_5_address0 { O 1 vector } Iy_mem_3_1_5_ce0 { O 1 bit } Iy_mem_3_1_5_we0 { O 1 bit } Iy_mem_3_1_5_d0 { O 10 vector } Iy_mem_3_1_5_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Iy_mem_3_1_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5038 \
    name Ix_mem_3_1_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Ix_mem_3_1_5 \
    op interface \
    ports { Ix_mem_3_1_5_address0 { O 1 vector } Ix_mem_3_1_5_ce0 { O 1 bit } Ix_mem_3_1_5_we0 { O 1 bit } Ix_mem_3_1_5_d0 { O 10 vector } Ix_mem_3_1_5_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Ix_mem_3_1_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5039 \
    name dp_mem_3_2_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_2_5 \
    op interface \
    ports { dp_mem_3_2_5_address0 { O 1 vector } dp_mem_3_2_5_ce0 { O 1 bit } dp_mem_3_2_5_we0 { O 1 bit } dp_mem_3_2_5_d0 { O 10 vector } dp_mem_3_2_5_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_2_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5040 \
    name dp_mem_3_1_5 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_1_5 \
    op interface \
    ports { dp_mem_3_1_5_address0 { O 1 vector } dp_mem_3_1_5_ce0 { O 1 bit } dp_mem_3_1_5_we0 { O 1 bit } dp_mem_3_1_5_d0 { O 10 vector } dp_mem_3_1_5_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_1_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5041 \
    name Iy_mem_3_1_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Iy_mem_3_1_4 \
    op interface \
    ports { Iy_mem_3_1_4_address0 { O 1 vector } Iy_mem_3_1_4_ce0 { O 1 bit } Iy_mem_3_1_4_we0 { O 1 bit } Iy_mem_3_1_4_d0 { O 10 vector } Iy_mem_3_1_4_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Iy_mem_3_1_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5042 \
    name Ix_mem_3_1_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Ix_mem_3_1_4 \
    op interface \
    ports { Ix_mem_3_1_4_address0 { O 1 vector } Ix_mem_3_1_4_ce0 { O 1 bit } Ix_mem_3_1_4_we0 { O 1 bit } Ix_mem_3_1_4_d0 { O 10 vector } Ix_mem_3_1_4_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Ix_mem_3_1_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5043 \
    name dp_mem_3_2_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_2_4 \
    op interface \
    ports { dp_mem_3_2_4_address0 { O 1 vector } dp_mem_3_2_4_ce0 { O 1 bit } dp_mem_3_2_4_we0 { O 1 bit } dp_mem_3_2_4_d0 { O 10 vector } dp_mem_3_2_4_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_2_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5044 \
    name dp_mem_3_1_4 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_1_4 \
    op interface \
    ports { dp_mem_3_1_4_address0 { O 1 vector } dp_mem_3_1_4_ce0 { O 1 bit } dp_mem_3_1_4_we0 { O 1 bit } dp_mem_3_1_4_d0 { O 10 vector } dp_mem_3_1_4_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_1_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5045 \
    name Iy_mem_3_1_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Iy_mem_3_1_3 \
    op interface \
    ports { Iy_mem_3_1_3_address0 { O 1 vector } Iy_mem_3_1_3_ce0 { O 1 bit } Iy_mem_3_1_3_we0 { O 1 bit } Iy_mem_3_1_3_d0 { O 10 vector } Iy_mem_3_1_3_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Iy_mem_3_1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5046 \
    name Ix_mem_3_1_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Ix_mem_3_1_3 \
    op interface \
    ports { Ix_mem_3_1_3_address0 { O 1 vector } Ix_mem_3_1_3_ce0 { O 1 bit } Ix_mem_3_1_3_we0 { O 1 bit } Ix_mem_3_1_3_d0 { O 10 vector } Ix_mem_3_1_3_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Ix_mem_3_1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5047 \
    name dp_mem_3_2_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_2_3 \
    op interface \
    ports { dp_mem_3_2_3_address0 { O 1 vector } dp_mem_3_2_3_ce0 { O 1 bit } dp_mem_3_2_3_we0 { O 1 bit } dp_mem_3_2_3_d0 { O 10 vector } dp_mem_3_2_3_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_2_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5048 \
    name dp_mem_3_1_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_1_3 \
    op interface \
    ports { dp_mem_3_1_3_address0 { O 1 vector } dp_mem_3_1_3_ce0 { O 1 bit } dp_mem_3_1_3_we0 { O 1 bit } dp_mem_3_1_3_d0 { O 10 vector } dp_mem_3_1_3_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_1_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5049 \
    name Iy_mem_3_1_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Iy_mem_3_1_2 \
    op interface \
    ports { Iy_mem_3_1_2_address0 { O 1 vector } Iy_mem_3_1_2_ce0 { O 1 bit } Iy_mem_3_1_2_we0 { O 1 bit } Iy_mem_3_1_2_d0 { O 10 vector } Iy_mem_3_1_2_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Iy_mem_3_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5050 \
    name Ix_mem_3_1_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Ix_mem_3_1_2 \
    op interface \
    ports { Ix_mem_3_1_2_address0 { O 1 vector } Ix_mem_3_1_2_ce0 { O 1 bit } Ix_mem_3_1_2_we0 { O 1 bit } Ix_mem_3_1_2_d0 { O 10 vector } Ix_mem_3_1_2_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Ix_mem_3_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5051 \
    name dp_mem_3_2_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_2_2 \
    op interface \
    ports { dp_mem_3_2_2_address0 { O 1 vector } dp_mem_3_2_2_ce0 { O 1 bit } dp_mem_3_2_2_we0 { O 1 bit } dp_mem_3_2_2_d0 { O 10 vector } dp_mem_3_2_2_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_2_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5052 \
    name dp_mem_3_1_2 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_1_2 \
    op interface \
    ports { dp_mem_3_1_2_address0 { O 1 vector } dp_mem_3_1_2_ce0 { O 1 bit } dp_mem_3_1_2_we0 { O 1 bit } dp_mem_3_1_2_d0 { O 10 vector } dp_mem_3_1_2_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_1_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5053 \
    name Iy_mem_3_1_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Iy_mem_3_1_1 \
    op interface \
    ports { Iy_mem_3_1_1_address0 { O 1 vector } Iy_mem_3_1_1_ce0 { O 1 bit } Iy_mem_3_1_1_we0 { O 1 bit } Iy_mem_3_1_1_d0 { O 10 vector } Iy_mem_3_1_1_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Iy_mem_3_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5054 \
    name Ix_mem_3_1_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Ix_mem_3_1_1 \
    op interface \
    ports { Ix_mem_3_1_1_address0 { O 1 vector } Ix_mem_3_1_1_ce0 { O 1 bit } Ix_mem_3_1_1_we0 { O 1 bit } Ix_mem_3_1_1_d0 { O 10 vector } Ix_mem_3_1_1_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Ix_mem_3_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5055 \
    name dp_mem_3_2_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_2_1 \
    op interface \
    ports { dp_mem_3_2_1_address0 { O 1 vector } dp_mem_3_2_1_ce0 { O 1 bit } dp_mem_3_2_1_we0 { O 1 bit } dp_mem_3_2_1_d0 { O 10 vector } dp_mem_3_2_1_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_2_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5056 \
    name dp_mem_3_1_1 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_1_1 \
    op interface \
    ports { dp_mem_3_1_1_address0 { O 1 vector } dp_mem_3_1_1_ce0 { O 1 bit } dp_mem_3_1_1_we0 { O 1 bit } dp_mem_3_1_1_d0 { O 10 vector } dp_mem_3_1_1_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_1_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5057 \
    name Iy_mem_3_1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Iy_mem_3_1_0 \
    op interface \
    ports { Iy_mem_3_1_0_address0 { O 1 vector } Iy_mem_3_1_0_ce0 { O 1 bit } Iy_mem_3_1_0_we0 { O 1 bit } Iy_mem_3_1_0_d0 { O 10 vector } Iy_mem_3_1_0_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Iy_mem_3_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5058 \
    name Ix_mem_3_1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Ix_mem_3_1_0 \
    op interface \
    ports { Ix_mem_3_1_0_address0 { O 1 vector } Ix_mem_3_1_0_ce0 { O 1 bit } Ix_mem_3_1_0_we0 { O 1 bit } Ix_mem_3_1_0_d0 { O 10 vector } Ix_mem_3_1_0_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Ix_mem_3_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5059 \
    name dp_mem_3_2_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_2_0 \
    op interface \
    ports { dp_mem_3_2_0_address0 { O 1 vector } dp_mem_3_2_0_ce0 { O 1 bit } dp_mem_3_2_0_we0 { O 1 bit } dp_mem_3_2_0_d0 { O 10 vector } dp_mem_3_2_0_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_2_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5060 \
    name dp_mem_3_1_0 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename dp_mem_3_1_0 \
    op interface \
    ports { dp_mem_3_1_0_address0 { O 1 vector } dp_mem_3_1_0_ce0 { O 1 bit } dp_mem_3_1_0_we0 { O 1 bit } dp_mem_3_1_0_d0 { O 10 vector } dp_mem_3_1_0_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_mem_3_1_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5061 \
    name Iy_mem_3_1_15 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename Iy_mem_3_1_15 \
    op interface \
    ports { Iy_mem_3_1_15_address0 { O 1 vector } Iy_mem_3_1_15_ce0 { O 1 bit } Iy_mem_3_1_15_we0 { O 1 bit } Iy_mem_3_1_15_d0 { O 10 vector } Iy_mem_3_1_15_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'Iy_mem_3_1_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5062 \
    name dp_matrix_V_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_14 \
    op interface \
    ports { dp_matrix_V_14_address0 { O 8 vector } dp_matrix_V_14_ce0 { O 1 bit } dp_matrix_V_14_we0 { O 1 bit } dp_matrix_V_14_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5063 \
    name dp_matrix_V_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_13 \
    op interface \
    ports { dp_matrix_V_13_address0 { O 8 vector } dp_matrix_V_13_ce0 { O 1 bit } dp_matrix_V_13_we0 { O 1 bit } dp_matrix_V_13_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5064 \
    name dp_matrix_V_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_12 \
    op interface \
    ports { dp_matrix_V_12_address0 { O 8 vector } dp_matrix_V_12_ce0 { O 1 bit } dp_matrix_V_12_we0 { O 1 bit } dp_matrix_V_12_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5065 \
    name dp_matrix_V_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_11 \
    op interface \
    ports { dp_matrix_V_11_address0 { O 8 vector } dp_matrix_V_11_ce0 { O 1 bit } dp_matrix_V_11_we0 { O 1 bit } dp_matrix_V_11_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5066 \
    name dp_matrix_V_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_10 \
    op interface \
    ports { dp_matrix_V_10_address0 { O 8 vector } dp_matrix_V_10_ce0 { O 1 bit } dp_matrix_V_10_we0 { O 1 bit } dp_matrix_V_10_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5067 \
    name dp_matrix_V_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_9 \
    op interface \
    ports { dp_matrix_V_9_address0 { O 8 vector } dp_matrix_V_9_ce0 { O 1 bit } dp_matrix_V_9_we0 { O 1 bit } dp_matrix_V_9_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5068 \
    name dp_matrix_V_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_8 \
    op interface \
    ports { dp_matrix_V_8_address0 { O 8 vector } dp_matrix_V_8_ce0 { O 1 bit } dp_matrix_V_8_we0 { O 1 bit } dp_matrix_V_8_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5069 \
    name dp_matrix_V_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_7 \
    op interface \
    ports { dp_matrix_V_7_address0 { O 8 vector } dp_matrix_V_7_ce0 { O 1 bit } dp_matrix_V_7_we0 { O 1 bit } dp_matrix_V_7_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5070 \
    name dp_matrix_V_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_6 \
    op interface \
    ports { dp_matrix_V_6_address0 { O 8 vector } dp_matrix_V_6_ce0 { O 1 bit } dp_matrix_V_6_we0 { O 1 bit } dp_matrix_V_6_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5071 \
    name dp_matrix_V_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_5 \
    op interface \
    ports { dp_matrix_V_5_address0 { O 8 vector } dp_matrix_V_5_ce0 { O 1 bit } dp_matrix_V_5_we0 { O 1 bit } dp_matrix_V_5_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5072 \
    name dp_matrix_V_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_4 \
    op interface \
    ports { dp_matrix_V_4_address0 { O 8 vector } dp_matrix_V_4_ce0 { O 1 bit } dp_matrix_V_4_we0 { O 1 bit } dp_matrix_V_4_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5073 \
    name dp_matrix_V_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_3 \
    op interface \
    ports { dp_matrix_V_3_address0 { O 8 vector } dp_matrix_V_3_ce0 { O 1 bit } dp_matrix_V_3_we0 { O 1 bit } dp_matrix_V_3_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5074 \
    name dp_matrix_V_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_2 \
    op interface \
    ports { dp_matrix_V_2_address0 { O 8 vector } dp_matrix_V_2_ce0 { O 1 bit } dp_matrix_V_2_we0 { O 1 bit } dp_matrix_V_2_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5075 \
    name dp_matrix_V_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_1 \
    op interface \
    ports { dp_matrix_V_1_address0 { O 8 vector } dp_matrix_V_1_ce0 { O 1 bit } dp_matrix_V_1_we0 { O 1 bit } dp_matrix_V_1_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5076 \
    name last_pe_score_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename last_pe_score_3 \
    op interface \
    ports { last_pe_score_3_address0 { O 7 vector } last_pe_score_3_ce0 { O 1 bit } last_pe_score_3_we0 { O 1 bit } last_pe_score_3_d0 { O 10 vector } last_pe_score_3_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'last_pe_score_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5077 \
    name last_pe_scoreIx_3 \
    reset_level 1 \
    sync_rst true \
    dir IO \
    corename last_pe_scoreIx_3 \
    op interface \
    ports { last_pe_scoreIx_3_address0 { O 7 vector } last_pe_scoreIx_3_ce0 { O 1 bit } last_pe_scoreIx_3_we0 { O 1 bit } last_pe_scoreIx_3_d0 { O 10 vector } last_pe_scoreIx_3_q0 { I 10 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'last_pe_scoreIx_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5078 \
    name dp_matrix_V_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V_15 \
    op interface \
    ports { dp_matrix_V_15_address0 { O 8 vector } dp_matrix_V_15_ce0 { O 1 bit } dp_matrix_V_15_we0 { O 1 bit } dp_matrix_V_15_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5079 \
    name dp_matrix_V \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename dp_matrix_V \
    op interface \
    ports { dp_matrix_V_address0 { O 8 vector } dp_matrix_V_ce0 { O 1 bit } dp_matrix_V_we0 { O 1 bit } dp_matrix_V_d0 { O 9 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dp_matrix_V'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 5080 \
    name query_string_comp_3 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename query_string_comp_3 \
    op interface \
    ports { query_string_comp_3_address0 { O 7 vector } query_string_comp_3_ce0 { O 1 bit } query_string_comp_3_q0 { I 2 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'query_string_comp_3'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4982 \
    name local_query_V_213_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_213_reload \
    op interface \
    ports { local_query_V_213_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4983 \
    name local_query_V_212_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_212_reload \
    op interface \
    ports { local_query_V_212_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4984 \
    name local_query_V_211_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_211_reload \
    op interface \
    ports { local_query_V_211_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4985 \
    name local_query_V_210_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_210_reload \
    op interface \
    ports { local_query_V_210_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4986 \
    name local_query_V_209_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_209_reload \
    op interface \
    ports { local_query_V_209_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4987 \
    name local_query_V_208_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_208_reload \
    op interface \
    ports { local_query_V_208_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4988 \
    name local_query_V_207_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_207_reload \
    op interface \
    ports { local_query_V_207_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4989 \
    name local_query_V_206_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_206_reload \
    op interface \
    ports { local_query_V_206_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4990 \
    name local_query_V_205_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_205_reload \
    op interface \
    ports { local_query_V_205_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4991 \
    name local_query_V_204_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_204_reload \
    op interface \
    ports { local_query_V_204_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4992 \
    name local_query_V_203_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_203_reload \
    op interface \
    ports { local_query_V_203_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4993 \
    name local_query_V_202_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_202_reload \
    op interface \
    ports { local_query_V_202_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4994 \
    name local_query_V_201_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_201_reload \
    op interface \
    ports { local_query_V_201_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4995 \
    name local_query_V_200_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_200_reload \
    op interface \
    ports { local_query_V_200_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4996 \
    name local_query_V_199_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_199_reload \
    op interface \
    ports { local_query_V_199_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4997 \
    name local_query_V_198_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_V_198_reload \
    op interface \
    ports { local_query_V_198_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5081 \
    name local_reference_V_0_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_21_reload \
    op interface \
    ports { local_reference_V_0_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5082 \
    name local_reference_V_1_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_21_reload \
    op interface \
    ports { local_reference_V_1_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5083 \
    name local_reference_V_2_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_21_reload \
    op interface \
    ports { local_reference_V_2_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5084 \
    name local_reference_V_3_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_21_reload \
    op interface \
    ports { local_reference_V_3_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5085 \
    name local_reference_V_0_1_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_1_21_reload \
    op interface \
    ports { local_reference_V_0_1_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5086 \
    name local_reference_V_1_1_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_1_21_reload \
    op interface \
    ports { local_reference_V_1_1_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5087 \
    name local_reference_V_2_1_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_1_21_reload \
    op interface \
    ports { local_reference_V_2_1_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5088 \
    name local_reference_V_3_1_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_1_21_reload \
    op interface \
    ports { local_reference_V_3_1_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5089 \
    name local_reference_V_0_2_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_2_21_reload \
    op interface \
    ports { local_reference_V_0_2_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5090 \
    name local_reference_V_1_2_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_2_21_reload \
    op interface \
    ports { local_reference_V_1_2_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5091 \
    name local_reference_V_2_2_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_2_21_reload \
    op interface \
    ports { local_reference_V_2_2_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5092 \
    name local_reference_V_3_2_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_2_21_reload \
    op interface \
    ports { local_reference_V_3_2_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5093 \
    name local_reference_V_0_3_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_3_21_reload \
    op interface \
    ports { local_reference_V_0_3_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5094 \
    name local_reference_V_1_3_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_3_21_reload \
    op interface \
    ports { local_reference_V_1_3_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5095 \
    name local_reference_V_2_3_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_3_21_reload \
    op interface \
    ports { local_reference_V_2_3_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5096 \
    name local_reference_V_3_3_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_3_21_reload \
    op interface \
    ports { local_reference_V_3_3_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5097 \
    name local_reference_V_0_4_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_4_21_reload \
    op interface \
    ports { local_reference_V_0_4_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5098 \
    name local_reference_V_1_4_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_4_21_reload \
    op interface \
    ports { local_reference_V_1_4_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5099 \
    name local_reference_V_2_4_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_4_21_reload \
    op interface \
    ports { local_reference_V_2_4_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5100 \
    name local_reference_V_3_4_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_4_21_reload \
    op interface \
    ports { local_reference_V_3_4_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5101 \
    name local_reference_V_0_5_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_5_21_reload \
    op interface \
    ports { local_reference_V_0_5_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5102 \
    name local_reference_V_1_5_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_5_21_reload \
    op interface \
    ports { local_reference_V_1_5_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5103 \
    name local_reference_V_2_5_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_5_21_reload \
    op interface \
    ports { local_reference_V_2_5_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5104 \
    name local_reference_V_3_5_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_5_21_reload \
    op interface \
    ports { local_reference_V_3_5_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5105 \
    name local_reference_V_0_6_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_6_21_reload \
    op interface \
    ports { local_reference_V_0_6_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5106 \
    name local_reference_V_1_6_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_6_21_reload \
    op interface \
    ports { local_reference_V_1_6_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5107 \
    name local_reference_V_2_6_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_6_21_reload \
    op interface \
    ports { local_reference_V_2_6_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5108 \
    name local_reference_V_3_6_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_6_21_reload \
    op interface \
    ports { local_reference_V_3_6_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5109 \
    name local_reference_V_0_7_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_7_21_reload \
    op interface \
    ports { local_reference_V_0_7_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5110 \
    name local_reference_V_1_7_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_7_21_reload \
    op interface \
    ports { local_reference_V_1_7_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5111 \
    name local_reference_V_2_7_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_7_21_reload \
    op interface \
    ports { local_reference_V_2_7_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5112 \
    name local_reference_V_3_7_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_7_21_reload \
    op interface \
    ports { local_reference_V_3_7_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5113 \
    name local_reference_V_0_8_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_8_21_reload \
    op interface \
    ports { local_reference_V_0_8_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5114 \
    name local_reference_V_1_8_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_8_21_reload \
    op interface \
    ports { local_reference_V_1_8_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5115 \
    name local_reference_V_2_8_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_8_21_reload \
    op interface \
    ports { local_reference_V_2_8_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5116 \
    name local_reference_V_3_8_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_8_21_reload \
    op interface \
    ports { local_reference_V_3_8_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5117 \
    name local_reference_V_0_9_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_9_21_reload \
    op interface \
    ports { local_reference_V_0_9_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5118 \
    name local_reference_V_1_9_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_9_21_reload \
    op interface \
    ports { local_reference_V_1_9_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5119 \
    name local_reference_V_2_9_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_9_21_reload \
    op interface \
    ports { local_reference_V_2_9_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5120 \
    name local_reference_V_3_9_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_9_21_reload \
    op interface \
    ports { local_reference_V_3_9_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5121 \
    name local_reference_V_0_10_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_10_21_reload \
    op interface \
    ports { local_reference_V_0_10_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5122 \
    name local_reference_V_1_10_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_10_21_reload \
    op interface \
    ports { local_reference_V_1_10_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5123 \
    name local_reference_V_2_10_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_10_21_reload \
    op interface \
    ports { local_reference_V_2_10_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5124 \
    name local_reference_V_3_10_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_10_21_reload \
    op interface \
    ports { local_reference_V_3_10_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5125 \
    name local_reference_V_0_11_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_11_21_reload \
    op interface \
    ports { local_reference_V_0_11_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5126 \
    name local_reference_V_1_11_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_11_21_reload \
    op interface \
    ports { local_reference_V_1_11_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5127 \
    name local_reference_V_2_11_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_11_21_reload \
    op interface \
    ports { local_reference_V_2_11_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5128 \
    name local_reference_V_3_11_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_11_21_reload \
    op interface \
    ports { local_reference_V_3_11_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5129 \
    name local_reference_V_0_12_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_12_21_reload \
    op interface \
    ports { local_reference_V_0_12_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5130 \
    name local_reference_V_1_12_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_12_21_reload \
    op interface \
    ports { local_reference_V_1_12_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5131 \
    name local_reference_V_2_12_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_12_21_reload \
    op interface \
    ports { local_reference_V_2_12_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5132 \
    name local_reference_V_3_12_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_12_21_reload \
    op interface \
    ports { local_reference_V_3_12_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5133 \
    name local_reference_V_0_13_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_13_21_reload \
    op interface \
    ports { local_reference_V_0_13_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5134 \
    name local_reference_V_1_13_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_13_21_reload \
    op interface \
    ports { local_reference_V_1_13_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5135 \
    name local_reference_V_2_13_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_13_21_reload \
    op interface \
    ports { local_reference_V_2_13_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5136 \
    name local_reference_V_3_13_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_13_21_reload \
    op interface \
    ports { local_reference_V_3_13_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5137 \
    name local_reference_V_0_14_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_14_21_reload \
    op interface \
    ports { local_reference_V_0_14_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5138 \
    name local_reference_V_1_14_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_14_21_reload \
    op interface \
    ports { local_reference_V_1_14_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5139 \
    name local_reference_V_2_14_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_14_21_reload \
    op interface \
    ports { local_reference_V_2_14_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5140 \
    name local_reference_V_3_14_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_14_21_reload \
    op interface \
    ports { local_reference_V_3_14_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5141 \
    name local_reference_V_0_15_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_0_15_21_reload \
    op interface \
    ports { local_reference_V_0_15_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5142 \
    name local_reference_V_1_15_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_1_15_21_reload \
    op interface \
    ports { local_reference_V_1_15_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5143 \
    name local_reference_V_2_15_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_2_15_21_reload \
    op interface \
    ports { local_reference_V_2_15_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5144 \
    name local_reference_V_3_15_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_reference_V_3_15_21_reload \
    op interface \
    ports { local_reference_V_3_15_21_reload { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5145 \
    name p_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi_out \
    op interface \
    ports { p_phi_out { O 10 vector } p_phi_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5146 \
    name p_phi358_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi358_out \
    op interface \
    ports { p_phi358_out { O 10 vector } p_phi358_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5147 \
    name p_phi359_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi359_out \
    op interface \
    ports { p_phi359_out { O 10 vector } p_phi359_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5148 \
    name p_phi360_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi360_out \
    op interface \
    ports { p_phi360_out { O 10 vector } p_phi360_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5149 \
    name p_phi361_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi361_out \
    op interface \
    ports { p_phi361_out { O 10 vector } p_phi361_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5150 \
    name p_phi362_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi362_out \
    op interface \
    ports { p_phi362_out { O 10 vector } p_phi362_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5151 \
    name p_phi363_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi363_out \
    op interface \
    ports { p_phi363_out { O 10 vector } p_phi363_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5152 \
    name p_phi364_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi364_out \
    op interface \
    ports { p_phi364_out { O 10 vector } p_phi364_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5153 \
    name p_phi365_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi365_out \
    op interface \
    ports { p_phi365_out { O 10 vector } p_phi365_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5154 \
    name p_phi366_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi366_out \
    op interface \
    ports { p_phi366_out { O 10 vector } p_phi366_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5155 \
    name p_phi367_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi367_out \
    op interface \
    ports { p_phi367_out { O 10 vector } p_phi367_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5156 \
    name p_phi368_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi368_out \
    op interface \
    ports { p_phi368_out { O 10 vector } p_phi368_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5157 \
    name p_phi369_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi369_out \
    op interface \
    ports { p_phi369_out { O 10 vector } p_phi369_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5158 \
    name p_phi370_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi370_out \
    op interface \
    ports { p_phi370_out { O 10 vector } p_phi370_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5159 \
    name p_phi371_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi371_out \
    op interface \
    ports { p_phi371_out { O 10 vector } p_phi371_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5160 \
    name p_phi372_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi372_out \
    op interface \
    ports { p_phi372_out { O 10 vector } p_phi372_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5161 \
    name p_phi373_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi373_out \
    op interface \
    ports { p_phi373_out { O 10 vector } p_phi373_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5162 \
    name p_phi374_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi374_out \
    op interface \
    ports { p_phi374_out { O 10 vector } p_phi374_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5163 \
    name p_phi375_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi375_out \
    op interface \
    ports { p_phi375_out { O 10 vector } p_phi375_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5164 \
    name p_phi376_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi376_out \
    op interface \
    ports { p_phi376_out { O 10 vector } p_phi376_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5165 \
    name p_phi377_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi377_out \
    op interface \
    ports { p_phi377_out { O 10 vector } p_phi377_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5166 \
    name p_phi378_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi378_out \
    op interface \
    ports { p_phi378_out { O 10 vector } p_phi378_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5167 \
    name p_phi379_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi379_out \
    op interface \
    ports { p_phi379_out { O 10 vector } p_phi379_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5168 \
    name p_phi380_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi380_out \
    op interface \
    ports { p_phi380_out { O 10 vector } p_phi380_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5169 \
    name p_phi381_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi381_out \
    op interface \
    ports { p_phi381_out { O 10 vector } p_phi381_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5170 \
    name p_phi382_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi382_out \
    op interface \
    ports { p_phi382_out { O 10 vector } p_phi382_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5171 \
    name p_phi383_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi383_out \
    op interface \
    ports { p_phi383_out { O 10 vector } p_phi383_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5172 \
    name p_phi384_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi384_out \
    op interface \
    ports { p_phi384_out { O 10 vector } p_phi384_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5173 \
    name p_phi385_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi385_out \
    op interface \
    ports { p_phi385_out { O 10 vector } p_phi385_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5174 \
    name p_phi386_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi386_out \
    op interface \
    ports { p_phi386_out { O 10 vector } p_phi386_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5175 \
    name p_phi387_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi387_out \
    op interface \
    ports { p_phi387_out { O 10 vector } p_phi387_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5176 \
    name p_phi388_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi388_out \
    op interface \
    ports { p_phi388_out { O 10 vector } p_phi388_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5177 \
    name p_phi389_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi389_out \
    op interface \
    ports { p_phi389_out { O 10 vector } p_phi389_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5178 \
    name p_phi390_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi390_out \
    op interface \
    ports { p_phi390_out { O 10 vector } p_phi390_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5179 \
    name p_phi391_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi391_out \
    op interface \
    ports { p_phi391_out { O 10 vector } p_phi391_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5180 \
    name p_phi392_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi392_out \
    op interface \
    ports { p_phi392_out { O 10 vector } p_phi392_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5181 \
    name p_phi393_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi393_out \
    op interface \
    ports { p_phi393_out { O 10 vector } p_phi393_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5182 \
    name p_phi394_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi394_out \
    op interface \
    ports { p_phi394_out { O 10 vector } p_phi394_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5183 \
    name p_phi395_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi395_out \
    op interface \
    ports { p_phi395_out { O 10 vector } p_phi395_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5184 \
    name p_phi396_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi396_out \
    op interface \
    ports { p_phi396_out { O 10 vector } p_phi396_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5185 \
    name p_phi397_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi397_out \
    op interface \
    ports { p_phi397_out { O 10 vector } p_phi397_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5186 \
    name p_phi398_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi398_out \
    op interface \
    ports { p_phi398_out { O 10 vector } p_phi398_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5187 \
    name p_phi399_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi399_out \
    op interface \
    ports { p_phi399_out { O 10 vector } p_phi399_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5188 \
    name p_phi400_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi400_out \
    op interface \
    ports { p_phi400_out { O 10 vector } p_phi400_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5189 \
    name p_phi401_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi401_out \
    op interface \
    ports { p_phi401_out { O 10 vector } p_phi401_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5190 \
    name p_phi402_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi402_out \
    op interface \
    ports { p_phi402_out { O 10 vector } p_phi402_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5191 \
    name p_phi403_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi403_out \
    op interface \
    ports { p_phi403_out { O 10 vector } p_phi403_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5192 \
    name p_phi404_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi404_out \
    op interface \
    ports { p_phi404_out { O 10 vector } p_phi404_out_ap_vld { O 1 bit } } \
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


