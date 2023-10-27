// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
`timescale 1ns/1ps
module seq_align_multiple_static_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 9,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [63:0]                   querys_0,
    output wire [63:0]                   querys_1,
    output wire [63:0]                   querys_2,
    output wire [63:0]                   querys_3,
    output wire [63:0]                   querys_4,
    output wire [63:0]                   querys_5,
    output wire [63:0]                   querys_6,
    output wire [63:0]                   querys_7,
    output wire [63:0]                   querys_8,
    output wire [63:0]                   querys_9,
    output wire [63:0]                   querys_10,
    output wire [63:0]                   querys_11,
    output wire [63:0]                   querys_12,
    output wire [63:0]                   querys_13,
    output wire [63:0]                   querys_14,
    output wire [63:0]                   querys_15,
    output wire [63:0]                   querys_16,
    output wire [63:0]                   querys_17,
    output wire [63:0]                   querys_18,
    output wire [63:0]                   querys_19,
    output wire [63:0]                   querys_20,
    output wire [63:0]                   querys_21,
    output wire [63:0]                   querys_22,
    output wire [63:0]                   querys_23,
    output wire [63:0]                   querys_24,
    output wire [63:0]                   querys_25,
    output wire [63:0]                   querys_26,
    output wire [63:0]                   querys_27,
    output wire [63:0]                   querys_28,
    output wire [63:0]                   querys_29,
    output wire [63:0]                   querys_30,
    output wire [63:0]                   querys_31,
    output wire [63:0]                   references,
    output wire [63:0]                   query_lengths,
    output wire [63:0]                   reference_lengths,
    output wire [63:0]                   penalties,
    output wire [63:0]                   tb_streams,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    output wire                          ap_continue,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read/COR)
//         bit 4  - ap_continue (Read/Write/SC)
//         bit 7  - auto_restart (Read/Write)
//         bit 9  - interrupt (Read)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0 - enable ap_done interrupt (Read/Write)
//         bit 1 - enable ap_ready interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0 - ap_done (Read/TOW)
//         bit 1 - ap_ready (Read/TOW)
//         others - reserved
// 0x010 : Data signal of querys_0
//         bit 31~0 - querys_0[31:0] (Read/Write)
// 0x014 : Data signal of querys_0
//         bit 31~0 - querys_0[63:32] (Read/Write)
// 0x018 : reserved
// 0x01c : Data signal of querys_1
//         bit 31~0 - querys_1[31:0] (Read/Write)
// 0x020 : Data signal of querys_1
//         bit 31~0 - querys_1[63:32] (Read/Write)
// 0x024 : reserved
// 0x028 : Data signal of querys_2
//         bit 31~0 - querys_2[31:0] (Read/Write)
// 0x02c : Data signal of querys_2
//         bit 31~0 - querys_2[63:32] (Read/Write)
// 0x030 : reserved
// 0x034 : Data signal of querys_3
//         bit 31~0 - querys_3[31:0] (Read/Write)
// 0x038 : Data signal of querys_3
//         bit 31~0 - querys_3[63:32] (Read/Write)
// 0x03c : reserved
// 0x040 : Data signal of querys_4
//         bit 31~0 - querys_4[31:0] (Read/Write)
// 0x044 : Data signal of querys_4
//         bit 31~0 - querys_4[63:32] (Read/Write)
// 0x048 : reserved
// 0x04c : Data signal of querys_5
//         bit 31~0 - querys_5[31:0] (Read/Write)
// 0x050 : Data signal of querys_5
//         bit 31~0 - querys_5[63:32] (Read/Write)
// 0x054 : reserved
// 0x058 : Data signal of querys_6
//         bit 31~0 - querys_6[31:0] (Read/Write)
// 0x05c : Data signal of querys_6
//         bit 31~0 - querys_6[63:32] (Read/Write)
// 0x060 : reserved
// 0x064 : Data signal of querys_7
//         bit 31~0 - querys_7[31:0] (Read/Write)
// 0x068 : Data signal of querys_7
//         bit 31~0 - querys_7[63:32] (Read/Write)
// 0x06c : reserved
// 0x070 : Data signal of querys_8
//         bit 31~0 - querys_8[31:0] (Read/Write)
// 0x074 : Data signal of querys_8
//         bit 31~0 - querys_8[63:32] (Read/Write)
// 0x078 : reserved
// 0x07c : Data signal of querys_9
//         bit 31~0 - querys_9[31:0] (Read/Write)
// 0x080 : Data signal of querys_9
//         bit 31~0 - querys_9[63:32] (Read/Write)
// 0x084 : reserved
// 0x088 : Data signal of querys_10
//         bit 31~0 - querys_10[31:0] (Read/Write)
// 0x08c : Data signal of querys_10
//         bit 31~0 - querys_10[63:32] (Read/Write)
// 0x090 : reserved
// 0x094 : Data signal of querys_11
//         bit 31~0 - querys_11[31:0] (Read/Write)
// 0x098 : Data signal of querys_11
//         bit 31~0 - querys_11[63:32] (Read/Write)
// 0x09c : reserved
// 0x0a0 : Data signal of querys_12
//         bit 31~0 - querys_12[31:0] (Read/Write)
// 0x0a4 : Data signal of querys_12
//         bit 31~0 - querys_12[63:32] (Read/Write)
// 0x0a8 : reserved
// 0x0ac : Data signal of querys_13
//         bit 31~0 - querys_13[31:0] (Read/Write)
// 0x0b0 : Data signal of querys_13
//         bit 31~0 - querys_13[63:32] (Read/Write)
// 0x0b4 : reserved
// 0x0b8 : Data signal of querys_14
//         bit 31~0 - querys_14[31:0] (Read/Write)
// 0x0bc : Data signal of querys_14
//         bit 31~0 - querys_14[63:32] (Read/Write)
// 0x0c0 : reserved
// 0x0c4 : Data signal of querys_15
//         bit 31~0 - querys_15[31:0] (Read/Write)
// 0x0c8 : Data signal of querys_15
//         bit 31~0 - querys_15[63:32] (Read/Write)
// 0x0cc : reserved
// 0x0d0 : Data signal of querys_16
//         bit 31~0 - querys_16[31:0] (Read/Write)
// 0x0d4 : Data signal of querys_16
//         bit 31~0 - querys_16[63:32] (Read/Write)
// 0x0d8 : reserved
// 0x0dc : Data signal of querys_17
//         bit 31~0 - querys_17[31:0] (Read/Write)
// 0x0e0 : Data signal of querys_17
//         bit 31~0 - querys_17[63:32] (Read/Write)
// 0x0e4 : reserved
// 0x0e8 : Data signal of querys_18
//         bit 31~0 - querys_18[31:0] (Read/Write)
// 0x0ec : Data signal of querys_18
//         bit 31~0 - querys_18[63:32] (Read/Write)
// 0x0f0 : reserved
// 0x0f4 : Data signal of querys_19
//         bit 31~0 - querys_19[31:0] (Read/Write)
// 0x0f8 : Data signal of querys_19
//         bit 31~0 - querys_19[63:32] (Read/Write)
// 0x0fc : reserved
// 0x100 : Data signal of querys_20
//         bit 31~0 - querys_20[31:0] (Read/Write)
// 0x104 : Data signal of querys_20
//         bit 31~0 - querys_20[63:32] (Read/Write)
// 0x108 : reserved
// 0x10c : Data signal of querys_21
//         bit 31~0 - querys_21[31:0] (Read/Write)
// 0x110 : Data signal of querys_21
//         bit 31~0 - querys_21[63:32] (Read/Write)
// 0x114 : reserved
// 0x118 : Data signal of querys_22
//         bit 31~0 - querys_22[31:0] (Read/Write)
// 0x11c : Data signal of querys_22
//         bit 31~0 - querys_22[63:32] (Read/Write)
// 0x120 : reserved
// 0x124 : Data signal of querys_23
//         bit 31~0 - querys_23[31:0] (Read/Write)
// 0x128 : Data signal of querys_23
//         bit 31~0 - querys_23[63:32] (Read/Write)
// 0x12c : reserved
// 0x130 : Data signal of querys_24
//         bit 31~0 - querys_24[31:0] (Read/Write)
// 0x134 : Data signal of querys_24
//         bit 31~0 - querys_24[63:32] (Read/Write)
// 0x138 : reserved
// 0x13c : Data signal of querys_25
//         bit 31~0 - querys_25[31:0] (Read/Write)
// 0x140 : Data signal of querys_25
//         bit 31~0 - querys_25[63:32] (Read/Write)
// 0x144 : reserved
// 0x148 : Data signal of querys_26
//         bit 31~0 - querys_26[31:0] (Read/Write)
// 0x14c : Data signal of querys_26
//         bit 31~0 - querys_26[63:32] (Read/Write)
// 0x150 : reserved
// 0x154 : Data signal of querys_27
//         bit 31~0 - querys_27[31:0] (Read/Write)
// 0x158 : Data signal of querys_27
//         bit 31~0 - querys_27[63:32] (Read/Write)
// 0x15c : reserved
// 0x160 : Data signal of querys_28
//         bit 31~0 - querys_28[31:0] (Read/Write)
// 0x164 : Data signal of querys_28
//         bit 31~0 - querys_28[63:32] (Read/Write)
// 0x168 : reserved
// 0x16c : Data signal of querys_29
//         bit 31~0 - querys_29[31:0] (Read/Write)
// 0x170 : Data signal of querys_29
//         bit 31~0 - querys_29[63:32] (Read/Write)
// 0x174 : reserved
// 0x178 : Data signal of querys_30
//         bit 31~0 - querys_30[31:0] (Read/Write)
// 0x17c : Data signal of querys_30
//         bit 31~0 - querys_30[63:32] (Read/Write)
// 0x180 : reserved
// 0x184 : Data signal of querys_31
//         bit 31~0 - querys_31[31:0] (Read/Write)
// 0x188 : Data signal of querys_31
//         bit 31~0 - querys_31[63:32] (Read/Write)
// 0x18c : reserved
// 0x190 : Data signal of references
//         bit 31~0 - references[31:0] (Read/Write)
// 0x194 : Data signal of references
//         bit 31~0 - references[63:32] (Read/Write)
// 0x198 : reserved
// 0x19c : Data signal of query_lengths
//         bit 31~0 - query_lengths[31:0] (Read/Write)
// 0x1a0 : Data signal of query_lengths
//         bit 31~0 - query_lengths[63:32] (Read/Write)
// 0x1a4 : reserved
// 0x1a8 : Data signal of reference_lengths
//         bit 31~0 - reference_lengths[31:0] (Read/Write)
// 0x1ac : Data signal of reference_lengths
//         bit 31~0 - reference_lengths[63:32] (Read/Write)
// 0x1b0 : reserved
// 0x1b4 : Data signal of penalties
//         bit 31~0 - penalties[31:0] (Read/Write)
// 0x1b8 : Data signal of penalties
//         bit 31~0 - penalties[63:32] (Read/Write)
// 0x1bc : reserved
// 0x1c0 : Data signal of tb_streams
//         bit 31~0 - tb_streams[31:0] (Read/Write)
// 0x1c4 : Data signal of tb_streams
//         bit 31~0 - tb_streams[63:32] (Read/Write)
// 0x1c8 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                  = 9'h000,
    ADDR_GIE                      = 9'h004,
    ADDR_IER                      = 9'h008,
    ADDR_ISR                      = 9'h00c,
    ADDR_QUERYS_0_DATA_0          = 9'h010,
    ADDR_QUERYS_0_DATA_1          = 9'h014,
    ADDR_QUERYS_0_CTRL            = 9'h018,
    ADDR_QUERYS_1_DATA_0          = 9'h01c,
    ADDR_QUERYS_1_DATA_1          = 9'h020,
    ADDR_QUERYS_1_CTRL            = 9'h024,
    ADDR_QUERYS_2_DATA_0          = 9'h028,
    ADDR_QUERYS_2_DATA_1          = 9'h02c,
    ADDR_QUERYS_2_CTRL            = 9'h030,
    ADDR_QUERYS_3_DATA_0          = 9'h034,
    ADDR_QUERYS_3_DATA_1          = 9'h038,
    ADDR_QUERYS_3_CTRL            = 9'h03c,
    ADDR_QUERYS_4_DATA_0          = 9'h040,
    ADDR_QUERYS_4_DATA_1          = 9'h044,
    ADDR_QUERYS_4_CTRL            = 9'h048,
    ADDR_QUERYS_5_DATA_0          = 9'h04c,
    ADDR_QUERYS_5_DATA_1          = 9'h050,
    ADDR_QUERYS_5_CTRL            = 9'h054,
    ADDR_QUERYS_6_DATA_0          = 9'h058,
    ADDR_QUERYS_6_DATA_1          = 9'h05c,
    ADDR_QUERYS_6_CTRL            = 9'h060,
    ADDR_QUERYS_7_DATA_0          = 9'h064,
    ADDR_QUERYS_7_DATA_1          = 9'h068,
    ADDR_QUERYS_7_CTRL            = 9'h06c,
    ADDR_QUERYS_8_DATA_0          = 9'h070,
    ADDR_QUERYS_8_DATA_1          = 9'h074,
    ADDR_QUERYS_8_CTRL            = 9'h078,
    ADDR_QUERYS_9_DATA_0          = 9'h07c,
    ADDR_QUERYS_9_DATA_1          = 9'h080,
    ADDR_QUERYS_9_CTRL            = 9'h084,
    ADDR_QUERYS_10_DATA_0         = 9'h088,
    ADDR_QUERYS_10_DATA_1         = 9'h08c,
    ADDR_QUERYS_10_CTRL           = 9'h090,
    ADDR_QUERYS_11_DATA_0         = 9'h094,
    ADDR_QUERYS_11_DATA_1         = 9'h098,
    ADDR_QUERYS_11_CTRL           = 9'h09c,
    ADDR_QUERYS_12_DATA_0         = 9'h0a0,
    ADDR_QUERYS_12_DATA_1         = 9'h0a4,
    ADDR_QUERYS_12_CTRL           = 9'h0a8,
    ADDR_QUERYS_13_DATA_0         = 9'h0ac,
    ADDR_QUERYS_13_DATA_1         = 9'h0b0,
    ADDR_QUERYS_13_CTRL           = 9'h0b4,
    ADDR_QUERYS_14_DATA_0         = 9'h0b8,
    ADDR_QUERYS_14_DATA_1         = 9'h0bc,
    ADDR_QUERYS_14_CTRL           = 9'h0c0,
    ADDR_QUERYS_15_DATA_0         = 9'h0c4,
    ADDR_QUERYS_15_DATA_1         = 9'h0c8,
    ADDR_QUERYS_15_CTRL           = 9'h0cc,
    ADDR_QUERYS_16_DATA_0         = 9'h0d0,
    ADDR_QUERYS_16_DATA_1         = 9'h0d4,
    ADDR_QUERYS_16_CTRL           = 9'h0d8,
    ADDR_QUERYS_17_DATA_0         = 9'h0dc,
    ADDR_QUERYS_17_DATA_1         = 9'h0e0,
    ADDR_QUERYS_17_CTRL           = 9'h0e4,
    ADDR_QUERYS_18_DATA_0         = 9'h0e8,
    ADDR_QUERYS_18_DATA_1         = 9'h0ec,
    ADDR_QUERYS_18_CTRL           = 9'h0f0,
    ADDR_QUERYS_19_DATA_0         = 9'h0f4,
    ADDR_QUERYS_19_DATA_1         = 9'h0f8,
    ADDR_QUERYS_19_CTRL           = 9'h0fc,
    ADDR_QUERYS_20_DATA_0         = 9'h100,
    ADDR_QUERYS_20_DATA_1         = 9'h104,
    ADDR_QUERYS_20_CTRL           = 9'h108,
    ADDR_QUERYS_21_DATA_0         = 9'h10c,
    ADDR_QUERYS_21_DATA_1         = 9'h110,
    ADDR_QUERYS_21_CTRL           = 9'h114,
    ADDR_QUERYS_22_DATA_0         = 9'h118,
    ADDR_QUERYS_22_DATA_1         = 9'h11c,
    ADDR_QUERYS_22_CTRL           = 9'h120,
    ADDR_QUERYS_23_DATA_0         = 9'h124,
    ADDR_QUERYS_23_DATA_1         = 9'h128,
    ADDR_QUERYS_23_CTRL           = 9'h12c,
    ADDR_QUERYS_24_DATA_0         = 9'h130,
    ADDR_QUERYS_24_DATA_1         = 9'h134,
    ADDR_QUERYS_24_CTRL           = 9'h138,
    ADDR_QUERYS_25_DATA_0         = 9'h13c,
    ADDR_QUERYS_25_DATA_1         = 9'h140,
    ADDR_QUERYS_25_CTRL           = 9'h144,
    ADDR_QUERYS_26_DATA_0         = 9'h148,
    ADDR_QUERYS_26_DATA_1         = 9'h14c,
    ADDR_QUERYS_26_CTRL           = 9'h150,
    ADDR_QUERYS_27_DATA_0         = 9'h154,
    ADDR_QUERYS_27_DATA_1         = 9'h158,
    ADDR_QUERYS_27_CTRL           = 9'h15c,
    ADDR_QUERYS_28_DATA_0         = 9'h160,
    ADDR_QUERYS_28_DATA_1         = 9'h164,
    ADDR_QUERYS_28_CTRL           = 9'h168,
    ADDR_QUERYS_29_DATA_0         = 9'h16c,
    ADDR_QUERYS_29_DATA_1         = 9'h170,
    ADDR_QUERYS_29_CTRL           = 9'h174,
    ADDR_QUERYS_30_DATA_0         = 9'h178,
    ADDR_QUERYS_30_DATA_1         = 9'h17c,
    ADDR_QUERYS_30_CTRL           = 9'h180,
    ADDR_QUERYS_31_DATA_0         = 9'h184,
    ADDR_QUERYS_31_DATA_1         = 9'h188,
    ADDR_QUERYS_31_CTRL           = 9'h18c,
    ADDR_REFERENCES_DATA_0        = 9'h190,
    ADDR_REFERENCES_DATA_1        = 9'h194,
    ADDR_REFERENCES_CTRL          = 9'h198,
    ADDR_QUERY_LENGTHS_DATA_0     = 9'h19c,
    ADDR_QUERY_LENGTHS_DATA_1     = 9'h1a0,
    ADDR_QUERY_LENGTHS_CTRL       = 9'h1a4,
    ADDR_REFERENCE_LENGTHS_DATA_0 = 9'h1a8,
    ADDR_REFERENCE_LENGTHS_DATA_1 = 9'h1ac,
    ADDR_REFERENCE_LENGTHS_CTRL   = 9'h1b0,
    ADDR_PENALTIES_DATA_0         = 9'h1b4,
    ADDR_PENALTIES_DATA_1         = 9'h1b8,
    ADDR_PENALTIES_CTRL           = 9'h1bc,
    ADDR_TB_STREAMS_DATA_0        = 9'h1c0,
    ADDR_TB_STREAMS_DATA_1        = 9'h1c4,
    ADDR_TB_STREAMS_CTRL          = 9'h1c8,
    WRIDLE                        = 2'd0,
    WRDATA                        = 2'd1,
    WRRESP                        = 2'd2,
    WRRESET                       = 2'd3,
    RDIDLE                        = 2'd0,
    RDDATA                        = 2'd1,
    RDRESET                       = 2'd2,
    ADDR_BITS                = 9;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_continue;
    reg                           int_ap_ready = 1'b0;
    wire                          task_ap_ready;
    reg                           int_ap_done = 1'b0;
    wire                          task_ap_done;
    reg                           int_task_ap_done = 1'b0;
    reg                           int_ap_start = 1'b0;
    reg                           int_interrupt = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           auto_restart_status = 1'b0;
    reg                           auto_restart_done = 1'b0;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [63:0]                   int_querys_0 = 'b0;
    reg  [63:0]                   int_querys_1 = 'b0;
    reg  [63:0]                   int_querys_2 = 'b0;
    reg  [63:0]                   int_querys_3 = 'b0;
    reg  [63:0]                   int_querys_4 = 'b0;
    reg  [63:0]                   int_querys_5 = 'b0;
    reg  [63:0]                   int_querys_6 = 'b0;
    reg  [63:0]                   int_querys_7 = 'b0;
    reg  [63:0]                   int_querys_8 = 'b0;
    reg  [63:0]                   int_querys_9 = 'b0;
    reg  [63:0]                   int_querys_10 = 'b0;
    reg  [63:0]                   int_querys_11 = 'b0;
    reg  [63:0]                   int_querys_12 = 'b0;
    reg  [63:0]                   int_querys_13 = 'b0;
    reg  [63:0]                   int_querys_14 = 'b0;
    reg  [63:0]                   int_querys_15 = 'b0;
    reg  [63:0]                   int_querys_16 = 'b0;
    reg  [63:0]                   int_querys_17 = 'b0;
    reg  [63:0]                   int_querys_18 = 'b0;
    reg  [63:0]                   int_querys_19 = 'b0;
    reg  [63:0]                   int_querys_20 = 'b0;
    reg  [63:0]                   int_querys_21 = 'b0;
    reg  [63:0]                   int_querys_22 = 'b0;
    reg  [63:0]                   int_querys_23 = 'b0;
    reg  [63:0]                   int_querys_24 = 'b0;
    reg  [63:0]                   int_querys_25 = 'b0;
    reg  [63:0]                   int_querys_26 = 'b0;
    reg  [63:0]                   int_querys_27 = 'b0;
    reg  [63:0]                   int_querys_28 = 'b0;
    reg  [63:0]                   int_querys_29 = 'b0;
    reg  [63:0]                   int_querys_30 = 'b0;
    reg  [63:0]                   int_querys_31 = 'b0;
    reg  [63:0]                   int_references = 'b0;
    reg  [63:0]                   int_query_lengths = 'b0;
    reg  [63:0]                   int_reference_lengths = 'b0;
    reg  [63:0]                   int_penalties = 'b0;
    reg  [63:0]                   int_tb_streams = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_task_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[4] <= int_ap_continue;
                    rdata[7] <= int_auto_restart;
                    rdata[9] <= int_interrupt;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_QUERYS_0_DATA_0: begin
                    rdata <= int_querys_0[31:0];
                end
                ADDR_QUERYS_0_DATA_1: begin
                    rdata <= int_querys_0[63:32];
                end
                ADDR_QUERYS_1_DATA_0: begin
                    rdata <= int_querys_1[31:0];
                end
                ADDR_QUERYS_1_DATA_1: begin
                    rdata <= int_querys_1[63:32];
                end
                ADDR_QUERYS_2_DATA_0: begin
                    rdata <= int_querys_2[31:0];
                end
                ADDR_QUERYS_2_DATA_1: begin
                    rdata <= int_querys_2[63:32];
                end
                ADDR_QUERYS_3_DATA_0: begin
                    rdata <= int_querys_3[31:0];
                end
                ADDR_QUERYS_3_DATA_1: begin
                    rdata <= int_querys_3[63:32];
                end
                ADDR_QUERYS_4_DATA_0: begin
                    rdata <= int_querys_4[31:0];
                end
                ADDR_QUERYS_4_DATA_1: begin
                    rdata <= int_querys_4[63:32];
                end
                ADDR_QUERYS_5_DATA_0: begin
                    rdata <= int_querys_5[31:0];
                end
                ADDR_QUERYS_5_DATA_1: begin
                    rdata <= int_querys_5[63:32];
                end
                ADDR_QUERYS_6_DATA_0: begin
                    rdata <= int_querys_6[31:0];
                end
                ADDR_QUERYS_6_DATA_1: begin
                    rdata <= int_querys_6[63:32];
                end
                ADDR_QUERYS_7_DATA_0: begin
                    rdata <= int_querys_7[31:0];
                end
                ADDR_QUERYS_7_DATA_1: begin
                    rdata <= int_querys_7[63:32];
                end
                ADDR_QUERYS_8_DATA_0: begin
                    rdata <= int_querys_8[31:0];
                end
                ADDR_QUERYS_8_DATA_1: begin
                    rdata <= int_querys_8[63:32];
                end
                ADDR_QUERYS_9_DATA_0: begin
                    rdata <= int_querys_9[31:0];
                end
                ADDR_QUERYS_9_DATA_1: begin
                    rdata <= int_querys_9[63:32];
                end
                ADDR_QUERYS_10_DATA_0: begin
                    rdata <= int_querys_10[31:0];
                end
                ADDR_QUERYS_10_DATA_1: begin
                    rdata <= int_querys_10[63:32];
                end
                ADDR_QUERYS_11_DATA_0: begin
                    rdata <= int_querys_11[31:0];
                end
                ADDR_QUERYS_11_DATA_1: begin
                    rdata <= int_querys_11[63:32];
                end
                ADDR_QUERYS_12_DATA_0: begin
                    rdata <= int_querys_12[31:0];
                end
                ADDR_QUERYS_12_DATA_1: begin
                    rdata <= int_querys_12[63:32];
                end
                ADDR_QUERYS_13_DATA_0: begin
                    rdata <= int_querys_13[31:0];
                end
                ADDR_QUERYS_13_DATA_1: begin
                    rdata <= int_querys_13[63:32];
                end
                ADDR_QUERYS_14_DATA_0: begin
                    rdata <= int_querys_14[31:0];
                end
                ADDR_QUERYS_14_DATA_1: begin
                    rdata <= int_querys_14[63:32];
                end
                ADDR_QUERYS_15_DATA_0: begin
                    rdata <= int_querys_15[31:0];
                end
                ADDR_QUERYS_15_DATA_1: begin
                    rdata <= int_querys_15[63:32];
                end
                ADDR_QUERYS_16_DATA_0: begin
                    rdata <= int_querys_16[31:0];
                end
                ADDR_QUERYS_16_DATA_1: begin
                    rdata <= int_querys_16[63:32];
                end
                ADDR_QUERYS_17_DATA_0: begin
                    rdata <= int_querys_17[31:0];
                end
                ADDR_QUERYS_17_DATA_1: begin
                    rdata <= int_querys_17[63:32];
                end
                ADDR_QUERYS_18_DATA_0: begin
                    rdata <= int_querys_18[31:0];
                end
                ADDR_QUERYS_18_DATA_1: begin
                    rdata <= int_querys_18[63:32];
                end
                ADDR_QUERYS_19_DATA_0: begin
                    rdata <= int_querys_19[31:0];
                end
                ADDR_QUERYS_19_DATA_1: begin
                    rdata <= int_querys_19[63:32];
                end
                ADDR_QUERYS_20_DATA_0: begin
                    rdata <= int_querys_20[31:0];
                end
                ADDR_QUERYS_20_DATA_1: begin
                    rdata <= int_querys_20[63:32];
                end
                ADDR_QUERYS_21_DATA_0: begin
                    rdata <= int_querys_21[31:0];
                end
                ADDR_QUERYS_21_DATA_1: begin
                    rdata <= int_querys_21[63:32];
                end
                ADDR_QUERYS_22_DATA_0: begin
                    rdata <= int_querys_22[31:0];
                end
                ADDR_QUERYS_22_DATA_1: begin
                    rdata <= int_querys_22[63:32];
                end
                ADDR_QUERYS_23_DATA_0: begin
                    rdata <= int_querys_23[31:0];
                end
                ADDR_QUERYS_23_DATA_1: begin
                    rdata <= int_querys_23[63:32];
                end
                ADDR_QUERYS_24_DATA_0: begin
                    rdata <= int_querys_24[31:0];
                end
                ADDR_QUERYS_24_DATA_1: begin
                    rdata <= int_querys_24[63:32];
                end
                ADDR_QUERYS_25_DATA_0: begin
                    rdata <= int_querys_25[31:0];
                end
                ADDR_QUERYS_25_DATA_1: begin
                    rdata <= int_querys_25[63:32];
                end
                ADDR_QUERYS_26_DATA_0: begin
                    rdata <= int_querys_26[31:0];
                end
                ADDR_QUERYS_26_DATA_1: begin
                    rdata <= int_querys_26[63:32];
                end
                ADDR_QUERYS_27_DATA_0: begin
                    rdata <= int_querys_27[31:0];
                end
                ADDR_QUERYS_27_DATA_1: begin
                    rdata <= int_querys_27[63:32];
                end
                ADDR_QUERYS_28_DATA_0: begin
                    rdata <= int_querys_28[31:0];
                end
                ADDR_QUERYS_28_DATA_1: begin
                    rdata <= int_querys_28[63:32];
                end
                ADDR_QUERYS_29_DATA_0: begin
                    rdata <= int_querys_29[31:0];
                end
                ADDR_QUERYS_29_DATA_1: begin
                    rdata <= int_querys_29[63:32];
                end
                ADDR_QUERYS_30_DATA_0: begin
                    rdata <= int_querys_30[31:0];
                end
                ADDR_QUERYS_30_DATA_1: begin
                    rdata <= int_querys_30[63:32];
                end
                ADDR_QUERYS_31_DATA_0: begin
                    rdata <= int_querys_31[31:0];
                end
                ADDR_QUERYS_31_DATA_1: begin
                    rdata <= int_querys_31[63:32];
                end
                ADDR_REFERENCES_DATA_0: begin
                    rdata <= int_references[31:0];
                end
                ADDR_REFERENCES_DATA_1: begin
                    rdata <= int_references[63:32];
                end
                ADDR_QUERY_LENGTHS_DATA_0: begin
                    rdata <= int_query_lengths[31:0];
                end
                ADDR_QUERY_LENGTHS_DATA_1: begin
                    rdata <= int_query_lengths[63:32];
                end
                ADDR_REFERENCE_LENGTHS_DATA_0: begin
                    rdata <= int_reference_lengths[31:0];
                end
                ADDR_REFERENCE_LENGTHS_DATA_1: begin
                    rdata <= int_reference_lengths[63:32];
                end
                ADDR_PENALTIES_DATA_0: begin
                    rdata <= int_penalties[31:0];
                end
                ADDR_PENALTIES_DATA_1: begin
                    rdata <= int_penalties[63:32];
                end
                ADDR_TB_STREAMS_DATA_0: begin
                    rdata <= int_tb_streams[31:0];
                end
                ADDR_TB_STREAMS_DATA_1: begin
                    rdata <= int_tb_streams[63:32];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt         = int_interrupt;
assign ap_start          = int_ap_start;
assign task_ap_done      = (ap_done && !auto_restart_status) || auto_restart_done;
assign task_ap_ready     = ap_ready && !int_auto_restart;
assign ap_continue       = int_ap_continue || auto_restart_status;
assign querys_0          = int_querys_0;
assign querys_1          = int_querys_1;
assign querys_2          = int_querys_2;
assign querys_3          = int_querys_3;
assign querys_4          = int_querys_4;
assign querys_5          = int_querys_5;
assign querys_6          = int_querys_6;
assign querys_7          = int_querys_7;
assign querys_8          = int_querys_8;
assign querys_9          = int_querys_9;
assign querys_10         = int_querys_10;
assign querys_11         = int_querys_11;
assign querys_12         = int_querys_12;
assign querys_13         = int_querys_13;
assign querys_14         = int_querys_14;
assign querys_15         = int_querys_15;
assign querys_16         = int_querys_16;
assign querys_17         = int_querys_17;
assign querys_18         = int_querys_18;
assign querys_19         = int_querys_19;
assign querys_20         = int_querys_20;
assign querys_21         = int_querys_21;
assign querys_22         = int_querys_22;
assign querys_23         = int_querys_23;
assign querys_24         = int_querys_24;
assign querys_25         = int_querys_25;
assign querys_26         = int_querys_26;
assign querys_27         = int_querys_27;
assign querys_28         = int_querys_28;
assign querys_29         = int_querys_29;
assign querys_30         = int_querys_30;
assign querys_31         = int_querys_31;
assign references        = int_references;
assign query_lengths     = int_query_lengths;
assign reference_lengths = int_reference_lengths;
assign penalties         = int_penalties;
assign tb_streams        = int_tb_streams;
// int_interrupt
always @(posedge ACLK) begin
    if (ARESET)
        int_interrupt <= 1'b0;
    else if (ACLK_EN) begin
        if (int_gie && (|int_isr))
            int_interrupt <= 1'b1;
        else
            int_interrupt <= 1'b0;
    end
end

// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_done <= ap_done;
    end
end

// int_task_ap_done
always @(posedge ACLK) begin
    if (ARESET)
        int_task_ap_done <= 1'b0;
    else if (ACLK_EN) begin
            int_task_ap_done <= task_ap_done && !int_ap_continue;
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
        if (task_ap_ready)
            int_ap_ready <= 1'b1;
        else if (ar_hs && raddr == ADDR_AP_CTRL)
            int_ap_ready <= 1'b0;
    end
end

// int_ap_continue
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_continue <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[4])
            int_ap_continue <= 1'b1;
        else
            int_ap_continue <= 1'b0; // self clear
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// auto_restart_status
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_status <= 1'b0;
    else if (ACLK_EN) begin
        if (int_auto_restart)
            auto_restart_status <= 1'b1;
        else if (ap_idle)
            auto_restart_status <= 1'b0;
    end
end

// auto_restart_done
always @(posedge ACLK) begin
    if (ARESET)
        auto_restart_done <= 1'b0;
    else if (ACLK_EN) begin
        if (auto_restart_status && (ap_idle && !int_ap_idle))
            auto_restart_done <= 1'b1;
        else if (int_ap_continue)
            auto_restart_done <= 1'b0;
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_querys_0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_0_DATA_0)
            int_querys_0[31:0] <= (WDATA[31:0] & wmask) | (int_querys_0[31:0] & ~wmask);
    end
end

// int_querys_0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_0_DATA_1)
            int_querys_0[63:32] <= (WDATA[31:0] & wmask) | (int_querys_0[63:32] & ~wmask);
    end
end

// int_querys_1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_1_DATA_0)
            int_querys_1[31:0] <= (WDATA[31:0] & wmask) | (int_querys_1[31:0] & ~wmask);
    end
end

// int_querys_1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_1_DATA_1)
            int_querys_1[63:32] <= (WDATA[31:0] & wmask) | (int_querys_1[63:32] & ~wmask);
    end
end

// int_querys_2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_2_DATA_0)
            int_querys_2[31:0] <= (WDATA[31:0] & wmask) | (int_querys_2[31:0] & ~wmask);
    end
end

// int_querys_2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_2_DATA_1)
            int_querys_2[63:32] <= (WDATA[31:0] & wmask) | (int_querys_2[63:32] & ~wmask);
    end
end

// int_querys_3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_3_DATA_0)
            int_querys_3[31:0] <= (WDATA[31:0] & wmask) | (int_querys_3[31:0] & ~wmask);
    end
end

// int_querys_3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_3_DATA_1)
            int_querys_3[63:32] <= (WDATA[31:0] & wmask) | (int_querys_3[63:32] & ~wmask);
    end
end

// int_querys_4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_4_DATA_0)
            int_querys_4[31:0] <= (WDATA[31:0] & wmask) | (int_querys_4[31:0] & ~wmask);
    end
end

// int_querys_4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_4_DATA_1)
            int_querys_4[63:32] <= (WDATA[31:0] & wmask) | (int_querys_4[63:32] & ~wmask);
    end
end

// int_querys_5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_5_DATA_0)
            int_querys_5[31:0] <= (WDATA[31:0] & wmask) | (int_querys_5[31:0] & ~wmask);
    end
end

// int_querys_5[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_5[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_5_DATA_1)
            int_querys_5[63:32] <= (WDATA[31:0] & wmask) | (int_querys_5[63:32] & ~wmask);
    end
end

// int_querys_6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_6_DATA_0)
            int_querys_6[31:0] <= (WDATA[31:0] & wmask) | (int_querys_6[31:0] & ~wmask);
    end
end

// int_querys_6[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_6[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_6_DATA_1)
            int_querys_6[63:32] <= (WDATA[31:0] & wmask) | (int_querys_6[63:32] & ~wmask);
    end
end

// int_querys_7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_7_DATA_0)
            int_querys_7[31:0] <= (WDATA[31:0] & wmask) | (int_querys_7[31:0] & ~wmask);
    end
end

// int_querys_7[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_7[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_7_DATA_1)
            int_querys_7[63:32] <= (WDATA[31:0] & wmask) | (int_querys_7[63:32] & ~wmask);
    end
end

// int_querys_8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_8_DATA_0)
            int_querys_8[31:0] <= (WDATA[31:0] & wmask) | (int_querys_8[31:0] & ~wmask);
    end
end

// int_querys_8[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_8[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_8_DATA_1)
            int_querys_8[63:32] <= (WDATA[31:0] & wmask) | (int_querys_8[63:32] & ~wmask);
    end
end

// int_querys_9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_9_DATA_0)
            int_querys_9[31:0] <= (WDATA[31:0] & wmask) | (int_querys_9[31:0] & ~wmask);
    end
end

// int_querys_9[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_9[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_9_DATA_1)
            int_querys_9[63:32] <= (WDATA[31:0] & wmask) | (int_querys_9[63:32] & ~wmask);
    end
end

// int_querys_10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_10_DATA_0)
            int_querys_10[31:0] <= (WDATA[31:0] & wmask) | (int_querys_10[31:0] & ~wmask);
    end
end

// int_querys_10[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_10[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_10_DATA_1)
            int_querys_10[63:32] <= (WDATA[31:0] & wmask) | (int_querys_10[63:32] & ~wmask);
    end
end

// int_querys_11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_11_DATA_0)
            int_querys_11[31:0] <= (WDATA[31:0] & wmask) | (int_querys_11[31:0] & ~wmask);
    end
end

// int_querys_11[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_11[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_11_DATA_1)
            int_querys_11[63:32] <= (WDATA[31:0] & wmask) | (int_querys_11[63:32] & ~wmask);
    end
end

// int_querys_12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_12_DATA_0)
            int_querys_12[31:0] <= (WDATA[31:0] & wmask) | (int_querys_12[31:0] & ~wmask);
    end
end

// int_querys_12[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_12[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_12_DATA_1)
            int_querys_12[63:32] <= (WDATA[31:0] & wmask) | (int_querys_12[63:32] & ~wmask);
    end
end

// int_querys_13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_13_DATA_0)
            int_querys_13[31:0] <= (WDATA[31:0] & wmask) | (int_querys_13[31:0] & ~wmask);
    end
end

// int_querys_13[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_13[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_13_DATA_1)
            int_querys_13[63:32] <= (WDATA[31:0] & wmask) | (int_querys_13[63:32] & ~wmask);
    end
end

// int_querys_14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_14_DATA_0)
            int_querys_14[31:0] <= (WDATA[31:0] & wmask) | (int_querys_14[31:0] & ~wmask);
    end
end

// int_querys_14[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_14[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_14_DATA_1)
            int_querys_14[63:32] <= (WDATA[31:0] & wmask) | (int_querys_14[63:32] & ~wmask);
    end
end

// int_querys_15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_15_DATA_0)
            int_querys_15[31:0] <= (WDATA[31:0] & wmask) | (int_querys_15[31:0] & ~wmask);
    end
end

// int_querys_15[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_15[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_15_DATA_1)
            int_querys_15[63:32] <= (WDATA[31:0] & wmask) | (int_querys_15[63:32] & ~wmask);
    end
end

// int_querys_16[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_16[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_16_DATA_0)
            int_querys_16[31:0] <= (WDATA[31:0] & wmask) | (int_querys_16[31:0] & ~wmask);
    end
end

// int_querys_16[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_16[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_16_DATA_1)
            int_querys_16[63:32] <= (WDATA[31:0] & wmask) | (int_querys_16[63:32] & ~wmask);
    end
end

// int_querys_17[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_17[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_17_DATA_0)
            int_querys_17[31:0] <= (WDATA[31:0] & wmask) | (int_querys_17[31:0] & ~wmask);
    end
end

// int_querys_17[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_17[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_17_DATA_1)
            int_querys_17[63:32] <= (WDATA[31:0] & wmask) | (int_querys_17[63:32] & ~wmask);
    end
end

// int_querys_18[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_18[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_18_DATA_0)
            int_querys_18[31:0] <= (WDATA[31:0] & wmask) | (int_querys_18[31:0] & ~wmask);
    end
end

// int_querys_18[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_18[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_18_DATA_1)
            int_querys_18[63:32] <= (WDATA[31:0] & wmask) | (int_querys_18[63:32] & ~wmask);
    end
end

// int_querys_19[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_19[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_19_DATA_0)
            int_querys_19[31:0] <= (WDATA[31:0] & wmask) | (int_querys_19[31:0] & ~wmask);
    end
end

// int_querys_19[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_19[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_19_DATA_1)
            int_querys_19[63:32] <= (WDATA[31:0] & wmask) | (int_querys_19[63:32] & ~wmask);
    end
end

// int_querys_20[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_20[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_20_DATA_0)
            int_querys_20[31:0] <= (WDATA[31:0] & wmask) | (int_querys_20[31:0] & ~wmask);
    end
end

// int_querys_20[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_20[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_20_DATA_1)
            int_querys_20[63:32] <= (WDATA[31:0] & wmask) | (int_querys_20[63:32] & ~wmask);
    end
end

// int_querys_21[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_21[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_21_DATA_0)
            int_querys_21[31:0] <= (WDATA[31:0] & wmask) | (int_querys_21[31:0] & ~wmask);
    end
end

// int_querys_21[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_21[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_21_DATA_1)
            int_querys_21[63:32] <= (WDATA[31:0] & wmask) | (int_querys_21[63:32] & ~wmask);
    end
end

// int_querys_22[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_22[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_22_DATA_0)
            int_querys_22[31:0] <= (WDATA[31:0] & wmask) | (int_querys_22[31:0] & ~wmask);
    end
end

// int_querys_22[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_22[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_22_DATA_1)
            int_querys_22[63:32] <= (WDATA[31:0] & wmask) | (int_querys_22[63:32] & ~wmask);
    end
end

// int_querys_23[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_23[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_23_DATA_0)
            int_querys_23[31:0] <= (WDATA[31:0] & wmask) | (int_querys_23[31:0] & ~wmask);
    end
end

// int_querys_23[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_23[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_23_DATA_1)
            int_querys_23[63:32] <= (WDATA[31:0] & wmask) | (int_querys_23[63:32] & ~wmask);
    end
end

// int_querys_24[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_24[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_24_DATA_0)
            int_querys_24[31:0] <= (WDATA[31:0] & wmask) | (int_querys_24[31:0] & ~wmask);
    end
end

// int_querys_24[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_24[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_24_DATA_1)
            int_querys_24[63:32] <= (WDATA[31:0] & wmask) | (int_querys_24[63:32] & ~wmask);
    end
end

// int_querys_25[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_25[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_25_DATA_0)
            int_querys_25[31:0] <= (WDATA[31:0] & wmask) | (int_querys_25[31:0] & ~wmask);
    end
end

// int_querys_25[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_25[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_25_DATA_1)
            int_querys_25[63:32] <= (WDATA[31:0] & wmask) | (int_querys_25[63:32] & ~wmask);
    end
end

// int_querys_26[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_26[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_26_DATA_0)
            int_querys_26[31:0] <= (WDATA[31:0] & wmask) | (int_querys_26[31:0] & ~wmask);
    end
end

// int_querys_26[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_26[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_26_DATA_1)
            int_querys_26[63:32] <= (WDATA[31:0] & wmask) | (int_querys_26[63:32] & ~wmask);
    end
end

// int_querys_27[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_27[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_27_DATA_0)
            int_querys_27[31:0] <= (WDATA[31:0] & wmask) | (int_querys_27[31:0] & ~wmask);
    end
end

// int_querys_27[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_27[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_27_DATA_1)
            int_querys_27[63:32] <= (WDATA[31:0] & wmask) | (int_querys_27[63:32] & ~wmask);
    end
end

// int_querys_28[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_28[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_28_DATA_0)
            int_querys_28[31:0] <= (WDATA[31:0] & wmask) | (int_querys_28[31:0] & ~wmask);
    end
end

// int_querys_28[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_28[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_28_DATA_1)
            int_querys_28[63:32] <= (WDATA[31:0] & wmask) | (int_querys_28[63:32] & ~wmask);
    end
end

// int_querys_29[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_29[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_29_DATA_0)
            int_querys_29[31:0] <= (WDATA[31:0] & wmask) | (int_querys_29[31:0] & ~wmask);
    end
end

// int_querys_29[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_29[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_29_DATA_1)
            int_querys_29[63:32] <= (WDATA[31:0] & wmask) | (int_querys_29[63:32] & ~wmask);
    end
end

// int_querys_30[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_30[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_30_DATA_0)
            int_querys_30[31:0] <= (WDATA[31:0] & wmask) | (int_querys_30[31:0] & ~wmask);
    end
end

// int_querys_30[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_30[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_30_DATA_1)
            int_querys_30[63:32] <= (WDATA[31:0] & wmask) | (int_querys_30[63:32] & ~wmask);
    end
end

// int_querys_31[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_31[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_31_DATA_0)
            int_querys_31[31:0] <= (WDATA[31:0] & wmask) | (int_querys_31[31:0] & ~wmask);
    end
end

// int_querys_31[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_querys_31[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERYS_31_DATA_1)
            int_querys_31[63:32] <= (WDATA[31:0] & wmask) | (int_querys_31[63:32] & ~wmask);
    end
end

// int_references[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_references[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_REFERENCES_DATA_0)
            int_references[31:0] <= (WDATA[31:0] & wmask) | (int_references[31:0] & ~wmask);
    end
end

// int_references[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_references[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_REFERENCES_DATA_1)
            int_references[63:32] <= (WDATA[31:0] & wmask) | (int_references[63:32] & ~wmask);
    end
end

// int_query_lengths[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_query_lengths[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERY_LENGTHS_DATA_0)
            int_query_lengths[31:0] <= (WDATA[31:0] & wmask) | (int_query_lengths[31:0] & ~wmask);
    end
end

// int_query_lengths[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_query_lengths[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_QUERY_LENGTHS_DATA_1)
            int_query_lengths[63:32] <= (WDATA[31:0] & wmask) | (int_query_lengths[63:32] & ~wmask);
    end
end

// int_reference_lengths[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_reference_lengths[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_REFERENCE_LENGTHS_DATA_0)
            int_reference_lengths[31:0] <= (WDATA[31:0] & wmask) | (int_reference_lengths[31:0] & ~wmask);
    end
end

// int_reference_lengths[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_reference_lengths[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_REFERENCE_LENGTHS_DATA_1)
            int_reference_lengths[63:32] <= (WDATA[31:0] & wmask) | (int_reference_lengths[63:32] & ~wmask);
    end
end

// int_penalties[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_penalties[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PENALTIES_DATA_0)
            int_penalties[31:0] <= (WDATA[31:0] & wmask) | (int_penalties[31:0] & ~wmask);
    end
end

// int_penalties[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_penalties[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_PENALTIES_DATA_1)
            int_penalties[63:32] <= (WDATA[31:0] & wmask) | (int_penalties[63:32] & ~wmask);
    end
end

// int_tb_streams[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_tb_streams[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TB_STREAMS_DATA_0)
            int_tb_streams[31:0] <= (WDATA[31:0] & wmask) | (int_tb_streams[31:0] & ~wmask);
    end
end

// int_tb_streams[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_tb_streams[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_TB_STREAMS_DATA_1)
            int_tb_streams[63:32] <= (WDATA[31:0] & wmask) | (int_tb_streams[63:32] & ~wmask);
    end
end

//synthesis translate_off
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (int_gie & ~int_isr[0] & int_ier[0] & ap_done)
            $display ("// Interrupt Monitor : interrupt for ap_done detected @ \"%0t\"", $time);
        if (int_gie & ~int_isr[1] & int_ier[1] & ap_ready)
            $display ("// Interrupt Monitor : interrupt for ap_ready detected @ \"%0t\"", $time);
    end
end
//synthesis translate_on

//------------------------Memory logic-------------------

endmodule
