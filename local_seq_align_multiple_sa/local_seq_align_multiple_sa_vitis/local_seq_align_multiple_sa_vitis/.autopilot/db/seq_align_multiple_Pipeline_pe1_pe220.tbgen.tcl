set moduleName seq_align_multiple_Pipeline_pe1_pe220
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
set C_modelName {seq_align_multiple_Pipeline_pe1_pe220}
set C_modelType { void 0 }
set C_modelArgList {
	{ dp_matrix_V int 9 regular {array 256 { 1 3 } 1 1 }  }
	{ dp_matrix_V_1 int 9 regular {array 256 { 1 3 } 1 1 }  }
	{ dp_matrix_V_2 int 9 regular {array 256 { 1 3 } 1 1 }  }
	{ dp_matrix_V_3 int 9 regular {array 256 { 1 3 } 1 1 }  }
	{ dp_matrix_V_4 int 9 regular {array 256 { 1 3 } 1 1 }  }
	{ dp_matrix_V_5 int 9 regular {array 256 { 1 3 } 1 1 }  }
	{ dp_matrix_V_6 int 9 regular {array 256 { 1 3 } 1 1 }  }
	{ dp_matrix_V_7 int 9 regular {array 256 { 1 3 } 1 1 }  }
	{ dp_matrix_V_8 int 9 regular {array 256 { 1 3 } 1 1 }  }
	{ dp_matrix_V_9 int 9 regular {array 256 { 1 3 } 1 1 }  }
	{ dp_matrix_V_10 int 9 regular {array 256 { 1 3 } 1 1 }  }
	{ dp_matrix_V_11 int 9 regular {array 256 { 1 3 } 1 1 }  }
	{ dp_matrix_V_12 int 9 regular {array 256 { 1 3 } 1 1 }  }
	{ dp_matrix_V_13 int 9 regular {array 256 { 1 3 } 1 1 }  }
	{ dp_matrix_V_14 int 9 regular {array 256 { 1 3 } 1 1 }  }
	{ dp_matrix_V_15 int 9 regular {array 256 { 1 3 } 1 1 }  }
	{ max_col_value_11_out int 8 regular {pointer 1}  }
	{ max_row_value_11_out int 6 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dp_matrix_V", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "dp_matrix_V_1", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "dp_matrix_V_2", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "dp_matrix_V_3", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "dp_matrix_V_4", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "dp_matrix_V_5", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "dp_matrix_V_6", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "dp_matrix_V_7", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "dp_matrix_V_8", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "dp_matrix_V_9", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "dp_matrix_V_10", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "dp_matrix_V_11", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "dp_matrix_V_12", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "dp_matrix_V_13", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "dp_matrix_V_14", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "dp_matrix_V_15", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "max_col_value_11_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "max_row_value_11_out", "interface" : "wire", "bitwidth" : 6, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ dp_matrix_V_address0 sc_out sc_lv 8 signal 0 } 
	{ dp_matrix_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ dp_matrix_V_q0 sc_in sc_lv 9 signal 0 } 
	{ dp_matrix_V_1_address0 sc_out sc_lv 8 signal 1 } 
	{ dp_matrix_V_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ dp_matrix_V_1_q0 sc_in sc_lv 9 signal 1 } 
	{ dp_matrix_V_2_address0 sc_out sc_lv 8 signal 2 } 
	{ dp_matrix_V_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ dp_matrix_V_2_q0 sc_in sc_lv 9 signal 2 } 
	{ dp_matrix_V_3_address0 sc_out sc_lv 8 signal 3 } 
	{ dp_matrix_V_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ dp_matrix_V_3_q0 sc_in sc_lv 9 signal 3 } 
	{ dp_matrix_V_4_address0 sc_out sc_lv 8 signal 4 } 
	{ dp_matrix_V_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ dp_matrix_V_4_q0 sc_in sc_lv 9 signal 4 } 
	{ dp_matrix_V_5_address0 sc_out sc_lv 8 signal 5 } 
	{ dp_matrix_V_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ dp_matrix_V_5_q0 sc_in sc_lv 9 signal 5 } 
	{ dp_matrix_V_6_address0 sc_out sc_lv 8 signal 6 } 
	{ dp_matrix_V_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ dp_matrix_V_6_q0 sc_in sc_lv 9 signal 6 } 
	{ dp_matrix_V_7_address0 sc_out sc_lv 8 signal 7 } 
	{ dp_matrix_V_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ dp_matrix_V_7_q0 sc_in sc_lv 9 signal 7 } 
	{ dp_matrix_V_8_address0 sc_out sc_lv 8 signal 8 } 
	{ dp_matrix_V_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ dp_matrix_V_8_q0 sc_in sc_lv 9 signal 8 } 
	{ dp_matrix_V_9_address0 sc_out sc_lv 8 signal 9 } 
	{ dp_matrix_V_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ dp_matrix_V_9_q0 sc_in sc_lv 9 signal 9 } 
	{ dp_matrix_V_10_address0 sc_out sc_lv 8 signal 10 } 
	{ dp_matrix_V_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ dp_matrix_V_10_q0 sc_in sc_lv 9 signal 10 } 
	{ dp_matrix_V_11_address0 sc_out sc_lv 8 signal 11 } 
	{ dp_matrix_V_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ dp_matrix_V_11_q0 sc_in sc_lv 9 signal 11 } 
	{ dp_matrix_V_12_address0 sc_out sc_lv 8 signal 12 } 
	{ dp_matrix_V_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ dp_matrix_V_12_q0 sc_in sc_lv 9 signal 12 } 
	{ dp_matrix_V_13_address0 sc_out sc_lv 8 signal 13 } 
	{ dp_matrix_V_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ dp_matrix_V_13_q0 sc_in sc_lv 9 signal 13 } 
	{ dp_matrix_V_14_address0 sc_out sc_lv 8 signal 14 } 
	{ dp_matrix_V_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ dp_matrix_V_14_q0 sc_in sc_lv 9 signal 14 } 
	{ dp_matrix_V_15_address0 sc_out sc_lv 8 signal 15 } 
	{ dp_matrix_V_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ dp_matrix_V_15_q0 sc_in sc_lv 9 signal 15 } 
	{ max_col_value_11_out sc_out sc_lv 8 signal 16 } 
	{ max_col_value_11_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ max_row_value_11_out sc_out sc_lv 6 signal 17 } 
	{ max_row_value_11_out_ap_vld sc_out sc_logic 1 outvld 17 } 
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
 	{ "name": "dp_matrix_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V", "role": "q0" }} , 
 	{ "name": "dp_matrix_V_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_1", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_1", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_1", "role": "q0" }} , 
 	{ "name": "dp_matrix_V_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_2", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_2", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_2", "role": "q0" }} , 
 	{ "name": "dp_matrix_V_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_3", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_3", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_3", "role": "q0" }} , 
 	{ "name": "dp_matrix_V_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_4", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_4", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_4", "role": "q0" }} , 
 	{ "name": "dp_matrix_V_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_5", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_5", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_5", "role": "q0" }} , 
 	{ "name": "dp_matrix_V_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_6", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_6", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_6", "role": "q0" }} , 
 	{ "name": "dp_matrix_V_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_7", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_7", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_7", "role": "q0" }} , 
 	{ "name": "dp_matrix_V_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_8", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_8", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_8", "role": "q0" }} , 
 	{ "name": "dp_matrix_V_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_9", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_9", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_9", "role": "q0" }} , 
 	{ "name": "dp_matrix_V_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_10", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_10", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_10", "role": "q0" }} , 
 	{ "name": "dp_matrix_V_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_11", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_11", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_11", "role": "q0" }} , 
 	{ "name": "dp_matrix_V_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_12", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_12", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_12", "role": "q0" }} , 
 	{ "name": "dp_matrix_V_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_13", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_13", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_13", "role": "q0" }} , 
 	{ "name": "dp_matrix_V_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_14", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_14", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_14", "role": "q0" }} , 
 	{ "name": "dp_matrix_V_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dp_matrix_V_15", "role": "address0" }} , 
 	{ "name": "dp_matrix_V_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix_V_15", "role": "ce0" }} , 
 	{ "name": "dp_matrix_V_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "dp_matrix_V_15", "role": "q0" }} , 
 	{ "name": "max_col_value_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "max_col_value_11_out", "role": "default" }} , 
 	{ "name": "max_col_value_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "max_col_value_11_out", "role": "ap_vld" }} , 
 	{ "name": "max_row_value_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "max_row_value_11_out", "role": "default" }} , 
 	{ "name": "max_row_value_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "max_row_value_11_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "seq_align_multiple_Pipeline_pe1_pe220",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4099", "EstimateLatencyMax" : "4099",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dp_matrix_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dp_matrix_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dp_matrix_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dp_matrix_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dp_matrix_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dp_matrix_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dp_matrix_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dp_matrix_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dp_matrix_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dp_matrix_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dp_matrix_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dp_matrix_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dp_matrix_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dp_matrix_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dp_matrix_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dp_matrix_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "max_col_value_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_11_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "pe1_pe2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_9_1_1_U3883", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	seq_align_multiple_Pipeline_pe1_pe220 {
		dp_matrix_V {Type I LastRead 0 FirstWrite -1}
		dp_matrix_V_1 {Type I LastRead 0 FirstWrite -1}
		dp_matrix_V_2 {Type I LastRead 0 FirstWrite -1}
		dp_matrix_V_3 {Type I LastRead 0 FirstWrite -1}
		dp_matrix_V_4 {Type I LastRead 0 FirstWrite -1}
		dp_matrix_V_5 {Type I LastRead 0 FirstWrite -1}
		dp_matrix_V_6 {Type I LastRead 0 FirstWrite -1}
		dp_matrix_V_7 {Type I LastRead 0 FirstWrite -1}
		dp_matrix_V_8 {Type I LastRead 0 FirstWrite -1}
		dp_matrix_V_9 {Type I LastRead 0 FirstWrite -1}
		dp_matrix_V_10 {Type I LastRead 0 FirstWrite -1}
		dp_matrix_V_11 {Type I LastRead 0 FirstWrite -1}
		dp_matrix_V_12 {Type I LastRead 0 FirstWrite -1}
		dp_matrix_V_13 {Type I LastRead 0 FirstWrite -1}
		dp_matrix_V_14 {Type I LastRead 0 FirstWrite -1}
		dp_matrix_V_15 {Type I LastRead 0 FirstWrite -1}
		max_col_value_11_out {Type O LastRead -1 FirstWrite 1}
		max_row_value_11_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4099", "Max" : "4099"}
	, {"Name" : "Interval", "Min" : "4099", "Max" : "4099"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	dp_matrix_V { ap_memory {  { dp_matrix_V_address0 mem_address 1 8 }  { dp_matrix_V_ce0 mem_ce 1 1 }  { dp_matrix_V_q0 in_data 0 9 } } }
	dp_matrix_V_1 { ap_memory {  { dp_matrix_V_1_address0 mem_address 1 8 }  { dp_matrix_V_1_ce0 mem_ce 1 1 }  { dp_matrix_V_1_q0 in_data 0 9 } } }
	dp_matrix_V_2 { ap_memory {  { dp_matrix_V_2_address0 mem_address 1 8 }  { dp_matrix_V_2_ce0 mem_ce 1 1 }  { dp_matrix_V_2_q0 in_data 0 9 } } }
	dp_matrix_V_3 { ap_memory {  { dp_matrix_V_3_address0 mem_address 1 8 }  { dp_matrix_V_3_ce0 mem_ce 1 1 }  { dp_matrix_V_3_q0 in_data 0 9 } } }
	dp_matrix_V_4 { ap_memory {  { dp_matrix_V_4_address0 mem_address 1 8 }  { dp_matrix_V_4_ce0 mem_ce 1 1 }  { dp_matrix_V_4_q0 in_data 0 9 } } }
	dp_matrix_V_5 { ap_memory {  { dp_matrix_V_5_address0 mem_address 1 8 }  { dp_matrix_V_5_ce0 mem_ce 1 1 }  { dp_matrix_V_5_q0 in_data 0 9 } } }
	dp_matrix_V_6 { ap_memory {  { dp_matrix_V_6_address0 mem_address 1 8 }  { dp_matrix_V_6_ce0 mem_ce 1 1 }  { dp_matrix_V_6_q0 in_data 0 9 } } }
	dp_matrix_V_7 { ap_memory {  { dp_matrix_V_7_address0 mem_address 1 8 }  { dp_matrix_V_7_ce0 mem_ce 1 1 }  { dp_matrix_V_7_q0 in_data 0 9 } } }
	dp_matrix_V_8 { ap_memory {  { dp_matrix_V_8_address0 mem_address 1 8 }  { dp_matrix_V_8_ce0 mem_ce 1 1 }  { dp_matrix_V_8_q0 in_data 0 9 } } }
	dp_matrix_V_9 { ap_memory {  { dp_matrix_V_9_address0 mem_address 1 8 }  { dp_matrix_V_9_ce0 mem_ce 1 1 }  { dp_matrix_V_9_q0 in_data 0 9 } } }
	dp_matrix_V_10 { ap_memory {  { dp_matrix_V_10_address0 mem_address 1 8 }  { dp_matrix_V_10_ce0 mem_ce 1 1 }  { dp_matrix_V_10_q0 in_data 0 9 } } }
	dp_matrix_V_11 { ap_memory {  { dp_matrix_V_11_address0 mem_address 1 8 }  { dp_matrix_V_11_ce0 mem_ce 1 1 }  { dp_matrix_V_11_q0 in_data 0 9 } } }
	dp_matrix_V_12 { ap_memory {  { dp_matrix_V_12_address0 mem_address 1 8 }  { dp_matrix_V_12_ce0 mem_ce 1 1 }  { dp_matrix_V_12_q0 in_data 0 9 } } }
	dp_matrix_V_13 { ap_memory {  { dp_matrix_V_13_address0 mem_address 1 8 }  { dp_matrix_V_13_ce0 mem_ce 1 1 }  { dp_matrix_V_13_q0 in_data 0 9 } } }
	dp_matrix_V_14 { ap_memory {  { dp_matrix_V_14_address0 mem_address 1 8 }  { dp_matrix_V_14_ce0 mem_ce 1 1 }  { dp_matrix_V_14_q0 in_data 0 9 } } }
	dp_matrix_V_15 { ap_memory {  { dp_matrix_V_15_address0 mem_address 1 8 }  { dp_matrix_V_15_ce0 mem_ce 1 1 }  { dp_matrix_V_15_q0 in_data 0 9 } } }
	max_col_value_11_out { ap_vld {  { max_col_value_11_out out_data 1 8 }  { max_col_value_11_out_ap_vld out_vld 1 1 } } }
	max_row_value_11_out { ap_vld {  { max_row_value_11_out out_data 1 6 }  { max_row_value_11_out_ap_vld out_vld 1 1 } } }
}
