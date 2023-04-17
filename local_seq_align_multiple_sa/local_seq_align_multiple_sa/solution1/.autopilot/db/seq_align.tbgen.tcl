set moduleName seq_align
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
set C_modelName {seq_align}
set C_modelType { int 9 }
set C_modelArgList {
	{ chunk1 int 2 regular {array 1024 { 1 3 } 1 1 }  }
	{ ref1 int 2 regular {array 1024 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "chunk1", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ref1", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 9} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ chunk1_address0 sc_out sc_lv 10 signal 0 } 
	{ chunk1_ce0 sc_out sc_logic 1 signal 0 } 
	{ chunk1_q0 sc_in sc_lv 2 signal 0 } 
	{ ref1_address0 sc_out sc_lv 10 signal 1 } 
	{ ref1_ce0 sc_out sc_logic 1 signal 1 } 
	{ ref1_q0 sc_in sc_lv 2 signal 1 } 
	{ ap_return sc_out sc_lv 9 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "chunk1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "chunk1", "role": "address0" }} , 
 	{ "name": "chunk1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "chunk1", "role": "ce0" }} , 
 	{ "name": "chunk1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "chunk1", "role": "q0" }} , 
 	{ "name": "ref1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ref1", "role": "address0" }} , 
 	{ "name": "ref1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ref1", "role": "ce0" }} , 
 	{ "name": "ref1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ref1", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "22", "24", "26", "28", "30"],
		"CDFG" : "seq_align",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1082351", "EstimateLatencyMax" : "1082351",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "chunk1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "30", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_809", "Port" : "chunk1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "ref1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "28", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771", "Port" : "ref1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.dp_matrix_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.last_pe_score_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.last_pe_scoreIx_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_3_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_4_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_5_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_6_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_7_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_8_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_9_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_10_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_11_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_12_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_13_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_14_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_15_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2_fu_623", "Parent" : "0", "Child" : ["21"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1048578", "EstimateLatencyMax" : "1048578",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dp_matrix_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_78_1_VITIS_LOOP_79_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2_fu_623.flow_control_loop_pipe_sequential_init_U", "Parent" : "20"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3_fu_629", "Parent" : "0", "Child" : ["23"],
		"CDFG" : "seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "98", "EstimateLatencyMax" : "98",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out16", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out17", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out18", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out19", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out20", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out21", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out22", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out23", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out24", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out25", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out26", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out27", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out28", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out29", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out30", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out31", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out32", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out33", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out34", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out35", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out36", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out37", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out38", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out39", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out40", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out41", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out42", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out43", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out44", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out45", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out46", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out47", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out48", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out49", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out50", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out51", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out52", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out53", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out54", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out55", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out56", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out57", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out58", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out59", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out60", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out61", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out62", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "local_dpmem_loop_VITIS_LOOP_86_3", "PipelineType" : "NotSupport"}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3_fu_629.flow_control_loop_pipe_sequential_init_U", "Parent" : "22"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4_fu_696", "Parent" : "0", "Child" : ["25"],
		"CDFG" : "seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4",
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
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out16", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out17", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out18", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out19", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out20", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out21", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out22", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out23", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out24", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out25", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out26", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out27", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out28", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out29", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out30", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out31", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out32", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out33", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out34", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out35", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out36", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out37", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out38", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out39", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out40", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out41", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out42", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out43", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out44", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out45", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out46", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out47", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out48", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out49", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out50", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out51", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out52", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out53", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out54", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out55", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out56", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out57", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out58", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out59", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out60", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out61", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out62", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "local_Ixmem_loop_VITIS_LOOP_93_4", "PipelineType" : "NotSupport"}]},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4_fu_696.flow_control_loop_pipe_sequential_init_U", "Parent" : "24"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_100_5_fu_763", "Parent" : "0", "Child" : ["27"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_100_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1026", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "last_pe_score_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "last_pe_scoreIx_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_100_5", "PipelineType" : "NotSupport"}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_100_5_fu_763.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771", "Parent" : "0", "Child" : ["29"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_117_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1026", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "local_reference_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "ref1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809", "Parent" : "0", "Child" : ["31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63"],
		"CDFG" : "seq_align_Pipeline_kernel_kernel1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33768", "EstimateLatencyMax" : "33768",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "p_reload543", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload542", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload541", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload540", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload539", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload538", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload537", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload536", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload535", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload534", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload533", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload532", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload531", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload530", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload529", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload528", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload527", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload526", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload525", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload524", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload523", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload522", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload521", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload520", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload519", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload518", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload517", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload516", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload515", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload514", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload513", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload481", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload512", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload511", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload510", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload509", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload508", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload507", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload506", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload505", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload504", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload503", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload502", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload501", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload500", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload499", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload498", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload497", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload496", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload495", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload494", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload493", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload492", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload491", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload490", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload489", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload488", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload487", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload486", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload485", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload484", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload483", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload482", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload385", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload384", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload383", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload382", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload381", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload380", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload379", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload378", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload377", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload376", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload375", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload374", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload373", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload372", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload371", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload370", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload369", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload368", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload367", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload366", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload365", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload364", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload363", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload362", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload361", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload360", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload359", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload358", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload357", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload356", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload355", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload416", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload415", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload414", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload413", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload412", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload411", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload410", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload409", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload408", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload407", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload406", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload405", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload404", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload403", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload402", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload401", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload400", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload399", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload398", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload397", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload396", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload395", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload394", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload393", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload392", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload391", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload390", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload389", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload388", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload387", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_reload386", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_reference_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dp_matrix_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "last_pe_score_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "last_pe_scoreIx_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "chunk1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "kernel_kernel1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U147", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U148", "Parent" : "30"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U149", "Parent" : "30"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U150", "Parent" : "30"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U151", "Parent" : "30"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U152", "Parent" : "30"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U153", "Parent" : "30"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U154", "Parent" : "30"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U155", "Parent" : "30"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U156", "Parent" : "30"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U157", "Parent" : "30"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U158", "Parent" : "30"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U159", "Parent" : "30"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U160", "Parent" : "30"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U161", "Parent" : "30"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U162", "Parent" : "30"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U163", "Parent" : "30"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U164", "Parent" : "30"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U165", "Parent" : "30"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U166", "Parent" : "30"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U167", "Parent" : "30"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U168", "Parent" : "30"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U169", "Parent" : "30"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U170", "Parent" : "30"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U171", "Parent" : "30"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U172", "Parent" : "30"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U173", "Parent" : "30"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U174", "Parent" : "30"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U175", "Parent" : "30"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U176", "Parent" : "30"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U177", "Parent" : "30"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U178", "Parent" : "30"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_809.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"}]}


set ArgLastReadFirstWriteLatency {
	seq_align {
		chunk1 {Type I LastRead 1 FirstWrite -1}
		ref1 {Type I LastRead 0 FirstWrite -1}}
	seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2 {
		dp_matrix_V {Type O LastRead -1 FirstWrite 2}}
	seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3 {
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		p_out2 {Type O LastRead -1 FirstWrite 0}
		p_out3 {Type O LastRead -1 FirstWrite 0}
		p_out4 {Type O LastRead -1 FirstWrite 0}
		p_out5 {Type O LastRead -1 FirstWrite 0}
		p_out6 {Type O LastRead -1 FirstWrite 0}
		p_out7 {Type O LastRead -1 FirstWrite 0}
		p_out8 {Type O LastRead -1 FirstWrite 0}
		p_out9 {Type O LastRead -1 FirstWrite 0}
		p_out10 {Type O LastRead -1 FirstWrite 0}
		p_out11 {Type O LastRead -1 FirstWrite 0}
		p_out12 {Type O LastRead -1 FirstWrite 0}
		p_out13 {Type O LastRead -1 FirstWrite 0}
		p_out14 {Type O LastRead -1 FirstWrite 0}
		p_out15 {Type O LastRead -1 FirstWrite 0}
		p_out16 {Type O LastRead -1 FirstWrite 0}
		p_out17 {Type O LastRead -1 FirstWrite 0}
		p_out18 {Type O LastRead -1 FirstWrite 0}
		p_out19 {Type O LastRead -1 FirstWrite 0}
		p_out20 {Type O LastRead -1 FirstWrite 0}
		p_out21 {Type O LastRead -1 FirstWrite 0}
		p_out22 {Type O LastRead -1 FirstWrite 0}
		p_out23 {Type O LastRead -1 FirstWrite 0}
		p_out24 {Type O LastRead -1 FirstWrite 0}
		p_out25 {Type O LastRead -1 FirstWrite 0}
		p_out26 {Type O LastRead -1 FirstWrite 0}
		p_out27 {Type O LastRead -1 FirstWrite 0}
		p_out28 {Type O LastRead -1 FirstWrite 0}
		p_out29 {Type O LastRead -1 FirstWrite 0}
		p_out30 {Type O LastRead -1 FirstWrite 0}
		p_out31 {Type O LastRead -1 FirstWrite 0}
		p_out32 {Type O LastRead -1 FirstWrite 0}
		p_out33 {Type O LastRead -1 FirstWrite 0}
		p_out34 {Type O LastRead -1 FirstWrite 0}
		p_out35 {Type O LastRead -1 FirstWrite 0}
		p_out36 {Type O LastRead -1 FirstWrite 0}
		p_out37 {Type O LastRead -1 FirstWrite 0}
		p_out38 {Type O LastRead -1 FirstWrite 0}
		p_out39 {Type O LastRead -1 FirstWrite 0}
		p_out40 {Type O LastRead -1 FirstWrite 0}
		p_out41 {Type O LastRead -1 FirstWrite 0}
		p_out42 {Type O LastRead -1 FirstWrite 0}
		p_out43 {Type O LastRead -1 FirstWrite 0}
		p_out44 {Type O LastRead -1 FirstWrite 0}
		p_out45 {Type O LastRead -1 FirstWrite 0}
		p_out46 {Type O LastRead -1 FirstWrite 0}
		p_out47 {Type O LastRead -1 FirstWrite 0}
		p_out48 {Type O LastRead -1 FirstWrite 0}
		p_out49 {Type O LastRead -1 FirstWrite 0}
		p_out50 {Type O LastRead -1 FirstWrite 0}
		p_out51 {Type O LastRead -1 FirstWrite 0}
		p_out52 {Type O LastRead -1 FirstWrite 0}
		p_out53 {Type O LastRead -1 FirstWrite 0}
		p_out54 {Type O LastRead -1 FirstWrite 0}
		p_out55 {Type O LastRead -1 FirstWrite 0}
		p_out56 {Type O LastRead -1 FirstWrite 0}
		p_out57 {Type O LastRead -1 FirstWrite 0}
		p_out58 {Type O LastRead -1 FirstWrite 0}
		p_out59 {Type O LastRead -1 FirstWrite 0}
		p_out60 {Type O LastRead -1 FirstWrite 0}
		p_out61 {Type O LastRead -1 FirstWrite 0}
		p_out62 {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4 {
		p_out {Type O LastRead -1 FirstWrite 0}
		p_out1 {Type O LastRead -1 FirstWrite 0}
		p_out2 {Type O LastRead -1 FirstWrite 0}
		p_out3 {Type O LastRead -1 FirstWrite 0}
		p_out4 {Type O LastRead -1 FirstWrite 0}
		p_out5 {Type O LastRead -1 FirstWrite 0}
		p_out6 {Type O LastRead -1 FirstWrite 0}
		p_out7 {Type O LastRead -1 FirstWrite 0}
		p_out8 {Type O LastRead -1 FirstWrite 0}
		p_out9 {Type O LastRead -1 FirstWrite 0}
		p_out10 {Type O LastRead -1 FirstWrite 0}
		p_out11 {Type O LastRead -1 FirstWrite 0}
		p_out12 {Type O LastRead -1 FirstWrite 0}
		p_out13 {Type O LastRead -1 FirstWrite 0}
		p_out14 {Type O LastRead -1 FirstWrite 0}
		p_out15 {Type O LastRead -1 FirstWrite 0}
		p_out16 {Type O LastRead -1 FirstWrite 0}
		p_out17 {Type O LastRead -1 FirstWrite 0}
		p_out18 {Type O LastRead -1 FirstWrite 0}
		p_out19 {Type O LastRead -1 FirstWrite 0}
		p_out20 {Type O LastRead -1 FirstWrite 0}
		p_out21 {Type O LastRead -1 FirstWrite 0}
		p_out22 {Type O LastRead -1 FirstWrite 0}
		p_out23 {Type O LastRead -1 FirstWrite 0}
		p_out24 {Type O LastRead -1 FirstWrite 0}
		p_out25 {Type O LastRead -1 FirstWrite 0}
		p_out26 {Type O LastRead -1 FirstWrite 0}
		p_out27 {Type O LastRead -1 FirstWrite 0}
		p_out28 {Type O LastRead -1 FirstWrite 0}
		p_out29 {Type O LastRead -1 FirstWrite 0}
		p_out30 {Type O LastRead -1 FirstWrite 0}
		p_out31 {Type O LastRead -1 FirstWrite 0}
		p_out32 {Type O LastRead -1 FirstWrite 0}
		p_out33 {Type O LastRead -1 FirstWrite 0}
		p_out34 {Type O LastRead -1 FirstWrite 0}
		p_out35 {Type O LastRead -1 FirstWrite 0}
		p_out36 {Type O LastRead -1 FirstWrite 0}
		p_out37 {Type O LastRead -1 FirstWrite 0}
		p_out38 {Type O LastRead -1 FirstWrite 0}
		p_out39 {Type O LastRead -1 FirstWrite 0}
		p_out40 {Type O LastRead -1 FirstWrite 0}
		p_out41 {Type O LastRead -1 FirstWrite 0}
		p_out42 {Type O LastRead -1 FirstWrite 0}
		p_out43 {Type O LastRead -1 FirstWrite 0}
		p_out44 {Type O LastRead -1 FirstWrite 0}
		p_out45 {Type O LastRead -1 FirstWrite 0}
		p_out46 {Type O LastRead -1 FirstWrite 0}
		p_out47 {Type O LastRead -1 FirstWrite 0}
		p_out48 {Type O LastRead -1 FirstWrite 0}
		p_out49 {Type O LastRead -1 FirstWrite 0}
		p_out50 {Type O LastRead -1 FirstWrite 0}
		p_out51 {Type O LastRead -1 FirstWrite 0}
		p_out52 {Type O LastRead -1 FirstWrite 0}
		p_out53 {Type O LastRead -1 FirstWrite 0}
		p_out54 {Type O LastRead -1 FirstWrite 0}
		p_out55 {Type O LastRead -1 FirstWrite 0}
		p_out56 {Type O LastRead -1 FirstWrite 0}
		p_out57 {Type O LastRead -1 FirstWrite 0}
		p_out58 {Type O LastRead -1 FirstWrite 0}
		p_out59 {Type O LastRead -1 FirstWrite 0}
		p_out60 {Type O LastRead -1 FirstWrite 0}
		p_out61 {Type O LastRead -1 FirstWrite 0}
		p_out62 {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_100_5 {
		last_pe_score_V {Type O LastRead -1 FirstWrite 0}
		last_pe_scoreIx_V {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_117_6 {
		local_reference_V {Type O LastRead -1 FirstWrite 1}
		local_reference_V_1 {Type O LastRead -1 FirstWrite 1}
		local_reference_V_2 {Type O LastRead -1 FirstWrite 1}
		local_reference_V_3 {Type O LastRead -1 FirstWrite 1}
		local_reference_V_4 {Type O LastRead -1 FirstWrite 1}
		local_reference_V_5 {Type O LastRead -1 FirstWrite 1}
		local_reference_V_6 {Type O LastRead -1 FirstWrite 1}
		local_reference_V_7 {Type O LastRead -1 FirstWrite 1}
		local_reference_V_8 {Type O LastRead -1 FirstWrite 1}
		local_reference_V_9 {Type O LastRead -1 FirstWrite 1}
		local_reference_V_10 {Type O LastRead -1 FirstWrite 1}
		local_reference_V_11 {Type O LastRead -1 FirstWrite 1}
		local_reference_V_12 {Type O LastRead -1 FirstWrite 1}
		local_reference_V_13 {Type O LastRead -1 FirstWrite 1}
		local_reference_V_14 {Type O LastRead -1 FirstWrite 1}
		local_reference_V_15 {Type O LastRead -1 FirstWrite 1}
		ref1 {Type I LastRead 0 FirstWrite -1}}
	seq_align_Pipeline_kernel_kernel1 {
		p_reload543 {Type I LastRead 0 FirstWrite -1}
		p_reload542 {Type I LastRead 0 FirstWrite -1}
		p_reload541 {Type I LastRead 0 FirstWrite -1}
		p_reload540 {Type I LastRead 0 FirstWrite -1}
		p_reload539 {Type I LastRead 0 FirstWrite -1}
		p_reload538 {Type I LastRead 0 FirstWrite -1}
		p_reload537 {Type I LastRead 0 FirstWrite -1}
		p_reload536 {Type I LastRead 0 FirstWrite -1}
		p_reload535 {Type I LastRead 0 FirstWrite -1}
		p_reload534 {Type I LastRead 0 FirstWrite -1}
		p_reload533 {Type I LastRead 0 FirstWrite -1}
		p_reload532 {Type I LastRead 0 FirstWrite -1}
		p_reload531 {Type I LastRead 0 FirstWrite -1}
		p_reload530 {Type I LastRead 0 FirstWrite -1}
		p_reload529 {Type I LastRead 0 FirstWrite -1}
		p_reload528 {Type I LastRead 0 FirstWrite -1}
		p_reload527 {Type I LastRead 0 FirstWrite -1}
		p_reload526 {Type I LastRead 0 FirstWrite -1}
		p_reload525 {Type I LastRead 0 FirstWrite -1}
		p_reload524 {Type I LastRead 0 FirstWrite -1}
		p_reload523 {Type I LastRead 0 FirstWrite -1}
		p_reload522 {Type I LastRead 0 FirstWrite -1}
		p_reload521 {Type I LastRead 0 FirstWrite -1}
		p_reload520 {Type I LastRead 0 FirstWrite -1}
		p_reload519 {Type I LastRead 0 FirstWrite -1}
		p_reload518 {Type I LastRead 0 FirstWrite -1}
		p_reload517 {Type I LastRead 0 FirstWrite -1}
		p_reload516 {Type I LastRead 0 FirstWrite -1}
		p_reload515 {Type I LastRead 0 FirstWrite -1}
		p_reload514 {Type I LastRead 0 FirstWrite -1}
		p_reload513 {Type I LastRead 0 FirstWrite -1}
		p_reload481 {Type I LastRead 0 FirstWrite -1}
		p_reload512 {Type I LastRead 0 FirstWrite -1}
		p_reload511 {Type I LastRead 0 FirstWrite -1}
		p_reload510 {Type I LastRead 0 FirstWrite -1}
		p_reload509 {Type I LastRead 0 FirstWrite -1}
		p_reload508 {Type I LastRead 0 FirstWrite -1}
		p_reload507 {Type I LastRead 0 FirstWrite -1}
		p_reload506 {Type I LastRead 0 FirstWrite -1}
		p_reload505 {Type I LastRead 0 FirstWrite -1}
		p_reload504 {Type I LastRead 0 FirstWrite -1}
		p_reload503 {Type I LastRead 0 FirstWrite -1}
		p_reload502 {Type I LastRead 0 FirstWrite -1}
		p_reload501 {Type I LastRead 0 FirstWrite -1}
		p_reload500 {Type I LastRead 0 FirstWrite -1}
		p_reload499 {Type I LastRead 0 FirstWrite -1}
		p_reload498 {Type I LastRead 0 FirstWrite -1}
		p_reload497 {Type I LastRead 0 FirstWrite -1}
		p_reload496 {Type I LastRead 0 FirstWrite -1}
		p_reload495 {Type I LastRead 0 FirstWrite -1}
		p_reload494 {Type I LastRead 0 FirstWrite -1}
		p_reload493 {Type I LastRead 0 FirstWrite -1}
		p_reload492 {Type I LastRead 0 FirstWrite -1}
		p_reload491 {Type I LastRead 0 FirstWrite -1}
		p_reload490 {Type I LastRead 0 FirstWrite -1}
		p_reload489 {Type I LastRead 0 FirstWrite -1}
		p_reload488 {Type I LastRead 0 FirstWrite -1}
		p_reload487 {Type I LastRead 0 FirstWrite -1}
		p_reload486 {Type I LastRead 0 FirstWrite -1}
		p_reload485 {Type I LastRead 0 FirstWrite -1}
		p_reload484 {Type I LastRead 0 FirstWrite -1}
		p_reload483 {Type I LastRead 0 FirstWrite -1}
		p_reload482 {Type I LastRead 0 FirstWrite -1}
		p_reload {Type I LastRead 0 FirstWrite -1}
		p_reload385 {Type I LastRead 0 FirstWrite -1}
		p_reload384 {Type I LastRead 0 FirstWrite -1}
		p_reload383 {Type I LastRead 0 FirstWrite -1}
		p_reload382 {Type I LastRead 0 FirstWrite -1}
		p_reload381 {Type I LastRead 0 FirstWrite -1}
		p_reload380 {Type I LastRead 0 FirstWrite -1}
		p_reload379 {Type I LastRead 0 FirstWrite -1}
		p_reload378 {Type I LastRead 0 FirstWrite -1}
		p_reload377 {Type I LastRead 0 FirstWrite -1}
		p_reload376 {Type I LastRead 0 FirstWrite -1}
		p_reload375 {Type I LastRead 0 FirstWrite -1}
		p_reload374 {Type I LastRead 0 FirstWrite -1}
		p_reload373 {Type I LastRead 0 FirstWrite -1}
		p_reload372 {Type I LastRead 0 FirstWrite -1}
		p_reload371 {Type I LastRead 0 FirstWrite -1}
		p_reload370 {Type I LastRead 0 FirstWrite -1}
		p_reload369 {Type I LastRead 0 FirstWrite -1}
		p_reload368 {Type I LastRead 0 FirstWrite -1}
		p_reload367 {Type I LastRead 0 FirstWrite -1}
		p_reload366 {Type I LastRead 0 FirstWrite -1}
		p_reload365 {Type I LastRead 0 FirstWrite -1}
		p_reload364 {Type I LastRead 0 FirstWrite -1}
		p_reload363 {Type I LastRead 0 FirstWrite -1}
		p_reload362 {Type I LastRead 0 FirstWrite -1}
		p_reload361 {Type I LastRead 0 FirstWrite -1}
		p_reload360 {Type I LastRead 0 FirstWrite -1}
		p_reload359 {Type I LastRead 0 FirstWrite -1}
		p_reload358 {Type I LastRead 0 FirstWrite -1}
		p_reload357 {Type I LastRead 0 FirstWrite -1}
		p_reload356 {Type I LastRead 0 FirstWrite -1}
		p_reload355 {Type I LastRead 0 FirstWrite -1}
		p_reload416 {Type I LastRead 0 FirstWrite -1}
		p_reload415 {Type I LastRead 0 FirstWrite -1}
		p_reload414 {Type I LastRead 0 FirstWrite -1}
		p_reload413 {Type I LastRead 0 FirstWrite -1}
		p_reload412 {Type I LastRead 0 FirstWrite -1}
		p_reload411 {Type I LastRead 0 FirstWrite -1}
		p_reload410 {Type I LastRead 0 FirstWrite -1}
		p_reload409 {Type I LastRead 0 FirstWrite -1}
		p_reload408 {Type I LastRead 0 FirstWrite -1}
		p_reload407 {Type I LastRead 0 FirstWrite -1}
		p_reload406 {Type I LastRead 0 FirstWrite -1}
		p_reload405 {Type I LastRead 0 FirstWrite -1}
		p_reload404 {Type I LastRead 0 FirstWrite -1}
		p_reload403 {Type I LastRead 0 FirstWrite -1}
		p_reload402 {Type I LastRead 0 FirstWrite -1}
		p_reload401 {Type I LastRead 0 FirstWrite -1}
		p_reload400 {Type I LastRead 0 FirstWrite -1}
		p_reload399 {Type I LastRead 0 FirstWrite -1}
		p_reload398 {Type I LastRead 0 FirstWrite -1}
		p_reload397 {Type I LastRead 0 FirstWrite -1}
		p_reload396 {Type I LastRead 0 FirstWrite -1}
		p_reload395 {Type I LastRead 0 FirstWrite -1}
		p_reload394 {Type I LastRead 0 FirstWrite -1}
		p_reload393 {Type I LastRead 0 FirstWrite -1}
		p_reload392 {Type I LastRead 0 FirstWrite -1}
		p_reload391 {Type I LastRead 0 FirstWrite -1}
		p_reload390 {Type I LastRead 0 FirstWrite -1}
		p_reload389 {Type I LastRead 0 FirstWrite -1}
		p_reload388 {Type I LastRead 0 FirstWrite -1}
		p_reload387 {Type I LastRead 0 FirstWrite -1}
		p_reload386 {Type I LastRead 0 FirstWrite -1}
		local_reference_V {Type I LastRead 3 FirstWrite -1}
		local_reference_V_1 {Type I LastRead 3 FirstWrite -1}
		local_reference_V_2 {Type I LastRead 3 FirstWrite -1}
		local_reference_V_3 {Type I LastRead 3 FirstWrite -1}
		local_reference_V_4 {Type I LastRead 3 FirstWrite -1}
		local_reference_V_5 {Type I LastRead 3 FirstWrite -1}
		local_reference_V_6 {Type I LastRead 3 FirstWrite -1}
		local_reference_V_7 {Type I LastRead 3 FirstWrite -1}
		local_reference_V_8 {Type I LastRead 3 FirstWrite -1}
		local_reference_V_9 {Type I LastRead 3 FirstWrite -1}
		local_reference_V_10 {Type I LastRead 3 FirstWrite -1}
		local_reference_V_11 {Type I LastRead 3 FirstWrite -1}
		local_reference_V_12 {Type I LastRead 3 FirstWrite -1}
		local_reference_V_13 {Type I LastRead 3 FirstWrite -1}
		local_reference_V_14 {Type I LastRead 3 FirstWrite -1}
		local_reference_V_15 {Type I LastRead 3 FirstWrite -1}
		dp_matrix_V {Type O LastRead -1 FirstWrite 4}
		last_pe_score_V {Type IO LastRead 1 FirstWrite 8}
		last_pe_scoreIx_V {Type IO LastRead 1 FirstWrite 7}
		chunk1 {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1082351", "Max" : "1082351"}
	, {"Name" : "Interval", "Min" : "1082351", "Max" : "1082351"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	chunk1 { ap_memory {  { chunk1_address0 mem_address 1 10 }  { chunk1_ce0 mem_ce 1 1 }  { chunk1_q0 mem_dout 0 2 } } }
	ref1 { ap_memory {  { ref1_address0 mem_address 1 10 }  { ref1_ce0 mem_ce 1 1 }  { ref1_q0 mem_dout 0 2 } } }
}
