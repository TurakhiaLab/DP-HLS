set moduleName seq_align_Pipeline_VITIS_LOOP_609_12
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
set C_modelName {seq_align_Pipeline_VITIS_LOOP_609_12}
set C_modelType { void 0 }
set C_modelArgList {
	{ max int 32 regular  }
	{ index int 32 regular  }
	{ max_score_64_reload int 32 regular  }
	{ max_score_65_reload int 32 regular  }
	{ max_score_66_reload int 32 regular  }
	{ max_score_67_reload int 32 regular  }
	{ max_score_68_reload int 32 regular  }
	{ max_score_69_reload int 32 regular  }
	{ max_score_70_reload int 32 regular  }
	{ max_score_71_reload int 32 regular  }
	{ max_score_72_reload int 32 regular  }
	{ max_score_73_reload int 32 regular  }
	{ max_score_74_reload int 32 regular  }
	{ max_score_75_reload int 32 regular  }
	{ max_score_76_reload int 32 regular  }
	{ max_score_77_reload int 32 regular  }
	{ max_score_78_reload int 32 regular  }
	{ max_score_79_reload int 32 regular  }
	{ max_score_80_reload int 32 regular  }
	{ max_score_81_reload int 32 regular  }
	{ max_score_82_reload int 32 regular  }
	{ max_score_83_reload int 32 regular  }
	{ max_score_84_reload int 32 regular  }
	{ max_score_85_reload int 32 regular  }
	{ max_score_86_reload int 32 regular  }
	{ max_score_87_reload int 32 regular  }
	{ max_score_88_reload int 32 regular  }
	{ max_score_89_reload int 32 regular  }
	{ max_score_90_reload int 32 regular  }
	{ max_score_91_reload int 32 regular  }
	{ max_score_92_reload int 32 regular  }
	{ max_score_93_reload int 32 regular  }
	{ max_score_94_reload int 32 regular  }
	{ max_score_95_reload int 32 regular  }
	{ max_1_out int 32 regular {pointer 1}  }
	{ index_1_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "max", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "index", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_64_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_65_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_66_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_67_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_68_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_69_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_70_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_71_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_72_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_73_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_74_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_75_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_76_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_77_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_78_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_79_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_80_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_81_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_82_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_83_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_84_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_85_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_86_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_87_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_88_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_89_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_90_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_91_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_92_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_93_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_94_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_score_95_reload", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "index_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 44
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ max sc_in sc_lv 32 signal 0 } 
	{ index sc_in sc_lv 32 signal 1 } 
	{ max_score_64_reload sc_in sc_lv 32 signal 2 } 
	{ max_score_65_reload sc_in sc_lv 32 signal 3 } 
	{ max_score_66_reload sc_in sc_lv 32 signal 4 } 
	{ max_score_67_reload sc_in sc_lv 32 signal 5 } 
	{ max_score_68_reload sc_in sc_lv 32 signal 6 } 
	{ max_score_69_reload sc_in sc_lv 32 signal 7 } 
	{ max_score_70_reload sc_in sc_lv 32 signal 8 } 
	{ max_score_71_reload sc_in sc_lv 32 signal 9 } 
	{ max_score_72_reload sc_in sc_lv 32 signal 10 } 
	{ max_score_73_reload sc_in sc_lv 32 signal 11 } 
	{ max_score_74_reload sc_in sc_lv 32 signal 12 } 
	{ max_score_75_reload sc_in sc_lv 32 signal 13 } 
	{ max_score_76_reload sc_in sc_lv 32 signal 14 } 
	{ max_score_77_reload sc_in sc_lv 32 signal 15 } 
	{ max_score_78_reload sc_in sc_lv 32 signal 16 } 
	{ max_score_79_reload sc_in sc_lv 32 signal 17 } 
	{ max_score_80_reload sc_in sc_lv 32 signal 18 } 
	{ max_score_81_reload sc_in sc_lv 32 signal 19 } 
	{ max_score_82_reload sc_in sc_lv 32 signal 20 } 
	{ max_score_83_reload sc_in sc_lv 32 signal 21 } 
	{ max_score_84_reload sc_in sc_lv 32 signal 22 } 
	{ max_score_85_reload sc_in sc_lv 32 signal 23 } 
	{ max_score_86_reload sc_in sc_lv 32 signal 24 } 
	{ max_score_87_reload sc_in sc_lv 32 signal 25 } 
	{ max_score_88_reload sc_in sc_lv 32 signal 26 } 
	{ max_score_89_reload sc_in sc_lv 32 signal 27 } 
	{ max_score_90_reload sc_in sc_lv 32 signal 28 } 
	{ max_score_91_reload sc_in sc_lv 32 signal 29 } 
	{ max_score_92_reload sc_in sc_lv 32 signal 30 } 
	{ max_score_93_reload sc_in sc_lv 32 signal 31 } 
	{ max_score_94_reload sc_in sc_lv 32 signal 32 } 
	{ max_score_95_reload sc_in sc_lv 32 signal 33 } 
	{ max_1_out sc_out sc_lv 32 signal 34 } 
	{ max_1_out_ap_vld sc_out sc_logic 1 outvld 34 } 
	{ index_1_out sc_out sc_lv 32 signal 35 } 
	{ index_1_out_ap_vld sc_out sc_logic 1 outvld 35 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "max", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max", "role": "default" }} , 
 	{ "name": "index", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "index", "role": "default" }} , 
 	{ "name": "max_score_64_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_64_reload", "role": "default" }} , 
 	{ "name": "max_score_65_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_65_reload", "role": "default" }} , 
 	{ "name": "max_score_66_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_66_reload", "role": "default" }} , 
 	{ "name": "max_score_67_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_67_reload", "role": "default" }} , 
 	{ "name": "max_score_68_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_68_reload", "role": "default" }} , 
 	{ "name": "max_score_69_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_69_reload", "role": "default" }} , 
 	{ "name": "max_score_70_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_70_reload", "role": "default" }} , 
 	{ "name": "max_score_71_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_71_reload", "role": "default" }} , 
 	{ "name": "max_score_72_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_72_reload", "role": "default" }} , 
 	{ "name": "max_score_73_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_73_reload", "role": "default" }} , 
 	{ "name": "max_score_74_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_74_reload", "role": "default" }} , 
 	{ "name": "max_score_75_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_75_reload", "role": "default" }} , 
 	{ "name": "max_score_76_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_76_reload", "role": "default" }} , 
 	{ "name": "max_score_77_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_77_reload", "role": "default" }} , 
 	{ "name": "max_score_78_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_78_reload", "role": "default" }} , 
 	{ "name": "max_score_79_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_79_reload", "role": "default" }} , 
 	{ "name": "max_score_80_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_80_reload", "role": "default" }} , 
 	{ "name": "max_score_81_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_81_reload", "role": "default" }} , 
 	{ "name": "max_score_82_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_82_reload", "role": "default" }} , 
 	{ "name": "max_score_83_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_83_reload", "role": "default" }} , 
 	{ "name": "max_score_84_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_84_reload", "role": "default" }} , 
 	{ "name": "max_score_85_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_85_reload", "role": "default" }} , 
 	{ "name": "max_score_86_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_86_reload", "role": "default" }} , 
 	{ "name": "max_score_87_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_87_reload", "role": "default" }} , 
 	{ "name": "max_score_88_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_88_reload", "role": "default" }} , 
 	{ "name": "max_score_89_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_89_reload", "role": "default" }} , 
 	{ "name": "max_score_90_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_90_reload", "role": "default" }} , 
 	{ "name": "max_score_91_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_91_reload", "role": "default" }} , 
 	{ "name": "max_score_92_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_92_reload", "role": "default" }} , 
 	{ "name": "max_score_93_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_93_reload", "role": "default" }} , 
 	{ "name": "max_score_94_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_94_reload", "role": "default" }} , 
 	{ "name": "max_score_95_reload", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_score_95_reload", "role": "default" }} , 
 	{ "name": "max_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_1_out", "role": "default" }} , 
 	{ "name": "max_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "max_1_out", "role": "ap_vld" }} , 
 	{ "name": "index_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "index_1_out", "role": "default" }} , 
 	{ "name": "index_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "index_1_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_326_32_1_1_U869", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "34", "Max" : "34"}
	, {"Name" : "Interval", "Min" : "34", "Max" : "34"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	max { ap_none {  { max in_data 0 32 } } }
	index { ap_none {  { index in_data 0 32 } } }
	max_score_64_reload { ap_none {  { max_score_64_reload in_data 0 32 } } }
	max_score_65_reload { ap_none {  { max_score_65_reload in_data 0 32 } } }
	max_score_66_reload { ap_none {  { max_score_66_reload in_data 0 32 } } }
	max_score_67_reload { ap_none {  { max_score_67_reload in_data 0 32 } } }
	max_score_68_reload { ap_none {  { max_score_68_reload in_data 0 32 } } }
	max_score_69_reload { ap_none {  { max_score_69_reload in_data 0 32 } } }
	max_score_70_reload { ap_none {  { max_score_70_reload in_data 0 32 } } }
	max_score_71_reload { ap_none {  { max_score_71_reload in_data 0 32 } } }
	max_score_72_reload { ap_none {  { max_score_72_reload in_data 0 32 } } }
	max_score_73_reload { ap_none {  { max_score_73_reload in_data 0 32 } } }
	max_score_74_reload { ap_none {  { max_score_74_reload in_data 0 32 } } }
	max_score_75_reload { ap_none {  { max_score_75_reload in_data 0 32 } } }
	max_score_76_reload { ap_none {  { max_score_76_reload in_data 0 32 } } }
	max_score_77_reload { ap_none {  { max_score_77_reload in_data 0 32 } } }
	max_score_78_reload { ap_none {  { max_score_78_reload in_data 0 32 } } }
	max_score_79_reload { ap_none {  { max_score_79_reload in_data 0 32 } } }
	max_score_80_reload { ap_none {  { max_score_80_reload in_data 0 32 } } }
	max_score_81_reload { ap_none {  { max_score_81_reload in_data 0 32 } } }
	max_score_82_reload { ap_none {  { max_score_82_reload in_data 0 32 } } }
	max_score_83_reload { ap_none {  { max_score_83_reload in_data 0 32 } } }
	max_score_84_reload { ap_none {  { max_score_84_reload in_data 0 32 } } }
	max_score_85_reload { ap_none {  { max_score_85_reload in_data 0 32 } } }
	max_score_86_reload { ap_none {  { max_score_86_reload in_data 0 32 } } }
	max_score_87_reload { ap_none {  { max_score_87_reload in_data 0 32 } } }
	max_score_88_reload { ap_none {  { max_score_88_reload in_data 0 32 } } }
	max_score_89_reload { ap_none {  { max_score_89_reload in_data 0 32 } } }
	max_score_90_reload { ap_none {  { max_score_90_reload in_data 0 32 } } }
	max_score_91_reload { ap_none {  { max_score_91_reload in_data 0 32 } } }
	max_score_92_reload { ap_none {  { max_score_92_reload in_data 0 32 } } }
	max_score_93_reload { ap_none {  { max_score_93_reload in_data 0 32 } } }
	max_score_94_reload { ap_none {  { max_score_94_reload in_data 0 32 } } }
	max_score_95_reload { ap_none {  { max_score_95_reload in_data 0 32 } } }
	max_1_out { ap_vld {  { max_1_out out_data 1 32 }  { max_1_out_ap_vld out_vld 1 1 } } }
	index_1_out { ap_vld {  { index_1_out out_data 1 32 }  { index_1_out_ap_vld out_vld 1 1 } } }
}
