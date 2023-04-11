// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module seq_align_multiple_seq_align_multiple_Pipeline_VITIS_LOOP_75_1_VITIS_LOOP_76_29 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        dp_matrix_V_address0,
        dp_matrix_V_ce0,
        dp_matrix_V_we0,
        dp_matrix_V_d0,
        dp_matrix_V_1_address0,
        dp_matrix_V_1_ce0,
        dp_matrix_V_1_we0,
        dp_matrix_V_1_d0,
        dp_matrix_V_2_address0,
        dp_matrix_V_2_ce0,
        dp_matrix_V_2_we0,
        dp_matrix_V_2_d0,
        dp_matrix_V_3_address0,
        dp_matrix_V_3_ce0,
        dp_matrix_V_3_we0,
        dp_matrix_V_3_d0,
        dp_matrix_V_4_address0,
        dp_matrix_V_4_ce0,
        dp_matrix_V_4_we0,
        dp_matrix_V_4_d0,
        dp_matrix_V_5_address0,
        dp_matrix_V_5_ce0,
        dp_matrix_V_5_we0,
        dp_matrix_V_5_d0,
        dp_matrix_V_6_address0,
        dp_matrix_V_6_ce0,
        dp_matrix_V_6_we0,
        dp_matrix_V_6_d0,
        dp_matrix_V_7_address0,
        dp_matrix_V_7_ce0,
        dp_matrix_V_7_we0,
        dp_matrix_V_7_d0,
        dp_matrix_V_8_address0,
        dp_matrix_V_8_ce0,
        dp_matrix_V_8_we0,
        dp_matrix_V_8_d0,
        dp_matrix_V_9_address0,
        dp_matrix_V_9_ce0,
        dp_matrix_V_9_we0,
        dp_matrix_V_9_d0,
        dp_matrix_V_10_address0,
        dp_matrix_V_10_ce0,
        dp_matrix_V_10_we0,
        dp_matrix_V_10_d0,
        dp_matrix_V_11_address0,
        dp_matrix_V_11_ce0,
        dp_matrix_V_11_we0,
        dp_matrix_V_11_d0,
        dp_matrix_V_12_address0,
        dp_matrix_V_12_ce0,
        dp_matrix_V_12_we0,
        dp_matrix_V_12_d0,
        dp_matrix_V_13_address0,
        dp_matrix_V_13_ce0,
        dp_matrix_V_13_we0,
        dp_matrix_V_13_d0,
        dp_matrix_V_14_address0,
        dp_matrix_V_14_ce0,
        dp_matrix_V_14_we0,
        dp_matrix_V_14_d0,
        dp_matrix_V_15_address0,
        dp_matrix_V_15_ce0,
        dp_matrix_V_15_we0,
        dp_matrix_V_15_d0
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] dp_matrix_V_address0;
output   dp_matrix_V_ce0;
output   dp_matrix_V_we0;
output  [8:0] dp_matrix_V_d0;
output  [7:0] dp_matrix_V_1_address0;
output   dp_matrix_V_1_ce0;
output   dp_matrix_V_1_we0;
output  [8:0] dp_matrix_V_1_d0;
output  [7:0] dp_matrix_V_2_address0;
output   dp_matrix_V_2_ce0;
output   dp_matrix_V_2_we0;
output  [8:0] dp_matrix_V_2_d0;
output  [7:0] dp_matrix_V_3_address0;
output   dp_matrix_V_3_ce0;
output   dp_matrix_V_3_we0;
output  [8:0] dp_matrix_V_3_d0;
output  [7:0] dp_matrix_V_4_address0;
output   dp_matrix_V_4_ce0;
output   dp_matrix_V_4_we0;
output  [8:0] dp_matrix_V_4_d0;
output  [7:0] dp_matrix_V_5_address0;
output   dp_matrix_V_5_ce0;
output   dp_matrix_V_5_we0;
output  [8:0] dp_matrix_V_5_d0;
output  [7:0] dp_matrix_V_6_address0;
output   dp_matrix_V_6_ce0;
output   dp_matrix_V_6_we0;
output  [8:0] dp_matrix_V_6_d0;
output  [7:0] dp_matrix_V_7_address0;
output   dp_matrix_V_7_ce0;
output   dp_matrix_V_7_we0;
output  [8:0] dp_matrix_V_7_d0;
output  [7:0] dp_matrix_V_8_address0;
output   dp_matrix_V_8_ce0;
output   dp_matrix_V_8_we0;
output  [8:0] dp_matrix_V_8_d0;
output  [7:0] dp_matrix_V_9_address0;
output   dp_matrix_V_9_ce0;
output   dp_matrix_V_9_we0;
output  [8:0] dp_matrix_V_9_d0;
output  [7:0] dp_matrix_V_10_address0;
output   dp_matrix_V_10_ce0;
output   dp_matrix_V_10_we0;
output  [8:0] dp_matrix_V_10_d0;
output  [7:0] dp_matrix_V_11_address0;
output   dp_matrix_V_11_ce0;
output   dp_matrix_V_11_we0;
output  [8:0] dp_matrix_V_11_d0;
output  [7:0] dp_matrix_V_12_address0;
output   dp_matrix_V_12_ce0;
output   dp_matrix_V_12_we0;
output  [8:0] dp_matrix_V_12_d0;
output  [7:0] dp_matrix_V_13_address0;
output   dp_matrix_V_13_ce0;
output   dp_matrix_V_13_we0;
output  [8:0] dp_matrix_V_13_d0;
output  [7:0] dp_matrix_V_14_address0;
output   dp_matrix_V_14_ce0;
output   dp_matrix_V_14_we0;
output  [8:0] dp_matrix_V_14_d0;
output  [7:0] dp_matrix_V_15_address0;
output   dp_matrix_V_15_ce0;
output   dp_matrix_V_15_we0;
output  [8:0] dp_matrix_V_15_d0;

