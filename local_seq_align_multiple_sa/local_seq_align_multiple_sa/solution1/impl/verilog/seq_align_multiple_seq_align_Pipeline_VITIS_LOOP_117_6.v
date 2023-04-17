// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module seq_align_multiple_seq_align_Pipeline_VITIS_LOOP_117_6 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        local_reference_V_address0,
        local_reference_V_ce0,
        local_reference_V_we0,
        local_reference_V_d0,
        local_reference_V_1_address0,
        local_reference_V_1_ce0,
        local_reference_V_1_we0,
        local_reference_V_1_d0,
        local_reference_V_2_address0,
        local_reference_V_2_ce0,
        local_reference_V_2_we0,
        local_reference_V_2_d0,
        local_reference_V_3_address0,
        local_reference_V_3_ce0,
        local_reference_V_3_we0,
        local_reference_V_3_d0,
        local_reference_V_4_address0,
        local_reference_V_4_ce0,
        local_reference_V_4_we0,
        local_reference_V_4_d0,
        local_reference_V_5_address0,
        local_reference_V_5_ce0,
        local_reference_V_5_we0,
        local_reference_V_5_d0,
        local_reference_V_6_address0,
        local_reference_V_6_ce0,
        local_reference_V_6_we0,
        local_reference_V_6_d0,
        local_reference_V_7_address0,
        local_reference_V_7_ce0,
        local_reference_V_7_we0,
        local_reference_V_7_d0,
        local_reference_V_8_address0,
        local_reference_V_8_ce0,
        local_reference_V_8_we0,
        local_reference_V_8_d0,
        local_reference_V_9_address0,
        local_reference_V_9_ce0,
        local_reference_V_9_we0,
        local_reference_V_9_d0,
        local_reference_V_10_address0,
        local_reference_V_10_ce0,
        local_reference_V_10_we0,
        local_reference_V_10_d0,
        local_reference_V_11_address0,
        local_reference_V_11_ce0,
        local_reference_V_11_we0,
        local_reference_V_11_d0,
        local_reference_V_12_address0,
        local_reference_V_12_ce0,
        local_reference_V_12_we0,
        local_reference_V_12_d0,
        local_reference_V_13_address0,
        local_reference_V_13_ce0,
        local_reference_V_13_we0,
        local_reference_V_13_d0,
        local_reference_V_14_address0,
        local_reference_V_14_ce0,
        local_reference_V_14_we0,
        local_reference_V_14_d0,
        local_reference_V_15_address0,
        local_reference_V_15_ce0,
        local_reference_V_15_we0,
        local_reference_V_15_d0,
        ref1_address0,
        ref1_ce0,
        ref1_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] local_reference_V_address0;
output   local_reference_V_ce0;
output   local_reference_V_we0;
output  [1:0] local_reference_V_d0;
output  [5:0] local_reference_V_1_address0;
output   local_reference_V_1_ce0;
output   local_reference_V_1_we0;
output  [1:0] local_reference_V_1_d0;
output  [5:0] local_reference_V_2_address0;
output   local_reference_V_2_ce0;
output   local_reference_V_2_we0;
output  [1:0] local_reference_V_2_d0;
output  [5:0] local_reference_V_3_address0;
output   local_reference_V_3_ce0;
output   local_reference_V_3_we0;
output  [1:0] local_reference_V_3_d0;
output  [5:0] local_reference_V_4_address0;
output   local_reference_V_4_ce0;
output   local_reference_V_4_we0;
output  [1:0] local_reference_V_4_d0;
output  [5:0] local_reference_V_5_address0;
output   local_reference_V_5_ce0;
output   local_reference_V_5_we0;
output  [1:0] local_reference_V_5_d0;
output  [5:0] local_reference_V_6_address0;
output   local_reference_V_6_ce0;
output   local_reference_V_6_we0;
output  [1:0] local_reference_V_6_d0;
output  [5:0] local_reference_V_7_address0;
output   local_reference_V_7_ce0;
output   local_reference_V_7_we0;
output  [1:0] local_reference_V_7_d0;
output  [5:0] local_reference_V_8_address0;
output   local_reference_V_8_ce0;
output   local_reference_V_8_we0;
output  [1:0] local_reference_V_8_d0;
output  [5:0] local_reference_V_9_address0;
output   local_reference_V_9_ce0;
output   local_reference_V_9_we0;
output  [1:0] local_reference_V_9_d0;
output  [5:0] local_reference_V_10_address0;
output   local_reference_V_10_ce0;
output   local_reference_V_10_we0;
output  [1:0] local_reference_V_10_d0;
output  [5:0] local_reference_V_11_address0;
output   local_reference_V_11_ce0;
output   local_reference_V_11_we0;
output  [1:0] local_reference_V_11_d0;
output  [5:0] local_reference_V_12_address0;
output   local_reference_V_12_ce0;
output   local_reference_V_12_we0;
output  [1:0] local_reference_V_12_d0;
output  [5:0] local_reference_V_13_address0;
output   local_reference_V_13_ce0;
output   local_reference_V_13_we0;
output  [1:0] local_reference_V_13_d0;
output  [5:0] local_reference_V_14_address0;
output   local_reference_V_14_ce0;
output   local_reference_V_14_we0;
output  [1:0] local_reference_V_14_d0;
output  [5:0] local_reference_V_15_address0;
output   local_reference_V_15_ce0;
output   local_reference_V_15_we0;
output  [1:0] local_reference_V_15_d0;
output  [9:0] ref1_address0;
output   ref1_ce0;
input  [1:0] ref1_q0;

