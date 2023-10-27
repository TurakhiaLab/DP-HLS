// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2023.1 (64-bit)
// Tool Version Limit: 2023.05
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// 
// ==============================================================
// control
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

#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_AP_CTRL                0x000
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_GIE                    0x004
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_IER                    0x008
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_ISR                    0x00c
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_0_DATA          0x010
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_0_DATA          64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_1_DATA          0x01c
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_1_DATA          64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_2_DATA          0x028
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_2_DATA          64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_3_DATA          0x034
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_3_DATA          64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_4_DATA          0x040
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_4_DATA          64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_5_DATA          0x04c
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_5_DATA          64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_6_DATA          0x058
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_6_DATA          64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_7_DATA          0x064
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_7_DATA          64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_8_DATA          0x070
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_8_DATA          64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_9_DATA          0x07c
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_9_DATA          64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_10_DATA         0x088
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_10_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_11_DATA         0x094
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_11_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_12_DATA         0x0a0
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_12_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_13_DATA         0x0ac
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_13_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_14_DATA         0x0b8
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_14_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_15_DATA         0x0c4
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_15_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_16_DATA         0x0d0
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_16_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_17_DATA         0x0dc
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_17_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_18_DATA         0x0e8
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_18_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_19_DATA         0x0f4
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_19_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_20_DATA         0x100
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_20_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_21_DATA         0x10c
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_21_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_22_DATA         0x118
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_22_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_23_DATA         0x124
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_23_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_24_DATA         0x130
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_24_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_25_DATA         0x13c
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_25_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_26_DATA         0x148
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_26_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_27_DATA         0x154
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_27_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_28_DATA         0x160
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_28_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_29_DATA         0x16c
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_29_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_30_DATA         0x178
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_30_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERYS_31_DATA         0x184
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERYS_31_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_REFERENCES_DATA        0x190
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_REFERENCES_DATA        64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_QUERY_LENGTHS_DATA     0x19c
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_QUERY_LENGTHS_DATA     64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_REFERENCE_LENGTHS_DATA 0x1a8
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_REFERENCE_LENGTHS_DATA 64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_PENALTIES_DATA         0x1b4
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_PENALTIES_DATA         64
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_ADDR_TB_STREAMS_DATA        0x1c0
#define XSEQ_ALIGN_MULTIPLE_STATIC_CONTROL_BITS_TB_STREAMS_DATA        64

