set moduleName seq_align_global_Pipeline_VITIS_LOOP_1008_7
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
set C_modelName {seq_align_global_Pipeline_VITIS_LOOP_1008_7}
set C_modelType { void 0 }
set C_modelArgList {
	{ reference_string_comp_0 int 8 regular {axi_s 0 volatile  { reference_string_comp_0 Data } }  }
	{ local_reference int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_1 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_2 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_3 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_4 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_5 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_6 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_7 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_8 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_9 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_10 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_11 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_12 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_13 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_14 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_15 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "reference_string_comp_0", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "local_reference", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_4", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_5", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_6", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_7", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_8", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_9", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_10", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_11", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_12", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_13", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_14", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_15", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 73
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ reference_string_comp_0_TVALID sc_in sc_logic 1 invld 0 } 
	{ reference_string_comp_0_TDATA sc_in sc_lv 8 signal 0 } 
	{ reference_string_comp_0_TREADY sc_out sc_logic 1 inacc 0 } 
	{ local_reference_address0 sc_out sc_lv 4 signal 1 } 
	{ local_reference_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_reference_we0 sc_out sc_logic 1 signal 1 } 
	{ local_reference_d0 sc_out sc_lv 8 signal 1 } 
	{ local_reference_1_address0 sc_out sc_lv 4 signal 2 } 
	{ local_reference_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_reference_1_we0 sc_out sc_logic 1 signal 2 } 
	{ local_reference_1_d0 sc_out sc_lv 8 signal 2 } 
	{ local_reference_2_address0 sc_out sc_lv 4 signal 3 } 
	{ local_reference_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_reference_2_we0 sc_out sc_logic 1 signal 3 } 
	{ local_reference_2_d0 sc_out sc_lv 8 signal 3 } 
	{ local_reference_3_address0 sc_out sc_lv 4 signal 4 } 
	{ local_reference_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_reference_3_we0 sc_out sc_logic 1 signal 4 } 
	{ local_reference_3_d0 sc_out sc_lv 8 signal 4 } 
	{ local_reference_4_address0 sc_out sc_lv 4 signal 5 } 
	{ local_reference_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ local_reference_4_we0 sc_out sc_logic 1 signal 5 } 
	{ local_reference_4_d0 sc_out sc_lv 8 signal 5 } 
	{ local_reference_5_address0 sc_out sc_lv 4 signal 6 } 
	{ local_reference_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ local_reference_5_we0 sc_out sc_logic 1 signal 6 } 
	{ local_reference_5_d0 sc_out sc_lv 8 signal 6 } 
	{ local_reference_6_address0 sc_out sc_lv 4 signal 7 } 
	{ local_reference_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ local_reference_6_we0 sc_out sc_logic 1 signal 7 } 
	{ local_reference_6_d0 sc_out sc_lv 8 signal 7 } 
	{ local_reference_7_address0 sc_out sc_lv 4 signal 8 } 
	{ local_reference_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ local_reference_7_we0 sc_out sc_logic 1 signal 8 } 
	{ local_reference_7_d0 sc_out sc_lv 8 signal 8 } 
	{ local_reference_8_address0 sc_out sc_lv 4 signal 9 } 
	{ local_reference_8_ce0 sc_out sc_logic 1 signal 9 } 
	{ local_reference_8_we0 sc_out sc_logic 1 signal 9 } 
	{ local_reference_8_d0 sc_out sc_lv 8 signal 9 } 
	{ local_reference_9_address0 sc_out sc_lv 4 signal 10 } 
	{ local_reference_9_ce0 sc_out sc_logic 1 signal 10 } 
	{ local_reference_9_we0 sc_out sc_logic 1 signal 10 } 
	{ local_reference_9_d0 sc_out sc_lv 8 signal 10 } 
	{ local_reference_10_address0 sc_out sc_lv 4 signal 11 } 
	{ local_reference_10_ce0 sc_out sc_logic 1 signal 11 } 
	{ local_reference_10_we0 sc_out sc_logic 1 signal 11 } 
	{ local_reference_10_d0 sc_out sc_lv 8 signal 11 } 
	{ local_reference_11_address0 sc_out sc_lv 4 signal 12 } 
	{ local_reference_11_ce0 sc_out sc_logic 1 signal 12 } 
	{ local_reference_11_we0 sc_out sc_logic 1 signal 12 } 
	{ local_reference_11_d0 sc_out sc_lv 8 signal 12 } 
	{ local_reference_12_address0 sc_out sc_lv 4 signal 13 } 
	{ local_reference_12_ce0 sc_out sc_logic 1 signal 13 } 
	{ local_reference_12_we0 sc_out sc_logic 1 signal 13 } 
	{ local_reference_12_d0 sc_out sc_lv 8 signal 13 } 
	{ local_reference_13_address0 sc_out sc_lv 4 signal 14 } 
	{ local_reference_13_ce0 sc_out sc_logic 1 signal 14 } 
	{ local_reference_13_we0 sc_out sc_logic 1 signal 14 } 
	{ local_reference_13_d0 sc_out sc_lv 8 signal 14 } 
	{ local_reference_14_address0 sc_out sc_lv 4 signal 15 } 
	{ local_reference_14_ce0 sc_out sc_logic 1 signal 15 } 
	{ local_reference_14_we0 sc_out sc_logic 1 signal 15 } 
	{ local_reference_14_d0 sc_out sc_lv 8 signal 15 } 
	{ local_reference_15_address0 sc_out sc_lv 4 signal 16 } 
	{ local_reference_15_ce0 sc_out sc_logic 1 signal 16 } 
	{ local_reference_15_we0 sc_out sc_logic 1 signal 16 } 
	{ local_reference_15_d0 sc_out sc_lv 8 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "reference_string_comp_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "reference_string_comp_0", "role": "TVALID" }} , 
 	{ "name": "reference_string_comp_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "reference_string_comp_0", "role": "TDATA" }} , 
 	{ "name": "reference_string_comp_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "reference_string_comp_0", "role": "TREADY" }} , 
 	{ "name": "local_reference_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference", "role": "address0" }} , 
 	{ "name": "local_reference_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference", "role": "ce0" }} , 
 	{ "name": "local_reference_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference", "role": "we0" }} , 
 	{ "name": "local_reference_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference", "role": "d0" }} , 
 	{ "name": "local_reference_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_1", "role": "address0" }} , 
 	{ "name": "local_reference_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_1", "role": "ce0" }} , 
 	{ "name": "local_reference_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_1", "role": "we0" }} , 
 	{ "name": "local_reference_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_1", "role": "d0" }} , 
 	{ "name": "local_reference_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_2", "role": "address0" }} , 
 	{ "name": "local_reference_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_2", "role": "ce0" }} , 
 	{ "name": "local_reference_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_2", "role": "we0" }} , 
 	{ "name": "local_reference_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_2", "role": "d0" }} , 
 	{ "name": "local_reference_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_3", "role": "address0" }} , 
 	{ "name": "local_reference_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_3", "role": "ce0" }} , 
 	{ "name": "local_reference_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_3", "role": "we0" }} , 
 	{ "name": "local_reference_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_3", "role": "d0" }} , 
 	{ "name": "local_reference_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_4", "role": "address0" }} , 
 	{ "name": "local_reference_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_4", "role": "ce0" }} , 
 	{ "name": "local_reference_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_4", "role": "we0" }} , 
 	{ "name": "local_reference_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_4", "role": "d0" }} , 
 	{ "name": "local_reference_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_5", "role": "address0" }} , 
 	{ "name": "local_reference_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_5", "role": "ce0" }} , 
 	{ "name": "local_reference_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_5", "role": "we0" }} , 
 	{ "name": "local_reference_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_5", "role": "d0" }} , 
 	{ "name": "local_reference_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_6", "role": "address0" }} , 
 	{ "name": "local_reference_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_6", "role": "ce0" }} , 
 	{ "name": "local_reference_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_6", "role": "we0" }} , 
 	{ "name": "local_reference_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_6", "role": "d0" }} , 
 	{ "name": "local_reference_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_7", "role": "address0" }} , 
 	{ "name": "local_reference_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_7", "role": "ce0" }} , 
 	{ "name": "local_reference_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_7", "role": "we0" }} , 
 	{ "name": "local_reference_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_7", "role": "d0" }} , 
 	{ "name": "local_reference_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_8", "role": "address0" }} , 
 	{ "name": "local_reference_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_8", "role": "ce0" }} , 
 	{ "name": "local_reference_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_8", "role": "we0" }} , 
 	{ "name": "local_reference_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_8", "role": "d0" }} , 
 	{ "name": "local_reference_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_9", "role": "address0" }} , 
 	{ "name": "local_reference_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_9", "role": "ce0" }} , 
 	{ "name": "local_reference_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_9", "role": "we0" }} , 
 	{ "name": "local_reference_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_9", "role": "d0" }} , 
 	{ "name": "local_reference_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_10", "role": "address0" }} , 
 	{ "name": "local_reference_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_10", "role": "ce0" }} , 
 	{ "name": "local_reference_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_10", "role": "we0" }} , 
 	{ "name": "local_reference_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_10", "role": "d0" }} , 
 	{ "name": "local_reference_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_11", "role": "address0" }} , 
 	{ "name": "local_reference_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_11", "role": "ce0" }} , 
 	{ "name": "local_reference_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_11", "role": "we0" }} , 
 	{ "name": "local_reference_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_11", "role": "d0" }} , 
 	{ "name": "local_reference_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_12", "role": "address0" }} , 
 	{ "name": "local_reference_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_12", "role": "ce0" }} , 
 	{ "name": "local_reference_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_12", "role": "we0" }} , 
 	{ "name": "local_reference_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_12", "role": "d0" }} , 
 	{ "name": "local_reference_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_13", "role": "address0" }} , 
 	{ "name": "local_reference_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_13", "role": "ce0" }} , 
 	{ "name": "local_reference_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_13", "role": "we0" }} , 
 	{ "name": "local_reference_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_13", "role": "d0" }} , 
 	{ "name": "local_reference_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_14", "role": "address0" }} , 
 	{ "name": "local_reference_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_14", "role": "ce0" }} , 
 	{ "name": "local_reference_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_14", "role": "we0" }} , 
 	{ "name": "local_reference_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_14", "role": "d0" }} , 
 	{ "name": "local_reference_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_15", "role": "address0" }} , 
 	{ "name": "local_reference_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_15", "role": "ce0" }} , 
 	{ "name": "local_reference_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_15", "role": "we0" }} , 
 	{ "name": "local_reference_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_15", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "seq_align_global_Pipeline_VITIS_LOOP_1008_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reference_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "reference_string_comp_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "local_reference", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_15", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1008_7", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	seq_align_global_Pipeline_VITIS_LOOP_1008_7 {
		reference_string_comp_0 {Type I LastRead 0 FirstWrite -1}
		local_reference {Type O LastRead -1 FirstWrite 0}
		local_reference_1 {Type O LastRead -1 FirstWrite 0}
		local_reference_2 {Type O LastRead -1 FirstWrite 0}
		local_reference_3 {Type O LastRead -1 FirstWrite 0}
		local_reference_4 {Type O LastRead -1 FirstWrite 0}
		local_reference_5 {Type O LastRead -1 FirstWrite 0}
		local_reference_6 {Type O LastRead -1 FirstWrite 0}
		local_reference_7 {Type O LastRead -1 FirstWrite 0}
		local_reference_8 {Type O LastRead -1 FirstWrite 0}
		local_reference_9 {Type O LastRead -1 FirstWrite 0}
		local_reference_10 {Type O LastRead -1 FirstWrite 0}
		local_reference_11 {Type O LastRead -1 FirstWrite 0}
		local_reference_12 {Type O LastRead -1 FirstWrite 0}
		local_reference_13 {Type O LastRead -1 FirstWrite 0}
		local_reference_14 {Type O LastRead -1 FirstWrite 0}
		local_reference_15 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "258", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "258", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	reference_string_comp_0 { axis {  { reference_string_comp_0_TVALID in_vld 0 1 }  { reference_string_comp_0_TDATA in_data 0 8 }  { reference_string_comp_0_TREADY in_acc 1 1 } } }
	local_reference { ap_memory {  { local_reference_address0 mem_address 1 4 }  { local_reference_ce0 mem_ce 1 1 }  { local_reference_we0 mem_we 1 1 }  { local_reference_d0 mem_din 1 8 } } }
	local_reference_1 { ap_memory {  { local_reference_1_address0 mem_address 1 4 }  { local_reference_1_ce0 mem_ce 1 1 }  { local_reference_1_we0 mem_we 1 1 }  { local_reference_1_d0 mem_din 1 8 } } }
	local_reference_2 { ap_memory {  { local_reference_2_address0 mem_address 1 4 }  { local_reference_2_ce0 mem_ce 1 1 }  { local_reference_2_we0 mem_we 1 1 }  { local_reference_2_d0 mem_din 1 8 } } }
	local_reference_3 { ap_memory {  { local_reference_3_address0 mem_address 1 4 }  { local_reference_3_ce0 mem_ce 1 1 }  { local_reference_3_we0 mem_we 1 1 }  { local_reference_3_d0 mem_din 1 8 } } }
	local_reference_4 { ap_memory {  { local_reference_4_address0 mem_address 1 4 }  { local_reference_4_ce0 mem_ce 1 1 }  { local_reference_4_we0 mem_we 1 1 }  { local_reference_4_d0 mem_din 1 8 } } }
	local_reference_5 { ap_memory {  { local_reference_5_address0 mem_address 1 4 }  { local_reference_5_ce0 mem_ce 1 1 }  { local_reference_5_we0 mem_we 1 1 }  { local_reference_5_d0 mem_din 1 8 } } }
	local_reference_6 { ap_memory {  { local_reference_6_address0 mem_address 1 4 }  { local_reference_6_ce0 mem_ce 1 1 }  { local_reference_6_we0 mem_we 1 1 }  { local_reference_6_d0 mem_din 1 8 } } }
	local_reference_7 { ap_memory {  { local_reference_7_address0 mem_address 1 4 }  { local_reference_7_ce0 mem_ce 1 1 }  { local_reference_7_we0 mem_we 1 1 }  { local_reference_7_d0 mem_din 1 8 } } }
	local_reference_8 { ap_memory {  { local_reference_8_address0 mem_address 1 4 }  { local_reference_8_ce0 mem_ce 1 1 }  { local_reference_8_we0 mem_we 1 1 }  { local_reference_8_d0 mem_din 1 8 } } }
	local_reference_9 { ap_memory {  { local_reference_9_address0 mem_address 1 4 }  { local_reference_9_ce0 mem_ce 1 1 }  { local_reference_9_we0 mem_we 1 1 }  { local_reference_9_d0 mem_din 1 8 } } }
	local_reference_10 { ap_memory {  { local_reference_10_address0 mem_address 1 4 }  { local_reference_10_ce0 mem_ce 1 1 }  { local_reference_10_we0 mem_we 1 1 }  { local_reference_10_d0 mem_din 1 8 } } }
	local_reference_11 { ap_memory {  { local_reference_11_address0 mem_address 1 4 }  { local_reference_11_ce0 mem_ce 1 1 }  { local_reference_11_we0 mem_we 1 1 }  { local_reference_11_d0 mem_din 1 8 } } }
	local_reference_12 { ap_memory {  { local_reference_12_address0 mem_address 1 4 }  { local_reference_12_ce0 mem_ce 1 1 }  { local_reference_12_we0 mem_we 1 1 }  { local_reference_12_d0 mem_din 1 8 } } }
	local_reference_13 { ap_memory {  { local_reference_13_address0 mem_address 1 4 }  { local_reference_13_ce0 mem_ce 1 1 }  { local_reference_13_we0 mem_we 1 1 }  { local_reference_13_d0 mem_din 1 8 } } }
	local_reference_14 { ap_memory {  { local_reference_14_address0 mem_address 1 4 }  { local_reference_14_ce0 mem_ce 1 1 }  { local_reference_14_we0 mem_we 1 1 }  { local_reference_14_d0 mem_din 1 8 } } }
	local_reference_15 { ap_memory {  { local_reference_15_address0 mem_address 1 4 }  { local_reference_15_ce0 mem_ce 1 1 }  { local_reference_15_we0 mem_we 1 1 }  { local_reference_15_d0 mem_din 1 8 } } }
}
set moduleName seq_align_global_Pipeline_VITIS_LOOP_1008_7
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
set C_modelName {seq_align_global_Pipeline_VITIS_LOOP_1008_7}
set C_modelType { void 0 }
set C_modelArgList {
	{ reference_string_comp_0 int 8 regular {axi_s 0 volatile  { reference_string_comp_0 Data } }  }
	{ local_reference int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_1 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_2 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_3 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_4 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_5 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_6 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_7 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_8 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_9 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_10 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_11 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_12 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_13 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_14 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_15 int 8 regular {array 16 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "reference_string_comp_0", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "local_reference", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_4", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_5", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_6", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_7", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_8", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_9", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_10", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_11", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_12", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_13", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_14", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_15", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 73
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ reference_string_comp_0_TVALID sc_in sc_logic 1 invld 0 } 
	{ reference_string_comp_0_TDATA sc_in sc_lv 8 signal 0 } 
	{ reference_string_comp_0_TREADY sc_out sc_logic 1 inacc 0 } 
	{ local_reference_address0 sc_out sc_lv 4 signal 1 } 
	{ local_reference_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_reference_we0 sc_out sc_logic 1 signal 1 } 
	{ local_reference_d0 sc_out sc_lv 8 signal 1 } 
	{ local_reference_1_address0 sc_out sc_lv 4 signal 2 } 
	{ local_reference_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_reference_1_we0 sc_out sc_logic 1 signal 2 } 
	{ local_reference_1_d0 sc_out sc_lv 8 signal 2 } 
	{ local_reference_2_address0 sc_out sc_lv 4 signal 3 } 
	{ local_reference_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_reference_2_we0 sc_out sc_logic 1 signal 3 } 
	{ local_reference_2_d0 sc_out sc_lv 8 signal 3 } 
	{ local_reference_3_address0 sc_out sc_lv 4 signal 4 } 
	{ local_reference_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_reference_3_we0 sc_out sc_logic 1 signal 4 } 
	{ local_reference_3_d0 sc_out sc_lv 8 signal 4 } 
	{ local_reference_4_address0 sc_out sc_lv 4 signal 5 } 
	{ local_reference_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ local_reference_4_we0 sc_out sc_logic 1 signal 5 } 
	{ local_reference_4_d0 sc_out sc_lv 8 signal 5 } 
	{ local_reference_5_address0 sc_out sc_lv 4 signal 6 } 
	{ local_reference_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ local_reference_5_we0 sc_out sc_logic 1 signal 6 } 
	{ local_reference_5_d0 sc_out sc_lv 8 signal 6 } 
	{ local_reference_6_address0 sc_out sc_lv 4 signal 7 } 
	{ local_reference_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ local_reference_6_we0 sc_out sc_logic 1 signal 7 } 
	{ local_reference_6_d0 sc_out sc_lv 8 signal 7 } 
	{ local_reference_7_address0 sc_out sc_lv 4 signal 8 } 
	{ local_reference_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ local_reference_7_we0 sc_out sc_logic 1 signal 8 } 
	{ local_reference_7_d0 sc_out sc_lv 8 signal 8 } 
	{ local_reference_8_address0 sc_out sc_lv 4 signal 9 } 
	{ local_reference_8_ce0 sc_out sc_logic 1 signal 9 } 
	{ local_reference_8_we0 sc_out sc_logic 1 signal 9 } 
	{ local_reference_8_d0 sc_out sc_lv 8 signal 9 } 
	{ local_reference_9_address0 sc_out sc_lv 4 signal 10 } 
	{ local_reference_9_ce0 sc_out sc_logic 1 signal 10 } 
	{ local_reference_9_we0 sc_out sc_logic 1 signal 10 } 
	{ local_reference_9_d0 sc_out sc_lv 8 signal 10 } 
	{ local_reference_10_address0 sc_out sc_lv 4 signal 11 } 
	{ local_reference_10_ce0 sc_out sc_logic 1 signal 11 } 
	{ local_reference_10_we0 sc_out sc_logic 1 signal 11 } 
	{ local_reference_10_d0 sc_out sc_lv 8 signal 11 } 
	{ local_reference_11_address0 sc_out sc_lv 4 signal 12 } 
	{ local_reference_11_ce0 sc_out sc_logic 1 signal 12 } 
	{ local_reference_11_we0 sc_out sc_logic 1 signal 12 } 
	{ local_reference_11_d0 sc_out sc_lv 8 signal 12 } 
	{ local_reference_12_address0 sc_out sc_lv 4 signal 13 } 
	{ local_reference_12_ce0 sc_out sc_logic 1 signal 13 } 
	{ local_reference_12_we0 sc_out sc_logic 1 signal 13 } 
	{ local_reference_12_d0 sc_out sc_lv 8 signal 13 } 
	{ local_reference_13_address0 sc_out sc_lv 4 signal 14 } 
	{ local_reference_13_ce0 sc_out sc_logic 1 signal 14 } 
	{ local_reference_13_we0 sc_out sc_logic 1 signal 14 } 
	{ local_reference_13_d0 sc_out sc_lv 8 signal 14 } 
	{ local_reference_14_address0 sc_out sc_lv 4 signal 15 } 
	{ local_reference_14_ce0 sc_out sc_logic 1 signal 15 } 
	{ local_reference_14_we0 sc_out sc_logic 1 signal 15 } 
	{ local_reference_14_d0 sc_out sc_lv 8 signal 15 } 
	{ local_reference_15_address0 sc_out sc_lv 4 signal 16 } 
	{ local_reference_15_ce0 sc_out sc_logic 1 signal 16 } 
	{ local_reference_15_we0 sc_out sc_logic 1 signal 16 } 
	{ local_reference_15_d0 sc_out sc_lv 8 signal 16 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "reference_string_comp_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "reference_string_comp_0", "role": "TVALID" }} , 
 	{ "name": "reference_string_comp_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "reference_string_comp_0", "role": "TDATA" }} , 
 	{ "name": "reference_string_comp_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "reference_string_comp_0", "role": "TREADY" }} , 
 	{ "name": "local_reference_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference", "role": "address0" }} , 
 	{ "name": "local_reference_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference", "role": "ce0" }} , 
 	{ "name": "local_reference_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference", "role": "we0" }} , 
 	{ "name": "local_reference_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference", "role": "d0" }} , 
 	{ "name": "local_reference_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_1", "role": "address0" }} , 
 	{ "name": "local_reference_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_1", "role": "ce0" }} , 
 	{ "name": "local_reference_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_1", "role": "we0" }} , 
 	{ "name": "local_reference_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_1", "role": "d0" }} , 
 	{ "name": "local_reference_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_2", "role": "address0" }} , 
 	{ "name": "local_reference_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_2", "role": "ce0" }} , 
 	{ "name": "local_reference_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_2", "role": "we0" }} , 
 	{ "name": "local_reference_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_2", "role": "d0" }} , 
 	{ "name": "local_reference_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_3", "role": "address0" }} , 
 	{ "name": "local_reference_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_3", "role": "ce0" }} , 
 	{ "name": "local_reference_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_3", "role": "we0" }} , 
 	{ "name": "local_reference_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_3", "role": "d0" }} , 
 	{ "name": "local_reference_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_4", "role": "address0" }} , 
 	{ "name": "local_reference_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_4", "role": "ce0" }} , 
 	{ "name": "local_reference_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_4", "role": "we0" }} , 
 	{ "name": "local_reference_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_4", "role": "d0" }} , 
 	{ "name": "local_reference_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_5", "role": "address0" }} , 
 	{ "name": "local_reference_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_5", "role": "ce0" }} , 
 	{ "name": "local_reference_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_5", "role": "we0" }} , 
 	{ "name": "local_reference_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_5", "role": "d0" }} , 
 	{ "name": "local_reference_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_6", "role": "address0" }} , 
 	{ "name": "local_reference_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_6", "role": "ce0" }} , 
 	{ "name": "local_reference_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_6", "role": "we0" }} , 
 	{ "name": "local_reference_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_6", "role": "d0" }} , 
 	{ "name": "local_reference_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_7", "role": "address0" }} , 
 	{ "name": "local_reference_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_7", "role": "ce0" }} , 
 	{ "name": "local_reference_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_7", "role": "we0" }} , 
 	{ "name": "local_reference_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_7", "role": "d0" }} , 
 	{ "name": "local_reference_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_8", "role": "address0" }} , 
 	{ "name": "local_reference_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_8", "role": "ce0" }} , 
 	{ "name": "local_reference_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_8", "role": "we0" }} , 
 	{ "name": "local_reference_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_8", "role": "d0" }} , 
 	{ "name": "local_reference_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_9", "role": "address0" }} , 
 	{ "name": "local_reference_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_9", "role": "ce0" }} , 
 	{ "name": "local_reference_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_9", "role": "we0" }} , 
 	{ "name": "local_reference_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_9", "role": "d0" }} , 
 	{ "name": "local_reference_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_10", "role": "address0" }} , 
 	{ "name": "local_reference_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_10", "role": "ce0" }} , 
 	{ "name": "local_reference_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_10", "role": "we0" }} , 
 	{ "name": "local_reference_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_10", "role": "d0" }} , 
 	{ "name": "local_reference_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_11", "role": "address0" }} , 
 	{ "name": "local_reference_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_11", "role": "ce0" }} , 
 	{ "name": "local_reference_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_11", "role": "we0" }} , 
 	{ "name": "local_reference_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_11", "role": "d0" }} , 
 	{ "name": "local_reference_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_12", "role": "address0" }} , 
 	{ "name": "local_reference_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_12", "role": "ce0" }} , 
 	{ "name": "local_reference_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_12", "role": "we0" }} , 
 	{ "name": "local_reference_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_12", "role": "d0" }} , 
 	{ "name": "local_reference_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_13", "role": "address0" }} , 
 	{ "name": "local_reference_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_13", "role": "ce0" }} , 
 	{ "name": "local_reference_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_13", "role": "we0" }} , 
 	{ "name": "local_reference_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_13", "role": "d0" }} , 
 	{ "name": "local_reference_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_14", "role": "address0" }} , 
 	{ "name": "local_reference_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_14", "role": "ce0" }} , 
 	{ "name": "local_reference_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_14", "role": "we0" }} , 
 	{ "name": "local_reference_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_14", "role": "d0" }} , 
 	{ "name": "local_reference_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "local_reference_15", "role": "address0" }} , 
 	{ "name": "local_reference_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_15", "role": "ce0" }} , 
 	{ "name": "local_reference_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_15", "role": "we0" }} , 
 	{ "name": "local_reference_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_15", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "seq_align_global_Pipeline_VITIS_LOOP_1008_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reference_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "reference_string_comp_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "local_reference", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_15", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1008_7", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	seq_align_global_Pipeline_VITIS_LOOP_1008_7 {
		reference_string_comp_0 {Type I LastRead 0 FirstWrite -1}
		local_reference {Type O LastRead -1 FirstWrite 0}
		local_reference_1 {Type O LastRead -1 FirstWrite 0}
		local_reference_2 {Type O LastRead -1 FirstWrite 0}
		local_reference_3 {Type O LastRead -1 FirstWrite 0}
		local_reference_4 {Type O LastRead -1 FirstWrite 0}
		local_reference_5 {Type O LastRead -1 FirstWrite 0}
		local_reference_6 {Type O LastRead -1 FirstWrite 0}
		local_reference_7 {Type O LastRead -1 FirstWrite 0}
		local_reference_8 {Type O LastRead -1 FirstWrite 0}
		local_reference_9 {Type O LastRead -1 FirstWrite 0}
		local_reference_10 {Type O LastRead -1 FirstWrite 0}
		local_reference_11 {Type O LastRead -1 FirstWrite 0}
		local_reference_12 {Type O LastRead -1 FirstWrite 0}
		local_reference_13 {Type O LastRead -1 FirstWrite 0}
		local_reference_14 {Type O LastRead -1 FirstWrite 0}
		local_reference_15 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "258", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "258", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	reference_string_comp_0 { axis {  { reference_string_comp_0_TVALID in_vld 0 1 }  { reference_string_comp_0_TDATA in_data 0 8 }  { reference_string_comp_0_TREADY in_acc 1 1 } } }
	local_reference { ap_memory {  { local_reference_address0 mem_address 1 4 }  { local_reference_ce0 mem_ce 1 1 }  { local_reference_we0 mem_we 1 1 }  { local_reference_d0 mem_din 1 8 } } }
	local_reference_1 { ap_memory {  { local_reference_1_address0 mem_address 1 4 }  { local_reference_1_ce0 mem_ce 1 1 }  { local_reference_1_we0 mem_we 1 1 }  { local_reference_1_d0 mem_din 1 8 } } }
	local_reference_2 { ap_memory {  { local_reference_2_address0 mem_address 1 4 }  { local_reference_2_ce0 mem_ce 1 1 }  { local_reference_2_we0 mem_we 1 1 }  { local_reference_2_d0 mem_din 1 8 } } }
	local_reference_3 { ap_memory {  { local_reference_3_address0 mem_address 1 4 }  { local_reference_3_ce0 mem_ce 1 1 }  { local_reference_3_we0 mem_we 1 1 }  { local_reference_3_d0 mem_din 1 8 } } }
	local_reference_4 { ap_memory {  { local_reference_4_address0 mem_address 1 4 }  { local_reference_4_ce0 mem_ce 1 1 }  { local_reference_4_we0 mem_we 1 1 }  { local_reference_4_d0 mem_din 1 8 } } }
	local_reference_5 { ap_memory {  { local_reference_5_address0 mem_address 1 4 }  { local_reference_5_ce0 mem_ce 1 1 }  { local_reference_5_we0 mem_we 1 1 }  { local_reference_5_d0 mem_din 1 8 } } }
	local_reference_6 { ap_memory {  { local_reference_6_address0 mem_address 1 4 }  { local_reference_6_ce0 mem_ce 1 1 }  { local_reference_6_we0 mem_we 1 1 }  { local_reference_6_d0 mem_din 1 8 } } }
	local_reference_7 { ap_memory {  { local_reference_7_address0 mem_address 1 4 }  { local_reference_7_ce0 mem_ce 1 1 }  { local_reference_7_we0 mem_we 1 1 }  { local_reference_7_d0 mem_din 1 8 } } }
	local_reference_8 { ap_memory {  { local_reference_8_address0 mem_address 1 4 }  { local_reference_8_ce0 mem_ce 1 1 }  { local_reference_8_we0 mem_we 1 1 }  { local_reference_8_d0 mem_din 1 8 } } }
	local_reference_9 { ap_memory {  { local_reference_9_address0 mem_address 1 4 }  { local_reference_9_ce0 mem_ce 1 1 }  { local_reference_9_we0 mem_we 1 1 }  { local_reference_9_d0 mem_din 1 8 } } }
	local_reference_10 { ap_memory {  { local_reference_10_address0 mem_address 1 4 }  { local_reference_10_ce0 mem_ce 1 1 }  { local_reference_10_we0 mem_we 1 1 }  { local_reference_10_d0 mem_din 1 8 } } }
	local_reference_11 { ap_memory {  { local_reference_11_address0 mem_address 1 4 }  { local_reference_11_ce0 mem_ce 1 1 }  { local_reference_11_we0 mem_we 1 1 }  { local_reference_11_d0 mem_din 1 8 } } }
	local_reference_12 { ap_memory {  { local_reference_12_address0 mem_address 1 4 }  { local_reference_12_ce0 mem_ce 1 1 }  { local_reference_12_we0 mem_we 1 1 }  { local_reference_12_d0 mem_din 1 8 } } }
	local_reference_13 { ap_memory {  { local_reference_13_address0 mem_address 1 4 }  { local_reference_13_ce0 mem_ce 1 1 }  { local_reference_13_we0 mem_we 1 1 }  { local_reference_13_d0 mem_din 1 8 } } }
	local_reference_14 { ap_memory {  { local_reference_14_address0 mem_address 1 4 }  { local_reference_14_ce0 mem_ce 1 1 }  { local_reference_14_we0 mem_we 1 1 }  { local_reference_14_d0 mem_din 1 8 } } }
	local_reference_15 { ap_memory {  { local_reference_15_address0 mem_address 1 4 }  { local_reference_15_ce0 mem_ce 1 1 }  { local_reference_15_we0 mem_we 1 1 }  { local_reference_15_d0 mem_din 1 8 } } }
}
set moduleName seq_align_global_Pipeline_VITIS_LOOP_1008_7
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
set C_modelName {seq_align_global_Pipeline_VITIS_LOOP_1008_7}
set C_modelType { void 0 }
set C_modelArgList {
	{ reference_string_comp_0 int 8 regular {axi_s 0 volatile  { reference_string_comp_0 Data } }  }
	{ local_reference int 8 regular {array 32 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_1 int 8 regular {array 32 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_2 int 8 regular {array 32 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_3 int 8 regular {array 32 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_4 int 8 regular {array 32 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_5 int 8 regular {array 32 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_6 int 8 regular {array 32 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_7 int 8 regular {array 32 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "reference_string_comp_0", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "local_reference", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_4", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_5", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_6", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_7", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ reference_string_comp_0_TVALID sc_in sc_logic 1 invld 0 } 
	{ reference_string_comp_0_TDATA sc_in sc_lv 8 signal 0 } 
	{ reference_string_comp_0_TREADY sc_out sc_logic 1 inacc 0 } 
	{ local_reference_address0 sc_out sc_lv 5 signal 1 } 
	{ local_reference_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_reference_we0 sc_out sc_logic 1 signal 1 } 
	{ local_reference_d0 sc_out sc_lv 8 signal 1 } 
	{ local_reference_1_address0 sc_out sc_lv 5 signal 2 } 
	{ local_reference_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_reference_1_we0 sc_out sc_logic 1 signal 2 } 
	{ local_reference_1_d0 sc_out sc_lv 8 signal 2 } 
	{ local_reference_2_address0 sc_out sc_lv 5 signal 3 } 
	{ local_reference_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_reference_2_we0 sc_out sc_logic 1 signal 3 } 
	{ local_reference_2_d0 sc_out sc_lv 8 signal 3 } 
	{ local_reference_3_address0 sc_out sc_lv 5 signal 4 } 
	{ local_reference_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_reference_3_we0 sc_out sc_logic 1 signal 4 } 
	{ local_reference_3_d0 sc_out sc_lv 8 signal 4 } 
	{ local_reference_4_address0 sc_out sc_lv 5 signal 5 } 
	{ local_reference_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ local_reference_4_we0 sc_out sc_logic 1 signal 5 } 
	{ local_reference_4_d0 sc_out sc_lv 8 signal 5 } 
	{ local_reference_5_address0 sc_out sc_lv 5 signal 6 } 
	{ local_reference_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ local_reference_5_we0 sc_out sc_logic 1 signal 6 } 
	{ local_reference_5_d0 sc_out sc_lv 8 signal 6 } 
	{ local_reference_6_address0 sc_out sc_lv 5 signal 7 } 
	{ local_reference_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ local_reference_6_we0 sc_out sc_logic 1 signal 7 } 
	{ local_reference_6_d0 sc_out sc_lv 8 signal 7 } 
	{ local_reference_7_address0 sc_out sc_lv 5 signal 8 } 
	{ local_reference_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ local_reference_7_we0 sc_out sc_logic 1 signal 8 } 
	{ local_reference_7_d0 sc_out sc_lv 8 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "reference_string_comp_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "reference_string_comp_0", "role": "TVALID" }} , 
 	{ "name": "reference_string_comp_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "reference_string_comp_0", "role": "TDATA" }} , 
 	{ "name": "reference_string_comp_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "reference_string_comp_0", "role": "TREADY" }} , 
 	{ "name": "local_reference_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_reference", "role": "address0" }} , 
 	{ "name": "local_reference_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference", "role": "ce0" }} , 
 	{ "name": "local_reference_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference", "role": "we0" }} , 
 	{ "name": "local_reference_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference", "role": "d0" }} , 
 	{ "name": "local_reference_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_reference_1", "role": "address0" }} , 
 	{ "name": "local_reference_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_1", "role": "ce0" }} , 
 	{ "name": "local_reference_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_1", "role": "we0" }} , 
 	{ "name": "local_reference_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_1", "role": "d0" }} , 
 	{ "name": "local_reference_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_reference_2", "role": "address0" }} , 
 	{ "name": "local_reference_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_2", "role": "ce0" }} , 
 	{ "name": "local_reference_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_2", "role": "we0" }} , 
 	{ "name": "local_reference_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_2", "role": "d0" }} , 
 	{ "name": "local_reference_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_reference_3", "role": "address0" }} , 
 	{ "name": "local_reference_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_3", "role": "ce0" }} , 
 	{ "name": "local_reference_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_3", "role": "we0" }} , 
 	{ "name": "local_reference_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_3", "role": "d0" }} , 
 	{ "name": "local_reference_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_reference_4", "role": "address0" }} , 
 	{ "name": "local_reference_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_4", "role": "ce0" }} , 
 	{ "name": "local_reference_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_4", "role": "we0" }} , 
 	{ "name": "local_reference_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_4", "role": "d0" }} , 
 	{ "name": "local_reference_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_reference_5", "role": "address0" }} , 
 	{ "name": "local_reference_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_5", "role": "ce0" }} , 
 	{ "name": "local_reference_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_5", "role": "we0" }} , 
 	{ "name": "local_reference_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_5", "role": "d0" }} , 
 	{ "name": "local_reference_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_reference_6", "role": "address0" }} , 
 	{ "name": "local_reference_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_6", "role": "ce0" }} , 
 	{ "name": "local_reference_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_6", "role": "we0" }} , 
 	{ "name": "local_reference_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_6", "role": "d0" }} , 
 	{ "name": "local_reference_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_reference_7", "role": "address0" }} , 
 	{ "name": "local_reference_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_7", "role": "ce0" }} , 
 	{ "name": "local_reference_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_7", "role": "we0" }} , 
 	{ "name": "local_reference_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_7", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "seq_align_global_Pipeline_VITIS_LOOP_1008_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reference_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "reference_string_comp_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "local_reference", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_7", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1008_7", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	seq_align_global_Pipeline_VITIS_LOOP_1008_7 {
		reference_string_comp_0 {Type I LastRead 0 FirstWrite -1}
		local_reference {Type O LastRead -1 FirstWrite 0}
		local_reference_1 {Type O LastRead -1 FirstWrite 0}
		local_reference_2 {Type O LastRead -1 FirstWrite 0}
		local_reference_3 {Type O LastRead -1 FirstWrite 0}
		local_reference_4 {Type O LastRead -1 FirstWrite 0}
		local_reference_5 {Type O LastRead -1 FirstWrite 0}
		local_reference_6 {Type O LastRead -1 FirstWrite 0}
		local_reference_7 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "258", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "258", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	reference_string_comp_0 { axis {  { reference_string_comp_0_TVALID in_vld 0 1 }  { reference_string_comp_0_TDATA in_data 0 8 }  { reference_string_comp_0_TREADY in_acc 1 1 } } }
	local_reference { ap_memory {  { local_reference_address0 mem_address 1 5 }  { local_reference_ce0 mem_ce 1 1 }  { local_reference_we0 mem_we 1 1 }  { local_reference_d0 mem_din 1 8 } } }
	local_reference_1 { ap_memory {  { local_reference_1_address0 mem_address 1 5 }  { local_reference_1_ce0 mem_ce 1 1 }  { local_reference_1_we0 mem_we 1 1 }  { local_reference_1_d0 mem_din 1 8 } } }
	local_reference_2 { ap_memory {  { local_reference_2_address0 mem_address 1 5 }  { local_reference_2_ce0 mem_ce 1 1 }  { local_reference_2_we0 mem_we 1 1 }  { local_reference_2_d0 mem_din 1 8 } } }
	local_reference_3 { ap_memory {  { local_reference_3_address0 mem_address 1 5 }  { local_reference_3_ce0 mem_ce 1 1 }  { local_reference_3_we0 mem_we 1 1 }  { local_reference_3_d0 mem_din 1 8 } } }
	local_reference_4 { ap_memory {  { local_reference_4_address0 mem_address 1 5 }  { local_reference_4_ce0 mem_ce 1 1 }  { local_reference_4_we0 mem_we 1 1 }  { local_reference_4_d0 mem_din 1 8 } } }
	local_reference_5 { ap_memory {  { local_reference_5_address0 mem_address 1 5 }  { local_reference_5_ce0 mem_ce 1 1 }  { local_reference_5_we0 mem_we 1 1 }  { local_reference_5_d0 mem_din 1 8 } } }
	local_reference_6 { ap_memory {  { local_reference_6_address0 mem_address 1 5 }  { local_reference_6_ce0 mem_ce 1 1 }  { local_reference_6_we0 mem_we 1 1 }  { local_reference_6_d0 mem_din 1 8 } } }
	local_reference_7 { ap_memory {  { local_reference_7_address0 mem_address 1 5 }  { local_reference_7_ce0 mem_ce 1 1 }  { local_reference_7_we0 mem_we 1 1 }  { local_reference_7_d0 mem_din 1 8 } } }
}
set moduleName seq_align_global_Pipeline_VITIS_LOOP_1008_7
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
set C_modelName {seq_align_global_Pipeline_VITIS_LOOP_1008_7}
set C_modelType { void 0 }
set C_modelArgList {
	{ reference_string_comp_0 int 8 regular {axi_s 0 volatile  { reference_string_comp_0 Data } }  }
	{ local_reference int 8 regular {array 32 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_1 int 8 regular {array 32 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_2 int 8 regular {array 32 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_3 int 8 regular {array 32 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_4 int 8 regular {array 32 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_5 int 8 regular {array 32 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_6 int 8 regular {array 32 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_7 int 8 regular {array 32 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "reference_string_comp_0", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "local_reference", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_4", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_5", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_6", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_7", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 41
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ reference_string_comp_0_TVALID sc_in sc_logic 1 invld 0 } 
	{ reference_string_comp_0_TDATA sc_in sc_lv 8 signal 0 } 
	{ reference_string_comp_0_TREADY sc_out sc_logic 1 inacc 0 } 
	{ local_reference_address0 sc_out sc_lv 5 signal 1 } 
	{ local_reference_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_reference_we0 sc_out sc_logic 1 signal 1 } 
	{ local_reference_d0 sc_out sc_lv 8 signal 1 } 
	{ local_reference_1_address0 sc_out sc_lv 5 signal 2 } 
	{ local_reference_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_reference_1_we0 sc_out sc_logic 1 signal 2 } 
	{ local_reference_1_d0 sc_out sc_lv 8 signal 2 } 
	{ local_reference_2_address0 sc_out sc_lv 5 signal 3 } 
	{ local_reference_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_reference_2_we0 sc_out sc_logic 1 signal 3 } 
	{ local_reference_2_d0 sc_out sc_lv 8 signal 3 } 
	{ local_reference_3_address0 sc_out sc_lv 5 signal 4 } 
	{ local_reference_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_reference_3_we0 sc_out sc_logic 1 signal 4 } 
	{ local_reference_3_d0 sc_out sc_lv 8 signal 4 } 
	{ local_reference_4_address0 sc_out sc_lv 5 signal 5 } 
	{ local_reference_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ local_reference_4_we0 sc_out sc_logic 1 signal 5 } 
	{ local_reference_4_d0 sc_out sc_lv 8 signal 5 } 
	{ local_reference_5_address0 sc_out sc_lv 5 signal 6 } 
	{ local_reference_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ local_reference_5_we0 sc_out sc_logic 1 signal 6 } 
	{ local_reference_5_d0 sc_out sc_lv 8 signal 6 } 
	{ local_reference_6_address0 sc_out sc_lv 5 signal 7 } 
	{ local_reference_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ local_reference_6_we0 sc_out sc_logic 1 signal 7 } 
	{ local_reference_6_d0 sc_out sc_lv 8 signal 7 } 
	{ local_reference_7_address0 sc_out sc_lv 5 signal 8 } 
	{ local_reference_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ local_reference_7_we0 sc_out sc_logic 1 signal 8 } 
	{ local_reference_7_d0 sc_out sc_lv 8 signal 8 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "reference_string_comp_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "reference_string_comp_0", "role": "TVALID" }} , 
 	{ "name": "reference_string_comp_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "reference_string_comp_0", "role": "TDATA" }} , 
 	{ "name": "reference_string_comp_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "reference_string_comp_0", "role": "TREADY" }} , 
 	{ "name": "local_reference_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_reference", "role": "address0" }} , 
 	{ "name": "local_reference_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference", "role": "ce0" }} , 
 	{ "name": "local_reference_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference", "role": "we0" }} , 
 	{ "name": "local_reference_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference", "role": "d0" }} , 
 	{ "name": "local_reference_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_reference_1", "role": "address0" }} , 
 	{ "name": "local_reference_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_1", "role": "ce0" }} , 
 	{ "name": "local_reference_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_1", "role": "we0" }} , 
 	{ "name": "local_reference_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_1", "role": "d0" }} , 
 	{ "name": "local_reference_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_reference_2", "role": "address0" }} , 
 	{ "name": "local_reference_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_2", "role": "ce0" }} , 
 	{ "name": "local_reference_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_2", "role": "we0" }} , 
 	{ "name": "local_reference_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_2", "role": "d0" }} , 
 	{ "name": "local_reference_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_reference_3", "role": "address0" }} , 
 	{ "name": "local_reference_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_3", "role": "ce0" }} , 
 	{ "name": "local_reference_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_3", "role": "we0" }} , 
 	{ "name": "local_reference_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_3", "role": "d0" }} , 
 	{ "name": "local_reference_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_reference_4", "role": "address0" }} , 
 	{ "name": "local_reference_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_4", "role": "ce0" }} , 
 	{ "name": "local_reference_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_4", "role": "we0" }} , 
 	{ "name": "local_reference_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_4", "role": "d0" }} , 
 	{ "name": "local_reference_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_reference_5", "role": "address0" }} , 
 	{ "name": "local_reference_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_5", "role": "ce0" }} , 
 	{ "name": "local_reference_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_5", "role": "we0" }} , 
 	{ "name": "local_reference_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_5", "role": "d0" }} , 
 	{ "name": "local_reference_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_reference_6", "role": "address0" }} , 
 	{ "name": "local_reference_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_6", "role": "ce0" }} , 
 	{ "name": "local_reference_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_6", "role": "we0" }} , 
 	{ "name": "local_reference_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_6", "role": "d0" }} , 
 	{ "name": "local_reference_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "local_reference_7", "role": "address0" }} , 
 	{ "name": "local_reference_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_7", "role": "ce0" }} , 
 	{ "name": "local_reference_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_7", "role": "we0" }} , 
 	{ "name": "local_reference_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_7", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "seq_align_global_Pipeline_VITIS_LOOP_1008_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reference_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "reference_string_comp_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "local_reference", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_7", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1008_7", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	seq_align_global_Pipeline_VITIS_LOOP_1008_7 {
		reference_string_comp_0 {Type I LastRead 0 FirstWrite -1}
		local_reference {Type O LastRead -1 FirstWrite 0}
		local_reference_1 {Type O LastRead -1 FirstWrite 0}
		local_reference_2 {Type O LastRead -1 FirstWrite 0}
		local_reference_3 {Type O LastRead -1 FirstWrite 0}
		local_reference_4 {Type O LastRead -1 FirstWrite 0}
		local_reference_5 {Type O LastRead -1 FirstWrite 0}
		local_reference_6 {Type O LastRead -1 FirstWrite 0}
		local_reference_7 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "258", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "258", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	reference_string_comp_0 { axis {  { reference_string_comp_0_TVALID in_vld 0 1 }  { reference_string_comp_0_TDATA in_data 0 8 }  { reference_string_comp_0_TREADY in_acc 1 1 } } }
	local_reference { ap_memory {  { local_reference_address0 mem_address 1 5 }  { local_reference_ce0 mem_ce 1 1 }  { local_reference_we0 mem_we 1 1 }  { local_reference_d0 mem_din 1 8 } } }
	local_reference_1 { ap_memory {  { local_reference_1_address0 mem_address 1 5 }  { local_reference_1_ce0 mem_ce 1 1 }  { local_reference_1_we0 mem_we 1 1 }  { local_reference_1_d0 mem_din 1 8 } } }
	local_reference_2 { ap_memory {  { local_reference_2_address0 mem_address 1 5 }  { local_reference_2_ce0 mem_ce 1 1 }  { local_reference_2_we0 mem_we 1 1 }  { local_reference_2_d0 mem_din 1 8 } } }
	local_reference_3 { ap_memory {  { local_reference_3_address0 mem_address 1 5 }  { local_reference_3_ce0 mem_ce 1 1 }  { local_reference_3_we0 mem_we 1 1 }  { local_reference_3_d0 mem_din 1 8 } } }
	local_reference_4 { ap_memory {  { local_reference_4_address0 mem_address 1 5 }  { local_reference_4_ce0 mem_ce 1 1 }  { local_reference_4_we0 mem_we 1 1 }  { local_reference_4_d0 mem_din 1 8 } } }
	local_reference_5 { ap_memory {  { local_reference_5_address0 mem_address 1 5 }  { local_reference_5_ce0 mem_ce 1 1 }  { local_reference_5_we0 mem_we 1 1 }  { local_reference_5_d0 mem_din 1 8 } } }
	local_reference_6 { ap_memory {  { local_reference_6_address0 mem_address 1 5 }  { local_reference_6_ce0 mem_ce 1 1 }  { local_reference_6_we0 mem_we 1 1 }  { local_reference_6_d0 mem_din 1 8 } } }
	local_reference_7 { ap_memory {  { local_reference_7_address0 mem_address 1 5 }  { local_reference_7_ce0 mem_ce 1 1 }  { local_reference_7_we0 mem_we 1 1 }  { local_reference_7_d0 mem_din 1 8 } } }
}
set moduleName seq_align_global_Pipeline_VITIS_LOOP_1008_7
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
set C_modelName {seq_align_global_Pipeline_VITIS_LOOP_1008_7}
set C_modelType { void 0 }
set C_modelArgList {
	{ reference_string_comp_0 int 8 regular {axi_s 0 volatile  { reference_string_comp_0 Data } }  }
	{ local_reference int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_1 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_2 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_3 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_4 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_5 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_6 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_7 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_8 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_9 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_10 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_11 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_12 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_13 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_14 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_15 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_16 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_17 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_18 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_19 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_20 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_21 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_22 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_23 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_24 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_25 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_26 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_27 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_28 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_29 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_30 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
	{ local_reference_31 int 8 regular {array 8 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "reference_string_comp_0", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "local_reference", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_4", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_5", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_6", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_7", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_8", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_9", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_10", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_11", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_12", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_13", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_14", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_15", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_16", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_17", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_18", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_19", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_20", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_21", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_22", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_23", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_24", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_25", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_26", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_27", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_28", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_29", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_30", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "local_reference_31", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 137
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ reference_string_comp_0_TVALID sc_in sc_logic 1 invld 0 } 
	{ reference_string_comp_0_TDATA sc_in sc_lv 8 signal 0 } 
	{ reference_string_comp_0_TREADY sc_out sc_logic 1 inacc 0 } 
	{ local_reference_address0 sc_out sc_lv 3 signal 1 } 
	{ local_reference_ce0 sc_out sc_logic 1 signal 1 } 
	{ local_reference_we0 sc_out sc_logic 1 signal 1 } 
	{ local_reference_d0 sc_out sc_lv 8 signal 1 } 
	{ local_reference_1_address0 sc_out sc_lv 3 signal 2 } 
	{ local_reference_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ local_reference_1_we0 sc_out sc_logic 1 signal 2 } 
	{ local_reference_1_d0 sc_out sc_lv 8 signal 2 } 
	{ local_reference_2_address0 sc_out sc_lv 3 signal 3 } 
	{ local_reference_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ local_reference_2_we0 sc_out sc_logic 1 signal 3 } 
	{ local_reference_2_d0 sc_out sc_lv 8 signal 3 } 
	{ local_reference_3_address0 sc_out sc_lv 3 signal 4 } 
	{ local_reference_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ local_reference_3_we0 sc_out sc_logic 1 signal 4 } 
	{ local_reference_3_d0 sc_out sc_lv 8 signal 4 } 
	{ local_reference_4_address0 sc_out sc_lv 3 signal 5 } 
	{ local_reference_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ local_reference_4_we0 sc_out sc_logic 1 signal 5 } 
	{ local_reference_4_d0 sc_out sc_lv 8 signal 5 } 
	{ local_reference_5_address0 sc_out sc_lv 3 signal 6 } 
	{ local_reference_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ local_reference_5_we0 sc_out sc_logic 1 signal 6 } 
	{ local_reference_5_d0 sc_out sc_lv 8 signal 6 } 
	{ local_reference_6_address0 sc_out sc_lv 3 signal 7 } 
	{ local_reference_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ local_reference_6_we0 sc_out sc_logic 1 signal 7 } 
	{ local_reference_6_d0 sc_out sc_lv 8 signal 7 } 
	{ local_reference_7_address0 sc_out sc_lv 3 signal 8 } 
	{ local_reference_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ local_reference_7_we0 sc_out sc_logic 1 signal 8 } 
	{ local_reference_7_d0 sc_out sc_lv 8 signal 8 } 
	{ local_reference_8_address0 sc_out sc_lv 3 signal 9 } 
	{ local_reference_8_ce0 sc_out sc_logic 1 signal 9 } 
	{ local_reference_8_we0 sc_out sc_logic 1 signal 9 } 
	{ local_reference_8_d0 sc_out sc_lv 8 signal 9 } 
	{ local_reference_9_address0 sc_out sc_lv 3 signal 10 } 
	{ local_reference_9_ce0 sc_out sc_logic 1 signal 10 } 
	{ local_reference_9_we0 sc_out sc_logic 1 signal 10 } 
	{ local_reference_9_d0 sc_out sc_lv 8 signal 10 } 
	{ local_reference_10_address0 sc_out sc_lv 3 signal 11 } 
	{ local_reference_10_ce0 sc_out sc_logic 1 signal 11 } 
	{ local_reference_10_we0 sc_out sc_logic 1 signal 11 } 
	{ local_reference_10_d0 sc_out sc_lv 8 signal 11 } 
	{ local_reference_11_address0 sc_out sc_lv 3 signal 12 } 
	{ local_reference_11_ce0 sc_out sc_logic 1 signal 12 } 
	{ local_reference_11_we0 sc_out sc_logic 1 signal 12 } 
	{ local_reference_11_d0 sc_out sc_lv 8 signal 12 } 
	{ local_reference_12_address0 sc_out sc_lv 3 signal 13 } 
	{ local_reference_12_ce0 sc_out sc_logic 1 signal 13 } 
	{ local_reference_12_we0 sc_out sc_logic 1 signal 13 } 
	{ local_reference_12_d0 sc_out sc_lv 8 signal 13 } 
	{ local_reference_13_address0 sc_out sc_lv 3 signal 14 } 
	{ local_reference_13_ce0 sc_out sc_logic 1 signal 14 } 
	{ local_reference_13_we0 sc_out sc_logic 1 signal 14 } 
	{ local_reference_13_d0 sc_out sc_lv 8 signal 14 } 
	{ local_reference_14_address0 sc_out sc_lv 3 signal 15 } 
	{ local_reference_14_ce0 sc_out sc_logic 1 signal 15 } 
	{ local_reference_14_we0 sc_out sc_logic 1 signal 15 } 
	{ local_reference_14_d0 sc_out sc_lv 8 signal 15 } 
	{ local_reference_15_address0 sc_out sc_lv 3 signal 16 } 
	{ local_reference_15_ce0 sc_out sc_logic 1 signal 16 } 
	{ local_reference_15_we0 sc_out sc_logic 1 signal 16 } 
	{ local_reference_15_d0 sc_out sc_lv 8 signal 16 } 
	{ local_reference_16_address0 sc_out sc_lv 3 signal 17 } 
	{ local_reference_16_ce0 sc_out sc_logic 1 signal 17 } 
	{ local_reference_16_we0 sc_out sc_logic 1 signal 17 } 
	{ local_reference_16_d0 sc_out sc_lv 8 signal 17 } 
	{ local_reference_17_address0 sc_out sc_lv 3 signal 18 } 
	{ local_reference_17_ce0 sc_out sc_logic 1 signal 18 } 
	{ local_reference_17_we0 sc_out sc_logic 1 signal 18 } 
	{ local_reference_17_d0 sc_out sc_lv 8 signal 18 } 
	{ local_reference_18_address0 sc_out sc_lv 3 signal 19 } 
	{ local_reference_18_ce0 sc_out sc_logic 1 signal 19 } 
	{ local_reference_18_we0 sc_out sc_logic 1 signal 19 } 
	{ local_reference_18_d0 sc_out sc_lv 8 signal 19 } 
	{ local_reference_19_address0 sc_out sc_lv 3 signal 20 } 
	{ local_reference_19_ce0 sc_out sc_logic 1 signal 20 } 
	{ local_reference_19_we0 sc_out sc_logic 1 signal 20 } 
	{ local_reference_19_d0 sc_out sc_lv 8 signal 20 } 
	{ local_reference_20_address0 sc_out sc_lv 3 signal 21 } 
	{ local_reference_20_ce0 sc_out sc_logic 1 signal 21 } 
	{ local_reference_20_we0 sc_out sc_logic 1 signal 21 } 
	{ local_reference_20_d0 sc_out sc_lv 8 signal 21 } 
	{ local_reference_21_address0 sc_out sc_lv 3 signal 22 } 
	{ local_reference_21_ce0 sc_out sc_logic 1 signal 22 } 
	{ local_reference_21_we0 sc_out sc_logic 1 signal 22 } 
	{ local_reference_21_d0 sc_out sc_lv 8 signal 22 } 
	{ local_reference_22_address0 sc_out sc_lv 3 signal 23 } 
	{ local_reference_22_ce0 sc_out sc_logic 1 signal 23 } 
	{ local_reference_22_we0 sc_out sc_logic 1 signal 23 } 
	{ local_reference_22_d0 sc_out sc_lv 8 signal 23 } 
	{ local_reference_23_address0 sc_out sc_lv 3 signal 24 } 
	{ local_reference_23_ce0 sc_out sc_logic 1 signal 24 } 
	{ local_reference_23_we0 sc_out sc_logic 1 signal 24 } 
	{ local_reference_23_d0 sc_out sc_lv 8 signal 24 } 
	{ local_reference_24_address0 sc_out sc_lv 3 signal 25 } 
	{ local_reference_24_ce0 sc_out sc_logic 1 signal 25 } 
	{ local_reference_24_we0 sc_out sc_logic 1 signal 25 } 
	{ local_reference_24_d0 sc_out sc_lv 8 signal 25 } 
	{ local_reference_25_address0 sc_out sc_lv 3 signal 26 } 
	{ local_reference_25_ce0 sc_out sc_logic 1 signal 26 } 
	{ local_reference_25_we0 sc_out sc_logic 1 signal 26 } 
	{ local_reference_25_d0 sc_out sc_lv 8 signal 26 } 
	{ local_reference_26_address0 sc_out sc_lv 3 signal 27 } 
	{ local_reference_26_ce0 sc_out sc_logic 1 signal 27 } 
	{ local_reference_26_we0 sc_out sc_logic 1 signal 27 } 
	{ local_reference_26_d0 sc_out sc_lv 8 signal 27 } 
	{ local_reference_27_address0 sc_out sc_lv 3 signal 28 } 
	{ local_reference_27_ce0 sc_out sc_logic 1 signal 28 } 
	{ local_reference_27_we0 sc_out sc_logic 1 signal 28 } 
	{ local_reference_27_d0 sc_out sc_lv 8 signal 28 } 
	{ local_reference_28_address0 sc_out sc_lv 3 signal 29 } 
	{ local_reference_28_ce0 sc_out sc_logic 1 signal 29 } 
	{ local_reference_28_we0 sc_out sc_logic 1 signal 29 } 
	{ local_reference_28_d0 sc_out sc_lv 8 signal 29 } 
	{ local_reference_29_address0 sc_out sc_lv 3 signal 30 } 
	{ local_reference_29_ce0 sc_out sc_logic 1 signal 30 } 
	{ local_reference_29_we0 sc_out sc_logic 1 signal 30 } 
	{ local_reference_29_d0 sc_out sc_lv 8 signal 30 } 
	{ local_reference_30_address0 sc_out sc_lv 3 signal 31 } 
	{ local_reference_30_ce0 sc_out sc_logic 1 signal 31 } 
	{ local_reference_30_we0 sc_out sc_logic 1 signal 31 } 
	{ local_reference_30_d0 sc_out sc_lv 8 signal 31 } 
	{ local_reference_31_address0 sc_out sc_lv 3 signal 32 } 
	{ local_reference_31_ce0 sc_out sc_logic 1 signal 32 } 
	{ local_reference_31_we0 sc_out sc_logic 1 signal 32 } 
	{ local_reference_31_d0 sc_out sc_lv 8 signal 32 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "reference_string_comp_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "reference_string_comp_0", "role": "TVALID" }} , 
 	{ "name": "reference_string_comp_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "reference_string_comp_0", "role": "TDATA" }} , 
 	{ "name": "reference_string_comp_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "reference_string_comp_0", "role": "TREADY" }} , 
 	{ "name": "local_reference_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference", "role": "address0" }} , 
 	{ "name": "local_reference_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference", "role": "ce0" }} , 
 	{ "name": "local_reference_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference", "role": "we0" }} , 
 	{ "name": "local_reference_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference", "role": "d0" }} , 
 	{ "name": "local_reference_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_1", "role": "address0" }} , 
 	{ "name": "local_reference_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_1", "role": "ce0" }} , 
 	{ "name": "local_reference_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_1", "role": "we0" }} , 
 	{ "name": "local_reference_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_1", "role": "d0" }} , 
 	{ "name": "local_reference_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_2", "role": "address0" }} , 
 	{ "name": "local_reference_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_2", "role": "ce0" }} , 
 	{ "name": "local_reference_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_2", "role": "we0" }} , 
 	{ "name": "local_reference_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_2", "role": "d0" }} , 
 	{ "name": "local_reference_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_3", "role": "address0" }} , 
 	{ "name": "local_reference_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_3", "role": "ce0" }} , 
 	{ "name": "local_reference_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_3", "role": "we0" }} , 
 	{ "name": "local_reference_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_3", "role": "d0" }} , 
 	{ "name": "local_reference_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_4", "role": "address0" }} , 
 	{ "name": "local_reference_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_4", "role": "ce0" }} , 
 	{ "name": "local_reference_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_4", "role": "we0" }} , 
 	{ "name": "local_reference_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_4", "role": "d0" }} , 
 	{ "name": "local_reference_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_5", "role": "address0" }} , 
 	{ "name": "local_reference_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_5", "role": "ce0" }} , 
 	{ "name": "local_reference_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_5", "role": "we0" }} , 
 	{ "name": "local_reference_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_5", "role": "d0" }} , 
 	{ "name": "local_reference_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_6", "role": "address0" }} , 
 	{ "name": "local_reference_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_6", "role": "ce0" }} , 
 	{ "name": "local_reference_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_6", "role": "we0" }} , 
 	{ "name": "local_reference_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_6", "role": "d0" }} , 
 	{ "name": "local_reference_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_7", "role": "address0" }} , 
 	{ "name": "local_reference_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_7", "role": "ce0" }} , 
 	{ "name": "local_reference_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_7", "role": "we0" }} , 
 	{ "name": "local_reference_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_7", "role": "d0" }} , 
 	{ "name": "local_reference_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_8", "role": "address0" }} , 
 	{ "name": "local_reference_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_8", "role": "ce0" }} , 
 	{ "name": "local_reference_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_8", "role": "we0" }} , 
 	{ "name": "local_reference_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_8", "role": "d0" }} , 
 	{ "name": "local_reference_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_9", "role": "address0" }} , 
 	{ "name": "local_reference_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_9", "role": "ce0" }} , 
 	{ "name": "local_reference_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_9", "role": "we0" }} , 
 	{ "name": "local_reference_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_9", "role": "d0" }} , 
 	{ "name": "local_reference_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_10", "role": "address0" }} , 
 	{ "name": "local_reference_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_10", "role": "ce0" }} , 
 	{ "name": "local_reference_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_10", "role": "we0" }} , 
 	{ "name": "local_reference_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_10", "role": "d0" }} , 
 	{ "name": "local_reference_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_11", "role": "address0" }} , 
 	{ "name": "local_reference_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_11", "role": "ce0" }} , 
 	{ "name": "local_reference_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_11", "role": "we0" }} , 
 	{ "name": "local_reference_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_11", "role": "d0" }} , 
 	{ "name": "local_reference_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_12", "role": "address0" }} , 
 	{ "name": "local_reference_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_12", "role": "ce0" }} , 
 	{ "name": "local_reference_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_12", "role": "we0" }} , 
 	{ "name": "local_reference_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_12", "role": "d0" }} , 
 	{ "name": "local_reference_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_13", "role": "address0" }} , 
 	{ "name": "local_reference_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_13", "role": "ce0" }} , 
 	{ "name": "local_reference_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_13", "role": "we0" }} , 
 	{ "name": "local_reference_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_13", "role": "d0" }} , 
 	{ "name": "local_reference_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_14", "role": "address0" }} , 
 	{ "name": "local_reference_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_14", "role": "ce0" }} , 
 	{ "name": "local_reference_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_14", "role": "we0" }} , 
 	{ "name": "local_reference_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_14", "role": "d0" }} , 
 	{ "name": "local_reference_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_15", "role": "address0" }} , 
 	{ "name": "local_reference_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_15", "role": "ce0" }} , 
 	{ "name": "local_reference_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_15", "role": "we0" }} , 
 	{ "name": "local_reference_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_15", "role": "d0" }} , 
 	{ "name": "local_reference_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_16", "role": "address0" }} , 
 	{ "name": "local_reference_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_16", "role": "ce0" }} , 
 	{ "name": "local_reference_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_16", "role": "we0" }} , 
 	{ "name": "local_reference_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_16", "role": "d0" }} , 
 	{ "name": "local_reference_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_17", "role": "address0" }} , 
 	{ "name": "local_reference_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_17", "role": "ce0" }} , 
 	{ "name": "local_reference_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_17", "role": "we0" }} , 
 	{ "name": "local_reference_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_17", "role": "d0" }} , 
 	{ "name": "local_reference_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_18", "role": "address0" }} , 
 	{ "name": "local_reference_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_18", "role": "ce0" }} , 
 	{ "name": "local_reference_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_18", "role": "we0" }} , 
 	{ "name": "local_reference_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_18", "role": "d0" }} , 
 	{ "name": "local_reference_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_19", "role": "address0" }} , 
 	{ "name": "local_reference_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_19", "role": "ce0" }} , 
 	{ "name": "local_reference_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_19", "role": "we0" }} , 
 	{ "name": "local_reference_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_19", "role": "d0" }} , 
 	{ "name": "local_reference_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_20", "role": "address0" }} , 
 	{ "name": "local_reference_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_20", "role": "ce0" }} , 
 	{ "name": "local_reference_20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_20", "role": "we0" }} , 
 	{ "name": "local_reference_20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_20", "role": "d0" }} , 
 	{ "name": "local_reference_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_21", "role": "address0" }} , 
 	{ "name": "local_reference_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_21", "role": "ce0" }} , 
 	{ "name": "local_reference_21_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_21", "role": "we0" }} , 
 	{ "name": "local_reference_21_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_21", "role": "d0" }} , 
 	{ "name": "local_reference_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_22", "role": "address0" }} , 
 	{ "name": "local_reference_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_22", "role": "ce0" }} , 
 	{ "name": "local_reference_22_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_22", "role": "we0" }} , 
 	{ "name": "local_reference_22_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_22", "role": "d0" }} , 
 	{ "name": "local_reference_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_23", "role": "address0" }} , 
 	{ "name": "local_reference_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_23", "role": "ce0" }} , 
 	{ "name": "local_reference_23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_23", "role": "we0" }} , 
 	{ "name": "local_reference_23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_23", "role": "d0" }} , 
 	{ "name": "local_reference_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_24", "role": "address0" }} , 
 	{ "name": "local_reference_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_24", "role": "ce0" }} , 
 	{ "name": "local_reference_24_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_24", "role": "we0" }} , 
 	{ "name": "local_reference_24_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_24", "role": "d0" }} , 
 	{ "name": "local_reference_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_25", "role": "address0" }} , 
 	{ "name": "local_reference_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_25", "role": "ce0" }} , 
 	{ "name": "local_reference_25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_25", "role": "we0" }} , 
 	{ "name": "local_reference_25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_25", "role": "d0" }} , 
 	{ "name": "local_reference_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_26", "role": "address0" }} , 
 	{ "name": "local_reference_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_26", "role": "ce0" }} , 
 	{ "name": "local_reference_26_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_26", "role": "we0" }} , 
 	{ "name": "local_reference_26_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_26", "role": "d0" }} , 
 	{ "name": "local_reference_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_27", "role": "address0" }} , 
 	{ "name": "local_reference_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_27", "role": "ce0" }} , 
 	{ "name": "local_reference_27_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_27", "role": "we0" }} , 
 	{ "name": "local_reference_27_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_27", "role": "d0" }} , 
 	{ "name": "local_reference_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_28", "role": "address0" }} , 
 	{ "name": "local_reference_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_28", "role": "ce0" }} , 
 	{ "name": "local_reference_28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_28", "role": "we0" }} , 
 	{ "name": "local_reference_28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_28", "role": "d0" }} , 
 	{ "name": "local_reference_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_29", "role": "address0" }} , 
 	{ "name": "local_reference_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_29", "role": "ce0" }} , 
 	{ "name": "local_reference_29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_29", "role": "we0" }} , 
 	{ "name": "local_reference_29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_29", "role": "d0" }} , 
 	{ "name": "local_reference_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_30", "role": "address0" }} , 
 	{ "name": "local_reference_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_30", "role": "ce0" }} , 
 	{ "name": "local_reference_30_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_30", "role": "we0" }} , 
 	{ "name": "local_reference_30_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_30", "role": "d0" }} , 
 	{ "name": "local_reference_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "local_reference_31", "role": "address0" }} , 
 	{ "name": "local_reference_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_31", "role": "ce0" }} , 
 	{ "name": "local_reference_31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "local_reference_31", "role": "we0" }} , 
 	{ "name": "local_reference_31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "local_reference_31", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "seq_align_global_Pipeline_VITIS_LOOP_1008_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "258", "EstimateLatencyMax" : "258",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reference_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "reference_string_comp_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "local_reference", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_31", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_1008_7", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	seq_align_global_Pipeline_VITIS_LOOP_1008_7 {
		reference_string_comp_0 {Type I LastRead 0 FirstWrite -1}
		local_reference {Type O LastRead -1 FirstWrite 0}
		local_reference_1 {Type O LastRead -1 FirstWrite 0}
		local_reference_2 {Type O LastRead -1 FirstWrite 0}
		local_reference_3 {Type O LastRead -1 FirstWrite 0}
		local_reference_4 {Type O LastRead -1 FirstWrite 0}
		local_reference_5 {Type O LastRead -1 FirstWrite 0}
		local_reference_6 {Type O LastRead -1 FirstWrite 0}
		local_reference_7 {Type O LastRead -1 FirstWrite 0}
		local_reference_8 {Type O LastRead -1 FirstWrite 0}
		local_reference_9 {Type O LastRead -1 FirstWrite 0}
		local_reference_10 {Type O LastRead -1 FirstWrite 0}
		local_reference_11 {Type O LastRead -1 FirstWrite 0}
		local_reference_12 {Type O LastRead -1 FirstWrite 0}
		local_reference_13 {Type O LastRead -1 FirstWrite 0}
		local_reference_14 {Type O LastRead -1 FirstWrite 0}
		local_reference_15 {Type O LastRead -1 FirstWrite 0}
		local_reference_16 {Type O LastRead -1 FirstWrite 0}
		local_reference_17 {Type O LastRead -1 FirstWrite 0}
		local_reference_18 {Type O LastRead -1 FirstWrite 0}
		local_reference_19 {Type O LastRead -1 FirstWrite 0}
		local_reference_20 {Type O LastRead -1 FirstWrite 0}
		local_reference_21 {Type O LastRead -1 FirstWrite 0}
		local_reference_22 {Type O LastRead -1 FirstWrite 0}
		local_reference_23 {Type O LastRead -1 FirstWrite 0}
		local_reference_24 {Type O LastRead -1 FirstWrite 0}
		local_reference_25 {Type O LastRead -1 FirstWrite 0}
		local_reference_26 {Type O LastRead -1 FirstWrite 0}
		local_reference_27 {Type O LastRead -1 FirstWrite 0}
		local_reference_28 {Type O LastRead -1 FirstWrite 0}
		local_reference_29 {Type O LastRead -1 FirstWrite 0}
		local_reference_30 {Type O LastRead -1 FirstWrite 0}
		local_reference_31 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "258", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "258", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	reference_string_comp_0 { axis {  { reference_string_comp_0_TVALID in_vld 0 1 }  { reference_string_comp_0_TDATA in_data 0 8 }  { reference_string_comp_0_TREADY in_acc 1 1 } } }
	local_reference { ap_memory {  { local_reference_address0 mem_address 1 3 }  { local_reference_ce0 mem_ce 1 1 }  { local_reference_we0 mem_we 1 1 }  { local_reference_d0 mem_din 1 8 } } }
	local_reference_1 { ap_memory {  { local_reference_1_address0 mem_address 1 3 }  { local_reference_1_ce0 mem_ce 1 1 }  { local_reference_1_we0 mem_we 1 1 }  { local_reference_1_d0 mem_din 1 8 } } }
	local_reference_2 { ap_memory {  { local_reference_2_address0 mem_address 1 3 }  { local_reference_2_ce0 mem_ce 1 1 }  { local_reference_2_we0 mem_we 1 1 }  { local_reference_2_d0 mem_din 1 8 } } }
	local_reference_3 { ap_memory {  { local_reference_3_address0 mem_address 1 3 }  { local_reference_3_ce0 mem_ce 1 1 }  { local_reference_3_we0 mem_we 1 1 }  { local_reference_3_d0 mem_din 1 8 } } }
	local_reference_4 { ap_memory {  { local_reference_4_address0 mem_address 1 3 }  { local_reference_4_ce0 mem_ce 1 1 }  { local_reference_4_we0 mem_we 1 1 }  { local_reference_4_d0 mem_din 1 8 } } }
	local_reference_5 { ap_memory {  { local_reference_5_address0 mem_address 1 3 }  { local_reference_5_ce0 mem_ce 1 1 }  { local_reference_5_we0 mem_we 1 1 }  { local_reference_5_d0 mem_din 1 8 } } }
	local_reference_6 { ap_memory {  { local_reference_6_address0 mem_address 1 3 }  { local_reference_6_ce0 mem_ce 1 1 }  { local_reference_6_we0 mem_we 1 1 }  { local_reference_6_d0 mem_din 1 8 } } }
	local_reference_7 { ap_memory {  { local_reference_7_address0 mem_address 1 3 }  { local_reference_7_ce0 mem_ce 1 1 }  { local_reference_7_we0 mem_we 1 1 }  { local_reference_7_d0 mem_din 1 8 } } }
	local_reference_8 { ap_memory {  { local_reference_8_address0 mem_address 1 3 }  { local_reference_8_ce0 mem_ce 1 1 }  { local_reference_8_we0 mem_we 1 1 }  { local_reference_8_d0 mem_din 1 8 } } }
	local_reference_9 { ap_memory {  { local_reference_9_address0 mem_address 1 3 }  { local_reference_9_ce0 mem_ce 1 1 }  { local_reference_9_we0 mem_we 1 1 }  { local_reference_9_d0 mem_din 1 8 } } }
	local_reference_10 { ap_memory {  { local_reference_10_address0 mem_address 1 3 }  { local_reference_10_ce0 mem_ce 1 1 }  { local_reference_10_we0 mem_we 1 1 }  { local_reference_10_d0 mem_din 1 8 } } }
	local_reference_11 { ap_memory {  { local_reference_11_address0 mem_address 1 3 }  { local_reference_11_ce0 mem_ce 1 1 }  { local_reference_11_we0 mem_we 1 1 }  { local_reference_11_d0 mem_din 1 8 } } }
	local_reference_12 { ap_memory {  { local_reference_12_address0 mem_address 1 3 }  { local_reference_12_ce0 mem_ce 1 1 }  { local_reference_12_we0 mem_we 1 1 }  { local_reference_12_d0 mem_din 1 8 } } }
	local_reference_13 { ap_memory {  { local_reference_13_address0 mem_address 1 3 }  { local_reference_13_ce0 mem_ce 1 1 }  { local_reference_13_we0 mem_we 1 1 }  { local_reference_13_d0 mem_din 1 8 } } }
	local_reference_14 { ap_memory {  { local_reference_14_address0 mem_address 1 3 }  { local_reference_14_ce0 mem_ce 1 1 }  { local_reference_14_we0 mem_we 1 1 }  { local_reference_14_d0 mem_din 1 8 } } }
	local_reference_15 { ap_memory {  { local_reference_15_address0 mem_address 1 3 }  { local_reference_15_ce0 mem_ce 1 1 }  { local_reference_15_we0 mem_we 1 1 }  { local_reference_15_d0 mem_din 1 8 } } }
	local_reference_16 { ap_memory {  { local_reference_16_address0 mem_address 1 3 }  { local_reference_16_ce0 mem_ce 1 1 }  { local_reference_16_we0 mem_we 1 1 }  { local_reference_16_d0 mem_din 1 8 } } }
	local_reference_17 { ap_memory {  { local_reference_17_address0 mem_address 1 3 }  { local_reference_17_ce0 mem_ce 1 1 }  { local_reference_17_we0 mem_we 1 1 }  { local_reference_17_d0 mem_din 1 8 } } }
	local_reference_18 { ap_memory {  { local_reference_18_address0 mem_address 1 3 }  { local_reference_18_ce0 mem_ce 1 1 }  { local_reference_18_we0 mem_we 1 1 }  { local_reference_18_d0 mem_din 1 8 } } }
	local_reference_19 { ap_memory {  { local_reference_19_address0 mem_address 1 3 }  { local_reference_19_ce0 mem_ce 1 1 }  { local_reference_19_we0 mem_we 1 1 }  { local_reference_19_d0 mem_din 1 8 } } }
	local_reference_20 { ap_memory {  { local_reference_20_address0 mem_address 1 3 }  { local_reference_20_ce0 mem_ce 1 1 }  { local_reference_20_we0 mem_we 1 1 }  { local_reference_20_d0 mem_din 1 8 } } }
	local_reference_21 { ap_memory {  { local_reference_21_address0 mem_address 1 3 }  { local_reference_21_ce0 mem_ce 1 1 }  { local_reference_21_we0 mem_we 1 1 }  { local_reference_21_d0 mem_din 1 8 } } }
	local_reference_22 { ap_memory {  { local_reference_22_address0 mem_address 1 3 }  { local_reference_22_ce0 mem_ce 1 1 }  { local_reference_22_we0 mem_we 1 1 }  { local_reference_22_d0 mem_din 1 8 } } }
	local_reference_23 { ap_memory {  { local_reference_23_address0 mem_address 1 3 }  { local_reference_23_ce0 mem_ce 1 1 }  { local_reference_23_we0 mem_we 1 1 }  { local_reference_23_d0 mem_din 1 8 } } }
	local_reference_24 { ap_memory {  { local_reference_24_address0 mem_address 1 3 }  { local_reference_24_ce0 mem_ce 1 1 }  { local_reference_24_we0 mem_we 1 1 }  { local_reference_24_d0 mem_din 1 8 } } }
	local_reference_25 { ap_memory {  { local_reference_25_address0 mem_address 1 3 }  { local_reference_25_ce0 mem_ce 1 1 }  { local_reference_25_we0 mem_we 1 1 }  { local_reference_25_d0 mem_din 1 8 } } }
	local_reference_26 { ap_memory {  { local_reference_26_address0 mem_address 1 3 }  { local_reference_26_ce0 mem_ce 1 1 }  { local_reference_26_we0 mem_we 1 1 }  { local_reference_26_d0 mem_din 1 8 } } }
	local_reference_27 { ap_memory {  { local_reference_27_address0 mem_address 1 3 }  { local_reference_27_ce0 mem_ce 1 1 }  { local_reference_27_we0 mem_we 1 1 }  { local_reference_27_d0 mem_din 1 8 } } }
	local_reference_28 { ap_memory {  { local_reference_28_address0 mem_address 1 3 }  { local_reference_28_ce0 mem_ce 1 1 }  { local_reference_28_we0 mem_we 1 1 }  { local_reference_28_d0 mem_din 1 8 } } }
	local_reference_29 { ap_memory {  { local_reference_29_address0 mem_address 1 3 }  { local_reference_29_ce0 mem_ce 1 1 }  { local_reference_29_we0 mem_we 1 1 }  { local_reference_29_d0 mem_din 1 8 } } }
	local_reference_30 { ap_memory {  { local_reference_30_address0 mem_address 1 3 }  { local_reference_30_ce0 mem_ce 1 1 }  { local_reference_30_we0 mem_we 1 1 }  { local_reference_30_d0 mem_din 1 8 } } }
	local_reference_31 { ap_memory {  { local_reference_31_address0 mem_address 1 3 }  { local_reference_31_ce0 mem_ce 1 1 }  { local_reference_31_we0 mem_we 1 1 }  { local_reference_31_d0 mem_din 1 8 } } }
}
