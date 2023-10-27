set moduleName CopyColScore
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {CopyColScore}
set C_modelType { void 0 }
set C_modelArgList {
	{ init_col_scr_local_0 int 16 regular {array 33 { 2 0 } 1 1 }  }
	{ init_col_scr_local_1 int 16 regular {array 33 { 2 0 } 1 1 }  }
	{ init_col_scr_local_2 int 16 regular {array 33 { 2 0 } 1 1 }  }
	{ init_col_scr int 48 regular {array 256 { 1 1 } 1 1 }  }
	{ idx int 8 regular  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "init_col_scr_local_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "init_col_scr_local_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "init_col_scr_local_2", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "init_col_scr", "interface" : "memory", "bitwidth" : 48, "direction" : "READONLY"} , 
 	{ "Name" : "idx", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ init_col_scr_local_0_address0 sc_out sc_lv 6 signal 0 } 
	{ init_col_scr_local_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ init_col_scr_local_0_we0 sc_out sc_logic 1 signal 0 } 
	{ init_col_scr_local_0_d0 sc_out sc_lv 16 signal 0 } 
	{ init_col_scr_local_0_q0 sc_in sc_lv 16 signal 0 } 
	{ init_col_scr_local_0_address1 sc_out sc_lv 6 signal 0 } 
	{ init_col_scr_local_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ init_col_scr_local_0_we1 sc_out sc_logic 1 signal 0 } 
	{ init_col_scr_local_0_d1 sc_out sc_lv 16 signal 0 } 
	{ init_col_scr_local_1_address0 sc_out sc_lv 6 signal 1 } 
	{ init_col_scr_local_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ init_col_scr_local_1_we0 sc_out sc_logic 1 signal 1 } 
	{ init_col_scr_local_1_d0 sc_out sc_lv 16 signal 1 } 
	{ init_col_scr_local_1_q0 sc_in sc_lv 16 signal 1 } 
	{ init_col_scr_local_1_address1 sc_out sc_lv 6 signal 1 } 
	{ init_col_scr_local_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ init_col_scr_local_1_we1 sc_out sc_logic 1 signal 1 } 
	{ init_col_scr_local_1_d1 sc_out sc_lv 16 signal 1 } 
	{ init_col_scr_local_2_address0 sc_out sc_lv 6 signal 2 } 
	{ init_col_scr_local_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ init_col_scr_local_2_we0 sc_out sc_logic 1 signal 2 } 
	{ init_col_scr_local_2_d0 sc_out sc_lv 16 signal 2 } 
	{ init_col_scr_local_2_q0 sc_in sc_lv 16 signal 2 } 
	{ init_col_scr_local_2_address1 sc_out sc_lv 6 signal 2 } 
	{ init_col_scr_local_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ init_col_scr_local_2_we1 sc_out sc_logic 1 signal 2 } 
	{ init_col_scr_local_2_d1 sc_out sc_lv 16 signal 2 } 
	{ init_col_scr_address0 sc_out sc_lv 8 signal 3 } 
	{ init_col_scr_ce0 sc_out sc_logic 1 signal 3 } 
	{ init_col_scr_q0 sc_in sc_lv 48 signal 3 } 
	{ init_col_scr_address1 sc_out sc_lv 8 signal 3 } 
	{ init_col_scr_ce1 sc_out sc_logic 1 signal 3 } 
	{ init_col_scr_q1 sc_in sc_lv 48 signal 3 } 
	{ idx sc_in sc_lv 8 signal 4 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "init_col_scr_local_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "init_col_scr_local_0", "role": "address0" }} , 
 	{ "name": "init_col_scr_local_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_col_scr_local_0", "role": "ce0" }} , 
 	{ "name": "init_col_scr_local_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_col_scr_local_0", "role": "we0" }} , 
 	{ "name": "init_col_scr_local_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "init_col_scr_local_0", "role": "d0" }} , 
 	{ "name": "init_col_scr_local_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "init_col_scr_local_0", "role": "q0" }} , 
 	{ "name": "init_col_scr_local_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "init_col_scr_local_0", "role": "address1" }} , 
 	{ "name": "init_col_scr_local_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_col_scr_local_0", "role": "ce1" }} , 
 	{ "name": "init_col_scr_local_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_col_scr_local_0", "role": "we1" }} , 
 	{ "name": "init_col_scr_local_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "init_col_scr_local_0", "role": "d1" }} , 
 	{ "name": "init_col_scr_local_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "init_col_scr_local_1", "role": "address0" }} , 
 	{ "name": "init_col_scr_local_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_col_scr_local_1", "role": "ce0" }} , 
 	{ "name": "init_col_scr_local_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_col_scr_local_1", "role": "we0" }} , 
 	{ "name": "init_col_scr_local_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "init_col_scr_local_1", "role": "d0" }} , 
 	{ "name": "init_col_scr_local_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "init_col_scr_local_1", "role": "q0" }} , 
 	{ "name": "init_col_scr_local_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "init_col_scr_local_1", "role": "address1" }} , 
 	{ "name": "init_col_scr_local_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_col_scr_local_1", "role": "ce1" }} , 
 	{ "name": "init_col_scr_local_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_col_scr_local_1", "role": "we1" }} , 
 	{ "name": "init_col_scr_local_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "init_col_scr_local_1", "role": "d1" }} , 
 	{ "name": "init_col_scr_local_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "init_col_scr_local_2", "role": "address0" }} , 
 	{ "name": "init_col_scr_local_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_col_scr_local_2", "role": "ce0" }} , 
 	{ "name": "init_col_scr_local_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_col_scr_local_2", "role": "we0" }} , 
 	{ "name": "init_col_scr_local_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "init_col_scr_local_2", "role": "d0" }} , 
 	{ "name": "init_col_scr_local_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "init_col_scr_local_2", "role": "q0" }} , 
 	{ "name": "init_col_scr_local_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "init_col_scr_local_2", "role": "address1" }} , 
 	{ "name": "init_col_scr_local_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_col_scr_local_2", "role": "ce1" }} , 
 	{ "name": "init_col_scr_local_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_col_scr_local_2", "role": "we1" }} , 
 	{ "name": "init_col_scr_local_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "init_col_scr_local_2", "role": "d1" }} , 
 	{ "name": "init_col_scr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "init_col_scr", "role": "address0" }} , 
 	{ "name": "init_col_scr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_col_scr", "role": "ce0" }} , 
 	{ "name": "init_col_scr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "init_col_scr", "role": "q0" }} , 
 	{ "name": "init_col_scr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "init_col_scr", "role": "address1" }} , 
 	{ "name": "init_col_scr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_col_scr", "role": "ce1" }} , 
 	{ "name": "init_col_scr_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "init_col_scr", "role": "q1" }} , 
 	{ "name": "idx", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "idx", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "CopyColScore",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "init_col_scr_local_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "init_col_scr_local_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "init_col_scr_local_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "init_col_scr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "idx", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	CopyColScore {
		init_col_scr_local_0 {Type IO LastRead 0 FirstWrite 1}
		init_col_scr_local_1 {Type IO LastRead 0 FirstWrite 1}
		init_col_scr_local_2 {Type IO LastRead 0 FirstWrite 1}
		init_col_scr {Type I LastRead 17 FirstWrite -1}
		idx {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17", "Max" : "17"}
	, {"Name" : "Interval", "Min" : "17", "Max" : "17"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	init_col_scr_local_0 { ap_memory {  { init_col_scr_local_0_address0 mem_address 1 6 }  { init_col_scr_local_0_ce0 mem_ce 1 1 }  { init_col_scr_local_0_we0 mem_we 1 1 }  { init_col_scr_local_0_d0 mem_din 1 16 }  { init_col_scr_local_0_q0 in_data 0 16 }  { init_col_scr_local_0_address1 MemPortADDR2 1 6 }  { init_col_scr_local_0_ce1 MemPortCE2 1 1 }  { init_col_scr_local_0_we1 MemPortWE2 1 1 }  { init_col_scr_local_0_d1 MemPortDIN2 1 16 } } }
	init_col_scr_local_1 { ap_memory {  { init_col_scr_local_1_address0 mem_address 1 6 }  { init_col_scr_local_1_ce0 mem_ce 1 1 }  { init_col_scr_local_1_we0 mem_we 1 1 }  { init_col_scr_local_1_d0 mem_din 1 16 }  { init_col_scr_local_1_q0 in_data 0 16 }  { init_col_scr_local_1_address1 MemPortADDR2 1 6 }  { init_col_scr_local_1_ce1 MemPortCE2 1 1 }  { init_col_scr_local_1_we1 MemPortWE2 1 1 }  { init_col_scr_local_1_d1 MemPortDIN2 1 16 } } }
	init_col_scr_local_2 { ap_memory {  { init_col_scr_local_2_address0 mem_address 1 6 }  { init_col_scr_local_2_ce0 mem_ce 1 1 }  { init_col_scr_local_2_we0 mem_we 1 1 }  { init_col_scr_local_2_d0 mem_din 1 16 }  { init_col_scr_local_2_q0 in_data 0 16 }  { init_col_scr_local_2_address1 MemPortADDR2 1 6 }  { init_col_scr_local_2_ce1 MemPortCE2 1 1 }  { init_col_scr_local_2_we1 MemPortWE2 1 1 }  { init_col_scr_local_2_d1 MemPortDIN2 1 16 } } }
	init_col_scr { ap_memory {  { init_col_scr_address0 mem_address 1 8 }  { init_col_scr_ce0 mem_ce 1 1 }  { init_col_scr_q0 in_data 0 48 }  { init_col_scr_address1 MemPortADDR2 1 8 }  { init_col_scr_ce1 MemPortCE2 1 1 }  { init_col_scr_q1 in_data 0 48 } } }
	idx { ap_none {  { idx in_data 0 8 } } }
}
