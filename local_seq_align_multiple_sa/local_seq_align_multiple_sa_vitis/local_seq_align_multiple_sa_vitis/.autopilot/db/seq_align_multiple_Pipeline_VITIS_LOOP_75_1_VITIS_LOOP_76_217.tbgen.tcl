set moduleName seq_align_multiple_Pipeline_VITIS_LOOP_75_1_VITIS_LOOP_76_217
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
set C_modelName {seq_align_multiple_Pipeline_VITIS_LOOP_75_1_VITIS_LOOP_76_217}
set C_modelType { void 0 }
set C_modelArgList {
	{ dp_matrix_V int 9 regular {array 256 { 0 3 } 0 1 }  }
	{ dp_matrix_V_1 int 9 regular {array 256 { 0 3 } 0 1 }  }
	{ dp_matrix_V_2 int 9 regular {array 256 { 0 3 } 0 1 }  }
	{ dp_matrix_V_3 int 9 regular {array 256 { 0 3 } 0 1 }  }
	{ dp_matrix_V_4 int 9 regular {array 256 { 0 3 } 0 1 }  }
	{ dp_matrix_V_5 int 9 regular {array 256 { 0 3 } 0 1 }  }
	{ dp_matrix_V_6 int 9 regular {array 256 { 0 3 } 0 1 }  }
	{ dp_matrix_V_7 int 9 regular {array 256 { 0 3 } 0 1 }  }
	{ dp_matrix_V_8 int 9 regular {array 256 { 0 3 } 0 1 }  }
	{ dp_matrix_V_9 int 9 regular {array 256 { 0 3 } 0 1 }  }
	{ dp_matrix_V_10 int 9 regular {array 256 { 0 3 } 0 1 }  }
	{ dp_matrix_V_11 int 9 regular {array 256 { 0 3 } 0 1 }  }
	{ dp_matrix_V_12 int 9 regular {array 256 { 0 3 } 0 1 }  }
	{ dp_matrix_V_13 int 9 regular {array 256 { 0 3 } 0 1 }  }
	{ dp_matrix_V_14 int 9 regular {array 256 { 0 3 } 0 1 }  }
	{ dp_matrix_V_15 int 9 regular {array 256 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dp_matrix_V", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix_V_1", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix_V_2", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix_V_3", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix_V_4", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix_V_5", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix_V_6", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix_V_7", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix_V_8", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix_V_9", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix_V_10", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix_V_11", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix_V_12", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix_V_13", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix_V_14", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix_V_15", "interface" : "memory", "bitwidth" : 9, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 70
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dp_matrix_V_address0 sc_out sc_lv 8 signal 0 } 
	{ dp_matrix_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ dp_matrix_V_we0 sc_out sc_logic 1 signal 0 } 
	{ dp_matrix_V_d0 sc_out sc_lv 9 signal 0 } 
	{ dp_matrix_V_1_address0 sc_out sc_lv 8 signal 1 } 
	{ dp_matrix_V_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ dp_matrix_V_1_we0 sc_out sc_logic 1 signal 1 } 
	{ dp_matrix_V_1_d0 sc_out sc_lv 9 signal 1 } 
	{ dp_matrix_V_2_address0 sc_out sc_lv 8 signal 2 } 
	{ dp_matrix_V_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ dp_matrix_V_2_we0 sc_out sc_logic 1 signal 2 } 
	{ dp_matrix_V_2_d0 sc_out sc_lv 9 signal 2 } 
	{ dp_matrix_V_3_address0 sc_out sc_lv 8 signal 3 } 
	{ dp_matrix_V_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ dp_matrix_V_3_we0 sc_out sc_logic 1 signal 3 } 
	{ dp_matrix_V_3_d0 sc_out sc_lv 9 signal 3 } 
	{ dp_matrix_V_4_address0 sc_out sc_lv 8 signal 4 } 
	{ dp_matrix_V_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ dp_matrix_V_4_we0 sc_out sc_logic 1 signal 4 } 
	{ dp_matrix_V_4_d0 sc_out sc_lv 9 signal 4 } 
	{ dp_matrix_V_5_address0 sc_out sc_lv 8 signal 5 } 
	{ dp_matrix_V_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ dp_matrix_V_5_we0 sc_out sc_logic 1 signal 5 } 
	{ dp_matrix_V_5_d0 sc_out sc_lv 9 signal 5 } 
	{ dp_matrix_V_6_address0 sc_out sc_lv 8 signal 6 } 
	{ dp_matrix_V_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ dp_matrix_V_6_we0 sc_out sc_logic 1 signal 6 } 
	{ dp_matrix_V_6_d0 sc_out sc_lv 9 signal 6 } 
	{ dp_matrix_V_7_address0 sc_out sc_lv 8 signal 7 } 
	{ dp_matrix_V_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ dp_matrix_V_7_we0 sc_out sc_logic 1 signal 7 } 
	{ dp_matrix_V_7_d0 sc_out sc_lv 9 signal 7 } 
	{ dp_matrix_V_8_address0 sc_out sc_lv 8 signal 8 } 
	{ dp_matrix_V_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ dp_matrix_V_8_we0 sc_out sc_logic 1 signal 8 } 
	{ dp_matrix_V_8_d0 sc_out sc_lv 9 signal 8 } 
	{ dp_matrix_V_9_address0 sc_out sc_lv 8 signal 9 } 
	{ dp_matrix_V_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ dp_matrix_V_9_we0 sc_out sc_logic 1 signal 9 } 
	{ dp_matrix_V_9_d0 sc_out sc_lv 9 signal 9 } 
	{ dp_matrix_V_10_address0 sc_out sc_lv 8 signal 10 } 
	{ dp_matrix_V_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ dp_matrix_V_10_we0 sc_out sc_logic 1 signal 10 } 
	{ dp_matrix_V_10_d0 sc_out sc_lv 9 signal 10 } 
	{ dp_matrix_V_11_address0 sc_out sc_lv 8 signal 11 } 
	{ dp_matrix_V_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ dp_matrix_V_11_we0 sc_out sc_logic 1 signal 11 } 
	{ dp_matrix_V_11_d0 sc_out sc_lv 9 signal 11 } 
	{ dp_matrix_V_12_address0 sc_out sc_lv 8 signal 12 } 
	{ dp_matrix_V_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ dp_matrix_V_12_we0 sc_out sc_logic 1 signal 12 } 
	{ dp_matrix_V_12_d0 sc_out sc_lv 9 signal 12 } 
	{ dp_matrix_V_13_address0 sc_out sc_lv 8 signal 13 } 
	{ dp_matrix_V_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ dp_matrix_V_13_we0 sc_out sc_logic 1 signal 13 } 
	{ dp_matrix_V_13_d0 sc_out sc_lv 9 signal 13 } 
	{ dp_matrix_V_14_address0 sc_out sc_lv 8 signal 14 } 
	{ dp_matrix_V_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ dp_matrix_V_14_we0 sc_out sc_logic 1 signal 14 } 
	{ dp_matrix_V_14_d0 sc_out sc_lv 9 signal 14 } 
	{ dp_matrix_V_15_address0 sc_out sc_lv 8 signal 15 } 
	{ dp_matrix_V_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ dp_matrix_V_15_we0 sc_out sc_logic 1 signal 15 } 
	{ dp_matrix_V_15_d0 sc_out sc_lv 9 signal 15 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "dp_matrix_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V", "role": "we0" }} , 
 	{ "name": "dp_matrix_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V", "role": "d0" }} , 
 	{ "name": "dp_matrix_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_1", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_1", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_1", "role": "we0" }} , 
 	{ "name": "dp_matrix_V_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_1", "role": "d0" }} , 
 	{ "name": "dp_matrix_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_2", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_2", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_2", "role": "we0" }} , 
 	{ "name": "dp_matrix_V_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_2", "role": "d0" }} , 
 	{ "name": "dp_matrix_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_3", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_3", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_3", "role": "we0" }} , 
 	{ "name": "dp_matrix_V_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_3", "role": "d0" }} , 
 	{ "name": "dp_matrix_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_4", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_4", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_4", "role": "we0" }} , 
 	{ "name": "dp_matrix_V_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_4", "role": "d0" }} , 
 	{ "name": "dp_matrix_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_5", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_5", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_5", "role": "we0" }} , 
 	{ "name": "dp_matrix_V_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_5", "role": "d0" }} , 
 	{ "name": "dp_matrix_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_6", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_6", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_6", "role": "we0" }} , 
 	{ "name": "dp_matrix_V_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_6", "role": "d0" }} , 
 	{ "name": "dp_matrix_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_7", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_7", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_7", "role": "we0" }} , 
 	{ "name": "dp_matrix_V_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_7", "role": "d0" }} , 
 	{ "name": "dp_matrix_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_8", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_8", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_8", "role": "we0" }} , 
 	{ "name": "dp_matrix_V_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_8", "role": "d0" }} , 
 	{ "name": "dp_matrix_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_9", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_9", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_9", "role": "we0" }} , 
 	{ "name": "dp_matrix_V_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_9", "role": "d0" }} , 
 	{ "name": "dp_matrix_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_10", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_10", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_10", "role": "we0" }} , 
 	{ "name": "dp_matrix_V_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_10", "role": "d0" }} , 
 	{ "name": "dp_matrix_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_11", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_11", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_11", "role": "we0" }} , 
 	{ "name": "dp_matrix_V_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_11", "role": "d0" }} , 
 	{ "name": "dp_matrix_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_12", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_12", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_12", "role": "we0" }} , 
 	{ "name": "dp_matrix_V_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_12", "role": "d0" }} , 
 	{ "name": "dp_matrix_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_13", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_13", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_13", "role": "we0" }} , 
 	{ "name": "dp_matrix_V_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_13", "role": "d0" }} , 
 	{ "name": "dp_matrix_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_14", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_14", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_14", "role": "we0" }} , 
 	{ "name": "dp_matrix_V_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_14", "role": "d0" }} , 
 	{ "name": "dp_matrix_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_15", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_15", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_15", "role": "we0" }} , 
 	{ "name": "dp_matrix_V_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_15", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "seq_align_multiple_Pipeline_VITIS_LOOP_75_1_VITIS_LOOP_76_217",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dp_matrix_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix_V_15", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_75_1_VITIS_LOOP_76_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	seq_align_multiple_Pipeline_VITIS_LOOP_75_1_VITIS_LOOP_76_217 {
		dp_matrix_V {Type O LastRead -1 FirstWrite 0}
		dp_matrix_V_1 {Type O LastRead -1 FirstWrite 0}
		dp_matrix_V_2 {Type O LastRead -1 FirstWrite 0}
		dp_matrix_V_3 {Type O LastRead -1 FirstWrite 0}
		dp_matrix_V_4 {Type O LastRead -1 FirstWrite 0}
		dp_matrix_V_5 {Type O LastRead -1 FirstWrite 0}
		dp_matrix_V_6 {Type O LastRead -1 FirstWrite 0}
		dp_matrix_V_7 {Type O LastRead -1 FirstWrite 0}
		dp_matrix_V_8 {Type O LastRead -1 FirstWrite 0}
		dp_matrix_V_9 {Type O LastRead -1 FirstWrite 0}
		dp_matrix_V_10 {Type O LastRead -1 FirstWrite 0}
		dp_matrix_V_11 {Type O LastRead -1 FirstWrite 0}
		dp_matrix_V_12 {Type O LastRead -1 FirstWrite 0}
		dp_matrix_V_13 {Type O LastRead -1 FirstWrite 0}
		dp_matrix_V_14 {Type O LastRead -1 FirstWrite 0}
		dp_matrix_V_15 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4098", "Max" : "4098"}
	, {"Name" : "Interval", "Min" : "4098", "Max" : "4098"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dp_matrix_V { ap_memory {  { dp_matrix_V_address0 mem_address 1 8 }  { dp_matrix_V_ce0 mem_ce 1 1 }  { dp_matrix_V_we0 mem_we 1 1 }  { dp_matrix_V_d0 mem_din 1 9 } } }
	dp_matrix_V_1 { ap_memory {  { dp_matrix_V_1_address0 mem_address 1 8 }  { dp_matrix_V_1_ce0 mem_ce 1 1 }  { dp_matrix_V_1_we0 mem_we 1 1 }  { dp_matrix_V_1_d0 mem_din 1 9 } } }
	dp_matrix_V_2 { ap_memory {  { dp_matrix_V_2_address0 mem_address 1 8 }  { dp_matrix_V_2_ce0 mem_ce 1 1 }  { dp_matrix_V_2_we0 mem_we 1 1 }  { dp_matrix_V_2_d0 mem_din 1 9 } } }
	dp_matrix_V_3 { ap_memory {  { dp_matrix_V_3_address0 mem_address 1 8 }  { dp_matrix_V_3_ce0 mem_ce 1 1 }  { dp_matrix_V_3_we0 mem_we 1 1 }  { dp_matrix_V_3_d0 mem_din 1 9 } } }
	dp_matrix_V_4 { ap_memory {  { dp_matrix_V_4_address0 mem_address 1 8 }  { dp_matrix_V_4_ce0 mem_ce 1 1 }  { dp_matrix_V_4_we0 mem_we 1 1 }  { dp_matrix_V_4_d0 mem_din 1 9 } } }
	dp_matrix_V_5 { ap_memory {  { dp_matrix_V_5_address0 mem_address 1 8 }  { dp_matrix_V_5_ce0 mem_ce 1 1 }  { dp_matrix_V_5_we0 mem_we 1 1 }  { dp_matrix_V_5_d0 mem_din 1 9 } } }
	dp_matrix_V_6 { ap_memory {  { dp_matrix_V_6_address0 mem_address 1 8 }  { dp_matrix_V_6_ce0 mem_ce 1 1 }  { dp_matrix_V_6_we0 mem_we 1 1 }  { dp_matrix_V_6_d0 mem_din 1 9 } } }
	dp_matrix_V_7 { ap_memory {  { dp_matrix_V_7_address0 mem_address 1 8 }  { dp_matrix_V_7_ce0 mem_ce 1 1 }  { dp_matrix_V_7_we0 mem_we 1 1 }  { dp_matrix_V_7_d0 mem_din 1 9 } } }
	dp_matrix_V_8 { ap_memory {  { dp_matrix_V_8_address0 mem_address 1 8 }  { dp_matrix_V_8_ce0 mem_ce 1 1 }  { dp_matrix_V_8_we0 mem_we 1 1 }  { dp_matrix_V_8_d0 mem_din 1 9 } } }
	dp_matrix_V_9 { ap_memory {  { dp_matrix_V_9_address0 mem_address 1 8 }  { dp_matrix_V_9_ce0 mem_ce 1 1 }  { dp_matrix_V_9_we0 mem_we 1 1 }  { dp_matrix_V_9_d0 mem_din 1 9 } } }
	dp_matrix_V_10 { ap_memory {  { dp_matrix_V_10_address0 mem_address 1 8 }  { dp_matrix_V_10_ce0 mem_ce 1 1 }  { dp_matrix_V_10_we0 mem_we 1 1 }  { dp_matrix_V_10_d0 mem_din 1 9 } } }
	dp_matrix_V_11 { ap_memory {  { dp_matrix_V_11_address0 mem_address 1 8 }  { dp_matrix_V_11_ce0 mem_ce 1 1 }  { dp_matrix_V_11_we0 mem_we 1 1 }  { dp_matrix_V_11_d0 mem_din 1 9 } } }
	dp_matrix_V_12 { ap_memory {  { dp_matrix_V_12_address0 mem_address 1 8 }  { dp_matrix_V_12_ce0 mem_ce 1 1 }  { dp_matrix_V_12_we0 mem_we 1 1 }  { dp_matrix_V_12_d0 mem_din 1 9 } } }
	dp_matrix_V_13 { ap_memory {  { dp_matrix_V_13_address0 mem_address 1 8 }  { dp_matrix_V_13_ce0 mem_ce 1 1 }  { dp_matrix_V_13_we0 mem_we 1 1 }  { dp_matrix_V_13_d0 mem_din 1 9 } } }
	dp_matrix_V_14 { ap_memory {  { dp_matrix_V_14_address0 mem_address 1 8 }  { dp_matrix_V_14_ce0 mem_ce 1 1 }  { dp_matrix_V_14_we0 mem_we 1 1 }  { dp_matrix_V_14_d0 mem_din 1 9 } } }
	dp_matrix_V_15 { ap_memory {  { dp_matrix_V_15_address0 mem_address 1 8 }  { dp_matrix_V_15_ce0 mem_ce 1 1 }  { dp_matrix_V_15_we0 mem_we 1 1 }  { dp_matrix_V_15_d0 mem_din 1 9 } } }
}