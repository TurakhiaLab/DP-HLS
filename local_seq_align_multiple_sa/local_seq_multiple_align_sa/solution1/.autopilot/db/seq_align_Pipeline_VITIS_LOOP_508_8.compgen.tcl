# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 257 \
    name reference_string_comp_0 \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { reference_string_comp_0_TVALID { I 1 bit } reference_string_comp_0_TDATA { I 8 vector } reference_string_comp_0_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'reference_string_comp_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 258 \
    name local_reference \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference \
    op interface \
    ports { local_reference_address0 { O 3 vector } local_reference_ce0 { O 1 bit } local_reference_we0 { O 1 bit } local_reference_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 259 \
    name local_reference_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_1 \
    op interface \
    ports { local_reference_1_address0 { O 3 vector } local_reference_1_ce0 { O 1 bit } local_reference_1_we0 { O 1 bit } local_reference_1_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 260 \
    name local_reference_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_2 \
    op interface \
    ports { local_reference_2_address0 { O 3 vector } local_reference_2_ce0 { O 1 bit } local_reference_2_we0 { O 1 bit } local_reference_2_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 261 \
    name local_reference_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_3 \
    op interface \
    ports { local_reference_3_address0 { O 3 vector } local_reference_3_ce0 { O 1 bit } local_reference_3_we0 { O 1 bit } local_reference_3_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 262 \
    name local_reference_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_4 \
    op interface \
    ports { local_reference_4_address0 { O 3 vector } local_reference_4_ce0 { O 1 bit } local_reference_4_we0 { O 1 bit } local_reference_4_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 263 \
    name local_reference_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_5 \
    op interface \
    ports { local_reference_5_address0 { O 3 vector } local_reference_5_ce0 { O 1 bit } local_reference_5_we0 { O 1 bit } local_reference_5_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 264 \
    name local_reference_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_6 \
    op interface \
    ports { local_reference_6_address0 { O 3 vector } local_reference_6_ce0 { O 1 bit } local_reference_6_we0 { O 1 bit } local_reference_6_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 265 \
    name local_reference_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_7 \
    op interface \
    ports { local_reference_7_address0 { O 3 vector } local_reference_7_ce0 { O 1 bit } local_reference_7_we0 { O 1 bit } local_reference_7_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 266 \
    name local_reference_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_8 \
    op interface \
    ports { local_reference_8_address0 { O 3 vector } local_reference_8_ce0 { O 1 bit } local_reference_8_we0 { O 1 bit } local_reference_8_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 267 \
    name local_reference_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_9 \
    op interface \
    ports { local_reference_9_address0 { O 3 vector } local_reference_9_ce0 { O 1 bit } local_reference_9_we0 { O 1 bit } local_reference_9_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 268 \
    name local_reference_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_10 \
    op interface \
    ports { local_reference_10_address0 { O 3 vector } local_reference_10_ce0 { O 1 bit } local_reference_10_we0 { O 1 bit } local_reference_10_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 269 \
    name local_reference_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_11 \
    op interface \
    ports { local_reference_11_address0 { O 3 vector } local_reference_11_ce0 { O 1 bit } local_reference_11_we0 { O 1 bit } local_reference_11_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 270 \
    name local_reference_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_12 \
    op interface \
    ports { local_reference_12_address0 { O 3 vector } local_reference_12_ce0 { O 1 bit } local_reference_12_we0 { O 1 bit } local_reference_12_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 271 \
    name local_reference_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_13 \
    op interface \
    ports { local_reference_13_address0 { O 3 vector } local_reference_13_ce0 { O 1 bit } local_reference_13_we0 { O 1 bit } local_reference_13_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 272 \
    name local_reference_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_14 \
    op interface \
    ports { local_reference_14_address0 { O 3 vector } local_reference_14_ce0 { O 1 bit } local_reference_14_we0 { O 1 bit } local_reference_14_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 273 \
    name local_reference_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_15 \
    op interface \
    ports { local_reference_15_address0 { O 3 vector } local_reference_15_ce0 { O 1 bit } local_reference_15_we0 { O 1 bit } local_reference_15_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 274 \
    name local_reference_16 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_16 \
    op interface \
    ports { local_reference_16_address0 { O 3 vector } local_reference_16_ce0 { O 1 bit } local_reference_16_we0 { O 1 bit } local_reference_16_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 275 \
    name local_reference_17 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_17 \
    op interface \
    ports { local_reference_17_address0 { O 3 vector } local_reference_17_ce0 { O 1 bit } local_reference_17_we0 { O 1 bit } local_reference_17_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 276 \
    name local_reference_18 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_18 \
    op interface \
    ports { local_reference_18_address0 { O 3 vector } local_reference_18_ce0 { O 1 bit } local_reference_18_we0 { O 1 bit } local_reference_18_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 277 \
    name local_reference_19 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_19 \
    op interface \
    ports { local_reference_19_address0 { O 3 vector } local_reference_19_ce0 { O 1 bit } local_reference_19_we0 { O 1 bit } local_reference_19_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 278 \
    name local_reference_20 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_20 \
    op interface \
    ports { local_reference_20_address0 { O 3 vector } local_reference_20_ce0 { O 1 bit } local_reference_20_we0 { O 1 bit } local_reference_20_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 279 \
    name local_reference_21 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_21 \
    op interface \
    ports { local_reference_21_address0 { O 3 vector } local_reference_21_ce0 { O 1 bit } local_reference_21_we0 { O 1 bit } local_reference_21_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 280 \
    name local_reference_22 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_22 \
    op interface \
    ports { local_reference_22_address0 { O 3 vector } local_reference_22_ce0 { O 1 bit } local_reference_22_we0 { O 1 bit } local_reference_22_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 281 \
    name local_reference_23 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_23 \
    op interface \
    ports { local_reference_23_address0 { O 3 vector } local_reference_23_ce0 { O 1 bit } local_reference_23_we0 { O 1 bit } local_reference_23_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 282 \
    name local_reference_24 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_24 \
    op interface \
    ports { local_reference_24_address0 { O 3 vector } local_reference_24_ce0 { O 1 bit } local_reference_24_we0 { O 1 bit } local_reference_24_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 283 \
    name local_reference_25 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_25 \
    op interface \
    ports { local_reference_25_address0 { O 3 vector } local_reference_25_ce0 { O 1 bit } local_reference_25_we0 { O 1 bit } local_reference_25_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 284 \
    name local_reference_26 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_26 \
    op interface \
    ports { local_reference_26_address0 { O 3 vector } local_reference_26_ce0 { O 1 bit } local_reference_26_we0 { O 1 bit } local_reference_26_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 285 \
    name local_reference_27 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_27 \
    op interface \
    ports { local_reference_27_address0 { O 3 vector } local_reference_27_ce0 { O 1 bit } local_reference_27_we0 { O 1 bit } local_reference_27_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 286 \
    name local_reference_28 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_28 \
    op interface \
    ports { local_reference_28_address0 { O 3 vector } local_reference_28_ce0 { O 1 bit } local_reference_28_we0 { O 1 bit } local_reference_28_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 287 \
    name local_reference_29 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_29 \
    op interface \
    ports { local_reference_29_address0 { O 3 vector } local_reference_29_ce0 { O 1 bit } local_reference_29_we0 { O 1 bit } local_reference_29_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 288 \
    name local_reference_30 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_30 \
    op interface \
    ports { local_reference_30_address0 { O 3 vector } local_reference_30_ce0 { O 1 bit } local_reference_30_we0 { O 1 bit } local_reference_30_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 289 \
    name local_reference_31 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename local_reference_31 \
    op interface \
    ports { local_reference_31_address0 { O 3 vector } local_reference_31_ce0 { O 1 bit } local_reference_31_we0 { O 1 bit } local_reference_31_d0 { O 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'local_reference_31'"
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


