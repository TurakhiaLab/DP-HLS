// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module seq_align_multiple_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        p_out,
        p_out_ap_vld,
        p_out1,
        p_out1_ap_vld,
        p_out2,
        p_out2_ap_vld,
        p_out3,
        p_out3_ap_vld,
        p_out4,
        p_out4_ap_vld,
        p_out5,
        p_out5_ap_vld,
        p_out6,
        p_out6_ap_vld,
        p_out7,
        p_out7_ap_vld,
        p_out8,
        p_out8_ap_vld,
        p_out9,
        p_out9_ap_vld,
        p_out10,
        p_out10_ap_vld,
        p_out11,
        p_out11_ap_vld,
        p_out12,
        p_out12_ap_vld,
        p_out13,
        p_out13_ap_vld,
        p_out14,
        p_out14_ap_vld,
        p_out15,
        p_out15_ap_vld,
        p_out16,
        p_out16_ap_vld,
        p_out17,
        p_out17_ap_vld,
        p_out18,
        p_out18_ap_vld,
        p_out19,
        p_out19_ap_vld,
        p_out20,
        p_out20_ap_vld,
        p_out21,
        p_out21_ap_vld,
        p_out22,
        p_out22_ap_vld,
        p_out23,
        p_out23_ap_vld,
        p_out24,
        p_out24_ap_vld,
        p_out25,
        p_out25_ap_vld,
        p_out26,
        p_out26_ap_vld,
        p_out27,
        p_out27_ap_vld,
        p_out28,
        p_out28_ap_vld,
        p_out29,
        p_out29_ap_vld,
        p_out30,
        p_out30_ap_vld,
        p_out31,
        p_out31_ap_vld,
        p_out32,
        p_out32_ap_vld,
        p_out33,
        p_out33_ap_vld,
        p_out34,
        p_out34_ap_vld,
        p_out35,
        p_out35_ap_vld,
        p_out36,
        p_out36_ap_vld,
        p_out37,
        p_out37_ap_vld,
        p_out38,
        p_out38_ap_vld,
        p_out39,
        p_out39_ap_vld,
        p_out40,
        p_out40_ap_vld,
        p_out41,
        p_out41_ap_vld,
        p_out42,
        p_out42_ap_vld,
        p_out43,
        p_out43_ap_vld,
        p_out44,
        p_out44_ap_vld,
        p_out45,
        p_out45_ap_vld,
        p_out46,
        p_out46_ap_vld,
        p_out47,
        p_out47_ap_vld,
        p_out48,
        p_out48_ap_vld,
        p_out49,
        p_out49_ap_vld,
        p_out50,
        p_out50_ap_vld,
        p_out51,
        p_out51_ap_vld,
        p_out52,
        p_out52_ap_vld,
        p_out53,
        p_out53_ap_vld,
        p_out54,
        p_out54_ap_vld,
        p_out55,
        p_out55_ap_vld,
        p_out56,
        p_out56_ap_vld,
        p_out57,
        p_out57_ap_vld,
        p_out58,
        p_out58_ap_vld,
        p_out59,
        p_out59_ap_vld,
        p_out60,
        p_out60_ap_vld,
        p_out61,
        p_out61_ap_vld,
        p_out62,
        p_out62_ap_vld
);