reg ap_idle;
reg dp_matrix_V_ce0;
reg dp_matrix_V_we0;
reg dp_matrix_V_1_ce0;
reg dp_matrix_V_1_we0;
reg dp_matrix_V_2_ce0;
reg dp_matrix_V_2_we0;
reg dp_matrix_V_3_ce0;
reg dp_matrix_V_3_we0;
reg dp_matrix_V_4_ce0;
reg dp_matrix_V_4_we0;
reg dp_matrix_V_5_ce0;
reg dp_matrix_V_5_we0;
reg dp_matrix_V_6_ce0;
reg dp_matrix_V_6_we0;
reg dp_matrix_V_7_ce0;
reg dp_matrix_V_7_we0;
reg dp_matrix_V_8_ce0;
reg dp_matrix_V_8_we0;
reg dp_matrix_V_9_ce0;
reg dp_matrix_V_9_we0;
reg dp_matrix_V_10_ce0;
reg dp_matrix_V_10_we0;
reg dp_matrix_V_11_ce0;
reg dp_matrix_V_11_we0;
reg dp_matrix_V_12_ce0;
reg dp_matrix_V_12_we0;
reg dp_matrix_V_13_ce0;
reg dp_matrix_V_13_we0;
reg dp_matrix_V_14_ce0;
reg dp_matrix_V_14_we0;
reg dp_matrix_V_15_ce0;
reg dp_matrix_V_15_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln75_fu_362_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [63:0] zext_ln77_1_fu_440_p1;
reg   [6:0] rr_fu_108;
wire   [6:0] add_ln76_fu_460_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_rr_load;
reg   [6:0] pp_fu_112;
wire   [6:0] select_ln75_1_fu_400_p3;
reg   [6:0] ap_sig_allocacmp_pp_load;
reg   [12:0] indvar_flatten98_fu_116;
wire   [12:0] add_ln75_fu_368_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten98_load;
wire   [3:0] trunc_ln75_fu_426_p1;
wire   [0:0] icmp_ln76_fu_386_p2;
wire   [6:0] add_ln75_1_fu_380_p2;
wire   [1:0] p_cast319_mid2_v_fu_408_p4;
wire   [6:0] select_ln75_fu_392_p3;
wire   [7:0] tmp_s_fu_418_p3;
wire   [7:0] zext_ln77_fu_430_p1;
wire   [7:0] add_ln77_fu_434_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_done_reg = 1'b0;
end

seq_align_multiple_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_start_int == 1'b1) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln75_fu_362_p2 == 1'd0)) begin
            indvar_flatten98_fu_116 <= add_ln75_fu_368_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten98_fu_116 <= 13'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln75_fu_362_p2 == 1'd0)) begin
            pp_fu_112 <= select_ln75_1_fu_400_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            pp_fu_112 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln75_fu_362_p2 == 1'd0)) begin
            rr_fu_108 <= add_ln76_fu_460_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            rr_fu_108 <= 7'd0;
        end
    end
end

