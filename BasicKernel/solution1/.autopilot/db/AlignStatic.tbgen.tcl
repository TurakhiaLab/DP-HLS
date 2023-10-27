set moduleName AlignStatic
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
set C_modelName {AlignStatic}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_0 int 8 regular {axi_master 0}  }
	{ query int 64 regular  }
	{ gmem int 32 regular {axi_master 2}  }
	{ reference int 64 regular  }
	{ query_length int 32 regular  }
	{ reference_length int 32 regular  }
	{ penalties_open_val int 16 regular  }
	{ penalties_extend_val int 16 regular  }
	{ penalties_mismatch_val int 16 regular  }
	{ penalties_match_val int 16 regular  }
	{ tb_out int 64 regular  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "gmem_0", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_0","offset": { "type": "dynamic","port_name": "querys_0","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "query", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "references","offset": { "type": "dynamic","port_name": "references","bundle": "control"},"direction": "READONLY"},{"cName": "query_lengths","offset": { "type": "dynamic","port_name": "query_lengths","bundle": "control"},"direction": "READONLY"},{"cName": "reference_lengths","offset": { "type": "dynamic","port_name": "reference_lengths","bundle": "control"},"direction": "READONLY"},{"cName": "tb_streams","offset": { "type": "dynamic","port_name": "tb_streams","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "reference", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "query_length", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "reference_length", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "penalties_open_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "penalties_extend_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "penalties_mismatch_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "penalties_match_val", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "tb_out", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 107
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_gmem_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WDATA sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem_0_WSTRB sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem_0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RDATA sc_in sc_lv 8 signal 0 } 
	{ m_axi_gmem_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RFIFONUM sc_in sc_lv 11 signal 0 } 
	{ m_axi_gmem_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ query sc_in sc_lv 64 signal 1 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_RFIFONUM sc_in sc_lv 9 signal 2 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 2 } 
	{ reference sc_in sc_lv 64 signal 3 } 
	{ query_length sc_in sc_lv 32 signal 4 } 
	{ reference_length sc_in sc_lv 32 signal 5 } 
	{ penalties_open_val sc_in sc_lv 16 signal 6 } 
	{ penalties_extend_val sc_in sc_lv 16 signal 7 } 
	{ penalties_mismatch_val sc_in sc_lv 16 signal 8 } 
	{ penalties_match_val sc_in sc_lv 16 signal 9 } 
	{ tb_out sc_in sc_lv 64 signal 10 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_gmem_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_0_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "gmem_0", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "BUSER" }} , 
 	{ "name": "query", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "query", "role": "default" }} , 
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
 	{ "name": "reference", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "reference", "role": "default" }} , 
 	{ "name": "query_length", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "query_length", "role": "default" }} , 
 	{ "name": "reference_length", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "reference_length", "role": "default" }} , 
 	{ "name": "penalties_open_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "penalties_open_val", "role": "default" }} , 
 	{ "name": "penalties_extend_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "penalties_extend_val", "role": "default" }} , 
 	{ "name": "penalties_mismatch_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "penalties_mismatch_val", "role": "default" }} , 
 	{ "name": "penalties_match_val", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "penalties_match_val", "role": "default" }} , 
 	{ "name": "tb_out", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "tb_out", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "45", "47", "53", "54", "55", "59", "61"],
		"CDFG" : "AlignStatic",
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
			{"Name" : "gmem_0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "53", "SubInstance" : "grp_PrepareLocalQuery_fu_851", "Port" : "gmem_0", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "query", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "61", "SubInstance" : "grp_Traceback_fu_1059", "Port" : "gmem", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "55", "SubInstance" : "grp_ChunkCompute_fu_869", "Port" : "gmem", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "reference", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_length", "Type" : "None", "Direction" : "I"},
			{"Name" : "reference_length", "Type" : "None", "Direction" : "I"},
			{"Name" : "penalties_open_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "penalties_extend_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "penalties_mismatch_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "penalties_match_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "tb_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "47", "SubInstance" : "grp_AlignStatic_Pipeline_VITIS_LOOP_463_1_fu_746", "Port" : "local_max_pe", "Inst_start_state" : "7", "Inst_end_state" : "14"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_559_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.init_col_score_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.init_row_score_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_2_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_3_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_4_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_5_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_6_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_7_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_8_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_9_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_10_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_11_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_12_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_13_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_14_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_15_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_16_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_17_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_18_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_19_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_20_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_21_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_22_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_23_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_24_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_25_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_26_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_27_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_28_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_29_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_30_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.tbp_matrix_31_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_init_col_score_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_init_col_score_1_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_init_col_score_2_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.preserved_row_buffer_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.preserved_row_buffer_3_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.preserved_row_buffer_4_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ArrSet_vector_ap_fixed_16_11_5_3_0_3ul_256_1_fu_704", "Parent" : "0",
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
			{"Name" : "val_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ArrSet_vector_ap_fixed_16_11_5_3_0_3ul_256_s_fu_716", "Parent" : "0",
		"CDFG" : "ArrSet_vector_ap_fixed_16_11_5_3_0_3ul_256_s",
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
			{"Name" : "val_val", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_Pipeline_VITIS_LOOP_128_1_fu_728", "Parent" : "0", "Child" : ["44"],
		"CDFG" : "AlignStatic_Pipeline_VITIS_LOOP_128_1",
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
			{"Name" : "penalties_open_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "penalties_extend_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "init_col_score", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_128_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_Pipeline_VITIS_LOOP_128_1_fu_728.flow_control_loop_pipe_sequential_init_U", "Parent" : "43"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_Pipeline_VITIS_LOOP_117_1_fu_737", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "AlignStatic_Pipeline_VITIS_LOOP_117_1",
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
			{"Name" : "penalties_open_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "penalties_extend_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "init_row_score", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_Pipeline_VITIS_LOOP_117_1_fu_737.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_Pipeline_VITIS_LOOP_463_1_fu_746", "Parent" : "0", "Child" : ["48", "49", "50", "51", "52"],
		"CDFG" : "AlignStatic_Pipeline_VITIS_LOOP_463_1",
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
			{"Name" : "max_score", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_chunk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_pe_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_32_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_33_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_34_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_35_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_36_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_37_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_38_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_39_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_40_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_41_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_42_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_43_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_44_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_45_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_46_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_47_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_48_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_49_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_50_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_51_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_52_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_53_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_54_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_55_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_56_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_57_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_58_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_59_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_60_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_61_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_score_62_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_32_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_33_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_34_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_35_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_36_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_37_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_38_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_39_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_40_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_41_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_42_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_43_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_44_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_45_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_46_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_47_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_48_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_49_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_50_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_51_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_52_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_53_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_54_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_55_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_56_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_57_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_58_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_59_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_60_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_61_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_chunk_offset_62_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_32_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_33_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_34_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_35_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_36_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_37_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_38_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_39_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_40_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_41_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_42_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_43_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_44_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_45_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_46_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_47_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_48_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_49_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_50_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_51_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_52_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_53_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_54_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_55_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_56_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_57_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_58_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_59_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_60_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_61_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe_offset_62_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_chunk_offset_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_pe_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_pe_offset_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "local_max_pe", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_463_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_Pipeline_VITIS_LOOP_463_1_fu_746.local_max_pe_U", "Parent" : "47"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_Pipeline_VITIS_LOOP_463_1_fu_746.mux_32_5_16_1_1_U674", "Parent" : "47"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_Pipeline_VITIS_LOOP_463_1_fu_746.mux_32_5_32_1_1_U675", "Parent" : "47"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_Pipeline_VITIS_LOOP_463_1_fu_746.mux_32_5_32_1_1_U676", "Parent" : "47"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_Pipeline_VITIS_LOOP_463_1_fu_746.flow_control_loop_pipe_sequential_init_U", "Parent" : "47"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_PrepareLocalQuery_fu_851", "Parent" : "0",
		"CDFG" : "PrepareLocalQuery",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "32", "EstimateLatencyMax" : "2336",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem_0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_0_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "query", "Type" : "None", "Direction" : "I"},
			{"Name" : "offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "len", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_CopyColScore_fu_860", "Parent" : "0",
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
			{"Name" : "idx", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ChunkCompute_fu_869", "Parent" : "0", "Child" : ["56"],
		"CDFG" : "ChunkCompute",
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
			{"Name" : "chunk_row_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_0_val1", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_1_val2", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_2_val3", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_3_val4", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_4_val5", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_5_val6", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_6_val7", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_7_val8", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_8_val9", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_9_val10", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_10_val11", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_11_val12", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_12_val13", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_13_val14", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_14_val15", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_15_val16", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_16_val17", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_17_val18", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_18_val19", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_19_val20", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_20_val21", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_21_val22", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_22_val23", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_23_val24", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_24_val25", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_25_val26", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_26_val27", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_27_val28", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_28_val29", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_29_val30", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_30_val31", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_31_val32", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "gmem", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "reference", "Type" : "None", "Direction" : "I"},
			{"Name" : "init_col_scr_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "init_col_scr_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "init_col_scr_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "init_col_scr_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "init_col_scr_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "init_col_scr_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "init_row_scr", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "init_row_scr", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "global_query_length", "Type" : "None", "Direction" : "I"},
			{"Name" : "reference_length", "Type" : "None", "Direction" : "I"},
			{"Name" : "penalties_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "penalties_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "penalties_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "penalties_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "preserved_row_scr_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "preserved_row_scr_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "preserved_row_scr_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "preserved_row_scr_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "preserved_row_scr_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "preserved_row_scr_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read51", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read52", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read53", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read54", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read55", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read56", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read57", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read60", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read61", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read62", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read63", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read64", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read65", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read66", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read67", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read68", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read69", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read70", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read71", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read72", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read73", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read74", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read75", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read76", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read77", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read78", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read79", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read80", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read81", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read82", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read83", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read84", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read85", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read86", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read87", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read88", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read89", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read90", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read91", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read92", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read93", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read94", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read95", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read96", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read97", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read98", "Type" : "None", "Direction" : "I"},
			{"Name" : "chunk_tbp_out_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_8", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_9", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_10", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_11", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_12", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_13", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_14", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_15", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_16", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_16", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_17", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_17", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_18", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_18", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_19", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_19", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_20", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_20", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_21", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_21", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_22", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_22", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_23", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_23", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_24", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_24", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_25", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_25", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_26", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_26", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_27", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_27", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_28", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_28", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_29", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_29", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_30", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_30", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_31", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_31", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "idx", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ChunkCompute_fu_869.grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Parent" : "55", "Child" : ["57", "58"],
		"CDFG" : "ChunkCompute_Pipeline_VITIS_LOOP_347_1",
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
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read36", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read37", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read38", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read39", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read40", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read41", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read42", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read43", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read44", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read45", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read46", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read47", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read48", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read49", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read50", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read51", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read52", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read53", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read54", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read55", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read56", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read57", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read58", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read59", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read60", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read61", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read62", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read63", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read64", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read65", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read66", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read67", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read68", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read69", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read70", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read71", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read72", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read73", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read74", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read75", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read76", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read77", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read78", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read79", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read80", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read81", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read82", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read83", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read84", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read85", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read86", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read87", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read88", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read89", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read90", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read91", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read92", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read93", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read94", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read95", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read96", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read97", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read98", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "sub", "Type" : "None", "Direction" : "I"},
			{"Name" : "chunk_row_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "global_query_length", "Type" : "None", "Direction" : "I"},
			{"Name" : "reference_length", "Type" : "None", "Direction" : "I"},
			{"Name" : "idx", "Type" : "None", "Direction" : "I"},
			{"Name" : "penalties_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_1_val2", "Type" : "None", "Direction" : "I"},
			{"Name" : "penalties_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "penalties_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_2_val3", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_3_val4", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_4_val5", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_5_val6", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_6_val7", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_7_val8", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_8_val9", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_9_val10", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_10_val11", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_11_val12", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_12_val13", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_13_val14", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_14_val15", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_15_val16", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_16_val17", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_17_val18", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_18_val19", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_19_val20", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_20_val21", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_21_val22", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_22_val23", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_23_val24", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_24_val25", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_25_val26", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_26_val27", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_27_val28", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_28_val29", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_29_val30", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_30_val31", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_31_val32", "Type" : "None", "Direction" : "I"},
			{"Name" : "penalties_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_query_0_val1", "Type" : "None", "Direction" : "I"},
			{"Name" : "init_row_scr", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "preserved_row_scr_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "preserved_row_scr_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "preserved_row_scr_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reference", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "init_col_scr_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "init_col_scr_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "init_col_scr_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "chunk_tbp_out_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "chunk_tbp_out_31", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "idx_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_1_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_4_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_5_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_6_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_7_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_8_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_9_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_10_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_11_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_1213_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_13_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_14_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_15_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_16_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_17_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_18_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_19_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_20_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_21_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_22_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_2325_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_24_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_25_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_26_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_27_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_28_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_29_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_30_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_1_31_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_4_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_5_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_6_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_7_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_8_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_9_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_10_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_11_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_12_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_13_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_14_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_15_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_16_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_17_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_18_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_19_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_20_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_21_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_22_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_23_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_24_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_25_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_26_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_27_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_28_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_29_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_30_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_3_31_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_0_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_1_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_2_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_3_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_4_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_5_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_6_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_7_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_8_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_9_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_10_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_11_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_12_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_1315_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_14_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_15_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_16_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_17_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_18_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_19_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_20_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_21_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_22_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_23_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_2427_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_25_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_26_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_27_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_28_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_29_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_30_0_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "max_0_31_0_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_347_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter74", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter74", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ChunkCompute_fu_869.grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598.call_ret_UpdatePEMaximum_fu_16690", "Parent" : "56",
		"CDFG" : "UpdatePEMaximum",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "1", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "1",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dp_mem_1_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_2_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_3_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_4_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_5_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_6_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_7_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_8_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_9_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_10_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_11_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_12_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_13_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_14_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_15_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_16_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_17_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_18_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_19_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_20_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_21_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_22_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_23_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_24_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_25_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_26_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_27_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_28_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_29_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_30_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_31_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "dp_mem_32_0_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read1", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read4", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read5", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read6", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read7", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read8", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read9", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read10", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read11", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read12", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read13", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read14", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read15", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read16", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read17", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read18", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read19", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read20", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read21", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read22", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read23", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read24", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read25", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read26", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read27", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read28", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read29", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read30", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read31", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read32", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read103", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read104", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read105", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read106", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read107", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read108", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read109", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read110", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read111", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read112", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read113", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read114", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read115", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read116", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read117", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read118", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read119", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read120", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read121", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read122", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read123", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read124", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read125", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read126", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read127", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read128", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read129", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read130", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read131", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read132", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read133", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read134", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read135", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read136", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read137", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read138", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read139", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read140", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read141", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read142", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read143", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read144", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read145", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read146", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read147", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read148", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read149", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read150", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read151", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read152", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read153", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read154", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read155", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read156", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read157", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read158", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read159", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read160", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read161", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read162", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read163", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read164", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read165", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_5_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_9_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_10_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_11_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_12_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_13_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_14_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_15_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_16_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_17_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_18_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_19_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_20_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_21_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_22_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_23_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_24_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_25_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_26_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_27_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_28_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_29_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_30_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "pe_offset_31_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "chunk_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_4_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_5_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_6_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_7_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_8_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_9_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_10_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_11_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_12_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_13_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_14_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_15_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_16_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_17_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_18_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_19_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_20_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_21_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_22_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_23_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_24_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_25_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_26_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_27_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_28_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_29_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_30_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "predicate_31_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_len", "Type" : "None", "Direction" : "I"},
			{"Name" : "ref_len", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_ChunkCompute_fu_869.grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598.flow_control_loop_pipe_sequential_init_U", "Parent" : "56"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_Pipeline_4_fu_1051", "Parent" : "0", "Child" : ["60"],
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
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_Pipeline_4_fu_1051.flow_control_loop_pipe_sequential_init_U", "Parent" : "59"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Traceback_fu_1059", "Parent" : "0", "Child" : ["62", "65"],
		"CDFG" : "Traceback",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1097", "EstimateLatencyMax" : "1097",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "tbmat_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_8", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_9", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_10", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_11", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_12", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_13", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_14", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_15", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_16", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_17", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_18", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_19", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_20", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_21", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_22", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_23", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_24", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_25", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_26", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_27", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_28", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_29", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_30", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_31", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "gmem", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "traceback_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Traceback_fu_1059.grp_Traceback_Pipeline_traceback_loop_fu_552", "Parent" : "61", "Child" : ["63", "64"],
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
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Traceback_fu_1059.grp_Traceback_Pipeline_traceback_loop_fu_552.mux_32_5_3_1_1_U779", "Parent" : "62"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_Traceback_fu_1059.grp_Traceback_Pipeline_traceback_loop_fu_552.flow_control_loop_pipe_sequential_init_U", "Parent" : "62"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Traceback_fu_1059.mux_32_5_2_1_1_U819", "Parent" : "61"}]}


set ArgLastReadFirstWriteLatency {
	AlignStatic {
		gmem_0 {Type I LastRead 2335 FirstWrite -1}
		query {Type I LastRead 5 FirstWrite -1}
		gmem {Type IO LastRead 72 FirstWrite -1}
		reference {Type I LastRead 5 FirstWrite -1}
		query_length {Type I LastRead 5 FirstWrite -1}
		reference_length {Type I LastRead 5 FirstWrite -1}
		penalties_open_val {Type I LastRead 2 FirstWrite -1}
		penalties_extend_val {Type I LastRead 2 FirstWrite -1}
		penalties_mismatch_val {Type I LastRead 5 FirstWrite -1}
		penalties_match_val {Type I LastRead 5 FirstWrite -1}
		tb_out {Type I LastRead 5 FirstWrite -1}
		local_max_pe {Type I LastRead -1 FirstWrite -1}}
	ArrSet_vector_ap_fixed_16_11_5_3_0_3ul_256_1 {
		arr {Type IO LastRead 128 FirstWrite 128}
		layer {Type I LastRead 127 FirstWrite -1}
		val_val {Type I LastRead 127 FirstWrite -1}}
	ArrSet_vector_ap_fixed_16_11_5_3_0_3ul_256_s {
		arr {Type IO LastRead 128 FirstWrite 128}
		layer {Type I LastRead 127 FirstWrite -1}
		val_val {Type I LastRead 127 FirstWrite -1}}
	AlignStatic_Pipeline_VITIS_LOOP_128_1 {
		penalties_open_val {Type I LastRead 0 FirstWrite -1}
		penalties_extend_val {Type I LastRead 0 FirstWrite -1}
		init_col_score {Type IO LastRead 0 FirstWrite 1}}
	AlignStatic_Pipeline_VITIS_LOOP_117_1 {
		penalties_open_val {Type I LastRead 0 FirstWrite -1}
		penalties_extend_val {Type I LastRead 0 FirstWrite -1}
		init_row_score {Type IO LastRead 0 FirstWrite 1}}
	AlignStatic_Pipeline_VITIS_LOOP_463_1 {
		max_score {Type I LastRead 0 FirstWrite -1}
		max_chunk_offset {Type I LastRead 0 FirstWrite -1}
		max_pe_offset {Type I LastRead 0 FirstWrite -1}
		local_max_score_32_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_33_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_34_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_35_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_36_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_37_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_38_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_39_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_40_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_41_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_42_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_43_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_44_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_45_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_46_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_47_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_48_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_49_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_50_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_51_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_52_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_53_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_54_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_55_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_56_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_57_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_58_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_59_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_60_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_61_2 {Type I LastRead 0 FirstWrite -1}
		local_max_score_62_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_32_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_33_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_34_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_35_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_36_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_37_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_38_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_39_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_40_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_41_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_42_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_43_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_44_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_45_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_46_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_47_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_48_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_49_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_50_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_51_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_52_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_53_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_54_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_55_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_56_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_57_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_58_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_59_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_60_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_61_2 {Type I LastRead 0 FirstWrite -1}
		local_max_chunk_offset_62_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_32_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_33_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_34_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_35_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_36_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_37_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_38_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_39_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_40_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_41_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_42_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_43_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_44_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_45_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_46_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_47_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_48_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_49_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_50_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_51_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_52_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_53_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_54_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_55_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_56_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_57_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_58_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_59_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_60_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_61_2 {Type I LastRead 0 FirstWrite -1}
		local_max_pe_offset_62_2 {Type I LastRead 0 FirstWrite -1}
		max_chunk_offset_1_out {Type O LastRead -1 FirstWrite 1}
		max_pe_1_out {Type O LastRead -1 FirstWrite 1}
		max_pe_offset_1_out {Type O LastRead -1 FirstWrite 1}
		local_max_pe {Type I LastRead -1 FirstWrite -1}}
	PrepareLocalQuery {
		gmem_0 {Type I LastRead 2335 FirstWrite -1}
		query {Type I LastRead 0 FirstWrite -1}
		offset {Type I LastRead 0 FirstWrite -1}
		len {Type I LastRead 0 FirstWrite -1}}
	CopyColScore {
		init_col_scr_local_0 {Type IO LastRead 0 FirstWrite 1}
		init_col_scr_local_1 {Type IO LastRead 0 FirstWrite 1}
		init_col_scr_local_2 {Type IO LastRead 0 FirstWrite 1}
		init_col_scr {Type I LastRead 17 FirstWrite -1}
		idx {Type I LastRead 1 FirstWrite -1}}
	ChunkCompute {
		chunk_row_offset {Type I LastRead 0 FirstWrite -1}
		local_query_0_val1 {Type I LastRead 0 FirstWrite -1}
		local_query_1_val2 {Type I LastRead 0 FirstWrite -1}
		local_query_2_val3 {Type I LastRead 0 FirstWrite -1}
		local_query_3_val4 {Type I LastRead 0 FirstWrite -1}
		local_query_4_val5 {Type I LastRead 0 FirstWrite -1}
		local_query_5_val6 {Type I LastRead 0 FirstWrite -1}
		local_query_6_val7 {Type I LastRead 0 FirstWrite -1}
		local_query_7_val8 {Type I LastRead 0 FirstWrite -1}
		local_query_8_val9 {Type I LastRead 0 FirstWrite -1}
		local_query_9_val10 {Type I LastRead 0 FirstWrite -1}
		local_query_10_val11 {Type I LastRead 0 FirstWrite -1}
		local_query_11_val12 {Type I LastRead 0 FirstWrite -1}
		local_query_12_val13 {Type I LastRead 0 FirstWrite -1}
		local_query_13_val14 {Type I LastRead 0 FirstWrite -1}
		local_query_14_val15 {Type I LastRead 0 FirstWrite -1}
		local_query_15_val16 {Type I LastRead 0 FirstWrite -1}
		local_query_16_val17 {Type I LastRead 0 FirstWrite -1}
		local_query_17_val18 {Type I LastRead 0 FirstWrite -1}
		local_query_18_val19 {Type I LastRead 0 FirstWrite -1}
		local_query_19_val20 {Type I LastRead 0 FirstWrite -1}
		local_query_20_val21 {Type I LastRead 0 FirstWrite -1}
		local_query_21_val22 {Type I LastRead 0 FirstWrite -1}
		local_query_22_val23 {Type I LastRead 0 FirstWrite -1}
		local_query_23_val24 {Type I LastRead 0 FirstWrite -1}
		local_query_24_val25 {Type I LastRead 0 FirstWrite -1}
		local_query_25_val26 {Type I LastRead 0 FirstWrite -1}
		local_query_26_val27 {Type I LastRead 0 FirstWrite -1}
		local_query_27_val28 {Type I LastRead 0 FirstWrite -1}
		local_query_28_val29 {Type I LastRead 0 FirstWrite -1}
		local_query_29_val30 {Type I LastRead 0 FirstWrite -1}
		local_query_30_val31 {Type I LastRead 0 FirstWrite -1}
		local_query_31_val32 {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 72 FirstWrite -1}
		reference {Type I LastRead 0 FirstWrite -1}
		init_col_scr_0 {Type I LastRead 1 FirstWrite -1}
		init_col_scr_1 {Type I LastRead 1 FirstWrite -1}
		init_col_scr_2 {Type I LastRead 0 FirstWrite -1}
		init_row_scr {Type I LastRead 0 FirstWrite -1}
		global_query_length {Type I LastRead 0 FirstWrite -1}
		reference_length {Type I LastRead 0 FirstWrite -1}
		penalties_0_val {Type I LastRead 0 FirstWrite -1}
		penalties_1_val {Type I LastRead 0 FirstWrite -1}
		penalties_2_val {Type I LastRead 0 FirstWrite -1}
		penalties_3_val {Type I LastRead 0 FirstWrite -1}
		preserved_row_scr_0 {Type O LastRead -1 FirstWrite 73}
		preserved_row_scr_1 {Type O LastRead -1 FirstWrite 74}
		preserved_row_scr_2 {Type O LastRead -1 FirstWrite 73}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		p_read48 {Type I LastRead 0 FirstWrite -1}
		p_read49 {Type I LastRead 0 FirstWrite -1}
		p_read50 {Type I LastRead 0 FirstWrite -1}
		p_read51 {Type I LastRead 0 FirstWrite -1}
		p_read52 {Type I LastRead 0 FirstWrite -1}
		p_read53 {Type I LastRead 0 FirstWrite -1}
		p_read54 {Type I LastRead 0 FirstWrite -1}
		p_read55 {Type I LastRead 0 FirstWrite -1}
		p_read56 {Type I LastRead 0 FirstWrite -1}
		p_read57 {Type I LastRead 0 FirstWrite -1}
		p_read58 {Type I LastRead 0 FirstWrite -1}
		p_read59 {Type I LastRead 0 FirstWrite -1}
		p_read60 {Type I LastRead 0 FirstWrite -1}
		p_read61 {Type I LastRead 0 FirstWrite -1}
		p_read62 {Type I LastRead 0 FirstWrite -1}
		p_read63 {Type I LastRead 0 FirstWrite -1}
		p_read64 {Type I LastRead 0 FirstWrite -1}
		p_read65 {Type I LastRead 0 FirstWrite -1}
		p_read66 {Type I LastRead 0 FirstWrite -1}
		p_read67 {Type I LastRead 0 FirstWrite -1}
		p_read68 {Type I LastRead 0 FirstWrite -1}
		p_read69 {Type I LastRead 0 FirstWrite -1}
		p_read70 {Type I LastRead 0 FirstWrite -1}
		p_read71 {Type I LastRead 0 FirstWrite -1}
		p_read72 {Type I LastRead 0 FirstWrite -1}
		p_read73 {Type I LastRead 0 FirstWrite -1}
		p_read74 {Type I LastRead 0 FirstWrite -1}
		p_read75 {Type I LastRead 0 FirstWrite -1}
		p_read76 {Type I LastRead 0 FirstWrite -1}
		p_read77 {Type I LastRead 0 FirstWrite -1}
		p_read78 {Type I LastRead 0 FirstWrite -1}
		p_read79 {Type I LastRead 0 FirstWrite -1}
		p_read80 {Type I LastRead 0 FirstWrite -1}
		p_read81 {Type I LastRead 0 FirstWrite -1}
		p_read82 {Type I LastRead 0 FirstWrite -1}
		p_read83 {Type I LastRead 0 FirstWrite -1}
		p_read84 {Type I LastRead 0 FirstWrite -1}
		p_read85 {Type I LastRead 0 FirstWrite -1}
		p_read86 {Type I LastRead 0 FirstWrite -1}
		p_read87 {Type I LastRead 0 FirstWrite -1}
		p_read88 {Type I LastRead 0 FirstWrite -1}
		p_read89 {Type I LastRead 0 FirstWrite -1}
		p_read90 {Type I LastRead 0 FirstWrite -1}
		p_read91 {Type I LastRead 0 FirstWrite -1}
		p_read92 {Type I LastRead 0 FirstWrite -1}
		p_read93 {Type I LastRead 0 FirstWrite -1}
		p_read94 {Type I LastRead 0 FirstWrite -1}
		p_read95 {Type I LastRead 0 FirstWrite -1}
		p_read96 {Type I LastRead 0 FirstWrite -1}
		p_read97 {Type I LastRead 0 FirstWrite -1}
		p_read98 {Type I LastRead 0 FirstWrite -1}
		chunk_tbp_out_0 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_1 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_2 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_3 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_4 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_5 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_6 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_7 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_8 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_9 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_10 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_11 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_12 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_13 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_14 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_15 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_16 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_17 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_18 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_19 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_20 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_21 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_22 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_23 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_24 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_25 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_26 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_27 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_28 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_29 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_30 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_31 {Type O LastRead -1 FirstWrite 74}
		idx {Type I LastRead 0 FirstWrite -1}}
	ChunkCompute_Pipeline_VITIS_LOOP_347_1 {
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read36 {Type I LastRead 0 FirstWrite -1}
		p_read37 {Type I LastRead 0 FirstWrite -1}
		p_read38 {Type I LastRead 0 FirstWrite -1}
		p_read39 {Type I LastRead 0 FirstWrite -1}
		p_read40 {Type I LastRead 0 FirstWrite -1}
		p_read41 {Type I LastRead 0 FirstWrite -1}
		p_read42 {Type I LastRead 0 FirstWrite -1}
		p_read43 {Type I LastRead 0 FirstWrite -1}
		p_read44 {Type I LastRead 0 FirstWrite -1}
		p_read45 {Type I LastRead 0 FirstWrite -1}
		p_read46 {Type I LastRead 0 FirstWrite -1}
		p_read47 {Type I LastRead 0 FirstWrite -1}
		p_read48 {Type I LastRead 0 FirstWrite -1}
		p_read49 {Type I LastRead 0 FirstWrite -1}
		p_read50 {Type I LastRead 0 FirstWrite -1}
		p_read51 {Type I LastRead 0 FirstWrite -1}
		p_read52 {Type I LastRead 0 FirstWrite -1}
		p_read53 {Type I LastRead 0 FirstWrite -1}
		p_read54 {Type I LastRead 0 FirstWrite -1}
		p_read55 {Type I LastRead 0 FirstWrite -1}
		p_read56 {Type I LastRead 0 FirstWrite -1}
		p_read57 {Type I LastRead 0 FirstWrite -1}
		p_read58 {Type I LastRead 0 FirstWrite -1}
		p_read59 {Type I LastRead 0 FirstWrite -1}
		p_read60 {Type I LastRead 0 FirstWrite -1}
		p_read61 {Type I LastRead 0 FirstWrite -1}
		p_read62 {Type I LastRead 0 FirstWrite -1}
		p_read63 {Type I LastRead 0 FirstWrite -1}
		p_read64 {Type I LastRead 0 FirstWrite -1}
		p_read65 {Type I LastRead 0 FirstWrite -1}
		p_read66 {Type I LastRead 0 FirstWrite -1}
		p_read67 {Type I LastRead 0 FirstWrite -1}
		p_read68 {Type I LastRead 0 FirstWrite -1}
		p_read69 {Type I LastRead 0 FirstWrite -1}
		p_read70 {Type I LastRead 0 FirstWrite -1}
		p_read71 {Type I LastRead 0 FirstWrite -1}
		p_read72 {Type I LastRead 0 FirstWrite -1}
		p_read73 {Type I LastRead 0 FirstWrite -1}
		p_read74 {Type I LastRead 0 FirstWrite -1}
		p_read75 {Type I LastRead 0 FirstWrite -1}
		p_read76 {Type I LastRead 0 FirstWrite -1}
		p_read77 {Type I LastRead 0 FirstWrite -1}
		p_read78 {Type I LastRead 0 FirstWrite -1}
		p_read79 {Type I LastRead 0 FirstWrite -1}
		p_read80 {Type I LastRead 0 FirstWrite -1}
		p_read81 {Type I LastRead 0 FirstWrite -1}
		p_read82 {Type I LastRead 0 FirstWrite -1}
		p_read83 {Type I LastRead 0 FirstWrite -1}
		p_read84 {Type I LastRead 0 FirstWrite -1}
		p_read85 {Type I LastRead 0 FirstWrite -1}
		p_read86 {Type I LastRead 0 FirstWrite -1}
		p_read87 {Type I LastRead 0 FirstWrite -1}
		p_read88 {Type I LastRead 0 FirstWrite -1}
		p_read89 {Type I LastRead 0 FirstWrite -1}
		p_read90 {Type I LastRead 0 FirstWrite -1}
		p_read91 {Type I LastRead 0 FirstWrite -1}
		p_read92 {Type I LastRead 0 FirstWrite -1}
		p_read93 {Type I LastRead 0 FirstWrite -1}
		p_read94 {Type I LastRead 0 FirstWrite -1}
		p_read95 {Type I LastRead 0 FirstWrite -1}
		p_read96 {Type I LastRead 0 FirstWrite -1}
		p_read97 {Type I LastRead 0 FirstWrite -1}
		p_read98 {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		sub {Type I LastRead 0 FirstWrite -1}
		chunk_row_offset {Type I LastRead 0 FirstWrite -1}
		global_query_length {Type I LastRead 0 FirstWrite -1}
		reference_length {Type I LastRead 0 FirstWrite -1}
		idx {Type I LastRead 0 FirstWrite -1}
		penalties_0_val {Type I LastRead 0 FirstWrite -1}
		local_query_1_val2 {Type I LastRead 0 FirstWrite -1}
		penalties_3_val {Type I LastRead 0 FirstWrite -1}
		penalties_2_val {Type I LastRead 0 FirstWrite -1}
		local_query_2_val3 {Type I LastRead 0 FirstWrite -1}
		local_query_3_val4 {Type I LastRead 0 FirstWrite -1}
		local_query_4_val5 {Type I LastRead 0 FirstWrite -1}
		local_query_5_val6 {Type I LastRead 0 FirstWrite -1}
		local_query_6_val7 {Type I LastRead 0 FirstWrite -1}
		local_query_7_val8 {Type I LastRead 0 FirstWrite -1}
		local_query_8_val9 {Type I LastRead 0 FirstWrite -1}
		local_query_9_val10 {Type I LastRead 0 FirstWrite -1}
		local_query_10_val11 {Type I LastRead 0 FirstWrite -1}
		local_query_11_val12 {Type I LastRead 0 FirstWrite -1}
		local_query_12_val13 {Type I LastRead 0 FirstWrite -1}
		local_query_13_val14 {Type I LastRead 0 FirstWrite -1}
		local_query_14_val15 {Type I LastRead 0 FirstWrite -1}
		local_query_15_val16 {Type I LastRead 0 FirstWrite -1}
		local_query_16_val17 {Type I LastRead 0 FirstWrite -1}
		local_query_17_val18 {Type I LastRead 0 FirstWrite -1}
		local_query_18_val19 {Type I LastRead 0 FirstWrite -1}
		local_query_19_val20 {Type I LastRead 0 FirstWrite -1}
		local_query_20_val21 {Type I LastRead 0 FirstWrite -1}
		local_query_21_val22 {Type I LastRead 0 FirstWrite -1}
		local_query_22_val23 {Type I LastRead 0 FirstWrite -1}
		local_query_23_val24 {Type I LastRead 0 FirstWrite -1}
		local_query_24_val25 {Type I LastRead 0 FirstWrite -1}
		local_query_25_val26 {Type I LastRead 0 FirstWrite -1}
		local_query_26_val27 {Type I LastRead 0 FirstWrite -1}
		local_query_27_val28 {Type I LastRead 0 FirstWrite -1}
		local_query_28_val29 {Type I LastRead 0 FirstWrite -1}
		local_query_29_val30 {Type I LastRead 0 FirstWrite -1}
		local_query_30_val31 {Type I LastRead 0 FirstWrite -1}
		local_query_31_val32 {Type I LastRead 0 FirstWrite -1}
		penalties_1_val {Type I LastRead 0 FirstWrite -1}
		local_query_0_val1 {Type I LastRead 0 FirstWrite -1}
		init_row_scr {Type I LastRead 0 FirstWrite -1}
		preserved_row_scr_2 {Type O LastRead -1 FirstWrite 73}
		preserved_row_scr_1 {Type O LastRead -1 FirstWrite 74}
		preserved_row_scr_0 {Type O LastRead -1 FirstWrite 73}
		reference {Type I LastRead 0 FirstWrite -1}
		gmem {Type I LastRead 72 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		init_col_scr_0 {Type I LastRead 1 FirstWrite -1}
		init_col_scr_1 {Type I LastRead 1 FirstWrite -1}
		init_col_scr_2 {Type I LastRead 0 FirstWrite -1}
		chunk_tbp_out_0 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_1 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_2 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_3 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_4 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_5 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_6 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_7 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_8 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_9 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_10 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_11 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_12 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_13 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_14 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_15 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_16 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_17 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_18 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_19 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_20 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_21 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_22 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_23 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_24 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_25 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_26 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_27 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_28 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_29 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_30 {Type O LastRead -1 FirstWrite 74}
		chunk_tbp_out_31 {Type O LastRead -1 FirstWrite 74}
		idx_cast {Type I LastRead 0 FirstWrite -1}
		max_1_0_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_1_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_2_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_3_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_4_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_5_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_6_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_7_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_8_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_9_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_10_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_11_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_1213_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_13_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_14_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_15_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_16_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_17_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_18_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_19_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_20_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_21_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_22_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_2325_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_24_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_25_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_26_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_27_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_28_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_29_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_30_0_out {Type O LastRead -1 FirstWrite 73}
		max_1_31_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_0_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_1_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_2_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_3_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_4_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_5_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_6_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_7_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_8_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_9_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_10_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_11_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_12_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_13_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_14_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_15_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_16_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_17_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_18_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_19_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_20_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_21_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_22_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_23_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_24_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_25_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_26_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_27_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_28_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_29_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_30_0_out {Type O LastRead -1 FirstWrite 73}
		max_3_31_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_0_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_1_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_2_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_3_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_4_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_5_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_6_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_7_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_8_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_9_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_10_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_11_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_12_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_1315_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_14_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_15_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_16_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_17_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_18_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_19_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_20_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_21_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_22_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_23_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_2427_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_25_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_26_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_27_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_28_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_29_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_30_0_out {Type O LastRead -1 FirstWrite 73}
		max_0_31_0_out {Type O LastRead -1 FirstWrite 73}}
	UpdatePEMaximum {
		dp_mem_1_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_2_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_3_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_4_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_5_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_6_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_7_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_8_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_9_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_10_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_11_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_12_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_13_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_14_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_15_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_16_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_17_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_18_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_19_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_20_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_21_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_22_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_23_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_24_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_25_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_26_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_27_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_28_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_29_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_30_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_31_0_0_val {Type I LastRead 0 FirstWrite -1}
		dp_mem_32_0_0_val {Type I LastRead 0 FirstWrite -1}
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		p_read2 {Type I LastRead 0 FirstWrite -1}
		p_read3 {Type I LastRead 0 FirstWrite -1}
		p_read4 {Type I LastRead 0 FirstWrite -1}
		p_read5 {Type I LastRead 0 FirstWrite -1}
		p_read6 {Type I LastRead 0 FirstWrite -1}
		p_read7 {Type I LastRead 0 FirstWrite -1}
		p_read8 {Type I LastRead 0 FirstWrite -1}
		p_read9 {Type I LastRead 0 FirstWrite -1}
		p_read10 {Type I LastRead 0 FirstWrite -1}
		p_read11 {Type I LastRead 0 FirstWrite -1}
		p_read12 {Type I LastRead 0 FirstWrite -1}
		p_read13 {Type I LastRead 0 FirstWrite -1}
		p_read14 {Type I LastRead 0 FirstWrite -1}
		p_read15 {Type I LastRead 0 FirstWrite -1}
		p_read16 {Type I LastRead 0 FirstWrite -1}
		p_read17 {Type I LastRead 0 FirstWrite -1}
		p_read18 {Type I LastRead 0 FirstWrite -1}
		p_read19 {Type I LastRead 0 FirstWrite -1}
		p_read20 {Type I LastRead 0 FirstWrite -1}
		p_read21 {Type I LastRead 0 FirstWrite -1}
		p_read22 {Type I LastRead 0 FirstWrite -1}
		p_read23 {Type I LastRead 0 FirstWrite -1}
		p_read24 {Type I LastRead 0 FirstWrite -1}
		p_read25 {Type I LastRead 0 FirstWrite -1}
		p_read26 {Type I LastRead 0 FirstWrite -1}
		p_read27 {Type I LastRead 0 FirstWrite -1}
		p_read28 {Type I LastRead 0 FirstWrite -1}
		p_read29 {Type I LastRead 0 FirstWrite -1}
		p_read30 {Type I LastRead 0 FirstWrite -1}
		p_read31 {Type I LastRead 0 FirstWrite -1}
		p_read32 {Type I LastRead 0 FirstWrite -1}
		p_read103 {Type I LastRead 0 FirstWrite -1}
		p_read104 {Type I LastRead 0 FirstWrite -1}
		p_read105 {Type I LastRead 0 FirstWrite -1}
		p_read106 {Type I LastRead 0 FirstWrite -1}
		p_read107 {Type I LastRead 0 FirstWrite -1}
		p_read108 {Type I LastRead 0 FirstWrite -1}
		p_read109 {Type I LastRead 0 FirstWrite -1}
		p_read110 {Type I LastRead 0 FirstWrite -1}
		p_read111 {Type I LastRead 0 FirstWrite -1}
		p_read112 {Type I LastRead 0 FirstWrite -1}
		p_read113 {Type I LastRead 0 FirstWrite -1}
		p_read114 {Type I LastRead 0 FirstWrite -1}
		p_read115 {Type I LastRead 0 FirstWrite -1}
		p_read116 {Type I LastRead 0 FirstWrite -1}
		p_read117 {Type I LastRead 0 FirstWrite -1}
		p_read118 {Type I LastRead 0 FirstWrite -1}
		p_read119 {Type I LastRead 0 FirstWrite -1}
		p_read120 {Type I LastRead 0 FirstWrite -1}
		p_read121 {Type I LastRead 0 FirstWrite -1}
		p_read122 {Type I LastRead 0 FirstWrite -1}
		p_read123 {Type I LastRead 0 FirstWrite -1}
		p_read124 {Type I LastRead 0 FirstWrite -1}
		p_read125 {Type I LastRead 0 FirstWrite -1}
		p_read126 {Type I LastRead 0 FirstWrite -1}
		p_read127 {Type I LastRead 0 FirstWrite -1}
		p_read128 {Type I LastRead 0 FirstWrite -1}
		p_read129 {Type I LastRead 0 FirstWrite -1}
		p_read130 {Type I LastRead 0 FirstWrite -1}
		p_read131 {Type I LastRead 0 FirstWrite -1}
		p_read132 {Type I LastRead 0 FirstWrite -1}
		p_read133 {Type I LastRead 0 FirstWrite -1}
		p_read134 {Type I LastRead 0 FirstWrite -1}
		p_read135 {Type I LastRead 0 FirstWrite -1}
		p_read136 {Type I LastRead 0 FirstWrite -1}
		p_read137 {Type I LastRead 0 FirstWrite -1}
		p_read138 {Type I LastRead 0 FirstWrite -1}
		p_read139 {Type I LastRead 0 FirstWrite -1}
		p_read140 {Type I LastRead 0 FirstWrite -1}
		p_read141 {Type I LastRead 0 FirstWrite -1}
		p_read142 {Type I LastRead 0 FirstWrite -1}
		p_read143 {Type I LastRead 0 FirstWrite -1}
		p_read144 {Type I LastRead 0 FirstWrite -1}
		p_read145 {Type I LastRead 0 FirstWrite -1}
		p_read146 {Type I LastRead 0 FirstWrite -1}
		p_read147 {Type I LastRead 0 FirstWrite -1}
		p_read148 {Type I LastRead 0 FirstWrite -1}
		p_read149 {Type I LastRead 0 FirstWrite -1}
		p_read150 {Type I LastRead 0 FirstWrite -1}
		p_read151 {Type I LastRead 0 FirstWrite -1}
		p_read152 {Type I LastRead 0 FirstWrite -1}
		p_read153 {Type I LastRead 0 FirstWrite -1}
		p_read154 {Type I LastRead 0 FirstWrite -1}
		p_read155 {Type I LastRead 0 FirstWrite -1}
		p_read156 {Type I LastRead 0 FirstWrite -1}
		p_read157 {Type I LastRead 0 FirstWrite -1}
		p_read158 {Type I LastRead 0 FirstWrite -1}
		p_read159 {Type I LastRead 0 FirstWrite -1}
		p_read160 {Type I LastRead 0 FirstWrite -1}
		p_read161 {Type I LastRead 0 FirstWrite -1}
		p_read162 {Type I LastRead 0 FirstWrite -1}
		p_read163 {Type I LastRead 0 FirstWrite -1}
		p_read164 {Type I LastRead 0 FirstWrite -1}
		p_read165 {Type I LastRead 0 FirstWrite -1}
		pe_offset_0_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_1_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_2_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_3_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_4_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_5_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_6_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_7_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_8_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_9_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_10_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_11_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_12_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_13_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_14_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_15_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_16_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_17_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_18_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_19_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_20_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_21_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_22_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_23_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_24_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_25_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_26_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_27_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_28_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_29_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_30_val {Type I LastRead 0 FirstWrite -1}
		pe_offset_31_val {Type I LastRead 0 FirstWrite -1}
		chunk_offset {Type I LastRead 0 FirstWrite -1}
		predicate_0_val {Type I LastRead 0 FirstWrite -1}
		predicate_1_val {Type I LastRead 0 FirstWrite -1}
		predicate_2_val {Type I LastRead 0 FirstWrite -1}
		predicate_3_val {Type I LastRead 0 FirstWrite -1}
		predicate_4_val {Type I LastRead 0 FirstWrite -1}
		predicate_5_val {Type I LastRead 0 FirstWrite -1}
		predicate_6_val {Type I LastRead 0 FirstWrite -1}
		predicate_7_val {Type I LastRead 0 FirstWrite -1}
		predicate_8_val {Type I LastRead 0 FirstWrite -1}
		predicate_9_val {Type I LastRead 0 FirstWrite -1}
		predicate_10_val {Type I LastRead 0 FirstWrite -1}
		predicate_11_val {Type I LastRead 0 FirstWrite -1}
		predicate_12_val {Type I LastRead 0 FirstWrite -1}
		predicate_13_val {Type I LastRead 0 FirstWrite -1}
		predicate_14_val {Type I LastRead 0 FirstWrite -1}
		predicate_15_val {Type I LastRead 0 FirstWrite -1}
		predicate_16_val {Type I LastRead 0 FirstWrite -1}
		predicate_17_val {Type I LastRead 0 FirstWrite -1}
		predicate_18_val {Type I LastRead 0 FirstWrite -1}
		predicate_19_val {Type I LastRead 0 FirstWrite -1}
		predicate_20_val {Type I LastRead 0 FirstWrite -1}
		predicate_21_val {Type I LastRead 0 FirstWrite -1}
		predicate_22_val {Type I LastRead 0 FirstWrite -1}
		predicate_23_val {Type I LastRead 0 FirstWrite -1}
		predicate_24_val {Type I LastRead 0 FirstWrite -1}
		predicate_25_val {Type I LastRead 0 FirstWrite -1}
		predicate_26_val {Type I LastRead 0 FirstWrite -1}
		predicate_27_val {Type I LastRead 0 FirstWrite -1}
		predicate_28_val {Type I LastRead 0 FirstWrite -1}
		predicate_29_val {Type I LastRead 0 FirstWrite -1}
		predicate_30_val {Type I LastRead 0 FirstWrite -1}
		predicate_31_val {Type I LastRead 0 FirstWrite -1}
		query_len {Type I LastRead 0 FirstWrite -1}
		ref_len {Type I LastRead 0 FirstWrite -1}}
	AlignStatic_Pipeline_4 {
		init_row_score {Type IO LastRead 0 FirstWrite 1}
		preserved_row_buffer {Type IO LastRead 0 FirstWrite 1}
		preserved_row_buffer_3 {Type IO LastRead 0 FirstWrite 1}
		preserved_row_buffer_4 {Type IO LastRead 0 FirstWrite 1}}
	Traceback {
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
		gmem {Type O LastRead 5 FirstWrite 3}
		traceback_out {Type I LastRead 2 FirstWrite -1}
		max_row {Type I LastRead 0 FirstWrite -1}
		max_col {Type I LastRead 0 FirstWrite -1}}
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
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 32 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 8 }  { m_axi_gmem_0_WSTRB STRB 1 1 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 32 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 8 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RFIFONUM LEN 0 11 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	query { ap_none {  { query in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 32 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 32 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RFIFONUM LEN 0 9 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
	reference { ap_none {  { reference in_data 0 64 } } }
	query_length { ap_none {  { query_length in_data 0 32 } } }
	reference_length { ap_none {  { reference_length in_data 0 32 } } }
	penalties_open_val { ap_none {  { penalties_open_val in_data 0 16 } } }
	penalties_extend_val { ap_none {  { penalties_extend_val in_data 0 16 } } }
	penalties_mismatch_val { ap_none {  { penalties_mismatch_val in_data 0 16 } } }
	penalties_match_val { ap_none {  { penalties_match_val in_data 0 16 } } }
	tb_out { ap_none {  { tb_out in_data 0 64 } } }
}