parameter    ap_ST_fsm_state1 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [9:0] p_out;
output   p_out_ap_vld;
output  [9:0] p_out1;
output   p_out1_ap_vld;
output  [9:0] p_out2;
output   p_out2_ap_vld;
output  [9:0] p_out3;
output   p_out3_ap_vld;
output  [9:0] p_out4;
output   p_out4_ap_vld;
output  [9:0] p_out5;
output   p_out5_ap_vld;
output  [9:0] p_out6;
output   p_out6_ap_vld;
output  [9:0] p_out7;
output   p_out7_ap_vld;
output  [9:0] p_out8;
output   p_out8_ap_vld;
output  [9:0] p_out9;
output   p_out9_ap_vld;
output  [9:0] p_out10;
output   p_out10_ap_vld;
output  [9:0] p_out11;
output   p_out11_ap_vld;
output  [9:0] p_out12;
output   p_out12_ap_vld;
output  [9:0] p_out13;
output   p_out13_ap_vld;
output  [9:0] p_out14;
output   p_out14_ap_vld;
output  [9:0] p_out15;
output   p_out15_ap_vld;
output  [9:0] p_out16;
output   p_out16_ap_vld;
output  [9:0] p_out17;
output   p_out17_ap_vld;
output  [9:0] p_out18;
output   p_out18_ap_vld;
output  [9:0] p_out19;
output   p_out19_ap_vld;
output  [9:0] p_out20;
output   p_out20_ap_vld;
output  [9:0] p_out21;
output   p_out21_ap_vld;
output  [9:0] p_out22;
output   p_out22_ap_vld;
output  [9:0] p_out23;
output   p_out23_ap_vld;
output  [9:0] p_out24;
output   p_out24_ap_vld;
output  [9:0] p_out25;
output   p_out25_ap_vld;
output  [9:0] p_out26;
output   p_out26_ap_vld;
output  [9:0] p_out27;
output   p_out27_ap_vld;
output  [9:0] p_out28;
output   p_out28_ap_vld;
output  [9:0] p_out29;
output   p_out29_ap_vld;
output  [9:0] p_out30;
output   p_out30_ap_vld;
output  [9:0] p_out31;
output   p_out31_ap_vld;
output  [9:0] p_out32;
output   p_out32_ap_vld;
output  [9:0] p_out33;
output   p_out33_ap_vld;
output  [9:0] p_out34;
output   p_out34_ap_vld;
output  [9:0] p_out35;
output   p_out35_ap_vld;
output  [9:0] p_out36;
output   p_out36_ap_vld;
output  [9:0] p_out37;
output   p_out37_ap_vld;
output  [9:0] p_out38;
output   p_out38_ap_vld;
output  [9:0] p_out39;
output   p_out39_ap_vld;
output  [9:0] p_out40;
output   p_out40_ap_vld;
output  [9:0] p_out41;
output   p_out41_ap_vld;
output  [9:0] p_out42;
output   p_out42_ap_vld;
output  [9:0] p_out43;
output   p_out43_ap_vld;
output  [9:0] p_out44;
output   p_out44_ap_vld;
output  [9:0] p_out45;
output   p_out45_ap_vld;
output  [9:0] p_out46;
output   p_out46_ap_vld;
output  [9:0] p_out47;
output   p_out47_ap_vld;
output  [9:0] p_out48;
output   p_out48_ap_vld;
output  [9:0] p_out49;
output   p_out49_ap_vld;
output  [9:0] p_out50;
output   p_out50_ap_vld;
output  [9:0] p_out51;
output   p_out51_ap_vld;
output  [9:0] p_out52;
output   p_out52_ap_vld;
output  [9:0] p_out53;
output   p_out53_ap_vld;
output  [9:0] p_out54;
output   p_out54_ap_vld;
output  [9:0] p_out55;
output   p_out55_ap_vld;
output  [9:0] p_out56;
output   p_out56_ap_vld;
output  [9:0] p_out57;
output   p_out57_ap_vld;
output  [9:0] p_out58;
output   p_out58_ap_vld;
output  [9:0] p_out59;
output   p_out59_ap_vld;
output  [9:0] p_out60;
output   p_out60_ap_vld;
output  [9:0] p_out61;
output   p_out61_ap_vld;
output  [9:0] p_out62;
output   p_out62_ap_vld;

