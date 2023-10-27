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
    id 225 \
    name query_string_comp_0 \
    reset_level 1 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { query_string_comp_0_TVALID { I 1 bit } query_string_comp_0_TDATA { I 8 vector } query_string_comp_0_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'query_string_comp_0'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name empty_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_14 \
    op interface \
    ports { empty_14 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name empty_15 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_15 \
    op interface \
    ports { empty_15 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name empty_16 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_16 \
    op interface \
    ports { empty_16 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name empty_17 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_17 \
    op interface \
    ports { empty_17 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name empty_18 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_18 \
    op interface \
    ports { empty_18 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name empty_19 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_19 \
    op interface \
    ports { empty_19 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name empty_20 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_20 \
    op interface \
    ports { empty_20 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name empty_21 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_21 \
    op interface \
    ports { empty_21 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name empty_22 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_22 \
    op interface \
    ports { empty_22 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name empty_23 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_23 \
    op interface \
    ports { empty_23 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name empty_24 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_24 \
    op interface \
    ports { empty_24 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name empty_25 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_25 \
    op interface \
    ports { empty_25 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name empty_26 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_26 \
    op interface \
    ports { empty_26 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name empty_27 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_27 \
    op interface \
    ports { empty_27 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name empty_28 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_28 \
    op interface \
    ports { empty_28 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name empty_29 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_29 \
    op interface \
    ports { empty_29 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name empty_30 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_30 \
    op interface \
    ports { empty_30 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name empty_31 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_31 \
    op interface \
    ports { empty_31 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name empty_32 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_32 \
    op interface \
    ports { empty_32 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name empty_33 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_33 \
    op interface \
    ports { empty_33 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name empty_34 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_34 \
    op interface \
    ports { empty_34 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name empty_35 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_35 \
    op interface \
    ports { empty_35 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name empty_36 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_36 \
    op interface \
    ports { empty_36 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name empty_37 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_37 \
    op interface \
    ports { empty_37 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name empty_38 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_38 \
    op interface \
    ports { empty_38 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name empty_39 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_39 \
    op interface \
    ports { empty_39 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name empty_40 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_40 \
    op interface \
    ports { empty_40 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name empty_41 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_41 \
    op interface \
    ports { empty_41 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name empty_42 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_42 \
    op interface \
    ports { empty_42 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name empty_43 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty_43 \
    op interface \
    ports { empty_43 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name empty \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_empty \
    op interface \
    ports { empty { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name query_data_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_1_out \
    op interface \
    ports { query_data_1_out { O 8 vector } query_data_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name query_data_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_2_out \
    op interface \
    ports { query_data_2_out { O 8 vector } query_data_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name query_data_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_3_out \
    op interface \
    ports { query_data_3_out { O 8 vector } query_data_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name query_data_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_4_out \
    op interface \
    ports { query_data_4_out { O 8 vector } query_data_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name query_data_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_5_out \
    op interface \
    ports { query_data_5_out { O 8 vector } query_data_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name query_data_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_6_out \
    op interface \
    ports { query_data_6_out { O 8 vector } query_data_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name query_data_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_7_out \
    op interface \
    ports { query_data_7_out { O 8 vector } query_data_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name query_data_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_8_out \
    op interface \
    ports { query_data_8_out { O 8 vector } query_data_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name query_data_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_9_out \
    op interface \
    ports { query_data_9_out { O 8 vector } query_data_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name query_data_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_10_out \
    op interface \
    ports { query_data_10_out { O 8 vector } query_data_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name query_data_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_11_out \
    op interface \
    ports { query_data_11_out { O 8 vector } query_data_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name query_data_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_12_out \
    op interface \
    ports { query_data_12_out { O 8 vector } query_data_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name query_data_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_13_out \
    op interface \
    ports { query_data_13_out { O 8 vector } query_data_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name query_data_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_14_out \
    op interface \
    ports { query_data_14_out { O 8 vector } query_data_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name query_data_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_15_out \
    op interface \
    ports { query_data_15_out { O 8 vector } query_data_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name query_data_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_16_out \
    op interface \
    ports { query_data_16_out { O 8 vector } query_data_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name query_data_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_17_out \
    op interface \
    ports { query_data_17_out { O 8 vector } query_data_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name query_data_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_18_out \
    op interface \
    ports { query_data_18_out { O 8 vector } query_data_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name query_data_19_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_19_out \
    op interface \
    ports { query_data_19_out { O 8 vector } query_data_19_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name query_data_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_20_out \
    op interface \
    ports { query_data_20_out { O 8 vector } query_data_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name query_data_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_21_out \
    op interface \
    ports { query_data_21_out { O 8 vector } query_data_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name query_data_22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_22_out \
    op interface \
    ports { query_data_22_out { O 8 vector } query_data_22_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name query_data_23_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_23_out \
    op interface \
    ports { query_data_23_out { O 8 vector } query_data_23_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name query_data_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_24_out \
    op interface \
    ports { query_data_24_out { O 8 vector } query_data_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name query_data_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_25_out \
    op interface \
    ports { query_data_25_out { O 8 vector } query_data_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name query_data_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_26_out \
    op interface \
    ports { query_data_26_out { O 8 vector } query_data_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name query_data_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_27_out \
    op interface \
    ports { query_data_27_out { O 8 vector } query_data_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name query_data_28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_28_out \
    op interface \
    ports { query_data_28_out { O 8 vector } query_data_28_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name query_data_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_29_out \
    op interface \
    ports { query_data_29_out { O 8 vector } query_data_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name query_data_30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_30_out \
    op interface \
    ports { query_data_30_out { O 8 vector } query_data_30_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name query_data_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_query_data_out \
    op interface \
    ports { query_data_out { O 8 vector } query_data_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name p_phi_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_phi_out \
    op interface \
    ports { p_phi_out { O 8 vector } p_phi_out_ap_vld { O 1 bit } } \
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


