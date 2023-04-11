set moduleName seq_align_multiple_Pipeline_VITIS_LOOP_93_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {seq_align_multiple_Pipeline_VITIS_LOOP_93_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ reference_string_comp_0 int 2 regular {array 128 { 1 3 } 1 1 }  }
	{ local_reference_V_3_15_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_2_15_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_1_15_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_0_15_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_3_14_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_2_14_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_1_14_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_0_14_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_3_13_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_2_13_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_1_13_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_0_13_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_3_12_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_2_12_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_1_12_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_0_12_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_3_11_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_2_11_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_1_11_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_0_11_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_3_10_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_2_10_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_1_10_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_0_10_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_3_9_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_2_9_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_1_9_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_0_9_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_3_8_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_2_8_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_1_8_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_0_8_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_3_7_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_2_7_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_1_7_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_0_7_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_3_6_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_2_6_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_1_6_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_0_6_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_3_5_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_2_5_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_1_5_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_0_5_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_3_4_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_2_4_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_1_4_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_0_4_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_3_3_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_2_3_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_1_3_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_0_3_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_3_2_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_2_2_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_1_2_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_0_2_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_3_1_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_2_1_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_1_1_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_0_1_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_3_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_2_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_1_0_out int 2 regular {pointer 1}  }
	{ local_reference_V_0_0_out int 2 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "reference_string_comp_0", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "local_reference_V_3_15_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_2_15_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_1_15_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_0_15_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_3_14_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_2_14_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_1_14_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_0_14_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_3_13_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_2_13_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_1_13_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_0_13_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_3_12_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_2_12_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_1_12_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_0_12_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_3_11_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_2_11_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_1_11_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_0_11_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_3_10_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_2_10_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_1_10_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_0_10_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_3_9_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_2_9_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_1_9_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_0_9_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_3_8_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_2_8_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_1_8_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_0_8_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_3_7_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_2_7_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_1_7_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_0_7_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_3_6_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_2_6_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_1_6_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_0_6_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_3_5_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_2_5_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_1_5_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_0_5_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_3_4_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_2_4_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_1_4_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_0_4_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_3_3_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_2_3_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_1_3_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_0_3_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_3_2_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_2_2_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_1_2_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_0_2_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_3_1_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_2_1_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_1_1_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_0_1_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_3_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_2_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_1_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_V_0_0_out", "interface" : "wire", "bitwidth" : 2, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 137
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ reference_string_comp_0_address0 sc_out sc_lv 7 signal 0 } 
	{ reference_string_comp_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ reference_string_comp_0_q0 sc_in sc_lv 2 signal 0 } 
	{ local_reference_V_3_15_0_out sc_out sc_lv 2 signal 1 } 
	{ local_reference_V_3_15_0_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ local_reference_V_2_15_0_out sc_out sc_lv 2 signal 2 } 
	{ local_reference_V_2_15_0_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ local_reference_V_1_15_0_out sc_out sc_lv 2 signal 3 } 
	{ local_reference_V_1_15_0_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ local_reference_V_0_15_0_out sc_out sc_lv 2 signal 4 } 
	{ local_reference_V_0_15_0_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ local_reference_V_3_14_0_out sc_out sc_lv 2 signal 5 } 
	{ local_reference_V_3_14_0_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ local_reference_V_2_14_0_out sc_out sc_lv 2 signal 6 } 
	{ local_reference_V_2_14_0_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ local_reference_V_1_14_0_out sc_out sc_lv 2 signal 7 } 
	{ local_reference_V_1_14_0_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ local_reference_V_0_14_0_out sc_out sc_lv 2 signal 8 } 
	{ local_reference_V_0_14_0_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ local_reference_V_3_13_0_out sc_out sc_lv 2 signal 9 } 
	{ local_reference_V_3_13_0_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ local_reference_V_2_13_0_out sc_out sc_lv 2 signal 10 } 
	{ local_reference_V_2_13_0_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ local_reference_V_1_13_0_out sc_out sc_lv 2 signal 11 } 
	{ local_reference_V_1_13_0_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ local_reference_V_0_13_0_out sc_out sc_lv 2 signal 12 } 
	{ local_reference_V_0_13_0_out_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ local_reference_V_3_12_0_out sc_out sc_lv 2 signal 13 } 
	{ local_reference_V_3_12_0_out_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ local_reference_V_2_12_0_out sc_out sc_lv 2 signal 14 } 
	{ local_reference_V_2_12_0_out_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ local_reference_V_1_12_0_out sc_out sc_lv 2 signal 15 } 
	{ local_reference_V_1_12_0_out_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ local_reference_V_0_12_0_out sc_out sc_lv 2 signal 16 } 
	{ local_reference_V_0_12_0_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ local_reference_V_3_11_0_out sc_out sc_lv 2 signal 17 } 
	{ local_reference_V_3_11_0_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ local_reference_V_2_11_0_out sc_out sc_lv 2 signal 18 } 
	{ local_reference_V_2_11_0_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ local_reference_V_1_11_0_out sc_out sc_lv 2 signal 19 } 
	{ local_reference_V_1_11_0_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ local_reference_V_0_11_0_out sc_out sc_lv 2 signal 20 } 
	{ local_reference_V_0_11_0_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ local_reference_V_3_10_0_out sc_out sc_lv 2 signal 21 } 
	{ local_reference_V_3_10_0_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ local_reference_V_2_10_0_out sc_out sc_lv 2 signal 22 } 
	{ local_reference_V_2_10_0_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ local_reference_V_1_10_0_out sc_out sc_lv 2 signal 23 } 
	{ local_reference_V_1_10_0_out_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ local_reference_V_0_10_0_out sc_out sc_lv 2 signal 24 } 
	{ local_reference_V_0_10_0_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ local_reference_V_3_9_0_out sc_out sc_lv 2 signal 25 } 
	{ local_reference_V_3_9_0_out_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ local_reference_V_2_9_0_out sc_out sc_lv 2 signal 26 } 
	{ local_reference_V_2_9_0_out_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ local_reference_V_1_9_0_out sc_out sc_lv 2 signal 27 } 
	{ local_reference_V_1_9_0_out_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ local_reference_V_0_9_0_out sc_out sc_lv 2 signal 28 } 
	{ local_reference_V_0_9_0_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ local_reference_V_3_8_0_out sc_out sc_lv 2 signal 29 } 
	{ local_reference_V_3_8_0_out_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ local_reference_V_2_8_0_out sc_out sc_lv 2 signal 30 } 
	{ local_reference_V_2_8_0_out_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ local_reference_V_1_8_0_out sc_out sc_lv 2 signal 31 } 
	{ local_reference_V_1_8_0_out_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ local_reference_V_0_8_0_out sc_out sc_lv 2 signal 32 } 
	{ local_reference_V_0_8_0_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ local_reference_V_3_7_0_out sc_out sc_lv 2 signal 33 } 
	{ local_reference_V_3_7_0_out_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ local_reference_V_2_7_0_out sc_out sc_lv 2 signal 34 } 
	{ local_reference_V_2_7_0_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ local_reference_V_1_7_0_out sc_out sc_lv 2 signal 35 } 
	{ local_reference_V_1_7_0_out_ap_vld sc_out sc_logic 1 outvld 35 } 
	{ local_reference_V_0_7_0_out sc_out sc_lv 2 signal 36 } 
	{ local_reference_V_0_7_0_out_ap_vld sc_out sc_logic 1 outvld 36 } 
	{ local_reference_V_3_6_0_out sc_out sc_lv 2 signal 37 } 
	{ local_reference_V_3_6_0_out_ap_vld sc_out sc_logic 1 outvld 37 } 
	{ local_reference_V_2_6_0_out sc_out sc_lv 2 signal 38 } 
	{ local_reference_V_2_6_0_out_ap_vld sc_out sc_logic 1 outvld 38 } 
	{ local_reference_V_1_6_0_out sc_out sc_lv 2 signal 39 } 
	{ local_reference_V_1_6_0_out_ap_vld sc_out sc_logic 1 outvld 39 } 
	{ local_reference_V_0_6_0_out sc_out sc_lv 2 signal 40 } 
	{ local_reference_V_0_6_0_out_ap_vld sc_out sc_logic 1 outvld 40 } 
	{ local_reference_V_3_5_0_out sc_out sc_lv 2 signal 41 } 
	{ local_reference_V_3_5_0_out_ap_vld sc_out sc_logic 1 outvld 41 } 
	{ local_reference_V_2_5_0_out sc_out sc_lv 2 signal 42 } 
	{ local_reference_V_2_5_0_out_ap_vld sc_out sc_logic 1 outvld 42 } 
	{ local_reference_V_1_5_0_out sc_out sc_lv 2 signal 43 } 
	{ local_reference_V_1_5_0_out_ap_vld sc_out sc_logic 1 outvld 43 } 
	{ local_reference_V_0_5_0_out sc_out sc_lv 2 signal 44 } 
	{ local_reference_V_0_5_0_out_ap_vld sc_out sc_logic 1 outvld 44 } 
	{ local_reference_V_3_4_0_out sc_out sc_lv 2 signal 45 } 
	{ local_reference_V_3_4_0_out_ap_vld sc_out sc_logic 1 outvld 45 } 
	{ local_reference_V_2_4_0_out sc_out sc_lv 2 signal 46 } 
	{ local_reference_V_2_4_0_out_ap_vld sc_out sc_logic 1 outvld 46 } 
	{ local_reference_V_1_4_0_out sc_out sc_lv 2 signal 47 } 
	{ local_reference_V_1_4_0_out_ap_vld sc_out sc_logic 1 outvld 47 } 
	{ local_reference_V_0_4_0_out sc_out sc_lv 2 signal 48 } 
	{ local_reference_V_0_4_0_out_ap_vld sc_out sc_logic 1 outvld 48 } 
	{ local_reference_V_3_3_0_out sc_out sc_lv 2 signal 49 } 
	{ local_reference_V_3_3_0_out_ap_vld sc_out sc_logic 1 outvld 49 } 
	{ local_reference_V_2_3_0_out sc_out sc_lv 2 signal 50 } 
	{ local_reference_V_2_3_0_out_ap_vld sc_out sc_logic 1 outvld 50 } 
	{ local_reference_V_1_3_0_out sc_out sc_lv 2 signal 51 } 
	{ local_reference_V_1_3_0_out_ap_vld sc_out sc_logic 1 outvld 51 } 
	{ local_reference_V_0_3_0_out sc_out sc_lv 2 signal 52 } 
	{ local_reference_V_0_3_0_out_ap_vld sc_out sc_logic 1 outvld 52 } 
	{ local_reference_V_3_2_0_out sc_out sc_lv 2 signal 53 } 
	{ local_reference_V_3_2_0_out_ap_vld sc_out sc_logic 1 outvld 53 } 
	{ local_reference_V_2_2_0_out sc_out sc_lv 2 signal 54 } 
	{ local_reference_V_2_2_0_out_ap_vld sc_out sc_logic 1 outvld 54 } 
	{ local_reference_V_1_2_0_out sc_out sc_lv 2 signal 55 } 
	{ local_reference_V_1_2_0_out_ap_vld sc_out sc_logic 1 outvld 55 } 
	{ local_reference_V_0_2_0_out sc_out sc_lv 2 signal 56 } 
	{ local_reference_V_0_2_0_out_ap_vld sc_out sc_logic 1 outvld 56 } 
	{ local_reference_V_3_1_0_out sc_out sc_lv 2 signal 57 } 
	{ local_reference_V_3_1_0_out_ap_vld sc_out sc_logic 1 outvld 57 } 
	{ local_reference_V_2_1_0_out sc_out sc_lv 2 signal 58 } 
	{ local_reference_V_2_1_0_out_ap_vld sc_out sc_logic 1 outvld 58 } 
	{ local_reference_V_1_1_0_out sc_out sc_lv 2 signal 59 } 
	{ local_reference_V_1_1_0_out_ap_vld sc_out sc_logic 1 outvld 59 } 
	{ local_reference_V_0_1_0_out sc_out sc_lv 2 signal 60 } 
	{ local_reference_V_0_1_0_out_ap_vld sc_out sc_logic 1 outvld 60 } 
	{ local_reference_V_3_0_out sc_out sc_lv 2 signal 61 } 
	{ local_reference_V_3_0_out_ap_vld sc_out sc_logic 1 outvld 61 } 
	{ local_reference_V_2_0_out sc_out sc_lv 2 signal 62 } 
	{ local_reference_V_2_0_out_ap_vld sc_out sc_logic 1 outvld 62 } 
	{ local_reference_V_1_0_out sc_out sc_lv 2 signal 63 } 
	{ local_reference_V_1_0_out_ap_vld sc_out sc_logic 1 outvld 63 } 
	{ local_reference_V_0_0_out sc_out sc_lv 2 signal 64 } 
	{ local_reference_V_0_0_out_ap_vld sc_out sc_logic 1 outvld 64 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "reference_string_comp_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "reference_string_comp_0", "role": "address0" }} , 
 	{ "name": "reference_string_comp_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reference_string_comp_0", "role": "ce0" }} , 
 	{ "name": "reference_string_comp_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "reference_string_comp_0", "role": "q0" }} , 
 	{ "name": "local_reference_V_3_15_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_3_15_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_3_15_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_3_15_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_2_15_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_2_15_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_2_15_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_2_15_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_1_15_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_1_15_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_1_15_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_1_15_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_0_15_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_0_15_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_0_15_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_0_15_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_3_14_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_3_14_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_3_14_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_3_14_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_2_14_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_2_14_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_2_14_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_2_14_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_1_14_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_1_14_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_1_14_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_1_14_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_0_14_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_0_14_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_0_14_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_0_14_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_3_13_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_3_13_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_3_13_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_3_13_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_2_13_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_2_13_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_2_13_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_2_13_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_1_13_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_1_13_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_1_13_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_1_13_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_0_13_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_0_13_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_0_13_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_0_13_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_3_12_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_3_12_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_3_12_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_3_12_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_2_12_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_2_12_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_2_12_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_2_12_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_1_12_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_1_12_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_1_12_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_1_12_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_0_12_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_0_12_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_0_12_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_0_12_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_3_11_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_3_11_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_3_11_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_3_11_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_2_11_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_2_11_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_2_11_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_2_11_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_1_11_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_1_11_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_1_11_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_1_11_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_0_11_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_0_11_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_0_11_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_0_11_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_3_10_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_3_10_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_3_10_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_3_10_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_2_10_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_2_10_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_2_10_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_2_10_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_1_10_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_1_10_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_1_10_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_1_10_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_0_10_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_0_10_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_0_10_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_0_10_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_3_9_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_3_9_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_3_9_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_3_9_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_2_9_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_2_9_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_2_9_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_2_9_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_1_9_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_1_9_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_1_9_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_1_9_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_0_9_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_0_9_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_0_9_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_0_9_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_3_8_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_3_8_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_3_8_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_3_8_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_2_8_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_2_8_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_2_8_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_2_8_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_1_8_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_1_8_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_1_8_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_1_8_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_0_8_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_0_8_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_0_8_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_0_8_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_3_7_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_3_7_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_3_7_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_3_7_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_2_7_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_2_7_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_2_7_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_2_7_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_1_7_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_1_7_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_1_7_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_1_7_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_0_7_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_0_7_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_0_7_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_0_7_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_3_6_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_3_6_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_3_6_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_3_6_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_2_6_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_2_6_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_2_6_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_2_6_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_1_6_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_1_6_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_1_6_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_1_6_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_0_6_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_0_6_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_0_6_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_0_6_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_3_5_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_3_5_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_3_5_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_3_5_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_2_5_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_2_5_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_2_5_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_2_5_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_1_5_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_1_5_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_1_5_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_1_5_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_0_5_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_0_5_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_0_5_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_0_5_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_3_4_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_3_4_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_3_4_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_3_4_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_2_4_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_2_4_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_2_4_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_2_4_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_1_4_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_1_4_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_1_4_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_1_4_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_0_4_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_0_4_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_0_4_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_0_4_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_3_3_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_3_3_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_3_3_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_3_3_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_2_3_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_2_3_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_2_3_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_2_3_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_1_3_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_1_3_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_1_3_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_1_3_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_0_3_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_0_3_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_0_3_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_0_3_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_3_2_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_3_2_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_3_2_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_3_2_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_2_2_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_2_2_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_2_2_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_2_2_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_1_2_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_1_2_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_1_2_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_1_2_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_0_2_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_0_2_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_0_2_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_0_2_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_3_1_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_3_1_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_3_1_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_3_1_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_2_1_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_2_1_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_2_1_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_2_1_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_1_1_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_1_1_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_1_1_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_1_1_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_0_1_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_0_1_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_0_1_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_0_1_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_3_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_3_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_3_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_3_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_2_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_2_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_2_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_2_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_1_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_1_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_1_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_1_0_out", "role": "ap_vld" }} , 
 	{ "name": "local_reference_V_0_0_out", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "local_reference_V_0_0_out", "role": "default" }} , 
 	{ "name": "local_reference_V_0_0_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "local_reference_V_0_0_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "seq_align_multiple_Pipeline_VITIS_LOOP_93_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reference_string_comp_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_V_3_15_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_2_15_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_1_15_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_0_15_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_3_14_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_2_14_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_1_14_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_0_14_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_3_13_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_2_13_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_1_13_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_0_13_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_3_12_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_2_12_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_1_12_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_0_12_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_3_11_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_2_11_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_1_11_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_0_11_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_3_10_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_2_10_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_1_10_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_0_10_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_3_9_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_2_9_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_1_9_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_0_9_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_3_8_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_2_8_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_1_8_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_0_8_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_3_7_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_2_7_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_1_7_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_0_7_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_3_6_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_2_6_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_1_6_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_0_6_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_3_5_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_2_5_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_1_5_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_0_5_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_3_4_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_2_4_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_1_4_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_0_4_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_3_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_2_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_1_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_0_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_3_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_2_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_1_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_0_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_3_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_2_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_1_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_0_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_reference_V_0_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_93_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	seq_align_multiple_Pipeline_VITIS_LOOP_93_3 {
		reference_string_comp_0 {Type I LastRead 0 FirstWrite -1}
		local_reference_V_3_15_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_2_15_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_1_15_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_0_15_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_3_14_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_2_14_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_1_14_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_0_14_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_3_13_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_2_13_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_1_13_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_0_13_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_3_12_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_2_12_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_1_12_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_0_12_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_3_11_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_2_11_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_1_11_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_0_11_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_3_10_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_2_10_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_1_10_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_0_10_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_3_9_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_2_9_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_1_9_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_0_9_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_3_8_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_2_8_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_1_8_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_0_8_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_3_7_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_2_7_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_1_7_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_0_7_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_3_6_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_2_6_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_1_6_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_0_6_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_3_5_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_2_5_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_1_5_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_0_5_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_3_4_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_2_4_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_1_4_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_0_4_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_3_3_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_2_3_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_1_3_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_0_3_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_3_2_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_2_2_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_1_2_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_0_2_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_3_1_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_2_1_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_1_1_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_0_1_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_3_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_2_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_1_0_out {Type O LastRead -1 FirstWrite 0}
		local_reference_V_0_0_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "66", "Max" : "66"}
	, {"Name" : "Interval", "Min" : "66", "Max" : "66"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	reference_string_comp_0 { ap_memory {  { reference_string_comp_0_address0 mem_address 1 7 }  { reference_string_comp_0_ce0 mem_ce 1 1 }  { reference_string_comp_0_q0 in_data 0 2 } } }
	local_reference_V_3_15_0_out { ap_vld {  { local_reference_V_3_15_0_out out_data 1 2 }  { local_reference_V_3_15_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_2_15_0_out { ap_vld {  { local_reference_V_2_15_0_out out_data 1 2 }  { local_reference_V_2_15_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_1_15_0_out { ap_vld {  { local_reference_V_1_15_0_out out_data 1 2 }  { local_reference_V_1_15_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_0_15_0_out { ap_vld {  { local_reference_V_0_15_0_out out_data 1 2 }  { local_reference_V_0_15_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_3_14_0_out { ap_vld {  { local_reference_V_3_14_0_out out_data 1 2 }  { local_reference_V_3_14_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_2_14_0_out { ap_vld {  { local_reference_V_2_14_0_out out_data 1 2 }  { local_reference_V_2_14_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_1_14_0_out { ap_vld {  { local_reference_V_1_14_0_out out_data 1 2 }  { local_reference_V_1_14_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_0_14_0_out { ap_vld {  { local_reference_V_0_14_0_out out_data 1 2 }  { local_reference_V_0_14_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_3_13_0_out { ap_vld {  { local_reference_V_3_13_0_out out_data 1 2 }  { local_reference_V_3_13_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_2_13_0_out { ap_vld {  { local_reference_V_2_13_0_out out_data 1 2 }  { local_reference_V_2_13_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_1_13_0_out { ap_vld {  { local_reference_V_1_13_0_out out_data 1 2 }  { local_reference_V_1_13_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_0_13_0_out { ap_vld {  { local_reference_V_0_13_0_out out_data 1 2 }  { local_reference_V_0_13_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_3_12_0_out { ap_vld {  { local_reference_V_3_12_0_out out_data 1 2 }  { local_reference_V_3_12_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_2_12_0_out { ap_vld {  { local_reference_V_2_12_0_out out_data 1 2 }  { local_reference_V_2_12_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_1_12_0_out { ap_vld {  { local_reference_V_1_12_0_out out_data 1 2 }  { local_reference_V_1_12_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_0_12_0_out { ap_vld {  { local_reference_V_0_12_0_out out_data 1 2 }  { local_reference_V_0_12_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_3_11_0_out { ap_vld {  { local_reference_V_3_11_0_out out_data 1 2 }  { local_reference_V_3_11_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_2_11_0_out { ap_vld {  { local_reference_V_2_11_0_out out_data 1 2 }  { local_reference_V_2_11_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_1_11_0_out { ap_vld {  { local_reference_V_1_11_0_out out_data 1 2 }  { local_reference_V_1_11_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_0_11_0_out { ap_vld {  { local_reference_V_0_11_0_out out_data 1 2 }  { local_reference_V_0_11_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_3_10_0_out { ap_vld {  { local_reference_V_3_10_0_out out_data 1 2 }  { local_reference_V_3_10_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_2_10_0_out { ap_vld {  { local_reference_V_2_10_0_out out_data 1 2 }  { local_reference_V_2_10_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_1_10_0_out { ap_vld {  { local_reference_V_1_10_0_out out_data 1 2 }  { local_reference_V_1_10_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_0_10_0_out { ap_vld {  { local_reference_V_0_10_0_out out_data 1 2 }  { local_reference_V_0_10_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_3_9_0_out { ap_vld {  { local_reference_V_3_9_0_out out_data 1 2 }  { local_reference_V_3_9_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_2_9_0_out { ap_vld {  { local_reference_V_2_9_0_out out_data 1 2 }  { local_reference_V_2_9_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_1_9_0_out { ap_vld {  { local_reference_V_1_9_0_out out_data 1 2 }  { local_reference_V_1_9_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_0_9_0_out { ap_vld {  { local_reference_V_0_9_0_out out_data 1 2 }  { local_reference_V_0_9_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_3_8_0_out { ap_vld {  { local_reference_V_3_8_0_out out_data 1 2 }  { local_reference_V_3_8_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_2_8_0_out { ap_vld {  { local_reference_V_2_8_0_out out_data 1 2 }  { local_reference_V_2_8_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_1_8_0_out { ap_vld {  { local_reference_V_1_8_0_out out_data 1 2 }  { local_reference_V_1_8_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_0_8_0_out { ap_vld {  { local_reference_V_0_8_0_out out_data 1 2 }  { local_reference_V_0_8_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_3_7_0_out { ap_vld {  { local_reference_V_3_7_0_out out_data 1 2 }  { local_reference_V_3_7_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_2_7_0_out { ap_vld {  { local_reference_V_2_7_0_out out_data 1 2 }  { local_reference_V_2_7_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_1_7_0_out { ap_vld {  { local_reference_V_1_7_0_out out_data 1 2 }  { local_reference_V_1_7_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_0_7_0_out { ap_vld {  { local_reference_V_0_7_0_out out_data 1 2 }  { local_reference_V_0_7_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_3_6_0_out { ap_vld {  { local_reference_V_3_6_0_out out_data 1 2 }  { local_reference_V_3_6_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_2_6_0_out { ap_vld {  { local_reference_V_2_6_0_out out_data 1 2 }  { local_reference_V_2_6_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_1_6_0_out { ap_vld {  { local_reference_V_1_6_0_out out_data 1 2 }  { local_reference_V_1_6_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_0_6_0_out { ap_vld {  { local_reference_V_0_6_0_out out_data 1 2 }  { local_reference_V_0_6_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_3_5_0_out { ap_vld {  { local_reference_V_3_5_0_out out_data 1 2 }  { local_reference_V_3_5_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_2_5_0_out { ap_vld {  { local_reference_V_2_5_0_out out_data 1 2 }  { local_reference_V_2_5_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_1_5_0_out { ap_vld {  { local_reference_V_1_5_0_out out_data 1 2 }  { local_reference_V_1_5_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_0_5_0_out { ap_vld {  { local_reference_V_0_5_0_out out_data 1 2 }  { local_reference_V_0_5_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_3_4_0_out { ap_vld {  { local_reference_V_3_4_0_out out_data 1 2 }  { local_reference_V_3_4_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_2_4_0_out { ap_vld {  { local_reference_V_2_4_0_out out_data 1 2 }  { local_reference_V_2_4_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_1_4_0_out { ap_vld {  { local_reference_V_1_4_0_out out_data 1 2 }  { local_reference_V_1_4_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_0_4_0_out { ap_vld {  { local_reference_V_0_4_0_out out_data 1 2 }  { local_reference_V_0_4_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_3_3_0_out { ap_vld {  { local_reference_V_3_3_0_out out_data 1 2 }  { local_reference_V_3_3_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_2_3_0_out { ap_vld {  { local_reference_V_2_3_0_out out_data 1 2 }  { local_reference_V_2_3_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_1_3_0_out { ap_vld {  { local_reference_V_1_3_0_out out_data 1 2 }  { local_reference_V_1_3_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_0_3_0_out { ap_vld {  { local_reference_V_0_3_0_out out_data 1 2 }  { local_reference_V_0_3_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_3_2_0_out { ap_vld {  { local_reference_V_3_2_0_out out_data 1 2 }  { local_reference_V_3_2_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_2_2_0_out { ap_vld {  { local_reference_V_2_2_0_out out_data 1 2 }  { local_reference_V_2_2_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_1_2_0_out { ap_vld {  { local_reference_V_1_2_0_out out_data 1 2 }  { local_reference_V_1_2_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_0_2_0_out { ap_vld {  { local_reference_V_0_2_0_out out_data 1 2 }  { local_reference_V_0_2_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_3_1_0_out { ap_vld {  { local_reference_V_3_1_0_out out_data 1 2 }  { local_reference_V_3_1_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_2_1_0_out { ap_vld {  { local_reference_V_2_1_0_out out_data 1 2 }  { local_reference_V_2_1_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_1_1_0_out { ap_vld {  { local_reference_V_1_1_0_out out_data 1 2 }  { local_reference_V_1_1_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_0_1_0_out { ap_vld {  { local_reference_V_0_1_0_out out_data 1 2 }  { local_reference_V_0_1_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_3_0_out { ap_vld {  { local_reference_V_3_0_out out_data 1 2 }  { local_reference_V_3_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_2_0_out { ap_vld {  { local_reference_V_2_0_out out_data 1 2 }  { local_reference_V_2_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_1_0_out { ap_vld {  { local_reference_V_1_0_out out_data 1 2 }  { local_reference_V_1_0_out_ap_vld out_vld 1 1 } } }
	local_reference_V_0_0_out { ap_vld {  { local_reference_V_0_0_out out_data 1 2 }  { local_reference_V_0_0_out_ap_vld out_vld 1 1 } } }
}