reg ap_idle;
reg local_reference_V_ce0;
reg local_reference_V_we0;
reg local_reference_V_1_ce0;
reg local_reference_V_1_we0;
reg local_reference_V_2_ce0;
reg local_reference_V_2_we0;
reg local_reference_V_3_ce0;
reg local_reference_V_3_we0;
reg local_reference_V_4_ce0;
reg local_reference_V_4_we0;
reg local_reference_V_5_ce0;
reg local_reference_V_5_we0;
reg local_reference_V_6_ce0;
reg local_reference_V_6_we0;
reg local_reference_V_7_ce0;
reg local_reference_V_7_we0;
reg local_reference_V_8_ce0;
reg local_reference_V_8_we0;
reg local_reference_V_9_ce0;
reg local_reference_V_9_we0;
reg local_reference_V_10_ce0;
reg local_reference_V_10_we0;
reg local_reference_V_11_ce0;
reg local_reference_V_11_we0;
reg local_reference_V_12_ce0;
reg local_reference_V_12_we0;
reg local_reference_V_13_ce0;
reg local_reference_V_13_we0;
reg local_reference_V_14_ce0;
reg local_reference_V_14_we0;
reg local_reference_V_15_ce0;
reg local_reference_V_15_we0;
reg ref1_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln117_fu_351_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [5:0] lshr_ln_reg_416;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] trunc_ln119_fu_378_p1;
reg   [3:0] trunc_ln119_reg_426;
wire   [63:0] i_cast7_fu_363_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln119_fu_387_p1;
reg   [10:0] i_fu_102;
wire   [10:0] add_ln117_fu_357_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_i_1;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
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
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln117_fu_351_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            i_fu_102 <= add_ln117_fu_357_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            i_fu_102 <= 11'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln117_fu_351_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        lshr_ln_reg_416 <= {{ap_sig_allocacmp_i_1[9:4]}};
        trunc_ln119_reg_426 <= trunc_ln119_fu_378_p1;
    end
end