reg ap_idle;
reg p_out_ap_vld;
reg p_out1_ap_vld;
reg p_out2_ap_vld;
reg p_out3_ap_vld;
reg p_out4_ap_vld;
reg p_out5_ap_vld;
reg p_out6_ap_vld;
reg p_out7_ap_vld;
reg p_out8_ap_vld;
reg p_out9_ap_vld;
reg p_out10_ap_vld;
reg p_out11_ap_vld;
reg p_out12_ap_vld;
reg p_out13_ap_vld;
reg p_out14_ap_vld;
reg p_out15_ap_vld;
reg p_out16_ap_vld;
reg p_out17_ap_vld;
reg p_out18_ap_vld;
reg p_out19_ap_vld;
reg p_out20_ap_vld;
reg p_out21_ap_vld;
reg p_out22_ap_vld;
reg p_out23_ap_vld;
reg p_out24_ap_vld;
reg p_out25_ap_vld;
reg p_out26_ap_vld;
reg p_out27_ap_vld;
reg p_out28_ap_vld;
reg p_out29_ap_vld;
reg p_out30_ap_vld;
reg p_out31_ap_vld;
reg p_out32_ap_vld;
reg p_out33_ap_vld;
reg p_out34_ap_vld;
reg p_out35_ap_vld;
reg p_out36_ap_vld;
reg p_out37_ap_vld;
reg p_out38_ap_vld;
reg p_out39_ap_vld;
reg p_out40_ap_vld;
reg p_out41_ap_vld;
reg p_out42_ap_vld;
reg p_out43_ap_vld;
reg p_out44_ap_vld;
reg p_out45_ap_vld;
reg p_out46_ap_vld;
reg p_out47_ap_vld;
reg p_out48_ap_vld;
reg p_out49_ap_vld;
reg p_out50_ap_vld;
reg p_out51_ap_vld;
reg p_out52_ap_vld;
reg p_out53_ap_vld;
reg p_out54_ap_vld;
reg p_out55_ap_vld;
reg p_out56_ap_vld;
reg p_out57_ap_vld;
reg p_out58_ap_vld;
reg p_out59_ap_vld;
reg p_out60_ap_vld;
reg p_out61_ap_vld;
reg p_out62_ap_vld;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [0:0] icmp_ln85_fu_951_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [5:0] ij_fu_228;
wire   [5:0] add_ln86_fu_1316_p2;
wire    ap_loop_init;
reg   [5:0] ap_sig_allocacmp_ij_load;
reg   [1:0] gg_fu_232;
wire   [1:0] select_ln85_1_fu_989_p3;
reg   [1:0] ap_sig_allocacmp_gg_load;
reg   [6:0] indvar_flatten69_fu_236;
wire   [6:0] add_ln85_1_fu_957_p2;
reg   [6:0] ap_sig_allocacmp_indvar_flatten69_load;
wire   [0:0] icmp_ln86_fu_975_p2;
wire   [1:0] add_ln85_fu_969_p2;
wire   [5:0] select_ln85_fu_981_p3;
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
        if ((icmp_ln85_fu_951_p2 == 1'd0)) begin
            gg_fu_232 <= select_ln85_1_fu_989_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            gg_fu_232 <= 2'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln85_fu_951_p2 == 1'd0)) begin
            ij_fu_228 <= add_ln86_fu_1316_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            ij_fu_228 <= 6'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_start_int == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        if ((icmp_ln85_fu_951_p2 == 1'd0)) begin
            indvar_flatten69_fu_236 <= add_ln85_1_fu_957_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten69_fu_236 <= 7'd0;
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
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
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
        ap_sig_allocacmp_gg_load = 2'd0;
    end else begin
        ap_sig_allocacmp_gg_load = gg_fu_232;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_ij_load = 6'd0;
    end else begin
        ap_sig_allocacmp_ij_load = ij_fu_228;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_indvar_flatten69_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten69_load = indvar_flatten69_fu_236;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out10_ap_vld = 1'b1;
    end else begin
        p_out10_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out11_ap_vld = 1'b1;
    end else begin
        p_out11_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out12_ap_vld = 1'b1;
    end else begin
        p_out12_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out13_ap_vld = 1'b1;
    end else begin
        p_out13_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out14_ap_vld = 1'b1;
    end else begin
        p_out14_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out15_ap_vld = 1'b1;
    end else begin
        p_out15_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out16_ap_vld = 1'b1;
    end else begin
        p_out16_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out17_ap_vld = 1'b1;
    end else begin
        p_out17_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out18_ap_vld = 1'b1;
    end else begin
        p_out18_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out19_ap_vld = 1'b1;
    end else begin
        p_out19_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out1_ap_vld = 1'b1;
    end else begin
        p_out1_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out20_ap_vld = 1'b1;
    end else begin
        p_out20_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out21_ap_vld = 1'b1;
    end else begin
        p_out21_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out22_ap_vld = 1'b1;
    end else begin
        p_out22_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out23_ap_vld = 1'b1;
    end else begin
        p_out23_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out24_ap_vld = 1'b1;
    end else begin
        p_out24_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out25_ap_vld = 1'b1;
    end else begin
        p_out25_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out26_ap_vld = 1'b1;
    end else begin
        p_out26_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out27_ap_vld = 1'b1;
    end else begin
        p_out27_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out28_ap_vld = 1'b1;
    end else begin
        p_out28_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out29_ap_vld = 1'b1;
    end else begin
        p_out29_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out2_ap_vld = 1'b1;
    end else begin
        p_out2_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out30_ap_vld = 1'b1;
    end else begin
        p_out30_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out31_ap_vld = 1'b1;
    end else begin
        p_out31_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out32_ap_vld = 1'b1;
    end else begin
        p_out32_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out33_ap_vld = 1'b1;
    end else begin
        p_out33_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out34_ap_vld = 1'b1;
    end else begin
        p_out34_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out35_ap_vld = 1'b1;
    end else begin
        p_out35_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out36_ap_vld = 1'b1;
    end else begin
        p_out36_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out37_ap_vld = 1'b1;
    end else begin
        p_out37_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out38_ap_vld = 1'b1;
    end else begin
        p_out38_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out39_ap_vld = 1'b1;
    end else begin
        p_out39_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out3_ap_vld = 1'b1;
    end else begin
        p_out3_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out40_ap_vld = 1'b1;
    end else begin
        p_out40_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out41_ap_vld = 1'b1;
    end else begin
        p_out41_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out42_ap_vld = 1'b1;
    end else begin
        p_out42_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out43_ap_vld = 1'b1;
    end else begin
        p_out43_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out44_ap_vld = 1'b1;
    end else begin
        p_out44_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out45_ap_vld = 1'b1;
    end else begin
        p_out45_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out46_ap_vld = 1'b1;
    end else begin
        p_out46_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out47_ap_vld = 1'b1;
    end else begin
        p_out47_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out48_ap_vld = 1'b1;
    end else begin
        p_out48_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out49_ap_vld = 1'b1;
    end else begin
        p_out49_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out4_ap_vld = 1'b1;
    end else begin
        p_out4_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out50_ap_vld = 1'b1;
    end else begin
        p_out50_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out51_ap_vld = 1'b1;
    end else begin
        p_out51_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out52_ap_vld = 1'b1;
    end else begin
        p_out52_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out53_ap_vld = 1'b1;
    end else begin
        p_out53_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out54_ap_vld = 1'b1;
    end else begin
        p_out54_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out55_ap_vld = 1'b1;
    end else begin
        p_out55_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out56_ap_vld = 1'b1;
    end else begin
        p_out56_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out57_ap_vld = 1'b1;
    end else begin
        p_out57_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out58_ap_vld = 1'b1;
    end else begin
        p_out58_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out59_ap_vld = 1'b1;
    end else begin
        p_out59_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out5_ap_vld = 1'b1;
    end else begin
        p_out5_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out60_ap_vld = 1'b1;
    end else begin
        p_out60_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out61_ap_vld = 1'b1;
    end else begin
        p_out61_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out62_ap_vld = 1'b1;
    end else begin
        p_out62_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out6_ap_vld = 1'b1;
    end else begin
        p_out6_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out7_ap_vld = 1'b1;
    end else begin
        p_out7_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out8_ap_vld = 1'b1;
    end else begin
        p_out8_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out9_ap_vld = 1'b1;
    end else begin
        p_out9_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b1) & (icmp_ln85_fu_951_p2 == 1'd1) & (1'b1 == ap_CS_fsm_state1))) begin
        p_out_ap_vld = 1'b1;
    end else begin
        p_out_ap_vld = 1'b0;
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

