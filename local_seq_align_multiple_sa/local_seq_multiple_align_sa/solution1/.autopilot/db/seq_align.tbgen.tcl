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
set C_modelType { int 32 }
set C_modelArgList {
	{ query_string_comp_0 int 8 regular {axi_s 0 volatile  { query_string_comp_0 Data } }  }
	{ reference_string_comp_0 int 8 regular {axi_s 0 volatile  { reference_string_comp_0 Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "query_string_comp_0", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "reference_string_comp_0", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ query_string_comp_0_TDATA sc_in sc_lv 8 signal 0 } 
	{ query_string_comp_0_TVALID sc_in sc_logic 1 invld 0 } 
	{ query_string_comp_0_TREADY sc_out sc_logic 1 inacc 0 } 
	{ reference_string_comp_0_TDATA sc_in sc_lv 8 signal 1 } 
	{ reference_string_comp_0_TVALID sc_in sc_logic 1 invld 1 } 
	{ reference_string_comp_0_TREADY sc_out sc_logic 1 inacc 1 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "query_string_comp_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "query_string_comp_0", "role": "TDATA" }} , 
 	{ "name": "query_string_comp_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "query_string_comp_0", "role": "TVALID" }} , 
 	{ "name": "query_string_comp_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "query_string_comp_0", "role": "TREADY" }} , 
 	{ "name": "reference_string_comp_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "reference_string_comp_0", "role": "TDATA" }} , 
 	{ "name": "reference_string_comp_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "reference_string_comp_0", "role": "TVALID" }} , 
 	{ "name": "reference_string_comp_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "reference_string_comp_0", "role": "TREADY" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "68", "70", "72", "74", "76", "78", "81", "115", "118", "119"],
		"CDFG" : "seq_align",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "query_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_245_10_fu_1975", "Port" : "query_string_comp_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "reference_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_215_7_fu_1937", "Port" : "reference_string_comp_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "kernel", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "14", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_16_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_17_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_18_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_19_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_20_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_21_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_22_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_23_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_24_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_25_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_26_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_27_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_28_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_29_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_30_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_31_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.last_pe_score_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_1_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_2_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_3_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_4_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_5_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_6_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_7_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_8_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_9_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_10_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_11_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_12_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_13_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_14_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_15_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_16_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_17_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_18_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_19_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_20_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_21_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_22_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_23_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_24_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_25_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_26_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_27_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_28_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_29_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_30_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_31_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_181_1_fu_1696", "Parent" : "0", "Child" : ["67"],
		"CDFG" : "seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_181_1",
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
			{"Name" : "dp_mem_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "local_dpmem_loop_VITIS_LOOP_181_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_181_1_fu_1696.flow_control_loop_pipe_sequential_init_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_187_2_fu_1763", "Parent" : "0", "Child" : ["69"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_187_2",
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
			{"Name" : "last_pe_score", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_187_2_fu_1763.flow_control_loop_pipe_sequential_init_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_197_4_fu_1769", "Parent" : "0", "Child" : ["71"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_197_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max_col_value_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_4", "PipelineType" : "NotSupport"}]},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_197_4_fu_1769.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_206_5_VITIS_LOOP_208_6_fu_1869", "Parent" : "0", "Child" : ["73"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_206_5_VITIS_LOOP_208_6",
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
			{"Name" : "traceback_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_31", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_206_5_VITIS_LOOP_208_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_206_5_VITIS_LOOP_208_6_fu_1869.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_215_7_fu_1937", "Parent" : "0", "Child" : ["75"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_215_7",
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
			{"Name" : "VITIS_LOOP_215_7", "PipelineType" : "NotSupport"}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_215_7_fu_1937.flow_control_loop_pipe_sequential_init_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_245_10_fu_1975", "Parent" : "0", "Child" : ["77"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_245_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "query_string_comp_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "query_data_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_245_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_245_10_fu_1975.flow_control_loop_pipe_sequential_init_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_traceback_logic_fu_2044", "Parent" : "0", "Child" : ["79", "80"],
		"CDFG" : "seq_align_Pipeline_traceback_logic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ultimate_row_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "ultimate_col_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "traceback_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_31", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "traceback_logic", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_traceback_logic_fu_2044.mux_325_2_1_1_U779", "Parent" : "78"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_traceback_logic_fu_2044.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082", "Parent" : "0", "Child" : ["82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114"],
		"CDFG" : "seq_align_Pipeline_kernel1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1062", "EstimateLatencyMax" : "1062",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max_col_value_95", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_94", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_93", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_92", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_91", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_90", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_89", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_88", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_87", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_86", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_85", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_84", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_83", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_82", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_81", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_80", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_79", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_78", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_77", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_76", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_75", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_74", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_73", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_72", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_71", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_70", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_67", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln282_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "traceback_V_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "last_pe_score", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_cast9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_phi_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast10", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast11", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast12", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast13", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast14", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast15", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast16", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast17", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast18", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast19", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast20", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast21", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast22", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast23", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast24", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast25", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast26", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast27", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast28", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast29", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast30", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast31", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast32", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast33", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast34", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast35", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast36", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast37", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast38", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast39", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln254", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_127_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_126_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_125_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_124_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_123_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_122_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_121_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_120_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_119_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_118_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_117_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_116_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_115_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_113_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_112_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_111_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_110_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_109_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_108_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_107_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_106_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_105_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_104_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_103_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_102_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_101_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_100_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_99_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_98_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_97_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_96_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_94_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_92_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_88_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_85_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_84_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_83_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_66_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_65_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_94_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_92_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_88_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_85_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_84_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_83_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_66_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_65_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "temp_1_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "kernel1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U290", "Parent" : "81"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U291", "Parent" : "81"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U292", "Parent" : "81"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U293", "Parent" : "81"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U294", "Parent" : "81"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U295", "Parent" : "81"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U296", "Parent" : "81"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U297", "Parent" : "81"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U298", "Parent" : "81"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U299", "Parent" : "81"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U300", "Parent" : "81"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U301", "Parent" : "81"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U302", "Parent" : "81"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U303", "Parent" : "81"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U304", "Parent" : "81"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U305", "Parent" : "81"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U306", "Parent" : "81"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U307", "Parent" : "81"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U308", "Parent" : "81"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U309", "Parent" : "81"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U310", "Parent" : "81"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U311", "Parent" : "81"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U312", "Parent" : "81"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U313", "Parent" : "81"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U314", "Parent" : "81"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U315", "Parent" : "81"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U316", "Parent" : "81"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U317", "Parent" : "81"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U318", "Parent" : "81"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U319", "Parent" : "81"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U320", "Parent" : "81"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.mux_325_8_1_1_U321", "Parent" : "81"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2082.flow_control_loop_pipe_sequential_init_U", "Parent" : "81"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_310_11_fu_2504", "Parent" : "0", "Child" : ["116", "117"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_310_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max", "Type" : "None", "Direction" : "I"},
			{"Name" : "index", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_64_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_65_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_66_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_67_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_68_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_69_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_70_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_71_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_72_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_73_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_74_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_75_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_76_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_77_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_78_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_79_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_80_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_81_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_82_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_83_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_84_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_85_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_86_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_87_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_88_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_89_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_90_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_91_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_92_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_93_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_94_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_95_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "index_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_310_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_310_11_fu_2504.mux_326_32_1_1_U741", "Parent" : "115"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_310_11_fu_2504.flow_control_loop_pipe_sequential_init_U", "Parent" : "115"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3232_32_1_1_U815", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3232_32_1_1_U816", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	seq_align {
		query_string_comp_0 {Type I LastRead 1 FirstWrite -1}
		reference_string_comp_0 {Type I LastRead 0 FirstWrite -1}}
	seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_181_1 {
		dp_mem_62_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_61_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_60_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_59_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_58_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_57_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_56_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_55_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_54_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_53_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_52_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_51_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_50_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_49_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_48_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_47_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_46_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_45_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_44_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_43_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_42_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_41_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_40_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_39_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_38_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_37_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_36_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_35_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_34_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_33_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_32_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_31_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_30_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_29_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_28_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_27_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_26_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_25_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_24_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_23_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_22_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_21_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_20_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_19_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_18_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_17_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_16_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_15_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_14_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_13_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_12_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_11_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_10_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_9_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_8_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_7_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_6_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_5_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_4_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_3_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_2_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_1_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_out {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_187_2 {
		last_pe_score {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_197_4 {
		max_col_value_31_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_30_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_29_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_28_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_27_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_26_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_25_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_24_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_23_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_22_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_21_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_20_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_19_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_18_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_17_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_16_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_15_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_14_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_13_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_12_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_11_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_10_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_9_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_8_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_7_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_6_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_5_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_4_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_3_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_2_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_1_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_31_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_30_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_29_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_28_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_27_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_26_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_25_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_24_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_23_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_22_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_21_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_20_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_19_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_18_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_17_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_16_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_15_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_14_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_13_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_12_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_11_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_10_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_9_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_8_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_7_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_6_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_5_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_4_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_3_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_2_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_1_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_out {Type O LastRead -1 FirstWrite 0}
		max_score_31_out {Type O LastRead -1 FirstWrite 0}
		max_score_30_out {Type O LastRead -1 FirstWrite 0}
		max_score_29_out {Type O LastRead -1 FirstWrite 0}
		max_score_28_out {Type O LastRead -1 FirstWrite 0}
		max_score_27_out {Type O LastRead -1 FirstWrite 0}
		max_score_26_out {Type O LastRead -1 FirstWrite 0}
		max_score_25_out {Type O LastRead -1 FirstWrite 0}
		max_score_24_out {Type O LastRead -1 FirstWrite 0}
		max_score_23_out {Type O LastRead -1 FirstWrite 0}
		max_score_22_out {Type O LastRead -1 FirstWrite 0}
		max_score_21_out {Type O LastRead -1 FirstWrite 0}
		max_score_20_out {Type O LastRead -1 FirstWrite 0}
		max_score_19_out {Type O LastRead -1 FirstWrite 0}
		max_score_18_out {Type O LastRead -1 FirstWrite 0}
		max_score_17_out {Type O LastRead -1 FirstWrite 0}
		max_score_16_out {Type O LastRead -1 FirstWrite 0}
		max_score_15_out {Type O LastRead -1 FirstWrite 0}
		max_score_14_out {Type O LastRead -1 FirstWrite 0}
		max_score_13_out {Type O LastRead -1 FirstWrite 0}
		max_score_12_out {Type O LastRead -1 FirstWrite 0}
		max_score_11_out {Type O LastRead -1 FirstWrite 0}
		max_score_10_out {Type O LastRead -1 FirstWrite 0}
		max_score_9_out {Type O LastRead -1 FirstWrite 0}
		max_score_8_out {Type O LastRead -1 FirstWrite 0}
		max_score_7_out {Type O LastRead -1 FirstWrite 0}
		max_score_6_out {Type O LastRead -1 FirstWrite 0}
		max_score_5_out {Type O LastRead -1 FirstWrite 0}
		max_score_4_out {Type O LastRead -1 FirstWrite 0}
		max_score_3_out {Type O LastRead -1 FirstWrite 0}
		max_score_2_out {Type O LastRead -1 FirstWrite 0}
		max_score_1_out {Type O LastRead -1 FirstWrite 0}
		max_score_out {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_206_5_VITIS_LOOP_208_6 {
		traceback_V {Type O LastRead -1 FirstWrite 2}
		traceback_V_1 {Type O LastRead -1 FirstWrite 2}
		traceback_V_2 {Type O LastRead -1 FirstWrite 2}
		traceback_V_3 {Type O LastRead -1 FirstWrite 2}
		traceback_V_4 {Type O LastRead -1 FirstWrite 2}
		traceback_V_5 {Type O LastRead -1 FirstWrite 2}
		traceback_V_6 {Type O LastRead -1 FirstWrite 2}
		traceback_V_7 {Type O LastRead -1 FirstWrite 2}
		traceback_V_8 {Type O LastRead -1 FirstWrite 2}
		traceback_V_9 {Type O LastRead -1 FirstWrite 2}
		traceback_V_10 {Type O LastRead -1 FirstWrite 2}
		traceback_V_11 {Type O LastRead -1 FirstWrite 2}
		traceback_V_12 {Type O LastRead -1 FirstWrite 2}
		traceback_V_13 {Type O LastRead -1 FirstWrite 2}
		traceback_V_14 {Type O LastRead -1 FirstWrite 2}
		traceback_V_15 {Type O LastRead -1 FirstWrite 2}
		traceback_V_16 {Type O LastRead -1 FirstWrite 2}
		traceback_V_17 {Type O LastRead -1 FirstWrite 2}
		traceback_V_18 {Type O LastRead -1 FirstWrite 2}
		traceback_V_19 {Type O LastRead -1 FirstWrite 2}
		traceback_V_20 {Type O LastRead -1 FirstWrite 2}
		traceback_V_21 {Type O LastRead -1 FirstWrite 2}
		traceback_V_22 {Type O LastRead -1 FirstWrite 2}
		traceback_V_23 {Type O LastRead -1 FirstWrite 2}
		traceback_V_24 {Type O LastRead -1 FirstWrite 2}
		traceback_V_25 {Type O LastRead -1 FirstWrite 2}
		traceback_V_26 {Type O LastRead -1 FirstWrite 2}
		traceback_V_27 {Type O LastRead -1 FirstWrite 2}
		traceback_V_28 {Type O LastRead -1 FirstWrite 2}
		traceback_V_29 {Type O LastRead -1 FirstWrite 2}
		traceback_V_30 {Type O LastRead -1 FirstWrite 2}
		traceback_V_31 {Type O LastRead -1 FirstWrite 2}}
	seq_align_Pipeline_VITIS_LOOP_215_7 {
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
		local_reference_31 {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_245_10 {
		empty_22 {Type I LastRead 0 FirstWrite -1}
		empty_23 {Type I LastRead 0 FirstWrite -1}
		empty_24 {Type I LastRead 0 FirstWrite -1}
		empty_25 {Type I LastRead 0 FirstWrite -1}
		empty_26 {Type I LastRead 0 FirstWrite -1}
		empty_27 {Type I LastRead 0 FirstWrite -1}
		empty_28 {Type I LastRead 0 FirstWrite -1}
		empty_29 {Type I LastRead 0 FirstWrite -1}
		empty_30 {Type I LastRead 0 FirstWrite -1}
		empty_31 {Type I LastRead 0 FirstWrite -1}
		empty_32 {Type I LastRead 0 FirstWrite -1}
		empty_33 {Type I LastRead 0 FirstWrite -1}
		empty_34 {Type I LastRead 0 FirstWrite -1}
		empty_35 {Type I LastRead 0 FirstWrite -1}
		empty_36 {Type I LastRead 0 FirstWrite -1}
		empty_37 {Type I LastRead 0 FirstWrite -1}
		empty_38 {Type I LastRead 0 FirstWrite -1}
		empty_39 {Type I LastRead 0 FirstWrite -1}
		empty_40 {Type I LastRead 0 FirstWrite -1}
		empty_41 {Type I LastRead 0 FirstWrite -1}
		empty_42 {Type I LastRead 0 FirstWrite -1}
		empty_43 {Type I LastRead 0 FirstWrite -1}
		empty_44 {Type I LastRead 0 FirstWrite -1}
		empty_45 {Type I LastRead 0 FirstWrite -1}
		empty_46 {Type I LastRead 0 FirstWrite -1}
		empty_47 {Type I LastRead 0 FirstWrite -1}
		empty_48 {Type I LastRead 0 FirstWrite -1}
		empty_49 {Type I LastRead 0 FirstWrite -1}
		empty_50 {Type I LastRead 0 FirstWrite -1}
		empty_51 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		query_string_comp_0 {Type I LastRead 1 FirstWrite -1}
		query_data_1_out {Type O LastRead -1 FirstWrite 1}
		query_data_2_out {Type O LastRead -1 FirstWrite 1}
		query_data_3_out {Type O LastRead -1 FirstWrite 1}
		query_data_4_out {Type O LastRead -1 FirstWrite 1}
		query_data_5_out {Type O LastRead -1 FirstWrite 1}
		query_data_6_out {Type O LastRead -1 FirstWrite 1}
		query_data_7_out {Type O LastRead -1 FirstWrite 1}
		query_data_8_out {Type O LastRead -1 FirstWrite 1}
		query_data_9_out {Type O LastRead -1 FirstWrite 1}
		query_data_10_out {Type O LastRead -1 FirstWrite 1}
		query_data_11_out {Type O LastRead -1 FirstWrite 1}
		query_data_12_out {Type O LastRead -1 FirstWrite 1}
		query_data_13_out {Type O LastRead -1 FirstWrite 1}
		query_data_14_out {Type O LastRead -1 FirstWrite 1}
		query_data_15_out {Type O LastRead -1 FirstWrite 1}
		query_data_16_out {Type O LastRead -1 FirstWrite 1}
		query_data_17_out {Type O LastRead -1 FirstWrite 1}
		query_data_18_out {Type O LastRead -1 FirstWrite 1}
		query_data_19_out {Type O LastRead -1 FirstWrite 1}
		query_data_20_out {Type O LastRead -1 FirstWrite 1}
		query_data_21_out {Type O LastRead -1 FirstWrite 1}
		query_data_22_out {Type O LastRead -1 FirstWrite 1}
		query_data_23_out {Type O LastRead -1 FirstWrite 1}
		query_data_24_out {Type O LastRead -1 FirstWrite 1}
		query_data_25_out {Type O LastRead -1 FirstWrite 1}
		query_data_26_out {Type O LastRead -1 FirstWrite 1}
		query_data_27_out {Type O LastRead -1 FirstWrite 1}
		query_data_28_out {Type O LastRead -1 FirstWrite 1}
		query_data_29_out {Type O LastRead -1 FirstWrite 1}
		query_data_30_out {Type O LastRead -1 FirstWrite 1}
		query_data_out {Type O LastRead -1 FirstWrite 1}
		p_phi_out {Type O LastRead -1 FirstWrite 1}}
	seq_align_Pipeline_traceback_logic {
		ultimate_row_value {Type I LastRead 0 FirstWrite -1}
		ultimate_col_value {Type I LastRead 0 FirstWrite -1}
		traceback_V {Type I LastRead 1 FirstWrite -1}
		traceback_V_1 {Type I LastRead 1 FirstWrite -1}
		traceback_V_2 {Type I LastRead 1 FirstWrite -1}
		traceback_V_3 {Type I LastRead 1 FirstWrite -1}
		traceback_V_4 {Type I LastRead 1 FirstWrite -1}
		traceback_V_5 {Type I LastRead 1 FirstWrite -1}
		traceback_V_6 {Type I LastRead 1 FirstWrite -1}
		traceback_V_7 {Type I LastRead 1 FirstWrite -1}
		traceback_V_8 {Type I LastRead 1 FirstWrite -1}
		traceback_V_9 {Type I LastRead 1 FirstWrite -1}
		traceback_V_10 {Type I LastRead 1 FirstWrite -1}
		traceback_V_11 {Type I LastRead 1 FirstWrite -1}
		traceback_V_12 {Type I LastRead 1 FirstWrite -1}
		traceback_V_13 {Type I LastRead 1 FirstWrite -1}
		traceback_V_14 {Type I LastRead 1 FirstWrite -1}
		traceback_V_15 {Type I LastRead 1 FirstWrite -1}
		traceback_V_16 {Type I LastRead 1 FirstWrite -1}
		traceback_V_17 {Type I LastRead 1 FirstWrite -1}
		traceback_V_18 {Type I LastRead 1 FirstWrite -1}
		traceback_V_19 {Type I LastRead 1 FirstWrite -1}
		traceback_V_20 {Type I LastRead 1 FirstWrite -1}
		traceback_V_21 {Type I LastRead 1 FirstWrite -1}
		traceback_V_22 {Type I LastRead 1 FirstWrite -1}
		traceback_V_23 {Type I LastRead 1 FirstWrite -1}
		traceback_V_24 {Type I LastRead 1 FirstWrite -1}
		traceback_V_25 {Type I LastRead 1 FirstWrite -1}
		traceback_V_26 {Type I LastRead 1 FirstWrite -1}
		traceback_V_27 {Type I LastRead 1 FirstWrite -1}
		traceback_V_28 {Type I LastRead 1 FirstWrite -1}
		traceback_V_29 {Type I LastRead 1 FirstWrite -1}
		traceback_V_30 {Type I LastRead 1 FirstWrite -1}
		traceback_V_31 {Type I LastRead 1 FirstWrite -1}}
	seq_align_Pipeline_kernel1 {
		max_col_value_95 {Type I LastRead 0 FirstWrite -1}
		max_col_value_94 {Type I LastRead 0 FirstWrite -1}
		max_col_value_93 {Type I LastRead 0 FirstWrite -1}
		max_col_value_92 {Type I LastRead 0 FirstWrite -1}
		max_col_value_91 {Type I LastRead 0 FirstWrite -1}
		max_col_value_90 {Type I LastRead 0 FirstWrite -1}
		max_col_value_89 {Type I LastRead 0 FirstWrite -1}
		max_col_value_88 {Type I LastRead 0 FirstWrite -1}
		max_col_value_87 {Type I LastRead 0 FirstWrite -1}
		max_col_value_86 {Type I LastRead 0 FirstWrite -1}
		max_col_value_85 {Type I LastRead 0 FirstWrite -1}
		max_col_value_84 {Type I LastRead 0 FirstWrite -1}
		max_col_value_83 {Type I LastRead 0 FirstWrite -1}
		max_col_value_82 {Type I LastRead 0 FirstWrite -1}
		max_col_value_81 {Type I LastRead 0 FirstWrite -1}
		max_col_value_80 {Type I LastRead 0 FirstWrite -1}
		max_col_value_79 {Type I LastRead 0 FirstWrite -1}
		max_col_value_78 {Type I LastRead 0 FirstWrite -1}
		max_col_value_77 {Type I LastRead 0 FirstWrite -1}
		max_col_value_76 {Type I LastRead 0 FirstWrite -1}
		max_col_value_75 {Type I LastRead 0 FirstWrite -1}
		max_col_value_74 {Type I LastRead 0 FirstWrite -1}
		max_col_value_73 {Type I LastRead 0 FirstWrite -1}
		max_col_value_72 {Type I LastRead 0 FirstWrite -1}
		max_col_value_71 {Type I LastRead 0 FirstWrite -1}
		max_col_value_70 {Type I LastRead 0 FirstWrite -1}
		max_col_value_69 {Type I LastRead 0 FirstWrite -1}
		max_col_value_68 {Type I LastRead 0 FirstWrite -1}
		max_col_value_67 {Type I LastRead 0 FirstWrite -1}
		max_col_value_66 {Type I LastRead 0 FirstWrite -1}
		max_col_value_65 {Type I LastRead 0 FirstWrite -1}
		max_col_value_64 {Type I LastRead 0 FirstWrite -1}
		max_row_value_63 {Type I LastRead 0 FirstWrite -1}
		max_row_value_62 {Type I LastRead 0 FirstWrite -1}
		max_row_value_61 {Type I LastRead 0 FirstWrite -1}
		max_row_value_60 {Type I LastRead 0 FirstWrite -1}
		max_row_value_59 {Type I LastRead 0 FirstWrite -1}
		max_row_value_58 {Type I LastRead 0 FirstWrite -1}
		max_row_value_57 {Type I LastRead 0 FirstWrite -1}
		max_row_value_56 {Type I LastRead 0 FirstWrite -1}
		max_row_value_55 {Type I LastRead 0 FirstWrite -1}
		max_row_value_54 {Type I LastRead 0 FirstWrite -1}
		max_row_value_53 {Type I LastRead 0 FirstWrite -1}
		max_row_value_52 {Type I LastRead 0 FirstWrite -1}
		max_row_value_51 {Type I LastRead 0 FirstWrite -1}
		max_row_value_50 {Type I LastRead 0 FirstWrite -1}
		max_row_value_49 {Type I LastRead 0 FirstWrite -1}
		max_row_value_48 {Type I LastRead 0 FirstWrite -1}
		max_row_value_47 {Type I LastRead 0 FirstWrite -1}
		max_row_value_46 {Type I LastRead 0 FirstWrite -1}
		max_row_value_45 {Type I LastRead 0 FirstWrite -1}
		max_row_value_44 {Type I LastRead 0 FirstWrite -1}
		max_row_value_43 {Type I LastRead 0 FirstWrite -1}
		max_row_value_42 {Type I LastRead 0 FirstWrite -1}
		max_row_value_41 {Type I LastRead 0 FirstWrite -1}
		max_row_value_40 {Type I LastRead 0 FirstWrite -1}
		max_row_value_39 {Type I LastRead 0 FirstWrite -1}
		max_row_value_38 {Type I LastRead 0 FirstWrite -1}
		max_row_value_37 {Type I LastRead 0 FirstWrite -1}
		max_row_value_36 {Type I LastRead 0 FirstWrite -1}
		max_row_value_35 {Type I LastRead 0 FirstWrite -1}
		max_row_value_34 {Type I LastRead 0 FirstWrite -1}
		max_row_value_33 {Type I LastRead 0 FirstWrite -1}
		max_row_value_32 {Type I LastRead 0 FirstWrite -1}
		max_score_63 {Type I LastRead 0 FirstWrite -1}
		max_score_62 {Type I LastRead 0 FirstWrite -1}
		max_score_61 {Type I LastRead 0 FirstWrite -1}
		max_score_60 {Type I LastRead 0 FirstWrite -1}
		max_score_59 {Type I LastRead 0 FirstWrite -1}
		max_score_58 {Type I LastRead 0 FirstWrite -1}
		max_score_57 {Type I LastRead 0 FirstWrite -1}
		max_score_56 {Type I LastRead 0 FirstWrite -1}
		max_score_55 {Type I LastRead 0 FirstWrite -1}
		max_score_54 {Type I LastRead 0 FirstWrite -1}
		max_score_53 {Type I LastRead 0 FirstWrite -1}
		max_score_52 {Type I LastRead 0 FirstWrite -1}
		max_score_51 {Type I LastRead 0 FirstWrite -1}
		max_score_50 {Type I LastRead 0 FirstWrite -1}
		max_score_49 {Type I LastRead 0 FirstWrite -1}
		max_score_48 {Type I LastRead 0 FirstWrite -1}
		max_score_47 {Type I LastRead 0 FirstWrite -1}
		max_score_46 {Type I LastRead 0 FirstWrite -1}
		max_score_45 {Type I LastRead 0 FirstWrite -1}
		max_score_44 {Type I LastRead 0 FirstWrite -1}
		max_score_43 {Type I LastRead 0 FirstWrite -1}
		max_score_42 {Type I LastRead 0 FirstWrite -1}
		max_score_41 {Type I LastRead 0 FirstWrite -1}
		max_score_40 {Type I LastRead 0 FirstWrite -1}
		max_score_39 {Type I LastRead 0 FirstWrite -1}
		max_score_38 {Type I LastRead 0 FirstWrite -1}
		max_score_37 {Type I LastRead 0 FirstWrite -1}
		max_score_36 {Type I LastRead 0 FirstWrite -1}
		max_score_35 {Type I LastRead 0 FirstWrite -1}
		max_score_34 {Type I LastRead 0 FirstWrite -1}
		max_score_33 {Type I LastRead 0 FirstWrite -1}
		max_score_32 {Type I LastRead 0 FirstWrite -1}
		zext_ln282_1 {Type I LastRead 0 FirstWrite -1}
		traceback_V_30 {Type O LastRead -1 FirstWrite 0}
		traceback_V_29 {Type O LastRead -1 FirstWrite 0}
		traceback_V_28 {Type O LastRead -1 FirstWrite 0}
		traceback_V_27 {Type O LastRead -1 FirstWrite 0}
		traceback_V_26 {Type O LastRead -1 FirstWrite 0}
		traceback_V_25 {Type O LastRead -1 FirstWrite 0}
		traceback_V_24 {Type O LastRead -1 FirstWrite 0}
		traceback_V_23 {Type O LastRead -1 FirstWrite 0}
		traceback_V_22 {Type O LastRead -1 FirstWrite 0}
		traceback_V_21 {Type O LastRead -1 FirstWrite 0}
		traceback_V_20 {Type O LastRead -1 FirstWrite 0}
		traceback_V_19 {Type O LastRead -1 FirstWrite 0}
		traceback_V_18 {Type O LastRead -1 FirstWrite 0}
		traceback_V_17 {Type O LastRead -1 FirstWrite 0}
		traceback_V_16 {Type O LastRead -1 FirstWrite 0}
		traceback_V_15 {Type O LastRead -1 FirstWrite 0}
		traceback_V_14 {Type O LastRead -1 FirstWrite 0}
		traceback_V_13 {Type O LastRead -1 FirstWrite 0}
		traceback_V_12 {Type O LastRead -1 FirstWrite 0}
		traceback_V_11 {Type O LastRead -1 FirstWrite 0}
		traceback_V_10 {Type O LastRead -1 FirstWrite 0}
		traceback_V_9 {Type O LastRead -1 FirstWrite 0}
		traceback_V_8 {Type O LastRead -1 FirstWrite 0}
		traceback_V_7 {Type O LastRead -1 FirstWrite 0}
		traceback_V_6 {Type O LastRead -1 FirstWrite 0}
		traceback_V_5 {Type O LastRead -1 FirstWrite 0}
		traceback_V_4 {Type O LastRead -1 FirstWrite 0}
		traceback_V_3 {Type O LastRead -1 FirstWrite 0}
		traceback_V_2 {Type O LastRead -1 FirstWrite 0}
		traceback_V_1 {Type O LastRead -1 FirstWrite 0}
		traceback_V {Type O LastRead -1 FirstWrite 0}
		traceback_V_31 {Type O LastRead -1 FirstWrite 0}
		local_reference {Type I LastRead 2 FirstWrite -1}
		local_reference_1 {Type I LastRead 2 FirstWrite -1}
		local_reference_2 {Type I LastRead 2 FirstWrite -1}
		local_reference_3 {Type I LastRead 2 FirstWrite -1}
		local_reference_4 {Type I LastRead 2 FirstWrite -1}
		local_reference_5 {Type I LastRead 2 FirstWrite -1}
		local_reference_6 {Type I LastRead 2 FirstWrite -1}
		local_reference_7 {Type I LastRead 2 FirstWrite -1}
		local_reference_8 {Type I LastRead 2 FirstWrite -1}
		local_reference_9 {Type I LastRead 2 FirstWrite -1}
		local_reference_10 {Type I LastRead 2 FirstWrite -1}
		local_reference_11 {Type I LastRead 2 FirstWrite -1}
		local_reference_12 {Type I LastRead 2 FirstWrite -1}
		local_reference_13 {Type I LastRead 2 FirstWrite -1}
		local_reference_14 {Type I LastRead 2 FirstWrite -1}
		local_reference_15 {Type I LastRead 2 FirstWrite -1}
		local_reference_16 {Type I LastRead 2 FirstWrite -1}
		local_reference_17 {Type I LastRead 2 FirstWrite -1}
		local_reference_18 {Type I LastRead 2 FirstWrite -1}
		local_reference_19 {Type I LastRead 2 FirstWrite -1}
		local_reference_20 {Type I LastRead 2 FirstWrite -1}
		local_reference_21 {Type I LastRead 2 FirstWrite -1}
		local_reference_22 {Type I LastRead 2 FirstWrite -1}
		local_reference_23 {Type I LastRead 2 FirstWrite -1}
		local_reference_24 {Type I LastRead 2 FirstWrite -1}
		local_reference_25 {Type I LastRead 2 FirstWrite -1}
		local_reference_26 {Type I LastRead 2 FirstWrite -1}
		local_reference_27 {Type I LastRead 2 FirstWrite -1}
		local_reference_28 {Type I LastRead 2 FirstWrite -1}
		local_reference_29 {Type I LastRead 2 FirstWrite -1}
		local_reference_30 {Type I LastRead 2 FirstWrite -1}
		local_reference_31 {Type I LastRead 2 FirstWrite -1}
		last_pe_score {Type IO LastRead 0 FirstWrite 6}
		p_cast9 {Type I LastRead 0 FirstWrite -1}
		p_phi_reload {Type I LastRead 0 FirstWrite -1}
		cmp_i38 {Type I LastRead 0 FirstWrite -1}
		p_cast10 {Type I LastRead 0 FirstWrite -1}
		cmp_i_1 {Type I LastRead 0 FirstWrite -1}
		query_data_reload {Type I LastRead 0 FirstWrite -1}
		p_cast11 {Type I LastRead 0 FirstWrite -1}
		cmp_i_2 {Type I LastRead 0 FirstWrite -1}
		query_data_30_reload {Type I LastRead 0 FirstWrite -1}
		p_cast12 {Type I LastRead 0 FirstWrite -1}
		cmp_i_3 {Type I LastRead 0 FirstWrite -1}
		query_data_29_reload {Type I LastRead 0 FirstWrite -1}
		p_cast13 {Type I LastRead 0 FirstWrite -1}
		cmp_i_4 {Type I LastRead 0 FirstWrite -1}
		query_data_28_reload {Type I LastRead 0 FirstWrite -1}
		p_cast14 {Type I LastRead 0 FirstWrite -1}
		cmp_i_5 {Type I LastRead 0 FirstWrite -1}
		query_data_27_reload {Type I LastRead 0 FirstWrite -1}
		p_cast15 {Type I LastRead 0 FirstWrite -1}
		cmp_i_6 {Type I LastRead 0 FirstWrite -1}
		query_data_26_reload {Type I LastRead 0 FirstWrite -1}
		p_cast16 {Type I LastRead 0 FirstWrite -1}
		cmp_i_7 {Type I LastRead 0 FirstWrite -1}
		query_data_25_reload {Type I LastRead 0 FirstWrite -1}
		p_cast17 {Type I LastRead 0 FirstWrite -1}
		cmp_i_8 {Type I LastRead 0 FirstWrite -1}
		query_data_24_reload {Type I LastRead 0 FirstWrite -1}
		p_cast18 {Type I LastRead 0 FirstWrite -1}
		cmp_i_9 {Type I LastRead 0 FirstWrite -1}
		query_data_23_reload {Type I LastRead 0 FirstWrite -1}
		p_cast19 {Type I LastRead 0 FirstWrite -1}
		cmp_i_10 {Type I LastRead 0 FirstWrite -1}
		query_data_22_reload {Type I LastRead 0 FirstWrite -1}
		p_cast20 {Type I LastRead 0 FirstWrite -1}
		cmp_i_11 {Type I LastRead 0 FirstWrite -1}
		query_data_21_reload {Type I LastRead 0 FirstWrite -1}
		p_cast21 {Type I LastRead 0 FirstWrite -1}
		cmp_i_12 {Type I LastRead 0 FirstWrite -1}
		query_data_20_reload {Type I LastRead 0 FirstWrite -1}
		p_cast22 {Type I LastRead 0 FirstWrite -1}
		cmp_i_13 {Type I LastRead 0 FirstWrite -1}
		query_data_19_reload {Type I LastRead 0 FirstWrite -1}
		p_cast23 {Type I LastRead 0 FirstWrite -1}
		cmp_i_14 {Type I LastRead 0 FirstWrite -1}
		query_data_18_reload {Type I LastRead 0 FirstWrite -1}
		p_cast24 {Type I LastRead 0 FirstWrite -1}
		cmp_i_15 {Type I LastRead 0 FirstWrite -1}
		query_data_17_reload {Type I LastRead 0 FirstWrite -1}
		p_cast25 {Type I LastRead 0 FirstWrite -1}
		cmp_i_16 {Type I LastRead 0 FirstWrite -1}
		query_data_16_reload {Type I LastRead 0 FirstWrite -1}
		p_cast26 {Type I LastRead 0 FirstWrite -1}
		cmp_i_17 {Type I LastRead 0 FirstWrite -1}
		query_data_15_reload {Type I LastRead 0 FirstWrite -1}
		p_cast27 {Type I LastRead 0 FirstWrite -1}
		cmp_i_18 {Type I LastRead 0 FirstWrite -1}
		query_data_14_reload {Type I LastRead 0 FirstWrite -1}
		p_cast28 {Type I LastRead 0 FirstWrite -1}
		cmp_i_19 {Type I LastRead 0 FirstWrite -1}
		query_data_13_reload {Type I LastRead 0 FirstWrite -1}
		p_cast29 {Type I LastRead 0 FirstWrite -1}
		cmp_i_20 {Type I LastRead 0 FirstWrite -1}
		query_data_12_reload {Type I LastRead 0 FirstWrite -1}
		p_cast30 {Type I LastRead 0 FirstWrite -1}
		cmp_i_21 {Type I LastRead 0 FirstWrite -1}
		query_data_11_reload {Type I LastRead 0 FirstWrite -1}
		p_cast31 {Type I LastRead 0 FirstWrite -1}
		cmp_i_22 {Type I LastRead 0 FirstWrite -1}
		query_data_10_reload {Type I LastRead 0 FirstWrite -1}
		p_cast32 {Type I LastRead 0 FirstWrite -1}
		cmp_i_23 {Type I LastRead 0 FirstWrite -1}
		query_data_9_reload {Type I LastRead 0 FirstWrite -1}
		p_cast33 {Type I LastRead 0 FirstWrite -1}
		cmp_i_24 {Type I LastRead 0 FirstWrite -1}
		query_data_8_reload {Type I LastRead 0 FirstWrite -1}
		p_cast34 {Type I LastRead 0 FirstWrite -1}
		cmp_i_25 {Type I LastRead 0 FirstWrite -1}
		query_data_7_reload {Type I LastRead 0 FirstWrite -1}
		p_cast35 {Type I LastRead 0 FirstWrite -1}
		cmp_i_26 {Type I LastRead 0 FirstWrite -1}
		query_data_6_reload {Type I LastRead 0 FirstWrite -1}
		p_cast36 {Type I LastRead 0 FirstWrite -1}
		cmp_i_27 {Type I LastRead 0 FirstWrite -1}
		query_data_5_reload {Type I LastRead 0 FirstWrite -1}
		p_cast37 {Type I LastRead 0 FirstWrite -1}
		cmp_i_28 {Type I LastRead 0 FirstWrite -1}
		query_data_4_reload {Type I LastRead 0 FirstWrite -1}
		p_cast38 {Type I LastRead 0 FirstWrite -1}
		cmp_i_29 {Type I LastRead 0 FirstWrite -1}
		query_data_3_reload {Type I LastRead 0 FirstWrite -1}
		p_cast39 {Type I LastRead 0 FirstWrite -1}
		cmp_i_30 {Type I LastRead 0 FirstWrite -1}
		query_data_2_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln254 {Type I LastRead 0 FirstWrite -1}
		cmp_i_31 {Type I LastRead 0 FirstWrite -1}
		query_data_1_reload {Type I LastRead 0 FirstWrite -1}
		max_col_value_127_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_126_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_125_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_124_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_123_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_122_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_121_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_120_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_119_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_118_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_117_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_116_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_115_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_114_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_113_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_112_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_111_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_110_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_109_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_108_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_107_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_106_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_105_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_104_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_103_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_102_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_101_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_100_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_99_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_98_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_97_out {Type O LastRead -1 FirstWrite 5}
		max_col_value_96_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_95_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_94_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_93_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_92_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_91_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_90_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_89_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_88_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_87_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_86_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_85_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_84_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_83_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_82_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_81_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_80_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_79_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_78_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_77_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_76_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_75_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_74_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_73_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_72_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_71_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_70_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_69_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_68_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_67_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_66_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_65_out {Type O LastRead -1 FirstWrite 5}
		max_row_value_64_out {Type O LastRead -1 FirstWrite 5}
		max_score_95_out {Type O LastRead -1 FirstWrite 5}
		max_score_94_out {Type O LastRead -1 FirstWrite 5}
		max_score_93_out {Type O LastRead -1 FirstWrite 5}
		max_score_92_out {Type O LastRead -1 FirstWrite 5}
		max_score_91_out {Type O LastRead -1 FirstWrite 5}
		max_score_90_out {Type O LastRead -1 FirstWrite 5}
		max_score_89_out {Type O LastRead -1 FirstWrite 5}
		max_score_88_out {Type O LastRead -1 FirstWrite 5}
		max_score_87_out {Type O LastRead -1 FirstWrite 5}
		max_score_86_out {Type O LastRead -1 FirstWrite 5}
		max_score_85_out {Type O LastRead -1 FirstWrite 5}
		max_score_84_out {Type O LastRead -1 FirstWrite 5}
		max_score_83_out {Type O LastRead -1 FirstWrite 5}
		max_score_82_out {Type O LastRead -1 FirstWrite 5}
		max_score_81_out {Type O LastRead -1 FirstWrite 5}
		max_score_80_out {Type O LastRead -1 FirstWrite 5}
		max_score_79_out {Type O LastRead -1 FirstWrite 5}
		max_score_78_out {Type O LastRead -1 FirstWrite 5}
		max_score_77_out {Type O LastRead -1 FirstWrite 5}
		max_score_76_out {Type O LastRead -1 FirstWrite 5}
		max_score_75_out {Type O LastRead -1 FirstWrite 5}
		max_score_74_out {Type O LastRead -1 FirstWrite 5}
		max_score_73_out {Type O LastRead -1 FirstWrite 5}
		max_score_72_out {Type O LastRead -1 FirstWrite 5}
		max_score_71_out {Type O LastRead -1 FirstWrite 5}
		max_score_70_out {Type O LastRead -1 FirstWrite 5}
		max_score_69_out {Type O LastRead -1 FirstWrite 5}
		max_score_68_out {Type O LastRead -1 FirstWrite 5}
		max_score_67_out {Type O LastRead -1 FirstWrite 5}
		max_score_66_out {Type O LastRead -1 FirstWrite 5}
		max_score_65_out {Type O LastRead -1 FirstWrite 5}
		max_score_64_out {Type O LastRead -1 FirstWrite 5}
		p_out {Type IO LastRead 5 FirstWrite 5}
		p_out1 {Type IO LastRead 5 FirstWrite 5}
		p_out2 {Type IO LastRead 5 FirstWrite 5}
		p_out3 {Type IO LastRead 5 FirstWrite 5}
		p_out4 {Type IO LastRead 5 FirstWrite 5}
		p_out5 {Type IO LastRead 5 FirstWrite 5}
		p_out6 {Type IO LastRead 5 FirstWrite 5}
		p_out7 {Type IO LastRead 5 FirstWrite 5}
		p_out8 {Type IO LastRead 5 FirstWrite 5}
		p_out9 {Type IO LastRead 5 FirstWrite 5}
		p_out10 {Type IO LastRead 5 FirstWrite 5}
		p_out11 {Type IO LastRead 5 FirstWrite 5}
		p_out12 {Type IO LastRead 5 FirstWrite 5}
		p_out13 {Type IO LastRead 5 FirstWrite 5}
		p_out14 {Type IO LastRead 5 FirstWrite 5}
		p_out15 {Type IO LastRead 5 FirstWrite 5}
		p_out16 {Type IO LastRead 5 FirstWrite 5}
		p_out17 {Type IO LastRead 5 FirstWrite 5}
		p_out18 {Type IO LastRead 5 FirstWrite 5}
		p_out19 {Type IO LastRead 5 FirstWrite 5}
		p_out20 {Type IO LastRead 5 FirstWrite 5}
		p_out21 {Type IO LastRead 5 FirstWrite 5}
		p_out22 {Type IO LastRead 5 FirstWrite 5}
		p_out23 {Type IO LastRead 5 FirstWrite 5}
		p_out24 {Type IO LastRead 5 FirstWrite 5}
		p_out25 {Type IO LastRead 5 FirstWrite 5}
		p_out26 {Type IO LastRead 5 FirstWrite 5}
		p_out27 {Type IO LastRead 5 FirstWrite 5}
		p_out28 {Type IO LastRead 5 FirstWrite 5}
		p_out29 {Type IO LastRead 5 FirstWrite 5}
		p_out30 {Type IO LastRead 5 FirstWrite 5}
		p_out31 {Type IO LastRead 5 FirstWrite 5}
		p_out32 {Type IO LastRead 5 FirstWrite 5}
		p_out33 {Type IO LastRead 5 FirstWrite 5}
		p_out34 {Type IO LastRead 5 FirstWrite 5}
		p_out35 {Type IO LastRead 5 FirstWrite 5}
		p_out36 {Type IO LastRead 5 FirstWrite 5}
		p_out37 {Type IO LastRead 5 FirstWrite 5}
		p_out38 {Type IO LastRead 5 FirstWrite 5}
		p_out39 {Type IO LastRead 5 FirstWrite 5}
		p_out40 {Type IO LastRead 5 FirstWrite 5}
		p_out41 {Type IO LastRead 5 FirstWrite 5}
		p_out42 {Type IO LastRead 5 FirstWrite 5}
		p_out43 {Type IO LastRead 4 FirstWrite 4}
		p_out44 {Type IO LastRead 4 FirstWrite 4}
		p_out45 {Type IO LastRead 4 FirstWrite 4}
		p_out46 {Type IO LastRead 4 FirstWrite 4}
		p_out47 {Type IO LastRead 4 FirstWrite 4}
		p_out48 {Type IO LastRead 4 FirstWrite 4}
		p_out49 {Type IO LastRead 3 FirstWrite 3}
		p_out50 {Type IO LastRead 3 FirstWrite 3}
		p_out51 {Type IO LastRead 3 FirstWrite 3}
		p_out52 {Type IO LastRead 3 FirstWrite 3}
		p_out53 {Type IO LastRead 3 FirstWrite 3}
		p_out54 {Type IO LastRead 3 FirstWrite 3}
		p_out55 {Type IO LastRead 3 FirstWrite 3}
		p_out56 {Type IO LastRead 3 FirstWrite 3}
		p_out57 {Type IO LastRead 3 FirstWrite 3}
		p_out58 {Type IO LastRead 3 FirstWrite 3}
		p_out59 {Type IO LastRead 3 FirstWrite 3}
		p_out60 {Type IO LastRead 3 FirstWrite 3}
		p_out61 {Type IO LastRead 3 FirstWrite 3}
		p_out62 {Type IO LastRead 3 FirstWrite 3}
		temp_1_out {Type IO LastRead 2 FirstWrite 2}}
	seq_align_Pipeline_VITIS_LOOP_310_11 {
		max {Type I LastRead 0 FirstWrite -1}
		index {Type I LastRead 0 FirstWrite -1}
		max_score_64_reload {Type I LastRead 0 FirstWrite -1}
		max_score_65_reload {Type I LastRead 0 FirstWrite -1}
		max_score_66_reload {Type I LastRead 0 FirstWrite -1}
		max_score_67_reload {Type I LastRead 0 FirstWrite -1}
		max_score_68_reload {Type I LastRead 0 FirstWrite -1}
		max_score_69_reload {Type I LastRead 0 FirstWrite -1}
		max_score_70_reload {Type I LastRead 0 FirstWrite -1}
		max_score_71_reload {Type I LastRead 0 FirstWrite -1}
		max_score_72_reload {Type I LastRead 0 FirstWrite -1}
		max_score_73_reload {Type I LastRead 0 FirstWrite -1}
		max_score_74_reload {Type I LastRead 0 FirstWrite -1}
		max_score_75_reload {Type I LastRead 0 FirstWrite -1}
		max_score_76_reload {Type I LastRead 0 FirstWrite -1}
		max_score_77_reload {Type I LastRead 0 FirstWrite -1}
		max_score_78_reload {Type I LastRead 0 FirstWrite -1}
		max_score_79_reload {Type I LastRead 0 FirstWrite -1}
		max_score_80_reload {Type I LastRead 0 FirstWrite -1}
		max_score_81_reload {Type I LastRead 0 FirstWrite -1}
		max_score_82_reload {Type I LastRead 0 FirstWrite -1}
		max_score_83_reload {Type I LastRead 0 FirstWrite -1}
		max_score_84_reload {Type I LastRead 0 FirstWrite -1}
		max_score_85_reload {Type I LastRead 0 FirstWrite -1}
		max_score_86_reload {Type I LastRead 0 FirstWrite -1}
		max_score_87_reload {Type I LastRead 0 FirstWrite -1}
		max_score_88_reload {Type I LastRead 0 FirstWrite -1}
		max_score_89_reload {Type I LastRead 0 FirstWrite -1}
		max_score_90_reload {Type I LastRead 0 FirstWrite -1}
		max_score_91_reload {Type I LastRead 0 FirstWrite -1}
		max_score_92_reload {Type I LastRead 0 FirstWrite -1}
		max_score_93_reload {Type I LastRead 0 FirstWrite -1}
		max_score_94_reload {Type I LastRead 0 FirstWrite -1}
		max_score_95_reload {Type I LastRead 0 FirstWrite -1}
		max_1_out {Type O LastRead -1 FirstWrite 1}
		index_1_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	query_string_comp_0 { axis {  { query_string_comp_0_TDATA in_data 0 8 }  { query_string_comp_0_TVALID in_vld 0 1 }  { query_string_comp_0_TREADY in_acc 1 1 } } }
	reference_string_comp_0 { axis {  { reference_string_comp_0_TDATA in_data 0 8 }  { reference_string_comp_0_TVALID in_vld 0 1 }  { reference_string_comp_0_TREADY in_acc 1 1 } } }
}
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
set C_modelType { int 32 }
set C_modelArgList {
	{ query_string_comp_0 int 8 regular {axi_s 0 volatile  { query_string_comp_0 Data } }  }
	{ reference_string_comp_0 int 8 regular {axi_s 0 volatile  { reference_string_comp_0 Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "query_string_comp_0", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "reference_string_comp_0", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ query_string_comp_0_TDATA sc_in sc_lv 8 signal 0 } 
	{ query_string_comp_0_TVALID sc_in sc_logic 1 invld 0 } 
	{ query_string_comp_0_TREADY sc_out sc_logic 1 inacc 0 } 
	{ reference_string_comp_0_TDATA sc_in sc_lv 8 signal 1 } 
	{ reference_string_comp_0_TVALID sc_in sc_logic 1 invld 1 } 
	{ reference_string_comp_0_TREADY sc_out sc_logic 1 inacc 1 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "query_string_comp_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "query_string_comp_0", "role": "TDATA" }} , 
 	{ "name": "query_string_comp_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "query_string_comp_0", "role": "TVALID" }} , 
 	{ "name": "query_string_comp_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "query_string_comp_0", "role": "TREADY" }} , 
 	{ "name": "reference_string_comp_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "reference_string_comp_0", "role": "TDATA" }} , 
 	{ "name": "reference_string_comp_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "reference_string_comp_0", "role": "TVALID" }} , 
 	{ "name": "reference_string_comp_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "reference_string_comp_0", "role": "TREADY" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "36", "38", "40", "42", "44", "46", "49", "83", "86", "87"],
		"CDFG" : "seq_align",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "query_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_245_10_fu_1803", "Port" : "query_string_comp_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "reference_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_215_7_fu_1781", "Port" : "reference_string_comp_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "kernel", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.last_pe_score_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_1_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_2_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_3_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_4_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_5_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_6_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_7_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_8_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_9_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_10_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_11_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_12_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_13_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_14_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_15_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_181_1_fu_1572", "Parent" : "0", "Child" : ["35"],
		"CDFG" : "seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_181_1",
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
			{"Name" : "dp_mem_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "local_dpmem_loop_VITIS_LOOP_181_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_181_1_fu_1572.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_187_2_fu_1639", "Parent" : "0", "Child" : ["37"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_187_2",
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
			{"Name" : "last_pe_score", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_187_2_fu_1639.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_197_4_fu_1645", "Parent" : "0", "Child" : ["39"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_197_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max_col_value_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_4", "PipelineType" : "NotSupport"}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_197_4_fu_1645.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_206_5_VITIS_LOOP_208_6_fu_1745", "Parent" : "0", "Child" : ["41"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_206_5_VITIS_LOOP_208_6",
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
			{"Name" : "traceback_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_15", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_206_5_VITIS_LOOP_208_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_206_5_VITIS_LOOP_208_6_fu_1745.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_215_7_fu_1781", "Parent" : "0", "Child" : ["43"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_215_7",
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
			{"Name" : "VITIS_LOOP_215_7", "PipelineType" : "NotSupport"}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_215_7_fu_1781.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_245_10_fu_1803", "Parent" : "0", "Child" : ["45"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_245_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "query_string_comp_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "query_data_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_245_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_245_10_fu_1803.flow_control_loop_pipe_sequential_init_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_traceback_logic_fu_1872", "Parent" : "0", "Child" : ["47", "48"],
		"CDFG" : "seq_align_Pipeline_traceback_logic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ultimate_row_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "ultimate_col_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "traceback_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "traceback_logic", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_traceback_logic_fu_1872.mux_164_2_1_1_U717", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_traceback_logic_fu_1872.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894", "Parent" : "0", "Child" : ["50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82"],
		"CDFG" : "seq_align_Pipeline_kernel1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1060", "EstimateLatencyMax" : "1060",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max_col_value_95", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_94", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_93", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_92", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_91", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_90", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_89", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_88", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_87", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_86", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_85", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_84", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_83", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_82", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_81", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_80", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_79", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_78", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_77", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_76", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_75", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_74", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_73", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_72", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_71", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_70", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_67", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln290", "Type" : "None", "Direction" : "I"},
			{"Name" : "traceback_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln282_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "traceback_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_reference", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "last_pe_score", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_cast8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_phi_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast10", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast11", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast12", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast13", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast14", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast15", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast16", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast17", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast18", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast19", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast20", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast21", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast22", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast23", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast24", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast26", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast27", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast28", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast29", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast30", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast31", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast32", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast33", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast34", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast35", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast36", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast37", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast38", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast39", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast40", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln254", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_127_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_126_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_125_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_124_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_123_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_122_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_121_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_120_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_119_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_118_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_117_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_116_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_115_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_113_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_112_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_111_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_110_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_109_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_108_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_107_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_106_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_105_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_104_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_103_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_102_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_101_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_100_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_99_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_98_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_97_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_96_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_94_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_92_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_88_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_85_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_84_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_83_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_66_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_65_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_94_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_92_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_88_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_85_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_84_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_83_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_66_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_65_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "temp_1_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "kernel1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U258", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U259", "Parent" : "49"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U260", "Parent" : "49"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U261", "Parent" : "49"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U262", "Parent" : "49"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U263", "Parent" : "49"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U264", "Parent" : "49"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U265", "Parent" : "49"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U266", "Parent" : "49"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U267", "Parent" : "49"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U268", "Parent" : "49"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U269", "Parent" : "49"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U270", "Parent" : "49"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U271", "Parent" : "49"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U272", "Parent" : "49"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U273", "Parent" : "49"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U274", "Parent" : "49"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U275", "Parent" : "49"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U276", "Parent" : "49"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U277", "Parent" : "49"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U278", "Parent" : "49"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U279", "Parent" : "49"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U280", "Parent" : "49"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U281", "Parent" : "49"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U282", "Parent" : "49"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U283", "Parent" : "49"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U284", "Parent" : "49"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U285", "Parent" : "49"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U286", "Parent" : "49"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U287", "Parent" : "49"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U288", "Parent" : "49"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U289", "Parent" : "49"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_310_11_fu_2286", "Parent" : "0", "Child" : ["84", "85"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_310_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max", "Type" : "None", "Direction" : "I"},
			{"Name" : "index", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_64_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_65_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_66_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_67_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_68_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_69_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_70_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_71_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_72_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_73_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_74_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_75_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_76_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_77_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_78_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_79_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_80_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_81_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_82_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_83_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_84_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_85_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_86_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_87_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_88_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_89_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_90_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_91_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_92_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_93_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_94_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_95_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "index_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_310_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_310_11_fu_2286.mux_326_32_1_1_U679", "Parent" : "83"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_310_11_fu_2286.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3232_32_1_1_U737", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3232_32_1_1_U738", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	seq_align {
		query_string_comp_0 {Type I LastRead 1 FirstWrite -1}
		reference_string_comp_0 {Type I LastRead 0 FirstWrite -1}}
	seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_181_1 {
		dp_mem_62_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_61_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_60_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_59_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_58_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_57_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_56_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_55_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_54_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_53_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_52_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_51_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_50_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_49_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_48_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_47_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_46_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_45_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_44_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_43_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_42_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_41_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_40_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_39_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_38_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_37_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_36_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_35_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_34_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_33_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_32_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_31_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_30_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_29_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_28_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_27_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_26_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_25_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_24_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_23_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_22_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_21_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_20_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_19_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_18_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_17_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_16_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_15_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_14_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_13_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_12_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_11_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_10_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_9_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_8_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_7_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_6_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_5_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_4_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_3_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_2_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_1_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_out {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_187_2 {
		last_pe_score {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_197_4 {
		max_col_value_31_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_30_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_29_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_28_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_27_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_26_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_25_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_24_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_23_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_22_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_21_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_20_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_19_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_18_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_17_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_16_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_15_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_14_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_13_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_12_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_11_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_10_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_9_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_8_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_7_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_6_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_5_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_4_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_3_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_2_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_1_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_31_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_30_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_29_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_28_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_27_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_26_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_25_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_24_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_23_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_22_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_21_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_20_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_19_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_18_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_17_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_16_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_15_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_14_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_13_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_12_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_11_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_10_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_9_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_8_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_7_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_6_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_5_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_4_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_3_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_2_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_1_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_out {Type O LastRead -1 FirstWrite 0}
		max_score_31_out {Type O LastRead -1 FirstWrite 0}
		max_score_30_out {Type O LastRead -1 FirstWrite 0}
		max_score_29_out {Type O LastRead -1 FirstWrite 0}
		max_score_28_out {Type O LastRead -1 FirstWrite 0}
		max_score_27_out {Type O LastRead -1 FirstWrite 0}
		max_score_26_out {Type O LastRead -1 FirstWrite 0}
		max_score_25_out {Type O LastRead -1 FirstWrite 0}
		max_score_24_out {Type O LastRead -1 FirstWrite 0}
		max_score_23_out {Type O LastRead -1 FirstWrite 0}
		max_score_22_out {Type O LastRead -1 FirstWrite 0}
		max_score_21_out {Type O LastRead -1 FirstWrite 0}
		max_score_20_out {Type O LastRead -1 FirstWrite 0}
		max_score_19_out {Type O LastRead -1 FirstWrite 0}
		max_score_18_out {Type O LastRead -1 FirstWrite 0}
		max_score_17_out {Type O LastRead -1 FirstWrite 0}
		max_score_16_out {Type O LastRead -1 FirstWrite 0}
		max_score_15_out {Type O LastRead -1 FirstWrite 0}
		max_score_14_out {Type O LastRead -1 FirstWrite 0}
		max_score_13_out {Type O LastRead -1 FirstWrite 0}
		max_score_12_out {Type O LastRead -1 FirstWrite 0}
		max_score_11_out {Type O LastRead -1 FirstWrite 0}
		max_score_10_out {Type O LastRead -1 FirstWrite 0}
		max_score_9_out {Type O LastRead -1 FirstWrite 0}
		max_score_8_out {Type O LastRead -1 FirstWrite 0}
		max_score_7_out {Type O LastRead -1 FirstWrite 0}
		max_score_6_out {Type O LastRead -1 FirstWrite 0}
		max_score_5_out {Type O LastRead -1 FirstWrite 0}
		max_score_4_out {Type O LastRead -1 FirstWrite 0}
		max_score_3_out {Type O LastRead -1 FirstWrite 0}
		max_score_2_out {Type O LastRead -1 FirstWrite 0}
		max_score_1_out {Type O LastRead -1 FirstWrite 0}
		max_score_out {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_206_5_VITIS_LOOP_208_6 {
		traceback_V {Type O LastRead -1 FirstWrite 2}
		traceback_V_1 {Type O LastRead -1 FirstWrite 2}
		traceback_V_2 {Type O LastRead -1 FirstWrite 2}
		traceback_V_3 {Type O LastRead -1 FirstWrite 2}
		traceback_V_4 {Type O LastRead -1 FirstWrite 2}
		traceback_V_5 {Type O LastRead -1 FirstWrite 2}
		traceback_V_6 {Type O LastRead -1 FirstWrite 2}
		traceback_V_7 {Type O LastRead -1 FirstWrite 2}
		traceback_V_8 {Type O LastRead -1 FirstWrite 2}
		traceback_V_9 {Type O LastRead -1 FirstWrite 2}
		traceback_V_10 {Type O LastRead -1 FirstWrite 2}
		traceback_V_11 {Type O LastRead -1 FirstWrite 2}
		traceback_V_12 {Type O LastRead -1 FirstWrite 2}
		traceback_V_13 {Type O LastRead -1 FirstWrite 2}
		traceback_V_14 {Type O LastRead -1 FirstWrite 2}
		traceback_V_15 {Type O LastRead -1 FirstWrite 2}}
	seq_align_Pipeline_VITIS_LOOP_215_7 {
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
		local_reference_15 {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_245_10 {
		empty_22 {Type I LastRead 0 FirstWrite -1}
		empty_23 {Type I LastRead 0 FirstWrite -1}
		empty_24 {Type I LastRead 0 FirstWrite -1}
		empty_25 {Type I LastRead 0 FirstWrite -1}
		empty_26 {Type I LastRead 0 FirstWrite -1}
		empty_27 {Type I LastRead 0 FirstWrite -1}
		empty_28 {Type I LastRead 0 FirstWrite -1}
		empty_29 {Type I LastRead 0 FirstWrite -1}
		empty_30 {Type I LastRead 0 FirstWrite -1}
		empty_31 {Type I LastRead 0 FirstWrite -1}
		empty_32 {Type I LastRead 0 FirstWrite -1}
		empty_33 {Type I LastRead 0 FirstWrite -1}
		empty_34 {Type I LastRead 0 FirstWrite -1}
		empty_35 {Type I LastRead 0 FirstWrite -1}
		empty_36 {Type I LastRead 0 FirstWrite -1}
		empty_37 {Type I LastRead 0 FirstWrite -1}
		empty_38 {Type I LastRead 0 FirstWrite -1}
		empty_39 {Type I LastRead 0 FirstWrite -1}
		empty_40 {Type I LastRead 0 FirstWrite -1}
		empty_41 {Type I LastRead 0 FirstWrite -1}
		empty_42 {Type I LastRead 0 FirstWrite -1}
		empty_43 {Type I LastRead 0 FirstWrite -1}
		empty_44 {Type I LastRead 0 FirstWrite -1}
		empty_45 {Type I LastRead 0 FirstWrite -1}
		empty_46 {Type I LastRead 0 FirstWrite -1}
		empty_47 {Type I LastRead 0 FirstWrite -1}
		empty_48 {Type I LastRead 0 FirstWrite -1}
		empty_49 {Type I LastRead 0 FirstWrite -1}
		empty_50 {Type I LastRead 0 FirstWrite -1}
		empty_51 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		query_string_comp_0 {Type I LastRead 1 FirstWrite -1}
		query_data_1_out {Type O LastRead -1 FirstWrite 1}
		query_data_2_out {Type O LastRead -1 FirstWrite 1}
		query_data_3_out {Type O LastRead -1 FirstWrite 1}
		query_data_4_out {Type O LastRead -1 FirstWrite 1}
		query_data_5_out {Type O LastRead -1 FirstWrite 1}
		query_data_6_out {Type O LastRead -1 FirstWrite 1}
		query_data_7_out {Type O LastRead -1 FirstWrite 1}
		query_data_8_out {Type O LastRead -1 FirstWrite 1}
		query_data_9_out {Type O LastRead -1 FirstWrite 1}
		query_data_10_out {Type O LastRead -1 FirstWrite 1}
		query_data_11_out {Type O LastRead -1 FirstWrite 1}
		query_data_12_out {Type O LastRead -1 FirstWrite 1}
		query_data_13_out {Type O LastRead -1 FirstWrite 1}
		query_data_14_out {Type O LastRead -1 FirstWrite 1}
		query_data_15_out {Type O LastRead -1 FirstWrite 1}
		query_data_16_out {Type O LastRead -1 FirstWrite 1}
		query_data_17_out {Type O LastRead -1 FirstWrite 1}
		query_data_18_out {Type O LastRead -1 FirstWrite 1}
		query_data_19_out {Type O LastRead -1 FirstWrite 1}
		query_data_20_out {Type O LastRead -1 FirstWrite 1}
		query_data_21_out {Type O LastRead -1 FirstWrite 1}
		query_data_22_out {Type O LastRead -1 FirstWrite 1}
		query_data_23_out {Type O LastRead -1 FirstWrite 1}
		query_data_24_out {Type O LastRead -1 FirstWrite 1}
		query_data_25_out {Type O LastRead -1 FirstWrite 1}
		query_data_26_out {Type O LastRead -1 FirstWrite 1}
		query_data_27_out {Type O LastRead -1 FirstWrite 1}
		query_data_28_out {Type O LastRead -1 FirstWrite 1}
		query_data_29_out {Type O LastRead -1 FirstWrite 1}
		query_data_30_out {Type O LastRead -1 FirstWrite 1}
		query_data_out {Type O LastRead -1 FirstWrite 1}
		p_phi_out {Type O LastRead -1 FirstWrite 1}}
	seq_align_Pipeline_traceback_logic {
		ultimate_row_value {Type I LastRead 0 FirstWrite -1}
		ultimate_col_value {Type I LastRead 0 FirstWrite -1}
		traceback_V {Type I LastRead 1 FirstWrite -1}
		traceback_V_1 {Type I LastRead 1 FirstWrite -1}
		traceback_V_2 {Type I LastRead 1 FirstWrite -1}
		traceback_V_3 {Type I LastRead 1 FirstWrite -1}
		traceback_V_4 {Type I LastRead 1 FirstWrite -1}
		traceback_V_5 {Type I LastRead 1 FirstWrite -1}
		traceback_V_6 {Type I LastRead 1 FirstWrite -1}
		traceback_V_7 {Type I LastRead 1 FirstWrite -1}
		traceback_V_8 {Type I LastRead 1 FirstWrite -1}
		traceback_V_9 {Type I LastRead 1 FirstWrite -1}
		traceback_V_10 {Type I LastRead 1 FirstWrite -1}
		traceback_V_11 {Type I LastRead 1 FirstWrite -1}
		traceback_V_12 {Type I LastRead 1 FirstWrite -1}
		traceback_V_13 {Type I LastRead 1 FirstWrite -1}
		traceback_V_14 {Type I LastRead 1 FirstWrite -1}
		traceback_V_15 {Type I LastRead 1 FirstWrite -1}}
	seq_align_Pipeline_kernel1 {
		max_col_value_95 {Type I LastRead 0 FirstWrite -1}
		max_col_value_94 {Type I LastRead 0 FirstWrite -1}
		max_col_value_93 {Type I LastRead 0 FirstWrite -1}
		max_col_value_92 {Type I LastRead 0 FirstWrite -1}
		max_col_value_91 {Type I LastRead 0 FirstWrite -1}
		max_col_value_90 {Type I LastRead 0 FirstWrite -1}
		max_col_value_89 {Type I LastRead 0 FirstWrite -1}
		max_col_value_88 {Type I LastRead 0 FirstWrite -1}
		max_col_value_87 {Type I LastRead 0 FirstWrite -1}
		max_col_value_86 {Type I LastRead 0 FirstWrite -1}
		max_col_value_85 {Type I LastRead 0 FirstWrite -1}
		max_col_value_84 {Type I LastRead 0 FirstWrite -1}
		max_col_value_83 {Type I LastRead 0 FirstWrite -1}
		max_col_value_82 {Type I LastRead 0 FirstWrite -1}
		max_col_value_81 {Type I LastRead 0 FirstWrite -1}
		max_col_value_80 {Type I LastRead 0 FirstWrite -1}
		max_col_value_79 {Type I LastRead 0 FirstWrite -1}
		max_col_value_78 {Type I LastRead 0 FirstWrite -1}
		max_col_value_77 {Type I LastRead 0 FirstWrite -1}
		max_col_value_76 {Type I LastRead 0 FirstWrite -1}
		max_col_value_75 {Type I LastRead 0 FirstWrite -1}
		max_col_value_74 {Type I LastRead 0 FirstWrite -1}
		max_col_value_73 {Type I LastRead 0 FirstWrite -1}
		max_col_value_72 {Type I LastRead 0 FirstWrite -1}
		max_col_value_71 {Type I LastRead 0 FirstWrite -1}
		max_col_value_70 {Type I LastRead 0 FirstWrite -1}
		max_col_value_69 {Type I LastRead 0 FirstWrite -1}
		max_col_value_68 {Type I LastRead 0 FirstWrite -1}
		max_col_value_67 {Type I LastRead 0 FirstWrite -1}
		max_col_value_66 {Type I LastRead 0 FirstWrite -1}
		max_col_value_65 {Type I LastRead 0 FirstWrite -1}
		max_col_value_64 {Type I LastRead 0 FirstWrite -1}
		max_row_value_63 {Type I LastRead 0 FirstWrite -1}
		max_row_value_62 {Type I LastRead 0 FirstWrite -1}
		max_row_value_61 {Type I LastRead 0 FirstWrite -1}
		max_row_value_60 {Type I LastRead 0 FirstWrite -1}
		max_row_value_59 {Type I LastRead 0 FirstWrite -1}
		max_row_value_58 {Type I LastRead 0 FirstWrite -1}
		max_row_value_57 {Type I LastRead 0 FirstWrite -1}
		max_row_value_56 {Type I LastRead 0 FirstWrite -1}
		max_row_value_55 {Type I LastRead 0 FirstWrite -1}
		max_row_value_54 {Type I LastRead 0 FirstWrite -1}
		max_row_value_53 {Type I LastRead 0 FirstWrite -1}
		max_row_value_52 {Type I LastRead 0 FirstWrite -1}
		max_row_value_51 {Type I LastRead 0 FirstWrite -1}
		max_row_value_50 {Type I LastRead 0 FirstWrite -1}
		max_row_value_49 {Type I LastRead 0 FirstWrite -1}
		max_row_value_48 {Type I LastRead 0 FirstWrite -1}
		max_row_value_47 {Type I LastRead 0 FirstWrite -1}
		max_row_value_46 {Type I LastRead 0 FirstWrite -1}
		max_row_value_45 {Type I LastRead 0 FirstWrite -1}
		max_row_value_44 {Type I LastRead 0 FirstWrite -1}
		max_row_value_43 {Type I LastRead 0 FirstWrite -1}
		max_row_value_42 {Type I LastRead 0 FirstWrite -1}
		max_row_value_41 {Type I LastRead 0 FirstWrite -1}
		max_row_value_40 {Type I LastRead 0 FirstWrite -1}
		max_row_value_39 {Type I LastRead 0 FirstWrite -1}
		max_row_value_38 {Type I LastRead 0 FirstWrite -1}
		max_row_value_37 {Type I LastRead 0 FirstWrite -1}
		max_row_value_36 {Type I LastRead 0 FirstWrite -1}
		max_row_value_35 {Type I LastRead 0 FirstWrite -1}
		max_row_value_34 {Type I LastRead 0 FirstWrite -1}
		max_row_value_33 {Type I LastRead 0 FirstWrite -1}
		max_row_value_32 {Type I LastRead 0 FirstWrite -1}
		max_score_63 {Type I LastRead 0 FirstWrite -1}
		max_score_62 {Type I LastRead 0 FirstWrite -1}
		max_score_61 {Type I LastRead 0 FirstWrite -1}
		max_score_60 {Type I LastRead 0 FirstWrite -1}
		max_score_59 {Type I LastRead 0 FirstWrite -1}
		max_score_58 {Type I LastRead 0 FirstWrite -1}
		max_score_57 {Type I LastRead 0 FirstWrite -1}
		max_score_56 {Type I LastRead 0 FirstWrite -1}
		max_score_55 {Type I LastRead 0 FirstWrite -1}
		max_score_54 {Type I LastRead 0 FirstWrite -1}
		max_score_53 {Type I LastRead 0 FirstWrite -1}
		max_score_52 {Type I LastRead 0 FirstWrite -1}
		max_score_51 {Type I LastRead 0 FirstWrite -1}
		max_score_50 {Type I LastRead 0 FirstWrite -1}
		max_score_49 {Type I LastRead 0 FirstWrite -1}
		max_score_48 {Type I LastRead 0 FirstWrite -1}
		max_score_47 {Type I LastRead 0 FirstWrite -1}
		max_score_46 {Type I LastRead 0 FirstWrite -1}
		max_score_45 {Type I LastRead 0 FirstWrite -1}
		max_score_44 {Type I LastRead 0 FirstWrite -1}
		max_score_43 {Type I LastRead 0 FirstWrite -1}
		max_score_42 {Type I LastRead 0 FirstWrite -1}
		max_score_41 {Type I LastRead 0 FirstWrite -1}
		max_score_40 {Type I LastRead 0 FirstWrite -1}
		max_score_39 {Type I LastRead 0 FirstWrite -1}
		max_score_38 {Type I LastRead 0 FirstWrite -1}
		max_score_37 {Type I LastRead 0 FirstWrite -1}
		max_score_36 {Type I LastRead 0 FirstWrite -1}
		max_score_35 {Type I LastRead 0 FirstWrite -1}
		max_score_34 {Type I LastRead 0 FirstWrite -1}
		max_score_33 {Type I LastRead 0 FirstWrite -1}
		max_score_32 {Type I LastRead 0 FirstWrite -1}
		zext_ln290 {Type I LastRead 0 FirstWrite -1}
		traceback_V_14 {Type O LastRead -1 FirstWrite 4}
		traceback_V_13 {Type O LastRead -1 FirstWrite 4}
		traceback_V_12 {Type O LastRead -1 FirstWrite 4}
		traceback_V_11 {Type O LastRead -1 FirstWrite 4}
		traceback_V_10 {Type O LastRead -1 FirstWrite 4}
		traceback_V_9 {Type O LastRead -1 FirstWrite 4}
		traceback_V_8 {Type O LastRead -1 FirstWrite 4}
		traceback_V_7 {Type O LastRead -1 FirstWrite 4}
		traceback_V_6 {Type O LastRead -1 FirstWrite 4}
		traceback_V_5 {Type O LastRead -1 FirstWrite 4}
		traceback_V_4 {Type O LastRead -1 FirstWrite 4}
		traceback_V_3 {Type O LastRead -1 FirstWrite 4}
		traceback_V_2 {Type O LastRead -1 FirstWrite 4}
		traceback_V_1 {Type O LastRead -1 FirstWrite 4}
		traceback_V {Type O LastRead -1 FirstWrite 4}
		zext_ln282_1 {Type I LastRead 0 FirstWrite -1}
		traceback_V_15 {Type O LastRead -1 FirstWrite 4}
		tmp_3 {Type I LastRead 0 FirstWrite -1}
		local_reference {Type I LastRead 2 FirstWrite -1}
		local_reference_1 {Type I LastRead 2 FirstWrite -1}
		local_reference_2 {Type I LastRead 2 FirstWrite -1}
		local_reference_3 {Type I LastRead 2 FirstWrite -1}
		local_reference_4 {Type I LastRead 2 FirstWrite -1}
		local_reference_5 {Type I LastRead 2 FirstWrite -1}
		local_reference_6 {Type I LastRead 2 FirstWrite -1}
		local_reference_7 {Type I LastRead 2 FirstWrite -1}
		local_reference_8 {Type I LastRead 2 FirstWrite -1}
		local_reference_9 {Type I LastRead 2 FirstWrite -1}
		local_reference_10 {Type I LastRead 2 FirstWrite -1}
		local_reference_11 {Type I LastRead 2 FirstWrite -1}
		local_reference_12 {Type I LastRead 2 FirstWrite -1}
		local_reference_13 {Type I LastRead 2 FirstWrite -1}
		local_reference_14 {Type I LastRead 2 FirstWrite -1}
		local_reference_15 {Type I LastRead 2 FirstWrite -1}
		last_pe_score {Type IO LastRead 0 FirstWrite 4}
		p_cast8 {Type I LastRead 0 FirstWrite -1}
		p_phi_reload {Type I LastRead 0 FirstWrite -1}
		cmp_i38 {Type I LastRead 0 FirstWrite -1}
		p_cast10 {Type I LastRead 0 FirstWrite -1}
		cmp_i_1 {Type I LastRead 0 FirstWrite -1}
		query_data_reload {Type I LastRead 0 FirstWrite -1}
		p_cast11 {Type I LastRead 0 FirstWrite -1}
		cmp_i_2 {Type I LastRead 0 FirstWrite -1}
		query_data_30_reload {Type I LastRead 0 FirstWrite -1}
		p_cast12 {Type I LastRead 0 FirstWrite -1}
		cmp_i_3 {Type I LastRead 0 FirstWrite -1}
		query_data_29_reload {Type I LastRead 0 FirstWrite -1}
		p_cast13 {Type I LastRead 0 FirstWrite -1}
		cmp_i_4 {Type I LastRead 0 FirstWrite -1}
		query_data_28_reload {Type I LastRead 0 FirstWrite -1}
		p_cast14 {Type I LastRead 0 FirstWrite -1}
		cmp_i_5 {Type I LastRead 0 FirstWrite -1}
		query_data_27_reload {Type I LastRead 0 FirstWrite -1}
		p_cast15 {Type I LastRead 0 FirstWrite -1}
		cmp_i_6 {Type I LastRead 0 FirstWrite -1}
		query_data_26_reload {Type I LastRead 0 FirstWrite -1}
		p_cast16 {Type I LastRead 0 FirstWrite -1}
		cmp_i_7 {Type I LastRead 0 FirstWrite -1}
		query_data_25_reload {Type I LastRead 0 FirstWrite -1}
		p_cast17 {Type I LastRead 0 FirstWrite -1}
		cmp_i_8 {Type I LastRead 0 FirstWrite -1}
		query_data_24_reload {Type I LastRead 0 FirstWrite -1}
		p_cast18 {Type I LastRead 0 FirstWrite -1}
		cmp_i_9 {Type I LastRead 0 FirstWrite -1}
		query_data_23_reload {Type I LastRead 0 FirstWrite -1}
		p_cast19 {Type I LastRead 0 FirstWrite -1}
		cmp_i_10 {Type I LastRead 0 FirstWrite -1}
		query_data_22_reload {Type I LastRead 0 FirstWrite -1}
		p_cast20 {Type I LastRead 0 FirstWrite -1}
		cmp_i_11 {Type I LastRead 0 FirstWrite -1}
		query_data_21_reload {Type I LastRead 0 FirstWrite -1}
		p_cast21 {Type I LastRead 0 FirstWrite -1}
		cmp_i_12 {Type I LastRead 0 FirstWrite -1}
		query_data_20_reload {Type I LastRead 0 FirstWrite -1}
		p_cast22 {Type I LastRead 0 FirstWrite -1}
		cmp_i_13 {Type I LastRead 0 FirstWrite -1}
		query_data_19_reload {Type I LastRead 0 FirstWrite -1}
		p_cast23 {Type I LastRead 0 FirstWrite -1}
		cmp_i_14 {Type I LastRead 0 FirstWrite -1}
		query_data_18_reload {Type I LastRead 0 FirstWrite -1}
		p_cast24 {Type I LastRead 0 FirstWrite -1}
		cmp_i_15 {Type I LastRead 0 FirstWrite -1}
		query_data_17_reload {Type I LastRead 0 FirstWrite -1}
		p_cast26 {Type I LastRead 0 FirstWrite -1}
		cmp_i_16 {Type I LastRead 0 FirstWrite -1}
		query_data_16_reload {Type I LastRead 0 FirstWrite -1}
		p_cast27 {Type I LastRead 0 FirstWrite -1}
		cmp_i_17 {Type I LastRead 0 FirstWrite -1}
		query_data_15_reload {Type I LastRead 0 FirstWrite -1}
		p_cast28 {Type I LastRead 0 FirstWrite -1}
		cmp_i_18 {Type I LastRead 0 FirstWrite -1}
		query_data_14_reload {Type I LastRead 0 FirstWrite -1}
		p_cast29 {Type I LastRead 0 FirstWrite -1}
		cmp_i_19 {Type I LastRead 0 FirstWrite -1}
		query_data_13_reload {Type I LastRead 0 FirstWrite -1}
		p_cast30 {Type I LastRead 0 FirstWrite -1}
		cmp_i_20 {Type I LastRead 0 FirstWrite -1}
		query_data_12_reload {Type I LastRead 0 FirstWrite -1}
		p_cast31 {Type I LastRead 0 FirstWrite -1}
		cmp_i_21 {Type I LastRead 0 FirstWrite -1}
		query_data_11_reload {Type I LastRead 0 FirstWrite -1}
		p_cast32 {Type I LastRead 0 FirstWrite -1}
		cmp_i_22 {Type I LastRead 0 FirstWrite -1}
		query_data_10_reload {Type I LastRead 0 FirstWrite -1}
		p_cast33 {Type I LastRead 0 FirstWrite -1}
		cmp_i_23 {Type I LastRead 0 FirstWrite -1}
		query_data_9_reload {Type I LastRead 0 FirstWrite -1}
		p_cast34 {Type I LastRead 0 FirstWrite -1}
		cmp_i_24 {Type I LastRead 0 FirstWrite -1}
		query_data_8_reload {Type I LastRead 0 FirstWrite -1}
		p_cast35 {Type I LastRead 0 FirstWrite -1}
		cmp_i_25 {Type I LastRead 0 FirstWrite -1}
		query_data_7_reload {Type I LastRead 0 FirstWrite -1}
		p_cast36 {Type I LastRead 0 FirstWrite -1}
		cmp_i_26 {Type I LastRead 0 FirstWrite -1}
		query_data_6_reload {Type I LastRead 0 FirstWrite -1}
		p_cast37 {Type I LastRead 0 FirstWrite -1}
		cmp_i_27 {Type I LastRead 0 FirstWrite -1}
		query_data_5_reload {Type I LastRead 0 FirstWrite -1}
		p_cast38 {Type I LastRead 0 FirstWrite -1}
		cmp_i_28 {Type I LastRead 0 FirstWrite -1}
		query_data_4_reload {Type I LastRead 0 FirstWrite -1}
		p_cast39 {Type I LastRead 0 FirstWrite -1}
		cmp_i_29 {Type I LastRead 0 FirstWrite -1}
		query_data_3_reload {Type I LastRead 0 FirstWrite -1}
		p_cast40 {Type I LastRead 0 FirstWrite -1}
		cmp_i_30 {Type I LastRead 0 FirstWrite -1}
		query_data_2_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln254 {Type I LastRead 0 FirstWrite -1}
		cmp_i_31 {Type I LastRead 0 FirstWrite -1}
		query_data_1_reload {Type I LastRead 0 FirstWrite -1}
		max_col_value_127_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_126_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_125_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_124_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_123_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_122_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_121_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_120_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_119_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_118_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_117_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_116_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_115_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_114_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_113_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_112_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_111_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_110_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_109_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_108_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_107_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_106_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_105_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_104_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_103_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_102_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_101_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_100_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_99_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_98_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_97_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_96_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_95_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_94_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_93_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_92_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_91_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_90_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_89_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_88_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_87_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_86_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_85_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_84_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_83_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_82_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_81_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_80_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_79_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_78_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_77_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_76_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_75_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_74_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_73_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_72_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_71_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_70_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_69_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_68_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_67_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_66_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_65_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_64_out {Type O LastRead -1 FirstWrite 3}
		max_score_95_out {Type O LastRead -1 FirstWrite 3}
		max_score_94_out {Type O LastRead -1 FirstWrite 3}
		max_score_93_out {Type O LastRead -1 FirstWrite 3}
		max_score_92_out {Type O LastRead -1 FirstWrite 3}
		max_score_91_out {Type O LastRead -1 FirstWrite 3}
		max_score_90_out {Type O LastRead -1 FirstWrite 3}
		max_score_89_out {Type O LastRead -1 FirstWrite 3}
		max_score_88_out {Type O LastRead -1 FirstWrite 3}
		max_score_87_out {Type O LastRead -1 FirstWrite 3}
		max_score_86_out {Type O LastRead -1 FirstWrite 3}
		max_score_85_out {Type O LastRead -1 FirstWrite 3}
		max_score_84_out {Type O LastRead -1 FirstWrite 3}
		max_score_83_out {Type O LastRead -1 FirstWrite 3}
		max_score_82_out {Type O LastRead -1 FirstWrite 3}
		max_score_81_out {Type O LastRead -1 FirstWrite 3}
		max_score_80_out {Type O LastRead -1 FirstWrite 3}
		max_score_79_out {Type O LastRead -1 FirstWrite 3}
		max_score_78_out {Type O LastRead -1 FirstWrite 3}
		max_score_77_out {Type O LastRead -1 FirstWrite 3}
		max_score_76_out {Type O LastRead -1 FirstWrite 3}
		max_score_75_out {Type O LastRead -1 FirstWrite 3}
		max_score_74_out {Type O LastRead -1 FirstWrite 3}
		max_score_73_out {Type O LastRead -1 FirstWrite 3}
		max_score_72_out {Type O LastRead -1 FirstWrite 3}
		max_score_71_out {Type O LastRead -1 FirstWrite 3}
		max_score_70_out {Type O LastRead -1 FirstWrite 3}
		max_score_69_out {Type O LastRead -1 FirstWrite 3}
		max_score_68_out {Type O LastRead -1 FirstWrite 3}
		max_score_67_out {Type O LastRead -1 FirstWrite 3}
		max_score_66_out {Type O LastRead -1 FirstWrite 3}
		max_score_65_out {Type O LastRead -1 FirstWrite 3}
		max_score_64_out {Type O LastRead -1 FirstWrite 3}
		p_out {Type IO LastRead 3 FirstWrite 3}
		p_out1 {Type IO LastRead 3 FirstWrite 3}
		p_out2 {Type IO LastRead 3 FirstWrite 3}
		p_out3 {Type IO LastRead 3 FirstWrite 3}
		p_out4 {Type IO LastRead 3 FirstWrite 3}
		p_out5 {Type IO LastRead 3 FirstWrite 3}
		p_out6 {Type IO LastRead 3 FirstWrite 3}
		p_out7 {Type IO LastRead 3 FirstWrite 3}
		p_out8 {Type IO LastRead 3 FirstWrite 3}
		p_out9 {Type IO LastRead 3 FirstWrite 3}
		p_out10 {Type IO LastRead 3 FirstWrite 3}
		p_out11 {Type IO LastRead 3 FirstWrite 3}
		p_out12 {Type IO LastRead 3 FirstWrite 3}
		p_out13 {Type IO LastRead 3 FirstWrite 3}
		p_out14 {Type IO LastRead 3 FirstWrite 3}
		p_out15 {Type IO LastRead 3 FirstWrite 3}
		p_out16 {Type IO LastRead 3 FirstWrite 3}
		p_out17 {Type IO LastRead 3 FirstWrite 3}
		p_out18 {Type IO LastRead 3 FirstWrite 3}
		p_out19 {Type IO LastRead 3 FirstWrite 3}
		p_out20 {Type IO LastRead 3 FirstWrite 3}
		p_out21 {Type IO LastRead 3 FirstWrite 3}
		p_out22 {Type IO LastRead 3 FirstWrite 3}
		p_out23 {Type IO LastRead 3 FirstWrite 3}
		p_out24 {Type IO LastRead 3 FirstWrite 3}
		p_out25 {Type IO LastRead 3 FirstWrite 3}
		p_out26 {Type IO LastRead 3 FirstWrite 3}
		p_out27 {Type IO LastRead 3 FirstWrite 3}
		p_out28 {Type IO LastRead 3 FirstWrite 3}
		p_out29 {Type IO LastRead 3 FirstWrite 3}
		p_out30 {Type IO LastRead 3 FirstWrite 3}
		p_out31 {Type IO LastRead 3 FirstWrite 3}
		p_out32 {Type IO LastRead 3 FirstWrite 3}
		p_out33 {Type IO LastRead 3 FirstWrite 3}
		p_out34 {Type IO LastRead 3 FirstWrite 3}
		p_out35 {Type IO LastRead 3 FirstWrite 3}
		p_out36 {Type IO LastRead 3 FirstWrite 3}
		p_out37 {Type IO LastRead 3 FirstWrite 3}
		p_out38 {Type IO LastRead 3 FirstWrite 3}
		p_out39 {Type IO LastRead 3 FirstWrite 3}
		p_out40 {Type IO LastRead 3 FirstWrite 3}
		p_out41 {Type IO LastRead 3 FirstWrite 3}
		p_out42 {Type IO LastRead 3 FirstWrite 3}
		p_out43 {Type IO LastRead 3 FirstWrite 3}
		p_out44 {Type IO LastRead 3 FirstWrite 3}
		p_out45 {Type IO LastRead 3 FirstWrite 3}
		p_out46 {Type IO LastRead 3 FirstWrite 3}
		p_out47 {Type IO LastRead 3 FirstWrite 3}
		p_out48 {Type IO LastRead 3 FirstWrite 3}
		p_out49 {Type IO LastRead 3 FirstWrite 3}
		p_out50 {Type IO LastRead 3 FirstWrite 3}
		p_out51 {Type IO LastRead 3 FirstWrite 3}
		p_out52 {Type IO LastRead 3 FirstWrite 3}
		p_out53 {Type IO LastRead 3 FirstWrite 3}
		p_out54 {Type IO LastRead 3 FirstWrite 3}
		p_out55 {Type IO LastRead 3 FirstWrite 3}
		p_out56 {Type IO LastRead 3 FirstWrite 3}
		p_out57 {Type IO LastRead 3 FirstWrite 3}
		p_out58 {Type IO LastRead 3 FirstWrite 3}
		p_out59 {Type IO LastRead 3 FirstWrite 3}
		p_out60 {Type IO LastRead 3 FirstWrite 3}
		p_out61 {Type IO LastRead 3 FirstWrite 3}
		p_out62 {Type IO LastRead 3 FirstWrite 3}
		temp_1_out {Type IO LastRead 2 FirstWrite 2}}
	seq_align_Pipeline_VITIS_LOOP_310_11 {
		max {Type I LastRead 0 FirstWrite -1}
		index {Type I LastRead 0 FirstWrite -1}
		max_score_64_reload {Type I LastRead 0 FirstWrite -1}
		max_score_65_reload {Type I LastRead 0 FirstWrite -1}
		max_score_66_reload {Type I LastRead 0 FirstWrite -1}
		max_score_67_reload {Type I LastRead 0 FirstWrite -1}
		max_score_68_reload {Type I LastRead 0 FirstWrite -1}
		max_score_69_reload {Type I LastRead 0 FirstWrite -1}
		max_score_70_reload {Type I LastRead 0 FirstWrite -1}
		max_score_71_reload {Type I LastRead 0 FirstWrite -1}
		max_score_72_reload {Type I LastRead 0 FirstWrite -1}
		max_score_73_reload {Type I LastRead 0 FirstWrite -1}
		max_score_74_reload {Type I LastRead 0 FirstWrite -1}
		max_score_75_reload {Type I LastRead 0 FirstWrite -1}
		max_score_76_reload {Type I LastRead 0 FirstWrite -1}
		max_score_77_reload {Type I LastRead 0 FirstWrite -1}
		max_score_78_reload {Type I LastRead 0 FirstWrite -1}
		max_score_79_reload {Type I LastRead 0 FirstWrite -1}
		max_score_80_reload {Type I LastRead 0 FirstWrite -1}
		max_score_81_reload {Type I LastRead 0 FirstWrite -1}
		max_score_82_reload {Type I LastRead 0 FirstWrite -1}
		max_score_83_reload {Type I LastRead 0 FirstWrite -1}
		max_score_84_reload {Type I LastRead 0 FirstWrite -1}
		max_score_85_reload {Type I LastRead 0 FirstWrite -1}
		max_score_86_reload {Type I LastRead 0 FirstWrite -1}
		max_score_87_reload {Type I LastRead 0 FirstWrite -1}
		max_score_88_reload {Type I LastRead 0 FirstWrite -1}
		max_score_89_reload {Type I LastRead 0 FirstWrite -1}
		max_score_90_reload {Type I LastRead 0 FirstWrite -1}
		max_score_91_reload {Type I LastRead 0 FirstWrite -1}
		max_score_92_reload {Type I LastRead 0 FirstWrite -1}
		max_score_93_reload {Type I LastRead 0 FirstWrite -1}
		max_score_94_reload {Type I LastRead 0 FirstWrite -1}
		max_score_95_reload {Type I LastRead 0 FirstWrite -1}
		max_1_out {Type O LastRead -1 FirstWrite 1}
		index_1_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	query_string_comp_0 { axis {  { query_string_comp_0_TDATA in_data 0 8 }  { query_string_comp_0_TVALID in_vld 0 1 }  { query_string_comp_0_TREADY in_acc 1 1 } } }
	reference_string_comp_0 { axis {  { reference_string_comp_0_TDATA in_data 0 8 }  { reference_string_comp_0_TVALID in_vld 0 1 }  { reference_string_comp_0_TREADY in_acc 1 1 } } }
}
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
set C_modelType { int 32 }
set C_modelArgList {
	{ query_string_comp_0 int 8 regular {axi_s 0 volatile  { query_string_comp_0 Data } }  }
	{ reference_string_comp_0 int 8 regular {axi_s 0 volatile  { reference_string_comp_0 Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "query_string_comp_0", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "reference_string_comp_0", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ query_string_comp_0_TDATA sc_in sc_lv 8 signal 0 } 
	{ query_string_comp_0_TVALID sc_in sc_logic 1 invld 0 } 
	{ query_string_comp_0_TREADY sc_out sc_logic 1 inacc 0 } 
	{ reference_string_comp_0_TDATA sc_in sc_lv 8 signal 1 } 
	{ reference_string_comp_0_TVALID sc_in sc_logic 1 invld 1 } 
	{ reference_string_comp_0_TREADY sc_out sc_logic 1 inacc 1 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "query_string_comp_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "query_string_comp_0", "role": "TDATA" }} , 
 	{ "name": "query_string_comp_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "query_string_comp_0", "role": "TVALID" }} , 
 	{ "name": "query_string_comp_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "query_string_comp_0", "role": "TREADY" }} , 
 	{ "name": "reference_string_comp_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "reference_string_comp_0", "role": "TDATA" }} , 
 	{ "name": "reference_string_comp_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "reference_string_comp_0", "role": "TVALID" }} , 
 	{ "name": "reference_string_comp_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "reference_string_comp_0", "role": "TREADY" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "36", "38", "40", "42", "44", "46", "49", "83", "86", "87"],
		"CDFG" : "seq_align",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "query_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_245_10_fu_1803", "Port" : "query_string_comp_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "reference_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_215_7_fu_1781", "Port" : "reference_string_comp_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "kernel", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.last_pe_score_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_1_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_2_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_3_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_4_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_5_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_6_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_7_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_8_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_9_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_10_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_11_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_12_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_13_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_14_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_15_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_181_1_fu_1572", "Parent" : "0", "Child" : ["35"],
		"CDFG" : "seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_181_1",
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
			{"Name" : "dp_mem_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "local_dpmem_loop_VITIS_LOOP_181_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_181_1_fu_1572.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_187_2_fu_1639", "Parent" : "0", "Child" : ["37"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_187_2",
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
			{"Name" : "last_pe_score", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_187_2_fu_1639.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_197_4_fu_1645", "Parent" : "0", "Child" : ["39"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_197_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max_col_value_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_4", "PipelineType" : "NotSupport"}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_197_4_fu_1645.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_206_5_VITIS_LOOP_208_6_fu_1745", "Parent" : "0", "Child" : ["41"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_206_5_VITIS_LOOP_208_6",
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
			{"Name" : "traceback_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_15", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_206_5_VITIS_LOOP_208_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_206_5_VITIS_LOOP_208_6_fu_1745.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_215_7_fu_1781", "Parent" : "0", "Child" : ["43"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_215_7",
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
			{"Name" : "VITIS_LOOP_215_7", "PipelineType" : "NotSupport"}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_215_7_fu_1781.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_245_10_fu_1803", "Parent" : "0", "Child" : ["45"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_245_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "query_string_comp_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "query_data_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_245_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_245_10_fu_1803.flow_control_loop_pipe_sequential_init_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_traceback_logic_fu_1872", "Parent" : "0", "Child" : ["47", "48"],
		"CDFG" : "seq_align_Pipeline_traceback_logic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ultimate_row_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "ultimate_col_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "traceback_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "traceback_logic", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_traceback_logic_fu_1872.mux_164_2_1_1_U717", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_traceback_logic_fu_1872.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894", "Parent" : "0", "Child" : ["50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82"],
		"CDFG" : "seq_align_Pipeline_kernel1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1060", "EstimateLatencyMax" : "1060",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max_col_value_95", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_94", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_93", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_92", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_91", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_90", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_89", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_88", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_87", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_86", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_85", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_84", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_83", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_82", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_81", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_80", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_79", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_78", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_77", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_76", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_75", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_74", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_73", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_72", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_71", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_70", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_67", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln290", "Type" : "None", "Direction" : "I"},
			{"Name" : "traceback_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln282_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "traceback_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_reference", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "last_pe_score", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_cast8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_phi_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast10", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast11", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast12", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast13", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast14", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast15", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast16", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast17", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast18", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast19", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast20", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast21", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast22", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast23", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast24", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast26", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast27", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast28", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast29", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast30", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast31", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast32", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast33", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast34", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast35", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast36", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast37", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast38", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast39", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast40", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln254", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_127_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_126_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_125_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_124_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_123_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_122_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_121_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_120_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_119_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_118_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_117_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_116_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_115_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_113_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_112_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_111_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_110_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_109_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_108_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_107_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_106_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_105_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_104_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_103_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_102_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_101_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_100_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_99_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_98_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_97_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_96_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_94_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_92_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_88_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_85_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_84_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_83_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_66_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_65_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_94_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_92_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_88_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_85_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_84_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_83_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_66_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_65_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "temp_1_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "kernel1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U258", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U259", "Parent" : "49"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U260", "Parent" : "49"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U261", "Parent" : "49"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U262", "Parent" : "49"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U263", "Parent" : "49"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U264", "Parent" : "49"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U265", "Parent" : "49"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U266", "Parent" : "49"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U267", "Parent" : "49"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U268", "Parent" : "49"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U269", "Parent" : "49"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U270", "Parent" : "49"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U271", "Parent" : "49"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U272", "Parent" : "49"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U273", "Parent" : "49"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U274", "Parent" : "49"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U275", "Parent" : "49"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U276", "Parent" : "49"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U277", "Parent" : "49"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U278", "Parent" : "49"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U279", "Parent" : "49"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U280", "Parent" : "49"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U281", "Parent" : "49"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U282", "Parent" : "49"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U283", "Parent" : "49"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U284", "Parent" : "49"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U285", "Parent" : "49"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U286", "Parent" : "49"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U287", "Parent" : "49"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U288", "Parent" : "49"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U289", "Parent" : "49"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_310_11_fu_2286", "Parent" : "0", "Child" : ["84", "85"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_310_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max", "Type" : "None", "Direction" : "I"},
			{"Name" : "index", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_64_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_65_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_66_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_67_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_68_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_69_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_70_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_71_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_72_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_73_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_74_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_75_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_76_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_77_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_78_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_79_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_80_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_81_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_82_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_83_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_84_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_85_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_86_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_87_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_88_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_89_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_90_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_91_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_92_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_93_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_94_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_95_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "index_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_310_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_310_11_fu_2286.mux_326_32_1_1_U679", "Parent" : "83"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_310_11_fu_2286.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3232_32_1_1_U737", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3232_32_1_1_U738", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	seq_align {
		query_string_comp_0 {Type I LastRead 1 FirstWrite -1}
		reference_string_comp_0 {Type I LastRead 0 FirstWrite -1}}
	seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_181_1 {
		dp_mem_62_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_61_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_60_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_59_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_58_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_57_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_56_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_55_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_54_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_53_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_52_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_51_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_50_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_49_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_48_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_47_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_46_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_45_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_44_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_43_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_42_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_41_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_40_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_39_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_38_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_37_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_36_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_35_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_34_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_33_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_32_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_31_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_30_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_29_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_28_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_27_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_26_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_25_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_24_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_23_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_22_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_21_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_20_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_19_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_18_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_17_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_16_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_15_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_14_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_13_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_12_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_11_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_10_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_9_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_8_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_7_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_6_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_5_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_4_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_3_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_2_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_1_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_out {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_187_2 {
		last_pe_score {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_197_4 {
		max_col_value_31_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_30_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_29_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_28_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_27_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_26_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_25_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_24_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_23_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_22_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_21_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_20_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_19_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_18_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_17_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_16_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_15_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_14_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_13_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_12_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_11_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_10_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_9_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_8_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_7_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_6_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_5_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_4_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_3_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_2_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_1_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_31_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_30_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_29_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_28_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_27_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_26_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_25_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_24_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_23_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_22_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_21_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_20_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_19_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_18_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_17_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_16_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_15_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_14_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_13_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_12_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_11_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_10_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_9_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_8_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_7_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_6_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_5_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_4_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_3_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_2_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_1_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_out {Type O LastRead -1 FirstWrite 0}
		max_score_31_out {Type O LastRead -1 FirstWrite 0}
		max_score_30_out {Type O LastRead -1 FirstWrite 0}
		max_score_29_out {Type O LastRead -1 FirstWrite 0}
		max_score_28_out {Type O LastRead -1 FirstWrite 0}
		max_score_27_out {Type O LastRead -1 FirstWrite 0}
		max_score_26_out {Type O LastRead -1 FirstWrite 0}
		max_score_25_out {Type O LastRead -1 FirstWrite 0}
		max_score_24_out {Type O LastRead -1 FirstWrite 0}
		max_score_23_out {Type O LastRead -1 FirstWrite 0}
		max_score_22_out {Type O LastRead -1 FirstWrite 0}
		max_score_21_out {Type O LastRead -1 FirstWrite 0}
		max_score_20_out {Type O LastRead -1 FirstWrite 0}
		max_score_19_out {Type O LastRead -1 FirstWrite 0}
		max_score_18_out {Type O LastRead -1 FirstWrite 0}
		max_score_17_out {Type O LastRead -1 FirstWrite 0}
		max_score_16_out {Type O LastRead -1 FirstWrite 0}
		max_score_15_out {Type O LastRead -1 FirstWrite 0}
		max_score_14_out {Type O LastRead -1 FirstWrite 0}
		max_score_13_out {Type O LastRead -1 FirstWrite 0}
		max_score_12_out {Type O LastRead -1 FirstWrite 0}
		max_score_11_out {Type O LastRead -1 FirstWrite 0}
		max_score_10_out {Type O LastRead -1 FirstWrite 0}
		max_score_9_out {Type O LastRead -1 FirstWrite 0}
		max_score_8_out {Type O LastRead -1 FirstWrite 0}
		max_score_7_out {Type O LastRead -1 FirstWrite 0}
		max_score_6_out {Type O LastRead -1 FirstWrite 0}
		max_score_5_out {Type O LastRead -1 FirstWrite 0}
		max_score_4_out {Type O LastRead -1 FirstWrite 0}
		max_score_3_out {Type O LastRead -1 FirstWrite 0}
		max_score_2_out {Type O LastRead -1 FirstWrite 0}
		max_score_1_out {Type O LastRead -1 FirstWrite 0}
		max_score_out {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_206_5_VITIS_LOOP_208_6 {
		traceback_V {Type O LastRead -1 FirstWrite 2}
		traceback_V_1 {Type O LastRead -1 FirstWrite 2}
		traceback_V_2 {Type O LastRead -1 FirstWrite 2}
		traceback_V_3 {Type O LastRead -1 FirstWrite 2}
		traceback_V_4 {Type O LastRead -1 FirstWrite 2}
		traceback_V_5 {Type O LastRead -1 FirstWrite 2}
		traceback_V_6 {Type O LastRead -1 FirstWrite 2}
		traceback_V_7 {Type O LastRead -1 FirstWrite 2}
		traceback_V_8 {Type O LastRead -1 FirstWrite 2}
		traceback_V_9 {Type O LastRead -1 FirstWrite 2}
		traceback_V_10 {Type O LastRead -1 FirstWrite 2}
		traceback_V_11 {Type O LastRead -1 FirstWrite 2}
		traceback_V_12 {Type O LastRead -1 FirstWrite 2}
		traceback_V_13 {Type O LastRead -1 FirstWrite 2}
		traceback_V_14 {Type O LastRead -1 FirstWrite 2}
		traceback_V_15 {Type O LastRead -1 FirstWrite 2}}
	seq_align_Pipeline_VITIS_LOOP_215_7 {
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
		local_reference_15 {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_245_10 {
		empty_22 {Type I LastRead 0 FirstWrite -1}
		empty_23 {Type I LastRead 0 FirstWrite -1}
		empty_24 {Type I LastRead 0 FirstWrite -1}
		empty_25 {Type I LastRead 0 FirstWrite -1}
		empty_26 {Type I LastRead 0 FirstWrite -1}
		empty_27 {Type I LastRead 0 FirstWrite -1}
		empty_28 {Type I LastRead 0 FirstWrite -1}
		empty_29 {Type I LastRead 0 FirstWrite -1}
		empty_30 {Type I LastRead 0 FirstWrite -1}
		empty_31 {Type I LastRead 0 FirstWrite -1}
		empty_32 {Type I LastRead 0 FirstWrite -1}
		empty_33 {Type I LastRead 0 FirstWrite -1}
		empty_34 {Type I LastRead 0 FirstWrite -1}
		empty_35 {Type I LastRead 0 FirstWrite -1}
		empty_36 {Type I LastRead 0 FirstWrite -1}
		empty_37 {Type I LastRead 0 FirstWrite -1}
		empty_38 {Type I LastRead 0 FirstWrite -1}
		empty_39 {Type I LastRead 0 FirstWrite -1}
		empty_40 {Type I LastRead 0 FirstWrite -1}
		empty_41 {Type I LastRead 0 FirstWrite -1}
		empty_42 {Type I LastRead 0 FirstWrite -1}
		empty_43 {Type I LastRead 0 FirstWrite -1}
		empty_44 {Type I LastRead 0 FirstWrite -1}
		empty_45 {Type I LastRead 0 FirstWrite -1}
		empty_46 {Type I LastRead 0 FirstWrite -1}
		empty_47 {Type I LastRead 0 FirstWrite -1}
		empty_48 {Type I LastRead 0 FirstWrite -1}
		empty_49 {Type I LastRead 0 FirstWrite -1}
		empty_50 {Type I LastRead 0 FirstWrite -1}
		empty_51 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		query_string_comp_0 {Type I LastRead 1 FirstWrite -1}
		query_data_1_out {Type O LastRead -1 FirstWrite 1}
		query_data_2_out {Type O LastRead -1 FirstWrite 1}
		query_data_3_out {Type O LastRead -1 FirstWrite 1}
		query_data_4_out {Type O LastRead -1 FirstWrite 1}
		query_data_5_out {Type O LastRead -1 FirstWrite 1}
		query_data_6_out {Type O LastRead -1 FirstWrite 1}
		query_data_7_out {Type O LastRead -1 FirstWrite 1}
		query_data_8_out {Type O LastRead -1 FirstWrite 1}
		query_data_9_out {Type O LastRead -1 FirstWrite 1}
		query_data_10_out {Type O LastRead -1 FirstWrite 1}
		query_data_11_out {Type O LastRead -1 FirstWrite 1}
		query_data_12_out {Type O LastRead -1 FirstWrite 1}
		query_data_13_out {Type O LastRead -1 FirstWrite 1}
		query_data_14_out {Type O LastRead -1 FirstWrite 1}
		query_data_15_out {Type O LastRead -1 FirstWrite 1}
		query_data_16_out {Type O LastRead -1 FirstWrite 1}
		query_data_17_out {Type O LastRead -1 FirstWrite 1}
		query_data_18_out {Type O LastRead -1 FirstWrite 1}
		query_data_19_out {Type O LastRead -1 FirstWrite 1}
		query_data_20_out {Type O LastRead -1 FirstWrite 1}
		query_data_21_out {Type O LastRead -1 FirstWrite 1}
		query_data_22_out {Type O LastRead -1 FirstWrite 1}
		query_data_23_out {Type O LastRead -1 FirstWrite 1}
		query_data_24_out {Type O LastRead -1 FirstWrite 1}
		query_data_25_out {Type O LastRead -1 FirstWrite 1}
		query_data_26_out {Type O LastRead -1 FirstWrite 1}
		query_data_27_out {Type O LastRead -1 FirstWrite 1}
		query_data_28_out {Type O LastRead -1 FirstWrite 1}
		query_data_29_out {Type O LastRead -1 FirstWrite 1}
		query_data_30_out {Type O LastRead -1 FirstWrite 1}
		query_data_out {Type O LastRead -1 FirstWrite 1}
		p_phi_out {Type O LastRead -1 FirstWrite 1}}
	seq_align_Pipeline_traceback_logic {
		ultimate_row_value {Type I LastRead 0 FirstWrite -1}
		ultimate_col_value {Type I LastRead 0 FirstWrite -1}
		traceback_V {Type I LastRead 1 FirstWrite -1}
		traceback_V_1 {Type I LastRead 1 FirstWrite -1}
		traceback_V_2 {Type I LastRead 1 FirstWrite -1}
		traceback_V_3 {Type I LastRead 1 FirstWrite -1}
		traceback_V_4 {Type I LastRead 1 FirstWrite -1}
		traceback_V_5 {Type I LastRead 1 FirstWrite -1}
		traceback_V_6 {Type I LastRead 1 FirstWrite -1}
		traceback_V_7 {Type I LastRead 1 FirstWrite -1}
		traceback_V_8 {Type I LastRead 1 FirstWrite -1}
		traceback_V_9 {Type I LastRead 1 FirstWrite -1}
		traceback_V_10 {Type I LastRead 1 FirstWrite -1}
		traceback_V_11 {Type I LastRead 1 FirstWrite -1}
		traceback_V_12 {Type I LastRead 1 FirstWrite -1}
		traceback_V_13 {Type I LastRead 1 FirstWrite -1}
		traceback_V_14 {Type I LastRead 1 FirstWrite -1}
		traceback_V_15 {Type I LastRead 1 FirstWrite -1}}
	seq_align_Pipeline_kernel1 {
		max_col_value_95 {Type I LastRead 0 FirstWrite -1}
		max_col_value_94 {Type I LastRead 0 FirstWrite -1}
		max_col_value_93 {Type I LastRead 0 FirstWrite -1}
		max_col_value_92 {Type I LastRead 0 FirstWrite -1}
		max_col_value_91 {Type I LastRead 0 FirstWrite -1}
		max_col_value_90 {Type I LastRead 0 FirstWrite -1}
		max_col_value_89 {Type I LastRead 0 FirstWrite -1}
		max_col_value_88 {Type I LastRead 0 FirstWrite -1}
		max_col_value_87 {Type I LastRead 0 FirstWrite -1}
		max_col_value_86 {Type I LastRead 0 FirstWrite -1}
		max_col_value_85 {Type I LastRead 0 FirstWrite -1}
		max_col_value_84 {Type I LastRead 0 FirstWrite -1}
		max_col_value_83 {Type I LastRead 0 FirstWrite -1}
		max_col_value_82 {Type I LastRead 0 FirstWrite -1}
		max_col_value_81 {Type I LastRead 0 FirstWrite -1}
		max_col_value_80 {Type I LastRead 0 FirstWrite -1}
		max_col_value_79 {Type I LastRead 0 FirstWrite -1}
		max_col_value_78 {Type I LastRead 0 FirstWrite -1}
		max_col_value_77 {Type I LastRead 0 FirstWrite -1}
		max_col_value_76 {Type I LastRead 0 FirstWrite -1}
		max_col_value_75 {Type I LastRead 0 FirstWrite -1}
		max_col_value_74 {Type I LastRead 0 FirstWrite -1}
		max_col_value_73 {Type I LastRead 0 FirstWrite -1}
		max_col_value_72 {Type I LastRead 0 FirstWrite -1}
		max_col_value_71 {Type I LastRead 0 FirstWrite -1}
		max_col_value_70 {Type I LastRead 0 FirstWrite -1}
		max_col_value_69 {Type I LastRead 0 FirstWrite -1}
		max_col_value_68 {Type I LastRead 0 FirstWrite -1}
		max_col_value_67 {Type I LastRead 0 FirstWrite -1}
		max_col_value_66 {Type I LastRead 0 FirstWrite -1}
		max_col_value_65 {Type I LastRead 0 FirstWrite -1}
		max_col_value_64 {Type I LastRead 0 FirstWrite -1}
		max_row_value_63 {Type I LastRead 0 FirstWrite -1}
		max_row_value_62 {Type I LastRead 0 FirstWrite -1}
		max_row_value_61 {Type I LastRead 0 FirstWrite -1}
		max_row_value_60 {Type I LastRead 0 FirstWrite -1}
		max_row_value_59 {Type I LastRead 0 FirstWrite -1}
		max_row_value_58 {Type I LastRead 0 FirstWrite -1}
		max_row_value_57 {Type I LastRead 0 FirstWrite -1}
		max_row_value_56 {Type I LastRead 0 FirstWrite -1}
		max_row_value_55 {Type I LastRead 0 FirstWrite -1}
		max_row_value_54 {Type I LastRead 0 FirstWrite -1}
		max_row_value_53 {Type I LastRead 0 FirstWrite -1}
		max_row_value_52 {Type I LastRead 0 FirstWrite -1}
		max_row_value_51 {Type I LastRead 0 FirstWrite -1}
		max_row_value_50 {Type I LastRead 0 FirstWrite -1}
		max_row_value_49 {Type I LastRead 0 FirstWrite -1}
		max_row_value_48 {Type I LastRead 0 FirstWrite -1}
		max_row_value_47 {Type I LastRead 0 FirstWrite -1}
		max_row_value_46 {Type I LastRead 0 FirstWrite -1}
		max_row_value_45 {Type I LastRead 0 FirstWrite -1}
		max_row_value_44 {Type I LastRead 0 FirstWrite -1}
		max_row_value_43 {Type I LastRead 0 FirstWrite -1}
		max_row_value_42 {Type I LastRead 0 FirstWrite -1}
		max_row_value_41 {Type I LastRead 0 FirstWrite -1}
		max_row_value_40 {Type I LastRead 0 FirstWrite -1}
		max_row_value_39 {Type I LastRead 0 FirstWrite -1}
		max_row_value_38 {Type I LastRead 0 FirstWrite -1}
		max_row_value_37 {Type I LastRead 0 FirstWrite -1}
		max_row_value_36 {Type I LastRead 0 FirstWrite -1}
		max_row_value_35 {Type I LastRead 0 FirstWrite -1}
		max_row_value_34 {Type I LastRead 0 FirstWrite -1}
		max_row_value_33 {Type I LastRead 0 FirstWrite -1}
		max_row_value_32 {Type I LastRead 0 FirstWrite -1}
		max_score_63 {Type I LastRead 0 FirstWrite -1}
		max_score_62 {Type I LastRead 0 FirstWrite -1}
		max_score_61 {Type I LastRead 0 FirstWrite -1}
		max_score_60 {Type I LastRead 0 FirstWrite -1}
		max_score_59 {Type I LastRead 0 FirstWrite -1}
		max_score_58 {Type I LastRead 0 FirstWrite -1}
		max_score_57 {Type I LastRead 0 FirstWrite -1}
		max_score_56 {Type I LastRead 0 FirstWrite -1}
		max_score_55 {Type I LastRead 0 FirstWrite -1}
		max_score_54 {Type I LastRead 0 FirstWrite -1}
		max_score_53 {Type I LastRead 0 FirstWrite -1}
		max_score_52 {Type I LastRead 0 FirstWrite -1}
		max_score_51 {Type I LastRead 0 FirstWrite -1}
		max_score_50 {Type I LastRead 0 FirstWrite -1}
		max_score_49 {Type I LastRead 0 FirstWrite -1}
		max_score_48 {Type I LastRead 0 FirstWrite -1}
		max_score_47 {Type I LastRead 0 FirstWrite -1}
		max_score_46 {Type I LastRead 0 FirstWrite -1}
		max_score_45 {Type I LastRead 0 FirstWrite -1}
		max_score_44 {Type I LastRead 0 FirstWrite -1}
		max_score_43 {Type I LastRead 0 FirstWrite -1}
		max_score_42 {Type I LastRead 0 FirstWrite -1}
		max_score_41 {Type I LastRead 0 FirstWrite -1}
		max_score_40 {Type I LastRead 0 FirstWrite -1}
		max_score_39 {Type I LastRead 0 FirstWrite -1}
		max_score_38 {Type I LastRead 0 FirstWrite -1}
		max_score_37 {Type I LastRead 0 FirstWrite -1}
		max_score_36 {Type I LastRead 0 FirstWrite -1}
		max_score_35 {Type I LastRead 0 FirstWrite -1}
		max_score_34 {Type I LastRead 0 FirstWrite -1}
		max_score_33 {Type I LastRead 0 FirstWrite -1}
		max_score_32 {Type I LastRead 0 FirstWrite -1}
		zext_ln290 {Type I LastRead 0 FirstWrite -1}
		traceback_V_14 {Type O LastRead -1 FirstWrite 4}
		traceback_V_13 {Type O LastRead -1 FirstWrite 4}
		traceback_V_12 {Type O LastRead -1 FirstWrite 4}
		traceback_V_11 {Type O LastRead -1 FirstWrite 4}
		traceback_V_10 {Type O LastRead -1 FirstWrite 4}
		traceback_V_9 {Type O LastRead -1 FirstWrite 4}
		traceback_V_8 {Type O LastRead -1 FirstWrite 4}
		traceback_V_7 {Type O LastRead -1 FirstWrite 4}
		traceback_V_6 {Type O LastRead -1 FirstWrite 4}
		traceback_V_5 {Type O LastRead -1 FirstWrite 4}
		traceback_V_4 {Type O LastRead -1 FirstWrite 4}
		traceback_V_3 {Type O LastRead -1 FirstWrite 4}
		traceback_V_2 {Type O LastRead -1 FirstWrite 4}
		traceback_V_1 {Type O LastRead -1 FirstWrite 4}
		traceback_V {Type O LastRead -1 FirstWrite 4}
		zext_ln282_1 {Type I LastRead 0 FirstWrite -1}
		traceback_V_15 {Type O LastRead -1 FirstWrite 4}
		tmp_3 {Type I LastRead 0 FirstWrite -1}
		local_reference {Type I LastRead 2 FirstWrite -1}
		local_reference_1 {Type I LastRead 2 FirstWrite -1}
		local_reference_2 {Type I LastRead 2 FirstWrite -1}
		local_reference_3 {Type I LastRead 2 FirstWrite -1}
		local_reference_4 {Type I LastRead 2 FirstWrite -1}
		local_reference_5 {Type I LastRead 2 FirstWrite -1}
		local_reference_6 {Type I LastRead 2 FirstWrite -1}
		local_reference_7 {Type I LastRead 2 FirstWrite -1}
		local_reference_8 {Type I LastRead 2 FirstWrite -1}
		local_reference_9 {Type I LastRead 2 FirstWrite -1}
		local_reference_10 {Type I LastRead 2 FirstWrite -1}
		local_reference_11 {Type I LastRead 2 FirstWrite -1}
		local_reference_12 {Type I LastRead 2 FirstWrite -1}
		local_reference_13 {Type I LastRead 2 FirstWrite -1}
		local_reference_14 {Type I LastRead 2 FirstWrite -1}
		local_reference_15 {Type I LastRead 2 FirstWrite -1}
		last_pe_score {Type IO LastRead 0 FirstWrite 4}
		p_cast8 {Type I LastRead 0 FirstWrite -1}
		p_phi_reload {Type I LastRead 0 FirstWrite -1}
		cmp_i38 {Type I LastRead 0 FirstWrite -1}
		p_cast10 {Type I LastRead 0 FirstWrite -1}
		cmp_i_1 {Type I LastRead 0 FirstWrite -1}
		query_data_reload {Type I LastRead 0 FirstWrite -1}
		p_cast11 {Type I LastRead 0 FirstWrite -1}
		cmp_i_2 {Type I LastRead 0 FirstWrite -1}
		query_data_30_reload {Type I LastRead 0 FirstWrite -1}
		p_cast12 {Type I LastRead 0 FirstWrite -1}
		cmp_i_3 {Type I LastRead 0 FirstWrite -1}
		query_data_29_reload {Type I LastRead 0 FirstWrite -1}
		p_cast13 {Type I LastRead 0 FirstWrite -1}
		cmp_i_4 {Type I LastRead 0 FirstWrite -1}
		query_data_28_reload {Type I LastRead 0 FirstWrite -1}
		p_cast14 {Type I LastRead 0 FirstWrite -1}
		cmp_i_5 {Type I LastRead 0 FirstWrite -1}
		query_data_27_reload {Type I LastRead 0 FirstWrite -1}
		p_cast15 {Type I LastRead 0 FirstWrite -1}
		cmp_i_6 {Type I LastRead 0 FirstWrite -1}
		query_data_26_reload {Type I LastRead 0 FirstWrite -1}
		p_cast16 {Type I LastRead 0 FirstWrite -1}
		cmp_i_7 {Type I LastRead 0 FirstWrite -1}
		query_data_25_reload {Type I LastRead 0 FirstWrite -1}
		p_cast17 {Type I LastRead 0 FirstWrite -1}
		cmp_i_8 {Type I LastRead 0 FirstWrite -1}
		query_data_24_reload {Type I LastRead 0 FirstWrite -1}
		p_cast18 {Type I LastRead 0 FirstWrite -1}
		cmp_i_9 {Type I LastRead 0 FirstWrite -1}
		query_data_23_reload {Type I LastRead 0 FirstWrite -1}
		p_cast19 {Type I LastRead 0 FirstWrite -1}
		cmp_i_10 {Type I LastRead 0 FirstWrite -1}
		query_data_22_reload {Type I LastRead 0 FirstWrite -1}
		p_cast20 {Type I LastRead 0 FirstWrite -1}
		cmp_i_11 {Type I LastRead 0 FirstWrite -1}
		query_data_21_reload {Type I LastRead 0 FirstWrite -1}
		p_cast21 {Type I LastRead 0 FirstWrite -1}
		cmp_i_12 {Type I LastRead 0 FirstWrite -1}
		query_data_20_reload {Type I LastRead 0 FirstWrite -1}
		p_cast22 {Type I LastRead 0 FirstWrite -1}
		cmp_i_13 {Type I LastRead 0 FirstWrite -1}
		query_data_19_reload {Type I LastRead 0 FirstWrite -1}
		p_cast23 {Type I LastRead 0 FirstWrite -1}
		cmp_i_14 {Type I LastRead 0 FirstWrite -1}
		query_data_18_reload {Type I LastRead 0 FirstWrite -1}
		p_cast24 {Type I LastRead 0 FirstWrite -1}
		cmp_i_15 {Type I LastRead 0 FirstWrite -1}
		query_data_17_reload {Type I LastRead 0 FirstWrite -1}
		p_cast26 {Type I LastRead 0 FirstWrite -1}
		cmp_i_16 {Type I LastRead 0 FirstWrite -1}
		query_data_16_reload {Type I LastRead 0 FirstWrite -1}
		p_cast27 {Type I LastRead 0 FirstWrite -1}
		cmp_i_17 {Type I LastRead 0 FirstWrite -1}
		query_data_15_reload {Type I LastRead 0 FirstWrite -1}
		p_cast28 {Type I LastRead 0 FirstWrite -1}
		cmp_i_18 {Type I LastRead 0 FirstWrite -1}
		query_data_14_reload {Type I LastRead 0 FirstWrite -1}
		p_cast29 {Type I LastRead 0 FirstWrite -1}
		cmp_i_19 {Type I LastRead 0 FirstWrite -1}
		query_data_13_reload {Type I LastRead 0 FirstWrite -1}
		p_cast30 {Type I LastRead 0 FirstWrite -1}
		cmp_i_20 {Type I LastRead 0 FirstWrite -1}
		query_data_12_reload {Type I LastRead 0 FirstWrite -1}
		p_cast31 {Type I LastRead 0 FirstWrite -1}
		cmp_i_21 {Type I LastRead 0 FirstWrite -1}
		query_data_11_reload {Type I LastRead 0 FirstWrite -1}
		p_cast32 {Type I LastRead 0 FirstWrite -1}
		cmp_i_22 {Type I LastRead 0 FirstWrite -1}
		query_data_10_reload {Type I LastRead 0 FirstWrite -1}
		p_cast33 {Type I LastRead 0 FirstWrite -1}
		cmp_i_23 {Type I LastRead 0 FirstWrite -1}
		query_data_9_reload {Type I LastRead 0 FirstWrite -1}
		p_cast34 {Type I LastRead 0 FirstWrite -1}
		cmp_i_24 {Type I LastRead 0 FirstWrite -1}
		query_data_8_reload {Type I LastRead 0 FirstWrite -1}
		p_cast35 {Type I LastRead 0 FirstWrite -1}
		cmp_i_25 {Type I LastRead 0 FirstWrite -1}
		query_data_7_reload {Type I LastRead 0 FirstWrite -1}
		p_cast36 {Type I LastRead 0 FirstWrite -1}
		cmp_i_26 {Type I LastRead 0 FirstWrite -1}
		query_data_6_reload {Type I LastRead 0 FirstWrite -1}
		p_cast37 {Type I LastRead 0 FirstWrite -1}
		cmp_i_27 {Type I LastRead 0 FirstWrite -1}
		query_data_5_reload {Type I LastRead 0 FirstWrite -1}
		p_cast38 {Type I LastRead 0 FirstWrite -1}
		cmp_i_28 {Type I LastRead 0 FirstWrite -1}
		query_data_4_reload {Type I LastRead 0 FirstWrite -1}
		p_cast39 {Type I LastRead 0 FirstWrite -1}
		cmp_i_29 {Type I LastRead 0 FirstWrite -1}
		query_data_3_reload {Type I LastRead 0 FirstWrite -1}
		p_cast40 {Type I LastRead 0 FirstWrite -1}
		cmp_i_30 {Type I LastRead 0 FirstWrite -1}
		query_data_2_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln254 {Type I LastRead 0 FirstWrite -1}
		cmp_i_31 {Type I LastRead 0 FirstWrite -1}
		query_data_1_reload {Type I LastRead 0 FirstWrite -1}
		max_col_value_127_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_126_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_125_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_124_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_123_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_122_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_121_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_120_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_119_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_118_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_117_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_116_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_115_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_114_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_113_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_112_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_111_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_110_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_109_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_108_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_107_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_106_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_105_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_104_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_103_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_102_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_101_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_100_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_99_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_98_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_97_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_96_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_95_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_94_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_93_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_92_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_91_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_90_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_89_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_88_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_87_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_86_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_85_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_84_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_83_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_82_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_81_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_80_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_79_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_78_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_77_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_76_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_75_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_74_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_73_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_72_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_71_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_70_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_69_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_68_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_67_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_66_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_65_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_64_out {Type O LastRead -1 FirstWrite 3}
		max_score_95_out {Type O LastRead -1 FirstWrite 3}
		max_score_94_out {Type O LastRead -1 FirstWrite 3}
		max_score_93_out {Type O LastRead -1 FirstWrite 3}
		max_score_92_out {Type O LastRead -1 FirstWrite 3}
		max_score_91_out {Type O LastRead -1 FirstWrite 3}
		max_score_90_out {Type O LastRead -1 FirstWrite 3}
		max_score_89_out {Type O LastRead -1 FirstWrite 3}
		max_score_88_out {Type O LastRead -1 FirstWrite 3}
		max_score_87_out {Type O LastRead -1 FirstWrite 3}
		max_score_86_out {Type O LastRead -1 FirstWrite 3}
		max_score_85_out {Type O LastRead -1 FirstWrite 3}
		max_score_84_out {Type O LastRead -1 FirstWrite 3}
		max_score_83_out {Type O LastRead -1 FirstWrite 3}
		max_score_82_out {Type O LastRead -1 FirstWrite 3}
		max_score_81_out {Type O LastRead -1 FirstWrite 3}
		max_score_80_out {Type O LastRead -1 FirstWrite 3}
		max_score_79_out {Type O LastRead -1 FirstWrite 3}
		max_score_78_out {Type O LastRead -1 FirstWrite 3}
		max_score_77_out {Type O LastRead -1 FirstWrite 3}
		max_score_76_out {Type O LastRead -1 FirstWrite 3}
		max_score_75_out {Type O LastRead -1 FirstWrite 3}
		max_score_74_out {Type O LastRead -1 FirstWrite 3}
		max_score_73_out {Type O LastRead -1 FirstWrite 3}
		max_score_72_out {Type O LastRead -1 FirstWrite 3}
		max_score_71_out {Type O LastRead -1 FirstWrite 3}
		max_score_70_out {Type O LastRead -1 FirstWrite 3}
		max_score_69_out {Type O LastRead -1 FirstWrite 3}
		max_score_68_out {Type O LastRead -1 FirstWrite 3}
		max_score_67_out {Type O LastRead -1 FirstWrite 3}
		max_score_66_out {Type O LastRead -1 FirstWrite 3}
		max_score_65_out {Type O LastRead -1 FirstWrite 3}
		max_score_64_out {Type O LastRead -1 FirstWrite 3}
		p_out {Type IO LastRead 3 FirstWrite 3}
		p_out1 {Type IO LastRead 3 FirstWrite 3}
		p_out2 {Type IO LastRead 3 FirstWrite 3}
		p_out3 {Type IO LastRead 3 FirstWrite 3}
		p_out4 {Type IO LastRead 3 FirstWrite 3}
		p_out5 {Type IO LastRead 3 FirstWrite 3}
		p_out6 {Type IO LastRead 3 FirstWrite 3}
		p_out7 {Type IO LastRead 3 FirstWrite 3}
		p_out8 {Type IO LastRead 3 FirstWrite 3}
		p_out9 {Type IO LastRead 3 FirstWrite 3}
		p_out10 {Type IO LastRead 3 FirstWrite 3}
		p_out11 {Type IO LastRead 3 FirstWrite 3}
		p_out12 {Type IO LastRead 3 FirstWrite 3}
		p_out13 {Type IO LastRead 3 FirstWrite 3}
		p_out14 {Type IO LastRead 3 FirstWrite 3}
		p_out15 {Type IO LastRead 3 FirstWrite 3}
		p_out16 {Type IO LastRead 3 FirstWrite 3}
		p_out17 {Type IO LastRead 3 FirstWrite 3}
		p_out18 {Type IO LastRead 3 FirstWrite 3}
		p_out19 {Type IO LastRead 3 FirstWrite 3}
		p_out20 {Type IO LastRead 3 FirstWrite 3}
		p_out21 {Type IO LastRead 3 FirstWrite 3}
		p_out22 {Type IO LastRead 3 FirstWrite 3}
		p_out23 {Type IO LastRead 3 FirstWrite 3}
		p_out24 {Type IO LastRead 3 FirstWrite 3}
		p_out25 {Type IO LastRead 3 FirstWrite 3}
		p_out26 {Type IO LastRead 3 FirstWrite 3}
		p_out27 {Type IO LastRead 3 FirstWrite 3}
		p_out28 {Type IO LastRead 3 FirstWrite 3}
		p_out29 {Type IO LastRead 3 FirstWrite 3}
		p_out30 {Type IO LastRead 3 FirstWrite 3}
		p_out31 {Type IO LastRead 3 FirstWrite 3}
		p_out32 {Type IO LastRead 3 FirstWrite 3}
		p_out33 {Type IO LastRead 3 FirstWrite 3}
		p_out34 {Type IO LastRead 3 FirstWrite 3}
		p_out35 {Type IO LastRead 3 FirstWrite 3}
		p_out36 {Type IO LastRead 3 FirstWrite 3}
		p_out37 {Type IO LastRead 3 FirstWrite 3}
		p_out38 {Type IO LastRead 3 FirstWrite 3}
		p_out39 {Type IO LastRead 3 FirstWrite 3}
		p_out40 {Type IO LastRead 3 FirstWrite 3}
		p_out41 {Type IO LastRead 3 FirstWrite 3}
		p_out42 {Type IO LastRead 3 FirstWrite 3}
		p_out43 {Type IO LastRead 3 FirstWrite 3}
		p_out44 {Type IO LastRead 3 FirstWrite 3}
		p_out45 {Type IO LastRead 3 FirstWrite 3}
		p_out46 {Type IO LastRead 3 FirstWrite 3}
		p_out47 {Type IO LastRead 3 FirstWrite 3}
		p_out48 {Type IO LastRead 3 FirstWrite 3}
		p_out49 {Type IO LastRead 3 FirstWrite 3}
		p_out50 {Type IO LastRead 3 FirstWrite 3}
		p_out51 {Type IO LastRead 3 FirstWrite 3}
		p_out52 {Type IO LastRead 3 FirstWrite 3}
		p_out53 {Type IO LastRead 3 FirstWrite 3}
		p_out54 {Type IO LastRead 3 FirstWrite 3}
		p_out55 {Type IO LastRead 3 FirstWrite 3}
		p_out56 {Type IO LastRead 3 FirstWrite 3}
		p_out57 {Type IO LastRead 3 FirstWrite 3}
		p_out58 {Type IO LastRead 3 FirstWrite 3}
		p_out59 {Type IO LastRead 3 FirstWrite 3}
		p_out60 {Type IO LastRead 3 FirstWrite 3}
		p_out61 {Type IO LastRead 3 FirstWrite 3}
		p_out62 {Type IO LastRead 3 FirstWrite 3}
		temp_1_out {Type IO LastRead 2 FirstWrite 2}}
	seq_align_Pipeline_VITIS_LOOP_310_11 {
		max {Type I LastRead 0 FirstWrite -1}
		index {Type I LastRead 0 FirstWrite -1}
		max_score_64_reload {Type I LastRead 0 FirstWrite -1}
		max_score_65_reload {Type I LastRead 0 FirstWrite -1}
		max_score_66_reload {Type I LastRead 0 FirstWrite -1}
		max_score_67_reload {Type I LastRead 0 FirstWrite -1}
		max_score_68_reload {Type I LastRead 0 FirstWrite -1}
		max_score_69_reload {Type I LastRead 0 FirstWrite -1}
		max_score_70_reload {Type I LastRead 0 FirstWrite -1}
		max_score_71_reload {Type I LastRead 0 FirstWrite -1}
		max_score_72_reload {Type I LastRead 0 FirstWrite -1}
		max_score_73_reload {Type I LastRead 0 FirstWrite -1}
		max_score_74_reload {Type I LastRead 0 FirstWrite -1}
		max_score_75_reload {Type I LastRead 0 FirstWrite -1}
		max_score_76_reload {Type I LastRead 0 FirstWrite -1}
		max_score_77_reload {Type I LastRead 0 FirstWrite -1}
		max_score_78_reload {Type I LastRead 0 FirstWrite -1}
		max_score_79_reload {Type I LastRead 0 FirstWrite -1}
		max_score_80_reload {Type I LastRead 0 FirstWrite -1}
		max_score_81_reload {Type I LastRead 0 FirstWrite -1}
		max_score_82_reload {Type I LastRead 0 FirstWrite -1}
		max_score_83_reload {Type I LastRead 0 FirstWrite -1}
		max_score_84_reload {Type I LastRead 0 FirstWrite -1}
		max_score_85_reload {Type I LastRead 0 FirstWrite -1}
		max_score_86_reload {Type I LastRead 0 FirstWrite -1}
		max_score_87_reload {Type I LastRead 0 FirstWrite -1}
		max_score_88_reload {Type I LastRead 0 FirstWrite -1}
		max_score_89_reload {Type I LastRead 0 FirstWrite -1}
		max_score_90_reload {Type I LastRead 0 FirstWrite -1}
		max_score_91_reload {Type I LastRead 0 FirstWrite -1}
		max_score_92_reload {Type I LastRead 0 FirstWrite -1}
		max_score_93_reload {Type I LastRead 0 FirstWrite -1}
		max_score_94_reload {Type I LastRead 0 FirstWrite -1}
		max_score_95_reload {Type I LastRead 0 FirstWrite -1}
		max_1_out {Type O LastRead -1 FirstWrite 1}
		index_1_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	query_string_comp_0 { axis {  { query_string_comp_0_TDATA in_data 0 8 }  { query_string_comp_0_TVALID in_vld 0 1 }  { query_string_comp_0_TREADY in_acc 1 1 } } }
	reference_string_comp_0 { axis {  { reference_string_comp_0_TDATA in_data 0 8 }  { reference_string_comp_0_TVALID in_vld 0 1 }  { reference_string_comp_0_TREADY in_acc 1 1 } } }
}
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
set C_modelType { int 32 }
set C_modelArgList {
	{ query_string_comp_0 int 8 regular {axi_s 0 volatile  { query_string_comp_0 Data } }  }
	{ reference_string_comp_0 int 8 regular {axi_s 0 volatile  { reference_string_comp_0 Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "query_string_comp_0", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "reference_string_comp_0", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ query_string_comp_0_TDATA sc_in sc_lv 8 signal 0 } 
	{ query_string_comp_0_TVALID sc_in sc_logic 1 invld 0 } 
	{ query_string_comp_0_TREADY sc_out sc_logic 1 inacc 0 } 
	{ reference_string_comp_0_TDATA sc_in sc_lv 8 signal 1 } 
	{ reference_string_comp_0_TVALID sc_in sc_logic 1 invld 1 } 
	{ reference_string_comp_0_TREADY sc_out sc_logic 1 inacc 1 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "query_string_comp_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "query_string_comp_0", "role": "TDATA" }} , 
 	{ "name": "query_string_comp_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "query_string_comp_0", "role": "TVALID" }} , 
 	{ "name": "query_string_comp_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "query_string_comp_0", "role": "TREADY" }} , 
 	{ "name": "reference_string_comp_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "reference_string_comp_0", "role": "TDATA" }} , 
 	{ "name": "reference_string_comp_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "reference_string_comp_0", "role": "TVALID" }} , 
 	{ "name": "reference_string_comp_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "reference_string_comp_0", "role": "TREADY" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "36", "38", "40", "42", "44", "46", "49", "83", "86", "87"],
		"CDFG" : "seq_align",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "query_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "44", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_245_10_fu_1803", "Port" : "query_string_comp_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "reference_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "42", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_215_7_fu_1781", "Port" : "reference_string_comp_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "kernel", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.last_pe_score_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_1_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_2_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_3_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_4_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_5_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_6_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_7_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_8_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_9_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_10_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_11_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_12_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_13_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_14_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_15_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_181_1_fu_1572", "Parent" : "0", "Child" : ["35"],
		"CDFG" : "seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_181_1",
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
			{"Name" : "dp_mem_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "local_dpmem_loop_VITIS_LOOP_181_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_181_1_fu_1572.flow_control_loop_pipe_sequential_init_U", "Parent" : "34"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_187_2_fu_1639", "Parent" : "0", "Child" : ["37"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_187_2",
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
			{"Name" : "last_pe_score", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_187_2_fu_1639.flow_control_loop_pipe_sequential_init_U", "Parent" : "36"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_197_4_fu_1645", "Parent" : "0", "Child" : ["39"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_197_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max_col_value_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_4", "PipelineType" : "NotSupport"}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_197_4_fu_1645.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_206_5_VITIS_LOOP_208_6_fu_1745", "Parent" : "0", "Child" : ["41"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_206_5_VITIS_LOOP_208_6",
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
			{"Name" : "traceback_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_15", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_206_5_VITIS_LOOP_208_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_206_5_VITIS_LOOP_208_6_fu_1745.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_215_7_fu_1781", "Parent" : "0", "Child" : ["43"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_215_7",
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
			{"Name" : "VITIS_LOOP_215_7", "PipelineType" : "NotSupport"}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_215_7_fu_1781.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_245_10_fu_1803", "Parent" : "0", "Child" : ["45"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_245_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "query_string_comp_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "query_data_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_245_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_245_10_fu_1803.flow_control_loop_pipe_sequential_init_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_traceback_logic_fu_1872", "Parent" : "0", "Child" : ["47", "48"],
		"CDFG" : "seq_align_Pipeline_traceback_logic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ultimate_row_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "ultimate_col_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "traceback_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "traceback_logic", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_traceback_logic_fu_1872.mux_164_2_1_1_U717", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_traceback_logic_fu_1872.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894", "Parent" : "0", "Child" : ["50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82"],
		"CDFG" : "seq_align_Pipeline_kernel1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1060", "EstimateLatencyMax" : "1060",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max_col_value_95", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_94", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_93", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_92", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_91", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_90", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_89", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_88", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_87", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_86", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_85", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_84", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_83", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_82", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_81", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_80", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_79", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_78", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_77", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_76", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_75", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_74", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_73", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_72", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_71", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_70", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_67", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln290", "Type" : "None", "Direction" : "I"},
			{"Name" : "traceback_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "zext_ln282_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "traceback_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "tmp_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_reference", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "last_pe_score", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_cast8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_phi_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast10", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast11", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast12", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast13", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast14", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast15", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast16", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast17", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast18", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast19", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast20", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast21", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast22", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast23", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast24", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast26", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast27", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast28", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast29", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast30", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast31", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast32", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast33", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast34", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast35", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast36", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast37", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast38", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast39", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast40", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln254", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_127_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_126_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_125_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_124_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_123_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_122_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_121_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_120_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_119_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_118_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_117_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_116_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_115_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_113_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_112_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_111_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_110_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_109_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_108_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_107_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_106_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_105_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_104_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_103_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_102_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_101_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_100_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_99_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_98_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_97_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_96_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_94_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_92_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_88_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_85_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_84_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_83_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_66_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_65_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_94_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_92_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_88_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_85_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_84_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_83_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_66_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_65_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "temp_1_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "kernel1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U258", "Parent" : "49"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U259", "Parent" : "49"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U260", "Parent" : "49"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U261", "Parent" : "49"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U262", "Parent" : "49"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U263", "Parent" : "49"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U264", "Parent" : "49"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U265", "Parent" : "49"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U266", "Parent" : "49"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U267", "Parent" : "49"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U268", "Parent" : "49"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U269", "Parent" : "49"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U270", "Parent" : "49"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U271", "Parent" : "49"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U272", "Parent" : "49"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U273", "Parent" : "49"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U274", "Parent" : "49"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U275", "Parent" : "49"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U276", "Parent" : "49"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U277", "Parent" : "49"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U278", "Parent" : "49"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U279", "Parent" : "49"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U280", "Parent" : "49"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U281", "Parent" : "49"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U282", "Parent" : "49"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U283", "Parent" : "49"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U284", "Parent" : "49"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U285", "Parent" : "49"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U286", "Parent" : "49"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U287", "Parent" : "49"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U288", "Parent" : "49"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.mux_164_8_1_1_U289", "Parent" : "49"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_1894.flow_control_loop_pipe_sequential_init_U", "Parent" : "49"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_310_11_fu_2286", "Parent" : "0", "Child" : ["84", "85"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_310_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max", "Type" : "None", "Direction" : "I"},
			{"Name" : "index", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_64_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_65_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_66_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_67_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_68_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_69_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_70_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_71_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_72_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_73_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_74_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_75_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_76_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_77_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_78_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_79_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_80_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_81_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_82_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_83_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_84_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_85_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_86_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_87_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_88_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_89_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_90_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_91_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_92_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_93_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_94_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_95_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "index_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_310_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_310_11_fu_2286.mux_326_32_1_1_U679", "Parent" : "83"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_310_11_fu_2286.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3232_32_1_1_U737", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3232_32_1_1_U738", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	seq_align {
		query_string_comp_0 {Type I LastRead 1 FirstWrite -1}
		reference_string_comp_0 {Type I LastRead 0 FirstWrite -1}}
	seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_181_1 {
		dp_mem_62_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_61_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_60_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_59_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_58_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_57_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_56_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_55_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_54_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_53_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_52_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_51_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_50_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_49_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_48_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_47_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_46_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_45_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_44_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_43_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_42_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_41_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_40_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_39_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_38_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_37_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_36_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_35_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_34_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_33_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_32_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_31_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_30_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_29_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_28_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_27_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_26_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_25_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_24_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_23_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_22_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_21_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_20_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_19_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_18_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_17_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_16_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_15_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_14_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_13_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_12_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_11_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_10_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_9_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_8_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_7_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_6_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_5_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_4_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_3_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_2_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_1_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_out {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_187_2 {
		last_pe_score {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_197_4 {
		max_col_value_31_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_30_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_29_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_28_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_27_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_26_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_25_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_24_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_23_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_22_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_21_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_20_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_19_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_18_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_17_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_16_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_15_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_14_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_13_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_12_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_11_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_10_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_9_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_8_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_7_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_6_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_5_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_4_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_3_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_2_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_1_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_31_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_30_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_29_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_28_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_27_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_26_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_25_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_24_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_23_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_22_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_21_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_20_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_19_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_18_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_17_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_16_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_15_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_14_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_13_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_12_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_11_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_10_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_9_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_8_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_7_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_6_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_5_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_4_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_3_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_2_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_1_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_out {Type O LastRead -1 FirstWrite 0}
		max_score_31_out {Type O LastRead -1 FirstWrite 0}
		max_score_30_out {Type O LastRead -1 FirstWrite 0}
		max_score_29_out {Type O LastRead -1 FirstWrite 0}
		max_score_28_out {Type O LastRead -1 FirstWrite 0}
		max_score_27_out {Type O LastRead -1 FirstWrite 0}
		max_score_26_out {Type O LastRead -1 FirstWrite 0}
		max_score_25_out {Type O LastRead -1 FirstWrite 0}
		max_score_24_out {Type O LastRead -1 FirstWrite 0}
		max_score_23_out {Type O LastRead -1 FirstWrite 0}
		max_score_22_out {Type O LastRead -1 FirstWrite 0}
		max_score_21_out {Type O LastRead -1 FirstWrite 0}
		max_score_20_out {Type O LastRead -1 FirstWrite 0}
		max_score_19_out {Type O LastRead -1 FirstWrite 0}
		max_score_18_out {Type O LastRead -1 FirstWrite 0}
		max_score_17_out {Type O LastRead -1 FirstWrite 0}
		max_score_16_out {Type O LastRead -1 FirstWrite 0}
		max_score_15_out {Type O LastRead -1 FirstWrite 0}
		max_score_14_out {Type O LastRead -1 FirstWrite 0}
		max_score_13_out {Type O LastRead -1 FirstWrite 0}
		max_score_12_out {Type O LastRead -1 FirstWrite 0}
		max_score_11_out {Type O LastRead -1 FirstWrite 0}
		max_score_10_out {Type O LastRead -1 FirstWrite 0}
		max_score_9_out {Type O LastRead -1 FirstWrite 0}
		max_score_8_out {Type O LastRead -1 FirstWrite 0}
		max_score_7_out {Type O LastRead -1 FirstWrite 0}
		max_score_6_out {Type O LastRead -1 FirstWrite 0}
		max_score_5_out {Type O LastRead -1 FirstWrite 0}
		max_score_4_out {Type O LastRead -1 FirstWrite 0}
		max_score_3_out {Type O LastRead -1 FirstWrite 0}
		max_score_2_out {Type O LastRead -1 FirstWrite 0}
		max_score_1_out {Type O LastRead -1 FirstWrite 0}
		max_score_out {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_206_5_VITIS_LOOP_208_6 {
		traceback_V {Type O LastRead -1 FirstWrite 2}
		traceback_V_1 {Type O LastRead -1 FirstWrite 2}
		traceback_V_2 {Type O LastRead -1 FirstWrite 2}
		traceback_V_3 {Type O LastRead -1 FirstWrite 2}
		traceback_V_4 {Type O LastRead -1 FirstWrite 2}
		traceback_V_5 {Type O LastRead -1 FirstWrite 2}
		traceback_V_6 {Type O LastRead -1 FirstWrite 2}
		traceback_V_7 {Type O LastRead -1 FirstWrite 2}
		traceback_V_8 {Type O LastRead -1 FirstWrite 2}
		traceback_V_9 {Type O LastRead -1 FirstWrite 2}
		traceback_V_10 {Type O LastRead -1 FirstWrite 2}
		traceback_V_11 {Type O LastRead -1 FirstWrite 2}
		traceback_V_12 {Type O LastRead -1 FirstWrite 2}
		traceback_V_13 {Type O LastRead -1 FirstWrite 2}
		traceback_V_14 {Type O LastRead -1 FirstWrite 2}
		traceback_V_15 {Type O LastRead -1 FirstWrite 2}}
	seq_align_Pipeline_VITIS_LOOP_215_7 {
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
		local_reference_15 {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_245_10 {
		empty_22 {Type I LastRead 0 FirstWrite -1}
		empty_23 {Type I LastRead 0 FirstWrite -1}
		empty_24 {Type I LastRead 0 FirstWrite -1}
		empty_25 {Type I LastRead 0 FirstWrite -1}
		empty_26 {Type I LastRead 0 FirstWrite -1}
		empty_27 {Type I LastRead 0 FirstWrite -1}
		empty_28 {Type I LastRead 0 FirstWrite -1}
		empty_29 {Type I LastRead 0 FirstWrite -1}
		empty_30 {Type I LastRead 0 FirstWrite -1}
		empty_31 {Type I LastRead 0 FirstWrite -1}
		empty_32 {Type I LastRead 0 FirstWrite -1}
		empty_33 {Type I LastRead 0 FirstWrite -1}
		empty_34 {Type I LastRead 0 FirstWrite -1}
		empty_35 {Type I LastRead 0 FirstWrite -1}
		empty_36 {Type I LastRead 0 FirstWrite -1}
		empty_37 {Type I LastRead 0 FirstWrite -1}
		empty_38 {Type I LastRead 0 FirstWrite -1}
		empty_39 {Type I LastRead 0 FirstWrite -1}
		empty_40 {Type I LastRead 0 FirstWrite -1}
		empty_41 {Type I LastRead 0 FirstWrite -1}
		empty_42 {Type I LastRead 0 FirstWrite -1}
		empty_43 {Type I LastRead 0 FirstWrite -1}
		empty_44 {Type I LastRead 0 FirstWrite -1}
		empty_45 {Type I LastRead 0 FirstWrite -1}
		empty_46 {Type I LastRead 0 FirstWrite -1}
		empty_47 {Type I LastRead 0 FirstWrite -1}
		empty_48 {Type I LastRead 0 FirstWrite -1}
		empty_49 {Type I LastRead 0 FirstWrite -1}
		empty_50 {Type I LastRead 0 FirstWrite -1}
		empty_51 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		query_string_comp_0 {Type I LastRead 1 FirstWrite -1}
		query_data_1_out {Type O LastRead -1 FirstWrite 1}
		query_data_2_out {Type O LastRead -1 FirstWrite 1}
		query_data_3_out {Type O LastRead -1 FirstWrite 1}
		query_data_4_out {Type O LastRead -1 FirstWrite 1}
		query_data_5_out {Type O LastRead -1 FirstWrite 1}
		query_data_6_out {Type O LastRead -1 FirstWrite 1}
		query_data_7_out {Type O LastRead -1 FirstWrite 1}
		query_data_8_out {Type O LastRead -1 FirstWrite 1}
		query_data_9_out {Type O LastRead -1 FirstWrite 1}
		query_data_10_out {Type O LastRead -1 FirstWrite 1}
		query_data_11_out {Type O LastRead -1 FirstWrite 1}
		query_data_12_out {Type O LastRead -1 FirstWrite 1}
		query_data_13_out {Type O LastRead -1 FirstWrite 1}
		query_data_14_out {Type O LastRead -1 FirstWrite 1}
		query_data_15_out {Type O LastRead -1 FirstWrite 1}
		query_data_16_out {Type O LastRead -1 FirstWrite 1}
		query_data_17_out {Type O LastRead -1 FirstWrite 1}
		query_data_18_out {Type O LastRead -1 FirstWrite 1}
		query_data_19_out {Type O LastRead -1 FirstWrite 1}
		query_data_20_out {Type O LastRead -1 FirstWrite 1}
		query_data_21_out {Type O LastRead -1 FirstWrite 1}
		query_data_22_out {Type O LastRead -1 FirstWrite 1}
		query_data_23_out {Type O LastRead -1 FirstWrite 1}
		query_data_24_out {Type O LastRead -1 FirstWrite 1}
		query_data_25_out {Type O LastRead -1 FirstWrite 1}
		query_data_26_out {Type O LastRead -1 FirstWrite 1}
		query_data_27_out {Type O LastRead -1 FirstWrite 1}
		query_data_28_out {Type O LastRead -1 FirstWrite 1}
		query_data_29_out {Type O LastRead -1 FirstWrite 1}
		query_data_30_out {Type O LastRead -1 FirstWrite 1}
		query_data_out {Type O LastRead -1 FirstWrite 1}
		p_phi_out {Type O LastRead -1 FirstWrite 1}}
	seq_align_Pipeline_traceback_logic {
		ultimate_row_value {Type I LastRead 0 FirstWrite -1}
		ultimate_col_value {Type I LastRead 0 FirstWrite -1}
		traceback_V {Type I LastRead 1 FirstWrite -1}
		traceback_V_1 {Type I LastRead 1 FirstWrite -1}
		traceback_V_2 {Type I LastRead 1 FirstWrite -1}
		traceback_V_3 {Type I LastRead 1 FirstWrite -1}
		traceback_V_4 {Type I LastRead 1 FirstWrite -1}
		traceback_V_5 {Type I LastRead 1 FirstWrite -1}
		traceback_V_6 {Type I LastRead 1 FirstWrite -1}
		traceback_V_7 {Type I LastRead 1 FirstWrite -1}
		traceback_V_8 {Type I LastRead 1 FirstWrite -1}
		traceback_V_9 {Type I LastRead 1 FirstWrite -1}
		traceback_V_10 {Type I LastRead 1 FirstWrite -1}
		traceback_V_11 {Type I LastRead 1 FirstWrite -1}
		traceback_V_12 {Type I LastRead 1 FirstWrite -1}
		traceback_V_13 {Type I LastRead 1 FirstWrite -1}
		traceback_V_14 {Type I LastRead 1 FirstWrite -1}
		traceback_V_15 {Type I LastRead 1 FirstWrite -1}}
	seq_align_Pipeline_kernel1 {
		max_col_value_95 {Type I LastRead 0 FirstWrite -1}
		max_col_value_94 {Type I LastRead 0 FirstWrite -1}
		max_col_value_93 {Type I LastRead 0 FirstWrite -1}
		max_col_value_92 {Type I LastRead 0 FirstWrite -1}
		max_col_value_91 {Type I LastRead 0 FirstWrite -1}
		max_col_value_90 {Type I LastRead 0 FirstWrite -1}
		max_col_value_89 {Type I LastRead 0 FirstWrite -1}
		max_col_value_88 {Type I LastRead 0 FirstWrite -1}
		max_col_value_87 {Type I LastRead 0 FirstWrite -1}
		max_col_value_86 {Type I LastRead 0 FirstWrite -1}
		max_col_value_85 {Type I LastRead 0 FirstWrite -1}
		max_col_value_84 {Type I LastRead 0 FirstWrite -1}
		max_col_value_83 {Type I LastRead 0 FirstWrite -1}
		max_col_value_82 {Type I LastRead 0 FirstWrite -1}
		max_col_value_81 {Type I LastRead 0 FirstWrite -1}
		max_col_value_80 {Type I LastRead 0 FirstWrite -1}
		max_col_value_79 {Type I LastRead 0 FirstWrite -1}
		max_col_value_78 {Type I LastRead 0 FirstWrite -1}
		max_col_value_77 {Type I LastRead 0 FirstWrite -1}
		max_col_value_76 {Type I LastRead 0 FirstWrite -1}
		max_col_value_75 {Type I LastRead 0 FirstWrite -1}
		max_col_value_74 {Type I LastRead 0 FirstWrite -1}
		max_col_value_73 {Type I LastRead 0 FirstWrite -1}
		max_col_value_72 {Type I LastRead 0 FirstWrite -1}
		max_col_value_71 {Type I LastRead 0 FirstWrite -1}
		max_col_value_70 {Type I LastRead 0 FirstWrite -1}
		max_col_value_69 {Type I LastRead 0 FirstWrite -1}
		max_col_value_68 {Type I LastRead 0 FirstWrite -1}
		max_col_value_67 {Type I LastRead 0 FirstWrite -1}
		max_col_value_66 {Type I LastRead 0 FirstWrite -1}
		max_col_value_65 {Type I LastRead 0 FirstWrite -1}
		max_col_value_64 {Type I LastRead 0 FirstWrite -1}
		max_row_value_63 {Type I LastRead 0 FirstWrite -1}
		max_row_value_62 {Type I LastRead 0 FirstWrite -1}
		max_row_value_61 {Type I LastRead 0 FirstWrite -1}
		max_row_value_60 {Type I LastRead 0 FirstWrite -1}
		max_row_value_59 {Type I LastRead 0 FirstWrite -1}
		max_row_value_58 {Type I LastRead 0 FirstWrite -1}
		max_row_value_57 {Type I LastRead 0 FirstWrite -1}
		max_row_value_56 {Type I LastRead 0 FirstWrite -1}
		max_row_value_55 {Type I LastRead 0 FirstWrite -1}
		max_row_value_54 {Type I LastRead 0 FirstWrite -1}
		max_row_value_53 {Type I LastRead 0 FirstWrite -1}
		max_row_value_52 {Type I LastRead 0 FirstWrite -1}
		max_row_value_51 {Type I LastRead 0 FirstWrite -1}
		max_row_value_50 {Type I LastRead 0 FirstWrite -1}
		max_row_value_49 {Type I LastRead 0 FirstWrite -1}
		max_row_value_48 {Type I LastRead 0 FirstWrite -1}
		max_row_value_47 {Type I LastRead 0 FirstWrite -1}
		max_row_value_46 {Type I LastRead 0 FirstWrite -1}
		max_row_value_45 {Type I LastRead 0 FirstWrite -1}
		max_row_value_44 {Type I LastRead 0 FirstWrite -1}
		max_row_value_43 {Type I LastRead 0 FirstWrite -1}
		max_row_value_42 {Type I LastRead 0 FirstWrite -1}
		max_row_value_41 {Type I LastRead 0 FirstWrite -1}
		max_row_value_40 {Type I LastRead 0 FirstWrite -1}
		max_row_value_39 {Type I LastRead 0 FirstWrite -1}
		max_row_value_38 {Type I LastRead 0 FirstWrite -1}
		max_row_value_37 {Type I LastRead 0 FirstWrite -1}
		max_row_value_36 {Type I LastRead 0 FirstWrite -1}
		max_row_value_35 {Type I LastRead 0 FirstWrite -1}
		max_row_value_34 {Type I LastRead 0 FirstWrite -1}
		max_row_value_33 {Type I LastRead 0 FirstWrite -1}
		max_row_value_32 {Type I LastRead 0 FirstWrite -1}
		max_score_63 {Type I LastRead 0 FirstWrite -1}
		max_score_62 {Type I LastRead 0 FirstWrite -1}
		max_score_61 {Type I LastRead 0 FirstWrite -1}
		max_score_60 {Type I LastRead 0 FirstWrite -1}
		max_score_59 {Type I LastRead 0 FirstWrite -1}
		max_score_58 {Type I LastRead 0 FirstWrite -1}
		max_score_57 {Type I LastRead 0 FirstWrite -1}
		max_score_56 {Type I LastRead 0 FirstWrite -1}
		max_score_55 {Type I LastRead 0 FirstWrite -1}
		max_score_54 {Type I LastRead 0 FirstWrite -1}
		max_score_53 {Type I LastRead 0 FirstWrite -1}
		max_score_52 {Type I LastRead 0 FirstWrite -1}
		max_score_51 {Type I LastRead 0 FirstWrite -1}
		max_score_50 {Type I LastRead 0 FirstWrite -1}
		max_score_49 {Type I LastRead 0 FirstWrite -1}
		max_score_48 {Type I LastRead 0 FirstWrite -1}
		max_score_47 {Type I LastRead 0 FirstWrite -1}
		max_score_46 {Type I LastRead 0 FirstWrite -1}
		max_score_45 {Type I LastRead 0 FirstWrite -1}
		max_score_44 {Type I LastRead 0 FirstWrite -1}
		max_score_43 {Type I LastRead 0 FirstWrite -1}
		max_score_42 {Type I LastRead 0 FirstWrite -1}
		max_score_41 {Type I LastRead 0 FirstWrite -1}
		max_score_40 {Type I LastRead 0 FirstWrite -1}
		max_score_39 {Type I LastRead 0 FirstWrite -1}
		max_score_38 {Type I LastRead 0 FirstWrite -1}
		max_score_37 {Type I LastRead 0 FirstWrite -1}
		max_score_36 {Type I LastRead 0 FirstWrite -1}
		max_score_35 {Type I LastRead 0 FirstWrite -1}
		max_score_34 {Type I LastRead 0 FirstWrite -1}
		max_score_33 {Type I LastRead 0 FirstWrite -1}
		max_score_32 {Type I LastRead 0 FirstWrite -1}
		zext_ln290 {Type I LastRead 0 FirstWrite -1}
		traceback_V_14 {Type O LastRead -1 FirstWrite 4}
		traceback_V_13 {Type O LastRead -1 FirstWrite 4}
		traceback_V_12 {Type O LastRead -1 FirstWrite 4}
		traceback_V_11 {Type O LastRead -1 FirstWrite 4}
		traceback_V_10 {Type O LastRead -1 FirstWrite 4}
		traceback_V_9 {Type O LastRead -1 FirstWrite 4}
		traceback_V_8 {Type O LastRead -1 FirstWrite 4}
		traceback_V_7 {Type O LastRead -1 FirstWrite 4}
		traceback_V_6 {Type O LastRead -1 FirstWrite 4}
		traceback_V_5 {Type O LastRead -1 FirstWrite 4}
		traceback_V_4 {Type O LastRead -1 FirstWrite 4}
		traceback_V_3 {Type O LastRead -1 FirstWrite 4}
		traceback_V_2 {Type O LastRead -1 FirstWrite 4}
		traceback_V_1 {Type O LastRead -1 FirstWrite 4}
		traceback_V {Type O LastRead -1 FirstWrite 4}
		zext_ln282_1 {Type I LastRead 0 FirstWrite -1}
		traceback_V_15 {Type O LastRead -1 FirstWrite 4}
		tmp_3 {Type I LastRead 0 FirstWrite -1}
		local_reference {Type I LastRead 2 FirstWrite -1}
		local_reference_1 {Type I LastRead 2 FirstWrite -1}
		local_reference_2 {Type I LastRead 2 FirstWrite -1}
		local_reference_3 {Type I LastRead 2 FirstWrite -1}
		local_reference_4 {Type I LastRead 2 FirstWrite -1}
		local_reference_5 {Type I LastRead 2 FirstWrite -1}
		local_reference_6 {Type I LastRead 2 FirstWrite -1}
		local_reference_7 {Type I LastRead 2 FirstWrite -1}
		local_reference_8 {Type I LastRead 2 FirstWrite -1}
		local_reference_9 {Type I LastRead 2 FirstWrite -1}
		local_reference_10 {Type I LastRead 2 FirstWrite -1}
		local_reference_11 {Type I LastRead 2 FirstWrite -1}
		local_reference_12 {Type I LastRead 2 FirstWrite -1}
		local_reference_13 {Type I LastRead 2 FirstWrite -1}
		local_reference_14 {Type I LastRead 2 FirstWrite -1}
		local_reference_15 {Type I LastRead 2 FirstWrite -1}
		last_pe_score {Type IO LastRead 0 FirstWrite 4}
		p_cast8 {Type I LastRead 0 FirstWrite -1}
		p_phi_reload {Type I LastRead 0 FirstWrite -1}
		cmp_i38 {Type I LastRead 0 FirstWrite -1}
		p_cast10 {Type I LastRead 0 FirstWrite -1}
		cmp_i_1 {Type I LastRead 0 FirstWrite -1}
		query_data_reload {Type I LastRead 0 FirstWrite -1}
		p_cast11 {Type I LastRead 0 FirstWrite -1}
		cmp_i_2 {Type I LastRead 0 FirstWrite -1}
		query_data_30_reload {Type I LastRead 0 FirstWrite -1}
		p_cast12 {Type I LastRead 0 FirstWrite -1}
		cmp_i_3 {Type I LastRead 0 FirstWrite -1}
		query_data_29_reload {Type I LastRead 0 FirstWrite -1}
		p_cast13 {Type I LastRead 0 FirstWrite -1}
		cmp_i_4 {Type I LastRead 0 FirstWrite -1}
		query_data_28_reload {Type I LastRead 0 FirstWrite -1}
		p_cast14 {Type I LastRead 0 FirstWrite -1}
		cmp_i_5 {Type I LastRead 0 FirstWrite -1}
		query_data_27_reload {Type I LastRead 0 FirstWrite -1}
		p_cast15 {Type I LastRead 0 FirstWrite -1}
		cmp_i_6 {Type I LastRead 0 FirstWrite -1}
		query_data_26_reload {Type I LastRead 0 FirstWrite -1}
		p_cast16 {Type I LastRead 0 FirstWrite -1}
		cmp_i_7 {Type I LastRead 0 FirstWrite -1}
		query_data_25_reload {Type I LastRead 0 FirstWrite -1}
		p_cast17 {Type I LastRead 0 FirstWrite -1}
		cmp_i_8 {Type I LastRead 0 FirstWrite -1}
		query_data_24_reload {Type I LastRead 0 FirstWrite -1}
		p_cast18 {Type I LastRead 0 FirstWrite -1}
		cmp_i_9 {Type I LastRead 0 FirstWrite -1}
		query_data_23_reload {Type I LastRead 0 FirstWrite -1}
		p_cast19 {Type I LastRead 0 FirstWrite -1}
		cmp_i_10 {Type I LastRead 0 FirstWrite -1}
		query_data_22_reload {Type I LastRead 0 FirstWrite -1}
		p_cast20 {Type I LastRead 0 FirstWrite -1}
		cmp_i_11 {Type I LastRead 0 FirstWrite -1}
		query_data_21_reload {Type I LastRead 0 FirstWrite -1}
		p_cast21 {Type I LastRead 0 FirstWrite -1}
		cmp_i_12 {Type I LastRead 0 FirstWrite -1}
		query_data_20_reload {Type I LastRead 0 FirstWrite -1}
		p_cast22 {Type I LastRead 0 FirstWrite -1}
		cmp_i_13 {Type I LastRead 0 FirstWrite -1}
		query_data_19_reload {Type I LastRead 0 FirstWrite -1}
		p_cast23 {Type I LastRead 0 FirstWrite -1}
		cmp_i_14 {Type I LastRead 0 FirstWrite -1}
		query_data_18_reload {Type I LastRead 0 FirstWrite -1}
		p_cast24 {Type I LastRead 0 FirstWrite -1}
		cmp_i_15 {Type I LastRead 0 FirstWrite -1}
		query_data_17_reload {Type I LastRead 0 FirstWrite -1}
		p_cast26 {Type I LastRead 0 FirstWrite -1}
		cmp_i_16 {Type I LastRead 0 FirstWrite -1}
		query_data_16_reload {Type I LastRead 0 FirstWrite -1}
		p_cast27 {Type I LastRead 0 FirstWrite -1}
		cmp_i_17 {Type I LastRead 0 FirstWrite -1}
		query_data_15_reload {Type I LastRead 0 FirstWrite -1}
		p_cast28 {Type I LastRead 0 FirstWrite -1}
		cmp_i_18 {Type I LastRead 0 FirstWrite -1}
		query_data_14_reload {Type I LastRead 0 FirstWrite -1}
		p_cast29 {Type I LastRead 0 FirstWrite -1}
		cmp_i_19 {Type I LastRead 0 FirstWrite -1}
		query_data_13_reload {Type I LastRead 0 FirstWrite -1}
		p_cast30 {Type I LastRead 0 FirstWrite -1}
		cmp_i_20 {Type I LastRead 0 FirstWrite -1}
		query_data_12_reload {Type I LastRead 0 FirstWrite -1}
		p_cast31 {Type I LastRead 0 FirstWrite -1}
		cmp_i_21 {Type I LastRead 0 FirstWrite -1}
		query_data_11_reload {Type I LastRead 0 FirstWrite -1}
		p_cast32 {Type I LastRead 0 FirstWrite -1}
		cmp_i_22 {Type I LastRead 0 FirstWrite -1}
		query_data_10_reload {Type I LastRead 0 FirstWrite -1}
		p_cast33 {Type I LastRead 0 FirstWrite -1}
		cmp_i_23 {Type I LastRead 0 FirstWrite -1}
		query_data_9_reload {Type I LastRead 0 FirstWrite -1}
		p_cast34 {Type I LastRead 0 FirstWrite -1}
		cmp_i_24 {Type I LastRead 0 FirstWrite -1}
		query_data_8_reload {Type I LastRead 0 FirstWrite -1}
		p_cast35 {Type I LastRead 0 FirstWrite -1}
		cmp_i_25 {Type I LastRead 0 FirstWrite -1}
		query_data_7_reload {Type I LastRead 0 FirstWrite -1}
		p_cast36 {Type I LastRead 0 FirstWrite -1}
		cmp_i_26 {Type I LastRead 0 FirstWrite -1}
		query_data_6_reload {Type I LastRead 0 FirstWrite -1}
		p_cast37 {Type I LastRead 0 FirstWrite -1}
		cmp_i_27 {Type I LastRead 0 FirstWrite -1}
		query_data_5_reload {Type I LastRead 0 FirstWrite -1}
		p_cast38 {Type I LastRead 0 FirstWrite -1}
		cmp_i_28 {Type I LastRead 0 FirstWrite -1}
		query_data_4_reload {Type I LastRead 0 FirstWrite -1}
		p_cast39 {Type I LastRead 0 FirstWrite -1}
		cmp_i_29 {Type I LastRead 0 FirstWrite -1}
		query_data_3_reload {Type I LastRead 0 FirstWrite -1}
		p_cast40 {Type I LastRead 0 FirstWrite -1}
		cmp_i_30 {Type I LastRead 0 FirstWrite -1}
		query_data_2_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln254 {Type I LastRead 0 FirstWrite -1}
		cmp_i_31 {Type I LastRead 0 FirstWrite -1}
		query_data_1_reload {Type I LastRead 0 FirstWrite -1}
		max_col_value_127_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_126_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_125_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_124_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_123_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_122_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_121_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_120_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_119_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_118_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_117_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_116_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_115_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_114_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_113_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_112_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_111_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_110_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_109_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_108_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_107_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_106_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_105_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_104_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_103_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_102_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_101_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_100_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_99_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_98_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_97_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_96_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_95_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_94_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_93_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_92_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_91_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_90_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_89_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_88_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_87_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_86_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_85_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_84_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_83_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_82_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_81_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_80_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_79_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_78_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_77_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_76_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_75_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_74_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_73_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_72_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_71_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_70_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_69_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_68_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_67_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_66_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_65_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_64_out {Type O LastRead -1 FirstWrite 3}
		max_score_95_out {Type O LastRead -1 FirstWrite 3}
		max_score_94_out {Type O LastRead -1 FirstWrite 3}
		max_score_93_out {Type O LastRead -1 FirstWrite 3}
		max_score_92_out {Type O LastRead -1 FirstWrite 3}
		max_score_91_out {Type O LastRead -1 FirstWrite 3}
		max_score_90_out {Type O LastRead -1 FirstWrite 3}
		max_score_89_out {Type O LastRead -1 FirstWrite 3}
		max_score_88_out {Type O LastRead -1 FirstWrite 3}
		max_score_87_out {Type O LastRead -1 FirstWrite 3}
		max_score_86_out {Type O LastRead -1 FirstWrite 3}
		max_score_85_out {Type O LastRead -1 FirstWrite 3}
		max_score_84_out {Type O LastRead -1 FirstWrite 3}
		max_score_83_out {Type O LastRead -1 FirstWrite 3}
		max_score_82_out {Type O LastRead -1 FirstWrite 3}
		max_score_81_out {Type O LastRead -1 FirstWrite 3}
		max_score_80_out {Type O LastRead -1 FirstWrite 3}
		max_score_79_out {Type O LastRead -1 FirstWrite 3}
		max_score_78_out {Type O LastRead -1 FirstWrite 3}
		max_score_77_out {Type O LastRead -1 FirstWrite 3}
		max_score_76_out {Type O LastRead -1 FirstWrite 3}
		max_score_75_out {Type O LastRead -1 FirstWrite 3}
		max_score_74_out {Type O LastRead -1 FirstWrite 3}
		max_score_73_out {Type O LastRead -1 FirstWrite 3}
		max_score_72_out {Type O LastRead -1 FirstWrite 3}
		max_score_71_out {Type O LastRead -1 FirstWrite 3}
		max_score_70_out {Type O LastRead -1 FirstWrite 3}
		max_score_69_out {Type O LastRead -1 FirstWrite 3}
		max_score_68_out {Type O LastRead -1 FirstWrite 3}
		max_score_67_out {Type O LastRead -1 FirstWrite 3}
		max_score_66_out {Type O LastRead -1 FirstWrite 3}
		max_score_65_out {Type O LastRead -1 FirstWrite 3}
		max_score_64_out {Type O LastRead -1 FirstWrite 3}
		p_out {Type IO LastRead 3 FirstWrite 3}
		p_out1 {Type IO LastRead 3 FirstWrite 3}
		p_out2 {Type IO LastRead 3 FirstWrite 3}
		p_out3 {Type IO LastRead 3 FirstWrite 3}
		p_out4 {Type IO LastRead 3 FirstWrite 3}
		p_out5 {Type IO LastRead 3 FirstWrite 3}
		p_out6 {Type IO LastRead 3 FirstWrite 3}
		p_out7 {Type IO LastRead 3 FirstWrite 3}
		p_out8 {Type IO LastRead 3 FirstWrite 3}
		p_out9 {Type IO LastRead 3 FirstWrite 3}
		p_out10 {Type IO LastRead 3 FirstWrite 3}
		p_out11 {Type IO LastRead 3 FirstWrite 3}
		p_out12 {Type IO LastRead 3 FirstWrite 3}
		p_out13 {Type IO LastRead 3 FirstWrite 3}
		p_out14 {Type IO LastRead 3 FirstWrite 3}
		p_out15 {Type IO LastRead 3 FirstWrite 3}
		p_out16 {Type IO LastRead 3 FirstWrite 3}
		p_out17 {Type IO LastRead 3 FirstWrite 3}
		p_out18 {Type IO LastRead 3 FirstWrite 3}
		p_out19 {Type IO LastRead 3 FirstWrite 3}
		p_out20 {Type IO LastRead 3 FirstWrite 3}
		p_out21 {Type IO LastRead 3 FirstWrite 3}
		p_out22 {Type IO LastRead 3 FirstWrite 3}
		p_out23 {Type IO LastRead 3 FirstWrite 3}
		p_out24 {Type IO LastRead 3 FirstWrite 3}
		p_out25 {Type IO LastRead 3 FirstWrite 3}
		p_out26 {Type IO LastRead 3 FirstWrite 3}
		p_out27 {Type IO LastRead 3 FirstWrite 3}
		p_out28 {Type IO LastRead 3 FirstWrite 3}
		p_out29 {Type IO LastRead 3 FirstWrite 3}
		p_out30 {Type IO LastRead 3 FirstWrite 3}
		p_out31 {Type IO LastRead 3 FirstWrite 3}
		p_out32 {Type IO LastRead 3 FirstWrite 3}
		p_out33 {Type IO LastRead 3 FirstWrite 3}
		p_out34 {Type IO LastRead 3 FirstWrite 3}
		p_out35 {Type IO LastRead 3 FirstWrite 3}
		p_out36 {Type IO LastRead 3 FirstWrite 3}
		p_out37 {Type IO LastRead 3 FirstWrite 3}
		p_out38 {Type IO LastRead 3 FirstWrite 3}
		p_out39 {Type IO LastRead 3 FirstWrite 3}
		p_out40 {Type IO LastRead 3 FirstWrite 3}
		p_out41 {Type IO LastRead 3 FirstWrite 3}
		p_out42 {Type IO LastRead 3 FirstWrite 3}
		p_out43 {Type IO LastRead 3 FirstWrite 3}
		p_out44 {Type IO LastRead 3 FirstWrite 3}
		p_out45 {Type IO LastRead 3 FirstWrite 3}
		p_out46 {Type IO LastRead 3 FirstWrite 3}
		p_out47 {Type IO LastRead 3 FirstWrite 3}
		p_out48 {Type IO LastRead 3 FirstWrite 3}
		p_out49 {Type IO LastRead 3 FirstWrite 3}
		p_out50 {Type IO LastRead 3 FirstWrite 3}
		p_out51 {Type IO LastRead 3 FirstWrite 3}
		p_out52 {Type IO LastRead 3 FirstWrite 3}
		p_out53 {Type IO LastRead 3 FirstWrite 3}
		p_out54 {Type IO LastRead 3 FirstWrite 3}
		p_out55 {Type IO LastRead 3 FirstWrite 3}
		p_out56 {Type IO LastRead 3 FirstWrite 3}
		p_out57 {Type IO LastRead 3 FirstWrite 3}
		p_out58 {Type IO LastRead 3 FirstWrite 3}
		p_out59 {Type IO LastRead 3 FirstWrite 3}
		p_out60 {Type IO LastRead 3 FirstWrite 3}
		p_out61 {Type IO LastRead 3 FirstWrite 3}
		p_out62 {Type IO LastRead 3 FirstWrite 3}
		temp_1_out {Type IO LastRead 2 FirstWrite 2}}
	seq_align_Pipeline_VITIS_LOOP_310_11 {
		max {Type I LastRead 0 FirstWrite -1}
		index {Type I LastRead 0 FirstWrite -1}
		max_score_64_reload {Type I LastRead 0 FirstWrite -1}
		max_score_65_reload {Type I LastRead 0 FirstWrite -1}
		max_score_66_reload {Type I LastRead 0 FirstWrite -1}
		max_score_67_reload {Type I LastRead 0 FirstWrite -1}
		max_score_68_reload {Type I LastRead 0 FirstWrite -1}
		max_score_69_reload {Type I LastRead 0 FirstWrite -1}
		max_score_70_reload {Type I LastRead 0 FirstWrite -1}
		max_score_71_reload {Type I LastRead 0 FirstWrite -1}
		max_score_72_reload {Type I LastRead 0 FirstWrite -1}
		max_score_73_reload {Type I LastRead 0 FirstWrite -1}
		max_score_74_reload {Type I LastRead 0 FirstWrite -1}
		max_score_75_reload {Type I LastRead 0 FirstWrite -1}
		max_score_76_reload {Type I LastRead 0 FirstWrite -1}
		max_score_77_reload {Type I LastRead 0 FirstWrite -1}
		max_score_78_reload {Type I LastRead 0 FirstWrite -1}
		max_score_79_reload {Type I LastRead 0 FirstWrite -1}
		max_score_80_reload {Type I LastRead 0 FirstWrite -1}
		max_score_81_reload {Type I LastRead 0 FirstWrite -1}
		max_score_82_reload {Type I LastRead 0 FirstWrite -1}
		max_score_83_reload {Type I LastRead 0 FirstWrite -1}
		max_score_84_reload {Type I LastRead 0 FirstWrite -1}
		max_score_85_reload {Type I LastRead 0 FirstWrite -1}
		max_score_86_reload {Type I LastRead 0 FirstWrite -1}
		max_score_87_reload {Type I LastRead 0 FirstWrite -1}
		max_score_88_reload {Type I LastRead 0 FirstWrite -1}
		max_score_89_reload {Type I LastRead 0 FirstWrite -1}
		max_score_90_reload {Type I LastRead 0 FirstWrite -1}
		max_score_91_reload {Type I LastRead 0 FirstWrite -1}
		max_score_92_reload {Type I LastRead 0 FirstWrite -1}
		max_score_93_reload {Type I LastRead 0 FirstWrite -1}
		max_score_94_reload {Type I LastRead 0 FirstWrite -1}
		max_score_95_reload {Type I LastRead 0 FirstWrite -1}
		max_1_out {Type O LastRead -1 FirstWrite 1}
		index_1_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	query_string_comp_0 { axis {  { query_string_comp_0_TDATA in_data 0 8 }  { query_string_comp_0_TVALID in_vld 0 1 }  { query_string_comp_0_TREADY in_acc 1 1 } } }
	reference_string_comp_0 { axis {  { reference_string_comp_0_TDATA in_data 0 8 }  { reference_string_comp_0_TVALID in_vld 0 1 }  { reference_string_comp_0_TREADY in_acc 1 1 } } }
}
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
set C_modelType { int 32 }
set C_modelArgList {
	{ query_string_comp_0 int 8 regular {axi_s 0 volatile  { query_string_comp_0 Data } }  }
	{ reference_string_comp_0 int 8 regular {axi_s 0 volatile  { reference_string_comp_0 Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "query_string_comp_0", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "reference_string_comp_0", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ query_string_comp_0_TDATA sc_in sc_lv 8 signal 0 } 
	{ query_string_comp_0_TVALID sc_in sc_logic 1 invld 0 } 
	{ query_string_comp_0_TREADY sc_out sc_logic 1 inacc 0 } 
	{ reference_string_comp_0_TDATA sc_in sc_lv 8 signal 1 } 
	{ reference_string_comp_0_TVALID sc_in sc_logic 1 invld 1 } 
	{ reference_string_comp_0_TREADY sc_out sc_logic 1 inacc 1 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "query_string_comp_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "query_string_comp_0", "role": "TDATA" }} , 
 	{ "name": "query_string_comp_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "query_string_comp_0", "role": "TVALID" }} , 
 	{ "name": "query_string_comp_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "query_string_comp_0", "role": "TREADY" }} , 
 	{ "name": "reference_string_comp_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "reference_string_comp_0", "role": "TDATA" }} , 
 	{ "name": "reference_string_comp_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "reference_string_comp_0", "role": "TVALID" }} , 
 	{ "name": "reference_string_comp_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "reference_string_comp_0", "role": "TREADY" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "68", "70", "72", "74", "76", "78", "81", "115", "118", "119"],
		"CDFG" : "seq_align",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "query_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "76", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_245_10_fu_1973", "Port" : "query_string_comp_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "reference_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "74", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_215_7_fu_1935", "Port" : "reference_string_comp_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "kernel", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_16_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_17_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_18_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_19_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_20_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_21_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_22_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_23_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_24_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_25_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_26_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_27_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_28_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_29_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_30_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_31_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.last_pe_score_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_1_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_2_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_3_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_4_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_5_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_6_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_7_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_8_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_9_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_10_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_11_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_12_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_13_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_14_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_15_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_16_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_17_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_18_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_19_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_20_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_21_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_22_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_23_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_24_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_25_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_26_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_27_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_28_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_29_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_30_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_31_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_181_1_fu_1694", "Parent" : "0", "Child" : ["67"],
		"CDFG" : "seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_181_1",
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
			{"Name" : "dp_mem_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "local_dpmem_loop_VITIS_LOOP_181_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_181_1_fu_1694.flow_control_loop_pipe_sequential_init_U", "Parent" : "66"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_187_2_fu_1761", "Parent" : "0", "Child" : ["69"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_187_2",
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
			{"Name" : "last_pe_score", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_187_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_187_2_fu_1761.flow_control_loop_pipe_sequential_init_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_197_4_fu_1767", "Parent" : "0", "Child" : ["71"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_197_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max_col_value_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_197_4", "PipelineType" : "NotSupport"}]},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_197_4_fu_1767.flow_control_loop_pipe_sequential_init_U", "Parent" : "70"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_206_5_VITIS_LOOP_208_6_fu_1867", "Parent" : "0", "Child" : ["73"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_206_5_VITIS_LOOP_208_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65538", "EstimateLatencyMax" : "65538",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "traceback_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_31", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_206_5_VITIS_LOOP_208_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_206_5_VITIS_LOOP_208_6_fu_1867.flow_control_loop_pipe_sequential_init_U", "Parent" : "72"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_215_7_fu_1935", "Parent" : "0", "Child" : ["75"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_215_7",
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
			{"Name" : "VITIS_LOOP_215_7", "PipelineType" : "NotSupport"}]},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_215_7_fu_1935.flow_control_loop_pipe_sequential_init_U", "Parent" : "74"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_245_10_fu_1973", "Parent" : "0", "Child" : ["77"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_245_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "query_string_comp_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "query_data_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_245_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_245_10_fu_1973.flow_control_loop_pipe_sequential_init_U", "Parent" : "76"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_traceback_logic_fu_2042", "Parent" : "0", "Child" : ["79", "80"],
		"CDFG" : "seq_align_Pipeline_traceback_logic",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ultimate_row_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "ultimate_col_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "traceback_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_31", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "traceback_logic", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "3", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_traceback_logic_fu_2042.mux_325_2_1_1_U779", "Parent" : "78"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_traceback_logic_fu_2042.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080", "Parent" : "0", "Child" : ["82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114"],
		"CDFG" : "seq_align_Pipeline_kernel1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "296", "EstimateLatencyMax" : "296",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max_col_value_95", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_94", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_93", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_92", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_91", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_90", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_89", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_88", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_87", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_86", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_85", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_84", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_83", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_82", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_81", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_80", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_79", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_78", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_77", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_76", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_75", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_74", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_73", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_72", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_71", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_70", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_67", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln282_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "traceback_V_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "last_pe_score", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_cast9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_phi_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast10", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast11", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast12", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast13", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast14", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast15", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast16", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast17", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast18", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast19", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast20", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast21", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast22", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast23", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast24", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast25", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast26", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast27", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast28", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast29", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast30", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast31", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast32", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast33", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast34", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast35", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast36", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast37", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast38", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast39", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln254", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_127_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_126_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_125_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_124_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_123_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_122_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_121_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_120_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_119_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_118_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_117_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_116_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_115_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_113_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_112_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_111_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_110_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_109_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_108_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_107_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_106_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_105_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_104_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_103_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_102_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_101_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_100_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_99_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_98_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_97_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_96_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_94_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_92_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_88_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_85_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_84_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_83_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_66_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_65_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_94_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_92_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_88_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_85_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_84_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_83_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_66_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_65_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "temp_1_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "kernel1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter8", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter8", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U290", "Parent" : "81"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U291", "Parent" : "81"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U292", "Parent" : "81"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U293", "Parent" : "81"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U294", "Parent" : "81"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U295", "Parent" : "81"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U296", "Parent" : "81"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U297", "Parent" : "81"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U298", "Parent" : "81"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U299", "Parent" : "81"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U300", "Parent" : "81"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U301", "Parent" : "81"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U302", "Parent" : "81"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U303", "Parent" : "81"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U304", "Parent" : "81"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U305", "Parent" : "81"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U306", "Parent" : "81"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U307", "Parent" : "81"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U308", "Parent" : "81"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U309", "Parent" : "81"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U310", "Parent" : "81"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U311", "Parent" : "81"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U312", "Parent" : "81"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U313", "Parent" : "81"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U314", "Parent" : "81"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U315", "Parent" : "81"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U316", "Parent" : "81"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U317", "Parent" : "81"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U318", "Parent" : "81"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U319", "Parent" : "81"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U320", "Parent" : "81"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.mux_325_8_1_1_U321", "Parent" : "81"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2080.flow_control_loop_pipe_sequential_init_U", "Parent" : "81"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_310_11_fu_2502", "Parent" : "0", "Child" : ["116", "117"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_310_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max", "Type" : "None", "Direction" : "I"},
			{"Name" : "index", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_64_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_65_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_66_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_67_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_68_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_69_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_70_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_71_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_72_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_73_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_74_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_75_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_76_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_77_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_78_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_79_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_80_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_81_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_82_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_83_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_84_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_85_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_86_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_87_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_88_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_89_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_90_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_91_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_92_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_93_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_94_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_95_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "index_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_310_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_310_11_fu_2502.mux_326_32_1_1_U741", "Parent" : "115"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_310_11_fu_2502.flow_control_loop_pipe_sequential_init_U", "Parent" : "115"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3232_32_1_1_U815", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3232_32_1_1_U816", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	seq_align {
		query_string_comp_0 {Type I LastRead 1 FirstWrite -1}
		reference_string_comp_0 {Type I LastRead 0 FirstWrite -1}}
	seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_181_1 {
		dp_mem_62_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_61_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_60_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_59_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_58_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_57_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_56_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_55_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_54_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_53_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_52_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_51_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_50_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_49_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_48_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_47_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_46_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_45_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_44_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_43_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_42_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_41_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_40_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_39_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_38_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_37_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_36_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_35_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_34_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_33_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_32_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_31_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_30_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_29_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_28_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_27_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_26_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_25_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_24_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_23_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_22_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_21_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_20_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_19_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_18_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_17_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_16_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_15_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_14_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_13_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_12_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_11_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_10_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_9_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_8_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_7_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_6_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_5_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_4_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_3_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_2_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_1_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_out {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_187_2 {
		last_pe_score {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_197_4 {
		max_col_value_31_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_30_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_29_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_28_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_27_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_26_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_25_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_24_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_23_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_22_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_21_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_20_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_19_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_18_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_17_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_16_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_15_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_14_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_13_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_12_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_11_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_10_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_9_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_8_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_7_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_6_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_5_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_4_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_3_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_2_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_1_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_31_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_30_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_29_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_28_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_27_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_26_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_25_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_24_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_23_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_22_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_21_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_20_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_19_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_18_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_17_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_16_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_15_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_14_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_13_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_12_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_11_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_10_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_9_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_8_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_7_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_6_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_5_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_4_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_3_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_2_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_1_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_out {Type O LastRead -1 FirstWrite 0}
		max_score_31_out {Type O LastRead -1 FirstWrite 0}
		max_score_30_out {Type O LastRead -1 FirstWrite 0}
		max_score_29_out {Type O LastRead -1 FirstWrite 0}
		max_score_28_out {Type O LastRead -1 FirstWrite 0}
		max_score_27_out {Type O LastRead -1 FirstWrite 0}
		max_score_26_out {Type O LastRead -1 FirstWrite 0}
		max_score_25_out {Type O LastRead -1 FirstWrite 0}
		max_score_24_out {Type O LastRead -1 FirstWrite 0}
		max_score_23_out {Type O LastRead -1 FirstWrite 0}
		max_score_22_out {Type O LastRead -1 FirstWrite 0}
		max_score_21_out {Type O LastRead -1 FirstWrite 0}
		max_score_20_out {Type O LastRead -1 FirstWrite 0}
		max_score_19_out {Type O LastRead -1 FirstWrite 0}
		max_score_18_out {Type O LastRead -1 FirstWrite 0}
		max_score_17_out {Type O LastRead -1 FirstWrite 0}
		max_score_16_out {Type O LastRead -1 FirstWrite 0}
		max_score_15_out {Type O LastRead -1 FirstWrite 0}
		max_score_14_out {Type O LastRead -1 FirstWrite 0}
		max_score_13_out {Type O LastRead -1 FirstWrite 0}
		max_score_12_out {Type O LastRead -1 FirstWrite 0}
		max_score_11_out {Type O LastRead -1 FirstWrite 0}
		max_score_10_out {Type O LastRead -1 FirstWrite 0}
		max_score_9_out {Type O LastRead -1 FirstWrite 0}
		max_score_8_out {Type O LastRead -1 FirstWrite 0}
		max_score_7_out {Type O LastRead -1 FirstWrite 0}
		max_score_6_out {Type O LastRead -1 FirstWrite 0}
		max_score_5_out {Type O LastRead -1 FirstWrite 0}
		max_score_4_out {Type O LastRead -1 FirstWrite 0}
		max_score_3_out {Type O LastRead -1 FirstWrite 0}
		max_score_2_out {Type O LastRead -1 FirstWrite 0}
		max_score_1_out {Type O LastRead -1 FirstWrite 0}
		max_score_out {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_206_5_VITIS_LOOP_208_6 {
		traceback_V {Type O LastRead -1 FirstWrite 2}
		traceback_V_1 {Type O LastRead -1 FirstWrite 2}
		traceback_V_2 {Type O LastRead -1 FirstWrite 2}
		traceback_V_3 {Type O LastRead -1 FirstWrite 2}
		traceback_V_4 {Type O LastRead -1 FirstWrite 2}
		traceback_V_5 {Type O LastRead -1 FirstWrite 2}
		traceback_V_6 {Type O LastRead -1 FirstWrite 2}
		traceback_V_7 {Type O LastRead -1 FirstWrite 2}
		traceback_V_8 {Type O LastRead -1 FirstWrite 2}
		traceback_V_9 {Type O LastRead -1 FirstWrite 2}
		traceback_V_10 {Type O LastRead -1 FirstWrite 2}
		traceback_V_11 {Type O LastRead -1 FirstWrite 2}
		traceback_V_12 {Type O LastRead -1 FirstWrite 2}
		traceback_V_13 {Type O LastRead -1 FirstWrite 2}
		traceback_V_14 {Type O LastRead -1 FirstWrite 2}
		traceback_V_15 {Type O LastRead -1 FirstWrite 2}
		traceback_V_16 {Type O LastRead -1 FirstWrite 2}
		traceback_V_17 {Type O LastRead -1 FirstWrite 2}
		traceback_V_18 {Type O LastRead -1 FirstWrite 2}
		traceback_V_19 {Type O LastRead -1 FirstWrite 2}
		traceback_V_20 {Type O LastRead -1 FirstWrite 2}
		traceback_V_21 {Type O LastRead -1 FirstWrite 2}
		traceback_V_22 {Type O LastRead -1 FirstWrite 2}
		traceback_V_23 {Type O LastRead -1 FirstWrite 2}
		traceback_V_24 {Type O LastRead -1 FirstWrite 2}
		traceback_V_25 {Type O LastRead -1 FirstWrite 2}
		traceback_V_26 {Type O LastRead -1 FirstWrite 2}
		traceback_V_27 {Type O LastRead -1 FirstWrite 2}
		traceback_V_28 {Type O LastRead -1 FirstWrite 2}
		traceback_V_29 {Type O LastRead -1 FirstWrite 2}
		traceback_V_30 {Type O LastRead -1 FirstWrite 2}
		traceback_V_31 {Type O LastRead -1 FirstWrite 2}}
	seq_align_Pipeline_VITIS_LOOP_215_7 {
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
		local_reference_31 {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_245_10 {
		empty_22 {Type I LastRead 0 FirstWrite -1}
		empty_23 {Type I LastRead 0 FirstWrite -1}
		empty_24 {Type I LastRead 0 FirstWrite -1}
		empty_25 {Type I LastRead 0 FirstWrite -1}
		empty_26 {Type I LastRead 0 FirstWrite -1}
		empty_27 {Type I LastRead 0 FirstWrite -1}
		empty_28 {Type I LastRead 0 FirstWrite -1}
		empty_29 {Type I LastRead 0 FirstWrite -1}
		empty_30 {Type I LastRead 0 FirstWrite -1}
		empty_31 {Type I LastRead 0 FirstWrite -1}
		empty_32 {Type I LastRead 0 FirstWrite -1}
		empty_33 {Type I LastRead 0 FirstWrite -1}
		empty_34 {Type I LastRead 0 FirstWrite -1}
		empty_35 {Type I LastRead 0 FirstWrite -1}
		empty_36 {Type I LastRead 0 FirstWrite -1}
		empty_37 {Type I LastRead 0 FirstWrite -1}
		empty_38 {Type I LastRead 0 FirstWrite -1}
		empty_39 {Type I LastRead 0 FirstWrite -1}
		empty_40 {Type I LastRead 0 FirstWrite -1}
		empty_41 {Type I LastRead 0 FirstWrite -1}
		empty_42 {Type I LastRead 0 FirstWrite -1}
		empty_43 {Type I LastRead 0 FirstWrite -1}
		empty_44 {Type I LastRead 0 FirstWrite -1}
		empty_45 {Type I LastRead 0 FirstWrite -1}
		empty_46 {Type I LastRead 0 FirstWrite -1}
		empty_47 {Type I LastRead 0 FirstWrite -1}
		empty_48 {Type I LastRead 0 FirstWrite -1}
		empty_49 {Type I LastRead 0 FirstWrite -1}
		empty_50 {Type I LastRead 0 FirstWrite -1}
		empty_51 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		query_string_comp_0 {Type I LastRead 1 FirstWrite -1}
		query_data_1_out {Type O LastRead -1 FirstWrite 1}
		query_data_2_out {Type O LastRead -1 FirstWrite 1}
		query_data_3_out {Type O LastRead -1 FirstWrite 1}
		query_data_4_out {Type O LastRead -1 FirstWrite 1}
		query_data_5_out {Type O LastRead -1 FirstWrite 1}
		query_data_6_out {Type O LastRead -1 FirstWrite 1}
		query_data_7_out {Type O LastRead -1 FirstWrite 1}
		query_data_8_out {Type O LastRead -1 FirstWrite 1}
		query_data_9_out {Type O LastRead -1 FirstWrite 1}
		query_data_10_out {Type O LastRead -1 FirstWrite 1}
		query_data_11_out {Type O LastRead -1 FirstWrite 1}
		query_data_12_out {Type O LastRead -1 FirstWrite 1}
		query_data_13_out {Type O LastRead -1 FirstWrite 1}
		query_data_14_out {Type O LastRead -1 FirstWrite 1}
		query_data_15_out {Type O LastRead -1 FirstWrite 1}
		query_data_16_out {Type O LastRead -1 FirstWrite 1}
		query_data_17_out {Type O LastRead -1 FirstWrite 1}
		query_data_18_out {Type O LastRead -1 FirstWrite 1}
		query_data_19_out {Type O LastRead -1 FirstWrite 1}
		query_data_20_out {Type O LastRead -1 FirstWrite 1}
		query_data_21_out {Type O LastRead -1 FirstWrite 1}
		query_data_22_out {Type O LastRead -1 FirstWrite 1}
		query_data_23_out {Type O LastRead -1 FirstWrite 1}
		query_data_24_out {Type O LastRead -1 FirstWrite 1}
		query_data_25_out {Type O LastRead -1 FirstWrite 1}
		query_data_26_out {Type O LastRead -1 FirstWrite 1}
		query_data_27_out {Type O LastRead -1 FirstWrite 1}
		query_data_28_out {Type O LastRead -1 FirstWrite 1}
		query_data_29_out {Type O LastRead -1 FirstWrite 1}
		query_data_30_out {Type O LastRead -1 FirstWrite 1}
		query_data_out {Type O LastRead -1 FirstWrite 1}
		p_phi_out {Type O LastRead -1 FirstWrite 1}}
	seq_align_Pipeline_traceback_logic {
		ultimate_row_value {Type I LastRead 0 FirstWrite -1}
		ultimate_col_value {Type I LastRead 0 FirstWrite -1}
		traceback_V {Type I LastRead 1 FirstWrite -1}
		traceback_V_1 {Type I LastRead 1 FirstWrite -1}
		traceback_V_2 {Type I LastRead 1 FirstWrite -1}
		traceback_V_3 {Type I LastRead 1 FirstWrite -1}
		traceback_V_4 {Type I LastRead 1 FirstWrite -1}
		traceback_V_5 {Type I LastRead 1 FirstWrite -1}
		traceback_V_6 {Type I LastRead 1 FirstWrite -1}
		traceback_V_7 {Type I LastRead 1 FirstWrite -1}
		traceback_V_8 {Type I LastRead 1 FirstWrite -1}
		traceback_V_9 {Type I LastRead 1 FirstWrite -1}
		traceback_V_10 {Type I LastRead 1 FirstWrite -1}
		traceback_V_11 {Type I LastRead 1 FirstWrite -1}
		traceback_V_12 {Type I LastRead 1 FirstWrite -1}
		traceback_V_13 {Type I LastRead 1 FirstWrite -1}
		traceback_V_14 {Type I LastRead 1 FirstWrite -1}
		traceback_V_15 {Type I LastRead 1 FirstWrite -1}
		traceback_V_16 {Type I LastRead 1 FirstWrite -1}
		traceback_V_17 {Type I LastRead 1 FirstWrite -1}
		traceback_V_18 {Type I LastRead 1 FirstWrite -1}
		traceback_V_19 {Type I LastRead 1 FirstWrite -1}
		traceback_V_20 {Type I LastRead 1 FirstWrite -1}
		traceback_V_21 {Type I LastRead 1 FirstWrite -1}
		traceback_V_22 {Type I LastRead 1 FirstWrite -1}
		traceback_V_23 {Type I LastRead 1 FirstWrite -1}
		traceback_V_24 {Type I LastRead 1 FirstWrite -1}
		traceback_V_25 {Type I LastRead 1 FirstWrite -1}
		traceback_V_26 {Type I LastRead 1 FirstWrite -1}
		traceback_V_27 {Type I LastRead 1 FirstWrite -1}
		traceback_V_28 {Type I LastRead 1 FirstWrite -1}
		traceback_V_29 {Type I LastRead 1 FirstWrite -1}
		traceback_V_30 {Type I LastRead 1 FirstWrite -1}
		traceback_V_31 {Type I LastRead 1 FirstWrite -1}}
	seq_align_Pipeline_kernel1 {
		max_col_value_95 {Type I LastRead 0 FirstWrite -1}
		max_col_value_94 {Type I LastRead 0 FirstWrite -1}
		max_col_value_93 {Type I LastRead 0 FirstWrite -1}
		max_col_value_92 {Type I LastRead 0 FirstWrite -1}
		max_col_value_91 {Type I LastRead 0 FirstWrite -1}
		max_col_value_90 {Type I LastRead 0 FirstWrite -1}
		max_col_value_89 {Type I LastRead 0 FirstWrite -1}
		max_col_value_88 {Type I LastRead 0 FirstWrite -1}
		max_col_value_87 {Type I LastRead 0 FirstWrite -1}
		max_col_value_86 {Type I LastRead 0 FirstWrite -1}
		max_col_value_85 {Type I LastRead 0 FirstWrite -1}
		max_col_value_84 {Type I LastRead 0 FirstWrite -1}
		max_col_value_83 {Type I LastRead 0 FirstWrite -1}
		max_col_value_82 {Type I LastRead 0 FirstWrite -1}
		max_col_value_81 {Type I LastRead 0 FirstWrite -1}
		max_col_value_80 {Type I LastRead 0 FirstWrite -1}
		max_col_value_79 {Type I LastRead 0 FirstWrite -1}
		max_col_value_78 {Type I LastRead 0 FirstWrite -1}
		max_col_value_77 {Type I LastRead 0 FirstWrite -1}
		max_col_value_76 {Type I LastRead 0 FirstWrite -1}
		max_col_value_75 {Type I LastRead 0 FirstWrite -1}
		max_col_value_74 {Type I LastRead 0 FirstWrite -1}
		max_col_value_73 {Type I LastRead 0 FirstWrite -1}
		max_col_value_72 {Type I LastRead 0 FirstWrite -1}
		max_col_value_71 {Type I LastRead 0 FirstWrite -1}
		max_col_value_70 {Type I LastRead 0 FirstWrite -1}
		max_col_value_69 {Type I LastRead 0 FirstWrite -1}
		max_col_value_68 {Type I LastRead 0 FirstWrite -1}
		max_col_value_67 {Type I LastRead 0 FirstWrite -1}
		max_col_value_66 {Type I LastRead 0 FirstWrite -1}
		max_col_value_65 {Type I LastRead 0 FirstWrite -1}
		max_col_value_64 {Type I LastRead 0 FirstWrite -1}
		max_row_value_63 {Type I LastRead 0 FirstWrite -1}
		max_row_value_62 {Type I LastRead 0 FirstWrite -1}
		max_row_value_61 {Type I LastRead 0 FirstWrite -1}
		max_row_value_60 {Type I LastRead 0 FirstWrite -1}
		max_row_value_59 {Type I LastRead 0 FirstWrite -1}
		max_row_value_58 {Type I LastRead 0 FirstWrite -1}
		max_row_value_57 {Type I LastRead 0 FirstWrite -1}
		max_row_value_56 {Type I LastRead 0 FirstWrite -1}
		max_row_value_55 {Type I LastRead 0 FirstWrite -1}
		max_row_value_54 {Type I LastRead 0 FirstWrite -1}
		max_row_value_53 {Type I LastRead 0 FirstWrite -1}
		max_row_value_52 {Type I LastRead 0 FirstWrite -1}
		max_row_value_51 {Type I LastRead 0 FirstWrite -1}
		max_row_value_50 {Type I LastRead 0 FirstWrite -1}
		max_row_value_49 {Type I LastRead 0 FirstWrite -1}
		max_row_value_48 {Type I LastRead 0 FirstWrite -1}
		max_row_value_47 {Type I LastRead 0 FirstWrite -1}
		max_row_value_46 {Type I LastRead 0 FirstWrite -1}
		max_row_value_45 {Type I LastRead 0 FirstWrite -1}
		max_row_value_44 {Type I LastRead 0 FirstWrite -1}
		max_row_value_43 {Type I LastRead 0 FirstWrite -1}
		max_row_value_42 {Type I LastRead 0 FirstWrite -1}
		max_row_value_41 {Type I LastRead 0 FirstWrite -1}
		max_row_value_40 {Type I LastRead 0 FirstWrite -1}
		max_row_value_39 {Type I LastRead 0 FirstWrite -1}
		max_row_value_38 {Type I LastRead 0 FirstWrite -1}
		max_row_value_37 {Type I LastRead 0 FirstWrite -1}
		max_row_value_36 {Type I LastRead 0 FirstWrite -1}
		max_row_value_35 {Type I LastRead 0 FirstWrite -1}
		max_row_value_34 {Type I LastRead 0 FirstWrite -1}
		max_row_value_33 {Type I LastRead 0 FirstWrite -1}
		max_row_value_32 {Type I LastRead 0 FirstWrite -1}
		max_score_63 {Type I LastRead 0 FirstWrite -1}
		max_score_62 {Type I LastRead 0 FirstWrite -1}
		max_score_61 {Type I LastRead 0 FirstWrite -1}
		max_score_60 {Type I LastRead 0 FirstWrite -1}
		max_score_59 {Type I LastRead 0 FirstWrite -1}
		max_score_58 {Type I LastRead 0 FirstWrite -1}
		max_score_57 {Type I LastRead 0 FirstWrite -1}
		max_score_56 {Type I LastRead 0 FirstWrite -1}
		max_score_55 {Type I LastRead 0 FirstWrite -1}
		max_score_54 {Type I LastRead 0 FirstWrite -1}
		max_score_53 {Type I LastRead 0 FirstWrite -1}
		max_score_52 {Type I LastRead 0 FirstWrite -1}
		max_score_51 {Type I LastRead 0 FirstWrite -1}
		max_score_50 {Type I LastRead 0 FirstWrite -1}
		max_score_49 {Type I LastRead 0 FirstWrite -1}
		max_score_48 {Type I LastRead 0 FirstWrite -1}
		max_score_47 {Type I LastRead 0 FirstWrite -1}
		max_score_46 {Type I LastRead 0 FirstWrite -1}
		max_score_45 {Type I LastRead 0 FirstWrite -1}
		max_score_44 {Type I LastRead 0 FirstWrite -1}
		max_score_43 {Type I LastRead 0 FirstWrite -1}
		max_score_42 {Type I LastRead 0 FirstWrite -1}
		max_score_41 {Type I LastRead 0 FirstWrite -1}
		max_score_40 {Type I LastRead 0 FirstWrite -1}
		max_score_39 {Type I LastRead 0 FirstWrite -1}
		max_score_38 {Type I LastRead 0 FirstWrite -1}
		max_score_37 {Type I LastRead 0 FirstWrite -1}
		max_score_36 {Type I LastRead 0 FirstWrite -1}
		max_score_35 {Type I LastRead 0 FirstWrite -1}
		max_score_34 {Type I LastRead 0 FirstWrite -1}
		max_score_33 {Type I LastRead 0 FirstWrite -1}
		max_score_32 {Type I LastRead 0 FirstWrite -1}
		zext_ln282_1 {Type I LastRead 0 FirstWrite -1}
		traceback_V_30 {Type O LastRead -1 FirstWrite 0}
		traceback_V_29 {Type O LastRead -1 FirstWrite 0}
		traceback_V_28 {Type O LastRead -1 FirstWrite 0}
		traceback_V_27 {Type O LastRead -1 FirstWrite 0}
		traceback_V_26 {Type O LastRead -1 FirstWrite 0}
		traceback_V_25 {Type O LastRead -1 FirstWrite 0}
		traceback_V_24 {Type O LastRead -1 FirstWrite 0}
		traceback_V_23 {Type O LastRead -1 FirstWrite 0}
		traceback_V_22 {Type O LastRead -1 FirstWrite 0}
		traceback_V_21 {Type O LastRead -1 FirstWrite 0}
		traceback_V_20 {Type O LastRead -1 FirstWrite 0}
		traceback_V_19 {Type O LastRead -1 FirstWrite 0}
		traceback_V_18 {Type O LastRead -1 FirstWrite 0}
		traceback_V_17 {Type O LastRead -1 FirstWrite 0}
		traceback_V_16 {Type O LastRead -1 FirstWrite 0}
		traceback_V_15 {Type O LastRead -1 FirstWrite 0}
		traceback_V_14 {Type O LastRead -1 FirstWrite 0}
		traceback_V_13 {Type O LastRead -1 FirstWrite 0}
		traceback_V_12 {Type O LastRead -1 FirstWrite 0}
		traceback_V_11 {Type O LastRead -1 FirstWrite 0}
		traceback_V_10 {Type O LastRead -1 FirstWrite 0}
		traceback_V_9 {Type O LastRead -1 FirstWrite 0}
		traceback_V_8 {Type O LastRead -1 FirstWrite 0}
		traceback_V_7 {Type O LastRead -1 FirstWrite 0}
		traceback_V_6 {Type O LastRead -1 FirstWrite 0}
		traceback_V_5 {Type O LastRead -1 FirstWrite 0}
		traceback_V_4 {Type O LastRead -1 FirstWrite 0}
		traceback_V_3 {Type O LastRead -1 FirstWrite 0}
		traceback_V_2 {Type O LastRead -1 FirstWrite 0}
		traceback_V_1 {Type O LastRead -1 FirstWrite 0}
		traceback_V {Type O LastRead -1 FirstWrite 0}
		traceback_V_31 {Type O LastRead -1 FirstWrite 0}
		local_reference {Type I LastRead 2 FirstWrite -1}
		local_reference_1 {Type I LastRead 2 FirstWrite -1}
		local_reference_2 {Type I LastRead 2 FirstWrite -1}
		local_reference_3 {Type I LastRead 2 FirstWrite -1}
		local_reference_4 {Type I LastRead 2 FirstWrite -1}
		local_reference_5 {Type I LastRead 2 FirstWrite -1}
		local_reference_6 {Type I LastRead 2 FirstWrite -1}
		local_reference_7 {Type I LastRead 2 FirstWrite -1}
		local_reference_8 {Type I LastRead 2 FirstWrite -1}
		local_reference_9 {Type I LastRead 2 FirstWrite -1}
		local_reference_10 {Type I LastRead 2 FirstWrite -1}
		local_reference_11 {Type I LastRead 2 FirstWrite -1}
		local_reference_12 {Type I LastRead 2 FirstWrite -1}
		local_reference_13 {Type I LastRead 2 FirstWrite -1}
		local_reference_14 {Type I LastRead 2 FirstWrite -1}
		local_reference_15 {Type I LastRead 2 FirstWrite -1}
		local_reference_16 {Type I LastRead 2 FirstWrite -1}
		local_reference_17 {Type I LastRead 2 FirstWrite -1}
		local_reference_18 {Type I LastRead 2 FirstWrite -1}
		local_reference_19 {Type I LastRead 2 FirstWrite -1}
		local_reference_20 {Type I LastRead 2 FirstWrite -1}
		local_reference_21 {Type I LastRead 2 FirstWrite -1}
		local_reference_22 {Type I LastRead 2 FirstWrite -1}
		local_reference_23 {Type I LastRead 2 FirstWrite -1}
		local_reference_24 {Type I LastRead 2 FirstWrite -1}
		local_reference_25 {Type I LastRead 2 FirstWrite -1}
		local_reference_26 {Type I LastRead 2 FirstWrite -1}
		local_reference_27 {Type I LastRead 2 FirstWrite -1}
		local_reference_28 {Type I LastRead 2 FirstWrite -1}
		local_reference_29 {Type I LastRead 2 FirstWrite -1}
		local_reference_30 {Type I LastRead 2 FirstWrite -1}
		local_reference_31 {Type I LastRead 2 FirstWrite -1}
		last_pe_score {Type IO LastRead 0 FirstWrite 8}
		p_cast9 {Type I LastRead 0 FirstWrite -1}
		p_phi_reload {Type I LastRead 0 FirstWrite -1}
		cmp_i38 {Type I LastRead 0 FirstWrite -1}
		p_cast10 {Type I LastRead 0 FirstWrite -1}
		cmp_i_1 {Type I LastRead 0 FirstWrite -1}
		query_data_reload {Type I LastRead 0 FirstWrite -1}
		p_cast11 {Type I LastRead 0 FirstWrite -1}
		cmp_i_2 {Type I LastRead 0 FirstWrite -1}
		query_data_30_reload {Type I LastRead 0 FirstWrite -1}
		p_cast12 {Type I LastRead 0 FirstWrite -1}
		cmp_i_3 {Type I LastRead 0 FirstWrite -1}
		query_data_29_reload {Type I LastRead 0 FirstWrite -1}
		p_cast13 {Type I LastRead 0 FirstWrite -1}
		cmp_i_4 {Type I LastRead 0 FirstWrite -1}
		query_data_28_reload {Type I LastRead 0 FirstWrite -1}
		p_cast14 {Type I LastRead 0 FirstWrite -1}
		cmp_i_5 {Type I LastRead 0 FirstWrite -1}
		query_data_27_reload {Type I LastRead 0 FirstWrite -1}
		p_cast15 {Type I LastRead 0 FirstWrite -1}
		cmp_i_6 {Type I LastRead 0 FirstWrite -1}
		query_data_26_reload {Type I LastRead 0 FirstWrite -1}
		p_cast16 {Type I LastRead 0 FirstWrite -1}
		cmp_i_7 {Type I LastRead 0 FirstWrite -1}
		query_data_25_reload {Type I LastRead 0 FirstWrite -1}
		p_cast17 {Type I LastRead 0 FirstWrite -1}
		cmp_i_8 {Type I LastRead 0 FirstWrite -1}
		query_data_24_reload {Type I LastRead 0 FirstWrite -1}
		p_cast18 {Type I LastRead 0 FirstWrite -1}
		cmp_i_9 {Type I LastRead 0 FirstWrite -1}
		query_data_23_reload {Type I LastRead 0 FirstWrite -1}
		p_cast19 {Type I LastRead 0 FirstWrite -1}
		cmp_i_10 {Type I LastRead 0 FirstWrite -1}
		query_data_22_reload {Type I LastRead 0 FirstWrite -1}
		p_cast20 {Type I LastRead 0 FirstWrite -1}
		cmp_i_11 {Type I LastRead 0 FirstWrite -1}
		query_data_21_reload {Type I LastRead 0 FirstWrite -1}
		p_cast21 {Type I LastRead 0 FirstWrite -1}
		cmp_i_12 {Type I LastRead 0 FirstWrite -1}
		query_data_20_reload {Type I LastRead 0 FirstWrite -1}
		p_cast22 {Type I LastRead 0 FirstWrite -1}
		cmp_i_13 {Type I LastRead 0 FirstWrite -1}
		query_data_19_reload {Type I LastRead 0 FirstWrite -1}
		p_cast23 {Type I LastRead 0 FirstWrite -1}
		cmp_i_14 {Type I LastRead 0 FirstWrite -1}
		query_data_18_reload {Type I LastRead 0 FirstWrite -1}
		p_cast24 {Type I LastRead 0 FirstWrite -1}
		cmp_i_15 {Type I LastRead 0 FirstWrite -1}
		query_data_17_reload {Type I LastRead 0 FirstWrite -1}
		p_cast25 {Type I LastRead 0 FirstWrite -1}
		cmp_i_16 {Type I LastRead 0 FirstWrite -1}
		query_data_16_reload {Type I LastRead 0 FirstWrite -1}
		p_cast26 {Type I LastRead 0 FirstWrite -1}
		cmp_i_17 {Type I LastRead 0 FirstWrite -1}
		query_data_15_reload {Type I LastRead 0 FirstWrite -1}
		p_cast27 {Type I LastRead 0 FirstWrite -1}
		cmp_i_18 {Type I LastRead 0 FirstWrite -1}
		query_data_14_reload {Type I LastRead 0 FirstWrite -1}
		p_cast28 {Type I LastRead 0 FirstWrite -1}
		cmp_i_19 {Type I LastRead 0 FirstWrite -1}
		query_data_13_reload {Type I LastRead 0 FirstWrite -1}
		p_cast29 {Type I LastRead 0 FirstWrite -1}
		cmp_i_20 {Type I LastRead 0 FirstWrite -1}
		query_data_12_reload {Type I LastRead 0 FirstWrite -1}
		p_cast30 {Type I LastRead 0 FirstWrite -1}
		cmp_i_21 {Type I LastRead 0 FirstWrite -1}
		query_data_11_reload {Type I LastRead 0 FirstWrite -1}
		p_cast31 {Type I LastRead 0 FirstWrite -1}
		cmp_i_22 {Type I LastRead 0 FirstWrite -1}
		query_data_10_reload {Type I LastRead 0 FirstWrite -1}
		p_cast32 {Type I LastRead 0 FirstWrite -1}
		cmp_i_23 {Type I LastRead 0 FirstWrite -1}
		query_data_9_reload {Type I LastRead 0 FirstWrite -1}
		p_cast33 {Type I LastRead 0 FirstWrite -1}
		cmp_i_24 {Type I LastRead 0 FirstWrite -1}
		query_data_8_reload {Type I LastRead 0 FirstWrite -1}
		p_cast34 {Type I LastRead 0 FirstWrite -1}
		cmp_i_25 {Type I LastRead 0 FirstWrite -1}
		query_data_7_reload {Type I LastRead 0 FirstWrite -1}
		p_cast35 {Type I LastRead 0 FirstWrite -1}
		cmp_i_26 {Type I LastRead 0 FirstWrite -1}
		query_data_6_reload {Type I LastRead 0 FirstWrite -1}
		p_cast36 {Type I LastRead 0 FirstWrite -1}
		cmp_i_27 {Type I LastRead 0 FirstWrite -1}
		query_data_5_reload {Type I LastRead 0 FirstWrite -1}
		p_cast37 {Type I LastRead 0 FirstWrite -1}
		cmp_i_28 {Type I LastRead 0 FirstWrite -1}
		query_data_4_reload {Type I LastRead 0 FirstWrite -1}
		p_cast38 {Type I LastRead 0 FirstWrite -1}
		cmp_i_29 {Type I LastRead 0 FirstWrite -1}
		query_data_3_reload {Type I LastRead 0 FirstWrite -1}
		p_cast39 {Type I LastRead 0 FirstWrite -1}
		cmp_i_30 {Type I LastRead 0 FirstWrite -1}
		query_data_2_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln254 {Type I LastRead 0 FirstWrite -1}
		cmp_i_31 {Type I LastRead 0 FirstWrite -1}
		query_data_1_reload {Type I LastRead 0 FirstWrite -1}
		max_col_value_127_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_126_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_125_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_124_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_123_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_122_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_121_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_120_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_119_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_118_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_117_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_116_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_115_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_114_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_113_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_112_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_111_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_110_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_109_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_108_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_107_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_106_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_105_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_104_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_103_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_102_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_101_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_100_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_99_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_98_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_97_out {Type O LastRead -1 FirstWrite 7}
		max_col_value_96_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_95_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_94_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_93_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_92_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_91_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_90_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_89_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_88_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_87_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_86_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_85_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_84_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_83_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_82_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_81_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_80_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_79_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_78_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_77_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_76_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_75_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_74_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_73_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_72_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_71_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_70_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_69_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_68_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_67_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_66_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_65_out {Type O LastRead -1 FirstWrite 7}
		max_row_value_64_out {Type O LastRead -1 FirstWrite 7}
		max_score_95_out {Type O LastRead -1 FirstWrite 7}
		max_score_94_out {Type O LastRead -1 FirstWrite 7}
		max_score_93_out {Type O LastRead -1 FirstWrite 7}
		max_score_92_out {Type O LastRead -1 FirstWrite 7}
		max_score_91_out {Type O LastRead -1 FirstWrite 7}
		max_score_90_out {Type O LastRead -1 FirstWrite 7}
		max_score_89_out {Type O LastRead -1 FirstWrite 7}
		max_score_88_out {Type O LastRead -1 FirstWrite 7}
		max_score_87_out {Type O LastRead -1 FirstWrite 7}
		max_score_86_out {Type O LastRead -1 FirstWrite 7}
		max_score_85_out {Type O LastRead -1 FirstWrite 7}
		max_score_84_out {Type O LastRead -1 FirstWrite 7}
		max_score_83_out {Type O LastRead -1 FirstWrite 7}
		max_score_82_out {Type O LastRead -1 FirstWrite 7}
		max_score_81_out {Type O LastRead -1 FirstWrite 7}
		max_score_80_out {Type O LastRead -1 FirstWrite 7}
		max_score_79_out {Type O LastRead -1 FirstWrite 7}
		max_score_78_out {Type O LastRead -1 FirstWrite 7}
		max_score_77_out {Type O LastRead -1 FirstWrite 7}
		max_score_76_out {Type O LastRead -1 FirstWrite 7}
		max_score_75_out {Type O LastRead -1 FirstWrite 7}
		max_score_74_out {Type O LastRead -1 FirstWrite 7}
		max_score_73_out {Type O LastRead -1 FirstWrite 7}
		max_score_72_out {Type O LastRead -1 FirstWrite 7}
		max_score_71_out {Type O LastRead -1 FirstWrite 7}
		max_score_70_out {Type O LastRead -1 FirstWrite 7}
		max_score_69_out {Type O LastRead -1 FirstWrite 7}
		max_score_68_out {Type O LastRead -1 FirstWrite 7}
		max_score_67_out {Type O LastRead -1 FirstWrite 7}
		max_score_66_out {Type O LastRead -1 FirstWrite 7}
		max_score_65_out {Type O LastRead -1 FirstWrite 7}
		max_score_64_out {Type O LastRead -1 FirstWrite 7}
		p_out {Type IO LastRead 7 FirstWrite 7}
		p_out1 {Type IO LastRead 7 FirstWrite 7}
		p_out2 {Type IO LastRead 7 FirstWrite 7}
		p_out3 {Type IO LastRead 7 FirstWrite 7}
		p_out4 {Type IO LastRead 7 FirstWrite 7}
		p_out5 {Type IO LastRead 7 FirstWrite 7}
		p_out6 {Type IO LastRead 7 FirstWrite 7}
		p_out7 {Type IO LastRead 7 FirstWrite 7}
		p_out8 {Type IO LastRead 7 FirstWrite 7}
		p_out9 {Type IO LastRead 7 FirstWrite 7}
		p_out10 {Type IO LastRead 7 FirstWrite 7}
		p_out11 {Type IO LastRead 7 FirstWrite 7}
		p_out12 {Type IO LastRead 7 FirstWrite 7}
		p_out13 {Type IO LastRead 7 FirstWrite 7}
		p_out14 {Type IO LastRead 7 FirstWrite 7}
		p_out15 {Type IO LastRead 7 FirstWrite 7}
		p_out16 {Type IO LastRead 7 FirstWrite 7}
		p_out17 {Type IO LastRead 7 FirstWrite 7}
		p_out18 {Type IO LastRead 7 FirstWrite 7}
		p_out19 {Type IO LastRead 7 FirstWrite 7}
		p_out20 {Type IO LastRead 7 FirstWrite 7}
		p_out21 {Type IO LastRead 7 FirstWrite 7}
		p_out22 {Type IO LastRead 7 FirstWrite 7}
		p_out23 {Type IO LastRead 7 FirstWrite 7}
		p_out24 {Type IO LastRead 7 FirstWrite 7}
		p_out25 {Type IO LastRead 7 FirstWrite 7}
		p_out26 {Type IO LastRead 7 FirstWrite 7}
		p_out27 {Type IO LastRead 7 FirstWrite 7}
		p_out28 {Type IO LastRead 7 FirstWrite 7}
		p_out29 {Type IO LastRead 7 FirstWrite 7}
		p_out30 {Type IO LastRead 7 FirstWrite 7}
		p_out31 {Type IO LastRead 7 FirstWrite 7}
		p_out32 {Type IO LastRead 7 FirstWrite 7}
		p_out33 {Type IO LastRead 7 FirstWrite 7}
		p_out34 {Type IO LastRead 7 FirstWrite 7}
		p_out35 {Type IO LastRead 7 FirstWrite 7}
		p_out36 {Type IO LastRead 7 FirstWrite 7}
		p_out37 {Type IO LastRead 7 FirstWrite 7}
		p_out38 {Type IO LastRead 7 FirstWrite 7}
		p_out39 {Type IO LastRead 6 FirstWrite 6}
		p_out40 {Type IO LastRead 6 FirstWrite 6}
		p_out41 {Type IO LastRead 6 FirstWrite 6}
		p_out42 {Type IO LastRead 6 FirstWrite 6}
		p_out43 {Type IO LastRead 6 FirstWrite 6}
		p_out44 {Type IO LastRead 6 FirstWrite 6}
		p_out45 {Type IO LastRead 5 FirstWrite 5}
		p_out46 {Type IO LastRead 5 FirstWrite 5}
		p_out47 {Type IO LastRead 5 FirstWrite 5}
		p_out48 {Type IO LastRead 5 FirstWrite 5}
		p_out49 {Type IO LastRead 5 FirstWrite 5}
		p_out50 {Type IO LastRead 5 FirstWrite 5}
		p_out51 {Type IO LastRead 4 FirstWrite 4}
		p_out52 {Type IO LastRead 4 FirstWrite 4}
		p_out53 {Type IO LastRead 4 FirstWrite 4}
		p_out54 {Type IO LastRead 4 FirstWrite 4}
		p_out55 {Type IO LastRead 3 FirstWrite 3}
		p_out56 {Type IO LastRead 3 FirstWrite 3}
		p_out57 {Type IO LastRead 3 FirstWrite 3}
		p_out58 {Type IO LastRead 3 FirstWrite 3}
		p_out59 {Type IO LastRead 3 FirstWrite 3}
		p_out60 {Type IO LastRead 3 FirstWrite 3}
		p_out61 {Type IO LastRead 3 FirstWrite 3}
		p_out62 {Type IO LastRead 3 FirstWrite 3}
		temp_1_out {Type IO LastRead 2 FirstWrite 2}}
	seq_align_Pipeline_VITIS_LOOP_310_11 {
		max {Type I LastRead 0 FirstWrite -1}
		index {Type I LastRead 0 FirstWrite -1}
		max_score_64_reload {Type I LastRead 0 FirstWrite -1}
		max_score_65_reload {Type I LastRead 0 FirstWrite -1}
		max_score_66_reload {Type I LastRead 0 FirstWrite -1}
		max_score_67_reload {Type I LastRead 0 FirstWrite -1}
		max_score_68_reload {Type I LastRead 0 FirstWrite -1}
		max_score_69_reload {Type I LastRead 0 FirstWrite -1}
		max_score_70_reload {Type I LastRead 0 FirstWrite -1}
		max_score_71_reload {Type I LastRead 0 FirstWrite -1}
		max_score_72_reload {Type I LastRead 0 FirstWrite -1}
		max_score_73_reload {Type I LastRead 0 FirstWrite -1}
		max_score_74_reload {Type I LastRead 0 FirstWrite -1}
		max_score_75_reload {Type I LastRead 0 FirstWrite -1}
		max_score_76_reload {Type I LastRead 0 FirstWrite -1}
		max_score_77_reload {Type I LastRead 0 FirstWrite -1}
		max_score_78_reload {Type I LastRead 0 FirstWrite -1}
		max_score_79_reload {Type I LastRead 0 FirstWrite -1}
		max_score_80_reload {Type I LastRead 0 FirstWrite -1}
		max_score_81_reload {Type I LastRead 0 FirstWrite -1}
		max_score_82_reload {Type I LastRead 0 FirstWrite -1}
		max_score_83_reload {Type I LastRead 0 FirstWrite -1}
		max_score_84_reload {Type I LastRead 0 FirstWrite -1}
		max_score_85_reload {Type I LastRead 0 FirstWrite -1}
		max_score_86_reload {Type I LastRead 0 FirstWrite -1}
		max_score_87_reload {Type I LastRead 0 FirstWrite -1}
		max_score_88_reload {Type I LastRead 0 FirstWrite -1}
		max_score_89_reload {Type I LastRead 0 FirstWrite -1}
		max_score_90_reload {Type I LastRead 0 FirstWrite -1}
		max_score_91_reload {Type I LastRead 0 FirstWrite -1}
		max_score_92_reload {Type I LastRead 0 FirstWrite -1}
		max_score_93_reload {Type I LastRead 0 FirstWrite -1}
		max_score_94_reload {Type I LastRead 0 FirstWrite -1}
		max_score_95_reload {Type I LastRead 0 FirstWrite -1}
		max_1_out {Type O LastRead -1 FirstWrite 1}
		index_1_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	query_string_comp_0 { axis {  { query_string_comp_0_TDATA in_data 0 8 }  { query_string_comp_0_TVALID in_vld 0 1 }  { query_string_comp_0_TREADY in_acc 1 1 } } }
	reference_string_comp_0 { axis {  { reference_string_comp_0_TDATA in_data 0 8 }  { reference_string_comp_0_TVALID in_vld 0 1 }  { reference_string_comp_0_TREADY in_acc 1 1 } } }
}
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
set C_modelType { int 32 }
set C_modelArgList {
	{ query_string_comp_0 int 8 regular {axi_s 0 volatile  { query_string_comp_0 Data } }  }
	{ reference_string_comp_0 int 8 regular {axi_s 0 volatile  { reference_string_comp_0 Data } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "query_string_comp_0", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "reference_string_comp_0", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ query_string_comp_0_TDATA sc_in sc_lv 8 signal 0 } 
	{ query_string_comp_0_TVALID sc_in sc_logic 1 invld 0 } 
	{ query_string_comp_0_TREADY sc_out sc_logic 1 inacc 0 } 
	{ reference_string_comp_0_TDATA sc_in sc_lv 8 signal 1 } 
	{ reference_string_comp_0_TVALID sc_in sc_logic 1 invld 1 } 
	{ reference_string_comp_0_TREADY sc_out sc_logic 1 inacc 1 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "query_string_comp_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "query_string_comp_0", "role": "TDATA" }} , 
 	{ "name": "query_string_comp_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "query_string_comp_0", "role": "TVALID" }} , 
 	{ "name": "query_string_comp_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "query_string_comp_0", "role": "TREADY" }} , 
 	{ "name": "reference_string_comp_0_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "reference_string_comp_0", "role": "TDATA" }} , 
 	{ "name": "reference_string_comp_0_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "reference_string_comp_0", "role": "TVALID" }} , 
 	{ "name": "reference_string_comp_0_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "reference_string_comp_0", "role": "TREADY" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "69", "71", "73", "75", "77", "79", "81", "84", "118", "121", "122"],
		"CDFG" : "seq_align",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "query_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "79", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_538_11_fu_2300", "Port" : "query_string_comp_0", "Inst_start_state" : "6", "Inst_end_state" : "7"}]},
			{"Name" : "reference_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "77", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_508_8_fu_2262", "Port" : "reference_string_comp_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}],
		"Loop" : [
			{"Name" : "kernel", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "13", "FirstState" : "ap_ST_fsm_state6", "LastState" : ["ap_ST_fsm_state12"], "QuitState" : ["ap_ST_fsm_state6"], "PreState" : ["ap_ST_fsm_state5"], "PostState" : ["ap_ST_fsm_state13"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_16_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_17_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_18_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_19_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_20_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_21_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_22_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_23_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_24_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_25_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_26_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_27_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_28_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_29_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_30_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.traceback_V_31_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.last_pe_score_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.last_pe_scoreIx_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_1_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_2_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_3_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_4_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_5_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_6_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_7_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_8_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_9_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_10_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_11_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_12_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_13_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_14_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_15_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_16_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_17_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_18_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_19_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_20_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_21_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_22_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_23_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_24_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_25_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_26_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_27_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_28_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_29_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_30_U", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_31_U", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_460_1_fu_1952", "Parent" : "0", "Child" : ["68"],
		"CDFG" : "seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_460_1",
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
			{"Name" : "dp_mem_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "local_dpmem_loop_VITIS_LOOP_460_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_460_1_fu_1952.flow_control_loop_pipe_sequential_init_U", "Parent" : "67"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_469_2_fu_2019", "Parent" : "0", "Child" : ["70"],
		"CDFG" : "seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_469_2",
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
			{"Name" : "Ix_mem_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "local_Ixmem_loop_VITIS_LOOP_469_2", "PipelineType" : "NotSupport"}]},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_469_2_fu_2019.flow_control_loop_pipe_sequential_init_U", "Parent" : "69"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_476_3_fu_2086", "Parent" : "0", "Child" : ["72"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_476_3",
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
			{"Name" : "last_pe_score", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "last_pe_scoreIx", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_476_3", "PipelineType" : "NotSupport"}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_476_3_fu_2086.flow_control_loop_pipe_sequential_init_U", "Parent" : "71"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_487_5_fu_2094", "Parent" : "0", "Child" : ["74"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_487_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max_col_value_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_487_5", "PipelineType" : "NotSupport"}]},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_487_5_fu_2094.flow_control_loop_pipe_sequential_init_U", "Parent" : "73"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_496_6_VITIS_LOOP_498_7_fu_2194", "Parent" : "0", "Child" : ["76"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_496_6_VITIS_LOOP_498_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65538", "EstimateLatencyMax" : "65538",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "traceback_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_31", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_496_6_VITIS_LOOP_498_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_496_6_VITIS_LOOP_498_7_fu_2194.flow_control_loop_pipe_sequential_init_U", "Parent" : "75"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_508_8_fu_2262", "Parent" : "0", "Child" : ["78"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_508_8",
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
			{"Name" : "VITIS_LOOP_508_8", "PipelineType" : "NotSupport"}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_508_8_fu_2262.flow_control_loop_pipe_sequential_init_U", "Parent" : "77"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_538_11_fu_2300", "Parent" : "0", "Child" : ["80"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_538_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "empty_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "empty", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_string_comp_0", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "query_string_comp_0_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "query_data_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_data_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_phi_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_538_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_538_11_fu_2300.flow_control_loop_pipe_sequential_init_U", "Parent" : "79"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_loop_tb_fu_2369", "Parent" : "0", "Child" : ["82", "83"],
		"CDFG" : "seq_align_Pipeline_loop_tb",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "ultimate_col_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "ultimate_row_value", "Type" : "None", "Direction" : "I"},
			{"Name" : "traceback_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_V_31", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop_tb", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_loop_tb_fu_2369.mux_325_2_1_1_U907", "Parent" : "81"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_loop_tb_fu_2369.flow_control_loop_pipe_sequential_init_U", "Parent" : "81"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407", "Parent" : "0", "Child" : ["85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117"],
		"CDFG" : "seq_align_Pipeline_kernel1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "292", "EstimateLatencyMax" : "292",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max_col_value_95", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_94", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_93", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_92", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_91", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_90", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_89", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_88", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_87", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_86", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_85", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_84", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_83", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_82", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_81", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_80", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_79", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_78", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_77", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_76", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_75", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_74", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_73", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_72", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_71", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_70", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_69", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_68", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_67", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_66", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_65", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_64", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row_value_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_63", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_62", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_61", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_60", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_59", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_58", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_57", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_56", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_55", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_54", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_53", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_52", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_51", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_50", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_49", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_48", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_47", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_46", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_45", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln580", "Type" : "None", "Direction" : "I"},
			{"Name" : "traceback_V_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "traceback_V_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "local_reference", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "local_reference_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "last_pe_score", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "last_pe_scoreIx", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "p_cast9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_phi_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i54", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast10", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast11", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast12", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast13", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast14", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast15", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast16", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast17", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast18", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast19", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast20", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast21", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast22", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast23", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast24", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast25", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast26", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast27", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast28", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast29", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast30", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast31", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast32", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast33", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast34", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast35", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast36", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast37", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast38", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast39", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln547", "Type" : "None", "Direction" : "I"},
			{"Name" : "cmp_i_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_data_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col_value_127_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_126_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_125_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_124_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_123_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_122_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_121_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_120_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_119_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_118_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_117_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_116_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_115_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_114_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_113_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_112_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_111_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_110_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_109_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_108_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_107_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_106_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_105_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_104_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_103_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_102_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_101_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_100_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_99_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_98_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_97_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_col_value_96_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_94_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_92_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_88_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_85_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_84_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_83_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_66_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_65_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_row_value_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_94_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_92_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_88_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_85_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_84_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_83_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_66_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_65_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_score_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out2", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out3", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out4", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out5", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out6", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out7", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out8", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out9", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out10", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out11", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out12", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out13", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out14", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out15", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out16", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out17", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out18", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out19", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out20", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out21", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out22", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out23", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out24", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out25", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out26", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out27", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out28", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out29", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out30", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out31", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out32", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out33", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out34", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out35", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out36", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out37", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out38", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out39", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out40", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out41", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out42", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out43", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out44", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out45", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out46", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out47", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out48", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out49", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out50", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out51", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out52", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out53", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out54", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out55", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out56", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out57", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out58", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out59", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out60", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out61", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out62", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out63", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out64", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out65", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out66", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out67", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out68", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out69", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out70", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out71", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out72", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out73", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out74", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out75", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out76", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out77", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out78", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out79", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out80", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out81", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out82", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out83", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out84", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out85", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out86", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out87", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out88", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out89", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out90", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out91", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out92", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out93", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out94", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out95", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out96", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out97", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out98", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out99", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out100", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out101", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out102", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out103", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out104", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out105", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out106", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out107", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out108", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out109", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out110", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out111", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out112", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out113", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out114", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out115", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out116", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out117", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out118", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out119", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out120", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out121", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out122", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out123", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out124", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "p_out125", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "temp_1_out", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "kernel1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U354", "Parent" : "84"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U355", "Parent" : "84"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U356", "Parent" : "84"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U357", "Parent" : "84"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U358", "Parent" : "84"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U359", "Parent" : "84"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U360", "Parent" : "84"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U361", "Parent" : "84"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U362", "Parent" : "84"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U363", "Parent" : "84"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U364", "Parent" : "84"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U365", "Parent" : "84"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U366", "Parent" : "84"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U367", "Parent" : "84"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U368", "Parent" : "84"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U369", "Parent" : "84"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U370", "Parent" : "84"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U371", "Parent" : "84"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U372", "Parent" : "84"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U373", "Parent" : "84"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U374", "Parent" : "84"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U375", "Parent" : "84"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U376", "Parent" : "84"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U377", "Parent" : "84"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U378", "Parent" : "84"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U379", "Parent" : "84"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U380", "Parent" : "84"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U381", "Parent" : "84"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U382", "Parent" : "84"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U383", "Parent" : "84"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U384", "Parent" : "84"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.mux_325_8_1_1_U385", "Parent" : "84"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel1_fu_2407.flow_control_loop_pipe_sequential_init_U", "Parent" : "84"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_609_12_fu_2893", "Parent" : "0", "Child" : ["119", "120"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_609_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max", "Type" : "None", "Direction" : "I"},
			{"Name" : "index", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_64_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_65_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_66_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_67_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_68_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_69_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_70_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_71_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_72_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_73_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_74_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_75_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_76_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_77_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_78_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_79_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_80_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_81_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_82_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_83_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_84_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_85_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_86_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_87_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_88_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_89_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_90_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_91_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_92_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_93_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_94_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_score_95_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "index_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_609_12", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_609_12_fu_2893.mux_326_32_1_1_U869", "Parent" : "118"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_609_12_fu_2893.flow_control_loop_pipe_sequential_init_U", "Parent" : "118"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3232_32_1_1_U943", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_3232_32_1_1_U944", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	seq_align {
		query_string_comp_0 {Type I LastRead 1 FirstWrite -1}
		reference_string_comp_0 {Type I LastRead 0 FirstWrite -1}}
	seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_460_1 {
		dp_mem_62_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_61_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_60_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_59_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_58_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_57_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_56_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_55_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_54_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_53_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_52_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_51_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_50_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_49_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_48_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_47_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_46_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_45_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_44_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_43_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_42_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_41_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_40_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_39_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_38_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_37_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_36_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_35_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_34_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_33_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_32_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_31_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_30_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_29_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_28_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_27_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_26_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_25_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_24_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_23_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_22_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_21_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_20_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_19_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_18_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_17_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_16_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_15_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_14_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_13_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_12_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_11_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_10_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_9_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_8_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_7_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_6_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_5_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_4_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_3_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_2_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_1_out {Type O LastRead -1 FirstWrite 0}
		dp_mem_out {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_469_2 {
		Ix_mem_30_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_29_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_28_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_27_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_26_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_25_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_24_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_23_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_22_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_21_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_20_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_19_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_18_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_17_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_16_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_15_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_14_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_13_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_12_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_11_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_10_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_9_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_8_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_7_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_6_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_5_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_4_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_3_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_2_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_1_out {Type O LastRead -1 FirstWrite 0}
		Ix_mem_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_31_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_30_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_29_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_28_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_27_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_26_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_25_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_24_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_23_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_22_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_21_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_20_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_19_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_18_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_17_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_16_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_15_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_14_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_13_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_12_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_11_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_10_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_9_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_8_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_7_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_6_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_5_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_4_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_3_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_2_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_1_out {Type O LastRead -1 FirstWrite 0}
		Iy_mem_out {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_476_3 {
		last_pe_score {Type O LastRead -1 FirstWrite 0}
		last_pe_scoreIx {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_487_5 {
		max_col_value_31_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_30_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_29_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_28_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_27_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_26_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_25_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_24_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_23_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_22_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_21_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_20_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_19_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_18_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_17_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_16_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_15_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_14_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_13_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_12_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_11_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_10_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_9_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_8_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_7_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_6_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_5_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_4_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_3_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_2_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_1_out {Type O LastRead -1 FirstWrite 0}
		max_col_value_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_31_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_30_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_29_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_28_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_27_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_26_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_25_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_24_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_23_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_22_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_21_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_20_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_19_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_18_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_17_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_16_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_15_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_14_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_13_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_12_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_11_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_10_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_9_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_8_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_7_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_6_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_5_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_4_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_3_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_2_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_1_out {Type O LastRead -1 FirstWrite 0}
		max_row_value_out {Type O LastRead -1 FirstWrite 0}
		max_score_31_out {Type O LastRead -1 FirstWrite 0}
		max_score_30_out {Type O LastRead -1 FirstWrite 0}
		max_score_29_out {Type O LastRead -1 FirstWrite 0}
		max_score_28_out {Type O LastRead -1 FirstWrite 0}
		max_score_27_out {Type O LastRead -1 FirstWrite 0}
		max_score_26_out {Type O LastRead -1 FirstWrite 0}
		max_score_25_out {Type O LastRead -1 FirstWrite 0}
		max_score_24_out {Type O LastRead -1 FirstWrite 0}
		max_score_23_out {Type O LastRead -1 FirstWrite 0}
		max_score_22_out {Type O LastRead -1 FirstWrite 0}
		max_score_21_out {Type O LastRead -1 FirstWrite 0}
		max_score_20_out {Type O LastRead -1 FirstWrite 0}
		max_score_19_out {Type O LastRead -1 FirstWrite 0}
		max_score_18_out {Type O LastRead -1 FirstWrite 0}
		max_score_17_out {Type O LastRead -1 FirstWrite 0}
		max_score_16_out {Type O LastRead -1 FirstWrite 0}
		max_score_15_out {Type O LastRead -1 FirstWrite 0}
		max_score_14_out {Type O LastRead -1 FirstWrite 0}
		max_score_13_out {Type O LastRead -1 FirstWrite 0}
		max_score_12_out {Type O LastRead -1 FirstWrite 0}
		max_score_11_out {Type O LastRead -1 FirstWrite 0}
		max_score_10_out {Type O LastRead -1 FirstWrite 0}
		max_score_9_out {Type O LastRead -1 FirstWrite 0}
		max_score_8_out {Type O LastRead -1 FirstWrite 0}
		max_score_7_out {Type O LastRead -1 FirstWrite 0}
		max_score_6_out {Type O LastRead -1 FirstWrite 0}
		max_score_5_out {Type O LastRead -1 FirstWrite 0}
		max_score_4_out {Type O LastRead -1 FirstWrite 0}
		max_score_3_out {Type O LastRead -1 FirstWrite 0}
		max_score_2_out {Type O LastRead -1 FirstWrite 0}
		max_score_1_out {Type O LastRead -1 FirstWrite 0}
		max_score_out {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_496_6_VITIS_LOOP_498_7 {
		traceback_V {Type O LastRead -1 FirstWrite 2}
		traceback_V_1 {Type O LastRead -1 FirstWrite 2}
		traceback_V_2 {Type O LastRead -1 FirstWrite 2}
		traceback_V_3 {Type O LastRead -1 FirstWrite 2}
		traceback_V_4 {Type O LastRead -1 FirstWrite 2}
		traceback_V_5 {Type O LastRead -1 FirstWrite 2}
		traceback_V_6 {Type O LastRead -1 FirstWrite 2}
		traceback_V_7 {Type O LastRead -1 FirstWrite 2}
		traceback_V_8 {Type O LastRead -1 FirstWrite 2}
		traceback_V_9 {Type O LastRead -1 FirstWrite 2}
		traceback_V_10 {Type O LastRead -1 FirstWrite 2}
		traceback_V_11 {Type O LastRead -1 FirstWrite 2}
		traceback_V_12 {Type O LastRead -1 FirstWrite 2}
		traceback_V_13 {Type O LastRead -1 FirstWrite 2}
		traceback_V_14 {Type O LastRead -1 FirstWrite 2}
		traceback_V_15 {Type O LastRead -1 FirstWrite 2}
		traceback_V_16 {Type O LastRead -1 FirstWrite 2}
		traceback_V_17 {Type O LastRead -1 FirstWrite 2}
		traceback_V_18 {Type O LastRead -1 FirstWrite 2}
		traceback_V_19 {Type O LastRead -1 FirstWrite 2}
		traceback_V_20 {Type O LastRead -1 FirstWrite 2}
		traceback_V_21 {Type O LastRead -1 FirstWrite 2}
		traceback_V_22 {Type O LastRead -1 FirstWrite 2}
		traceback_V_23 {Type O LastRead -1 FirstWrite 2}
		traceback_V_24 {Type O LastRead -1 FirstWrite 2}
		traceback_V_25 {Type O LastRead -1 FirstWrite 2}
		traceback_V_26 {Type O LastRead -1 FirstWrite 2}
		traceback_V_27 {Type O LastRead -1 FirstWrite 2}
		traceback_V_28 {Type O LastRead -1 FirstWrite 2}
		traceback_V_29 {Type O LastRead -1 FirstWrite 2}
		traceback_V_30 {Type O LastRead -1 FirstWrite 2}
		traceback_V_31 {Type O LastRead -1 FirstWrite 2}}
	seq_align_Pipeline_VITIS_LOOP_508_8 {
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
		local_reference_31 {Type O LastRead -1 FirstWrite 0}}
	seq_align_Pipeline_VITIS_LOOP_538_11 {
		empty_23 {Type I LastRead 0 FirstWrite -1}
		empty_24 {Type I LastRead 0 FirstWrite -1}
		empty_25 {Type I LastRead 0 FirstWrite -1}
		empty_26 {Type I LastRead 0 FirstWrite -1}
		empty_27 {Type I LastRead 0 FirstWrite -1}
		empty_28 {Type I LastRead 0 FirstWrite -1}
		empty_29 {Type I LastRead 0 FirstWrite -1}
		empty_30 {Type I LastRead 0 FirstWrite -1}
		empty_31 {Type I LastRead 0 FirstWrite -1}
		empty_32 {Type I LastRead 0 FirstWrite -1}
		empty_33 {Type I LastRead 0 FirstWrite -1}
		empty_34 {Type I LastRead 0 FirstWrite -1}
		empty_35 {Type I LastRead 0 FirstWrite -1}
		empty_36 {Type I LastRead 0 FirstWrite -1}
		empty_37 {Type I LastRead 0 FirstWrite -1}
		empty_38 {Type I LastRead 0 FirstWrite -1}
		empty_39 {Type I LastRead 0 FirstWrite -1}
		empty_40 {Type I LastRead 0 FirstWrite -1}
		empty_41 {Type I LastRead 0 FirstWrite -1}
		empty_42 {Type I LastRead 0 FirstWrite -1}
		empty_43 {Type I LastRead 0 FirstWrite -1}
		empty_44 {Type I LastRead 0 FirstWrite -1}
		empty_45 {Type I LastRead 0 FirstWrite -1}
		empty_46 {Type I LastRead 0 FirstWrite -1}
		empty_47 {Type I LastRead 0 FirstWrite -1}
		empty_48 {Type I LastRead 0 FirstWrite -1}
		empty_49 {Type I LastRead 0 FirstWrite -1}
		empty_50 {Type I LastRead 0 FirstWrite -1}
		empty_51 {Type I LastRead 0 FirstWrite -1}
		empty_52 {Type I LastRead 0 FirstWrite -1}
		empty {Type I LastRead 0 FirstWrite -1}
		query_string_comp_0 {Type I LastRead 1 FirstWrite -1}
		query_data_1_out {Type O LastRead -1 FirstWrite 1}
		query_data_2_out {Type O LastRead -1 FirstWrite 1}
		query_data_3_out {Type O LastRead -1 FirstWrite 1}
		query_data_4_out {Type O LastRead -1 FirstWrite 1}
		query_data_5_out {Type O LastRead -1 FirstWrite 1}
		query_data_6_out {Type O LastRead -1 FirstWrite 1}
		query_data_7_out {Type O LastRead -1 FirstWrite 1}
		query_data_8_out {Type O LastRead -1 FirstWrite 1}
		query_data_9_out {Type O LastRead -1 FirstWrite 1}
		query_data_10_out {Type O LastRead -1 FirstWrite 1}
		query_data_11_out {Type O LastRead -1 FirstWrite 1}
		query_data_12_out {Type O LastRead -1 FirstWrite 1}
		query_data_13_out {Type O LastRead -1 FirstWrite 1}
		query_data_14_out {Type O LastRead -1 FirstWrite 1}
		query_data_15_out {Type O LastRead -1 FirstWrite 1}
		query_data_16_out {Type O LastRead -1 FirstWrite 1}
		query_data_17_out {Type O LastRead -1 FirstWrite 1}
		query_data_18_out {Type O LastRead -1 FirstWrite 1}
		query_data_19_out {Type O LastRead -1 FirstWrite 1}
		query_data_20_out {Type O LastRead -1 FirstWrite 1}
		query_data_21_out {Type O LastRead -1 FirstWrite 1}
		query_data_22_out {Type O LastRead -1 FirstWrite 1}
		query_data_23_out {Type O LastRead -1 FirstWrite 1}
		query_data_24_out {Type O LastRead -1 FirstWrite 1}
		query_data_25_out {Type O LastRead -1 FirstWrite 1}
		query_data_26_out {Type O LastRead -1 FirstWrite 1}
		query_data_27_out {Type O LastRead -1 FirstWrite 1}
		query_data_28_out {Type O LastRead -1 FirstWrite 1}
		query_data_29_out {Type O LastRead -1 FirstWrite 1}
		query_data_30_out {Type O LastRead -1 FirstWrite 1}
		query_data_out {Type O LastRead -1 FirstWrite 1}
		p_phi_out {Type O LastRead -1 FirstWrite 1}}
	seq_align_Pipeline_loop_tb {
		ultimate_col_value {Type I LastRead 0 FirstWrite -1}
		ultimate_row_value {Type I LastRead 0 FirstWrite -1}
		traceback_V {Type I LastRead 1 FirstWrite -1}
		traceback_V_1 {Type I LastRead 1 FirstWrite -1}
		traceback_V_2 {Type I LastRead 1 FirstWrite -1}
		traceback_V_3 {Type I LastRead 1 FirstWrite -1}
		traceback_V_4 {Type I LastRead 1 FirstWrite -1}
		traceback_V_5 {Type I LastRead 1 FirstWrite -1}
		traceback_V_6 {Type I LastRead 1 FirstWrite -1}
		traceback_V_7 {Type I LastRead 1 FirstWrite -1}
		traceback_V_8 {Type I LastRead 1 FirstWrite -1}
		traceback_V_9 {Type I LastRead 1 FirstWrite -1}
		traceback_V_10 {Type I LastRead 1 FirstWrite -1}
		traceback_V_11 {Type I LastRead 1 FirstWrite -1}
		traceback_V_12 {Type I LastRead 1 FirstWrite -1}
		traceback_V_13 {Type I LastRead 1 FirstWrite -1}
		traceback_V_14 {Type I LastRead 1 FirstWrite -1}
		traceback_V_15 {Type I LastRead 1 FirstWrite -1}
		traceback_V_16 {Type I LastRead 1 FirstWrite -1}
		traceback_V_17 {Type I LastRead 1 FirstWrite -1}
		traceback_V_18 {Type I LastRead 1 FirstWrite -1}
		traceback_V_19 {Type I LastRead 1 FirstWrite -1}
		traceback_V_20 {Type I LastRead 1 FirstWrite -1}
		traceback_V_21 {Type I LastRead 1 FirstWrite -1}
		traceback_V_22 {Type I LastRead 1 FirstWrite -1}
		traceback_V_23 {Type I LastRead 1 FirstWrite -1}
		traceback_V_24 {Type I LastRead 1 FirstWrite -1}
		traceback_V_25 {Type I LastRead 1 FirstWrite -1}
		traceback_V_26 {Type I LastRead 1 FirstWrite -1}
		traceback_V_27 {Type I LastRead 1 FirstWrite -1}
		traceback_V_28 {Type I LastRead 1 FirstWrite -1}
		traceback_V_29 {Type I LastRead 1 FirstWrite -1}
		traceback_V_30 {Type I LastRead 1 FirstWrite -1}
		traceback_V_31 {Type I LastRead 1 FirstWrite -1}}
	seq_align_Pipeline_kernel1 {
		max_col_value_95 {Type I LastRead 0 FirstWrite -1}
		max_col_value_94 {Type I LastRead 0 FirstWrite -1}
		max_col_value_93 {Type I LastRead 0 FirstWrite -1}
		max_col_value_92 {Type I LastRead 0 FirstWrite -1}
		max_col_value_91 {Type I LastRead 0 FirstWrite -1}
		max_col_value_90 {Type I LastRead 0 FirstWrite -1}
		max_col_value_89 {Type I LastRead 0 FirstWrite -1}
		max_col_value_88 {Type I LastRead 0 FirstWrite -1}
		max_col_value_87 {Type I LastRead 0 FirstWrite -1}
		max_col_value_86 {Type I LastRead 0 FirstWrite -1}
		max_col_value_85 {Type I LastRead 0 FirstWrite -1}
		max_col_value_84 {Type I LastRead 0 FirstWrite -1}
		max_col_value_83 {Type I LastRead 0 FirstWrite -1}
		max_col_value_82 {Type I LastRead 0 FirstWrite -1}
		max_col_value_81 {Type I LastRead 0 FirstWrite -1}
		max_col_value_80 {Type I LastRead 0 FirstWrite -1}
		max_col_value_79 {Type I LastRead 0 FirstWrite -1}
		max_col_value_78 {Type I LastRead 0 FirstWrite -1}
		max_col_value_77 {Type I LastRead 0 FirstWrite -1}
		max_col_value_76 {Type I LastRead 0 FirstWrite -1}
		max_col_value_75 {Type I LastRead 0 FirstWrite -1}
		max_col_value_74 {Type I LastRead 0 FirstWrite -1}
		max_col_value_73 {Type I LastRead 0 FirstWrite -1}
		max_col_value_72 {Type I LastRead 0 FirstWrite -1}
		max_col_value_71 {Type I LastRead 0 FirstWrite -1}
		max_col_value_70 {Type I LastRead 0 FirstWrite -1}
		max_col_value_69 {Type I LastRead 0 FirstWrite -1}
		max_col_value_68 {Type I LastRead 0 FirstWrite -1}
		max_col_value_67 {Type I LastRead 0 FirstWrite -1}
		max_col_value_66 {Type I LastRead 0 FirstWrite -1}
		max_col_value_65 {Type I LastRead 0 FirstWrite -1}
		max_col_value_64 {Type I LastRead 0 FirstWrite -1}
		max_row_value_63 {Type I LastRead 0 FirstWrite -1}
		max_row_value_62 {Type I LastRead 0 FirstWrite -1}
		max_row_value_61 {Type I LastRead 0 FirstWrite -1}
		max_row_value_60 {Type I LastRead 0 FirstWrite -1}
		max_row_value_59 {Type I LastRead 0 FirstWrite -1}
		max_row_value_58 {Type I LastRead 0 FirstWrite -1}
		max_row_value_57 {Type I LastRead 0 FirstWrite -1}
		max_row_value_56 {Type I LastRead 0 FirstWrite -1}
		max_row_value_55 {Type I LastRead 0 FirstWrite -1}
		max_row_value_54 {Type I LastRead 0 FirstWrite -1}
		max_row_value_53 {Type I LastRead 0 FirstWrite -1}
		max_row_value_52 {Type I LastRead 0 FirstWrite -1}
		max_row_value_51 {Type I LastRead 0 FirstWrite -1}
		max_row_value_50 {Type I LastRead 0 FirstWrite -1}
		max_row_value_49 {Type I LastRead 0 FirstWrite -1}
		max_row_value_48 {Type I LastRead 0 FirstWrite -1}
		max_row_value_47 {Type I LastRead 0 FirstWrite -1}
		max_row_value_46 {Type I LastRead 0 FirstWrite -1}
		max_row_value_45 {Type I LastRead 0 FirstWrite -1}
		max_row_value_44 {Type I LastRead 0 FirstWrite -1}
		max_row_value_43 {Type I LastRead 0 FirstWrite -1}
		max_row_value_42 {Type I LastRead 0 FirstWrite -1}
		max_row_value_41 {Type I LastRead 0 FirstWrite -1}
		max_row_value_40 {Type I LastRead 0 FirstWrite -1}
		max_row_value_39 {Type I LastRead 0 FirstWrite -1}
		max_row_value_38 {Type I LastRead 0 FirstWrite -1}
		max_row_value_37 {Type I LastRead 0 FirstWrite -1}
		max_row_value_36 {Type I LastRead 0 FirstWrite -1}
		max_row_value_35 {Type I LastRead 0 FirstWrite -1}
		max_row_value_34 {Type I LastRead 0 FirstWrite -1}
		max_row_value_33 {Type I LastRead 0 FirstWrite -1}
		max_row_value_32 {Type I LastRead 0 FirstWrite -1}
		max_score_63 {Type I LastRead 0 FirstWrite -1}
		max_score_62 {Type I LastRead 0 FirstWrite -1}
		max_score_61 {Type I LastRead 0 FirstWrite -1}
		max_score_60 {Type I LastRead 0 FirstWrite -1}
		max_score_59 {Type I LastRead 0 FirstWrite -1}
		max_score_58 {Type I LastRead 0 FirstWrite -1}
		max_score_57 {Type I LastRead 0 FirstWrite -1}
		max_score_56 {Type I LastRead 0 FirstWrite -1}
		max_score_55 {Type I LastRead 0 FirstWrite -1}
		max_score_54 {Type I LastRead 0 FirstWrite -1}
		max_score_53 {Type I LastRead 0 FirstWrite -1}
		max_score_52 {Type I LastRead 0 FirstWrite -1}
		max_score_51 {Type I LastRead 0 FirstWrite -1}
		max_score_50 {Type I LastRead 0 FirstWrite -1}
		max_score_49 {Type I LastRead 0 FirstWrite -1}
		max_score_48 {Type I LastRead 0 FirstWrite -1}
		max_score_47 {Type I LastRead 0 FirstWrite -1}
		max_score_46 {Type I LastRead 0 FirstWrite -1}
		max_score_45 {Type I LastRead 0 FirstWrite -1}
		max_score_44 {Type I LastRead 0 FirstWrite -1}
		max_score_43 {Type I LastRead 0 FirstWrite -1}
		max_score_42 {Type I LastRead 0 FirstWrite -1}
		max_score_41 {Type I LastRead 0 FirstWrite -1}
		max_score_40 {Type I LastRead 0 FirstWrite -1}
		max_score_39 {Type I LastRead 0 FirstWrite -1}
		max_score_38 {Type I LastRead 0 FirstWrite -1}
		max_score_37 {Type I LastRead 0 FirstWrite -1}
		max_score_36 {Type I LastRead 0 FirstWrite -1}
		max_score_35 {Type I LastRead 0 FirstWrite -1}
		max_score_34 {Type I LastRead 0 FirstWrite -1}
		max_score_33 {Type I LastRead 0 FirstWrite -1}
		max_score_32 {Type I LastRead 0 FirstWrite -1}
		zext_ln580 {Type I LastRead 0 FirstWrite -1}
		traceback_V_30 {Type O LastRead -1 FirstWrite 0}
		traceback_V_29 {Type O LastRead -1 FirstWrite 0}
		traceback_V_28 {Type O LastRead -1 FirstWrite 0}
		traceback_V_27 {Type O LastRead -1 FirstWrite 0}
		traceback_V_26 {Type O LastRead -1 FirstWrite 0}
		traceback_V_25 {Type O LastRead -1 FirstWrite 0}
		traceback_V_24 {Type O LastRead -1 FirstWrite 0}
		traceback_V_23 {Type O LastRead -1 FirstWrite 0}
		traceback_V_22 {Type O LastRead -1 FirstWrite 0}
		traceback_V_21 {Type O LastRead -1 FirstWrite 0}
		traceback_V_20 {Type O LastRead -1 FirstWrite 0}
		traceback_V_19 {Type O LastRead -1 FirstWrite 0}
		traceback_V_18 {Type O LastRead -1 FirstWrite 0}
		traceback_V_17 {Type O LastRead -1 FirstWrite 0}
		traceback_V_16 {Type O LastRead -1 FirstWrite 0}
		traceback_V_15 {Type O LastRead -1 FirstWrite 0}
		traceback_V_14 {Type O LastRead -1 FirstWrite 0}
		traceback_V_13 {Type O LastRead -1 FirstWrite 0}
		traceback_V_12 {Type O LastRead -1 FirstWrite 0}
		traceback_V_11 {Type O LastRead -1 FirstWrite 0}
		traceback_V_10 {Type O LastRead -1 FirstWrite 0}
		traceback_V_9 {Type O LastRead -1 FirstWrite 0}
		traceback_V_8 {Type O LastRead -1 FirstWrite 0}
		traceback_V_7 {Type O LastRead -1 FirstWrite 0}
		traceback_V_6 {Type O LastRead -1 FirstWrite 0}
		traceback_V_5 {Type O LastRead -1 FirstWrite 0}
		traceback_V_4 {Type O LastRead -1 FirstWrite 0}
		traceback_V_3 {Type O LastRead -1 FirstWrite 0}
		traceback_V_2 {Type O LastRead -1 FirstWrite 0}
		traceback_V_1 {Type O LastRead -1 FirstWrite 0}
		traceback_V {Type O LastRead -1 FirstWrite 0}
		traceback_V_31 {Type O LastRead -1 FirstWrite 0}
		local_reference {Type I LastRead 2 FirstWrite -1}
		local_reference_1 {Type I LastRead 2 FirstWrite -1}
		local_reference_2 {Type I LastRead 2 FirstWrite -1}
		local_reference_3 {Type I LastRead 2 FirstWrite -1}
		local_reference_4 {Type I LastRead 2 FirstWrite -1}
		local_reference_5 {Type I LastRead 2 FirstWrite -1}
		local_reference_6 {Type I LastRead 2 FirstWrite -1}
		local_reference_7 {Type I LastRead 2 FirstWrite -1}
		local_reference_8 {Type I LastRead 2 FirstWrite -1}
		local_reference_9 {Type I LastRead 2 FirstWrite -1}
		local_reference_10 {Type I LastRead 2 FirstWrite -1}
		local_reference_11 {Type I LastRead 2 FirstWrite -1}
		local_reference_12 {Type I LastRead 2 FirstWrite -1}
		local_reference_13 {Type I LastRead 2 FirstWrite -1}
		local_reference_14 {Type I LastRead 2 FirstWrite -1}
		local_reference_15 {Type I LastRead 2 FirstWrite -1}
		local_reference_16 {Type I LastRead 2 FirstWrite -1}
		local_reference_17 {Type I LastRead 2 FirstWrite -1}
		local_reference_18 {Type I LastRead 2 FirstWrite -1}
		local_reference_19 {Type I LastRead 2 FirstWrite -1}
		local_reference_20 {Type I LastRead 2 FirstWrite -1}
		local_reference_21 {Type I LastRead 2 FirstWrite -1}
		local_reference_22 {Type I LastRead 2 FirstWrite -1}
		local_reference_23 {Type I LastRead 2 FirstWrite -1}
		local_reference_24 {Type I LastRead 2 FirstWrite -1}
		local_reference_25 {Type I LastRead 2 FirstWrite -1}
		local_reference_26 {Type I LastRead 2 FirstWrite -1}
		local_reference_27 {Type I LastRead 2 FirstWrite -1}
		local_reference_28 {Type I LastRead 2 FirstWrite -1}
		local_reference_29 {Type I LastRead 2 FirstWrite -1}
		local_reference_30 {Type I LastRead 2 FirstWrite -1}
		local_reference_31 {Type I LastRead 2 FirstWrite -1}
		last_pe_score {Type IO LastRead 0 FirstWrite 4}
		last_pe_scoreIx {Type IO LastRead 0 FirstWrite 4}
		p_cast9 {Type I LastRead 0 FirstWrite -1}
		p_phi_reload {Type I LastRead 0 FirstWrite -1}
		cmp_i54 {Type I LastRead 0 FirstWrite -1}
		p_cast10 {Type I LastRead 0 FirstWrite -1}
		cmp_i_1 {Type I LastRead 0 FirstWrite -1}
		query_data_reload {Type I LastRead 0 FirstWrite -1}
		p_cast11 {Type I LastRead 0 FirstWrite -1}
		cmp_i_2 {Type I LastRead 0 FirstWrite -1}
		query_data_30_reload {Type I LastRead 0 FirstWrite -1}
		p_cast12 {Type I LastRead 0 FirstWrite -1}
		cmp_i_3 {Type I LastRead 0 FirstWrite -1}
		query_data_29_reload {Type I LastRead 0 FirstWrite -1}
		p_cast13 {Type I LastRead 0 FirstWrite -1}
		cmp_i_4 {Type I LastRead 0 FirstWrite -1}
		query_data_28_reload {Type I LastRead 0 FirstWrite -1}
		p_cast14 {Type I LastRead 0 FirstWrite -1}
		cmp_i_5 {Type I LastRead 0 FirstWrite -1}
		query_data_27_reload {Type I LastRead 0 FirstWrite -1}
		p_cast15 {Type I LastRead 0 FirstWrite -1}
		cmp_i_6 {Type I LastRead 0 FirstWrite -1}
		query_data_26_reload {Type I LastRead 0 FirstWrite -1}
		p_cast16 {Type I LastRead 0 FirstWrite -1}
		cmp_i_7 {Type I LastRead 0 FirstWrite -1}
		query_data_25_reload {Type I LastRead 0 FirstWrite -1}
		p_cast17 {Type I LastRead 0 FirstWrite -1}
		cmp_i_8 {Type I LastRead 0 FirstWrite -1}
		query_data_24_reload {Type I LastRead 0 FirstWrite -1}
		p_cast18 {Type I LastRead 0 FirstWrite -1}
		cmp_i_9 {Type I LastRead 0 FirstWrite -1}
		query_data_23_reload {Type I LastRead 0 FirstWrite -1}
		p_cast19 {Type I LastRead 0 FirstWrite -1}
		cmp_i_10 {Type I LastRead 0 FirstWrite -1}
		query_data_22_reload {Type I LastRead 0 FirstWrite -1}
		p_cast20 {Type I LastRead 0 FirstWrite -1}
		cmp_i_11 {Type I LastRead 0 FirstWrite -1}
		query_data_21_reload {Type I LastRead 0 FirstWrite -1}
		p_cast21 {Type I LastRead 0 FirstWrite -1}
		cmp_i_12 {Type I LastRead 0 FirstWrite -1}
		query_data_20_reload {Type I LastRead 0 FirstWrite -1}
		p_cast22 {Type I LastRead 0 FirstWrite -1}
		cmp_i_13 {Type I LastRead 0 FirstWrite -1}
		query_data_19_reload {Type I LastRead 0 FirstWrite -1}
		p_cast23 {Type I LastRead 0 FirstWrite -1}
		cmp_i_14 {Type I LastRead 0 FirstWrite -1}
		query_data_18_reload {Type I LastRead 0 FirstWrite -1}
		p_cast24 {Type I LastRead 0 FirstWrite -1}
		cmp_i_15 {Type I LastRead 0 FirstWrite -1}
		query_data_17_reload {Type I LastRead 0 FirstWrite -1}
		p_cast25 {Type I LastRead 0 FirstWrite -1}
		cmp_i_16 {Type I LastRead 0 FirstWrite -1}
		query_data_16_reload {Type I LastRead 0 FirstWrite -1}
		p_cast26 {Type I LastRead 0 FirstWrite -1}
		cmp_i_17 {Type I LastRead 0 FirstWrite -1}
		query_data_15_reload {Type I LastRead 0 FirstWrite -1}
		p_cast27 {Type I LastRead 0 FirstWrite -1}
		cmp_i_18 {Type I LastRead 0 FirstWrite -1}
		query_data_14_reload {Type I LastRead 0 FirstWrite -1}
		p_cast28 {Type I LastRead 0 FirstWrite -1}
		cmp_i_19 {Type I LastRead 0 FirstWrite -1}
		query_data_13_reload {Type I LastRead 0 FirstWrite -1}
		p_cast29 {Type I LastRead 0 FirstWrite -1}
		cmp_i_20 {Type I LastRead 0 FirstWrite -1}
		query_data_12_reload {Type I LastRead 0 FirstWrite -1}
		p_cast30 {Type I LastRead 0 FirstWrite -1}
		cmp_i_21 {Type I LastRead 0 FirstWrite -1}
		query_data_11_reload {Type I LastRead 0 FirstWrite -1}
		p_cast31 {Type I LastRead 0 FirstWrite -1}
		cmp_i_22 {Type I LastRead 0 FirstWrite -1}
		query_data_10_reload {Type I LastRead 0 FirstWrite -1}
		p_cast32 {Type I LastRead 0 FirstWrite -1}
		cmp_i_23 {Type I LastRead 0 FirstWrite -1}
		query_data_9_reload {Type I LastRead 0 FirstWrite -1}
		p_cast33 {Type I LastRead 0 FirstWrite -1}
		cmp_i_24 {Type I LastRead 0 FirstWrite -1}
		query_data_8_reload {Type I LastRead 0 FirstWrite -1}
		p_cast34 {Type I LastRead 0 FirstWrite -1}
		cmp_i_25 {Type I LastRead 0 FirstWrite -1}
		query_data_7_reload {Type I LastRead 0 FirstWrite -1}
		p_cast35 {Type I LastRead 0 FirstWrite -1}
		cmp_i_26 {Type I LastRead 0 FirstWrite -1}
		query_data_6_reload {Type I LastRead 0 FirstWrite -1}
		p_cast36 {Type I LastRead 0 FirstWrite -1}
		cmp_i_27 {Type I LastRead 0 FirstWrite -1}
		query_data_5_reload {Type I LastRead 0 FirstWrite -1}
		p_cast37 {Type I LastRead 0 FirstWrite -1}
		cmp_i_28 {Type I LastRead 0 FirstWrite -1}
		query_data_4_reload {Type I LastRead 0 FirstWrite -1}
		p_cast38 {Type I LastRead 0 FirstWrite -1}
		cmp_i_29 {Type I LastRead 0 FirstWrite -1}
		query_data_3_reload {Type I LastRead 0 FirstWrite -1}
		p_cast39 {Type I LastRead 0 FirstWrite -1}
		cmp_i_30 {Type I LastRead 0 FirstWrite -1}
		query_data_2_reload {Type I LastRead 0 FirstWrite -1}
		zext_ln547 {Type I LastRead 0 FirstWrite -1}
		cmp_i_31 {Type I LastRead 0 FirstWrite -1}
		query_data_1_reload {Type I LastRead 0 FirstWrite -1}
		max_col_value_127_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_126_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_125_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_124_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_123_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_122_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_121_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_120_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_119_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_118_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_117_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_116_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_115_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_114_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_113_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_112_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_111_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_110_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_109_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_108_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_107_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_106_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_105_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_104_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_103_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_102_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_101_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_100_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_99_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_98_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_97_out {Type O LastRead -1 FirstWrite 3}
		max_col_value_96_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_95_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_94_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_93_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_92_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_91_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_90_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_89_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_88_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_87_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_86_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_85_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_84_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_83_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_82_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_81_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_80_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_79_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_78_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_77_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_76_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_75_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_74_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_73_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_72_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_71_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_70_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_69_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_68_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_67_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_66_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_65_out {Type O LastRead -1 FirstWrite 3}
		max_row_value_64_out {Type O LastRead -1 FirstWrite 3}
		max_score_95_out {Type O LastRead -1 FirstWrite 3}
		max_score_94_out {Type O LastRead -1 FirstWrite 3}
		max_score_93_out {Type O LastRead -1 FirstWrite 3}
		max_score_92_out {Type O LastRead -1 FirstWrite 3}
		max_score_91_out {Type O LastRead -1 FirstWrite 3}
		max_score_90_out {Type O LastRead -1 FirstWrite 3}
		max_score_89_out {Type O LastRead -1 FirstWrite 3}
		max_score_88_out {Type O LastRead -1 FirstWrite 3}
		max_score_87_out {Type O LastRead -1 FirstWrite 3}
		max_score_86_out {Type O LastRead -1 FirstWrite 3}
		max_score_85_out {Type O LastRead -1 FirstWrite 3}
		max_score_84_out {Type O LastRead -1 FirstWrite 3}
		max_score_83_out {Type O LastRead -1 FirstWrite 3}
		max_score_82_out {Type O LastRead -1 FirstWrite 3}
		max_score_81_out {Type O LastRead -1 FirstWrite 3}
		max_score_80_out {Type O LastRead -1 FirstWrite 3}
		max_score_79_out {Type O LastRead -1 FirstWrite 3}
		max_score_78_out {Type O LastRead -1 FirstWrite 3}
		max_score_77_out {Type O LastRead -1 FirstWrite 3}
		max_score_76_out {Type O LastRead -1 FirstWrite 3}
		max_score_75_out {Type O LastRead -1 FirstWrite 3}
		max_score_74_out {Type O LastRead -1 FirstWrite 3}
		max_score_73_out {Type O LastRead -1 FirstWrite 3}
		max_score_72_out {Type O LastRead -1 FirstWrite 3}
		max_score_71_out {Type O LastRead -1 FirstWrite 3}
		max_score_70_out {Type O LastRead -1 FirstWrite 3}
		max_score_69_out {Type O LastRead -1 FirstWrite 3}
		max_score_68_out {Type O LastRead -1 FirstWrite 3}
		max_score_67_out {Type O LastRead -1 FirstWrite 3}
		max_score_66_out {Type O LastRead -1 FirstWrite 3}
		max_score_65_out {Type O LastRead -1 FirstWrite 3}
		max_score_64_out {Type O LastRead -1 FirstWrite 3}
		p_out {Type IO LastRead 3 FirstWrite 3}
		p_out1 {Type IO LastRead 3 FirstWrite 3}
		p_out2 {Type IO LastRead 3 FirstWrite 3}
		p_out3 {Type IO LastRead 3 FirstWrite 3}
		p_out4 {Type IO LastRead 3 FirstWrite 3}
		p_out5 {Type IO LastRead 3 FirstWrite 3}
		p_out6 {Type IO LastRead 3 FirstWrite 3}
		p_out7 {Type IO LastRead 3 FirstWrite 3}
		p_out8 {Type IO LastRead 3 FirstWrite 3}
		p_out9 {Type IO LastRead 3 FirstWrite 3}
		p_out10 {Type IO LastRead 3 FirstWrite 3}
		p_out11 {Type IO LastRead 3 FirstWrite 3}
		p_out12 {Type IO LastRead 3 FirstWrite 3}
		p_out13 {Type IO LastRead 3 FirstWrite 3}
		p_out14 {Type IO LastRead 3 FirstWrite 3}
		p_out15 {Type IO LastRead 3 FirstWrite 3}
		p_out16 {Type IO LastRead 3 FirstWrite 3}
		p_out17 {Type IO LastRead 3 FirstWrite 3}
		p_out18 {Type IO LastRead 3 FirstWrite 3}
		p_out19 {Type IO LastRead 3 FirstWrite 3}
		p_out20 {Type IO LastRead 3 FirstWrite 3}
		p_out21 {Type IO LastRead 3 FirstWrite 3}
		p_out22 {Type IO LastRead 3 FirstWrite 3}
		p_out23 {Type IO LastRead 3 FirstWrite 3}
		p_out24 {Type IO LastRead 3 FirstWrite 3}
		p_out25 {Type IO LastRead 3 FirstWrite 3}
		p_out26 {Type IO LastRead 3 FirstWrite 3}
		p_out27 {Type IO LastRead 3 FirstWrite 3}
		p_out28 {Type IO LastRead 3 FirstWrite 3}
		p_out29 {Type IO LastRead 3 FirstWrite 3}
		p_out30 {Type IO LastRead 3 FirstWrite 3}
		p_out31 {Type IO LastRead 3 FirstWrite 3}
		p_out32 {Type IO LastRead 3 FirstWrite 3}
		p_out33 {Type IO LastRead 3 FirstWrite 3}
		p_out34 {Type IO LastRead 3 FirstWrite 3}
		p_out35 {Type IO LastRead 3 FirstWrite 3}
		p_out36 {Type IO LastRead 3 FirstWrite 3}
		p_out37 {Type IO LastRead 3 FirstWrite 3}
		p_out38 {Type IO LastRead 3 FirstWrite 3}
		p_out39 {Type IO LastRead 3 FirstWrite 3}
		p_out40 {Type IO LastRead 3 FirstWrite 3}
		p_out41 {Type IO LastRead 3 FirstWrite 3}
		p_out42 {Type IO LastRead 3 FirstWrite 3}
		p_out43 {Type IO LastRead 3 FirstWrite 3}
		p_out44 {Type IO LastRead 3 FirstWrite 3}
		p_out45 {Type IO LastRead 3 FirstWrite 3}
		p_out46 {Type IO LastRead 3 FirstWrite 3}
		p_out47 {Type IO LastRead 3 FirstWrite 3}
		p_out48 {Type IO LastRead 3 FirstWrite 3}
		p_out49 {Type IO LastRead 3 FirstWrite 3}
		p_out50 {Type IO LastRead 3 FirstWrite 3}
		p_out51 {Type IO LastRead 3 FirstWrite 3}
		p_out52 {Type IO LastRead 3 FirstWrite 3}
		p_out53 {Type IO LastRead 3 FirstWrite 3}
		p_out54 {Type IO LastRead 3 FirstWrite 3}
		p_out55 {Type IO LastRead 3 FirstWrite 3}
		p_out56 {Type IO LastRead 3 FirstWrite 3}
		p_out57 {Type IO LastRead 3 FirstWrite 3}
		p_out58 {Type IO LastRead 3 FirstWrite 3}
		p_out59 {Type IO LastRead 3 FirstWrite 3}
		p_out60 {Type IO LastRead 3 FirstWrite 3}
		p_out61 {Type IO LastRead 3 FirstWrite 3}
		p_out62 {Type IO LastRead 3 FirstWrite 3}
		p_out63 {Type IO LastRead 3 FirstWrite 3}
		p_out64 {Type IO LastRead 3 FirstWrite 3}
		p_out65 {Type IO LastRead 3 FirstWrite 3}
		p_out66 {Type IO LastRead 3 FirstWrite 3}
		p_out67 {Type IO LastRead 3 FirstWrite 3}
		p_out68 {Type IO LastRead 3 FirstWrite 3}
		p_out69 {Type IO LastRead 3 FirstWrite 3}
		p_out70 {Type IO LastRead 2 FirstWrite 2}
		p_out71 {Type IO LastRead 2 FirstWrite 2}
		p_out72 {Type IO LastRead 2 FirstWrite 2}
		p_out73 {Type IO LastRead 2 FirstWrite 2}
		p_out74 {Type IO LastRead 2 FirstWrite 2}
		p_out75 {Type IO LastRead 2 FirstWrite 2}
		p_out76 {Type IO LastRead 2 FirstWrite 2}
		p_out77 {Type IO LastRead 2 FirstWrite 2}
		p_out78 {Type IO LastRead 2 FirstWrite 2}
		p_out79 {Type IO LastRead 2 FirstWrite 2}
		p_out80 {Type IO LastRead 2 FirstWrite 2}
		p_out81 {Type IO LastRead 2 FirstWrite 2}
		p_out82 {Type IO LastRead 2 FirstWrite 2}
		p_out83 {Type IO LastRead 2 FirstWrite 2}
		p_out84 {Type IO LastRead 2 FirstWrite 2}
		p_out85 {Type IO LastRead 2 FirstWrite 2}
		p_out86 {Type IO LastRead 2 FirstWrite 2}
		p_out87 {Type IO LastRead 2 FirstWrite 2}
		p_out88 {Type IO LastRead 2 FirstWrite 2}
		p_out89 {Type IO LastRead 2 FirstWrite 2}
		p_out90 {Type IO LastRead 2 FirstWrite 2}
		p_out91 {Type IO LastRead 2 FirstWrite 2}
		p_out92 {Type IO LastRead 2 FirstWrite 2}
		p_out93 {Type IO LastRead 2 FirstWrite 2}
		p_out94 {Type IO LastRead 2 FirstWrite 2}
		p_out95 {Type IO LastRead 2 FirstWrite 2}
		p_out96 {Type IO LastRead 2 FirstWrite 2}
		p_out97 {Type IO LastRead 2 FirstWrite 2}
		p_out98 {Type IO LastRead 2 FirstWrite 2}
		p_out99 {Type IO LastRead 2 FirstWrite 2}
		p_out100 {Type IO LastRead 2 FirstWrite 2}
		p_out101 {Type IO LastRead 2 FirstWrite 2}
		p_out102 {Type IO LastRead 2 FirstWrite 2}
		p_out103 {Type IO LastRead 2 FirstWrite 2}
		p_out104 {Type IO LastRead 2 FirstWrite 2}
		p_out105 {Type IO LastRead 2 FirstWrite 2}
		p_out106 {Type IO LastRead 2 FirstWrite 2}
		p_out107 {Type IO LastRead 2 FirstWrite 2}
		p_out108 {Type IO LastRead 2 FirstWrite 2}
		p_out109 {Type IO LastRead 2 FirstWrite 2}
		p_out110 {Type IO LastRead 2 FirstWrite 2}
		p_out111 {Type IO LastRead 2 FirstWrite 2}
		p_out112 {Type IO LastRead 2 FirstWrite 2}
		p_out113 {Type IO LastRead 2 FirstWrite 2}
		p_out114 {Type IO LastRead 2 FirstWrite 2}
		p_out115 {Type IO LastRead 2 FirstWrite 2}
		p_out116 {Type IO LastRead 2 FirstWrite 2}
		p_out117 {Type IO LastRead 2 FirstWrite 2}
		p_out118 {Type IO LastRead 2 FirstWrite 2}
		p_out119 {Type IO LastRead 2 FirstWrite 2}
		p_out120 {Type IO LastRead 2 FirstWrite 2}
		p_out121 {Type IO LastRead 2 FirstWrite 2}
		p_out122 {Type IO LastRead 2 FirstWrite 2}
		p_out123 {Type IO LastRead 2 FirstWrite 2}
		p_out124 {Type IO LastRead 2 FirstWrite 2}
		p_out125 {Type IO LastRead 2 FirstWrite 2}
		temp_1_out {Type IO LastRead 1 FirstWrite 1}}
	seq_align_Pipeline_VITIS_LOOP_609_12 {
		max {Type I LastRead 0 FirstWrite -1}
		index {Type I LastRead 0 FirstWrite -1}
		max_score_64_reload {Type I LastRead 0 FirstWrite -1}
		max_score_65_reload {Type I LastRead 0 FirstWrite -1}
		max_score_66_reload {Type I LastRead 0 FirstWrite -1}
		max_score_67_reload {Type I LastRead 0 FirstWrite -1}
		max_score_68_reload {Type I LastRead 0 FirstWrite -1}
		max_score_69_reload {Type I LastRead 0 FirstWrite -1}
		max_score_70_reload {Type I LastRead 0 FirstWrite -1}
		max_score_71_reload {Type I LastRead 0 FirstWrite -1}
		max_score_72_reload {Type I LastRead 0 FirstWrite -1}
		max_score_73_reload {Type I LastRead 0 FirstWrite -1}
		max_score_74_reload {Type I LastRead 0 FirstWrite -1}
		max_score_75_reload {Type I LastRead 0 FirstWrite -1}
		max_score_76_reload {Type I LastRead 0 FirstWrite -1}
		max_score_77_reload {Type I LastRead 0 FirstWrite -1}
		max_score_78_reload {Type I LastRead 0 FirstWrite -1}
		max_score_79_reload {Type I LastRead 0 FirstWrite -1}
		max_score_80_reload {Type I LastRead 0 FirstWrite -1}
		max_score_81_reload {Type I LastRead 0 FirstWrite -1}
		max_score_82_reload {Type I LastRead 0 FirstWrite -1}
		max_score_83_reload {Type I LastRead 0 FirstWrite -1}
		max_score_84_reload {Type I LastRead 0 FirstWrite -1}
		max_score_85_reload {Type I LastRead 0 FirstWrite -1}
		max_score_86_reload {Type I LastRead 0 FirstWrite -1}
		max_score_87_reload {Type I LastRead 0 FirstWrite -1}
		max_score_88_reload {Type I LastRead 0 FirstWrite -1}
		max_score_89_reload {Type I LastRead 0 FirstWrite -1}
		max_score_90_reload {Type I LastRead 0 FirstWrite -1}
		max_score_91_reload {Type I LastRead 0 FirstWrite -1}
		max_score_92_reload {Type I LastRead 0 FirstWrite -1}
		max_score_93_reload {Type I LastRead 0 FirstWrite -1}
		max_score_94_reload {Type I LastRead 0 FirstWrite -1}
		max_score_95_reload {Type I LastRead 0 FirstWrite -1}
		max_1_out {Type O LastRead -1 FirstWrite 1}
		index_1_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	query_string_comp_0 { axis {  { query_string_comp_0_TDATA in_data 0 8 }  { query_string_comp_0_TVALID in_vld 0 1 }  { query_string_comp_0_TREADY in_acc 1 1 } } }
	reference_string_comp_0 { axis {  { reference_string_comp_0_TDATA in_data 0 8 }  { reference_string_comp_0_TVALID in_vld 0 1 }  { reference_string_comp_0_TREADY in_acc 1 1 } } }
}