always @ (*) begin
    if ((ap_start_int == 1'b0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln75_fu_362_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten98_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten98_load = indvar_flatten98_fu_116;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_pp_load = 7'd0;
    end else begin
        ap_sig_allocacmp_pp_load = pp_fu_112;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_rr_load = 7'd0;
    end else begin
        ap_sig_allocacmp_rr_load = rr_fu_108;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        dp_matrix_V_10_ce0 = 1'b1;
    end else begin
        dp_matrix_V_10_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln75_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln75_fu_426_p1 == 4'd10))) begin
        dp_matrix_V_10_we0 = 1'b1;
    end else begin
        dp_matrix_V_10_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        dp_matrix_V_11_ce0 = 1'b1;
    end else begin
        dp_matrix_V_11_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln75_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln75_fu_426_p1 == 4'd11))) begin
        dp_matrix_V_11_we0 = 1'b1;
    end else begin
        dp_matrix_V_11_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        dp_matrix_V_12_ce0 = 1'b1;
    end else begin
        dp_matrix_V_12_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln75_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln75_fu_426_p1 == 4'd12))) begin
        dp_matrix_V_12_we0 = 1'b1;
    end else begin
        dp_matrix_V_12_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        dp_matrix_V_13_ce0 = 1'b1;
    end else begin
        dp_matrix_V_13_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln75_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln75_fu_426_p1 == 4'd13))) begin
        dp_matrix_V_13_we0 = 1'b1;
    end else begin
        dp_matrix_V_13_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        dp_matrix_V_14_ce0 = 1'b1;
    end else begin
        dp_matrix_V_14_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln75_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln75_fu_426_p1 == 4'd14))) begin
        dp_matrix_V_14_we0 = 1'b1;
    end else begin
        dp_matrix_V_14_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        dp_matrix_V_15_ce0 = 1'b1;
    end else begin
        dp_matrix_V_15_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln75_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln75_fu_426_p1 == 4'd15))) begin
        dp_matrix_V_15_we0 = 1'b1;
    end else begin
        dp_matrix_V_15_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        dp_matrix_V_1_ce0 = 1'b1;
    end else begin
        dp_matrix_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln75_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln75_fu_426_p1 == 4'd1))) begin
        dp_matrix_V_1_we0 = 1'b1;
    end else begin
        dp_matrix_V_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        dp_matrix_V_2_ce0 = 1'b1;
    end else begin
        dp_matrix_V_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln75_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln75_fu_426_p1 == 4'd2))) begin
        dp_matrix_V_2_we0 = 1'b1;
    end else begin
        dp_matrix_V_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        dp_matrix_V_3_ce0 = 1'b1;
    end else begin
        dp_matrix_V_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln75_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln75_fu_426_p1 == 4'd3))) begin
        dp_matrix_V_3_we0 = 1'b1;
    end else begin
        dp_matrix_V_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        dp_matrix_V_4_ce0 = 1'b1;
    end else begin
        dp_matrix_V_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln75_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln75_fu_426_p1 == 4'd4))) begin
        dp_matrix_V_4_we0 = 1'b1;
    end else begin
        dp_matrix_V_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        dp_matrix_V_5_ce0 = 1'b1;
    end else begin
        dp_matrix_V_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln75_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln75_fu_426_p1 == 4'd5))) begin
        dp_matrix_V_5_we0 = 1'b1;
    end else begin
        dp_matrix_V_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        dp_matrix_V_6_ce0 = 1'b1;
    end else begin
        dp_matrix_V_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln75_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln75_fu_426_p1 == 4'd6))) begin
        dp_matrix_V_6_we0 = 1'b1;
    end else begin
        dp_matrix_V_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        dp_matrix_V_7_ce0 = 1'b1;
    end else begin
        dp_matrix_V_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln75_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln75_fu_426_p1 == 4'd7))) begin
        dp_matrix_V_7_we0 = 1'b1;
    end else begin
        dp_matrix_V_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        dp_matrix_V_8_ce0 = 1'b1;
    end else begin
        dp_matrix_V_8_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln75_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln75_fu_426_p1 == 4'd8))) begin
        dp_matrix_V_8_we0 = 1'b1;
    end else begin
        dp_matrix_V_8_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        dp_matrix_V_9_ce0 = 1'b1;
    end else begin
        dp_matrix_V_9_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln75_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln75_fu_426_p1 == 4'd9))) begin
        dp_matrix_V_9_we0 = 1'b1;
    end else begin
        dp_matrix_V_9_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        dp_matrix_V_ce0 = 1'b1;
    end else begin
        dp_matrix_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln75_fu_362_p2 == 1'd0) & (1'b1 == ap_CS_fsm_state1) & (trunc_ln75_fu_426_p1 == 4'd0))) begin
        dp_matrix_V_we0 = 1'b1;
    end else begin
        dp_matrix_V_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln75_1_fu_380_p2 = (ap_sig_allocacmp_pp_load + 7'd1);

assign add_ln75_fu_368_p2 = (ap_sig_allocacmp_indvar_flatten98_load + 13'd1);

assign add_ln76_fu_460_p2 = (select_ln75_fu_392_p3 + 7'd1);

assign add_ln77_fu_434_p2 = (tmp_s_fu_418_p3 + zext_ln77_fu_430_p1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign dp_matrix_V_10_address0 = zext_ln77_1_fu_440_p1;

assign dp_matrix_V_10_d0 = 9'd0;

assign dp_matrix_V_11_address0 = zext_ln77_1_fu_440_p1;

assign dp_matrix_V_11_d0 = 9'd0;

assign dp_matrix_V_12_address0 = zext_ln77_1_fu_440_p1;

assign dp_matrix_V_12_d0 = 9'd0;

assign dp_matrix_V_13_address0 = zext_ln77_1_fu_440_p1;

assign dp_matrix_V_13_d0 = 9'd0;

assign dp_matrix_V_14_address0 = zext_ln77_1_fu_440_p1;

assign dp_matrix_V_14_d0 = 9'd0;

assign dp_matrix_V_15_address0 = zext_ln77_1_fu_440_p1;

assign dp_matrix_V_15_d0 = 9'd0;

assign dp_matrix_V_1_address0 = zext_ln77_1_fu_440_p1;

assign dp_matrix_V_1_d0 = 9'd0;

assign dp_matrix_V_2_address0 = zext_ln77_1_fu_440_p1;

assign dp_matrix_V_2_d0 = 9'd0;

assign dp_matrix_V_3_address0 = zext_ln77_1_fu_440_p1;

assign dp_matrix_V_3_d0 = 9'd0;

assign dp_matrix_V_4_address0 = zext_ln77_1_fu_440_p1;

assign dp_matrix_V_4_d0 = 9'd0;

assign dp_matrix_V_5_address0 = zext_ln77_1_fu_440_p1;

assign dp_matrix_V_5_d0 = 9'd0;

assign dp_matrix_V_6_address0 = zext_ln77_1_fu_440_p1;

assign dp_matrix_V_6_d0 = 9'd0;

assign dp_matrix_V_7_address0 = zext_ln77_1_fu_440_p1;

assign dp_matrix_V_7_d0 = 9'd0;

assign dp_matrix_V_8_address0 = zext_ln77_1_fu_440_p1;

assign dp_matrix_V_8_d0 = 9'd0;

assign dp_matrix_V_9_address0 = zext_ln77_1_fu_440_p1;

assign dp_matrix_V_9_d0 = 9'd0;

assign dp_matrix_V_address0 = zext_ln77_1_fu_440_p1;

assign dp_matrix_V_d0 = 9'd0;

assign icmp_ln75_fu_362_p2 = ((ap_sig_allocacmp_indvar_flatten98_load == 13'd4096) ? 1'b1 : 1'b0);

assign icmp_ln76_fu_386_p2 = ((ap_sig_allocacmp_rr_load == 7'd64) ? 1'b1 : 1'b0);

assign p_cast319_mid2_v_fu_408_p4 = {{select_ln75_1_fu_400_p3[5:4]}};

assign select_ln75_1_fu_400_p3 = ((icmp_ln76_fu_386_p2[0:0] == 1'b1) ? add_ln75_1_fu_380_p2 : ap_sig_allocacmp_pp_load);

assign select_ln75_fu_392_p3 = ((icmp_ln76_fu_386_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_rr_load);

assign tmp_s_fu_418_p3 = {{p_cast319_mid2_v_fu_408_p4}, {6'd0}};

assign trunc_ln75_fu_426_p1 = select_ln75_1_fu_400_p3[3:0];

assign zext_ln77_1_fu_440_p1 = add_ln77_fu_434_p2;

assign zext_ln77_fu_430_p1 = select_ln75_fu_392_p3;

endmodule //seq_align_multiple_seq_align_multiple_Pipeline_VITIS_LOOP_75_1_VITIS_LOOP_76_29
