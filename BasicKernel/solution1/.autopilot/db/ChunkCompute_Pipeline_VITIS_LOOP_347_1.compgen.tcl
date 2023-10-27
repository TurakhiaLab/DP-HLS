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
    id 354 \
    name init_row_scr \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename init_row_scr \
    op interface \
    ports { init_row_scr_address0 { O 8 vector } init_row_scr_ce0 { O 1 bit } init_row_scr_q0 { I 48 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'init_row_scr'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 355 \
    name preserved_row_scr_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename preserved_row_scr_2 \
    op interface \
    ports { preserved_row_scr_2_address0 { O 8 vector } preserved_row_scr_2_ce0 { O 1 bit } preserved_row_scr_2_we0 { O 1 bit } preserved_row_scr_2_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'preserved_row_scr_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 356 \
    name preserved_row_scr_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename preserved_row_scr_1 \
    op interface \
    ports { preserved_row_scr_1_address0 { O 8 vector } preserved_row_scr_1_ce0 { O 1 bit } preserved_row_scr_1_we0 { O 1 bit } preserved_row_scr_1_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'preserved_row_scr_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 357 \
    name preserved_row_scr_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename preserved_row_scr_0 \
    op interface \
    ports { preserved_row_scr_0_address0 { O 8 vector } preserved_row_scr_0_ce0 { O 1 bit } preserved_row_scr_0_we0 { O 1 bit } preserved_row_scr_0_d0 { O 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'preserved_row_scr_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 361 \
    name init_col_scr_0 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename init_col_scr_0 \
    op interface \
    ports { init_col_scr_0_address0 { O 6 vector } init_col_scr_0_ce0 { O 1 bit } init_col_scr_0_q0 { I 16 vector } init_col_scr_0_address1 { O 6 vector } init_col_scr_0_ce1 { O 1 bit } init_col_scr_0_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'init_col_scr_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 362 \
    name init_col_scr_1 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename init_col_scr_1 \
    op interface \
    ports { init_col_scr_1_address0 { O 6 vector } init_col_scr_1_ce0 { O 1 bit } init_col_scr_1_q0 { I 16 vector } init_col_scr_1_address1 { O 6 vector } init_col_scr_1_ce1 { O 1 bit } init_col_scr_1_q1 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'init_col_scr_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 363 \
    name init_col_scr_2 \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename init_col_scr_2 \
    op interface \
    ports { init_col_scr_2_address0 { O 6 vector } init_col_scr_2_ce0 { O 1 bit } init_col_scr_2_q0 { I 16 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'init_col_scr_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 364 \
    name chunk_tbp_out_0 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_0 \
    op interface \
    ports { chunk_tbp_out_0_address0 { O 11 vector } chunk_tbp_out_0_ce0 { O 1 bit } chunk_tbp_out_0_we0 { O 1 bit } chunk_tbp_out_0_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_0'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 365 \
    name chunk_tbp_out_1 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_1 \
    op interface \
    ports { chunk_tbp_out_1_address0 { O 11 vector } chunk_tbp_out_1_ce0 { O 1 bit } chunk_tbp_out_1_we0 { O 1 bit } chunk_tbp_out_1_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_1'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 366 \
    name chunk_tbp_out_2 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_2 \
    op interface \
    ports { chunk_tbp_out_2_address0 { O 11 vector } chunk_tbp_out_2_ce0 { O 1 bit } chunk_tbp_out_2_we0 { O 1 bit } chunk_tbp_out_2_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_2'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 367 \
    name chunk_tbp_out_3 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_3 \
    op interface \
    ports { chunk_tbp_out_3_address0 { O 11 vector } chunk_tbp_out_3_ce0 { O 1 bit } chunk_tbp_out_3_we0 { O 1 bit } chunk_tbp_out_3_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_3'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 368 \
    name chunk_tbp_out_4 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_4 \
    op interface \
    ports { chunk_tbp_out_4_address0 { O 11 vector } chunk_tbp_out_4_ce0 { O 1 bit } chunk_tbp_out_4_we0 { O 1 bit } chunk_tbp_out_4_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_4'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 369 \
    name chunk_tbp_out_5 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_5 \
    op interface \
    ports { chunk_tbp_out_5_address0 { O 11 vector } chunk_tbp_out_5_ce0 { O 1 bit } chunk_tbp_out_5_we0 { O 1 bit } chunk_tbp_out_5_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_5'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 370 \
    name chunk_tbp_out_6 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_6 \
    op interface \
    ports { chunk_tbp_out_6_address0 { O 11 vector } chunk_tbp_out_6_ce0 { O 1 bit } chunk_tbp_out_6_we0 { O 1 bit } chunk_tbp_out_6_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_6'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 371 \
    name chunk_tbp_out_7 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_7 \
    op interface \
    ports { chunk_tbp_out_7_address0 { O 11 vector } chunk_tbp_out_7_ce0 { O 1 bit } chunk_tbp_out_7_we0 { O 1 bit } chunk_tbp_out_7_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_7'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 372 \
    name chunk_tbp_out_8 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_8 \
    op interface \
    ports { chunk_tbp_out_8_address0 { O 11 vector } chunk_tbp_out_8_ce0 { O 1 bit } chunk_tbp_out_8_we0 { O 1 bit } chunk_tbp_out_8_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_8'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 373 \
    name chunk_tbp_out_9 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_9 \
    op interface \
    ports { chunk_tbp_out_9_address0 { O 11 vector } chunk_tbp_out_9_ce0 { O 1 bit } chunk_tbp_out_9_we0 { O 1 bit } chunk_tbp_out_9_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_9'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 374 \
    name chunk_tbp_out_10 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_10 \
    op interface \
    ports { chunk_tbp_out_10_address0 { O 11 vector } chunk_tbp_out_10_ce0 { O 1 bit } chunk_tbp_out_10_we0 { O 1 bit } chunk_tbp_out_10_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_10'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 375 \
    name chunk_tbp_out_11 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_11 \
    op interface \
    ports { chunk_tbp_out_11_address0 { O 11 vector } chunk_tbp_out_11_ce0 { O 1 bit } chunk_tbp_out_11_we0 { O 1 bit } chunk_tbp_out_11_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_11'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 376 \
    name chunk_tbp_out_12 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_12 \
    op interface \
    ports { chunk_tbp_out_12_address0 { O 11 vector } chunk_tbp_out_12_ce0 { O 1 bit } chunk_tbp_out_12_we0 { O 1 bit } chunk_tbp_out_12_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_12'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 377 \
    name chunk_tbp_out_13 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_13 \
    op interface \
    ports { chunk_tbp_out_13_address0 { O 11 vector } chunk_tbp_out_13_ce0 { O 1 bit } chunk_tbp_out_13_we0 { O 1 bit } chunk_tbp_out_13_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_13'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 378 \
    name chunk_tbp_out_14 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_14 \
    op interface \
    ports { chunk_tbp_out_14_address0 { O 11 vector } chunk_tbp_out_14_ce0 { O 1 bit } chunk_tbp_out_14_we0 { O 1 bit } chunk_tbp_out_14_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_14'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 379 \
    name chunk_tbp_out_15 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_15 \
    op interface \
    ports { chunk_tbp_out_15_address0 { O 11 vector } chunk_tbp_out_15_ce0 { O 1 bit } chunk_tbp_out_15_we0 { O 1 bit } chunk_tbp_out_15_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_15'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 380 \
    name chunk_tbp_out_16 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_16 \
    op interface \
    ports { chunk_tbp_out_16_address0 { O 11 vector } chunk_tbp_out_16_ce0 { O 1 bit } chunk_tbp_out_16_we0 { O 1 bit } chunk_tbp_out_16_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_16'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 381 \
    name chunk_tbp_out_17 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_17 \
    op interface \
    ports { chunk_tbp_out_17_address0 { O 11 vector } chunk_tbp_out_17_ce0 { O 1 bit } chunk_tbp_out_17_we0 { O 1 bit } chunk_tbp_out_17_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_17'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 382 \
    name chunk_tbp_out_18 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_18 \
    op interface \
    ports { chunk_tbp_out_18_address0 { O 11 vector } chunk_tbp_out_18_ce0 { O 1 bit } chunk_tbp_out_18_we0 { O 1 bit } chunk_tbp_out_18_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_18'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 383 \
    name chunk_tbp_out_19 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_19 \
    op interface \
    ports { chunk_tbp_out_19_address0 { O 11 vector } chunk_tbp_out_19_ce0 { O 1 bit } chunk_tbp_out_19_we0 { O 1 bit } chunk_tbp_out_19_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_19'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 384 \
    name chunk_tbp_out_20 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_20 \
    op interface \
    ports { chunk_tbp_out_20_address0 { O 11 vector } chunk_tbp_out_20_ce0 { O 1 bit } chunk_tbp_out_20_we0 { O 1 bit } chunk_tbp_out_20_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_20'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 385 \
    name chunk_tbp_out_21 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_21 \
    op interface \
    ports { chunk_tbp_out_21_address0 { O 11 vector } chunk_tbp_out_21_ce0 { O 1 bit } chunk_tbp_out_21_we0 { O 1 bit } chunk_tbp_out_21_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_21'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 386 \
    name chunk_tbp_out_22 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_22 \
    op interface \
    ports { chunk_tbp_out_22_address0 { O 11 vector } chunk_tbp_out_22_ce0 { O 1 bit } chunk_tbp_out_22_we0 { O 1 bit } chunk_tbp_out_22_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_22'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 387 \
    name chunk_tbp_out_23 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_23 \
    op interface \
    ports { chunk_tbp_out_23_address0 { O 11 vector } chunk_tbp_out_23_ce0 { O 1 bit } chunk_tbp_out_23_we0 { O 1 bit } chunk_tbp_out_23_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_23'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 388 \
    name chunk_tbp_out_24 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_24 \
    op interface \
    ports { chunk_tbp_out_24_address0 { O 11 vector } chunk_tbp_out_24_ce0 { O 1 bit } chunk_tbp_out_24_we0 { O 1 bit } chunk_tbp_out_24_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_24'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 389 \
    name chunk_tbp_out_25 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_25 \
    op interface \
    ports { chunk_tbp_out_25_address0 { O 11 vector } chunk_tbp_out_25_ce0 { O 1 bit } chunk_tbp_out_25_we0 { O 1 bit } chunk_tbp_out_25_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_25'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 390 \
    name chunk_tbp_out_26 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_26 \
    op interface \
    ports { chunk_tbp_out_26_address0 { O 11 vector } chunk_tbp_out_26_ce0 { O 1 bit } chunk_tbp_out_26_we0 { O 1 bit } chunk_tbp_out_26_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_26'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 391 \
    name chunk_tbp_out_27 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_27 \
    op interface \
    ports { chunk_tbp_out_27_address0 { O 11 vector } chunk_tbp_out_27_ce0 { O 1 bit } chunk_tbp_out_27_we0 { O 1 bit } chunk_tbp_out_27_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_27'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 392 \
    name chunk_tbp_out_28 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_28 \
    op interface \
    ports { chunk_tbp_out_28_address0 { O 11 vector } chunk_tbp_out_28_ce0 { O 1 bit } chunk_tbp_out_28_we0 { O 1 bit } chunk_tbp_out_28_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_28'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 393 \
    name chunk_tbp_out_29 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_29 \
    op interface \
    ports { chunk_tbp_out_29_address0 { O 11 vector } chunk_tbp_out_29_ce0 { O 1 bit } chunk_tbp_out_29_we0 { O 1 bit } chunk_tbp_out_29_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_29'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 394 \
    name chunk_tbp_out_30 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_30 \
    op interface \
    ports { chunk_tbp_out_30_address0 { O 11 vector } chunk_tbp_out_30_ce0 { O 1 bit } chunk_tbp_out_30_we0 { O 1 bit } chunk_tbp_out_30_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_30'"
}
}


# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 395 \
    name chunk_tbp_out_31 \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename chunk_tbp_out_31 \
    op interface \
    ports { chunk_tbp_out_31_address0 { O 11 vector } chunk_tbp_out_31_ce0 { O 1 bit } chunk_tbp_out_31_we0 { O 1 bit } chunk_tbp_out_31_d0 { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'chunk_tbp_out_31'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name p_read32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read32 \
    op interface \
    ports { p_read32 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name p_read36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read36 \
    op interface \
    ports { p_read36 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name p_read37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read37 \
    op interface \
    ports { p_read37 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name p_read38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read38 \
    op interface \
    ports { p_read38 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name p_read39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read39 \
    op interface \
    ports { p_read39 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name p_read40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read40 \
    op interface \
    ports { p_read40 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name p_read41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read41 \
    op interface \
    ports { p_read41 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name p_read42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read42 \
    op interface \
    ports { p_read42 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name p_read43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read43 \
    op interface \
    ports { p_read43 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name p_read44 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read44 \
    op interface \
    ports { p_read44 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name p_read45 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read45 \
    op interface \
    ports { p_read45 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name p_read46 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read46 \
    op interface \
    ports { p_read46 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name p_read47 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read47 \
    op interface \
    ports { p_read47 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name p_read48 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read48 \
    op interface \
    ports { p_read48 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name p_read49 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read49 \
    op interface \
    ports { p_read49 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name p_read50 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read50 \
    op interface \
    ports { p_read50 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name p_read51 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read51 \
    op interface \
    ports { p_read51 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name p_read52 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read52 \
    op interface \
    ports { p_read52 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name p_read53 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read53 \
    op interface \
    ports { p_read53 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name p_read54 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read54 \
    op interface \
    ports { p_read54 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name p_read55 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read55 \
    op interface \
    ports { p_read55 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name p_read56 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read56 \
    op interface \
    ports { p_read56 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name p_read57 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read57 \
    op interface \
    ports { p_read57 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name p_read58 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read58 \
    op interface \
    ports { p_read58 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name p_read59 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read59 \
    op interface \
    ports { p_read59 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name p_read60 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read60 \
    op interface \
    ports { p_read60 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name p_read61 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read61 \
    op interface \
    ports { p_read61 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name p_read62 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read62 \
    op interface \
    ports { p_read62 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name p_read63 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read63 \
    op interface \
    ports { p_read63 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name p_read64 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read64 \
    op interface \
    ports { p_read64 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name p_read65 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read65 \
    op interface \
    ports { p_read65 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name p_read66 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read66 \
    op interface \
    ports { p_read66 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name p_read67 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read67 \
    op interface \
    ports { p_read67 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name p_read68 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read68 \
    op interface \
    ports { p_read68 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name p_read69 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read69 \
    op interface \
    ports { p_read69 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name p_read70 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read70 \
    op interface \
    ports { p_read70 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name p_read71 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read71 \
    op interface \
    ports { p_read71 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name p_read72 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read72 \
    op interface \
    ports { p_read72 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name p_read73 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read73 \
    op interface \
    ports { p_read73 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name p_read74 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read74 \
    op interface \
    ports { p_read74 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name p_read75 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read75 \
    op interface \
    ports { p_read75 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name p_read76 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read76 \
    op interface \
    ports { p_read76 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name p_read77 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read77 \
    op interface \
    ports { p_read77 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name p_read78 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read78 \
    op interface \
    ports { p_read78 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name p_read79 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read79 \
    op interface \
    ports { p_read79 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name p_read80 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read80 \
    op interface \
    ports { p_read80 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name p_read81 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read81 \
    op interface \
    ports { p_read81 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name p_read82 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read82 \
    op interface \
    ports { p_read82 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name p_read83 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read83 \
    op interface \
    ports { p_read83 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name p_read84 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read84 \
    op interface \
    ports { p_read84 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name p_read85 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read85 \
    op interface \
    ports { p_read85 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name p_read86 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read86 \
    op interface \
    ports { p_read86 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name p_read87 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read87 \
    op interface \
    ports { p_read87 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name p_read88 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read88 \
    op interface \
    ports { p_read88 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 271 \
    name p_read89 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read89 \
    op interface \
    ports { p_read89 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 272 \
    name p_read90 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read90 \
    op interface \
    ports { p_read90 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 273 \
    name p_read91 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read91 \
    op interface \
    ports { p_read91 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 274 \
    name p_read92 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read92 \
    op interface \
    ports { p_read92 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 275 \
    name p_read93 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read93 \
    op interface \
    ports { p_read93 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 276 \
    name p_read94 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read94 \
    op interface \
    ports { p_read94 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 277 \
    name p_read95 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read95 \
    op interface \
    ports { p_read95 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 278 \
    name p_read96 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read96 \
    op interface \
    ports { p_read96 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 279 \
    name p_read97 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read97 \
    op interface \
    ports { p_read97 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 280 \
    name p_read98 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read98 \
    op interface \
    ports { p_read98 { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 281 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 282 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 283 \
    name p_read2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read2 \
    op interface \
    ports { p_read2 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 284 \
    name p_read3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read3 \
    op interface \
    ports { p_read3 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 285 \
    name p_read4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read4 \
    op interface \
    ports { p_read4 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 286 \
    name p_read5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read5 \
    op interface \
    ports { p_read5 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 287 \
    name p_read6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read6 \
    op interface \
    ports { p_read6 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 288 \
    name p_read7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read7 \
    op interface \
    ports { p_read7 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 289 \
    name p_read8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read8 \
    op interface \
    ports { p_read8 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 290 \
    name p_read9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read9 \
    op interface \
    ports { p_read9 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 291 \
    name p_read10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read10 \
    op interface \
    ports { p_read10 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 292 \
    name p_read11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read11 \
    op interface \
    ports { p_read11 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 293 \
    name p_read12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read12 \
    op interface \
    ports { p_read12 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 294 \
    name p_read13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read13 \
    op interface \
    ports { p_read13 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 295 \
    name p_read14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read14 \
    op interface \
    ports { p_read14 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 296 \
    name p_read15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read15 \
    op interface \
    ports { p_read15 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 297 \
    name p_read16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read16 \
    op interface \
    ports { p_read16 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 298 \
    name p_read17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read17 \
    op interface \
    ports { p_read17 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 299 \
    name p_read18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read18 \
    op interface \
    ports { p_read18 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 300 \
    name p_read19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read19 \
    op interface \
    ports { p_read19 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 301 \
    name p_read20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read20 \
    op interface \
    ports { p_read20 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 302 \
    name p_read21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read21 \
    op interface \
    ports { p_read21 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 303 \
    name p_read22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read22 \
    op interface \
    ports { p_read22 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 304 \
    name p_read23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read23 \
    op interface \
    ports { p_read23 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 305 \
    name p_read24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read24 \
    op interface \
    ports { p_read24 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 306 \
    name p_read25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read25 \
    op interface \
    ports { p_read25 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 307 \
    name p_read26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read26 \
    op interface \
    ports { p_read26 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 308 \
    name p_read27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read27 \
    op interface \
    ports { p_read27 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 309 \
    name p_read28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read28 \
    op interface \
    ports { p_read28 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 310 \
    name p_read29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read29 \
    op interface \
    ports { p_read29 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 311 \
    name p_read30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read30 \
    op interface \
    ports { p_read30 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 312 \
    name p_read31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read31 \
    op interface \
    ports { p_read31 { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 313 \
    name sub \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_sub \
    op interface \
    ports { sub { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 314 \
    name chunk_row_offset \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_chunk_row_offset \
    op interface \
    ports { chunk_row_offset { I 31 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 315 \
    name global_query_length \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_global_query_length \
    op interface \
    ports { global_query_length { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 316 \
    name reference_length \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reference_length \
    op interface \
    ports { reference_length { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 317 \
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
    id 318 \
    name penalties_0_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_penalties_0_val \
    op interface \
    ports { penalties_0_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 319 \
    name local_query_1_val2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_1_val2 \
    op interface \
    ports { local_query_1_val2 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 320 \
    name penalties_3_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_penalties_3_val \
    op interface \
    ports { penalties_3_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 321 \
    name penalties_2_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_penalties_2_val \
    op interface \
    ports { penalties_2_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 322 \
    name local_query_2_val3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_2_val3 \
    op interface \
    ports { local_query_2_val3 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 323 \
    name local_query_3_val4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_3_val4 \
    op interface \
    ports { local_query_3_val4 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 324 \
    name local_query_4_val5 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_4_val5 \
    op interface \
    ports { local_query_4_val5 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 325 \
    name local_query_5_val6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_5_val6 \
    op interface \
    ports { local_query_5_val6 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 326 \
    name local_query_6_val7 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_6_val7 \
    op interface \
    ports { local_query_6_val7 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 327 \
    name local_query_7_val8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_7_val8 \
    op interface \
    ports { local_query_7_val8 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 328 \
    name local_query_8_val9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_8_val9 \
    op interface \
    ports { local_query_8_val9 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 329 \
    name local_query_9_val10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_9_val10 \
    op interface \
    ports { local_query_9_val10 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 330 \
    name local_query_10_val11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_10_val11 \
    op interface \
    ports { local_query_10_val11 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 331 \
    name local_query_11_val12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_11_val12 \
    op interface \
    ports { local_query_11_val12 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 332 \
    name local_query_12_val13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_12_val13 \
    op interface \
    ports { local_query_12_val13 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 333 \
    name local_query_13_val14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_13_val14 \
    op interface \
    ports { local_query_13_val14 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 334 \
    name local_query_14_val15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_14_val15 \
    op interface \
    ports { local_query_14_val15 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 335 \
    name local_query_15_val16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_15_val16 \
    op interface \
    ports { local_query_15_val16 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 336 \
    name local_query_16_val17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_16_val17 \
    op interface \
    ports { local_query_16_val17 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 337 \
    name local_query_17_val18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_17_val18 \
    op interface \
    ports { local_query_17_val18 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 338 \
    name local_query_18_val19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_18_val19 \
    op interface \
    ports { local_query_18_val19 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 339 \
    name local_query_19_val20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_19_val20 \
    op interface \
    ports { local_query_19_val20 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 340 \
    name local_query_20_val21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_20_val21 \
    op interface \
    ports { local_query_20_val21 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 341 \
    name local_query_21_val22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_21_val22 \
    op interface \
    ports { local_query_21_val22 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 342 \
    name local_query_22_val23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_22_val23 \
    op interface \
    ports { local_query_22_val23 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 343 \
    name local_query_23_val24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_23_val24 \
    op interface \
    ports { local_query_23_val24 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 344 \
    name local_query_24_val25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_24_val25 \
    op interface \
    ports { local_query_24_val25 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 345 \
    name local_query_25_val26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_25_val26 \
    op interface \
    ports { local_query_25_val26 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 346 \
    name local_query_26_val27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_26_val27 \
    op interface \
    ports { local_query_26_val27 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 347 \
    name local_query_27_val28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_27_val28 \
    op interface \
    ports { local_query_27_val28 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 348 \
    name local_query_28_val29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_28_val29 \
    op interface \
    ports { local_query_28_val29 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 349 \
    name local_query_29_val30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_29_val30 \
    op interface \
    ports { local_query_29_val30 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 350 \
    name local_query_30_val31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_30_val31 \
    op interface \
    ports { local_query_30_val31 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 351 \
    name local_query_31_val32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_31_val32 \
    op interface \
    ports { local_query_31_val32 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 352 \
    name penalties_1_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_penalties_1_val \
    op interface \
    ports { penalties_1_val { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 353 \
    name local_query_0_val1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_local_query_0_val1 \
    op interface \
    ports { local_query_0_val1 { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 358 \
    name reference \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_reference \
    op interface \
    ports { reference { I 64 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 359 \
    name gmem \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_gmem \
    op interface \
    ports { m_axi_gmem_AWVALID { O 1 bit } m_axi_gmem_AWREADY { I 1 bit } m_axi_gmem_AWADDR { O 64 vector } m_axi_gmem_AWID { O 1 vector } m_axi_gmem_AWLEN { O 32 vector } m_axi_gmem_AWSIZE { O 3 vector } m_axi_gmem_AWBURST { O 2 vector } m_axi_gmem_AWLOCK { O 2 vector } m_axi_gmem_AWCACHE { O 4 vector } m_axi_gmem_AWPROT { O 3 vector } m_axi_gmem_AWQOS { O 4 vector } m_axi_gmem_AWREGION { O 4 vector } m_axi_gmem_AWUSER { O 1 vector } m_axi_gmem_WVALID { O 1 bit } m_axi_gmem_WREADY { I 1 bit } m_axi_gmem_WDATA { O 32 vector } m_axi_gmem_WSTRB { O 4 vector } m_axi_gmem_WLAST { O 1 bit } m_axi_gmem_WID { O 1 vector } m_axi_gmem_WUSER { O 1 vector } m_axi_gmem_ARVALID { O 1 bit } m_axi_gmem_ARREADY { I 1 bit } m_axi_gmem_ARADDR { O 64 vector } m_axi_gmem_ARID { O 1 vector } m_axi_gmem_ARLEN { O 32 vector } m_axi_gmem_ARSIZE { O 3 vector } m_axi_gmem_ARBURST { O 2 vector } m_axi_gmem_ARLOCK { O 2 vector } m_axi_gmem_ARCACHE { O 4 vector } m_axi_gmem_ARPROT { O 3 vector } m_axi_gmem_ARQOS { O 4 vector } m_axi_gmem_ARREGION { O 4 vector } m_axi_gmem_ARUSER { O 1 vector } m_axi_gmem_RVALID { I 1 bit } m_axi_gmem_RREADY { O 1 bit } m_axi_gmem_RDATA { I 32 vector } m_axi_gmem_RLAST { I 1 bit } m_axi_gmem_RID { I 1 vector } m_axi_gmem_RFIFONUM { I 9 vector } m_axi_gmem_RUSER { I 1 vector } m_axi_gmem_RRESP { I 2 vector } m_axi_gmem_BVALID { I 1 bit } m_axi_gmem_BREADY { O 1 bit } m_axi_gmem_BRESP { I 2 vector } m_axi_gmem_BID { I 1 vector } m_axi_gmem_BUSER { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 360 \
    name trunc_ln \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_trunc_ln \
    op interface \
    ports { trunc_ln { I 2 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 396 \
    name idx_cast \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_idx_cast \
    op interface \
    ports { idx_cast { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 397 \
    name max_1_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_0_0_out \
    op interface \
    ports { max_1_0_0_out { O 32 vector } max_1_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 398 \
    name max_1_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_1_0_out \
    op interface \
    ports { max_1_1_0_out { O 32 vector } max_1_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 399 \
    name max_1_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_2_0_out \
    op interface \
    ports { max_1_2_0_out { O 32 vector } max_1_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 400 \
    name max_1_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_3_0_out \
    op interface \
    ports { max_1_3_0_out { O 32 vector } max_1_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 401 \
    name max_1_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_4_0_out \
    op interface \
    ports { max_1_4_0_out { O 32 vector } max_1_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 402 \
    name max_1_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_5_0_out \
    op interface \
    ports { max_1_5_0_out { O 32 vector } max_1_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 403 \
    name max_1_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_6_0_out \
    op interface \
    ports { max_1_6_0_out { O 32 vector } max_1_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 404 \
    name max_1_7_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_7_0_out \
    op interface \
    ports { max_1_7_0_out { O 32 vector } max_1_7_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 405 \
    name max_1_8_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_8_0_out \
    op interface \
    ports { max_1_8_0_out { O 32 vector } max_1_8_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 406 \
    name max_1_9_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_9_0_out \
    op interface \
    ports { max_1_9_0_out { O 32 vector } max_1_9_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 407 \
    name max_1_10_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_10_0_out \
    op interface \
    ports { max_1_10_0_out { O 32 vector } max_1_10_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 408 \
    name max_1_11_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_11_0_out \
    op interface \
    ports { max_1_11_0_out { O 32 vector } max_1_11_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 409 \
    name max_1_1213_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_1213_0_out \
    op interface \
    ports { max_1_1213_0_out { O 32 vector } max_1_1213_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 410 \
    name max_1_13_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_13_0_out \
    op interface \
    ports { max_1_13_0_out { O 32 vector } max_1_13_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 411 \
    name max_1_14_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_14_0_out \
    op interface \
    ports { max_1_14_0_out { O 32 vector } max_1_14_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 412 \
    name max_1_15_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_15_0_out \
    op interface \
    ports { max_1_15_0_out { O 32 vector } max_1_15_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 413 \
    name max_1_16_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_16_0_out \
    op interface \
    ports { max_1_16_0_out { O 32 vector } max_1_16_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 414 \
    name max_1_17_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_17_0_out \
    op interface \
    ports { max_1_17_0_out { O 32 vector } max_1_17_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 415 \
    name max_1_18_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_18_0_out \
    op interface \
    ports { max_1_18_0_out { O 32 vector } max_1_18_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 416 \
    name max_1_19_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_19_0_out \
    op interface \
    ports { max_1_19_0_out { O 32 vector } max_1_19_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 417 \
    name max_1_20_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_20_0_out \
    op interface \
    ports { max_1_20_0_out { O 32 vector } max_1_20_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 418 \
    name max_1_21_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_21_0_out \
    op interface \
    ports { max_1_21_0_out { O 32 vector } max_1_21_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 419 \
    name max_1_22_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_22_0_out \
    op interface \
    ports { max_1_22_0_out { O 32 vector } max_1_22_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 420 \
    name max_1_2325_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_2325_0_out \
    op interface \
    ports { max_1_2325_0_out { O 32 vector } max_1_2325_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 421 \
    name max_1_24_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_24_0_out \
    op interface \
    ports { max_1_24_0_out { O 32 vector } max_1_24_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 422 \
    name max_1_25_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_25_0_out \
    op interface \
    ports { max_1_25_0_out { O 32 vector } max_1_25_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 423 \
    name max_1_26_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_26_0_out \
    op interface \
    ports { max_1_26_0_out { O 32 vector } max_1_26_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 424 \
    name max_1_27_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_27_0_out \
    op interface \
    ports { max_1_27_0_out { O 32 vector } max_1_27_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 425 \
    name max_1_28_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_28_0_out \
    op interface \
    ports { max_1_28_0_out { O 32 vector } max_1_28_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 426 \
    name max_1_29_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_29_0_out \
    op interface \
    ports { max_1_29_0_out { O 32 vector } max_1_29_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 427 \
    name max_1_30_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_30_0_out \
    op interface \
    ports { max_1_30_0_out { O 32 vector } max_1_30_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 428 \
    name max_1_31_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_1_31_0_out \
    op interface \
    ports { max_1_31_0_out { O 32 vector } max_1_31_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 429 \
    name max_3_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_0_0_out \
    op interface \
    ports { max_3_0_0_out { O 32 vector } max_3_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 430 \
    name max_3_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_1_0_out \
    op interface \
    ports { max_3_1_0_out { O 32 vector } max_3_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 431 \
    name max_3_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_2_0_out \
    op interface \
    ports { max_3_2_0_out { O 32 vector } max_3_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 432 \
    name max_3_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_3_0_out \
    op interface \
    ports { max_3_3_0_out { O 32 vector } max_3_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 433 \
    name max_3_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_4_0_out \
    op interface \
    ports { max_3_4_0_out { O 32 vector } max_3_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 434 \
    name max_3_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_5_0_out \
    op interface \
    ports { max_3_5_0_out { O 32 vector } max_3_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 435 \
    name max_3_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_6_0_out \
    op interface \
    ports { max_3_6_0_out { O 32 vector } max_3_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 436 \
    name max_3_7_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_7_0_out \
    op interface \
    ports { max_3_7_0_out { O 32 vector } max_3_7_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 437 \
    name max_3_8_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_8_0_out \
    op interface \
    ports { max_3_8_0_out { O 32 vector } max_3_8_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 438 \
    name max_3_9_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_9_0_out \
    op interface \
    ports { max_3_9_0_out { O 32 vector } max_3_9_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 439 \
    name max_3_10_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_10_0_out \
    op interface \
    ports { max_3_10_0_out { O 32 vector } max_3_10_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 440 \
    name max_3_11_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_11_0_out \
    op interface \
    ports { max_3_11_0_out { O 32 vector } max_3_11_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 441 \
    name max_3_12_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_12_0_out \
    op interface \
    ports { max_3_12_0_out { O 32 vector } max_3_12_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 442 \
    name max_3_13_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_13_0_out \
    op interface \
    ports { max_3_13_0_out { O 32 vector } max_3_13_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 443 \
    name max_3_14_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_14_0_out \
    op interface \
    ports { max_3_14_0_out { O 32 vector } max_3_14_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 444 \
    name max_3_15_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_15_0_out \
    op interface \
    ports { max_3_15_0_out { O 32 vector } max_3_15_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 445 \
    name max_3_16_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_16_0_out \
    op interface \
    ports { max_3_16_0_out { O 32 vector } max_3_16_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 446 \
    name max_3_17_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_17_0_out \
    op interface \
    ports { max_3_17_0_out { O 32 vector } max_3_17_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 447 \
    name max_3_18_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_18_0_out \
    op interface \
    ports { max_3_18_0_out { O 32 vector } max_3_18_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 448 \
    name max_3_19_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_19_0_out \
    op interface \
    ports { max_3_19_0_out { O 32 vector } max_3_19_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 449 \
    name max_3_20_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_20_0_out \
    op interface \
    ports { max_3_20_0_out { O 32 vector } max_3_20_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 450 \
    name max_3_21_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_21_0_out \
    op interface \
    ports { max_3_21_0_out { O 32 vector } max_3_21_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 451 \
    name max_3_22_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_22_0_out \
    op interface \
    ports { max_3_22_0_out { O 32 vector } max_3_22_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 452 \
    name max_3_23_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_23_0_out \
    op interface \
    ports { max_3_23_0_out { O 32 vector } max_3_23_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 453 \
    name max_3_24_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_24_0_out \
    op interface \
    ports { max_3_24_0_out { O 32 vector } max_3_24_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 454 \
    name max_3_25_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_25_0_out \
    op interface \
    ports { max_3_25_0_out { O 32 vector } max_3_25_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 455 \
    name max_3_26_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_26_0_out \
    op interface \
    ports { max_3_26_0_out { O 32 vector } max_3_26_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 456 \
    name max_3_27_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_27_0_out \
    op interface \
    ports { max_3_27_0_out { O 32 vector } max_3_27_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 457 \
    name max_3_28_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_28_0_out \
    op interface \
    ports { max_3_28_0_out { O 32 vector } max_3_28_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 458 \
    name max_3_29_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_29_0_out \
    op interface \
    ports { max_3_29_0_out { O 32 vector } max_3_29_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 459 \
    name max_3_30_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_30_0_out \
    op interface \
    ports { max_3_30_0_out { O 32 vector } max_3_30_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 460 \
    name max_3_31_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_3_31_0_out \
    op interface \
    ports { max_3_31_0_out { O 32 vector } max_3_31_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 461 \
    name max_0_0_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_0_0_out \
    op interface \
    ports { max_0_0_0_out { O 16 vector } max_0_0_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 462 \
    name max_0_1_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_1_0_out \
    op interface \
    ports { max_0_1_0_out { O 16 vector } max_0_1_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 463 \
    name max_0_2_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_2_0_out \
    op interface \
    ports { max_0_2_0_out { O 16 vector } max_0_2_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 464 \
    name max_0_3_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_3_0_out \
    op interface \
    ports { max_0_3_0_out { O 16 vector } max_0_3_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 465 \
    name max_0_4_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_4_0_out \
    op interface \
    ports { max_0_4_0_out { O 16 vector } max_0_4_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 466 \
    name max_0_5_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_5_0_out \
    op interface \
    ports { max_0_5_0_out { O 16 vector } max_0_5_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 467 \
    name max_0_6_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_6_0_out \
    op interface \
    ports { max_0_6_0_out { O 16 vector } max_0_6_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 468 \
    name max_0_7_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_7_0_out \
    op interface \
    ports { max_0_7_0_out { O 16 vector } max_0_7_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 469 \
    name max_0_8_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_8_0_out \
    op interface \
    ports { max_0_8_0_out { O 16 vector } max_0_8_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 470 \
    name max_0_9_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_9_0_out \
    op interface \
    ports { max_0_9_0_out { O 16 vector } max_0_9_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 471 \
    name max_0_10_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_10_0_out \
    op interface \
    ports { max_0_10_0_out { O 16 vector } max_0_10_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 472 \
    name max_0_11_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_11_0_out \
    op interface \
    ports { max_0_11_0_out { O 16 vector } max_0_11_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 473 \
    name max_0_12_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_12_0_out \
    op interface \
    ports { max_0_12_0_out { O 16 vector } max_0_12_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 474 \
    name max_0_1315_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_1315_0_out \
    op interface \
    ports { max_0_1315_0_out { O 16 vector } max_0_1315_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 475 \
    name max_0_14_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_14_0_out \
    op interface \
    ports { max_0_14_0_out { O 16 vector } max_0_14_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 476 \
    name max_0_15_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_15_0_out \
    op interface \
    ports { max_0_15_0_out { O 16 vector } max_0_15_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 477 \
    name max_0_16_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_16_0_out \
    op interface \
    ports { max_0_16_0_out { O 16 vector } max_0_16_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 478 \
    name max_0_17_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_17_0_out \
    op interface \
    ports { max_0_17_0_out { O 16 vector } max_0_17_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 479 \
    name max_0_18_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_18_0_out \
    op interface \
    ports { max_0_18_0_out { O 16 vector } max_0_18_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 480 \
    name max_0_19_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_19_0_out \
    op interface \
    ports { max_0_19_0_out { O 16 vector } max_0_19_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 481 \
    name max_0_20_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_20_0_out \
    op interface \
    ports { max_0_20_0_out { O 16 vector } max_0_20_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 482 \
    name max_0_21_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_21_0_out \
    op interface \
    ports { max_0_21_0_out { O 16 vector } max_0_21_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 483 \
    name max_0_22_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_22_0_out \
    op interface \
    ports { max_0_22_0_out { O 16 vector } max_0_22_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 484 \
    name max_0_23_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_23_0_out \
    op interface \
    ports { max_0_23_0_out { O 16 vector } max_0_23_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 485 \
    name max_0_2427_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_2427_0_out \
    op interface \
    ports { max_0_2427_0_out { O 16 vector } max_0_2427_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 486 \
    name max_0_25_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_25_0_out \
    op interface \
    ports { max_0_25_0_out { O 16 vector } max_0_25_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 487 \
    name max_0_26_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_26_0_out \
    op interface \
    ports { max_0_26_0_out { O 16 vector } max_0_26_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 488 \
    name max_0_27_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_27_0_out \
    op interface \
    ports { max_0_27_0_out { O 16 vector } max_0_27_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 489 \
    name max_0_28_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_28_0_out \
    op interface \
    ports { max_0_28_0_out { O 16 vector } max_0_28_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 490 \
    name max_0_29_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_29_0_out \
    op interface \
    ports { max_0_29_0_out { O 16 vector } max_0_29_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 491 \
    name max_0_30_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_30_0_out \
    op interface \
    ports { max_0_30_0_out { O 16 vector } max_0_30_0_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 492 \
    name max_0_31_0_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_max_0_31_0_out \
    op interface \
    ports { max_0_31_0_out { O 16 vector } max_0_31_0_out_ap_vld { O 1 bit } } \
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


