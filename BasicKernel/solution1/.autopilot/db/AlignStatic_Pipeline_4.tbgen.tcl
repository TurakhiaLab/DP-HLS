set moduleName AlignStatic_Pipeline_4
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
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {AlignStatic_Pipeline_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ init_row_score int 48 regular {array 256 { 0 1 } 1 1 }  }
	{ preserved_row_buffer int 16 regular {array 256 { 0 1 } 1 1 }  }
	{ preserved_row_buffer_3 int 16 regular {array 256 { 0 1 } 1 1 }  }
	{ preserved_row_buffer_4 int 16 regular {array 256 { 0 1 } 1 1 }  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "init_row_score", "interface" : "memory", "bitwidth" : 48, "direction" : "READWRITE"} , 
 	{ "Name" : "preserved_row_buffer", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "preserved_row_buffer_3", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "preserved_row_buffer_4", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 34
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ init_row_score_address0 sc_out sc_lv 8 signal 0 } 
	{ init_row_score_ce0 sc_out sc_logic 1 signal 0 } 
	{ init_row_score_we0 sc_out sc_logic 1 signal 0 } 
	{ init_row_score_d0 sc_out sc_lv 48 signal 0 } 
	{ init_row_score_address1 sc_out sc_lv 8 signal 0 } 
	{ init_row_score_ce1 sc_out sc_logic 1 signal 0 } 
	{ init_row_score_q1 sc_in sc_lv 48 signal 0 } 
	{ preserved_row_buffer_address0 sc_out sc_lv 8 signal 1 } 
	{ preserved_row_buffer_ce0 sc_out sc_logic 1 signal 1 } 
	{ preserved_row_buffer_we0 sc_out sc_logic 1 signal 1 } 
	{ preserved_row_buffer_d0 sc_out sc_lv 16 signal 1 } 
	{ preserved_row_buffer_address1 sc_out sc_lv 8 signal 1 } 
	{ preserved_row_buffer_ce1 sc_out sc_logic 1 signal 1 } 
	{ preserved_row_buffer_q1 sc_in sc_lv 16 signal 1 } 
	{ preserved_row_buffer_3_address0 sc_out sc_lv 8 signal 2 } 
	{ preserved_row_buffer_3_ce0 sc_out sc_logic 1 signal 2 } 
	{ preserved_row_buffer_3_we0 sc_out sc_logic 1 signal 2 } 
	{ preserved_row_buffer_3_d0 sc_out sc_lv 16 signal 2 } 
	{ preserved_row_buffer_3_address1 sc_out sc_lv 8 signal 2 } 
	{ preserved_row_buffer_3_ce1 sc_out sc_logic 1 signal 2 } 
	{ preserved_row_buffer_3_q1 sc_in sc_lv 16 signal 2 } 
	{ preserved_row_buffer_4_address0 sc_out sc_lv 8 signal 3 } 
	{ preserved_row_buffer_4_ce0 sc_out sc_logic 1 signal 3 } 
	{ preserved_row_buffer_4_we0 sc_out sc_logic 1 signal 3 } 
	{ preserved_row_buffer_4_d0 sc_out sc_lv 16 signal 3 } 
	{ preserved_row_buffer_4_address1 sc_out sc_lv 8 signal 3 } 
	{ preserved_row_buffer_4_ce1 sc_out sc_logic 1 signal 3 } 
	{ preserved_row_buffer_4_q1 sc_in sc_lv 16 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "init_row_score_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "init_row_score", "role": "address0" }} , 
 	{ "name": "init_row_score_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_row_score", "role": "ce0" }} , 
 	{ "name": "init_row_score_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_row_score", "role": "we0" }} , 
 	{ "name": "init_row_score_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "init_row_score", "role": "d0" }} , 
 	{ "name": "init_row_score_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "init_row_score", "role": "address1" }} , 
 	{ "name": "init_row_score_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "init_row_score", "role": "ce1" }} , 
 	{ "name": "init_row_score_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":48, "type": "signal", "bundle":{"name": "init_row_score", "role": "q1" }} , 
 	{ "name": "preserved_row_buffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "preserved_row_buffer", "role": "address0" }} , 
 	{ "name": "preserved_row_buffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "preserved_row_buffer", "role": "ce0" }} , 
 	{ "name": "preserved_row_buffer_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "preserved_row_buffer", "role": "we0" }} , 
 	{ "name": "preserved_row_buffer_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "preserved_row_buffer", "role": "d0" }} , 
 	{ "name": "preserved_row_buffer_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "preserved_row_buffer", "role": "address1" }} , 
 	{ "name": "preserved_row_buffer_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "preserved_row_buffer", "role": "ce1" }} , 
 	{ "name": "preserved_row_buffer_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "preserved_row_buffer", "role": "q1" }} , 
 	{ "name": "preserved_row_buffer_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "preserved_row_buffer_3", "role": "address0" }} , 
 	{ "name": "preserved_row_buffer_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "preserved_row_buffer_3", "role": "ce0" }} , 
 	{ "name": "preserved_row_buffer_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "preserved_row_buffer_3", "role": "we0" }} , 
 	{ "name": "preserved_row_buffer_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "preserved_row_buffer_3", "role": "d0" }} , 
 	{ "name": "preserved_row_buffer_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "preserved_row_buffer_3", "role": "address1" }} , 
 	{ "name": "preserved_row_buffer_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "preserved_row_buffer_3", "role": "ce1" }} , 
 	{ "name": "preserved_row_buffer_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "preserved_row_buffer_3", "role": "q1" }} , 
 	{ "name": "preserved_row_buffer_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "preserved_row_buffer_4", "role": "address0" }} , 
 	{ "name": "preserved_row_buffer_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "preserved_row_buffer_4", "role": "ce0" }} , 
 	{ "name": "preserved_row_buffer_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "preserved_row_buffer_4", "role": "we0" }} , 
 	{ "name": "preserved_row_buffer_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "preserved_row_buffer_4", "role": "d0" }} , 
 	{ "name": "preserved_row_buffer_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "preserved_row_buffer_4", "role": "address1" }} , 
 	{ "name": "preserved_row_buffer_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "preserved_row_buffer_4", "role": "ce1" }} , 
 	{ "name": "preserved_row_buffer_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "preserved_row_buffer_4", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "AlignStatic_Pipeline_4",
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
			{"Name" : "init_row_score", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "preserved_row_buffer", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "preserved_row_buffer_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "preserved_row_buffer_4", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	AlignStatic_Pipeline_4 {
		init_row_score {Type IO LastRead 0 FirstWrite 1}
		preserved_row_buffer {Type IO LastRead 0 FirstWrite 1}
		preserved_row_buffer_3 {Type IO LastRead 0 FirstWrite 1}
		preserved_row_buffer_4 {Type IO LastRead 0 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "258", "Max" : "258"}
	, {"Name" : "Interval", "Min" : "258", "Max" : "258"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	init_row_score { ap_memory {  { init_row_score_address0 mem_address 1 8 }  { init_row_score_ce0 mem_ce 1 1 }  { init_row_score_we0 mem_we 1 1 }  { init_row_score_d0 mem_din 1 48 }  { init_row_score_address1 MemPortADDR2 1 8 }  { init_row_score_ce1 MemPortCE2 1 1 }  { init_row_score_q1 in_data 0 48 } } }
	preserved_row_buffer { ap_memory {  { preserved_row_buffer_address0 mem_address 1 8 }  { preserved_row_buffer_ce0 mem_ce 1 1 }  { preserved_row_buffer_we0 mem_we 1 1 }  { preserved_row_buffer_d0 mem_din 1 16 }  { preserved_row_buffer_address1 MemPortADDR2 1 8 }  { preserved_row_buffer_ce1 MemPortCE2 1 1 }  { preserved_row_buffer_q1 in_data 0 16 } } }
	preserved_row_buffer_3 { ap_memory {  { preserved_row_buffer_3_address0 mem_address 1 8 }  { preserved_row_buffer_3_ce0 mem_ce 1 1 }  { preserved_row_buffer_3_we0 mem_we 1 1 }  { preserved_row_buffer_3_d0 mem_din 1 16 }  { preserved_row_buffer_3_address1 MemPortADDR2 1 8 }  { preserved_row_buffer_3_ce1 MemPortCE2 1 1 }  { preserved_row_buffer_3_q1 in_data 0 16 } } }
	preserved_row_buffer_4 { ap_memory {  { preserved_row_buffer_4_address0 mem_address 1 8 }  { preserved_row_buffer_4_ce0 mem_ce 1 1 }  { preserved_row_buffer_4_we0 mem_we 1 1 }  { preserved_row_buffer_4_d0 mem_din 1 16 }  { preserved_row_buffer_4_address1 MemPortADDR2 1 8 }  { preserved_row_buffer_4_ce1 MemPortCE2 1 1 }  { preserved_row_buffer_4_q1 in_data 0 16 } } }
}
