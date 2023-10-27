// ==============================================================
// Generated by Vitis HLS v2023.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

module seq_align_multiple_static_AlignStatic_Pipeline_4 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        init_row_score_address0,
        init_row_score_ce0,
        init_row_score_we0,
        init_row_score_d0,
        init_row_score_address1,
        init_row_score_ce1,
        init_row_score_q1,
        preserved_row_buffer_address0,
        preserved_row_buffer_ce0,
        preserved_row_buffer_we0,
        preserved_row_buffer_d0,
        preserved_row_buffer_address1,
        preserved_row_buffer_ce1,
        preserved_row_buffer_q1,
        preserved_row_buffer_3_address0,
        preserved_row_buffer_3_ce0,
        preserved_row_buffer_3_we0,
        preserved_row_buffer_3_d0,
        preserved_row_buffer_3_address1,
        preserved_row_buffer_3_ce1,
        preserved_row_buffer_3_q1,
        preserved_row_buffer_4_address0,
        preserved_row_buffer_4_ce0,
        preserved_row_buffer_4_we0,
        preserved_row_buffer_4_d0,
        preserved_row_buffer_4_address1,
        preserved_row_buffer_4_ce1,
        preserved_row_buffer_4_q1
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] init_row_score_address0;
output   init_row_score_ce0;
output   init_row_score_we0;
output  [47:0] init_row_score_d0;
output  [7:0] init_row_score_address1;
output   init_row_score_ce1;
input  [47:0] init_row_score_q1;
output  [7:0] preserved_row_buffer_address0;
output   preserved_row_buffer_ce0;
output   preserved_row_buffer_we0;
output  [15:0] preserved_row_buffer_d0;
output  [7:0] preserved_row_buffer_address1;
output   preserved_row_buffer_ce1;
input  [15:0] preserved_row_buffer_q1;
output  [7:0] preserved_row_buffer_3_address0;
output   preserved_row_buffer_3_ce0;
output   preserved_row_buffer_3_we0;
output  [15:0] preserved_row_buffer_3_d0;
output  [7:0] preserved_row_buffer_3_address1;
output   preserved_row_buffer_3_ce1;
input  [15:0] preserved_row_buffer_3_q1;
output  [7:0] preserved_row_buffer_4_address0;
output   preserved_row_buffer_4_ce0;
output   preserved_row_buffer_4_we0;
output  [15:0] preserved_row_buffer_4_d0;
output  [7:0] preserved_row_buffer_4_address1;
output   preserved_row_buffer_4_ce1;
input  [15:0] preserved_row_buffer_4_q1;

reg ap_idle;
reg init_row_score_ce0;
reg init_row_score_we0;
reg init_row_score_ce1;
reg preserved_row_buffer_ce0;
reg preserved_row_buffer_we0;
reg preserved_row_buffer_ce1;
reg preserved_row_buffer_3_ce0;
reg preserved_row_buffer_3_we0;
reg preserved_row_buffer_3_ce1;
reg preserved_row_buffer_4_ce0;
reg preserved_row_buffer_4_we0;
reg preserved_row_buffer_4_ce1;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln212_fu_122_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [7:0] init_row_score_addr_reg_195;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] preserved_row_buffer_addr_reg_201;
reg   [7:0] preserved_row_buffer_3_addr_reg_207;
reg   [7:0] preserved_row_buffer_4_addr_reg_213;
wire   [63:0] p_n_cast_fu_134_p1;
wire    ap_block_pp0_stage0;
reg   [8:0] p_n_fu_42;
wire   [8:0] p_n_2_fu_128_p2;
wire    ap_loop_init;
reg   [8:0] ap_sig_allocacmp_p_n_1;
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

seq_align_multiple_static_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
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
        if (((icmp_ln212_fu_122_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            p_n_fu_42 <= p_n_2_fu_128_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            p_n_fu_42 <= 9'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln212_fu_122_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_row_score_addr_reg_195 <= p_n_cast_fu_134_p1;
        preserved_row_buffer_3_addr_reg_207 <= p_n_cast_fu_134_p1;
        preserved_row_buffer_4_addr_reg_213 <= p_n_cast_fu_134_p1;
        preserved_row_buffer_addr_reg_201 <= p_n_cast_fu_134_p1;
    end
end

always @ (*) begin
    if (((icmp_ln212_fu_122_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_p_n_1 = 9'd0;
    end else begin
        ap_sig_allocacmp_p_n_1 = p_n_fu_42;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_row_score_ce0 = 1'b1;
    end else begin
        init_row_score_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_row_score_ce1 = 1'b1;
    end else begin
        init_row_score_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        init_row_score_we0 = 1'b1;
    end else begin
        init_row_score_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        preserved_row_buffer_3_ce0 = 1'b1;
    end else begin
        preserved_row_buffer_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        preserved_row_buffer_3_ce1 = 1'b1;
    end else begin
        preserved_row_buffer_3_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        preserved_row_buffer_3_we0 = 1'b1;
    end else begin
        preserved_row_buffer_3_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        preserved_row_buffer_4_ce0 = 1'b1;
    end else begin
        preserved_row_buffer_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        preserved_row_buffer_4_ce1 = 1'b1;
    end else begin
        preserved_row_buffer_4_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        preserved_row_buffer_4_we0 = 1'b1;
    end else begin
        preserved_row_buffer_4_we0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        preserved_row_buffer_ce0 = 1'b1;
    end else begin
        preserved_row_buffer_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        preserved_row_buffer_ce1 = 1'b1;
    end else begin
        preserved_row_buffer_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        preserved_row_buffer_we0 = 1'b1;
    end else begin
        preserved_row_buffer_we0 = 1'b0;
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

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln212_fu_122_p2 = ((ap_sig_allocacmp_p_n_1 == 9'd256) ? 1'b1 : 1'b0);

assign init_row_score_address0 = init_row_score_addr_reg_195;

assign init_row_score_address1 = p_n_cast_fu_134_p1;

assign init_row_score_d0 = {{{preserved_row_buffer_4_q1}, {preserved_row_buffer_3_q1}}, {preserved_row_buffer_q1}};

assign p_n_2_fu_128_p2 = (ap_sig_allocacmp_p_n_1 + 9'd1);

assign p_n_cast_fu_134_p1 = ap_sig_allocacmp_p_n_1;

assign preserved_row_buffer_3_address0 = preserved_row_buffer_3_addr_reg_207;

assign preserved_row_buffer_3_address1 = p_n_cast_fu_134_p1;

assign preserved_row_buffer_3_d0 = {{init_row_score_q1[31:16]}};

assign preserved_row_buffer_4_address0 = preserved_row_buffer_4_addr_reg_213;

assign preserved_row_buffer_4_address1 = p_n_cast_fu_134_p1;

assign preserved_row_buffer_4_d0 = {{init_row_score_q1[47:32]}};

assign preserved_row_buffer_address0 = preserved_row_buffer_addr_reg_201;

assign preserved_row_buffer_address1 = p_n_cast_fu_134_p1;

assign preserved_row_buffer_d0 = init_row_score_q1[15:0];

endmodule //seq_align_multiple_static_AlignStatic_Pipeline_4