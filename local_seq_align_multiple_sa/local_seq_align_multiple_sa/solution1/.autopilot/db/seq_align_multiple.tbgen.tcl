set moduleName seq_align_multiple
set isTopModule 1
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
set C_modelName {seq_align_multiple}
set C_modelType { void 0 }
set C_modelArgList {
	{ chunk1 int 2 regular {array 1024 { 1 3 } 1 1 }  }
	{ chunk2 int 2 regular {array 1024 { 1 3 } 1 1 }  }
	{ chunk3 int 2 regular {array 1024 { 1 3 } 1 1 }  }
	{ chunk4 int 2 regular {array 1024 { 1 3 } 1 1 }  }
	{ chunk5 int 2 regular {array 1024 { 1 3 } 1 1 }  }
	{ chunk6 int 2 regular {array 1024 { 1 3 } 1 1 }  }
	{ chunk7 int 2 regular {array 1024 { 1 3 } 1 1 }  }
	{ chunk8 int 2 regular {array 1024 { 1 3 } 1 1 }  }
	{ ref1 int 2 regular {array 1024 { 1 3 } 1 1 }  }
	{ ref2 int 2 regular {array 1024 { 1 3 } 1 1 }  }
	{ ref3 int 2 regular {array 1024 { 1 3 } 1 1 }  }
	{ ref4 int 2 regular {array 1024 { 1 3 } 1 1 }  }
	{ ref5 int 2 regular {array 1024 { 1 3 } 1 1 }  }
	{ ref6 int 2 regular {array 1024 { 1 3 } 1 1 }  }
	{ ref7 int 2 regular {array 1024 { 1 3 } 1 1 }  }
	{ ref8 int 2 regular {array 1024 { 1 3 } 1 1 }  }
	{ dummy1_out int 10 regular {pointer 1}  }
	{ dummy2_out int 10 regular {pointer 1}  }
	{ dummy3_out int 10 regular {pointer 1}  }
	{ dummy4_out int 10 regular {pointer 1}  }
	{ dummy5_out int 10 regular {pointer 1}  }
	{ dummy6_out int 10 regular {pointer 1}  }
	{ dummy7_out int 10 regular {pointer 1}  }
	{ dummy8_out int 10 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "chunk1", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "chunk2", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "chunk3", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "chunk4", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "chunk5", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "chunk6", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "chunk7", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "chunk8", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ref1", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ref2", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ref3", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ref4", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ref5", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ref6", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ref7", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "ref8", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "dummy1_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dummy2_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dummy3_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dummy4_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dummy5_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dummy6_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dummy7_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dummy8_out", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 70
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
	{ chunk2_address0 sc_out sc_lv 10 signal 1 } 
	{ chunk2_ce0 sc_out sc_logic 1 signal 1 } 
	{ chunk2_q0 sc_in sc_lv 2 signal 1 } 
	{ chunk3_address0 sc_out sc_lv 10 signal 2 } 
	{ chunk3_ce0 sc_out sc_logic 1 signal 2 } 
	{ chunk3_q0 sc_in sc_lv 2 signal 2 } 
	{ chunk4_address0 sc_out sc_lv 10 signal 3 } 
	{ chunk4_ce0 sc_out sc_logic 1 signal 3 } 
	{ chunk4_q0 sc_in sc_lv 2 signal 3 } 
	{ chunk5_address0 sc_out sc_lv 10 signal 4 } 
	{ chunk5_ce0 sc_out sc_logic 1 signal 4 } 
	{ chunk5_q0 sc_in sc_lv 2 signal 4 } 
	{ chunk6_address0 sc_out sc_lv 10 signal 5 } 
	{ chunk6_ce0 sc_out sc_logic 1 signal 5 } 
	{ chunk6_q0 sc_in sc_lv 2 signal 5 } 
	{ chunk7_address0 sc_out sc_lv 10 signal 6 } 
	{ chunk7_ce0 sc_out sc_logic 1 signal 6 } 
	{ chunk7_q0 sc_in sc_lv 2 signal 6 } 
	{ chunk8_address0 sc_out sc_lv 10 signal 7 } 
	{ chunk8_ce0 sc_out sc_logic 1 signal 7 } 
	{ chunk8_q0 sc_in sc_lv 2 signal 7 } 
	{ ref1_address0 sc_out sc_lv 10 signal 8 } 
	{ ref1_ce0 sc_out sc_logic 1 signal 8 } 
	{ ref1_q0 sc_in sc_lv 2 signal 8 } 
	{ ref2_address0 sc_out sc_lv 10 signal 9 } 
	{ ref2_ce0 sc_out sc_logic 1 signal 9 } 
	{ ref2_q0 sc_in sc_lv 2 signal 9 } 
	{ ref3_address0 sc_out sc_lv 10 signal 10 } 
	{ ref3_ce0 sc_out sc_logic 1 signal 10 } 
	{ ref3_q0 sc_in sc_lv 2 signal 10 } 
	{ ref4_address0 sc_out sc_lv 10 signal 11 } 
	{ ref4_ce0 sc_out sc_logic 1 signal 11 } 
	{ ref4_q0 sc_in sc_lv 2 signal 11 } 
	{ ref5_address0 sc_out sc_lv 10 signal 12 } 
	{ ref5_ce0 sc_out sc_logic 1 signal 12 } 
	{ ref5_q0 sc_in sc_lv 2 signal 12 } 
	{ ref6_address0 sc_out sc_lv 10 signal 13 } 
	{ ref6_ce0 sc_out sc_logic 1 signal 13 } 
	{ ref6_q0 sc_in sc_lv 2 signal 13 } 
	{ ref7_address0 sc_out sc_lv 10 signal 14 } 
	{ ref7_ce0 sc_out sc_logic 1 signal 14 } 
	{ ref7_q0 sc_in sc_lv 2 signal 14 } 
	{ ref8_address0 sc_out sc_lv 10 signal 15 } 
	{ ref8_ce0 sc_out sc_logic 1 signal 15 } 
	{ ref8_q0 sc_in sc_lv 2 signal 15 } 
	{ dummy1_out sc_out sc_lv 10 signal 16 } 
	{ dummy1_out_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ dummy2_out sc_out sc_lv 10 signal 17 } 
	{ dummy2_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ dummy3_out sc_out sc_lv 10 signal 18 } 
	{ dummy3_out_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ dummy4_out sc_out sc_lv 10 signal 19 } 
	{ dummy4_out_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ dummy5_out sc_out sc_lv 10 signal 20 } 
	{ dummy5_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ dummy6_out sc_out sc_lv 10 signal 21 } 
	{ dummy6_out_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ dummy7_out sc_out sc_lv 10 signal 22 } 
	{ dummy7_out_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ dummy8_out sc_out sc_lv 10 signal 23 } 
	{ dummy8_out_ap_vld sc_out sc_logic 1 outvld 23 } 
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
 	{ "name": "chunk2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "chunk2", "role": "address0" }} , 
 	{ "name": "chunk2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "chunk2", "role": "ce0" }} , 
 	{ "name": "chunk2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "chunk2", "role": "q0" }} , 
 	{ "name": "chunk3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "chunk3", "role": "address0" }} , 
 	{ "name": "chunk3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "chunk3", "role": "ce0" }} , 
 	{ "name": "chunk3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "chunk3", "role": "q0" }} , 
 	{ "name": "chunk4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "chunk4", "role": "address0" }} , 
 	{ "name": "chunk4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "chunk4", "role": "ce0" }} , 
 	{ "name": "chunk4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "chunk4", "role": "q0" }} , 
 	{ "name": "chunk5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "chunk5", "role": "address0" }} , 
 	{ "name": "chunk5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "chunk5", "role": "ce0" }} , 
 	{ "name": "chunk5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "chunk5", "role": "q0" }} , 
 	{ "name": "chunk6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "chunk6", "role": "address0" }} , 
 	{ "name": "chunk6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "chunk6", "role": "ce0" }} , 
 	{ "name": "chunk6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "chunk6", "role": "q0" }} , 
 	{ "name": "chunk7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "chunk7", "role": "address0" }} , 
 	{ "name": "chunk7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "chunk7", "role": "ce0" }} , 
 	{ "name": "chunk7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "chunk7", "role": "q0" }} , 
 	{ "name": "chunk8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "chunk8", "role": "address0" }} , 
 	{ "name": "chunk8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "chunk8", "role": "ce0" }} , 
 	{ "name": "chunk8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "chunk8", "role": "q0" }} , 
 	{ "name": "ref1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ref1", "role": "address0" }} , 
 	{ "name": "ref1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ref1", "role": "ce0" }} , 
 	{ "name": "ref1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ref1", "role": "q0" }} , 
 	{ "name": "ref2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ref2", "role": "address0" }} , 
 	{ "name": "ref2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ref2", "role": "ce0" }} , 
 	{ "name": "ref2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ref2", "role": "q0" }} , 
 	{ "name": "ref3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ref3", "role": "address0" }} , 
 	{ "name": "ref3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ref3", "role": "ce0" }} , 
 	{ "name": "ref3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ref3", "role": "q0" }} , 
 	{ "name": "ref4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ref4", "role": "address0" }} , 
 	{ "name": "ref4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ref4", "role": "ce0" }} , 
 	{ "name": "ref4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ref4", "role": "q0" }} , 
 	{ "name": "ref5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ref5", "role": "address0" }} , 
 	{ "name": "ref5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ref5", "role": "ce0" }} , 
 	{ "name": "ref5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ref5", "role": "q0" }} , 
 	{ "name": "ref6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ref6", "role": "address0" }} , 
 	{ "name": "ref6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ref6", "role": "ce0" }} , 
 	{ "name": "ref6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ref6", "role": "q0" }} , 
 	{ "name": "ref7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ref7", "role": "address0" }} , 
 	{ "name": "ref7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ref7", "role": "ce0" }} , 
 	{ "name": "ref7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ref7", "role": "q0" }} , 
 	{ "name": "ref8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ref8", "role": "address0" }} , 
 	{ "name": "ref8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ref8", "role": "ce0" }} , 
 	{ "name": "ref8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ref8", "role": "q0" }} , 
 	{ "name": "dummy1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dummy1_out", "role": "default" }} , 
 	{ "name": "dummy1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dummy1_out", "role": "ap_vld" }} , 
 	{ "name": "dummy2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dummy2_out", "role": "default" }} , 
 	{ "name": "dummy2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dummy2_out", "role": "ap_vld" }} , 
 	{ "name": "dummy3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dummy3_out", "role": "default" }} , 
 	{ "name": "dummy3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dummy3_out", "role": "ap_vld" }} , 
 	{ "name": "dummy4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dummy4_out", "role": "default" }} , 
 	{ "name": "dummy4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dummy4_out", "role": "ap_vld" }} , 
 	{ "name": "dummy5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dummy5_out", "role": "default" }} , 
 	{ "name": "dummy5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dummy5_out", "role": "ap_vld" }} , 
 	{ "name": "dummy6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dummy6_out", "role": "default" }} , 
 	{ "name": "dummy6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dummy6_out", "role": "ap_vld" }} , 
 	{ "name": "dummy7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dummy7_out", "role": "default" }} , 
 	{ "name": "dummy7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dummy7_out", "role": "ap_vld" }} , 
 	{ "name": "dummy8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dummy8_out", "role": "default" }} , 
 	{ "name": "dummy8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dummy8_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "65", "129", "193", "257", "321", "385", "449"],
		"CDFG" : "seq_align_multiple",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1082352", "EstimateLatencyMax" : "1082352",
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
					{"ID" : "1", "SubInstance" : "grp_seq_align_fu_126", "Port" : "chunk1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_seq_align_fu_134", "Port" : "chunk1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_seq_align_fu_142", "Port" : "chunk1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "grp_seq_align_fu_150", "Port" : "chunk1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "257", "SubInstance" : "grp_seq_align_fu_158", "Port" : "chunk1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "321", "SubInstance" : "grp_seq_align_fu_166", "Port" : "chunk1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "385", "SubInstance" : "grp_seq_align_fu_174", "Port" : "chunk1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "449", "SubInstance" : "grp_seq_align_fu_182", "Port" : "chunk1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ref1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_seq_align_fu_126", "Port" : "ref1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ref2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_seq_align_fu_134", "Port" : "ref1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ref3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "129", "SubInstance" : "grp_seq_align_fu_142", "Port" : "ref1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ref4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "193", "SubInstance" : "grp_seq_align_fu_150", "Port" : "ref1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ref5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "257", "SubInstance" : "grp_seq_align_fu_158", "Port" : "ref1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ref6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "321", "SubInstance" : "grp_seq_align_fu_166", "Port" : "ref1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ref7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "385", "SubInstance" : "grp_seq_align_fu_174", "Port" : "ref1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "ref8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "449", "SubInstance" : "grp_seq_align_fu_182", "Port" : "ref1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dummy1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dummy2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dummy3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dummy4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dummy5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dummy6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dummy7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dummy8_out", "Type" : "Vld", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "23", "25", "27", "29", "31"],
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
					{"ID" : "31", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_809", "Port" : "chunk1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "ref1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771", "Port" : "ref1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.dp_matrix_V_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.last_pe_score_V_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.last_pe_scoreIx_V_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.local_reference_V_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.local_reference_V_1_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.local_reference_V_2_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.local_reference_V_3_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.local_reference_V_4_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.local_reference_V_5_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.local_reference_V_6_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.local_reference_V_7_U", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.local_reference_V_8_U", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.local_reference_V_9_U", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.local_reference_V_10_U", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.local_reference_V_11_U", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.local_reference_V_12_U", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.local_reference_V_13_U", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.local_reference_V_14_U", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.local_reference_V_15_U", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2_fu_623", "Parent" : "1", "Child" : ["22"],
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
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2_fu_623.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3_fu_629", "Parent" : "1", "Child" : ["24"],
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
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3_fu_629.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4_fu_696", "Parent" : "1", "Child" : ["26"],
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
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4_fu_696.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_VITIS_LOOP_100_5_fu_763", "Parent" : "1", "Child" : ["28"],
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
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_VITIS_LOOP_100_5_fu_763.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771", "Parent" : "1", "Child" : ["30"],
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
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809", "Parent" : "1", "Child" : ["32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64"],
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
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U147", "Parent" : "31"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U148", "Parent" : "31"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U149", "Parent" : "31"},
	{"ID" : "35", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U150", "Parent" : "31"},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U151", "Parent" : "31"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U152", "Parent" : "31"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U153", "Parent" : "31"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U154", "Parent" : "31"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U155", "Parent" : "31"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U156", "Parent" : "31"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U157", "Parent" : "31"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U158", "Parent" : "31"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U159", "Parent" : "31"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U160", "Parent" : "31"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U161", "Parent" : "31"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U162", "Parent" : "31"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U163", "Parent" : "31"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U164", "Parent" : "31"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U165", "Parent" : "31"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U166", "Parent" : "31"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U167", "Parent" : "31"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U168", "Parent" : "31"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U169", "Parent" : "31"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U170", "Parent" : "31"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U171", "Parent" : "31"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U172", "Parent" : "31"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U173", "Parent" : "31"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U174", "Parent" : "31"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U175", "Parent" : "31"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U176", "Parent" : "31"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U177", "Parent" : "31"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U178", "Parent" : "31"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_126.grp_seq_align_Pipeline_kernel_kernel1_fu_809.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134", "Parent" : "0", "Child" : ["66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "87", "89", "91", "93", "95"],
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
					{"ID" : "95", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_809", "Port" : "chunk1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "ref1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "93", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771", "Port" : "ref1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.dp_matrix_V_U", "Parent" : "65"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.last_pe_score_V_U", "Parent" : "65"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.last_pe_scoreIx_V_U", "Parent" : "65"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.local_reference_V_U", "Parent" : "65"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.local_reference_V_1_U", "Parent" : "65"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.local_reference_V_2_U", "Parent" : "65"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.local_reference_V_3_U", "Parent" : "65"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.local_reference_V_4_U", "Parent" : "65"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.local_reference_V_5_U", "Parent" : "65"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.local_reference_V_6_U", "Parent" : "65"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.local_reference_V_7_U", "Parent" : "65"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.local_reference_V_8_U", "Parent" : "65"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.local_reference_V_9_U", "Parent" : "65"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.local_reference_V_10_U", "Parent" : "65"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.local_reference_V_11_U", "Parent" : "65"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.local_reference_V_12_U", "Parent" : "65"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.local_reference_V_13_U", "Parent" : "65"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.local_reference_V_14_U", "Parent" : "65"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.local_reference_V_15_U", "Parent" : "65"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2_fu_623", "Parent" : "65", "Child" : ["86"],
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
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2_fu_623.flow_control_loop_pipe_sequential_init_U", "Parent" : "85"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3_fu_629", "Parent" : "65", "Child" : ["88"],
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
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3_fu_629.flow_control_loop_pipe_sequential_init_U", "Parent" : "87"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4_fu_696", "Parent" : "65", "Child" : ["90"],
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
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4_fu_696.flow_control_loop_pipe_sequential_init_U", "Parent" : "89"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_VITIS_LOOP_100_5_fu_763", "Parent" : "65", "Child" : ["92"],
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
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_VITIS_LOOP_100_5_fu_763.flow_control_loop_pipe_sequential_init_U", "Parent" : "91"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771", "Parent" : "65", "Child" : ["94"],
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
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771.flow_control_loop_pipe_sequential_init_U", "Parent" : "93"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809", "Parent" : "65", "Child" : ["96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128"],
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
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U147", "Parent" : "95"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U148", "Parent" : "95"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U149", "Parent" : "95"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U150", "Parent" : "95"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U151", "Parent" : "95"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U152", "Parent" : "95"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U153", "Parent" : "95"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U154", "Parent" : "95"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U155", "Parent" : "95"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U156", "Parent" : "95"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U157", "Parent" : "95"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U158", "Parent" : "95"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U159", "Parent" : "95"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U160", "Parent" : "95"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U161", "Parent" : "95"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U162", "Parent" : "95"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U163", "Parent" : "95"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U164", "Parent" : "95"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U165", "Parent" : "95"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U166", "Parent" : "95"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U167", "Parent" : "95"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U168", "Parent" : "95"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U169", "Parent" : "95"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U170", "Parent" : "95"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U171", "Parent" : "95"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U172", "Parent" : "95"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U173", "Parent" : "95"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U174", "Parent" : "95"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U175", "Parent" : "95"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U176", "Parent" : "95"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U177", "Parent" : "95"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U178", "Parent" : "95"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_134.grp_seq_align_Pipeline_kernel_kernel1_fu_809.flow_control_loop_pipe_sequential_init_U", "Parent" : "95"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142", "Parent" : "0", "Child" : ["130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "151", "153", "155", "157", "159"],
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
					{"ID" : "159", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_809", "Port" : "chunk1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "ref1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "157", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771", "Port" : "ref1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.dp_matrix_V_U", "Parent" : "129"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.last_pe_score_V_U", "Parent" : "129"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.last_pe_scoreIx_V_U", "Parent" : "129"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.local_reference_V_U", "Parent" : "129"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.local_reference_V_1_U", "Parent" : "129"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.local_reference_V_2_U", "Parent" : "129"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.local_reference_V_3_U", "Parent" : "129"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.local_reference_V_4_U", "Parent" : "129"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.local_reference_V_5_U", "Parent" : "129"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.local_reference_V_6_U", "Parent" : "129"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.local_reference_V_7_U", "Parent" : "129"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.local_reference_V_8_U", "Parent" : "129"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.local_reference_V_9_U", "Parent" : "129"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.local_reference_V_10_U", "Parent" : "129"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.local_reference_V_11_U", "Parent" : "129"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.local_reference_V_12_U", "Parent" : "129"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.local_reference_V_13_U", "Parent" : "129"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.local_reference_V_14_U", "Parent" : "129"},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.local_reference_V_15_U", "Parent" : "129"},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2_fu_623", "Parent" : "129", "Child" : ["150"],
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
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2_fu_623.flow_control_loop_pipe_sequential_init_U", "Parent" : "149"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3_fu_629", "Parent" : "129", "Child" : ["152"],
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
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3_fu_629.flow_control_loop_pipe_sequential_init_U", "Parent" : "151"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4_fu_696", "Parent" : "129", "Child" : ["154"],
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
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4_fu_696.flow_control_loop_pipe_sequential_init_U", "Parent" : "153"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_VITIS_LOOP_100_5_fu_763", "Parent" : "129", "Child" : ["156"],
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
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_VITIS_LOOP_100_5_fu_763.flow_control_loop_pipe_sequential_init_U", "Parent" : "155"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771", "Parent" : "129", "Child" : ["158"],
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
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771.flow_control_loop_pipe_sequential_init_U", "Parent" : "157"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809", "Parent" : "129", "Child" : ["160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192"],
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
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U147", "Parent" : "159"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U148", "Parent" : "159"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U149", "Parent" : "159"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U150", "Parent" : "159"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U151", "Parent" : "159"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U152", "Parent" : "159"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U153", "Parent" : "159"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U154", "Parent" : "159"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U155", "Parent" : "159"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U156", "Parent" : "159"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U157", "Parent" : "159"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U158", "Parent" : "159"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U159", "Parent" : "159"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U160", "Parent" : "159"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U161", "Parent" : "159"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U162", "Parent" : "159"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U163", "Parent" : "159"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U164", "Parent" : "159"},
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U165", "Parent" : "159"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U166", "Parent" : "159"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U167", "Parent" : "159"},
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U168", "Parent" : "159"},
	{"ID" : "182", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U169", "Parent" : "159"},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U170", "Parent" : "159"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U171", "Parent" : "159"},
	{"ID" : "185", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U172", "Parent" : "159"},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U173", "Parent" : "159"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U174", "Parent" : "159"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U175", "Parent" : "159"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U176", "Parent" : "159"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U177", "Parent" : "159"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U178", "Parent" : "159"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_142.grp_seq_align_Pipeline_kernel_kernel1_fu_809.flow_control_loop_pipe_sequential_init_U", "Parent" : "159"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150", "Parent" : "0", "Child" : ["194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "215", "217", "219", "221", "223"],
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
					{"ID" : "223", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_809", "Port" : "chunk1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "ref1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "221", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771", "Port" : "ref1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "194", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.dp_matrix_V_U", "Parent" : "193"},
	{"ID" : "195", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.last_pe_score_V_U", "Parent" : "193"},
	{"ID" : "196", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.last_pe_scoreIx_V_U", "Parent" : "193"},
	{"ID" : "197", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.local_reference_V_U", "Parent" : "193"},
	{"ID" : "198", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.local_reference_V_1_U", "Parent" : "193"},
	{"ID" : "199", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.local_reference_V_2_U", "Parent" : "193"},
	{"ID" : "200", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.local_reference_V_3_U", "Parent" : "193"},
	{"ID" : "201", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.local_reference_V_4_U", "Parent" : "193"},
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.local_reference_V_5_U", "Parent" : "193"},
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.local_reference_V_6_U", "Parent" : "193"},
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.local_reference_V_7_U", "Parent" : "193"},
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.local_reference_V_8_U", "Parent" : "193"},
	{"ID" : "206", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.local_reference_V_9_U", "Parent" : "193"},
	{"ID" : "207", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.local_reference_V_10_U", "Parent" : "193"},
	{"ID" : "208", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.local_reference_V_11_U", "Parent" : "193"},
	{"ID" : "209", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.local_reference_V_12_U", "Parent" : "193"},
	{"ID" : "210", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.local_reference_V_13_U", "Parent" : "193"},
	{"ID" : "211", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.local_reference_V_14_U", "Parent" : "193"},
	{"ID" : "212", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.local_reference_V_15_U", "Parent" : "193"},
	{"ID" : "213", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2_fu_623", "Parent" : "193", "Child" : ["214"],
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
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2_fu_623.flow_control_loop_pipe_sequential_init_U", "Parent" : "213"},
	{"ID" : "215", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3_fu_629", "Parent" : "193", "Child" : ["216"],
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
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3_fu_629.flow_control_loop_pipe_sequential_init_U", "Parent" : "215"},
	{"ID" : "217", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4_fu_696", "Parent" : "193", "Child" : ["218"],
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
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4_fu_696.flow_control_loop_pipe_sequential_init_U", "Parent" : "217"},
	{"ID" : "219", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_VITIS_LOOP_100_5_fu_763", "Parent" : "193", "Child" : ["220"],
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
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_VITIS_LOOP_100_5_fu_763.flow_control_loop_pipe_sequential_init_U", "Parent" : "219"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771", "Parent" : "193", "Child" : ["222"],
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
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771.flow_control_loop_pipe_sequential_init_U", "Parent" : "221"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809", "Parent" : "193", "Child" : ["224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256"],
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
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U147", "Parent" : "223"},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U148", "Parent" : "223"},
	{"ID" : "226", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U149", "Parent" : "223"},
	{"ID" : "227", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U150", "Parent" : "223"},
	{"ID" : "228", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U151", "Parent" : "223"},
	{"ID" : "229", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U152", "Parent" : "223"},
	{"ID" : "230", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U153", "Parent" : "223"},
	{"ID" : "231", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U154", "Parent" : "223"},
	{"ID" : "232", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U155", "Parent" : "223"},
	{"ID" : "233", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U156", "Parent" : "223"},
	{"ID" : "234", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U157", "Parent" : "223"},
	{"ID" : "235", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U158", "Parent" : "223"},
	{"ID" : "236", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U159", "Parent" : "223"},
	{"ID" : "237", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U160", "Parent" : "223"},
	{"ID" : "238", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U161", "Parent" : "223"},
	{"ID" : "239", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U162", "Parent" : "223"},
	{"ID" : "240", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U163", "Parent" : "223"},
	{"ID" : "241", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U164", "Parent" : "223"},
	{"ID" : "242", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U165", "Parent" : "223"},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U166", "Parent" : "223"},
	{"ID" : "244", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U167", "Parent" : "223"},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U168", "Parent" : "223"},
	{"ID" : "246", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U169", "Parent" : "223"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U170", "Parent" : "223"},
	{"ID" : "248", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U171", "Parent" : "223"},
	{"ID" : "249", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U172", "Parent" : "223"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U173", "Parent" : "223"},
	{"ID" : "251", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U174", "Parent" : "223"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U175", "Parent" : "223"},
	{"ID" : "253", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U176", "Parent" : "223"},
	{"ID" : "254", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U177", "Parent" : "223"},
	{"ID" : "255", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U178", "Parent" : "223"},
	{"ID" : "256", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_150.grp_seq_align_Pipeline_kernel_kernel1_fu_809.flow_control_loop_pipe_sequential_init_U", "Parent" : "223"},
	{"ID" : "257", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158", "Parent" : "0", "Child" : ["258", "259", "260", "261", "262", "263", "264", "265", "266", "267", "268", "269", "270", "271", "272", "273", "274", "275", "276", "277", "279", "281", "283", "285", "287"],
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
					{"ID" : "287", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_809", "Port" : "chunk1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "ref1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "285", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771", "Port" : "ref1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.dp_matrix_V_U", "Parent" : "257"},
	{"ID" : "259", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.last_pe_score_V_U", "Parent" : "257"},
	{"ID" : "260", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.last_pe_scoreIx_V_U", "Parent" : "257"},
	{"ID" : "261", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.local_reference_V_U", "Parent" : "257"},
	{"ID" : "262", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.local_reference_V_1_U", "Parent" : "257"},
	{"ID" : "263", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.local_reference_V_2_U", "Parent" : "257"},
	{"ID" : "264", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.local_reference_V_3_U", "Parent" : "257"},
	{"ID" : "265", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.local_reference_V_4_U", "Parent" : "257"},
	{"ID" : "266", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.local_reference_V_5_U", "Parent" : "257"},
	{"ID" : "267", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.local_reference_V_6_U", "Parent" : "257"},
	{"ID" : "268", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.local_reference_V_7_U", "Parent" : "257"},
	{"ID" : "269", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.local_reference_V_8_U", "Parent" : "257"},
	{"ID" : "270", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.local_reference_V_9_U", "Parent" : "257"},
	{"ID" : "271", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.local_reference_V_10_U", "Parent" : "257"},
	{"ID" : "272", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.local_reference_V_11_U", "Parent" : "257"},
	{"ID" : "273", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.local_reference_V_12_U", "Parent" : "257"},
	{"ID" : "274", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.local_reference_V_13_U", "Parent" : "257"},
	{"ID" : "275", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.local_reference_V_14_U", "Parent" : "257"},
	{"ID" : "276", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.local_reference_V_15_U", "Parent" : "257"},
	{"ID" : "277", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2_fu_623", "Parent" : "257", "Child" : ["278"],
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
	{"ID" : "278", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2_fu_623.flow_control_loop_pipe_sequential_init_U", "Parent" : "277"},
	{"ID" : "279", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3_fu_629", "Parent" : "257", "Child" : ["280"],
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
	{"ID" : "280", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3_fu_629.flow_control_loop_pipe_sequential_init_U", "Parent" : "279"},
	{"ID" : "281", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4_fu_696", "Parent" : "257", "Child" : ["282"],
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
	{"ID" : "282", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4_fu_696.flow_control_loop_pipe_sequential_init_U", "Parent" : "281"},
	{"ID" : "283", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_VITIS_LOOP_100_5_fu_763", "Parent" : "257", "Child" : ["284"],
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
	{"ID" : "284", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_VITIS_LOOP_100_5_fu_763.flow_control_loop_pipe_sequential_init_U", "Parent" : "283"},
	{"ID" : "285", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771", "Parent" : "257", "Child" : ["286"],
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
	{"ID" : "286", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771.flow_control_loop_pipe_sequential_init_U", "Parent" : "285"},
	{"ID" : "287", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809", "Parent" : "257", "Child" : ["288", "289", "290", "291", "292", "293", "294", "295", "296", "297", "298", "299", "300", "301", "302", "303", "304", "305", "306", "307", "308", "309", "310", "311", "312", "313", "314", "315", "316", "317", "318", "319", "320"],
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
	{"ID" : "288", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U147", "Parent" : "287"},
	{"ID" : "289", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U148", "Parent" : "287"},
	{"ID" : "290", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U149", "Parent" : "287"},
	{"ID" : "291", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U150", "Parent" : "287"},
	{"ID" : "292", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U151", "Parent" : "287"},
	{"ID" : "293", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U152", "Parent" : "287"},
	{"ID" : "294", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U153", "Parent" : "287"},
	{"ID" : "295", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U154", "Parent" : "287"},
	{"ID" : "296", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U155", "Parent" : "287"},
	{"ID" : "297", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U156", "Parent" : "287"},
	{"ID" : "298", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U157", "Parent" : "287"},
	{"ID" : "299", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U158", "Parent" : "287"},
	{"ID" : "300", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U159", "Parent" : "287"},
	{"ID" : "301", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U160", "Parent" : "287"},
	{"ID" : "302", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U161", "Parent" : "287"},
	{"ID" : "303", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U162", "Parent" : "287"},
	{"ID" : "304", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U163", "Parent" : "287"},
	{"ID" : "305", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U164", "Parent" : "287"},
	{"ID" : "306", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U165", "Parent" : "287"},
	{"ID" : "307", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U166", "Parent" : "287"},
	{"ID" : "308", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U167", "Parent" : "287"},
	{"ID" : "309", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U168", "Parent" : "287"},
	{"ID" : "310", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U169", "Parent" : "287"},
	{"ID" : "311", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U170", "Parent" : "287"},
	{"ID" : "312", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U171", "Parent" : "287"},
	{"ID" : "313", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U172", "Parent" : "287"},
	{"ID" : "314", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U173", "Parent" : "287"},
	{"ID" : "315", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U174", "Parent" : "287"},
	{"ID" : "316", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U175", "Parent" : "287"},
	{"ID" : "317", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U176", "Parent" : "287"},
	{"ID" : "318", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U177", "Parent" : "287"},
	{"ID" : "319", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U178", "Parent" : "287"},
	{"ID" : "320", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_158.grp_seq_align_Pipeline_kernel_kernel1_fu_809.flow_control_loop_pipe_sequential_init_U", "Parent" : "287"},
	{"ID" : "321", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166", "Parent" : "0", "Child" : ["322", "323", "324", "325", "326", "327", "328", "329", "330", "331", "332", "333", "334", "335", "336", "337", "338", "339", "340", "341", "343", "345", "347", "349", "351"],
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
					{"ID" : "351", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_809", "Port" : "chunk1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "ref1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "349", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771", "Port" : "ref1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "322", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.dp_matrix_V_U", "Parent" : "321"},
	{"ID" : "323", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.last_pe_score_V_U", "Parent" : "321"},
	{"ID" : "324", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.last_pe_scoreIx_V_U", "Parent" : "321"},
	{"ID" : "325", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.local_reference_V_U", "Parent" : "321"},
	{"ID" : "326", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.local_reference_V_1_U", "Parent" : "321"},
	{"ID" : "327", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.local_reference_V_2_U", "Parent" : "321"},
	{"ID" : "328", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.local_reference_V_3_U", "Parent" : "321"},
	{"ID" : "329", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.local_reference_V_4_U", "Parent" : "321"},
	{"ID" : "330", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.local_reference_V_5_U", "Parent" : "321"},
	{"ID" : "331", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.local_reference_V_6_U", "Parent" : "321"},
	{"ID" : "332", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.local_reference_V_7_U", "Parent" : "321"},
	{"ID" : "333", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.local_reference_V_8_U", "Parent" : "321"},
	{"ID" : "334", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.local_reference_V_9_U", "Parent" : "321"},
	{"ID" : "335", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.local_reference_V_10_U", "Parent" : "321"},
	{"ID" : "336", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.local_reference_V_11_U", "Parent" : "321"},
	{"ID" : "337", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.local_reference_V_12_U", "Parent" : "321"},
	{"ID" : "338", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.local_reference_V_13_U", "Parent" : "321"},
	{"ID" : "339", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.local_reference_V_14_U", "Parent" : "321"},
	{"ID" : "340", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.local_reference_V_15_U", "Parent" : "321"},
	{"ID" : "341", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2_fu_623", "Parent" : "321", "Child" : ["342"],
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
	{"ID" : "342", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2_fu_623.flow_control_loop_pipe_sequential_init_U", "Parent" : "341"},
	{"ID" : "343", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3_fu_629", "Parent" : "321", "Child" : ["344"],
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
	{"ID" : "344", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3_fu_629.flow_control_loop_pipe_sequential_init_U", "Parent" : "343"},
	{"ID" : "345", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4_fu_696", "Parent" : "321", "Child" : ["346"],
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
	{"ID" : "346", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4_fu_696.flow_control_loop_pipe_sequential_init_U", "Parent" : "345"},
	{"ID" : "347", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_VITIS_LOOP_100_5_fu_763", "Parent" : "321", "Child" : ["348"],
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
	{"ID" : "348", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_VITIS_LOOP_100_5_fu_763.flow_control_loop_pipe_sequential_init_U", "Parent" : "347"},
	{"ID" : "349", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771", "Parent" : "321", "Child" : ["350"],
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
	{"ID" : "350", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771.flow_control_loop_pipe_sequential_init_U", "Parent" : "349"},
	{"ID" : "351", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809", "Parent" : "321", "Child" : ["352", "353", "354", "355", "356", "357", "358", "359", "360", "361", "362", "363", "364", "365", "366", "367", "368", "369", "370", "371", "372", "373", "374", "375", "376", "377", "378", "379", "380", "381", "382", "383", "384"],
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
	{"ID" : "352", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U147", "Parent" : "351"},
	{"ID" : "353", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U148", "Parent" : "351"},
	{"ID" : "354", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U149", "Parent" : "351"},
	{"ID" : "355", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U150", "Parent" : "351"},
	{"ID" : "356", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U151", "Parent" : "351"},
	{"ID" : "357", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U152", "Parent" : "351"},
	{"ID" : "358", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U153", "Parent" : "351"},
	{"ID" : "359", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U154", "Parent" : "351"},
	{"ID" : "360", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U155", "Parent" : "351"},
	{"ID" : "361", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U156", "Parent" : "351"},
	{"ID" : "362", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U157", "Parent" : "351"},
	{"ID" : "363", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U158", "Parent" : "351"},
	{"ID" : "364", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U159", "Parent" : "351"},
	{"ID" : "365", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U160", "Parent" : "351"},
	{"ID" : "366", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U161", "Parent" : "351"},
	{"ID" : "367", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U162", "Parent" : "351"},
	{"ID" : "368", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U163", "Parent" : "351"},
	{"ID" : "369", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U164", "Parent" : "351"},
	{"ID" : "370", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U165", "Parent" : "351"},
	{"ID" : "371", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U166", "Parent" : "351"},
	{"ID" : "372", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U167", "Parent" : "351"},
	{"ID" : "373", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U168", "Parent" : "351"},
	{"ID" : "374", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U169", "Parent" : "351"},
	{"ID" : "375", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U170", "Parent" : "351"},
	{"ID" : "376", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U171", "Parent" : "351"},
	{"ID" : "377", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U172", "Parent" : "351"},
	{"ID" : "378", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U173", "Parent" : "351"},
	{"ID" : "379", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U174", "Parent" : "351"},
	{"ID" : "380", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U175", "Parent" : "351"},
	{"ID" : "381", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U176", "Parent" : "351"},
	{"ID" : "382", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U177", "Parent" : "351"},
	{"ID" : "383", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U178", "Parent" : "351"},
	{"ID" : "384", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_166.grp_seq_align_Pipeline_kernel_kernel1_fu_809.flow_control_loop_pipe_sequential_init_U", "Parent" : "351"},
	{"ID" : "385", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174", "Parent" : "0", "Child" : ["386", "387", "388", "389", "390", "391", "392", "393", "394", "395", "396", "397", "398", "399", "400", "401", "402", "403", "404", "405", "407", "409", "411", "413", "415"],
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
					{"ID" : "415", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_809", "Port" : "chunk1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "ref1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "413", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771", "Port" : "ref1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "386", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.dp_matrix_V_U", "Parent" : "385"},
	{"ID" : "387", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.last_pe_score_V_U", "Parent" : "385"},
	{"ID" : "388", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.last_pe_scoreIx_V_U", "Parent" : "385"},
	{"ID" : "389", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.local_reference_V_U", "Parent" : "385"},
	{"ID" : "390", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.local_reference_V_1_U", "Parent" : "385"},
	{"ID" : "391", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.local_reference_V_2_U", "Parent" : "385"},
	{"ID" : "392", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.local_reference_V_3_U", "Parent" : "385"},
	{"ID" : "393", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.local_reference_V_4_U", "Parent" : "385"},
	{"ID" : "394", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.local_reference_V_5_U", "Parent" : "385"},
	{"ID" : "395", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.local_reference_V_6_U", "Parent" : "385"},
	{"ID" : "396", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.local_reference_V_7_U", "Parent" : "385"},
	{"ID" : "397", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.local_reference_V_8_U", "Parent" : "385"},
	{"ID" : "398", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.local_reference_V_9_U", "Parent" : "385"},
	{"ID" : "399", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.local_reference_V_10_U", "Parent" : "385"},
	{"ID" : "400", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.local_reference_V_11_U", "Parent" : "385"},
	{"ID" : "401", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.local_reference_V_12_U", "Parent" : "385"},
	{"ID" : "402", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.local_reference_V_13_U", "Parent" : "385"},
	{"ID" : "403", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.local_reference_V_14_U", "Parent" : "385"},
	{"ID" : "404", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.local_reference_V_15_U", "Parent" : "385"},
	{"ID" : "405", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2_fu_623", "Parent" : "385", "Child" : ["406"],
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
	{"ID" : "406", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2_fu_623.flow_control_loop_pipe_sequential_init_U", "Parent" : "405"},
	{"ID" : "407", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3_fu_629", "Parent" : "385", "Child" : ["408"],
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
	{"ID" : "408", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3_fu_629.flow_control_loop_pipe_sequential_init_U", "Parent" : "407"},
	{"ID" : "409", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4_fu_696", "Parent" : "385", "Child" : ["410"],
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
	{"ID" : "410", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4_fu_696.flow_control_loop_pipe_sequential_init_U", "Parent" : "409"},
	{"ID" : "411", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_VITIS_LOOP_100_5_fu_763", "Parent" : "385", "Child" : ["412"],
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
	{"ID" : "412", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_VITIS_LOOP_100_5_fu_763.flow_control_loop_pipe_sequential_init_U", "Parent" : "411"},
	{"ID" : "413", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771", "Parent" : "385", "Child" : ["414"],
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
	{"ID" : "414", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771.flow_control_loop_pipe_sequential_init_U", "Parent" : "413"},
	{"ID" : "415", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809", "Parent" : "385", "Child" : ["416", "417", "418", "419", "420", "421", "422", "423", "424", "425", "426", "427", "428", "429", "430", "431", "432", "433", "434", "435", "436", "437", "438", "439", "440", "441", "442", "443", "444", "445", "446", "447", "448"],
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
	{"ID" : "416", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U147", "Parent" : "415"},
	{"ID" : "417", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U148", "Parent" : "415"},
	{"ID" : "418", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U149", "Parent" : "415"},
	{"ID" : "419", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U150", "Parent" : "415"},
	{"ID" : "420", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U151", "Parent" : "415"},
	{"ID" : "421", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U152", "Parent" : "415"},
	{"ID" : "422", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U153", "Parent" : "415"},
	{"ID" : "423", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U154", "Parent" : "415"},
	{"ID" : "424", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U155", "Parent" : "415"},
	{"ID" : "425", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U156", "Parent" : "415"},
	{"ID" : "426", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U157", "Parent" : "415"},
	{"ID" : "427", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U158", "Parent" : "415"},
	{"ID" : "428", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U159", "Parent" : "415"},
	{"ID" : "429", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U160", "Parent" : "415"},
	{"ID" : "430", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U161", "Parent" : "415"},
	{"ID" : "431", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U162", "Parent" : "415"},
	{"ID" : "432", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U163", "Parent" : "415"},
	{"ID" : "433", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U164", "Parent" : "415"},
	{"ID" : "434", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U165", "Parent" : "415"},
	{"ID" : "435", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U166", "Parent" : "415"},
	{"ID" : "436", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U167", "Parent" : "415"},
	{"ID" : "437", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U168", "Parent" : "415"},
	{"ID" : "438", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U169", "Parent" : "415"},
	{"ID" : "439", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U170", "Parent" : "415"},
	{"ID" : "440", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U171", "Parent" : "415"},
	{"ID" : "441", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U172", "Parent" : "415"},
	{"ID" : "442", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U173", "Parent" : "415"},
	{"ID" : "443", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U174", "Parent" : "415"},
	{"ID" : "444", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U175", "Parent" : "415"},
	{"ID" : "445", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U176", "Parent" : "415"},
	{"ID" : "446", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U177", "Parent" : "415"},
	{"ID" : "447", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U178", "Parent" : "415"},
	{"ID" : "448", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_174.grp_seq_align_Pipeline_kernel_kernel1_fu_809.flow_control_loop_pipe_sequential_init_U", "Parent" : "415"},
	{"ID" : "449", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182", "Parent" : "0", "Child" : ["450", "451", "452", "453", "454", "455", "456", "457", "458", "459", "460", "461", "462", "463", "464", "465", "466", "467", "468", "469", "471", "473", "475", "477", "479"],
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
					{"ID" : "479", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_809", "Port" : "chunk1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "ref1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "477", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771", "Port" : "ref1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]}]},
	{"ID" : "450", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.dp_matrix_V_U", "Parent" : "449"},
	{"ID" : "451", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.last_pe_score_V_U", "Parent" : "449"},
	{"ID" : "452", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.last_pe_scoreIx_V_U", "Parent" : "449"},
	{"ID" : "453", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.local_reference_V_U", "Parent" : "449"},
	{"ID" : "454", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.local_reference_V_1_U", "Parent" : "449"},
	{"ID" : "455", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.local_reference_V_2_U", "Parent" : "449"},
	{"ID" : "456", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.local_reference_V_3_U", "Parent" : "449"},
	{"ID" : "457", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.local_reference_V_4_U", "Parent" : "449"},
	{"ID" : "458", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.local_reference_V_5_U", "Parent" : "449"},
	{"ID" : "459", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.local_reference_V_6_U", "Parent" : "449"},
	{"ID" : "460", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.local_reference_V_7_U", "Parent" : "449"},
	{"ID" : "461", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.local_reference_V_8_U", "Parent" : "449"},
	{"ID" : "462", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.local_reference_V_9_U", "Parent" : "449"},
	{"ID" : "463", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.local_reference_V_10_U", "Parent" : "449"},
	{"ID" : "464", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.local_reference_V_11_U", "Parent" : "449"},
	{"ID" : "465", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.local_reference_V_12_U", "Parent" : "449"},
	{"ID" : "466", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.local_reference_V_13_U", "Parent" : "449"},
	{"ID" : "467", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.local_reference_V_14_U", "Parent" : "449"},
	{"ID" : "468", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.local_reference_V_15_U", "Parent" : "449"},
	{"ID" : "469", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2_fu_623", "Parent" : "449", "Child" : ["470"],
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
	{"ID" : "470", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2_fu_623.flow_control_loop_pipe_sequential_init_U", "Parent" : "469"},
	{"ID" : "471", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3_fu_629", "Parent" : "449", "Child" : ["472"],
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
	{"ID" : "472", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3_fu_629.flow_control_loop_pipe_sequential_init_U", "Parent" : "471"},
	{"ID" : "473", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4_fu_696", "Parent" : "449", "Child" : ["474"],
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
	{"ID" : "474", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4_fu_696.flow_control_loop_pipe_sequential_init_U", "Parent" : "473"},
	{"ID" : "475", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_VITIS_LOOP_100_5_fu_763", "Parent" : "449", "Child" : ["476"],
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
	{"ID" : "476", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_VITIS_LOOP_100_5_fu_763.flow_control_loop_pipe_sequential_init_U", "Parent" : "475"},
	{"ID" : "477", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771", "Parent" : "449", "Child" : ["478"],
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
	{"ID" : "478", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_VITIS_LOOP_117_6_fu_771.flow_control_loop_pipe_sequential_init_U", "Parent" : "477"},
	{"ID" : "479", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809", "Parent" : "449", "Child" : ["480", "481", "482", "483", "484", "485", "486", "487", "488", "489", "490", "491", "492", "493", "494", "495", "496", "497", "498", "499", "500", "501", "502", "503", "504", "505", "506", "507", "508", "509", "510", "511", "512"],
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
	{"ID" : "480", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U147", "Parent" : "479"},
	{"ID" : "481", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U148", "Parent" : "479"},
	{"ID" : "482", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U149", "Parent" : "479"},
	{"ID" : "483", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U150", "Parent" : "479"},
	{"ID" : "484", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U151", "Parent" : "479"},
	{"ID" : "485", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U152", "Parent" : "479"},
	{"ID" : "486", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U153", "Parent" : "479"},
	{"ID" : "487", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U154", "Parent" : "479"},
	{"ID" : "488", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U155", "Parent" : "479"},
	{"ID" : "489", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U156", "Parent" : "479"},
	{"ID" : "490", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U157", "Parent" : "479"},
	{"ID" : "491", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U158", "Parent" : "479"},
	{"ID" : "492", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U159", "Parent" : "479"},
	{"ID" : "493", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U160", "Parent" : "479"},
	{"ID" : "494", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U161", "Parent" : "479"},
	{"ID" : "495", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U162", "Parent" : "479"},
	{"ID" : "496", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U163", "Parent" : "479"},
	{"ID" : "497", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U164", "Parent" : "479"},
	{"ID" : "498", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U165", "Parent" : "479"},
	{"ID" : "499", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U166", "Parent" : "479"},
	{"ID" : "500", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U167", "Parent" : "479"},
	{"ID" : "501", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U168", "Parent" : "479"},
	{"ID" : "502", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U169", "Parent" : "479"},
	{"ID" : "503", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U170", "Parent" : "479"},
	{"ID" : "504", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U171", "Parent" : "479"},
	{"ID" : "505", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U172", "Parent" : "479"},
	{"ID" : "506", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U173", "Parent" : "479"},
	{"ID" : "507", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U174", "Parent" : "479"},
	{"ID" : "508", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U175", "Parent" : "479"},
	{"ID" : "509", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U176", "Parent" : "479"},
	{"ID" : "510", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U177", "Parent" : "479"},
	{"ID" : "511", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.mux_164_2_1_1_U178", "Parent" : "479"},
	{"ID" : "512", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_fu_182.grp_seq_align_Pipeline_kernel_kernel1_fu_809.flow_control_loop_pipe_sequential_init_U", "Parent" : "479"}]}


set ArgLastReadFirstWriteLatency {
	seq_align_multiple {
		chunk1 {Type I LastRead 1 FirstWrite -1}
		chunk2 {Type I LastRead 1 FirstWrite -1}
		chunk3 {Type I LastRead 1 FirstWrite -1}
		chunk4 {Type I LastRead 1 FirstWrite -1}
		chunk5 {Type I LastRead 1 FirstWrite -1}
		chunk6 {Type I LastRead 1 FirstWrite -1}
		chunk7 {Type I LastRead 1 FirstWrite -1}
		chunk8 {Type I LastRead 1 FirstWrite -1}
		ref1 {Type I LastRead 0 FirstWrite -1}
		ref2 {Type I LastRead 0 FirstWrite -1}
		ref3 {Type I LastRead 0 FirstWrite -1}
		ref4 {Type I LastRead 0 FirstWrite -1}
		ref5 {Type I LastRead 0 FirstWrite -1}
		ref6 {Type I LastRead 0 FirstWrite -1}
		ref7 {Type I LastRead 0 FirstWrite -1}
		ref8 {Type I LastRead 0 FirstWrite -1}
		dummy1_out {Type O LastRead -1 FirstWrite 1}
		dummy2_out {Type O LastRead -1 FirstWrite 1}
		dummy3_out {Type O LastRead -1 FirstWrite 1}
		dummy4_out {Type O LastRead -1 FirstWrite 1}
		dummy5_out {Type O LastRead -1 FirstWrite 1}
		dummy6_out {Type O LastRead -1 FirstWrite 1}
		dummy7_out {Type O LastRead -1 FirstWrite 1}
		dummy8_out {Type O LastRead -1 FirstWrite 1}}
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
		chunk1 {Type I LastRead 1 FirstWrite -1}}
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
		chunk1 {Type I LastRead 1 FirstWrite -1}}
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
		chunk1 {Type I LastRead 1 FirstWrite -1}}
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
		chunk1 {Type I LastRead 1 FirstWrite -1}}
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
		chunk1 {Type I LastRead 1 FirstWrite -1}}
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
		chunk1 {Type I LastRead 1 FirstWrite -1}}
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
		chunk1 {Type I LastRead 1 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "1082352", "Max" : "1082352"}
	, {"Name" : "Interval", "Min" : "1082353", "Max" : "1082353"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	chunk1 { ap_memory {  { chunk1_address0 mem_address 1 10 }  { chunk1_ce0 mem_ce 1 1 }  { chunk1_q0 mem_dout 0 2 } } }
	chunk2 { ap_memory {  { chunk2_address0 mem_address 1 10 }  { chunk2_ce0 mem_ce 1 1 }  { chunk2_q0 mem_dout 0 2 } } }
	chunk3 { ap_memory {  { chunk3_address0 mem_address 1 10 }  { chunk3_ce0 mem_ce 1 1 }  { chunk3_q0 mem_dout 0 2 } } }
	chunk4 { ap_memory {  { chunk4_address0 mem_address 1 10 }  { chunk4_ce0 mem_ce 1 1 }  { chunk4_q0 mem_dout 0 2 } } }
	chunk5 { ap_memory {  { chunk5_address0 mem_address 1 10 }  { chunk5_ce0 mem_ce 1 1 }  { chunk5_q0 mem_dout 0 2 } } }
	chunk6 { ap_memory {  { chunk6_address0 mem_address 1 10 }  { chunk6_ce0 mem_ce 1 1 }  { chunk6_q0 mem_dout 0 2 } } }
	chunk7 { ap_memory {  { chunk7_address0 mem_address 1 10 }  { chunk7_ce0 mem_ce 1 1 }  { chunk7_q0 mem_dout 0 2 } } }
	chunk8 { ap_memory {  { chunk8_address0 mem_address 1 10 }  { chunk8_ce0 mem_ce 1 1 }  { chunk8_q0 mem_dout 0 2 } } }
	ref1 { ap_memory {  { ref1_address0 mem_address 1 10 }  { ref1_ce0 mem_ce 1 1 }  { ref1_q0 mem_dout 0 2 } } }
	ref2 { ap_memory {  { ref2_address0 mem_address 1 10 }  { ref2_ce0 mem_ce 1 1 }  { ref2_q0 mem_dout 0 2 } } }
	ref3 { ap_memory {  { ref3_address0 mem_address 1 10 }  { ref3_ce0 mem_ce 1 1 }  { ref3_q0 mem_dout 0 2 } } }
	ref4 { ap_memory {  { ref4_address0 mem_address 1 10 }  { ref4_ce0 mem_ce 1 1 }  { ref4_q0 mem_dout 0 2 } } }
	ref5 { ap_memory {  { ref5_address0 mem_address 1 10 }  { ref5_ce0 mem_ce 1 1 }  { ref5_q0 mem_dout 0 2 } } }
	ref6 { ap_memory {  { ref6_address0 mem_address 1 10 }  { ref6_ce0 mem_ce 1 1 }  { ref6_q0 mem_dout 0 2 } } }
	ref7 { ap_memory {  { ref7_address0 mem_address 1 10 }  { ref7_ce0 mem_ce 1 1 }  { ref7_q0 mem_dout 0 2 } } }
	ref8 { ap_memory {  { ref8_address0 mem_address 1 10 }  { ref8_ce0 mem_ce 1 1 }  { ref8_q0 mem_dout 0 2 } } }
	dummy1_out { ap_vld {  { dummy1_out out_data 1 10 }  { dummy1_out_ap_vld out_vld 1 1 } } }
	dummy2_out { ap_vld {  { dummy2_out out_data 1 10 }  { dummy2_out_ap_vld out_vld 1 1 } } }
	dummy3_out { ap_vld {  { dummy3_out out_data 1 10 }  { dummy3_out_ap_vld out_vld 1 1 } } }
	dummy4_out { ap_vld {  { dummy4_out out_data 1 10 }  { dummy4_out_ap_vld out_vld 1 1 } } }
	dummy5_out { ap_vld {  { dummy5_out out_data 1 10 }  { dummy5_out_ap_vld out_vld 1 1 } } }
	dummy6_out { ap_vld {  { dummy6_out out_data 1 10 }  { dummy6_out_ap_vld out_vld 1 1 } } }
	dummy7_out { ap_vld {  { dummy7_out out_data 1 10 }  { dummy7_out_ap_vld out_vld 1 1 } } }
	dummy8_out { ap_vld {  { dummy8_out out_data 1 10 }  { dummy8_out_ap_vld out_vld 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