always @ (*) begin
    if (((icmp_ln117_fu_351_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_i_1 = i_fu_102;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_10_ce0 = 1'b1;
    end else begin
        local_reference_V_10_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln119_reg_426 == 4'd10) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_10_we0 = 1'b1;
    end else begin
        local_reference_V_10_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_11_ce0 = 1'b1;
    end else begin
        local_reference_V_11_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln119_reg_426 == 4'd11) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_11_we0 = 1'b1;
    end else begin
        local_reference_V_11_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_12_ce0 = 1'b1;
    end else begin
        local_reference_V_12_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln119_reg_426 == 4'd12) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_12_we0 = 1'b1;
    end else begin
        local_reference_V_12_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_13_ce0 = 1'b1;
    end else begin
        local_reference_V_13_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln119_reg_426 == 4'd13) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_13_we0 = 1'b1;
    end else begin
        local_reference_V_13_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_14_ce0 = 1'b1;
    end else begin
        local_reference_V_14_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln119_reg_426 == 4'd14) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_14_we0 = 1'b1;
    end else begin
        local_reference_V_14_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_15_ce0 = 1'b1;
    end else begin
        local_reference_V_15_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln119_reg_426 == 4'd15) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_15_we0 = 1'b1;
    end else begin
        local_reference_V_15_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_1_ce0 = 1'b1;
    end else begin
        local_reference_V_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln119_reg_426 == 4'd1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_1_we0 = 1'b1;
    end else begin
        local_reference_V_1_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_2_ce0 = 1'b1;
    end else begin
        local_reference_V_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln119_reg_426 == 4'd2) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_2_we0 = 1'b1;
    end else begin
        local_reference_V_2_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_3_ce0 = 1'b1;
    end else begin
        local_reference_V_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln119_reg_426 == 4'd3) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_3_we0 = 1'b1;
    end else begin
        local_reference_V_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_4_ce0 = 1'b1;
    end else begin
        local_reference_V_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln119_reg_426 == 4'd4) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_4_we0 = 1'b1;
    end else begin
        local_reference_V_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_5_ce0 = 1'b1;
    end else begin
        local_reference_V_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln119_reg_426 == 4'd5) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_5_we0 = 1'b1;
    end else begin
        local_reference_V_5_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_6_ce0 = 1'b1;
    end else begin
        local_reference_V_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln119_reg_426 == 4'd6) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_6_we0 = 1'b1;
    end else begin
        local_reference_V_6_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_7_ce0 = 1'b1;
    end else begin
        local_reference_V_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln119_reg_426 == 4'd7) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_7_we0 = 1'b1;
    end else begin
        local_reference_V_7_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_8_ce0 = 1'b1;
    end else begin
        local_reference_V_8_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln119_reg_426 == 4'd8) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_8_we0 = 1'b1;
    end else begin
        local_reference_V_8_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_9_ce0 = 1'b1;
    end else begin
        local_reference_V_9_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln119_reg_426 == 4'd9) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_9_we0 = 1'b1;
    end else begin
        local_reference_V_9_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_ce0 = 1'b1;
    end else begin
        local_reference_V_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((trunc_ln119_reg_426 == 4'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        local_reference_V_we0 = 1'b1;
    end else begin
        local_reference_V_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ref1_ce0 = 1'b1;
    end else begin
        ref1_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln117_fu_357_p2 = (ap_sig_allocacmp_i_1 + 11'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign i_cast7_fu_363_p1 = ap_sig_allocacmp_i_1;

assign icmp_ln117_fu_351_p2 = ((ap_sig_allocacmp_i_1 == 11'd1024) ? 1'b1 : 1'b0);

assign local_reference_V_10_address0 = zext_ln119_fu_387_p1;

assign local_reference_V_10_d0 = ref1_q0;

assign local_reference_V_11_address0 = zext_ln119_fu_387_p1;

assign local_reference_V_11_d0 = ref1_q0;

assign local_reference_V_12_address0 = zext_ln119_fu_387_p1;

assign local_reference_V_12_d0 = ref1_q0;

assign local_reference_V_13_address0 = zext_ln119_fu_387_p1;

assign local_reference_V_13_d0 = ref1_q0;

assign local_reference_V_14_address0 = zext_ln119_fu_387_p1;

assign local_reference_V_14_d0 = ref1_q0;

assign local_reference_V_15_address0 = zext_ln119_fu_387_p1;

assign local_reference_V_15_d0 = ref1_q0;

assign local_reference_V_1_address0 = zext_ln119_fu_387_p1;

assign local_reference_V_1_d0 = ref1_q0;

assign local_reference_V_2_address0 = zext_ln119_fu_387_p1;

assign local_reference_V_2_d0 = ref1_q0;

assign local_reference_V_3_address0 = zext_ln119_fu_387_p1;

assign local_reference_V_3_d0 = ref1_q0;

assign local_reference_V_4_address0 = zext_ln119_fu_387_p1;

assign local_reference_V_4_d0 = ref1_q0;

assign local_reference_V_5_address0 = zext_ln119_fu_387_p1;

assign local_reference_V_5_d0 = ref1_q0;

assign local_reference_V_6_address0 = zext_ln119_fu_387_p1;

assign local_reference_V_6_d0 = ref1_q0;

assign local_reference_V_7_address0 = zext_ln119_fu_387_p1;

assign local_reference_V_7_d0 = ref1_q0;

assign local_reference_V_8_address0 = zext_ln119_fu_387_p1;

assign local_reference_V_8_d0 = ref1_q0;

assign local_reference_V_9_address0 = zext_ln119_fu_387_p1;

assign local_reference_V_9_d0 = ref1_q0;

assign local_reference_V_address0 = zext_ln119_fu_387_p1;

assign local_reference_V_d0 = ref1_q0;

assign ref1_address0 = i_cast7_fu_363_p1;

assign trunc_ln119_fu_378_p1 = ap_sig_allocacmp_i_1[3:0];

assign zext_ln119_fu_387_p1 = lshr_ln_reg_416;

endmodule //seq_align_multiple_seq_align_Pipeline_VITIS_LOOP_117_6