assign add_ln85_1_fu_957_p2 = (ap_sig_allocacmp_indvar_flatten69_load + 7'd1);

assign add_ln85_fu_969_p2 = (ap_sig_allocacmp_gg_load + 2'd1);

assign add_ln86_fu_1316_p2 = (select_ln85_fu_981_p3 + 6'd1);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln85_fu_951_p2 = ((ap_sig_allocacmp_indvar_flatten69_load == 7'd96) ? 1'b1 : 1'b0);

assign icmp_ln86_fu_975_p2 = ((ap_sig_allocacmp_ij_load == 6'd32) ? 1'b1 : 1'b0);

assign p_out = 10'd0;

assign p_out1 = 10'd0;

assign p_out10 = 10'd0;

assign p_out11 = 10'd0;

assign p_out12 = 10'd0;

assign p_out13 = 10'd0;

assign p_out14 = 10'd0;

assign p_out15 = 10'd0;

assign p_out16 = 10'd0;

assign p_out17 = 10'd0;

assign p_out18 = 10'd0;

assign p_out19 = 10'd0;

assign p_out2 = 10'd0;

assign p_out20 = 10'd0;

assign p_out21 = 10'd0;

assign p_out22 = 10'd0;

assign p_out23 = 10'd0;

assign p_out24 = 10'd0;

assign p_out25 = 10'd0;

assign p_out26 = 10'd0;

assign p_out27 = 10'd0;

assign p_out28 = 10'd0;

assign p_out29 = 10'd0;

assign p_out3 = 10'd0;

assign p_out30 = 10'd0;

assign p_out31 = 10'd0;

assign p_out32 = 10'd0;

assign p_out33 = 10'd0;

assign p_out34 = 10'd0;

assign p_out35 = 10'd0;

assign p_out36 = 10'd0;

assign p_out37 = 10'd0;

assign p_out38 = 10'd0;

assign p_out39 = 10'd0;

assign p_out4 = 10'd0;

assign p_out40 = 10'd0;

assign p_out41 = 10'd0;

assign p_out42 = 10'd0;

assign p_out43 = 10'd0;

assign p_out44 = 10'd0;

assign p_out45 = 10'd0;

assign p_out46 = 10'd0;

assign p_out47 = 10'd0;

assign p_out48 = 10'd0;

assign p_out49 = 10'd0;

assign p_out5 = 10'd0;

assign p_out50 = 10'd0;

assign p_out51 = 10'd0;

assign p_out52 = 10'd0;

assign p_out53 = 10'd0;

assign p_out54 = 10'd0;

assign p_out55 = 10'd0;

assign p_out56 = 10'd0;

assign p_out57 = 10'd0;

assign p_out58 = 10'd0;

assign p_out59 = 10'd0;

assign p_out6 = 10'd0;

assign p_out60 = 10'd0;

assign p_out61 = 10'd0;

assign p_out62 = 10'd0;

assign p_out7 = 10'd0;

assign p_out8 = 10'd0;

assign p_out9 = 10'd0;

assign select_ln85_1_fu_989_p3 = ((icmp_ln86_fu_975_p2[0:0] == 1'b1) ? add_ln85_fu_969_p2 : ap_sig_allocacmp_gg_load);

assign select_ln85_fu_981_p3 = ((icmp_ln86_fu_975_p2[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_ij_load);

endmodule //seq_align_multiple_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3
