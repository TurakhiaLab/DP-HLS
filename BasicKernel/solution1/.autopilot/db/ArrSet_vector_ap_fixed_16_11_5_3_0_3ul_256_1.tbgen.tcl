set moduleName ArrSet_vector_ap_fixed_16_11_5_3_0_3ul_256_1
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
set C_modelName {ArrSet<vector<ap_fixed<16, 11, 5, 3, 0>, 3ul>, 256>.1}
set C_modelType { void 0 }
set C_modelArgList {
	{ arr int 48 regular {array 256 { 2 2 } 1 1 }  }
	{ layer int 2 regular  }
	{ val_val int 46 regular  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "arr", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "layer", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "val_val", "interface" : "wire", "bitwidth" : 46, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ arr_address0 sc_out sc_lv 8 signal 0 } 
	{ arr_ce0 sc_out sc_logic 1 signal 0 } 
	{ arr_we0 sc_out sc_logic 1 signal 0 } 
	{ arr_d0 sc_out sc_lv 48 signal 0 } 
	{ arr_q0 sc_in sc_lv 48 signal 0 } 
	{ arr_address1 sc_out sc_lv 8 signal 0 } 
	{ arr_ce1 sc_out sc_logic 1 signal 0 } 
	{ arr_we1 sc_out sc_logic 1 signal 0 } 
	{ arr_d1 sc_out sc_lv 48 signal 0 } 
	{ arr_q1 sc_in sc_lv 48 signal 0 } 
	{ layer sc_in sc_lv 2 signal 1 } 
	{ val_val sc_in sc_lv 46 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "arr_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arr", "role": "address0" }} , 
 	{ "name": "arr_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr", "role": "ce0" }} , 
 	{ "name": "arr_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr", "role": "we0" }} , 
 	{ "name": "arr_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "arr", "role": "d0" }} , 
 	{ "name": "arr_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "arr", "role": "q0" }} , 
 	{ "name": "arr_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "arr", "role": "address1" }} , 
 	{ "name": "arr_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr", "role": "ce1" }} , 
 	{ "name": "arr_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "arr", "role": "we1" }} , 
 	{ "name": "arr_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "arr", "role": "d1" }} , 
 	{ "name": "arr_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "arr", "role": "q1" }} , 
 	{ "name": "layer", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "layer", "role": "default" }} , 
 	{ "name": "val_val", "direction": "in", "datatype": "sc_lv", "bitwidth":46, "type": "signal", "bundle":{"name": "val_val", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "ArrSet_vector_ap_fixed_16_11_5_3_0_3ul_256_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "255", "EstimateLatencyMax" : "255",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "arr", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "layer", "Type" : "None", "Direction" : "I"},
			{"Name" : "val_val", "Type" : "None", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	ArrSet_vector_ap_fixed_16_11_5_3_0_3ul_256_1 {
		arr {Type IO LastRead 128 FirstWrite 128}
		layer {Type I LastRead 127 FirstWrite -1}
		val_val {Type I LastRead 127 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "255", "Max" : "255"}
	, {"Name" : "Interval", "Min" : "255", "Max" : "255"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	arr { ap_memory {  { arr_address0 mem_address 1 8 }  { arr_ce0 mem_ce 1 1 }  { arr_we0 mem_we 1 1 }  { arr_d0 mem_din 1 48 }  { arr_q0 in_data 0 48 }  { arr_address1 MemPortADDR2 1 8 }  { arr_ce1 MemPortCE2 1 1 }  { arr_we1 MemPortWE2 1 1 }  { arr_d1 MemPortDIN2 1 48 }  { arr_q1 in_data 0 48 } } }
	layer { ap_none {  { layer in_data 0 2 } } }
	val_val { ap_none {  { val_val in_data 0 46 } } }
}
