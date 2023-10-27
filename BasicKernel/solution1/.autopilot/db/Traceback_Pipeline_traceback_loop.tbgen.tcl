set moduleName Traceback_Pipeline_traceback_loop
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
set C_modelName {Traceback_Pipeline_traceback_loop}
set C_modelType { void 0 }
set C_modelArgList {
	{ max_col int 32 regular  }
	{ max_row int 32 regular  }
	{ zext_ln30 int 2 regular  }
	{ tbmat_0 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_1 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_2 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_3 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_4 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_5 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_6 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_7 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_8 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_9 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_10 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_11 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_12 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_13 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_14 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_15 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_16 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_17 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_18 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_19 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_20 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_21 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_22 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_23 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_24 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_25 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_26 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_27 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_28 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_29 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_30 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ tbmat_31 int 3 regular {array 2048 { 1 3 } 1 1 }  }
	{ traceback_out int 64 regular  }
	{ trunc_ln30_1 int 2 regular  }
	{ gmem int 32 regular {axi_master 1}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "max_col", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "max_row", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln30", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_0", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_1", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_2", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_3", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_4", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_5", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_6", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_7", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_8", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_9", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_10", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_11", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_12", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_13", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_14", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_15", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_16", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_17", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_18", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_19", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_20", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_21", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_22", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_23", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_24", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_25", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_26", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_27", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_28", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_29", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_30", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "tbmat_31", "interface" : "memory", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "traceback_out", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln30_1", "interface" : "wire", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "references","offset": { "type": "dynamic","port_name": "references","bundle": "control"},"direction": "READONLY"},{"cName": "query_lengths","offset": { "type": "dynamic","port_name": "query_lengths","bundle": "control"},"direction": "READONLY"},{"cName": "reference_lengths","offset": { "type": "dynamic","port_name": "reference_lengths","bundle": "control"},"direction": "READONLY"},{"cName": "tb_streams","offset": { "type": "dynamic","port_name": "tb_streams","bundle": "control"},"direction": "WRITEONLY"}]}]} ]}
# RTL Port declarations: 
set portNum 153
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 37 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 37 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 37 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 37 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 37 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 37 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 37 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 37 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 37 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 37 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 37 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 37 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 37 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 37 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 37 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 37 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 37 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 37 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 37 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 37 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 37 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 37 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 37 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 37 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 37 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 37 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 37 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 37 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 37 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 37 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 37 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 37 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 37 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 37 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 37 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 37 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 37 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 37 } 
	{ m_axi_gmem_RFIFONUM sc_in sc_lv 9 signal 37 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 37 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 37 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 37 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 37 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 37 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 37 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 37 } 
	{ max_col sc_in sc_lv 32 signal 0 } 
	{ max_row sc_in sc_lv 32 signal 1 } 
	{ zext_ln30 sc_in sc_lv 2 signal 2 } 
	{ tbmat_0_address0 sc_out sc_lv 11 signal 3 } 
	{ tbmat_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ tbmat_0_q0 sc_in sc_lv 3 signal 3 } 
	{ tbmat_1_address0 sc_out sc_lv 11 signal 4 } 
	{ tbmat_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ tbmat_1_q0 sc_in sc_lv 3 signal 4 } 
	{ tbmat_2_address0 sc_out sc_lv 11 signal 5 } 
	{ tbmat_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ tbmat_2_q0 sc_in sc_lv 3 signal 5 } 
	{ tbmat_3_address0 sc_out sc_lv 11 signal 6 } 
	{ tbmat_3_ce0 sc_out sc_logic 1 signal 6 } 
	{ tbmat_3_q0 sc_in sc_lv 3 signal 6 } 
	{ tbmat_4_address0 sc_out sc_lv 11 signal 7 } 
	{ tbmat_4_ce0 sc_out sc_logic 1 signal 7 } 
	{ tbmat_4_q0 sc_in sc_lv 3 signal 7 } 
	{ tbmat_5_address0 sc_out sc_lv 11 signal 8 } 
	{ tbmat_5_ce0 sc_out sc_logic 1 signal 8 } 
	{ tbmat_5_q0 sc_in sc_lv 3 signal 8 } 
	{ tbmat_6_address0 sc_out sc_lv 11 signal 9 } 
	{ tbmat_6_ce0 sc_out sc_logic 1 signal 9 } 
	{ tbmat_6_q0 sc_in sc_lv 3 signal 9 } 
	{ tbmat_7_address0 sc_out sc_lv 11 signal 10 } 
	{ tbmat_7_ce0 sc_out sc_logic 1 signal 10 } 
	{ tbmat_7_q0 sc_in sc_lv 3 signal 10 } 
	{ tbmat_8_address0 sc_out sc_lv 11 signal 11 } 
	{ tbmat_8_ce0 sc_out sc_logic 1 signal 11 } 
	{ tbmat_8_q0 sc_in sc_lv 3 signal 11 } 
	{ tbmat_9_address0 sc_out sc_lv 11 signal 12 } 
	{ tbmat_9_ce0 sc_out sc_logic 1 signal 12 } 
	{ tbmat_9_q0 sc_in sc_lv 3 signal 12 } 
	{ tbmat_10_address0 sc_out sc_lv 11 signal 13 } 
	{ tbmat_10_ce0 sc_out sc_logic 1 signal 13 } 
	{ tbmat_10_q0 sc_in sc_lv 3 signal 13 } 
	{ tbmat_11_address0 sc_out sc_lv 11 signal 14 } 
	{ tbmat_11_ce0 sc_out sc_logic 1 signal 14 } 
	{ tbmat_11_q0 sc_in sc_lv 3 signal 14 } 
	{ tbmat_12_address0 sc_out sc_lv 11 signal 15 } 
	{ tbmat_12_ce0 sc_out sc_logic 1 signal 15 } 
	{ tbmat_12_q0 sc_in sc_lv 3 signal 15 } 
	{ tbmat_13_address0 sc_out sc_lv 11 signal 16 } 
	{ tbmat_13_ce0 sc_out sc_logic 1 signal 16 } 
	{ tbmat_13_q0 sc_in sc_lv 3 signal 16 } 
	{ tbmat_14_address0 sc_out sc_lv 11 signal 17 } 
	{ tbmat_14_ce0 sc_out sc_logic 1 signal 17 } 
	{ tbmat_14_q0 sc_in sc_lv 3 signal 17 } 
	{ tbmat_15_address0 sc_out sc_lv 11 signal 18 } 
	{ tbmat_15_ce0 sc_out sc_logic 1 signal 18 } 
	{ tbmat_15_q0 sc_in sc_lv 3 signal 18 } 
	{ tbmat_16_address0 sc_out sc_lv 11 signal 19 } 
	{ tbmat_16_ce0 sc_out sc_logic 1 signal 19 } 
	{ tbmat_16_q0 sc_in sc_lv 3 signal 19 } 
	{ tbmat_17_address0 sc_out sc_lv 11 signal 20 } 
	{ tbmat_17_ce0 sc_out sc_logic 1 signal 20 } 
	{ tbmat_17_q0 sc_in sc_lv 3 signal 20 } 
	{ tbmat_18_address0 sc_out sc_lv 11 signal 21 } 
	{ tbmat_18_ce0 sc_out sc_logic 1 signal 21 } 
	{ tbmat_18_q0 sc_in sc_lv 3 signal 21 } 
	{ tbmat_19_address0 sc_out sc_lv 11 signal 22 } 
	{ tbmat_19_ce0 sc_out sc_logic 1 signal 22 } 
	{ tbmat_19_q0 sc_in sc_lv 3 signal 22 } 
	{ tbmat_20_address0 sc_out sc_lv 11 signal 23 } 
	{ tbmat_20_ce0 sc_out sc_logic 1 signal 23 } 
	{ tbmat_20_q0 sc_in sc_lv 3 signal 23 } 
	{ tbmat_21_address0 sc_out sc_lv 11 signal 24 } 
	{ tbmat_21_ce0 sc_out sc_logic 1 signal 24 } 
	{ tbmat_21_q0 sc_in sc_lv 3 signal 24 } 
	{ tbmat_22_address0 sc_out sc_lv 11 signal 25 } 
	{ tbmat_22_ce0 sc_out sc_logic 1 signal 25 } 
	{ tbmat_22_q0 sc_in sc_lv 3 signal 25 } 
	{ tbmat_23_address0 sc_out sc_lv 11 signal 26 } 
	{ tbmat_23_ce0 sc_out sc_logic 1 signal 26 } 
	{ tbmat_23_q0 sc_in sc_lv 3 signal 26 } 
	{ tbmat_24_address0 sc_out sc_lv 11 signal 27 } 
	{ tbmat_24_ce0 sc_out sc_logic 1 signal 27 } 
	{ tbmat_24_q0 sc_in sc_lv 3 signal 27 } 
	{ tbmat_25_address0 sc_out sc_lv 11 signal 28 } 
	{ tbmat_25_ce0 sc_out sc_logic 1 signal 28 } 
	{ tbmat_25_q0 sc_in sc_lv 3 signal 28 } 
	{ tbmat_26_address0 sc_out sc_lv 11 signal 29 } 
	{ tbmat_26_ce0 sc_out sc_logic 1 signal 29 } 
	{ tbmat_26_q0 sc_in sc_lv 3 signal 29 } 
	{ tbmat_27_address0 sc_out sc_lv 11 signal 30 } 
	{ tbmat_27_ce0 sc_out sc_logic 1 signal 30 } 
	{ tbmat_27_q0 sc_in sc_lv 3 signal 30 } 
	{ tbmat_28_address0 sc_out sc_lv 11 signal 31 } 
	{ tbmat_28_ce0 sc_out sc_logic 1 signal 31 } 
	{ tbmat_28_q0 sc_in sc_lv 3 signal 31 } 
	{ tbmat_29_address0 sc_out sc_lv 11 signal 32 } 
	{ tbmat_29_ce0 sc_out sc_logic 1 signal 32 } 
	{ tbmat_29_q0 sc_in sc_lv 3 signal 32 } 
	{ tbmat_30_address0 sc_out sc_lv 11 signal 33 } 
	{ tbmat_30_ce0 sc_out sc_logic 1 signal 33 } 
	{ tbmat_30_q0 sc_in sc_lv 3 signal 33 } 
	{ tbmat_31_address0 sc_out sc_lv 11 signal 34 } 
	{ tbmat_31_ce0 sc_out sc_logic 1 signal 34 } 
	{ tbmat_31_q0 sc_in sc_lv 3 signal 34 } 
	{ traceback_out sc_in sc_lv 64 signal 35 } 
	{ trunc_ln30_1 sc_in sc_lv 2 signal 36 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "gmem", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }} , 
 	{ "name": "max_col", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_col", "role": "default" }} , 
 	{ "name": "max_row", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "max_row", "role": "default" }} , 
 	{ "name": "zext_ln30", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "zext_ln30", "role": "default" }} , 
 	{ "name": "tbmat_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_0", "role": "address0" }} , 
 	{ "name": "tbmat_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_0", "role": "ce0" }} , 
 	{ "name": "tbmat_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_0", "role": "q0" }} , 
 	{ "name": "tbmat_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_1", "role": "address0" }} , 
 	{ "name": "tbmat_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_1", "role": "ce0" }} , 
 	{ "name": "tbmat_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_1", "role": "q0" }} , 
 	{ "name": "tbmat_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_2", "role": "address0" }} , 
 	{ "name": "tbmat_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_2", "role": "ce0" }} , 
 	{ "name": "tbmat_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_2", "role": "q0" }} , 
 	{ "name": "tbmat_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_3", "role": "address0" }} , 
 	{ "name": "tbmat_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_3", "role": "ce0" }} , 
 	{ "name": "tbmat_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_3", "role": "q0" }} , 
 	{ "name": "tbmat_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_4", "role": "address0" }} , 
 	{ "name": "tbmat_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_4", "role": "ce0" }} , 
 	{ "name": "tbmat_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_4", "role": "q0" }} , 
 	{ "name": "tbmat_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_5", "role": "address0" }} , 
 	{ "name": "tbmat_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_5", "role": "ce0" }} , 
 	{ "name": "tbmat_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_5", "role": "q0" }} , 
 	{ "name": "tbmat_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_6", "role": "address0" }} , 
 	{ "name": "tbmat_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_6", "role": "ce0" }} , 
 	{ "name": "tbmat_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_6", "role": "q0" }} , 
 	{ "name": "tbmat_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_7", "role": "address0" }} , 
 	{ "name": "tbmat_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_7", "role": "ce0" }} , 
 	{ "name": "tbmat_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_7", "role": "q0" }} , 
 	{ "name": "tbmat_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_8", "role": "address0" }} , 
 	{ "name": "tbmat_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_8", "role": "ce0" }} , 
 	{ "name": "tbmat_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_8", "role": "q0" }} , 
 	{ "name": "tbmat_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_9", "role": "address0" }} , 
 	{ "name": "tbmat_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_9", "role": "ce0" }} , 
 	{ "name": "tbmat_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_9", "role": "q0" }} , 
 	{ "name": "tbmat_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_10", "role": "address0" }} , 
 	{ "name": "tbmat_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_10", "role": "ce0" }} , 
 	{ "name": "tbmat_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_10", "role": "q0" }} , 
 	{ "name": "tbmat_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_11", "role": "address0" }} , 
 	{ "name": "tbmat_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_11", "role": "ce0" }} , 
 	{ "name": "tbmat_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_11", "role": "q0" }} , 
 	{ "name": "tbmat_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_12", "role": "address0" }} , 
 	{ "name": "tbmat_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_12", "role": "ce0" }} , 
 	{ "name": "tbmat_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_12", "role": "q0" }} , 
 	{ "name": "tbmat_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_13", "role": "address0" }} , 
 	{ "name": "tbmat_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_13", "role": "ce0" }} , 
 	{ "name": "tbmat_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_13", "role": "q0" }} , 
 	{ "name": "tbmat_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_14", "role": "address0" }} , 
 	{ "name": "tbmat_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_14", "role": "ce0" }} , 
 	{ "name": "tbmat_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_14", "role": "q0" }} , 
 	{ "name": "tbmat_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_15", "role": "address0" }} , 
 	{ "name": "tbmat_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_15", "role": "ce0" }} , 
 	{ "name": "tbmat_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_15", "role": "q0" }} , 
 	{ "name": "tbmat_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_16", "role": "address0" }} , 
 	{ "name": "tbmat_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_16", "role": "ce0" }} , 
 	{ "name": "tbmat_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_16", "role": "q0" }} , 
 	{ "name": "tbmat_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_17", "role": "address0" }} , 
 	{ "name": "tbmat_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_17", "role": "ce0" }} , 
 	{ "name": "tbmat_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_17", "role": "q0" }} , 
 	{ "name": "tbmat_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_18", "role": "address0" }} , 
 	{ "name": "tbmat_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_18", "role": "ce0" }} , 
 	{ "name": "tbmat_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_18", "role": "q0" }} , 
 	{ "name": "tbmat_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_19", "role": "address0" }} , 
 	{ "name": "tbmat_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_19", "role": "ce0" }} , 
 	{ "name": "tbmat_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_19", "role": "q0" }} , 
 	{ "name": "tbmat_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_20", "role": "address0" }} , 
 	{ "name": "tbmat_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_20", "role": "ce0" }} , 
 	{ "name": "tbmat_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_20", "role": "q0" }} , 
 	{ "name": "tbmat_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_21", "role": "address0" }} , 
 	{ "name": "tbmat_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_21", "role": "ce0" }} , 
 	{ "name": "tbmat_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_21", "role": "q0" }} , 
 	{ "name": "tbmat_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_22", "role": "address0" }} , 
 	{ "name": "tbmat_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_22", "role": "ce0" }} , 
 	{ "name": "tbmat_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_22", "role": "q0" }} , 
 	{ "name": "tbmat_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_23", "role": "address0" }} , 
 	{ "name": "tbmat_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_23", "role": "ce0" }} , 
 	{ "name": "tbmat_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_23", "role": "q0" }} , 
 	{ "name": "tbmat_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_24", "role": "address0" }} , 
 	{ "name": "tbmat_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_24", "role": "ce0" }} , 
 	{ "name": "tbmat_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_24", "role": "q0" }} , 
 	{ "name": "tbmat_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_25", "role": "address0" }} , 
 	{ "name": "tbmat_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_25", "role": "ce0" }} , 
 	{ "name": "tbmat_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_25", "role": "q0" }} , 
 	{ "name": "tbmat_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_26", "role": "address0" }} , 
 	{ "name": "tbmat_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_26", "role": "ce0" }} , 
 	{ "name": "tbmat_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_26", "role": "q0" }} , 
 	{ "name": "tbmat_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_27", "role": "address0" }} , 
 	{ "name": "tbmat_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_27", "role": "ce0" }} , 
 	{ "name": "tbmat_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_27", "role": "q0" }} , 
 	{ "name": "tbmat_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_28", "role": "address0" }} , 
 	{ "name": "tbmat_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_28", "role": "ce0" }} , 
 	{ "name": "tbmat_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_28", "role": "q0" }} , 
 	{ "name": "tbmat_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_29", "role": "address0" }} , 
 	{ "name": "tbmat_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_29", "role": "ce0" }} , 
 	{ "name": "tbmat_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_29", "role": "q0" }} , 
 	{ "name": "tbmat_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_30", "role": "address0" }} , 
 	{ "name": "tbmat_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_30", "role": "ce0" }} , 
 	{ "name": "tbmat_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_30", "role": "q0" }} , 
 	{ "name": "tbmat_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "tbmat_31", "role": "address0" }} , 
 	{ "name": "tbmat_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "tbmat_31", "role": "ce0" }} , 
 	{ "name": "tbmat_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "tbmat_31", "role": "q0" }} , 
 	{ "name": "traceback_out", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "traceback_out", "role": "default" }} , 
 	{ "name": "trunc_ln30_1", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "trunc_ln30_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "Traceback_Pipeline_traceback_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1094", "EstimateLatencyMax" : "1094",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max_col", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln30", "Type" : "None", "Direction" : "I"},
			{"Name" : "tbmat_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "tbmat_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "traceback_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln30_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AW", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_W", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_B", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "traceback_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter35", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter35", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_5_3_1_1_U779", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	Traceback_Pipeline_traceback_loop {
		max_col {Type I LastRead 0 FirstWrite -1}
		max_row {Type I LastRead 0 FirstWrite -1}
		zext_ln30 {Type I LastRead 0 FirstWrite -1}
		tbmat_0 {Type I LastRead 1 FirstWrite -1}
		tbmat_1 {Type I LastRead 1 FirstWrite -1}
		tbmat_2 {Type I LastRead 1 FirstWrite -1}
		tbmat_3 {Type I LastRead 1 FirstWrite -1}
		tbmat_4 {Type I LastRead 1 FirstWrite -1}
		tbmat_5 {Type I LastRead 1 FirstWrite -1}
		tbmat_6 {Type I LastRead 1 FirstWrite -1}
		tbmat_7 {Type I LastRead 1 FirstWrite -1}
		tbmat_8 {Type I LastRead 1 FirstWrite -1}
		tbmat_9 {Type I LastRead 1 FirstWrite -1}
		tbmat_10 {Type I LastRead 1 FirstWrite -1}
		tbmat_11 {Type I LastRead 1 FirstWrite -1}
		tbmat_12 {Type I LastRead 1 FirstWrite -1}
		tbmat_13 {Type I LastRead 1 FirstWrite -1}
		tbmat_14 {Type I LastRead 1 FirstWrite -1}
		tbmat_15 {Type I LastRead 1 FirstWrite -1}
		tbmat_16 {Type I LastRead 1 FirstWrite -1}
		tbmat_17 {Type I LastRead 1 FirstWrite -1}
		tbmat_18 {Type I LastRead 1 FirstWrite -1}
		tbmat_19 {Type I LastRead 1 FirstWrite -1}
		tbmat_20 {Type I LastRead 1 FirstWrite -1}
		tbmat_21 {Type I LastRead 1 FirstWrite -1}
		tbmat_22 {Type I LastRead 1 FirstWrite -1}
		tbmat_23 {Type I LastRead 1 FirstWrite -1}
		tbmat_24 {Type I LastRead 1 FirstWrite -1}
		tbmat_25 {Type I LastRead 1 FirstWrite -1}
		tbmat_26 {Type I LastRead 1 FirstWrite -1}
		tbmat_27 {Type I LastRead 1 FirstWrite -1}
		tbmat_28 {Type I LastRead 1 FirstWrite -1}
		tbmat_29 {Type I LastRead 1 FirstWrite -1}
		tbmat_30 {Type I LastRead 1 FirstWrite -1}
		tbmat_31 {Type I LastRead 1 FirstWrite -1}
		traceback_out {Type I LastRead 0 FirstWrite -1}
		trunc_ln30_1 {Type I LastRead 0 FirstWrite -1}
		gmem {Type O LastRead 5 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1094", "Max" : "1094"}
	, {"Name" : "Interval", "Min" : "1094", "Max" : "1094"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	max_col { ap_none {  { max_col in_data 0 32 } } }
	max_row { ap_none {  { max_row in_data 0 32 } } }
	zext_ln30 { ap_none {  { zext_ln30 in_data 0 2 } } }
	tbmat_0 { ap_memory {  { tbmat_0_address0 mem_address 1 11 }  { tbmat_0_ce0 mem_ce 1 1 }  { tbmat_0_q0 in_data 0 3 } } }
	tbmat_1 { ap_memory {  { tbmat_1_address0 mem_address 1 11 }  { tbmat_1_ce0 mem_ce 1 1 }  { tbmat_1_q0 in_data 0 3 } } }
	tbmat_2 { ap_memory {  { tbmat_2_address0 mem_address 1 11 }  { tbmat_2_ce0 mem_ce 1 1 }  { tbmat_2_q0 in_data 0 3 } } }
	tbmat_3 { ap_memory {  { tbmat_3_address0 mem_address 1 11 }  { tbmat_3_ce0 mem_ce 1 1 }  { tbmat_3_q0 in_data 0 3 } } }
	tbmat_4 { ap_memory {  { tbmat_4_address0 mem_address 1 11 }  { tbmat_4_ce0 mem_ce 1 1 }  { tbmat_4_q0 in_data 0 3 } } }
	tbmat_5 { ap_memory {  { tbmat_5_address0 mem_address 1 11 }  { tbmat_5_ce0 mem_ce 1 1 }  { tbmat_5_q0 in_data 0 3 } } }
	tbmat_6 { ap_memory {  { tbmat_6_address0 mem_address 1 11 }  { tbmat_6_ce0 mem_ce 1 1 }  { tbmat_6_q0 in_data 0 3 } } }
	tbmat_7 { ap_memory {  { tbmat_7_address0 mem_address 1 11 }  { tbmat_7_ce0 mem_ce 1 1 }  { tbmat_7_q0 in_data 0 3 } } }
	tbmat_8 { ap_memory {  { tbmat_8_address0 mem_address 1 11 }  { tbmat_8_ce0 mem_ce 1 1 }  { tbmat_8_q0 in_data 0 3 } } }
	tbmat_9 { ap_memory {  { tbmat_9_address0 mem_address 1 11 }  { tbmat_9_ce0 mem_ce 1 1 }  { tbmat_9_q0 in_data 0 3 } } }
	tbmat_10 { ap_memory {  { tbmat_10_address0 mem_address 1 11 }  { tbmat_10_ce0 mem_ce 1 1 }  { tbmat_10_q0 in_data 0 3 } } }
	tbmat_11 { ap_memory {  { tbmat_11_address0 mem_address 1 11 }  { tbmat_11_ce0 mem_ce 1 1 }  { tbmat_11_q0 in_data 0 3 } } }
	tbmat_12 { ap_memory {  { tbmat_12_address0 mem_address 1 11 }  { tbmat_12_ce0 mem_ce 1 1 }  { tbmat_12_q0 in_data 0 3 } } }
	tbmat_13 { ap_memory {  { tbmat_13_address0 mem_address 1 11 }  { tbmat_13_ce0 mem_ce 1 1 }  { tbmat_13_q0 in_data 0 3 } } }
	tbmat_14 { ap_memory {  { tbmat_14_address0 mem_address 1 11 }  { tbmat_14_ce0 mem_ce 1 1 }  { tbmat_14_q0 in_data 0 3 } } }
	tbmat_15 { ap_memory {  { tbmat_15_address0 mem_address 1 11 }  { tbmat_15_ce0 mem_ce 1 1 }  { tbmat_15_q0 in_data 0 3 } } }
	tbmat_16 { ap_memory {  { tbmat_16_address0 mem_address 1 11 }  { tbmat_16_ce0 mem_ce 1 1 }  { tbmat_16_q0 in_data 0 3 } } }
	tbmat_17 { ap_memory {  { tbmat_17_address0 mem_address 1 11 }  { tbmat_17_ce0 mem_ce 1 1 }  { tbmat_17_q0 in_data 0 3 } } }
	tbmat_18 { ap_memory {  { tbmat_18_address0 mem_address 1 11 }  { tbmat_18_ce0 mem_ce 1 1 }  { tbmat_18_q0 in_data 0 3 } } }
	tbmat_19 { ap_memory {  { tbmat_19_address0 mem_address 1 11 }  { tbmat_19_ce0 mem_ce 1 1 }  { tbmat_19_q0 in_data 0 3 } } }
	tbmat_20 { ap_memory {  { tbmat_20_address0 mem_address 1 11 }  { tbmat_20_ce0 mem_ce 1 1 }  { tbmat_20_q0 in_data 0 3 } } }
	tbmat_21 { ap_memory {  { tbmat_21_address0 mem_address 1 11 }  { tbmat_21_ce0 mem_ce 1 1 }  { tbmat_21_q0 in_data 0 3 } } }
	tbmat_22 { ap_memory {  { tbmat_22_address0 mem_address 1 11 }  { tbmat_22_ce0 mem_ce 1 1 }  { tbmat_22_q0 in_data 0 3 } } }
	tbmat_23 { ap_memory {  { tbmat_23_address0 mem_address 1 11 }  { tbmat_23_ce0 mem_ce 1 1 }  { tbmat_23_q0 in_data 0 3 } } }
	tbmat_24 { ap_memory {  { tbmat_24_address0 mem_address 1 11 }  { tbmat_24_ce0 mem_ce 1 1 }  { tbmat_24_q0 in_data 0 3 } } }
	tbmat_25 { ap_memory {  { tbmat_25_address0 mem_address 1 11 }  { tbmat_25_ce0 mem_ce 1 1 }  { tbmat_25_q0 in_data 0 3 } } }
	tbmat_26 { ap_memory {  { tbmat_26_address0 mem_address 1 11 }  { tbmat_26_ce0 mem_ce 1 1 }  { tbmat_26_q0 in_data 0 3 } } }
	tbmat_27 { ap_memory {  { tbmat_27_address0 mem_address 1 11 }  { tbmat_27_ce0 mem_ce 1 1 }  { tbmat_27_q0 in_data 0 3 } } }
	tbmat_28 { ap_memory {  { tbmat_28_address0 mem_address 1 11 }  { tbmat_28_ce0 mem_ce 1 1 }  { tbmat_28_q0 in_data 0 3 } } }
	tbmat_29 { ap_memory {  { tbmat_29_address0 mem_address 1 11 }  { tbmat_29_ce0 mem_ce 1 1 }  { tbmat_29_q0 in_data 0 3 } } }
	tbmat_30 { ap_memory {  { tbmat_30_address0 mem_address 1 11 }  { tbmat_30_ce0 mem_ce 1 1 }  { tbmat_30_q0 in_data 0 3 } } }
	tbmat_31 { ap_memory {  { tbmat_31_address0 mem_address 1 11 }  { tbmat_31_ce0 mem_ce 1 1 }  { tbmat_31_q0 in_data 0 3 } } }
	traceback_out { ap_none {  { traceback_out in_data 0 64 } } }
	trunc_ln30_1 { ap_none {  { trunc_ln30_1 in_data 0 2 } } }
	 { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 32 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 32 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RFIFONUM LEN 0 9 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
}
