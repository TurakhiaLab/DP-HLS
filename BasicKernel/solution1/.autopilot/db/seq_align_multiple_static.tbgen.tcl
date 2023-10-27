set moduleName seq_align_multiple_static
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_chain
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {seq_align_multiple_static}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem_0 int 8 regular {axi_master 0}  }
	{ gmem_1 int 8 unused {axi_master 0}  }
	{ gmem_2 int 8 unused {axi_master 0}  }
	{ gmem_3 int 8 unused {axi_master 0}  }
	{ gmem_4 int 8 unused {axi_master 0}  }
	{ gmem_5 int 8 unused {axi_master 0}  }
	{ gmem_6 int 8 unused {axi_master 0}  }
	{ gmem_7 int 8 unused {axi_master 0}  }
	{ gmem_8 int 8 unused {axi_master 0}  }
	{ gmem_9 int 8 unused {axi_master 0}  }
	{ gmem_10 int 8 unused {axi_master 0}  }
	{ gmem_11 int 8 unused {axi_master 0}  }
	{ gmem_12 int 8 unused {axi_master 0}  }
	{ gmem_13 int 8 unused {axi_master 0}  }
	{ gmem_14 int 8 unused {axi_master 0}  }
	{ gmem_15 int 8 unused {axi_master 0}  }
	{ gmem_16 int 8 unused {axi_master 0}  }
	{ gmem_17 int 8 unused {axi_master 0}  }
	{ gmem_18 int 8 unused {axi_master 0}  }
	{ gmem_19 int 8 unused {axi_master 0}  }
	{ gmem_20 int 8 unused {axi_master 0}  }
	{ gmem_21 int 8 unused {axi_master 0}  }
	{ gmem_22 int 8 unused {axi_master 0}  }
	{ gmem_23 int 8 unused {axi_master 0}  }
	{ gmem_24 int 8 unused {axi_master 0}  }
	{ gmem_25 int 8 unused {axi_master 0}  }
	{ gmem_26 int 8 unused {axi_master 0}  }
	{ gmem_27 int 8 unused {axi_master 0}  }
	{ gmem_28 int 8 unused {axi_master 0}  }
	{ gmem_29 int 8 unused {axi_master 0}  }
	{ gmem_30 int 8 unused {axi_master 0}  }
	{ gmem_31 int 8 unused {axi_master 0}  }
	{ gmem int 32 regular {axi_master 2}  }
	{ querys_0 int 64 regular {axi_slave 0}  }
	{ querys_1 int 64 unused {axi_slave 0}  }
	{ querys_2 int 64 unused {axi_slave 0}  }
	{ querys_3 int 64 unused {axi_slave 0}  }
	{ querys_4 int 64 unused {axi_slave 0}  }
	{ querys_5 int 64 unused {axi_slave 0}  }
	{ querys_6 int 64 unused {axi_slave 0}  }
	{ querys_7 int 64 unused {axi_slave 0}  }
	{ querys_8 int 64 unused {axi_slave 0}  }
	{ querys_9 int 64 unused {axi_slave 0}  }
	{ querys_10 int 64 unused {axi_slave 0}  }
	{ querys_11 int 64 unused {axi_slave 0}  }
	{ querys_12 int 64 unused {axi_slave 0}  }
	{ querys_13 int 64 unused {axi_slave 0}  }
	{ querys_14 int 64 unused {axi_slave 0}  }
	{ querys_15 int 64 unused {axi_slave 0}  }
	{ querys_16 int 64 unused {axi_slave 0}  }
	{ querys_17 int 64 unused {axi_slave 0}  }
	{ querys_18 int 64 unused {axi_slave 0}  }
	{ querys_19 int 64 unused {axi_slave 0}  }
	{ querys_20 int 64 unused {axi_slave 0}  }
	{ querys_21 int 64 unused {axi_slave 0}  }
	{ querys_22 int 64 unused {axi_slave 0}  }
	{ querys_23 int 64 unused {axi_slave 0}  }
	{ querys_24 int 64 unused {axi_slave 0}  }
	{ querys_25 int 64 unused {axi_slave 0}  }
	{ querys_26 int 64 unused {axi_slave 0}  }
	{ querys_27 int 64 unused {axi_slave 0}  }
	{ querys_28 int 64 unused {axi_slave 0}  }
	{ querys_29 int 64 unused {axi_slave 0}  }
	{ querys_30 int 64 unused {axi_slave 0}  }
	{ querys_31 int 64 unused {axi_slave 0}  }
	{ references int 64 regular {axi_slave 0}  }
	{ query_lengths int 64 regular {axi_slave 0}  }
	{ reference_lengths int 64 regular {axi_slave 0}  }
	{ penalties int 64 regular {axi_slave 0}  }
	{ tb_streams int 64 regular {axi_slave 0}  }
}
set hasAXIMCache 0
set C_modelArgMapList {[ 
	{ "Name" : "gmem_0", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_0","offset": { "type": "dynamic","port_name": "querys_0","bundle": "control"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem_1", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_1","offset": { "type": "dynamic","port_name": "querys_1","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_2", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_2","offset": { "type": "dynamic","port_name": "querys_2","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_3", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_3","offset": { "type": "dynamic","port_name": "querys_3","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_4", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_4","offset": { "type": "dynamic","port_name": "querys_4","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_5", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_5","offset": { "type": "dynamic","port_name": "querys_5","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_6", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_6","offset": { "type": "dynamic","port_name": "querys_6","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_7", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_7","offset": { "type": "dynamic","port_name": "querys_7","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_8", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_8","offset": { "type": "dynamic","port_name": "querys_8","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_9", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_9","offset": { "type": "dynamic","port_name": "querys_9","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_10", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_10","offset": { "type": "dynamic","port_name": "querys_10","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_11", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_11","offset": { "type": "dynamic","port_name": "querys_11","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_12", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_12","offset": { "type": "dynamic","port_name": "querys_12","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_13", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_13","offset": { "type": "dynamic","port_name": "querys_13","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_14", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_14","offset": { "type": "dynamic","port_name": "querys_14","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_15", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_15","offset": { "type": "dynamic","port_name": "querys_15","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_16", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_16","offset": { "type": "dynamic","port_name": "querys_16","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_17", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_17","offset": { "type": "dynamic","port_name": "querys_17","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_18", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_18","offset": { "type": "dynamic","port_name": "querys_18","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_19", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_19","offset": { "type": "dynamic","port_name": "querys_19","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_20", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_20","offset": { "type": "dynamic","port_name": "querys_20","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_21", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_21","offset": { "type": "dynamic","port_name": "querys_21","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_22", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_22","offset": { "type": "dynamic","port_name": "querys_22","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_23", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_23","offset": { "type": "dynamic","port_name": "querys_23","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_24", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_24","offset": { "type": "dynamic","port_name": "querys_24","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_25", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_25","offset": { "type": "dynamic","port_name": "querys_25","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_26", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_26","offset": { "type": "dynamic","port_name": "querys_26","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_27", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_27","offset": { "type": "dynamic","port_name": "querys_27","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_28", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_28","offset": { "type": "dynamic","port_name": "querys_28","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_29", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_29","offset": { "type": "dynamic","port_name": "querys_29","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_30", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_30","offset": { "type": "dynamic","port_name": "querys_30","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem_31", "interface" : "axi_master", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "querys_31","offset": { "type": "dynamic","port_name": "querys_31","bundle": "control"},}]}]} , 
 	{ "Name" : "gmem", "interface" : "axi_master", "bitwidth" : 32, "direction" : "READWRITE", "bitSlice":[ {"cElement": [{"cName": "references","offset": { "type": "dynamic","port_name": "references","bundle": "control"},"direction": "READONLY"},{"cName": "query_lengths","offset": { "type": "dynamic","port_name": "query_lengths","bundle": "control"},"direction": "READONLY"},{"cName": "reference_lengths","offset": { "type": "dynamic","port_name": "reference_lengths","bundle": "control"},"direction": "READONLY"},{"cName": "tb_streams","offset": { "type": "dynamic","port_name": "tb_streams","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "querys_0", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "querys_1", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "querys_2", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} , 
 	{ "Name" : "querys_3", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":52}, "offset_end" : {"in":63}} , 
 	{ "Name" : "querys_4", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":64}, "offset_end" : {"in":75}} , 
 	{ "Name" : "querys_5", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":76}, "offset_end" : {"in":87}} , 
 	{ "Name" : "querys_6", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":88}, "offset_end" : {"in":99}} , 
 	{ "Name" : "querys_7", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":100}, "offset_end" : {"in":111}} , 
 	{ "Name" : "querys_8", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":112}, "offset_end" : {"in":123}} , 
 	{ "Name" : "querys_9", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":124}, "offset_end" : {"in":135}} , 
 	{ "Name" : "querys_10", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":136}, "offset_end" : {"in":147}} , 
 	{ "Name" : "querys_11", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":148}, "offset_end" : {"in":159}} , 
 	{ "Name" : "querys_12", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":160}, "offset_end" : {"in":171}} , 
 	{ "Name" : "querys_13", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":172}, "offset_end" : {"in":183}} , 
 	{ "Name" : "querys_14", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":184}, "offset_end" : {"in":195}} , 
 	{ "Name" : "querys_15", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":196}, "offset_end" : {"in":207}} , 
 	{ "Name" : "querys_16", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":208}, "offset_end" : {"in":219}} , 
 	{ "Name" : "querys_17", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":220}, "offset_end" : {"in":231}} , 
 	{ "Name" : "querys_18", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":232}, "offset_end" : {"in":243}} , 
 	{ "Name" : "querys_19", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":244}, "offset_end" : {"in":255}} , 
 	{ "Name" : "querys_20", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":256}, "offset_end" : {"in":267}} , 
 	{ "Name" : "querys_21", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":268}, "offset_end" : {"in":279}} , 
 	{ "Name" : "querys_22", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":280}, "offset_end" : {"in":291}} , 
 	{ "Name" : "querys_23", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":292}, "offset_end" : {"in":303}} , 
 	{ "Name" : "querys_24", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":304}, "offset_end" : {"in":315}} , 
 	{ "Name" : "querys_25", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":316}, "offset_end" : {"in":327}} , 
 	{ "Name" : "querys_26", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":328}, "offset_end" : {"in":339}} , 
 	{ "Name" : "querys_27", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":340}, "offset_end" : {"in":351}} , 
 	{ "Name" : "querys_28", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":352}, "offset_end" : {"in":363}} , 
 	{ "Name" : "querys_29", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":364}, "offset_end" : {"in":375}} , 
 	{ "Name" : "querys_30", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":376}, "offset_end" : {"in":387}} , 
 	{ "Name" : "querys_31", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":388}, "offset_end" : {"in":399}} , 
 	{ "Name" : "references", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":400}, "offset_end" : {"in":411}} , 
 	{ "Name" : "query_lengths", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":412}, "offset_end" : {"in":423}} , 
 	{ "Name" : "reference_lengths", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":424}, "offset_end" : {"in":435}} , 
 	{ "Name" : "penalties", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":436}, "offset_end" : {"in":447}} , 
 	{ "Name" : "tb_streams", "interface" : "axi_slave", "bundle":"control","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":448}, "offset_end" : {"in":459}} ]}
# RTL Port declarations: 
set portNum 1505
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem_0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_AWLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_gmem_0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem_0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem_0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_ARLEN sc_out sc_lv 8 signal 0 } 
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
	{ m_axi_gmem_0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem_0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem_0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem_0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem_1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_AWLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem_1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem_1_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem_1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_ARLEN sc_out sc_lv 8 signal 1 } 
	{ m_axi_gmem_1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem_1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem_1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem_1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_gmem_1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem_1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem_1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_1_BUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem_2_AWVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_AWREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_AWADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_2_AWID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_2_AWLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_2_AWSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_2_AWBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_2_AWLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_2_AWCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_2_AWPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_2_AWQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_2_AWREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_2_AWUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_2_WVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_WREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_WDATA sc_out sc_lv 32 signal 2 } 
	{ m_axi_gmem_2_WSTRB sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_2_WLAST sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_WID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_2_WUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_2_ARVALID sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_ARREADY sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_ARADDR sc_out sc_lv 64 signal 2 } 
	{ m_axi_gmem_2_ARID sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_2_ARLEN sc_out sc_lv 8 signal 2 } 
	{ m_axi_gmem_2_ARSIZE sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_2_ARBURST sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_2_ARLOCK sc_out sc_lv 2 signal 2 } 
	{ m_axi_gmem_2_ARCACHE sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_2_ARPROT sc_out sc_lv 3 signal 2 } 
	{ m_axi_gmem_2_ARQOS sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_2_ARREGION sc_out sc_lv 4 signal 2 } 
	{ m_axi_gmem_2_ARUSER sc_out sc_lv 1 signal 2 } 
	{ m_axi_gmem_2_RVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_RREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_RDATA sc_in sc_lv 32 signal 2 } 
	{ m_axi_gmem_2_RLAST sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_RID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_2_RUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_2_RRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_2_BVALID sc_in sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_BREADY sc_out sc_logic 1 signal 2 } 
	{ m_axi_gmem_2_BRESP sc_in sc_lv 2 signal 2 } 
	{ m_axi_gmem_2_BID sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_2_BUSER sc_in sc_lv 1 signal 2 } 
	{ m_axi_gmem_3_AWVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_AWREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_AWADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_3_AWID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_3_AWLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem_3_AWSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_3_AWBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_3_AWLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_3_AWCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_3_AWPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_3_AWQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_3_AWREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_3_AWUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_3_WVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_WREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_WDATA sc_out sc_lv 32 signal 3 } 
	{ m_axi_gmem_3_WSTRB sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_3_WLAST sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_WID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_3_WUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_3_ARVALID sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_ARREADY sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_ARADDR sc_out sc_lv 64 signal 3 } 
	{ m_axi_gmem_3_ARID sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_3_ARLEN sc_out sc_lv 8 signal 3 } 
	{ m_axi_gmem_3_ARSIZE sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_3_ARBURST sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_3_ARLOCK sc_out sc_lv 2 signal 3 } 
	{ m_axi_gmem_3_ARCACHE sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_3_ARPROT sc_out sc_lv 3 signal 3 } 
	{ m_axi_gmem_3_ARQOS sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_3_ARREGION sc_out sc_lv 4 signal 3 } 
	{ m_axi_gmem_3_ARUSER sc_out sc_lv 1 signal 3 } 
	{ m_axi_gmem_3_RVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_RREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_RDATA sc_in sc_lv 32 signal 3 } 
	{ m_axi_gmem_3_RLAST sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_RID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_3_RUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_3_RRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem_3_BVALID sc_in sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_BREADY sc_out sc_logic 1 signal 3 } 
	{ m_axi_gmem_3_BRESP sc_in sc_lv 2 signal 3 } 
	{ m_axi_gmem_3_BID sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_3_BUSER sc_in sc_lv 1 signal 3 } 
	{ m_axi_gmem_4_AWVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_AWREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_AWADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem_4_AWID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_4_AWLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_gmem_4_AWSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem_4_AWBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem_4_AWLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem_4_AWCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_4_AWPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem_4_AWQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_4_AWREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_4_AWUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_4_WVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_WREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_WDATA sc_out sc_lv 32 signal 4 } 
	{ m_axi_gmem_4_WSTRB sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_4_WLAST sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_WID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_4_WUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_4_ARVALID sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_ARREADY sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_ARADDR sc_out sc_lv 64 signal 4 } 
	{ m_axi_gmem_4_ARID sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_4_ARLEN sc_out sc_lv 8 signal 4 } 
	{ m_axi_gmem_4_ARSIZE sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem_4_ARBURST sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem_4_ARLOCK sc_out sc_lv 2 signal 4 } 
	{ m_axi_gmem_4_ARCACHE sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_4_ARPROT sc_out sc_lv 3 signal 4 } 
	{ m_axi_gmem_4_ARQOS sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_4_ARREGION sc_out sc_lv 4 signal 4 } 
	{ m_axi_gmem_4_ARUSER sc_out sc_lv 1 signal 4 } 
	{ m_axi_gmem_4_RVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_RREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_RDATA sc_in sc_lv 32 signal 4 } 
	{ m_axi_gmem_4_RLAST sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_RID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem_4_RUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem_4_RRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem_4_BVALID sc_in sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_BREADY sc_out sc_logic 1 signal 4 } 
	{ m_axi_gmem_4_BRESP sc_in sc_lv 2 signal 4 } 
	{ m_axi_gmem_4_BID sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem_4_BUSER sc_in sc_lv 1 signal 4 } 
	{ m_axi_gmem_5_AWVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_AWREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_AWADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_gmem_5_AWID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_5_AWLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_gmem_5_AWSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem_5_AWBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem_5_AWLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem_5_AWCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_5_AWPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem_5_AWQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_5_AWREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_5_AWUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_5_WVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_WREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_WDATA sc_out sc_lv 32 signal 5 } 
	{ m_axi_gmem_5_WSTRB sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_5_WLAST sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_WID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_5_WUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_5_ARVALID sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_ARREADY sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_ARADDR sc_out sc_lv 64 signal 5 } 
	{ m_axi_gmem_5_ARID sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_5_ARLEN sc_out sc_lv 8 signal 5 } 
	{ m_axi_gmem_5_ARSIZE sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem_5_ARBURST sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem_5_ARLOCK sc_out sc_lv 2 signal 5 } 
	{ m_axi_gmem_5_ARCACHE sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_5_ARPROT sc_out sc_lv 3 signal 5 } 
	{ m_axi_gmem_5_ARQOS sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_5_ARREGION sc_out sc_lv 4 signal 5 } 
	{ m_axi_gmem_5_ARUSER sc_out sc_lv 1 signal 5 } 
	{ m_axi_gmem_5_RVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_RREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_RDATA sc_in sc_lv 32 signal 5 } 
	{ m_axi_gmem_5_RLAST sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_RID sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem_5_RUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem_5_RRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_gmem_5_BVALID sc_in sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_BREADY sc_out sc_logic 1 signal 5 } 
	{ m_axi_gmem_5_BRESP sc_in sc_lv 2 signal 5 } 
	{ m_axi_gmem_5_BID sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem_5_BUSER sc_in sc_lv 1 signal 5 } 
	{ m_axi_gmem_6_AWVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_6_AWREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_6_AWADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem_6_AWID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_6_AWLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_gmem_6_AWSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem_6_AWBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem_6_AWLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem_6_AWCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_6_AWPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem_6_AWQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_6_AWREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_6_AWUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_6_WVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_6_WREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_6_WDATA sc_out sc_lv 32 signal 6 } 
	{ m_axi_gmem_6_WSTRB sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_6_WLAST sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_6_WID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_6_WUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_6_ARVALID sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_6_ARREADY sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_6_ARADDR sc_out sc_lv 64 signal 6 } 
	{ m_axi_gmem_6_ARID sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_6_ARLEN sc_out sc_lv 8 signal 6 } 
	{ m_axi_gmem_6_ARSIZE sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem_6_ARBURST sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem_6_ARLOCK sc_out sc_lv 2 signal 6 } 
	{ m_axi_gmem_6_ARCACHE sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_6_ARPROT sc_out sc_lv 3 signal 6 } 
	{ m_axi_gmem_6_ARQOS sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_6_ARREGION sc_out sc_lv 4 signal 6 } 
	{ m_axi_gmem_6_ARUSER sc_out sc_lv 1 signal 6 } 
	{ m_axi_gmem_6_RVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_6_RREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_6_RDATA sc_in sc_lv 32 signal 6 } 
	{ m_axi_gmem_6_RLAST sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_6_RID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem_6_RUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem_6_RRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem_6_BVALID sc_in sc_logic 1 signal 6 } 
	{ m_axi_gmem_6_BREADY sc_out sc_logic 1 signal 6 } 
	{ m_axi_gmem_6_BRESP sc_in sc_lv 2 signal 6 } 
	{ m_axi_gmem_6_BID sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem_6_BUSER sc_in sc_lv 1 signal 6 } 
	{ m_axi_gmem_7_AWVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_gmem_7_AWREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_gmem_7_AWADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_gmem_7_AWID sc_out sc_lv 1 signal 7 } 
	{ m_axi_gmem_7_AWLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_gmem_7_AWSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_gmem_7_AWBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_gmem_7_AWLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_gmem_7_AWCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_gmem_7_AWPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_gmem_7_AWQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_gmem_7_AWREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_gmem_7_AWUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_gmem_7_WVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_gmem_7_WREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_gmem_7_WDATA sc_out sc_lv 32 signal 7 } 
	{ m_axi_gmem_7_WSTRB sc_out sc_lv 4 signal 7 } 
	{ m_axi_gmem_7_WLAST sc_out sc_logic 1 signal 7 } 
	{ m_axi_gmem_7_WID sc_out sc_lv 1 signal 7 } 
	{ m_axi_gmem_7_WUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_gmem_7_ARVALID sc_out sc_logic 1 signal 7 } 
	{ m_axi_gmem_7_ARREADY sc_in sc_logic 1 signal 7 } 
	{ m_axi_gmem_7_ARADDR sc_out sc_lv 64 signal 7 } 
	{ m_axi_gmem_7_ARID sc_out sc_lv 1 signal 7 } 
	{ m_axi_gmem_7_ARLEN sc_out sc_lv 8 signal 7 } 
	{ m_axi_gmem_7_ARSIZE sc_out sc_lv 3 signal 7 } 
	{ m_axi_gmem_7_ARBURST sc_out sc_lv 2 signal 7 } 
	{ m_axi_gmem_7_ARLOCK sc_out sc_lv 2 signal 7 } 
	{ m_axi_gmem_7_ARCACHE sc_out sc_lv 4 signal 7 } 
	{ m_axi_gmem_7_ARPROT sc_out sc_lv 3 signal 7 } 
	{ m_axi_gmem_7_ARQOS sc_out sc_lv 4 signal 7 } 
	{ m_axi_gmem_7_ARREGION sc_out sc_lv 4 signal 7 } 
	{ m_axi_gmem_7_ARUSER sc_out sc_lv 1 signal 7 } 
	{ m_axi_gmem_7_RVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_gmem_7_RREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_gmem_7_RDATA sc_in sc_lv 32 signal 7 } 
	{ m_axi_gmem_7_RLAST sc_in sc_logic 1 signal 7 } 
	{ m_axi_gmem_7_RID sc_in sc_lv 1 signal 7 } 
	{ m_axi_gmem_7_RUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_gmem_7_RRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_gmem_7_BVALID sc_in sc_logic 1 signal 7 } 
	{ m_axi_gmem_7_BREADY sc_out sc_logic 1 signal 7 } 
	{ m_axi_gmem_7_BRESP sc_in sc_lv 2 signal 7 } 
	{ m_axi_gmem_7_BID sc_in sc_lv 1 signal 7 } 
	{ m_axi_gmem_7_BUSER sc_in sc_lv 1 signal 7 } 
	{ m_axi_gmem_8_AWVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_gmem_8_AWREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_gmem_8_AWADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_gmem_8_AWID sc_out sc_lv 1 signal 8 } 
	{ m_axi_gmem_8_AWLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_gmem_8_AWSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_gmem_8_AWBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_gmem_8_AWLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_gmem_8_AWCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_gmem_8_AWPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_gmem_8_AWQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_gmem_8_AWREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_gmem_8_AWUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_gmem_8_WVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_gmem_8_WREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_gmem_8_WDATA sc_out sc_lv 32 signal 8 } 
	{ m_axi_gmem_8_WSTRB sc_out sc_lv 4 signal 8 } 
	{ m_axi_gmem_8_WLAST sc_out sc_logic 1 signal 8 } 
	{ m_axi_gmem_8_WID sc_out sc_lv 1 signal 8 } 
	{ m_axi_gmem_8_WUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_gmem_8_ARVALID sc_out sc_logic 1 signal 8 } 
	{ m_axi_gmem_8_ARREADY sc_in sc_logic 1 signal 8 } 
	{ m_axi_gmem_8_ARADDR sc_out sc_lv 64 signal 8 } 
	{ m_axi_gmem_8_ARID sc_out sc_lv 1 signal 8 } 
	{ m_axi_gmem_8_ARLEN sc_out sc_lv 8 signal 8 } 
	{ m_axi_gmem_8_ARSIZE sc_out sc_lv 3 signal 8 } 
	{ m_axi_gmem_8_ARBURST sc_out sc_lv 2 signal 8 } 
	{ m_axi_gmem_8_ARLOCK sc_out sc_lv 2 signal 8 } 
	{ m_axi_gmem_8_ARCACHE sc_out sc_lv 4 signal 8 } 
	{ m_axi_gmem_8_ARPROT sc_out sc_lv 3 signal 8 } 
	{ m_axi_gmem_8_ARQOS sc_out sc_lv 4 signal 8 } 
	{ m_axi_gmem_8_ARREGION sc_out sc_lv 4 signal 8 } 
	{ m_axi_gmem_8_ARUSER sc_out sc_lv 1 signal 8 } 
	{ m_axi_gmem_8_RVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_gmem_8_RREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_gmem_8_RDATA sc_in sc_lv 32 signal 8 } 
	{ m_axi_gmem_8_RLAST sc_in sc_logic 1 signal 8 } 
	{ m_axi_gmem_8_RID sc_in sc_lv 1 signal 8 } 
	{ m_axi_gmem_8_RUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_gmem_8_RRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_gmem_8_BVALID sc_in sc_logic 1 signal 8 } 
	{ m_axi_gmem_8_BREADY sc_out sc_logic 1 signal 8 } 
	{ m_axi_gmem_8_BRESP sc_in sc_lv 2 signal 8 } 
	{ m_axi_gmem_8_BID sc_in sc_lv 1 signal 8 } 
	{ m_axi_gmem_8_BUSER sc_in sc_lv 1 signal 8 } 
	{ m_axi_gmem_9_AWVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_gmem_9_AWREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_gmem_9_AWADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_gmem_9_AWID sc_out sc_lv 1 signal 9 } 
	{ m_axi_gmem_9_AWLEN sc_out sc_lv 8 signal 9 } 
	{ m_axi_gmem_9_AWSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_gmem_9_AWBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_gmem_9_AWLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_gmem_9_AWCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_gmem_9_AWPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_gmem_9_AWQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_gmem_9_AWREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_gmem_9_AWUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_gmem_9_WVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_gmem_9_WREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_gmem_9_WDATA sc_out sc_lv 32 signal 9 } 
	{ m_axi_gmem_9_WSTRB sc_out sc_lv 4 signal 9 } 
	{ m_axi_gmem_9_WLAST sc_out sc_logic 1 signal 9 } 
	{ m_axi_gmem_9_WID sc_out sc_lv 1 signal 9 } 
	{ m_axi_gmem_9_WUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_gmem_9_ARVALID sc_out sc_logic 1 signal 9 } 
	{ m_axi_gmem_9_ARREADY sc_in sc_logic 1 signal 9 } 
	{ m_axi_gmem_9_ARADDR sc_out sc_lv 64 signal 9 } 
	{ m_axi_gmem_9_ARID sc_out sc_lv 1 signal 9 } 
	{ m_axi_gmem_9_ARLEN sc_out sc_lv 8 signal 9 } 
	{ m_axi_gmem_9_ARSIZE sc_out sc_lv 3 signal 9 } 
	{ m_axi_gmem_9_ARBURST sc_out sc_lv 2 signal 9 } 
	{ m_axi_gmem_9_ARLOCK sc_out sc_lv 2 signal 9 } 
	{ m_axi_gmem_9_ARCACHE sc_out sc_lv 4 signal 9 } 
	{ m_axi_gmem_9_ARPROT sc_out sc_lv 3 signal 9 } 
	{ m_axi_gmem_9_ARQOS sc_out sc_lv 4 signal 9 } 
	{ m_axi_gmem_9_ARREGION sc_out sc_lv 4 signal 9 } 
	{ m_axi_gmem_9_ARUSER sc_out sc_lv 1 signal 9 } 
	{ m_axi_gmem_9_RVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_gmem_9_RREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_gmem_9_RDATA sc_in sc_lv 32 signal 9 } 
	{ m_axi_gmem_9_RLAST sc_in sc_logic 1 signal 9 } 
	{ m_axi_gmem_9_RID sc_in sc_lv 1 signal 9 } 
	{ m_axi_gmem_9_RUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_gmem_9_RRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_gmem_9_BVALID sc_in sc_logic 1 signal 9 } 
	{ m_axi_gmem_9_BREADY sc_out sc_logic 1 signal 9 } 
	{ m_axi_gmem_9_BRESP sc_in sc_lv 2 signal 9 } 
	{ m_axi_gmem_9_BID sc_in sc_lv 1 signal 9 } 
	{ m_axi_gmem_9_BUSER sc_in sc_lv 1 signal 9 } 
	{ m_axi_gmem_10_AWVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_gmem_10_AWREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_gmem_10_AWADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_gmem_10_AWID sc_out sc_lv 1 signal 10 } 
	{ m_axi_gmem_10_AWLEN sc_out sc_lv 8 signal 10 } 
	{ m_axi_gmem_10_AWSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_gmem_10_AWBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_gmem_10_AWLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_gmem_10_AWCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_gmem_10_AWPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_gmem_10_AWQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_gmem_10_AWREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_gmem_10_AWUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_gmem_10_WVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_gmem_10_WREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_gmem_10_WDATA sc_out sc_lv 32 signal 10 } 
	{ m_axi_gmem_10_WSTRB sc_out sc_lv 4 signal 10 } 
	{ m_axi_gmem_10_WLAST sc_out sc_logic 1 signal 10 } 
	{ m_axi_gmem_10_WID sc_out sc_lv 1 signal 10 } 
	{ m_axi_gmem_10_WUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_gmem_10_ARVALID sc_out sc_logic 1 signal 10 } 
	{ m_axi_gmem_10_ARREADY sc_in sc_logic 1 signal 10 } 
	{ m_axi_gmem_10_ARADDR sc_out sc_lv 64 signal 10 } 
	{ m_axi_gmem_10_ARID sc_out sc_lv 1 signal 10 } 
	{ m_axi_gmem_10_ARLEN sc_out sc_lv 8 signal 10 } 
	{ m_axi_gmem_10_ARSIZE sc_out sc_lv 3 signal 10 } 
	{ m_axi_gmem_10_ARBURST sc_out sc_lv 2 signal 10 } 
	{ m_axi_gmem_10_ARLOCK sc_out sc_lv 2 signal 10 } 
	{ m_axi_gmem_10_ARCACHE sc_out sc_lv 4 signal 10 } 
	{ m_axi_gmem_10_ARPROT sc_out sc_lv 3 signal 10 } 
	{ m_axi_gmem_10_ARQOS sc_out sc_lv 4 signal 10 } 
	{ m_axi_gmem_10_ARREGION sc_out sc_lv 4 signal 10 } 
	{ m_axi_gmem_10_ARUSER sc_out sc_lv 1 signal 10 } 
	{ m_axi_gmem_10_RVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_gmem_10_RREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_gmem_10_RDATA sc_in sc_lv 32 signal 10 } 
	{ m_axi_gmem_10_RLAST sc_in sc_logic 1 signal 10 } 
	{ m_axi_gmem_10_RID sc_in sc_lv 1 signal 10 } 
	{ m_axi_gmem_10_RUSER sc_in sc_lv 1 signal 10 } 
	{ m_axi_gmem_10_RRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_gmem_10_BVALID sc_in sc_logic 1 signal 10 } 
	{ m_axi_gmem_10_BREADY sc_out sc_logic 1 signal 10 } 
	{ m_axi_gmem_10_BRESP sc_in sc_lv 2 signal 10 } 
	{ m_axi_gmem_10_BID sc_in sc_lv 1 signal 10 } 
	{ m_axi_gmem_10_BUSER sc_in sc_lv 1 signal 10 } 
	{ m_axi_gmem_11_AWVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_gmem_11_AWREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_gmem_11_AWADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_gmem_11_AWID sc_out sc_lv 1 signal 11 } 
	{ m_axi_gmem_11_AWLEN sc_out sc_lv 8 signal 11 } 
	{ m_axi_gmem_11_AWSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_gmem_11_AWBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_gmem_11_AWLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_gmem_11_AWCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_gmem_11_AWPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_gmem_11_AWQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_gmem_11_AWREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_gmem_11_AWUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_gmem_11_WVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_gmem_11_WREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_gmem_11_WDATA sc_out sc_lv 32 signal 11 } 
	{ m_axi_gmem_11_WSTRB sc_out sc_lv 4 signal 11 } 
	{ m_axi_gmem_11_WLAST sc_out sc_logic 1 signal 11 } 
	{ m_axi_gmem_11_WID sc_out sc_lv 1 signal 11 } 
	{ m_axi_gmem_11_WUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_gmem_11_ARVALID sc_out sc_logic 1 signal 11 } 
	{ m_axi_gmem_11_ARREADY sc_in sc_logic 1 signal 11 } 
	{ m_axi_gmem_11_ARADDR sc_out sc_lv 64 signal 11 } 
	{ m_axi_gmem_11_ARID sc_out sc_lv 1 signal 11 } 
	{ m_axi_gmem_11_ARLEN sc_out sc_lv 8 signal 11 } 
	{ m_axi_gmem_11_ARSIZE sc_out sc_lv 3 signal 11 } 
	{ m_axi_gmem_11_ARBURST sc_out sc_lv 2 signal 11 } 
	{ m_axi_gmem_11_ARLOCK sc_out sc_lv 2 signal 11 } 
	{ m_axi_gmem_11_ARCACHE sc_out sc_lv 4 signal 11 } 
	{ m_axi_gmem_11_ARPROT sc_out sc_lv 3 signal 11 } 
	{ m_axi_gmem_11_ARQOS sc_out sc_lv 4 signal 11 } 
	{ m_axi_gmem_11_ARREGION sc_out sc_lv 4 signal 11 } 
	{ m_axi_gmem_11_ARUSER sc_out sc_lv 1 signal 11 } 
	{ m_axi_gmem_11_RVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_gmem_11_RREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_gmem_11_RDATA sc_in sc_lv 32 signal 11 } 
	{ m_axi_gmem_11_RLAST sc_in sc_logic 1 signal 11 } 
	{ m_axi_gmem_11_RID sc_in sc_lv 1 signal 11 } 
	{ m_axi_gmem_11_RUSER sc_in sc_lv 1 signal 11 } 
	{ m_axi_gmem_11_RRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_gmem_11_BVALID sc_in sc_logic 1 signal 11 } 
	{ m_axi_gmem_11_BREADY sc_out sc_logic 1 signal 11 } 
	{ m_axi_gmem_11_BRESP sc_in sc_lv 2 signal 11 } 
	{ m_axi_gmem_11_BID sc_in sc_lv 1 signal 11 } 
	{ m_axi_gmem_11_BUSER sc_in sc_lv 1 signal 11 } 
	{ m_axi_gmem_12_AWVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_gmem_12_AWREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_gmem_12_AWADDR sc_out sc_lv 64 signal 12 } 
	{ m_axi_gmem_12_AWID sc_out sc_lv 1 signal 12 } 
	{ m_axi_gmem_12_AWLEN sc_out sc_lv 8 signal 12 } 
	{ m_axi_gmem_12_AWSIZE sc_out sc_lv 3 signal 12 } 
	{ m_axi_gmem_12_AWBURST sc_out sc_lv 2 signal 12 } 
	{ m_axi_gmem_12_AWLOCK sc_out sc_lv 2 signal 12 } 
	{ m_axi_gmem_12_AWCACHE sc_out sc_lv 4 signal 12 } 
	{ m_axi_gmem_12_AWPROT sc_out sc_lv 3 signal 12 } 
	{ m_axi_gmem_12_AWQOS sc_out sc_lv 4 signal 12 } 
	{ m_axi_gmem_12_AWREGION sc_out sc_lv 4 signal 12 } 
	{ m_axi_gmem_12_AWUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_gmem_12_WVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_gmem_12_WREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_gmem_12_WDATA sc_out sc_lv 32 signal 12 } 
	{ m_axi_gmem_12_WSTRB sc_out sc_lv 4 signal 12 } 
	{ m_axi_gmem_12_WLAST sc_out sc_logic 1 signal 12 } 
	{ m_axi_gmem_12_WID sc_out sc_lv 1 signal 12 } 
	{ m_axi_gmem_12_WUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_gmem_12_ARVALID sc_out sc_logic 1 signal 12 } 
	{ m_axi_gmem_12_ARREADY sc_in sc_logic 1 signal 12 } 
	{ m_axi_gmem_12_ARADDR sc_out sc_lv 64 signal 12 } 
	{ m_axi_gmem_12_ARID sc_out sc_lv 1 signal 12 } 
	{ m_axi_gmem_12_ARLEN sc_out sc_lv 8 signal 12 } 
	{ m_axi_gmem_12_ARSIZE sc_out sc_lv 3 signal 12 } 
	{ m_axi_gmem_12_ARBURST sc_out sc_lv 2 signal 12 } 
	{ m_axi_gmem_12_ARLOCK sc_out sc_lv 2 signal 12 } 
	{ m_axi_gmem_12_ARCACHE sc_out sc_lv 4 signal 12 } 
	{ m_axi_gmem_12_ARPROT sc_out sc_lv 3 signal 12 } 
	{ m_axi_gmem_12_ARQOS sc_out sc_lv 4 signal 12 } 
	{ m_axi_gmem_12_ARREGION sc_out sc_lv 4 signal 12 } 
	{ m_axi_gmem_12_ARUSER sc_out sc_lv 1 signal 12 } 
	{ m_axi_gmem_12_RVALID sc_in sc_logic 1 signal 12 } 
	{ m_axi_gmem_12_RREADY sc_out sc_logic 1 signal 12 } 
	{ m_axi_gmem_12_RDATA sc_in sc_lv 32 signal 12 } 
	{ m_axi_gmem_12_RLAST sc_in sc_logic 1 signal 12 } 
	{ m_axi_gmem_12_RID sc_in sc_lv 1 signal 12 } 
	{ m_axi_gmem_12_RUSER sc_in sc_lv 1 signal 12 } 
	{ m_axi_gmem_12_RRESP sc_in sc_lv 2 signal 12 } 
	{ m_axi_gmem_12_BVALID sc_in sc_logic 1 signal 12 } 
	{ m_axi_gmem_12_BREADY sc_out sc_logic 1 signal 12 } 
	{ m_axi_gmem_12_BRESP sc_in sc_lv 2 signal 12 } 
	{ m_axi_gmem_12_BID sc_in sc_lv 1 signal 12 } 
	{ m_axi_gmem_12_BUSER sc_in sc_lv 1 signal 12 } 
	{ m_axi_gmem_13_AWVALID sc_out sc_logic 1 signal 13 } 
	{ m_axi_gmem_13_AWREADY sc_in sc_logic 1 signal 13 } 
	{ m_axi_gmem_13_AWADDR sc_out sc_lv 64 signal 13 } 
	{ m_axi_gmem_13_AWID sc_out sc_lv 1 signal 13 } 
	{ m_axi_gmem_13_AWLEN sc_out sc_lv 8 signal 13 } 
	{ m_axi_gmem_13_AWSIZE sc_out sc_lv 3 signal 13 } 
	{ m_axi_gmem_13_AWBURST sc_out sc_lv 2 signal 13 } 
	{ m_axi_gmem_13_AWLOCK sc_out sc_lv 2 signal 13 } 
	{ m_axi_gmem_13_AWCACHE sc_out sc_lv 4 signal 13 } 
	{ m_axi_gmem_13_AWPROT sc_out sc_lv 3 signal 13 } 
	{ m_axi_gmem_13_AWQOS sc_out sc_lv 4 signal 13 } 
	{ m_axi_gmem_13_AWREGION sc_out sc_lv 4 signal 13 } 
	{ m_axi_gmem_13_AWUSER sc_out sc_lv 1 signal 13 } 
	{ m_axi_gmem_13_WVALID sc_out sc_logic 1 signal 13 } 
	{ m_axi_gmem_13_WREADY sc_in sc_logic 1 signal 13 } 
	{ m_axi_gmem_13_WDATA sc_out sc_lv 32 signal 13 } 
	{ m_axi_gmem_13_WSTRB sc_out sc_lv 4 signal 13 } 
	{ m_axi_gmem_13_WLAST sc_out sc_logic 1 signal 13 } 
	{ m_axi_gmem_13_WID sc_out sc_lv 1 signal 13 } 
	{ m_axi_gmem_13_WUSER sc_out sc_lv 1 signal 13 } 
	{ m_axi_gmem_13_ARVALID sc_out sc_logic 1 signal 13 } 
	{ m_axi_gmem_13_ARREADY sc_in sc_logic 1 signal 13 } 
	{ m_axi_gmem_13_ARADDR sc_out sc_lv 64 signal 13 } 
	{ m_axi_gmem_13_ARID sc_out sc_lv 1 signal 13 } 
	{ m_axi_gmem_13_ARLEN sc_out sc_lv 8 signal 13 } 
	{ m_axi_gmem_13_ARSIZE sc_out sc_lv 3 signal 13 } 
	{ m_axi_gmem_13_ARBURST sc_out sc_lv 2 signal 13 } 
	{ m_axi_gmem_13_ARLOCK sc_out sc_lv 2 signal 13 } 
	{ m_axi_gmem_13_ARCACHE sc_out sc_lv 4 signal 13 } 
	{ m_axi_gmem_13_ARPROT sc_out sc_lv 3 signal 13 } 
	{ m_axi_gmem_13_ARQOS sc_out sc_lv 4 signal 13 } 
	{ m_axi_gmem_13_ARREGION sc_out sc_lv 4 signal 13 } 
	{ m_axi_gmem_13_ARUSER sc_out sc_lv 1 signal 13 } 
	{ m_axi_gmem_13_RVALID sc_in sc_logic 1 signal 13 } 
	{ m_axi_gmem_13_RREADY sc_out sc_logic 1 signal 13 } 
	{ m_axi_gmem_13_RDATA sc_in sc_lv 32 signal 13 } 
	{ m_axi_gmem_13_RLAST sc_in sc_logic 1 signal 13 } 
	{ m_axi_gmem_13_RID sc_in sc_lv 1 signal 13 } 
	{ m_axi_gmem_13_RUSER sc_in sc_lv 1 signal 13 } 
	{ m_axi_gmem_13_RRESP sc_in sc_lv 2 signal 13 } 
	{ m_axi_gmem_13_BVALID sc_in sc_logic 1 signal 13 } 
	{ m_axi_gmem_13_BREADY sc_out sc_logic 1 signal 13 } 
	{ m_axi_gmem_13_BRESP sc_in sc_lv 2 signal 13 } 
	{ m_axi_gmem_13_BID sc_in sc_lv 1 signal 13 } 
	{ m_axi_gmem_13_BUSER sc_in sc_lv 1 signal 13 } 
	{ m_axi_gmem_14_AWVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_gmem_14_AWREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_gmem_14_AWADDR sc_out sc_lv 64 signal 14 } 
	{ m_axi_gmem_14_AWID sc_out sc_lv 1 signal 14 } 
	{ m_axi_gmem_14_AWLEN sc_out sc_lv 8 signal 14 } 
	{ m_axi_gmem_14_AWSIZE sc_out sc_lv 3 signal 14 } 
	{ m_axi_gmem_14_AWBURST sc_out sc_lv 2 signal 14 } 
	{ m_axi_gmem_14_AWLOCK sc_out sc_lv 2 signal 14 } 
	{ m_axi_gmem_14_AWCACHE sc_out sc_lv 4 signal 14 } 
	{ m_axi_gmem_14_AWPROT sc_out sc_lv 3 signal 14 } 
	{ m_axi_gmem_14_AWQOS sc_out sc_lv 4 signal 14 } 
	{ m_axi_gmem_14_AWREGION sc_out sc_lv 4 signal 14 } 
	{ m_axi_gmem_14_AWUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_gmem_14_WVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_gmem_14_WREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_gmem_14_WDATA sc_out sc_lv 32 signal 14 } 
	{ m_axi_gmem_14_WSTRB sc_out sc_lv 4 signal 14 } 
	{ m_axi_gmem_14_WLAST sc_out sc_logic 1 signal 14 } 
	{ m_axi_gmem_14_WID sc_out sc_lv 1 signal 14 } 
	{ m_axi_gmem_14_WUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_gmem_14_ARVALID sc_out sc_logic 1 signal 14 } 
	{ m_axi_gmem_14_ARREADY sc_in sc_logic 1 signal 14 } 
	{ m_axi_gmem_14_ARADDR sc_out sc_lv 64 signal 14 } 
	{ m_axi_gmem_14_ARID sc_out sc_lv 1 signal 14 } 
	{ m_axi_gmem_14_ARLEN sc_out sc_lv 8 signal 14 } 
	{ m_axi_gmem_14_ARSIZE sc_out sc_lv 3 signal 14 } 
	{ m_axi_gmem_14_ARBURST sc_out sc_lv 2 signal 14 } 
	{ m_axi_gmem_14_ARLOCK sc_out sc_lv 2 signal 14 } 
	{ m_axi_gmem_14_ARCACHE sc_out sc_lv 4 signal 14 } 
	{ m_axi_gmem_14_ARPROT sc_out sc_lv 3 signal 14 } 
	{ m_axi_gmem_14_ARQOS sc_out sc_lv 4 signal 14 } 
	{ m_axi_gmem_14_ARREGION sc_out sc_lv 4 signal 14 } 
	{ m_axi_gmem_14_ARUSER sc_out sc_lv 1 signal 14 } 
	{ m_axi_gmem_14_RVALID sc_in sc_logic 1 signal 14 } 
	{ m_axi_gmem_14_RREADY sc_out sc_logic 1 signal 14 } 
	{ m_axi_gmem_14_RDATA sc_in sc_lv 32 signal 14 } 
	{ m_axi_gmem_14_RLAST sc_in sc_logic 1 signal 14 } 
	{ m_axi_gmem_14_RID sc_in sc_lv 1 signal 14 } 
	{ m_axi_gmem_14_RUSER sc_in sc_lv 1 signal 14 } 
	{ m_axi_gmem_14_RRESP sc_in sc_lv 2 signal 14 } 
	{ m_axi_gmem_14_BVALID sc_in sc_logic 1 signal 14 } 
	{ m_axi_gmem_14_BREADY sc_out sc_logic 1 signal 14 } 
	{ m_axi_gmem_14_BRESP sc_in sc_lv 2 signal 14 } 
	{ m_axi_gmem_14_BID sc_in sc_lv 1 signal 14 } 
	{ m_axi_gmem_14_BUSER sc_in sc_lv 1 signal 14 } 
	{ m_axi_gmem_15_AWVALID sc_out sc_logic 1 signal 15 } 
	{ m_axi_gmem_15_AWREADY sc_in sc_logic 1 signal 15 } 
	{ m_axi_gmem_15_AWADDR sc_out sc_lv 64 signal 15 } 
	{ m_axi_gmem_15_AWID sc_out sc_lv 1 signal 15 } 
	{ m_axi_gmem_15_AWLEN sc_out sc_lv 8 signal 15 } 
	{ m_axi_gmem_15_AWSIZE sc_out sc_lv 3 signal 15 } 
	{ m_axi_gmem_15_AWBURST sc_out sc_lv 2 signal 15 } 
	{ m_axi_gmem_15_AWLOCK sc_out sc_lv 2 signal 15 } 
	{ m_axi_gmem_15_AWCACHE sc_out sc_lv 4 signal 15 } 
	{ m_axi_gmem_15_AWPROT sc_out sc_lv 3 signal 15 } 
	{ m_axi_gmem_15_AWQOS sc_out sc_lv 4 signal 15 } 
	{ m_axi_gmem_15_AWREGION sc_out sc_lv 4 signal 15 } 
	{ m_axi_gmem_15_AWUSER sc_out sc_lv 1 signal 15 } 
	{ m_axi_gmem_15_WVALID sc_out sc_logic 1 signal 15 } 
	{ m_axi_gmem_15_WREADY sc_in sc_logic 1 signal 15 } 
	{ m_axi_gmem_15_WDATA sc_out sc_lv 32 signal 15 } 
	{ m_axi_gmem_15_WSTRB sc_out sc_lv 4 signal 15 } 
	{ m_axi_gmem_15_WLAST sc_out sc_logic 1 signal 15 } 
	{ m_axi_gmem_15_WID sc_out sc_lv 1 signal 15 } 
	{ m_axi_gmem_15_WUSER sc_out sc_lv 1 signal 15 } 
	{ m_axi_gmem_15_ARVALID sc_out sc_logic 1 signal 15 } 
	{ m_axi_gmem_15_ARREADY sc_in sc_logic 1 signal 15 } 
	{ m_axi_gmem_15_ARADDR sc_out sc_lv 64 signal 15 } 
	{ m_axi_gmem_15_ARID sc_out sc_lv 1 signal 15 } 
	{ m_axi_gmem_15_ARLEN sc_out sc_lv 8 signal 15 } 
	{ m_axi_gmem_15_ARSIZE sc_out sc_lv 3 signal 15 } 
	{ m_axi_gmem_15_ARBURST sc_out sc_lv 2 signal 15 } 
	{ m_axi_gmem_15_ARLOCK sc_out sc_lv 2 signal 15 } 
	{ m_axi_gmem_15_ARCACHE sc_out sc_lv 4 signal 15 } 
	{ m_axi_gmem_15_ARPROT sc_out sc_lv 3 signal 15 } 
	{ m_axi_gmem_15_ARQOS sc_out sc_lv 4 signal 15 } 
	{ m_axi_gmem_15_ARREGION sc_out sc_lv 4 signal 15 } 
	{ m_axi_gmem_15_ARUSER sc_out sc_lv 1 signal 15 } 
	{ m_axi_gmem_15_RVALID sc_in sc_logic 1 signal 15 } 
	{ m_axi_gmem_15_RREADY sc_out sc_logic 1 signal 15 } 
	{ m_axi_gmem_15_RDATA sc_in sc_lv 32 signal 15 } 
	{ m_axi_gmem_15_RLAST sc_in sc_logic 1 signal 15 } 
	{ m_axi_gmem_15_RID sc_in sc_lv 1 signal 15 } 
	{ m_axi_gmem_15_RUSER sc_in sc_lv 1 signal 15 } 
	{ m_axi_gmem_15_RRESP sc_in sc_lv 2 signal 15 } 
	{ m_axi_gmem_15_BVALID sc_in sc_logic 1 signal 15 } 
	{ m_axi_gmem_15_BREADY sc_out sc_logic 1 signal 15 } 
	{ m_axi_gmem_15_BRESP sc_in sc_lv 2 signal 15 } 
	{ m_axi_gmem_15_BID sc_in sc_lv 1 signal 15 } 
	{ m_axi_gmem_15_BUSER sc_in sc_lv 1 signal 15 } 
	{ m_axi_gmem_16_AWVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem_16_AWREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem_16_AWADDR sc_out sc_lv 64 signal 16 } 
	{ m_axi_gmem_16_AWID sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem_16_AWLEN sc_out sc_lv 8 signal 16 } 
	{ m_axi_gmem_16_AWSIZE sc_out sc_lv 3 signal 16 } 
	{ m_axi_gmem_16_AWBURST sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem_16_AWLOCK sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem_16_AWCACHE sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_16_AWPROT sc_out sc_lv 3 signal 16 } 
	{ m_axi_gmem_16_AWQOS sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_16_AWREGION sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_16_AWUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem_16_WVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem_16_WREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem_16_WDATA sc_out sc_lv 32 signal 16 } 
	{ m_axi_gmem_16_WSTRB sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_16_WLAST sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem_16_WID sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem_16_WUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem_16_ARVALID sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem_16_ARREADY sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem_16_ARADDR sc_out sc_lv 64 signal 16 } 
	{ m_axi_gmem_16_ARID sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem_16_ARLEN sc_out sc_lv 8 signal 16 } 
	{ m_axi_gmem_16_ARSIZE sc_out sc_lv 3 signal 16 } 
	{ m_axi_gmem_16_ARBURST sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem_16_ARLOCK sc_out sc_lv 2 signal 16 } 
	{ m_axi_gmem_16_ARCACHE sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_16_ARPROT sc_out sc_lv 3 signal 16 } 
	{ m_axi_gmem_16_ARQOS sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_16_ARREGION sc_out sc_lv 4 signal 16 } 
	{ m_axi_gmem_16_ARUSER sc_out sc_lv 1 signal 16 } 
	{ m_axi_gmem_16_RVALID sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem_16_RREADY sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem_16_RDATA sc_in sc_lv 32 signal 16 } 
	{ m_axi_gmem_16_RLAST sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem_16_RID sc_in sc_lv 1 signal 16 } 
	{ m_axi_gmem_16_RUSER sc_in sc_lv 1 signal 16 } 
	{ m_axi_gmem_16_RRESP sc_in sc_lv 2 signal 16 } 
	{ m_axi_gmem_16_BVALID sc_in sc_logic 1 signal 16 } 
	{ m_axi_gmem_16_BREADY sc_out sc_logic 1 signal 16 } 
	{ m_axi_gmem_16_BRESP sc_in sc_lv 2 signal 16 } 
	{ m_axi_gmem_16_BID sc_in sc_lv 1 signal 16 } 
	{ m_axi_gmem_16_BUSER sc_in sc_lv 1 signal 16 } 
	{ m_axi_gmem_17_AWVALID sc_out sc_logic 1 signal 17 } 
	{ m_axi_gmem_17_AWREADY sc_in sc_logic 1 signal 17 } 
	{ m_axi_gmem_17_AWADDR sc_out sc_lv 64 signal 17 } 
	{ m_axi_gmem_17_AWID sc_out sc_lv 1 signal 17 } 
	{ m_axi_gmem_17_AWLEN sc_out sc_lv 8 signal 17 } 
	{ m_axi_gmem_17_AWSIZE sc_out sc_lv 3 signal 17 } 
	{ m_axi_gmem_17_AWBURST sc_out sc_lv 2 signal 17 } 
	{ m_axi_gmem_17_AWLOCK sc_out sc_lv 2 signal 17 } 
	{ m_axi_gmem_17_AWCACHE sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem_17_AWPROT sc_out sc_lv 3 signal 17 } 
	{ m_axi_gmem_17_AWQOS sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem_17_AWREGION sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem_17_AWUSER sc_out sc_lv 1 signal 17 } 
	{ m_axi_gmem_17_WVALID sc_out sc_logic 1 signal 17 } 
	{ m_axi_gmem_17_WREADY sc_in sc_logic 1 signal 17 } 
	{ m_axi_gmem_17_WDATA sc_out sc_lv 32 signal 17 } 
	{ m_axi_gmem_17_WSTRB sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem_17_WLAST sc_out sc_logic 1 signal 17 } 
	{ m_axi_gmem_17_WID sc_out sc_lv 1 signal 17 } 
	{ m_axi_gmem_17_WUSER sc_out sc_lv 1 signal 17 } 
	{ m_axi_gmem_17_ARVALID sc_out sc_logic 1 signal 17 } 
	{ m_axi_gmem_17_ARREADY sc_in sc_logic 1 signal 17 } 
	{ m_axi_gmem_17_ARADDR sc_out sc_lv 64 signal 17 } 
	{ m_axi_gmem_17_ARID sc_out sc_lv 1 signal 17 } 
	{ m_axi_gmem_17_ARLEN sc_out sc_lv 8 signal 17 } 
	{ m_axi_gmem_17_ARSIZE sc_out sc_lv 3 signal 17 } 
	{ m_axi_gmem_17_ARBURST sc_out sc_lv 2 signal 17 } 
	{ m_axi_gmem_17_ARLOCK sc_out sc_lv 2 signal 17 } 
	{ m_axi_gmem_17_ARCACHE sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem_17_ARPROT sc_out sc_lv 3 signal 17 } 
	{ m_axi_gmem_17_ARQOS sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem_17_ARREGION sc_out sc_lv 4 signal 17 } 
	{ m_axi_gmem_17_ARUSER sc_out sc_lv 1 signal 17 } 
	{ m_axi_gmem_17_RVALID sc_in sc_logic 1 signal 17 } 
	{ m_axi_gmem_17_RREADY sc_out sc_logic 1 signal 17 } 
	{ m_axi_gmem_17_RDATA sc_in sc_lv 32 signal 17 } 
	{ m_axi_gmem_17_RLAST sc_in sc_logic 1 signal 17 } 
	{ m_axi_gmem_17_RID sc_in sc_lv 1 signal 17 } 
	{ m_axi_gmem_17_RUSER sc_in sc_lv 1 signal 17 } 
	{ m_axi_gmem_17_RRESP sc_in sc_lv 2 signal 17 } 
	{ m_axi_gmem_17_BVALID sc_in sc_logic 1 signal 17 } 
	{ m_axi_gmem_17_BREADY sc_out sc_logic 1 signal 17 } 
	{ m_axi_gmem_17_BRESP sc_in sc_lv 2 signal 17 } 
	{ m_axi_gmem_17_BID sc_in sc_lv 1 signal 17 } 
	{ m_axi_gmem_17_BUSER sc_in sc_lv 1 signal 17 } 
	{ m_axi_gmem_18_AWVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem_18_AWREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem_18_AWADDR sc_out sc_lv 64 signal 18 } 
	{ m_axi_gmem_18_AWID sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem_18_AWLEN sc_out sc_lv 8 signal 18 } 
	{ m_axi_gmem_18_AWSIZE sc_out sc_lv 3 signal 18 } 
	{ m_axi_gmem_18_AWBURST sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem_18_AWLOCK sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem_18_AWCACHE sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem_18_AWPROT sc_out sc_lv 3 signal 18 } 
	{ m_axi_gmem_18_AWQOS sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem_18_AWREGION sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem_18_AWUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem_18_WVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem_18_WREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem_18_WDATA sc_out sc_lv 32 signal 18 } 
	{ m_axi_gmem_18_WSTRB sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem_18_WLAST sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem_18_WID sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem_18_WUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem_18_ARVALID sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem_18_ARREADY sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem_18_ARADDR sc_out sc_lv 64 signal 18 } 
	{ m_axi_gmem_18_ARID sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem_18_ARLEN sc_out sc_lv 8 signal 18 } 
	{ m_axi_gmem_18_ARSIZE sc_out sc_lv 3 signal 18 } 
	{ m_axi_gmem_18_ARBURST sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem_18_ARLOCK sc_out sc_lv 2 signal 18 } 
	{ m_axi_gmem_18_ARCACHE sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem_18_ARPROT sc_out sc_lv 3 signal 18 } 
	{ m_axi_gmem_18_ARQOS sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem_18_ARREGION sc_out sc_lv 4 signal 18 } 
	{ m_axi_gmem_18_ARUSER sc_out sc_lv 1 signal 18 } 
	{ m_axi_gmem_18_RVALID sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem_18_RREADY sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem_18_RDATA sc_in sc_lv 32 signal 18 } 
	{ m_axi_gmem_18_RLAST sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem_18_RID sc_in sc_lv 1 signal 18 } 
	{ m_axi_gmem_18_RUSER sc_in sc_lv 1 signal 18 } 
	{ m_axi_gmem_18_RRESP sc_in sc_lv 2 signal 18 } 
	{ m_axi_gmem_18_BVALID sc_in sc_logic 1 signal 18 } 
	{ m_axi_gmem_18_BREADY sc_out sc_logic 1 signal 18 } 
	{ m_axi_gmem_18_BRESP sc_in sc_lv 2 signal 18 } 
	{ m_axi_gmem_18_BID sc_in sc_lv 1 signal 18 } 
	{ m_axi_gmem_18_BUSER sc_in sc_lv 1 signal 18 } 
	{ m_axi_gmem_19_AWVALID sc_out sc_logic 1 signal 19 } 
	{ m_axi_gmem_19_AWREADY sc_in sc_logic 1 signal 19 } 
	{ m_axi_gmem_19_AWADDR sc_out sc_lv 64 signal 19 } 
	{ m_axi_gmem_19_AWID sc_out sc_lv 1 signal 19 } 
	{ m_axi_gmem_19_AWLEN sc_out sc_lv 8 signal 19 } 
	{ m_axi_gmem_19_AWSIZE sc_out sc_lv 3 signal 19 } 
	{ m_axi_gmem_19_AWBURST sc_out sc_lv 2 signal 19 } 
	{ m_axi_gmem_19_AWLOCK sc_out sc_lv 2 signal 19 } 
	{ m_axi_gmem_19_AWCACHE sc_out sc_lv 4 signal 19 } 
	{ m_axi_gmem_19_AWPROT sc_out sc_lv 3 signal 19 } 
	{ m_axi_gmem_19_AWQOS sc_out sc_lv 4 signal 19 } 
	{ m_axi_gmem_19_AWREGION sc_out sc_lv 4 signal 19 } 
	{ m_axi_gmem_19_AWUSER sc_out sc_lv 1 signal 19 } 
	{ m_axi_gmem_19_WVALID sc_out sc_logic 1 signal 19 } 
	{ m_axi_gmem_19_WREADY sc_in sc_logic 1 signal 19 } 
	{ m_axi_gmem_19_WDATA sc_out sc_lv 32 signal 19 } 
	{ m_axi_gmem_19_WSTRB sc_out sc_lv 4 signal 19 } 
	{ m_axi_gmem_19_WLAST sc_out sc_logic 1 signal 19 } 
	{ m_axi_gmem_19_WID sc_out sc_lv 1 signal 19 } 
	{ m_axi_gmem_19_WUSER sc_out sc_lv 1 signal 19 } 
	{ m_axi_gmem_19_ARVALID sc_out sc_logic 1 signal 19 } 
	{ m_axi_gmem_19_ARREADY sc_in sc_logic 1 signal 19 } 
	{ m_axi_gmem_19_ARADDR sc_out sc_lv 64 signal 19 } 
	{ m_axi_gmem_19_ARID sc_out sc_lv 1 signal 19 } 
	{ m_axi_gmem_19_ARLEN sc_out sc_lv 8 signal 19 } 
	{ m_axi_gmem_19_ARSIZE sc_out sc_lv 3 signal 19 } 
	{ m_axi_gmem_19_ARBURST sc_out sc_lv 2 signal 19 } 
	{ m_axi_gmem_19_ARLOCK sc_out sc_lv 2 signal 19 } 
	{ m_axi_gmem_19_ARCACHE sc_out sc_lv 4 signal 19 } 
	{ m_axi_gmem_19_ARPROT sc_out sc_lv 3 signal 19 } 
	{ m_axi_gmem_19_ARQOS sc_out sc_lv 4 signal 19 } 
	{ m_axi_gmem_19_ARREGION sc_out sc_lv 4 signal 19 } 
	{ m_axi_gmem_19_ARUSER sc_out sc_lv 1 signal 19 } 
	{ m_axi_gmem_19_RVALID sc_in sc_logic 1 signal 19 } 
	{ m_axi_gmem_19_RREADY sc_out sc_logic 1 signal 19 } 
	{ m_axi_gmem_19_RDATA sc_in sc_lv 32 signal 19 } 
	{ m_axi_gmem_19_RLAST sc_in sc_logic 1 signal 19 } 
	{ m_axi_gmem_19_RID sc_in sc_lv 1 signal 19 } 
	{ m_axi_gmem_19_RUSER sc_in sc_lv 1 signal 19 } 
	{ m_axi_gmem_19_RRESP sc_in sc_lv 2 signal 19 } 
	{ m_axi_gmem_19_BVALID sc_in sc_logic 1 signal 19 } 
	{ m_axi_gmem_19_BREADY sc_out sc_logic 1 signal 19 } 
	{ m_axi_gmem_19_BRESP sc_in sc_lv 2 signal 19 } 
	{ m_axi_gmem_19_BID sc_in sc_lv 1 signal 19 } 
	{ m_axi_gmem_19_BUSER sc_in sc_lv 1 signal 19 } 
	{ m_axi_gmem_20_AWVALID sc_out sc_logic 1 signal 20 } 
	{ m_axi_gmem_20_AWREADY sc_in sc_logic 1 signal 20 } 
	{ m_axi_gmem_20_AWADDR sc_out sc_lv 64 signal 20 } 
	{ m_axi_gmem_20_AWID sc_out sc_lv 1 signal 20 } 
	{ m_axi_gmem_20_AWLEN sc_out sc_lv 8 signal 20 } 
	{ m_axi_gmem_20_AWSIZE sc_out sc_lv 3 signal 20 } 
	{ m_axi_gmem_20_AWBURST sc_out sc_lv 2 signal 20 } 
	{ m_axi_gmem_20_AWLOCK sc_out sc_lv 2 signal 20 } 
	{ m_axi_gmem_20_AWCACHE sc_out sc_lv 4 signal 20 } 
	{ m_axi_gmem_20_AWPROT sc_out sc_lv 3 signal 20 } 
	{ m_axi_gmem_20_AWQOS sc_out sc_lv 4 signal 20 } 
	{ m_axi_gmem_20_AWREGION sc_out sc_lv 4 signal 20 } 
	{ m_axi_gmem_20_AWUSER sc_out sc_lv 1 signal 20 } 
	{ m_axi_gmem_20_WVALID sc_out sc_logic 1 signal 20 } 
	{ m_axi_gmem_20_WREADY sc_in sc_logic 1 signal 20 } 
	{ m_axi_gmem_20_WDATA sc_out sc_lv 32 signal 20 } 
	{ m_axi_gmem_20_WSTRB sc_out sc_lv 4 signal 20 } 
	{ m_axi_gmem_20_WLAST sc_out sc_logic 1 signal 20 } 
	{ m_axi_gmem_20_WID sc_out sc_lv 1 signal 20 } 
	{ m_axi_gmem_20_WUSER sc_out sc_lv 1 signal 20 } 
	{ m_axi_gmem_20_ARVALID sc_out sc_logic 1 signal 20 } 
	{ m_axi_gmem_20_ARREADY sc_in sc_logic 1 signal 20 } 
	{ m_axi_gmem_20_ARADDR sc_out sc_lv 64 signal 20 } 
	{ m_axi_gmem_20_ARID sc_out sc_lv 1 signal 20 } 
	{ m_axi_gmem_20_ARLEN sc_out sc_lv 8 signal 20 } 
	{ m_axi_gmem_20_ARSIZE sc_out sc_lv 3 signal 20 } 
	{ m_axi_gmem_20_ARBURST sc_out sc_lv 2 signal 20 } 
	{ m_axi_gmem_20_ARLOCK sc_out sc_lv 2 signal 20 } 
	{ m_axi_gmem_20_ARCACHE sc_out sc_lv 4 signal 20 } 
	{ m_axi_gmem_20_ARPROT sc_out sc_lv 3 signal 20 } 
	{ m_axi_gmem_20_ARQOS sc_out sc_lv 4 signal 20 } 
	{ m_axi_gmem_20_ARREGION sc_out sc_lv 4 signal 20 } 
	{ m_axi_gmem_20_ARUSER sc_out sc_lv 1 signal 20 } 
	{ m_axi_gmem_20_RVALID sc_in sc_logic 1 signal 20 } 
	{ m_axi_gmem_20_RREADY sc_out sc_logic 1 signal 20 } 
	{ m_axi_gmem_20_RDATA sc_in sc_lv 32 signal 20 } 
	{ m_axi_gmem_20_RLAST sc_in sc_logic 1 signal 20 } 
	{ m_axi_gmem_20_RID sc_in sc_lv 1 signal 20 } 
	{ m_axi_gmem_20_RUSER sc_in sc_lv 1 signal 20 } 
	{ m_axi_gmem_20_RRESP sc_in sc_lv 2 signal 20 } 
	{ m_axi_gmem_20_BVALID sc_in sc_logic 1 signal 20 } 
	{ m_axi_gmem_20_BREADY sc_out sc_logic 1 signal 20 } 
	{ m_axi_gmem_20_BRESP sc_in sc_lv 2 signal 20 } 
	{ m_axi_gmem_20_BID sc_in sc_lv 1 signal 20 } 
	{ m_axi_gmem_20_BUSER sc_in sc_lv 1 signal 20 } 
	{ m_axi_gmem_21_AWVALID sc_out sc_logic 1 signal 21 } 
	{ m_axi_gmem_21_AWREADY sc_in sc_logic 1 signal 21 } 
	{ m_axi_gmem_21_AWADDR sc_out sc_lv 64 signal 21 } 
	{ m_axi_gmem_21_AWID sc_out sc_lv 1 signal 21 } 
	{ m_axi_gmem_21_AWLEN sc_out sc_lv 8 signal 21 } 
	{ m_axi_gmem_21_AWSIZE sc_out sc_lv 3 signal 21 } 
	{ m_axi_gmem_21_AWBURST sc_out sc_lv 2 signal 21 } 
	{ m_axi_gmem_21_AWLOCK sc_out sc_lv 2 signal 21 } 
	{ m_axi_gmem_21_AWCACHE sc_out sc_lv 4 signal 21 } 
	{ m_axi_gmem_21_AWPROT sc_out sc_lv 3 signal 21 } 
	{ m_axi_gmem_21_AWQOS sc_out sc_lv 4 signal 21 } 
	{ m_axi_gmem_21_AWREGION sc_out sc_lv 4 signal 21 } 
	{ m_axi_gmem_21_AWUSER sc_out sc_lv 1 signal 21 } 
	{ m_axi_gmem_21_WVALID sc_out sc_logic 1 signal 21 } 
	{ m_axi_gmem_21_WREADY sc_in sc_logic 1 signal 21 } 
	{ m_axi_gmem_21_WDATA sc_out sc_lv 32 signal 21 } 
	{ m_axi_gmem_21_WSTRB sc_out sc_lv 4 signal 21 } 
	{ m_axi_gmem_21_WLAST sc_out sc_logic 1 signal 21 } 
	{ m_axi_gmem_21_WID sc_out sc_lv 1 signal 21 } 
	{ m_axi_gmem_21_WUSER sc_out sc_lv 1 signal 21 } 
	{ m_axi_gmem_21_ARVALID sc_out sc_logic 1 signal 21 } 
	{ m_axi_gmem_21_ARREADY sc_in sc_logic 1 signal 21 } 
	{ m_axi_gmem_21_ARADDR sc_out sc_lv 64 signal 21 } 
	{ m_axi_gmem_21_ARID sc_out sc_lv 1 signal 21 } 
	{ m_axi_gmem_21_ARLEN sc_out sc_lv 8 signal 21 } 
	{ m_axi_gmem_21_ARSIZE sc_out sc_lv 3 signal 21 } 
	{ m_axi_gmem_21_ARBURST sc_out sc_lv 2 signal 21 } 
	{ m_axi_gmem_21_ARLOCK sc_out sc_lv 2 signal 21 } 
	{ m_axi_gmem_21_ARCACHE sc_out sc_lv 4 signal 21 } 
	{ m_axi_gmem_21_ARPROT sc_out sc_lv 3 signal 21 } 
	{ m_axi_gmem_21_ARQOS sc_out sc_lv 4 signal 21 } 
	{ m_axi_gmem_21_ARREGION sc_out sc_lv 4 signal 21 } 
	{ m_axi_gmem_21_ARUSER sc_out sc_lv 1 signal 21 } 
	{ m_axi_gmem_21_RVALID sc_in sc_logic 1 signal 21 } 
	{ m_axi_gmem_21_RREADY sc_out sc_logic 1 signal 21 } 
	{ m_axi_gmem_21_RDATA sc_in sc_lv 32 signal 21 } 
	{ m_axi_gmem_21_RLAST sc_in sc_logic 1 signal 21 } 
	{ m_axi_gmem_21_RID sc_in sc_lv 1 signal 21 } 
	{ m_axi_gmem_21_RUSER sc_in sc_lv 1 signal 21 } 
	{ m_axi_gmem_21_RRESP sc_in sc_lv 2 signal 21 } 
	{ m_axi_gmem_21_BVALID sc_in sc_logic 1 signal 21 } 
	{ m_axi_gmem_21_BREADY sc_out sc_logic 1 signal 21 } 
	{ m_axi_gmem_21_BRESP sc_in sc_lv 2 signal 21 } 
	{ m_axi_gmem_21_BID sc_in sc_lv 1 signal 21 } 
	{ m_axi_gmem_21_BUSER sc_in sc_lv 1 signal 21 } 
	{ m_axi_gmem_22_AWVALID sc_out sc_logic 1 signal 22 } 
	{ m_axi_gmem_22_AWREADY sc_in sc_logic 1 signal 22 } 
	{ m_axi_gmem_22_AWADDR sc_out sc_lv 64 signal 22 } 
	{ m_axi_gmem_22_AWID sc_out sc_lv 1 signal 22 } 
	{ m_axi_gmem_22_AWLEN sc_out sc_lv 8 signal 22 } 
	{ m_axi_gmem_22_AWSIZE sc_out sc_lv 3 signal 22 } 
	{ m_axi_gmem_22_AWBURST sc_out sc_lv 2 signal 22 } 
	{ m_axi_gmem_22_AWLOCK sc_out sc_lv 2 signal 22 } 
	{ m_axi_gmem_22_AWCACHE sc_out sc_lv 4 signal 22 } 
	{ m_axi_gmem_22_AWPROT sc_out sc_lv 3 signal 22 } 
	{ m_axi_gmem_22_AWQOS sc_out sc_lv 4 signal 22 } 
	{ m_axi_gmem_22_AWREGION sc_out sc_lv 4 signal 22 } 
	{ m_axi_gmem_22_AWUSER sc_out sc_lv 1 signal 22 } 
	{ m_axi_gmem_22_WVALID sc_out sc_logic 1 signal 22 } 
	{ m_axi_gmem_22_WREADY sc_in sc_logic 1 signal 22 } 
	{ m_axi_gmem_22_WDATA sc_out sc_lv 32 signal 22 } 
	{ m_axi_gmem_22_WSTRB sc_out sc_lv 4 signal 22 } 
	{ m_axi_gmem_22_WLAST sc_out sc_logic 1 signal 22 } 
	{ m_axi_gmem_22_WID sc_out sc_lv 1 signal 22 } 
	{ m_axi_gmem_22_WUSER sc_out sc_lv 1 signal 22 } 
	{ m_axi_gmem_22_ARVALID sc_out sc_logic 1 signal 22 } 
	{ m_axi_gmem_22_ARREADY sc_in sc_logic 1 signal 22 } 
	{ m_axi_gmem_22_ARADDR sc_out sc_lv 64 signal 22 } 
	{ m_axi_gmem_22_ARID sc_out sc_lv 1 signal 22 } 
	{ m_axi_gmem_22_ARLEN sc_out sc_lv 8 signal 22 } 
	{ m_axi_gmem_22_ARSIZE sc_out sc_lv 3 signal 22 } 
	{ m_axi_gmem_22_ARBURST sc_out sc_lv 2 signal 22 } 
	{ m_axi_gmem_22_ARLOCK sc_out sc_lv 2 signal 22 } 
	{ m_axi_gmem_22_ARCACHE sc_out sc_lv 4 signal 22 } 
	{ m_axi_gmem_22_ARPROT sc_out sc_lv 3 signal 22 } 
	{ m_axi_gmem_22_ARQOS sc_out sc_lv 4 signal 22 } 
	{ m_axi_gmem_22_ARREGION sc_out sc_lv 4 signal 22 } 
	{ m_axi_gmem_22_ARUSER sc_out sc_lv 1 signal 22 } 
	{ m_axi_gmem_22_RVALID sc_in sc_logic 1 signal 22 } 
	{ m_axi_gmem_22_RREADY sc_out sc_logic 1 signal 22 } 
	{ m_axi_gmem_22_RDATA sc_in sc_lv 32 signal 22 } 
	{ m_axi_gmem_22_RLAST sc_in sc_logic 1 signal 22 } 
	{ m_axi_gmem_22_RID sc_in sc_lv 1 signal 22 } 
	{ m_axi_gmem_22_RUSER sc_in sc_lv 1 signal 22 } 
	{ m_axi_gmem_22_RRESP sc_in sc_lv 2 signal 22 } 
	{ m_axi_gmem_22_BVALID sc_in sc_logic 1 signal 22 } 
	{ m_axi_gmem_22_BREADY sc_out sc_logic 1 signal 22 } 
	{ m_axi_gmem_22_BRESP sc_in sc_lv 2 signal 22 } 
	{ m_axi_gmem_22_BID sc_in sc_lv 1 signal 22 } 
	{ m_axi_gmem_22_BUSER sc_in sc_lv 1 signal 22 } 
	{ m_axi_gmem_23_AWVALID sc_out sc_logic 1 signal 23 } 
	{ m_axi_gmem_23_AWREADY sc_in sc_logic 1 signal 23 } 
	{ m_axi_gmem_23_AWADDR sc_out sc_lv 64 signal 23 } 
	{ m_axi_gmem_23_AWID sc_out sc_lv 1 signal 23 } 
	{ m_axi_gmem_23_AWLEN sc_out sc_lv 8 signal 23 } 
	{ m_axi_gmem_23_AWSIZE sc_out sc_lv 3 signal 23 } 
	{ m_axi_gmem_23_AWBURST sc_out sc_lv 2 signal 23 } 
	{ m_axi_gmem_23_AWLOCK sc_out sc_lv 2 signal 23 } 
	{ m_axi_gmem_23_AWCACHE sc_out sc_lv 4 signal 23 } 
	{ m_axi_gmem_23_AWPROT sc_out sc_lv 3 signal 23 } 
	{ m_axi_gmem_23_AWQOS sc_out sc_lv 4 signal 23 } 
	{ m_axi_gmem_23_AWREGION sc_out sc_lv 4 signal 23 } 
	{ m_axi_gmem_23_AWUSER sc_out sc_lv 1 signal 23 } 
	{ m_axi_gmem_23_WVALID sc_out sc_logic 1 signal 23 } 
	{ m_axi_gmem_23_WREADY sc_in sc_logic 1 signal 23 } 
	{ m_axi_gmem_23_WDATA sc_out sc_lv 32 signal 23 } 
	{ m_axi_gmem_23_WSTRB sc_out sc_lv 4 signal 23 } 
	{ m_axi_gmem_23_WLAST sc_out sc_logic 1 signal 23 } 
	{ m_axi_gmem_23_WID sc_out sc_lv 1 signal 23 } 
	{ m_axi_gmem_23_WUSER sc_out sc_lv 1 signal 23 } 
	{ m_axi_gmem_23_ARVALID sc_out sc_logic 1 signal 23 } 
	{ m_axi_gmem_23_ARREADY sc_in sc_logic 1 signal 23 } 
	{ m_axi_gmem_23_ARADDR sc_out sc_lv 64 signal 23 } 
	{ m_axi_gmem_23_ARID sc_out sc_lv 1 signal 23 } 
	{ m_axi_gmem_23_ARLEN sc_out sc_lv 8 signal 23 } 
	{ m_axi_gmem_23_ARSIZE sc_out sc_lv 3 signal 23 } 
	{ m_axi_gmem_23_ARBURST sc_out sc_lv 2 signal 23 } 
	{ m_axi_gmem_23_ARLOCK sc_out sc_lv 2 signal 23 } 
	{ m_axi_gmem_23_ARCACHE sc_out sc_lv 4 signal 23 } 
	{ m_axi_gmem_23_ARPROT sc_out sc_lv 3 signal 23 } 
	{ m_axi_gmem_23_ARQOS sc_out sc_lv 4 signal 23 } 
	{ m_axi_gmem_23_ARREGION sc_out sc_lv 4 signal 23 } 
	{ m_axi_gmem_23_ARUSER sc_out sc_lv 1 signal 23 } 
	{ m_axi_gmem_23_RVALID sc_in sc_logic 1 signal 23 } 
	{ m_axi_gmem_23_RREADY sc_out sc_logic 1 signal 23 } 
	{ m_axi_gmem_23_RDATA sc_in sc_lv 32 signal 23 } 
	{ m_axi_gmem_23_RLAST sc_in sc_logic 1 signal 23 } 
	{ m_axi_gmem_23_RID sc_in sc_lv 1 signal 23 } 
	{ m_axi_gmem_23_RUSER sc_in sc_lv 1 signal 23 } 
	{ m_axi_gmem_23_RRESP sc_in sc_lv 2 signal 23 } 
	{ m_axi_gmem_23_BVALID sc_in sc_logic 1 signal 23 } 
	{ m_axi_gmem_23_BREADY sc_out sc_logic 1 signal 23 } 
	{ m_axi_gmem_23_BRESP sc_in sc_lv 2 signal 23 } 
	{ m_axi_gmem_23_BID sc_in sc_lv 1 signal 23 } 
	{ m_axi_gmem_23_BUSER sc_in sc_lv 1 signal 23 } 
	{ m_axi_gmem_24_AWVALID sc_out sc_logic 1 signal 24 } 
	{ m_axi_gmem_24_AWREADY sc_in sc_logic 1 signal 24 } 
	{ m_axi_gmem_24_AWADDR sc_out sc_lv 64 signal 24 } 
	{ m_axi_gmem_24_AWID sc_out sc_lv 1 signal 24 } 
	{ m_axi_gmem_24_AWLEN sc_out sc_lv 8 signal 24 } 
	{ m_axi_gmem_24_AWSIZE sc_out sc_lv 3 signal 24 } 
	{ m_axi_gmem_24_AWBURST sc_out sc_lv 2 signal 24 } 
	{ m_axi_gmem_24_AWLOCK sc_out sc_lv 2 signal 24 } 
	{ m_axi_gmem_24_AWCACHE sc_out sc_lv 4 signal 24 } 
	{ m_axi_gmem_24_AWPROT sc_out sc_lv 3 signal 24 } 
	{ m_axi_gmem_24_AWQOS sc_out sc_lv 4 signal 24 } 
	{ m_axi_gmem_24_AWREGION sc_out sc_lv 4 signal 24 } 
	{ m_axi_gmem_24_AWUSER sc_out sc_lv 1 signal 24 } 
	{ m_axi_gmem_24_WVALID sc_out sc_logic 1 signal 24 } 
	{ m_axi_gmem_24_WREADY sc_in sc_logic 1 signal 24 } 
	{ m_axi_gmem_24_WDATA sc_out sc_lv 32 signal 24 } 
	{ m_axi_gmem_24_WSTRB sc_out sc_lv 4 signal 24 } 
	{ m_axi_gmem_24_WLAST sc_out sc_logic 1 signal 24 } 
	{ m_axi_gmem_24_WID sc_out sc_lv 1 signal 24 } 
	{ m_axi_gmem_24_WUSER sc_out sc_lv 1 signal 24 } 
	{ m_axi_gmem_24_ARVALID sc_out sc_logic 1 signal 24 } 
	{ m_axi_gmem_24_ARREADY sc_in sc_logic 1 signal 24 } 
	{ m_axi_gmem_24_ARADDR sc_out sc_lv 64 signal 24 } 
	{ m_axi_gmem_24_ARID sc_out sc_lv 1 signal 24 } 
	{ m_axi_gmem_24_ARLEN sc_out sc_lv 8 signal 24 } 
	{ m_axi_gmem_24_ARSIZE sc_out sc_lv 3 signal 24 } 
	{ m_axi_gmem_24_ARBURST sc_out sc_lv 2 signal 24 } 
	{ m_axi_gmem_24_ARLOCK sc_out sc_lv 2 signal 24 } 
	{ m_axi_gmem_24_ARCACHE sc_out sc_lv 4 signal 24 } 
	{ m_axi_gmem_24_ARPROT sc_out sc_lv 3 signal 24 } 
	{ m_axi_gmem_24_ARQOS sc_out sc_lv 4 signal 24 } 
	{ m_axi_gmem_24_ARREGION sc_out sc_lv 4 signal 24 } 
	{ m_axi_gmem_24_ARUSER sc_out sc_lv 1 signal 24 } 
	{ m_axi_gmem_24_RVALID sc_in sc_logic 1 signal 24 } 
	{ m_axi_gmem_24_RREADY sc_out sc_logic 1 signal 24 } 
	{ m_axi_gmem_24_RDATA sc_in sc_lv 32 signal 24 } 
	{ m_axi_gmem_24_RLAST sc_in sc_logic 1 signal 24 } 
	{ m_axi_gmem_24_RID sc_in sc_lv 1 signal 24 } 
	{ m_axi_gmem_24_RUSER sc_in sc_lv 1 signal 24 } 
	{ m_axi_gmem_24_RRESP sc_in sc_lv 2 signal 24 } 
	{ m_axi_gmem_24_BVALID sc_in sc_logic 1 signal 24 } 
	{ m_axi_gmem_24_BREADY sc_out sc_logic 1 signal 24 } 
	{ m_axi_gmem_24_BRESP sc_in sc_lv 2 signal 24 } 
	{ m_axi_gmem_24_BID sc_in sc_lv 1 signal 24 } 
	{ m_axi_gmem_24_BUSER sc_in sc_lv 1 signal 24 } 
	{ m_axi_gmem_25_AWVALID sc_out sc_logic 1 signal 25 } 
	{ m_axi_gmem_25_AWREADY sc_in sc_logic 1 signal 25 } 
	{ m_axi_gmem_25_AWADDR sc_out sc_lv 64 signal 25 } 
	{ m_axi_gmem_25_AWID sc_out sc_lv 1 signal 25 } 
	{ m_axi_gmem_25_AWLEN sc_out sc_lv 8 signal 25 } 
	{ m_axi_gmem_25_AWSIZE sc_out sc_lv 3 signal 25 } 
	{ m_axi_gmem_25_AWBURST sc_out sc_lv 2 signal 25 } 
	{ m_axi_gmem_25_AWLOCK sc_out sc_lv 2 signal 25 } 
	{ m_axi_gmem_25_AWCACHE sc_out sc_lv 4 signal 25 } 
	{ m_axi_gmem_25_AWPROT sc_out sc_lv 3 signal 25 } 
	{ m_axi_gmem_25_AWQOS sc_out sc_lv 4 signal 25 } 
	{ m_axi_gmem_25_AWREGION sc_out sc_lv 4 signal 25 } 
	{ m_axi_gmem_25_AWUSER sc_out sc_lv 1 signal 25 } 
	{ m_axi_gmem_25_WVALID sc_out sc_logic 1 signal 25 } 
	{ m_axi_gmem_25_WREADY sc_in sc_logic 1 signal 25 } 
	{ m_axi_gmem_25_WDATA sc_out sc_lv 32 signal 25 } 
	{ m_axi_gmem_25_WSTRB sc_out sc_lv 4 signal 25 } 
	{ m_axi_gmem_25_WLAST sc_out sc_logic 1 signal 25 } 
	{ m_axi_gmem_25_WID sc_out sc_lv 1 signal 25 } 
	{ m_axi_gmem_25_WUSER sc_out sc_lv 1 signal 25 } 
	{ m_axi_gmem_25_ARVALID sc_out sc_logic 1 signal 25 } 
	{ m_axi_gmem_25_ARREADY sc_in sc_logic 1 signal 25 } 
	{ m_axi_gmem_25_ARADDR sc_out sc_lv 64 signal 25 } 
	{ m_axi_gmem_25_ARID sc_out sc_lv 1 signal 25 } 
	{ m_axi_gmem_25_ARLEN sc_out sc_lv 8 signal 25 } 
	{ m_axi_gmem_25_ARSIZE sc_out sc_lv 3 signal 25 } 
	{ m_axi_gmem_25_ARBURST sc_out sc_lv 2 signal 25 } 
	{ m_axi_gmem_25_ARLOCK sc_out sc_lv 2 signal 25 } 
	{ m_axi_gmem_25_ARCACHE sc_out sc_lv 4 signal 25 } 
	{ m_axi_gmem_25_ARPROT sc_out sc_lv 3 signal 25 } 
	{ m_axi_gmem_25_ARQOS sc_out sc_lv 4 signal 25 } 
	{ m_axi_gmem_25_ARREGION sc_out sc_lv 4 signal 25 } 
	{ m_axi_gmem_25_ARUSER sc_out sc_lv 1 signal 25 } 
	{ m_axi_gmem_25_RVALID sc_in sc_logic 1 signal 25 } 
	{ m_axi_gmem_25_RREADY sc_out sc_logic 1 signal 25 } 
	{ m_axi_gmem_25_RDATA sc_in sc_lv 32 signal 25 } 
	{ m_axi_gmem_25_RLAST sc_in sc_logic 1 signal 25 } 
	{ m_axi_gmem_25_RID sc_in sc_lv 1 signal 25 } 
	{ m_axi_gmem_25_RUSER sc_in sc_lv 1 signal 25 } 
	{ m_axi_gmem_25_RRESP sc_in sc_lv 2 signal 25 } 
	{ m_axi_gmem_25_BVALID sc_in sc_logic 1 signal 25 } 
	{ m_axi_gmem_25_BREADY sc_out sc_logic 1 signal 25 } 
	{ m_axi_gmem_25_BRESP sc_in sc_lv 2 signal 25 } 
	{ m_axi_gmem_25_BID sc_in sc_lv 1 signal 25 } 
	{ m_axi_gmem_25_BUSER sc_in sc_lv 1 signal 25 } 
	{ m_axi_gmem_26_AWVALID sc_out sc_logic 1 signal 26 } 
	{ m_axi_gmem_26_AWREADY sc_in sc_logic 1 signal 26 } 
	{ m_axi_gmem_26_AWADDR sc_out sc_lv 64 signal 26 } 
	{ m_axi_gmem_26_AWID sc_out sc_lv 1 signal 26 } 
	{ m_axi_gmem_26_AWLEN sc_out sc_lv 8 signal 26 } 
	{ m_axi_gmem_26_AWSIZE sc_out sc_lv 3 signal 26 } 
	{ m_axi_gmem_26_AWBURST sc_out sc_lv 2 signal 26 } 
	{ m_axi_gmem_26_AWLOCK sc_out sc_lv 2 signal 26 } 
	{ m_axi_gmem_26_AWCACHE sc_out sc_lv 4 signal 26 } 
	{ m_axi_gmem_26_AWPROT sc_out sc_lv 3 signal 26 } 
	{ m_axi_gmem_26_AWQOS sc_out sc_lv 4 signal 26 } 
	{ m_axi_gmem_26_AWREGION sc_out sc_lv 4 signal 26 } 
	{ m_axi_gmem_26_AWUSER sc_out sc_lv 1 signal 26 } 
	{ m_axi_gmem_26_WVALID sc_out sc_logic 1 signal 26 } 
	{ m_axi_gmem_26_WREADY sc_in sc_logic 1 signal 26 } 
	{ m_axi_gmem_26_WDATA sc_out sc_lv 32 signal 26 } 
	{ m_axi_gmem_26_WSTRB sc_out sc_lv 4 signal 26 } 
	{ m_axi_gmem_26_WLAST sc_out sc_logic 1 signal 26 } 
	{ m_axi_gmem_26_WID sc_out sc_lv 1 signal 26 } 
	{ m_axi_gmem_26_WUSER sc_out sc_lv 1 signal 26 } 
	{ m_axi_gmem_26_ARVALID sc_out sc_logic 1 signal 26 } 
	{ m_axi_gmem_26_ARREADY sc_in sc_logic 1 signal 26 } 
	{ m_axi_gmem_26_ARADDR sc_out sc_lv 64 signal 26 } 
	{ m_axi_gmem_26_ARID sc_out sc_lv 1 signal 26 } 
	{ m_axi_gmem_26_ARLEN sc_out sc_lv 8 signal 26 } 
	{ m_axi_gmem_26_ARSIZE sc_out sc_lv 3 signal 26 } 
	{ m_axi_gmem_26_ARBURST sc_out sc_lv 2 signal 26 } 
	{ m_axi_gmem_26_ARLOCK sc_out sc_lv 2 signal 26 } 
	{ m_axi_gmem_26_ARCACHE sc_out sc_lv 4 signal 26 } 
	{ m_axi_gmem_26_ARPROT sc_out sc_lv 3 signal 26 } 
	{ m_axi_gmem_26_ARQOS sc_out sc_lv 4 signal 26 } 
	{ m_axi_gmem_26_ARREGION sc_out sc_lv 4 signal 26 } 
	{ m_axi_gmem_26_ARUSER sc_out sc_lv 1 signal 26 } 
	{ m_axi_gmem_26_RVALID sc_in sc_logic 1 signal 26 } 
	{ m_axi_gmem_26_RREADY sc_out sc_logic 1 signal 26 } 
	{ m_axi_gmem_26_RDATA sc_in sc_lv 32 signal 26 } 
	{ m_axi_gmem_26_RLAST sc_in sc_logic 1 signal 26 } 
	{ m_axi_gmem_26_RID sc_in sc_lv 1 signal 26 } 
	{ m_axi_gmem_26_RUSER sc_in sc_lv 1 signal 26 } 
	{ m_axi_gmem_26_RRESP sc_in sc_lv 2 signal 26 } 
	{ m_axi_gmem_26_BVALID sc_in sc_logic 1 signal 26 } 
	{ m_axi_gmem_26_BREADY sc_out sc_logic 1 signal 26 } 
	{ m_axi_gmem_26_BRESP sc_in sc_lv 2 signal 26 } 
	{ m_axi_gmem_26_BID sc_in sc_lv 1 signal 26 } 
	{ m_axi_gmem_26_BUSER sc_in sc_lv 1 signal 26 } 
	{ m_axi_gmem_27_AWVALID sc_out sc_logic 1 signal 27 } 
	{ m_axi_gmem_27_AWREADY sc_in sc_logic 1 signal 27 } 
	{ m_axi_gmem_27_AWADDR sc_out sc_lv 64 signal 27 } 
	{ m_axi_gmem_27_AWID sc_out sc_lv 1 signal 27 } 
	{ m_axi_gmem_27_AWLEN sc_out sc_lv 8 signal 27 } 
	{ m_axi_gmem_27_AWSIZE sc_out sc_lv 3 signal 27 } 
	{ m_axi_gmem_27_AWBURST sc_out sc_lv 2 signal 27 } 
	{ m_axi_gmem_27_AWLOCK sc_out sc_lv 2 signal 27 } 
	{ m_axi_gmem_27_AWCACHE sc_out sc_lv 4 signal 27 } 
	{ m_axi_gmem_27_AWPROT sc_out sc_lv 3 signal 27 } 
	{ m_axi_gmem_27_AWQOS sc_out sc_lv 4 signal 27 } 
	{ m_axi_gmem_27_AWREGION sc_out sc_lv 4 signal 27 } 
	{ m_axi_gmem_27_AWUSER sc_out sc_lv 1 signal 27 } 
	{ m_axi_gmem_27_WVALID sc_out sc_logic 1 signal 27 } 
	{ m_axi_gmem_27_WREADY sc_in sc_logic 1 signal 27 } 
	{ m_axi_gmem_27_WDATA sc_out sc_lv 32 signal 27 } 
	{ m_axi_gmem_27_WSTRB sc_out sc_lv 4 signal 27 } 
	{ m_axi_gmem_27_WLAST sc_out sc_logic 1 signal 27 } 
	{ m_axi_gmem_27_WID sc_out sc_lv 1 signal 27 } 
	{ m_axi_gmem_27_WUSER sc_out sc_lv 1 signal 27 } 
	{ m_axi_gmem_27_ARVALID sc_out sc_logic 1 signal 27 } 
	{ m_axi_gmem_27_ARREADY sc_in sc_logic 1 signal 27 } 
	{ m_axi_gmem_27_ARADDR sc_out sc_lv 64 signal 27 } 
	{ m_axi_gmem_27_ARID sc_out sc_lv 1 signal 27 } 
	{ m_axi_gmem_27_ARLEN sc_out sc_lv 8 signal 27 } 
	{ m_axi_gmem_27_ARSIZE sc_out sc_lv 3 signal 27 } 
	{ m_axi_gmem_27_ARBURST sc_out sc_lv 2 signal 27 } 
	{ m_axi_gmem_27_ARLOCK sc_out sc_lv 2 signal 27 } 
	{ m_axi_gmem_27_ARCACHE sc_out sc_lv 4 signal 27 } 
	{ m_axi_gmem_27_ARPROT sc_out sc_lv 3 signal 27 } 
	{ m_axi_gmem_27_ARQOS sc_out sc_lv 4 signal 27 } 
	{ m_axi_gmem_27_ARREGION sc_out sc_lv 4 signal 27 } 
	{ m_axi_gmem_27_ARUSER sc_out sc_lv 1 signal 27 } 
	{ m_axi_gmem_27_RVALID sc_in sc_logic 1 signal 27 } 
	{ m_axi_gmem_27_RREADY sc_out sc_logic 1 signal 27 } 
	{ m_axi_gmem_27_RDATA sc_in sc_lv 32 signal 27 } 
	{ m_axi_gmem_27_RLAST sc_in sc_logic 1 signal 27 } 
	{ m_axi_gmem_27_RID sc_in sc_lv 1 signal 27 } 
	{ m_axi_gmem_27_RUSER sc_in sc_lv 1 signal 27 } 
	{ m_axi_gmem_27_RRESP sc_in sc_lv 2 signal 27 } 
	{ m_axi_gmem_27_BVALID sc_in sc_logic 1 signal 27 } 
	{ m_axi_gmem_27_BREADY sc_out sc_logic 1 signal 27 } 
	{ m_axi_gmem_27_BRESP sc_in sc_lv 2 signal 27 } 
	{ m_axi_gmem_27_BID sc_in sc_lv 1 signal 27 } 
	{ m_axi_gmem_27_BUSER sc_in sc_lv 1 signal 27 } 
	{ m_axi_gmem_28_AWVALID sc_out sc_logic 1 signal 28 } 
	{ m_axi_gmem_28_AWREADY sc_in sc_logic 1 signal 28 } 
	{ m_axi_gmem_28_AWADDR sc_out sc_lv 64 signal 28 } 
	{ m_axi_gmem_28_AWID sc_out sc_lv 1 signal 28 } 
	{ m_axi_gmem_28_AWLEN sc_out sc_lv 8 signal 28 } 
	{ m_axi_gmem_28_AWSIZE sc_out sc_lv 3 signal 28 } 
	{ m_axi_gmem_28_AWBURST sc_out sc_lv 2 signal 28 } 
	{ m_axi_gmem_28_AWLOCK sc_out sc_lv 2 signal 28 } 
	{ m_axi_gmem_28_AWCACHE sc_out sc_lv 4 signal 28 } 
	{ m_axi_gmem_28_AWPROT sc_out sc_lv 3 signal 28 } 
	{ m_axi_gmem_28_AWQOS sc_out sc_lv 4 signal 28 } 
	{ m_axi_gmem_28_AWREGION sc_out sc_lv 4 signal 28 } 
	{ m_axi_gmem_28_AWUSER sc_out sc_lv 1 signal 28 } 
	{ m_axi_gmem_28_WVALID sc_out sc_logic 1 signal 28 } 
	{ m_axi_gmem_28_WREADY sc_in sc_logic 1 signal 28 } 
	{ m_axi_gmem_28_WDATA sc_out sc_lv 32 signal 28 } 
	{ m_axi_gmem_28_WSTRB sc_out sc_lv 4 signal 28 } 
	{ m_axi_gmem_28_WLAST sc_out sc_logic 1 signal 28 } 
	{ m_axi_gmem_28_WID sc_out sc_lv 1 signal 28 } 
	{ m_axi_gmem_28_WUSER sc_out sc_lv 1 signal 28 } 
	{ m_axi_gmem_28_ARVALID sc_out sc_logic 1 signal 28 } 
	{ m_axi_gmem_28_ARREADY sc_in sc_logic 1 signal 28 } 
	{ m_axi_gmem_28_ARADDR sc_out sc_lv 64 signal 28 } 
	{ m_axi_gmem_28_ARID sc_out sc_lv 1 signal 28 } 
	{ m_axi_gmem_28_ARLEN sc_out sc_lv 8 signal 28 } 
	{ m_axi_gmem_28_ARSIZE sc_out sc_lv 3 signal 28 } 
	{ m_axi_gmem_28_ARBURST sc_out sc_lv 2 signal 28 } 
	{ m_axi_gmem_28_ARLOCK sc_out sc_lv 2 signal 28 } 
	{ m_axi_gmem_28_ARCACHE sc_out sc_lv 4 signal 28 } 
	{ m_axi_gmem_28_ARPROT sc_out sc_lv 3 signal 28 } 
	{ m_axi_gmem_28_ARQOS sc_out sc_lv 4 signal 28 } 
	{ m_axi_gmem_28_ARREGION sc_out sc_lv 4 signal 28 } 
	{ m_axi_gmem_28_ARUSER sc_out sc_lv 1 signal 28 } 
	{ m_axi_gmem_28_RVALID sc_in sc_logic 1 signal 28 } 
	{ m_axi_gmem_28_RREADY sc_out sc_logic 1 signal 28 } 
	{ m_axi_gmem_28_RDATA sc_in sc_lv 32 signal 28 } 
	{ m_axi_gmem_28_RLAST sc_in sc_logic 1 signal 28 } 
	{ m_axi_gmem_28_RID sc_in sc_lv 1 signal 28 } 
	{ m_axi_gmem_28_RUSER sc_in sc_lv 1 signal 28 } 
	{ m_axi_gmem_28_RRESP sc_in sc_lv 2 signal 28 } 
	{ m_axi_gmem_28_BVALID sc_in sc_logic 1 signal 28 } 
	{ m_axi_gmem_28_BREADY sc_out sc_logic 1 signal 28 } 
	{ m_axi_gmem_28_BRESP sc_in sc_lv 2 signal 28 } 
	{ m_axi_gmem_28_BID sc_in sc_lv 1 signal 28 } 
	{ m_axi_gmem_28_BUSER sc_in sc_lv 1 signal 28 } 
	{ m_axi_gmem_29_AWVALID sc_out sc_logic 1 signal 29 } 
	{ m_axi_gmem_29_AWREADY sc_in sc_logic 1 signal 29 } 
	{ m_axi_gmem_29_AWADDR sc_out sc_lv 64 signal 29 } 
	{ m_axi_gmem_29_AWID sc_out sc_lv 1 signal 29 } 
	{ m_axi_gmem_29_AWLEN sc_out sc_lv 8 signal 29 } 
	{ m_axi_gmem_29_AWSIZE sc_out sc_lv 3 signal 29 } 
	{ m_axi_gmem_29_AWBURST sc_out sc_lv 2 signal 29 } 
	{ m_axi_gmem_29_AWLOCK sc_out sc_lv 2 signal 29 } 
	{ m_axi_gmem_29_AWCACHE sc_out sc_lv 4 signal 29 } 
	{ m_axi_gmem_29_AWPROT sc_out sc_lv 3 signal 29 } 
	{ m_axi_gmem_29_AWQOS sc_out sc_lv 4 signal 29 } 
	{ m_axi_gmem_29_AWREGION sc_out sc_lv 4 signal 29 } 
	{ m_axi_gmem_29_AWUSER sc_out sc_lv 1 signal 29 } 
	{ m_axi_gmem_29_WVALID sc_out sc_logic 1 signal 29 } 
	{ m_axi_gmem_29_WREADY sc_in sc_logic 1 signal 29 } 
	{ m_axi_gmem_29_WDATA sc_out sc_lv 32 signal 29 } 
	{ m_axi_gmem_29_WSTRB sc_out sc_lv 4 signal 29 } 
	{ m_axi_gmem_29_WLAST sc_out sc_logic 1 signal 29 } 
	{ m_axi_gmem_29_WID sc_out sc_lv 1 signal 29 } 
	{ m_axi_gmem_29_WUSER sc_out sc_lv 1 signal 29 } 
	{ m_axi_gmem_29_ARVALID sc_out sc_logic 1 signal 29 } 
	{ m_axi_gmem_29_ARREADY sc_in sc_logic 1 signal 29 } 
	{ m_axi_gmem_29_ARADDR sc_out sc_lv 64 signal 29 } 
	{ m_axi_gmem_29_ARID sc_out sc_lv 1 signal 29 } 
	{ m_axi_gmem_29_ARLEN sc_out sc_lv 8 signal 29 } 
	{ m_axi_gmem_29_ARSIZE sc_out sc_lv 3 signal 29 } 
	{ m_axi_gmem_29_ARBURST sc_out sc_lv 2 signal 29 } 
	{ m_axi_gmem_29_ARLOCK sc_out sc_lv 2 signal 29 } 
	{ m_axi_gmem_29_ARCACHE sc_out sc_lv 4 signal 29 } 
	{ m_axi_gmem_29_ARPROT sc_out sc_lv 3 signal 29 } 
	{ m_axi_gmem_29_ARQOS sc_out sc_lv 4 signal 29 } 
	{ m_axi_gmem_29_ARREGION sc_out sc_lv 4 signal 29 } 
	{ m_axi_gmem_29_ARUSER sc_out sc_lv 1 signal 29 } 
	{ m_axi_gmem_29_RVALID sc_in sc_logic 1 signal 29 } 
	{ m_axi_gmem_29_RREADY sc_out sc_logic 1 signal 29 } 
	{ m_axi_gmem_29_RDATA sc_in sc_lv 32 signal 29 } 
	{ m_axi_gmem_29_RLAST sc_in sc_logic 1 signal 29 } 
	{ m_axi_gmem_29_RID sc_in sc_lv 1 signal 29 } 
	{ m_axi_gmem_29_RUSER sc_in sc_lv 1 signal 29 } 
	{ m_axi_gmem_29_RRESP sc_in sc_lv 2 signal 29 } 
	{ m_axi_gmem_29_BVALID sc_in sc_logic 1 signal 29 } 
	{ m_axi_gmem_29_BREADY sc_out sc_logic 1 signal 29 } 
	{ m_axi_gmem_29_BRESP sc_in sc_lv 2 signal 29 } 
	{ m_axi_gmem_29_BID sc_in sc_lv 1 signal 29 } 
	{ m_axi_gmem_29_BUSER sc_in sc_lv 1 signal 29 } 
	{ m_axi_gmem_30_AWVALID sc_out sc_logic 1 signal 30 } 
	{ m_axi_gmem_30_AWREADY sc_in sc_logic 1 signal 30 } 
	{ m_axi_gmem_30_AWADDR sc_out sc_lv 64 signal 30 } 
	{ m_axi_gmem_30_AWID sc_out sc_lv 1 signal 30 } 
	{ m_axi_gmem_30_AWLEN sc_out sc_lv 8 signal 30 } 
	{ m_axi_gmem_30_AWSIZE sc_out sc_lv 3 signal 30 } 
	{ m_axi_gmem_30_AWBURST sc_out sc_lv 2 signal 30 } 
	{ m_axi_gmem_30_AWLOCK sc_out sc_lv 2 signal 30 } 
	{ m_axi_gmem_30_AWCACHE sc_out sc_lv 4 signal 30 } 
	{ m_axi_gmem_30_AWPROT sc_out sc_lv 3 signal 30 } 
	{ m_axi_gmem_30_AWQOS sc_out sc_lv 4 signal 30 } 
	{ m_axi_gmem_30_AWREGION sc_out sc_lv 4 signal 30 } 
	{ m_axi_gmem_30_AWUSER sc_out sc_lv 1 signal 30 } 
	{ m_axi_gmem_30_WVALID sc_out sc_logic 1 signal 30 } 
	{ m_axi_gmem_30_WREADY sc_in sc_logic 1 signal 30 } 
	{ m_axi_gmem_30_WDATA sc_out sc_lv 32 signal 30 } 
	{ m_axi_gmem_30_WSTRB sc_out sc_lv 4 signal 30 } 
	{ m_axi_gmem_30_WLAST sc_out sc_logic 1 signal 30 } 
	{ m_axi_gmem_30_WID sc_out sc_lv 1 signal 30 } 
	{ m_axi_gmem_30_WUSER sc_out sc_lv 1 signal 30 } 
	{ m_axi_gmem_30_ARVALID sc_out sc_logic 1 signal 30 } 
	{ m_axi_gmem_30_ARREADY sc_in sc_logic 1 signal 30 } 
	{ m_axi_gmem_30_ARADDR sc_out sc_lv 64 signal 30 } 
	{ m_axi_gmem_30_ARID sc_out sc_lv 1 signal 30 } 
	{ m_axi_gmem_30_ARLEN sc_out sc_lv 8 signal 30 } 
	{ m_axi_gmem_30_ARSIZE sc_out sc_lv 3 signal 30 } 
	{ m_axi_gmem_30_ARBURST sc_out sc_lv 2 signal 30 } 
	{ m_axi_gmem_30_ARLOCK sc_out sc_lv 2 signal 30 } 
	{ m_axi_gmem_30_ARCACHE sc_out sc_lv 4 signal 30 } 
	{ m_axi_gmem_30_ARPROT sc_out sc_lv 3 signal 30 } 
	{ m_axi_gmem_30_ARQOS sc_out sc_lv 4 signal 30 } 
	{ m_axi_gmem_30_ARREGION sc_out sc_lv 4 signal 30 } 
	{ m_axi_gmem_30_ARUSER sc_out sc_lv 1 signal 30 } 
	{ m_axi_gmem_30_RVALID sc_in sc_logic 1 signal 30 } 
	{ m_axi_gmem_30_RREADY sc_out sc_logic 1 signal 30 } 
	{ m_axi_gmem_30_RDATA sc_in sc_lv 32 signal 30 } 
	{ m_axi_gmem_30_RLAST sc_in sc_logic 1 signal 30 } 
	{ m_axi_gmem_30_RID sc_in sc_lv 1 signal 30 } 
	{ m_axi_gmem_30_RUSER sc_in sc_lv 1 signal 30 } 
	{ m_axi_gmem_30_RRESP sc_in sc_lv 2 signal 30 } 
	{ m_axi_gmem_30_BVALID sc_in sc_logic 1 signal 30 } 
	{ m_axi_gmem_30_BREADY sc_out sc_logic 1 signal 30 } 
	{ m_axi_gmem_30_BRESP sc_in sc_lv 2 signal 30 } 
	{ m_axi_gmem_30_BID sc_in sc_lv 1 signal 30 } 
	{ m_axi_gmem_30_BUSER sc_in sc_lv 1 signal 30 } 
	{ m_axi_gmem_31_AWVALID sc_out sc_logic 1 signal 31 } 
	{ m_axi_gmem_31_AWREADY sc_in sc_logic 1 signal 31 } 
	{ m_axi_gmem_31_AWADDR sc_out sc_lv 64 signal 31 } 
	{ m_axi_gmem_31_AWID sc_out sc_lv 1 signal 31 } 
	{ m_axi_gmem_31_AWLEN sc_out sc_lv 8 signal 31 } 
	{ m_axi_gmem_31_AWSIZE sc_out sc_lv 3 signal 31 } 
	{ m_axi_gmem_31_AWBURST sc_out sc_lv 2 signal 31 } 
	{ m_axi_gmem_31_AWLOCK sc_out sc_lv 2 signal 31 } 
	{ m_axi_gmem_31_AWCACHE sc_out sc_lv 4 signal 31 } 
	{ m_axi_gmem_31_AWPROT sc_out sc_lv 3 signal 31 } 
	{ m_axi_gmem_31_AWQOS sc_out sc_lv 4 signal 31 } 
	{ m_axi_gmem_31_AWREGION sc_out sc_lv 4 signal 31 } 
	{ m_axi_gmem_31_AWUSER sc_out sc_lv 1 signal 31 } 
	{ m_axi_gmem_31_WVALID sc_out sc_logic 1 signal 31 } 
	{ m_axi_gmem_31_WREADY sc_in sc_logic 1 signal 31 } 
	{ m_axi_gmem_31_WDATA sc_out sc_lv 32 signal 31 } 
	{ m_axi_gmem_31_WSTRB sc_out sc_lv 4 signal 31 } 
	{ m_axi_gmem_31_WLAST sc_out sc_logic 1 signal 31 } 
	{ m_axi_gmem_31_WID sc_out sc_lv 1 signal 31 } 
	{ m_axi_gmem_31_WUSER sc_out sc_lv 1 signal 31 } 
	{ m_axi_gmem_31_ARVALID sc_out sc_logic 1 signal 31 } 
	{ m_axi_gmem_31_ARREADY sc_in sc_logic 1 signal 31 } 
	{ m_axi_gmem_31_ARADDR sc_out sc_lv 64 signal 31 } 
	{ m_axi_gmem_31_ARID sc_out sc_lv 1 signal 31 } 
	{ m_axi_gmem_31_ARLEN sc_out sc_lv 8 signal 31 } 
	{ m_axi_gmem_31_ARSIZE sc_out sc_lv 3 signal 31 } 
	{ m_axi_gmem_31_ARBURST sc_out sc_lv 2 signal 31 } 
	{ m_axi_gmem_31_ARLOCK sc_out sc_lv 2 signal 31 } 
	{ m_axi_gmem_31_ARCACHE sc_out sc_lv 4 signal 31 } 
	{ m_axi_gmem_31_ARPROT sc_out sc_lv 3 signal 31 } 
	{ m_axi_gmem_31_ARQOS sc_out sc_lv 4 signal 31 } 
	{ m_axi_gmem_31_ARREGION sc_out sc_lv 4 signal 31 } 
	{ m_axi_gmem_31_ARUSER sc_out sc_lv 1 signal 31 } 
	{ m_axi_gmem_31_RVALID sc_in sc_logic 1 signal 31 } 
	{ m_axi_gmem_31_RREADY sc_out sc_logic 1 signal 31 } 
	{ m_axi_gmem_31_RDATA sc_in sc_lv 32 signal 31 } 
	{ m_axi_gmem_31_RLAST sc_in sc_logic 1 signal 31 } 
	{ m_axi_gmem_31_RID sc_in sc_lv 1 signal 31 } 
	{ m_axi_gmem_31_RUSER sc_in sc_lv 1 signal 31 } 
	{ m_axi_gmem_31_RRESP sc_in sc_lv 2 signal 31 } 
	{ m_axi_gmem_31_BVALID sc_in sc_logic 1 signal 31 } 
	{ m_axi_gmem_31_BREADY sc_out sc_logic 1 signal 31 } 
	{ m_axi_gmem_31_BRESP sc_in sc_lv 2 signal 31 } 
	{ m_axi_gmem_31_BID sc_in sc_lv 1 signal 31 } 
	{ m_axi_gmem_31_BUSER sc_in sc_lv 1 signal 31 } 
	{ m_axi_gmem_AWVALID sc_out sc_logic 1 signal 32 } 
	{ m_axi_gmem_AWREADY sc_in sc_logic 1 signal 32 } 
	{ m_axi_gmem_AWADDR sc_out sc_lv 64 signal 32 } 
	{ m_axi_gmem_AWID sc_out sc_lv 1 signal 32 } 
	{ m_axi_gmem_AWLEN sc_out sc_lv 8 signal 32 } 
	{ m_axi_gmem_AWSIZE sc_out sc_lv 3 signal 32 } 
	{ m_axi_gmem_AWBURST sc_out sc_lv 2 signal 32 } 
	{ m_axi_gmem_AWLOCK sc_out sc_lv 2 signal 32 } 
	{ m_axi_gmem_AWCACHE sc_out sc_lv 4 signal 32 } 
	{ m_axi_gmem_AWPROT sc_out sc_lv 3 signal 32 } 
	{ m_axi_gmem_AWQOS sc_out sc_lv 4 signal 32 } 
	{ m_axi_gmem_AWREGION sc_out sc_lv 4 signal 32 } 
	{ m_axi_gmem_AWUSER sc_out sc_lv 1 signal 32 } 
	{ m_axi_gmem_WVALID sc_out sc_logic 1 signal 32 } 
	{ m_axi_gmem_WREADY sc_in sc_logic 1 signal 32 } 
	{ m_axi_gmem_WDATA sc_out sc_lv 32 signal 32 } 
	{ m_axi_gmem_WSTRB sc_out sc_lv 4 signal 32 } 
	{ m_axi_gmem_WLAST sc_out sc_logic 1 signal 32 } 
	{ m_axi_gmem_WID sc_out sc_lv 1 signal 32 } 
	{ m_axi_gmem_WUSER sc_out sc_lv 1 signal 32 } 
	{ m_axi_gmem_ARVALID sc_out sc_logic 1 signal 32 } 
	{ m_axi_gmem_ARREADY sc_in sc_logic 1 signal 32 } 
	{ m_axi_gmem_ARADDR sc_out sc_lv 64 signal 32 } 
	{ m_axi_gmem_ARID sc_out sc_lv 1 signal 32 } 
	{ m_axi_gmem_ARLEN sc_out sc_lv 8 signal 32 } 
	{ m_axi_gmem_ARSIZE sc_out sc_lv 3 signal 32 } 
	{ m_axi_gmem_ARBURST sc_out sc_lv 2 signal 32 } 
	{ m_axi_gmem_ARLOCK sc_out sc_lv 2 signal 32 } 
	{ m_axi_gmem_ARCACHE sc_out sc_lv 4 signal 32 } 
	{ m_axi_gmem_ARPROT sc_out sc_lv 3 signal 32 } 
	{ m_axi_gmem_ARQOS sc_out sc_lv 4 signal 32 } 
	{ m_axi_gmem_ARREGION sc_out sc_lv 4 signal 32 } 
	{ m_axi_gmem_ARUSER sc_out sc_lv 1 signal 32 } 
	{ m_axi_gmem_RVALID sc_in sc_logic 1 signal 32 } 
	{ m_axi_gmem_RREADY sc_out sc_logic 1 signal 32 } 
	{ m_axi_gmem_RDATA sc_in sc_lv 32 signal 32 } 
	{ m_axi_gmem_RLAST sc_in sc_logic 1 signal 32 } 
	{ m_axi_gmem_RID sc_in sc_lv 1 signal 32 } 
	{ m_axi_gmem_RUSER sc_in sc_lv 1 signal 32 } 
	{ m_axi_gmem_RRESP sc_in sc_lv 2 signal 32 } 
	{ m_axi_gmem_BVALID sc_in sc_logic 1 signal 32 } 
	{ m_axi_gmem_BREADY sc_out sc_logic 1 signal 32 } 
	{ m_axi_gmem_BRESP sc_in sc_lv 2 signal 32 } 
	{ m_axi_gmem_BID sc_in sc_lv 1 signal 32 } 
	{ m_axi_gmem_BUSER sc_in sc_lv 1 signal 32 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 9 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"seq_align_multiple_static","role":"start","value":"0","valid_bit":"0"},{"name":"seq_align_multiple_static","role":"continue","value":"0","valid_bit":"4"},{"name":"seq_align_multiple_static","role":"auto_start","value":"0","valid_bit":"7"},{"name":"querys_0","role":"data","value":"16"},{"name":"querys_1","role":"data","value":"28"},{"name":"querys_2","role":"data","value":"40"},{"name":"querys_3","role":"data","value":"52"},{"name":"querys_4","role":"data","value":"64"},{"name":"querys_5","role":"data","value":"76"},{"name":"querys_6","role":"data","value":"88"},{"name":"querys_7","role":"data","value":"100"},{"name":"querys_8","role":"data","value":"112"},{"name":"querys_9","role":"data","value":"124"},{"name":"querys_10","role":"data","value":"136"},{"name":"querys_11","role":"data","value":"148"},{"name":"querys_12","role":"data","value":"160"},{"name":"querys_13","role":"data","value":"172"},{"name":"querys_14","role":"data","value":"184"},{"name":"querys_15","role":"data","value":"196"},{"name":"querys_16","role":"data","value":"208"},{"name":"querys_17","role":"data","value":"220"},{"name":"querys_18","role":"data","value":"232"},{"name":"querys_19","role":"data","value":"244"},{"name":"querys_20","role":"data","value":"256"},{"name":"querys_21","role":"data","value":"268"},{"name":"querys_22","role":"data","value":"280"},{"name":"querys_23","role":"data","value":"292"},{"name":"querys_24","role":"data","value":"304"},{"name":"querys_25","role":"data","value":"316"},{"name":"querys_26","role":"data","value":"328"},{"name":"querys_27","role":"data","value":"340"},{"name":"querys_28","role":"data","value":"352"},{"name":"querys_29","role":"data","value":"364"},{"name":"querys_30","role":"data","value":"376"},{"name":"querys_31","role":"data","value":"388"},{"name":"references","role":"data","value":"400"},{"name":"query_lengths","role":"data","value":"412"},{"name":"reference_lengths","role":"data","value":"424"},{"name":"penalties","role":"data","value":"436"},{"name":"tb_streams","role":"data","value":"448"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"seq_align_multiple_static","role":"start","value":"0","valid_bit":"0"},{"name":"seq_align_multiple_static","role":"done","value":"0","valid_bit":"1"},{"name":"seq_align_multiple_static","role":"idle","value":"0","valid_bit":"2"},{"name":"seq_align_multiple_static","role":"ready","value":"0","valid_bit":"3"},{"name":"seq_align_multiple_static","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem_0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_0", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_0", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_1", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_2_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_2_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_2_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_2_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_2_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_2_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_2_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_2_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_2_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_2_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_2_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_2_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_2_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_2_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_2_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_2_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_2", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_2_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_2", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_2_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_2_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_2_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_2_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_2_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_2_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_2_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_2_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_2_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_2_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_2_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_2_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_2_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_2_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_2_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_2_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_2_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_2_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_2_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_2", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_2_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_2_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_2_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_2_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_2", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_2_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_2_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_2_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_2", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_2_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_2_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_2", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_3_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_3_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_3_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_3_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_3_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_3_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_3_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_3_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_3_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_3_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_3_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_3_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_3_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_3_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_3_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_3_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_3", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_3_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_3", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_3_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_3_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_3_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_3_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_3_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_3_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_3_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_3_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_3_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_3_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_3_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_3_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_3_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_3_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_3_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_3_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_3_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_3_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_3_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_3", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_3_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_3_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_3_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_3_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_3", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_3_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_3_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_3_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_3", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_3_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_3_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_3", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_4_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_4_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_4_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_4_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_4_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_4_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_4_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_4_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_4_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_4_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_4_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_4_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_4_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_4_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_4_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_4_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_4", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_4_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_4", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_4_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_4_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_4_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_4_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_4_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_4_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_4_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_4_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_4_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_4_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_4_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_4_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_4_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_4_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_4_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_4_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_4_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_4_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_4_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_4", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_4_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_4_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_4_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_4_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_4", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_4_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_4_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_4_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_4", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_4_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_4_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_4", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_5_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_5_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_5_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_5_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_5_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_5_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_5_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_5_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_5_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_5_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_5_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_5_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_5_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_5_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_5_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_5_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_5", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_5_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_5", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_5_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_5_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_5_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_5_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_5_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_5_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_5_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_5_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_5_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_5_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_5_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_5_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_5_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_5_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_5_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_5_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_5_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_5_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_5_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_5", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_5_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_5_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_5_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_5_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_5", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_5_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_5_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_5_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_5", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_5_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_5_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_5", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_6_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_6_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_6_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_6", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_6_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_6_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_6", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_6_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_6", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_6_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_6", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_6_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_6", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_6_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_6", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_6_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_6", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_6_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_6", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_6_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_6", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_6_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_6_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_6_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_6_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_6", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_6_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_6", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_6_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_6_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_6_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_6_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_6_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_6_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_6", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_6_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_6_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_6", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_6_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_6", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_6_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_6", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_6_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_6", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_6_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_6", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_6_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_6", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_6_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_6", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_6_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_6", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_6_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_6_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_6_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_6_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_6", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_6_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_6_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_6_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_6_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_6", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_6_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_6_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_6_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_6", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_6_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_6_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_6", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_7_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_7_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_7_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_7", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_7_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_7_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_7", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_7_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_7", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_7_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_7", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_7_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_7", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_7_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_7", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_7_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_7", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_7_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_7", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_7_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_7", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_7_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_7_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_7_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_7_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_7", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_7_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_7", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_7_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_7_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_7_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_7_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_7_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_7_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_7", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_7_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_7_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_7", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_7_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_7", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_7_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_7", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_7_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_7", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_7_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_7", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_7_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_7", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_7_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_7", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_7_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_7", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_7_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_7_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_7_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_7_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_7", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_7_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_7_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_7_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_7_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_7", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_7_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_7_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_7_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_7", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_7_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_7_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_7", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_8_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_8_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_8_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_8", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_8_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_8_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_8", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_8_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_8", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_8_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_8", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_8_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_8", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_8_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_8", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_8_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_8", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_8_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_8", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_8_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_8", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_8_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_8_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_8_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_8_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_8", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_8_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_8", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_8_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_8_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_8_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_8_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_8_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_8_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_8", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_8_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_8_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_8", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_8_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_8", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_8_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_8", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_8_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_8", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_8_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_8", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_8_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_8", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_8_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_8", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_8_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_8", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_8_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_8_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_8_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_8_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_8", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_8_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_8_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_8_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_8_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_8", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_8_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_8_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_8_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_8", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_8_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_8_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_8", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_9_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_9_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_9_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_9", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_9_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_9_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_9", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_9_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_9", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_9_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_9", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_9_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_9", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_9_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_9", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_9_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_9", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_9_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_9", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_9_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_9", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_9_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_9_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_9_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_9_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_9", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_9_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_9", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_9_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_9_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_9_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_9_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_9_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_9_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_9", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_9_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_9_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_9", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_9_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_9", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_9_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_9", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_9_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_9", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_9_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_9", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_9_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_9", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_9_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_9", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_9_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_9", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_9_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_9_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_9_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_9_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_9", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_9_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_9_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_9_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_9_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_9", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_9_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_9_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_9_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_9", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_9_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_9_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_9", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_10_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_10_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_10_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_10", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_10_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_10_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_10", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_10_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_10", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_10_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_10", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_10_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_10", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_10_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_10", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_10_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_10", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_10_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_10", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_10_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_10", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_10_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_10_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_10_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_10_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_10", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_10_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_10", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_10_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_10_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_10_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_10_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_10_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_10_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_10", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_10_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_10_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_10", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_10_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_10", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_10_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_10", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_10_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_10", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_10_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_10", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_10_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_10", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_10_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_10", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_10_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_10", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_10_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_10_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_10_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_10_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_10", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_10_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_10_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_10_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_10_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_10", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_10_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_10_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_10_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_10", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_10_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_10_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_10", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_11_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_11_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_11_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_11", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_11_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_11_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_11", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_11_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_11", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_11_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_11", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_11_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_11", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_11_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_11", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_11_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_11", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_11_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_11", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_11_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_11", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_11_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_11_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_11_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_11_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_11", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_11_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_11", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_11_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_11_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_11_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_11_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_11_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_11_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_11", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_11_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_11_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_11", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_11_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_11", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_11_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_11", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_11_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_11", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_11_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_11", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_11_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_11", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_11_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_11", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_11_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_11", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_11_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_11_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_11_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_11_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_11", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_11_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_11_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_11_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_11_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_11", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_11_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_11_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_11_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_11", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_11_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_11_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_11", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_12_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_12_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_12_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_12", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_12_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_12_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_12", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_12_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_12", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_12_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_12", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_12_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_12", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_12_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_12", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_12_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_12", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_12_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_12", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_12_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_12", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_12_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_12_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_12_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_12_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_12", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_12_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_12", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_12_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_12_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_12_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_12_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_12_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_12_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_12", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_12_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_12_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_12", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_12_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_12", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_12_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_12", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_12_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_12", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_12_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_12", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_12_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_12", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_12_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_12", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_12_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_12", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_12_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_12_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_12_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_12_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_12", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_12_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_12_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_12_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_12_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_12", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_12_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_12_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_12_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_12", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_12_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_12_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_12", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_13_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_13_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_13_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_13", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_13_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_13_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_13", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_13_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_13", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_13_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_13", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_13_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_13", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_13_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_13", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_13_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_13", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_13_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_13", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_13_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_13", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_13_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_13_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_13_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_13_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_13", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_13_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_13", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_13_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_13_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_13_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_13_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_13_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_13_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_13", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_13_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_13_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_13", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_13_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_13", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_13_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_13", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_13_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_13", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_13_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_13", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_13_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_13", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_13_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_13", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_13_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_13", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_13_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_13_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_13_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_13_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_13", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_13_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_13_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_13_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_13_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_13", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_13_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_13_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_13_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_13", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_13_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_13_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_13", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_14_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_14_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_14_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_14", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_14_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_14_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_14", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_14_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_14", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_14_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_14", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_14_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_14", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_14_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_14", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_14_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_14", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_14_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_14", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_14_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_14", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_14_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_14_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_14_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_14_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_14", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_14_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_14", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_14_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_14_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_14_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_14_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_14_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_14_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_14", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_14_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_14_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_14", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_14_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_14", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_14_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_14", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_14_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_14", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_14_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_14", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_14_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_14", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_14_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_14", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_14_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_14", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_14_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_14_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_14_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_14_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_14", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_14_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_14_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_14_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_14_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_14", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_14_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_14_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_14_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_14", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_14_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_14_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_14", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_15_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_15_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_15_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_15", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_15_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_15_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_15", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_15_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_15", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_15_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_15", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_15_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_15", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_15_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_15", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_15_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_15", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_15_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_15", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_15_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_15", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_15_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_15_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_15_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_15_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_15", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_15_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_15", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_15_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_15_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_15_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_15_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_15_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_15_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_15", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_15_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_15_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_15", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_15_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_15", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_15_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_15", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_15_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_15", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_15_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_15", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_15_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_15", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_15_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_15", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_15_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_15", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_15_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_15_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_15_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_15_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_15", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_15_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_15_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_15_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_15_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_15", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_15_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_15_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_15_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_15", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_15_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_15_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_15", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_16_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_16_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_16_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_16", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_16_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_16_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_16", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_16_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_16", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_16_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_16", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_16_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_16", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_16_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_16", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_16_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_16", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_16_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_16", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_16_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_16", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_16_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_16_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_16_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_16_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_16", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_16_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_16", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_16_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_16_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_16_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_16_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_16_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_16_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_16", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_16_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_16_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_16", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_16_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_16", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_16_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_16", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_16_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_16", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_16_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_16", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_16_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_16", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_16_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_16", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_16_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_16", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_16_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_16_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_16_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_16_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_16", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_16_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_16_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_16_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_16_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_16", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_16_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_16_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_16_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_16", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_16_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_16_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_16", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_17_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_17_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_17_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_17", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_17_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_17_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_17", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_17_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_17", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_17_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_17", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_17_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_17", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_17_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_17", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_17_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_17", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_17_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_17", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_17_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_17", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_17_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_17_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_17_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_17_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_17", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_17_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_17", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_17_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_17_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_17_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_17_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_17_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_17_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_17", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_17_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_17_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_17", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_17_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_17", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_17_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_17", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_17_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_17", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_17_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_17", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_17_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_17", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_17_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_17", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_17_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_17", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_17_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_17_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_17_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_17_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_17", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_17_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_17_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_17_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_17_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_17", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_17_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_17_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_17_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_17", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_17_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_17_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_17", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_18_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_18_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_18_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_18", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_18_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_18_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_18", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_18_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_18", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_18_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_18", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_18_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_18", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_18_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_18", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_18_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_18", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_18_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_18", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_18_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_18", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_18_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_18_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_18_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_18_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_18", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_18_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_18", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_18_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_18_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_18_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_18_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_18_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_18_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_18", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_18_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_18_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_18", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_18_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_18", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_18_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_18", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_18_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_18", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_18_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_18", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_18_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_18", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_18_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_18", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_18_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_18", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_18_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_18_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_18_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_18_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_18", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_18_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_18_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_18_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_18_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_18", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_18_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_18_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_18_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_18", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_18_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_18_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_18", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_19_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_19_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_19_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_19", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_19_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_19_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_19", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_19_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_19", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_19_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_19", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_19_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_19", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_19_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_19", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_19_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_19", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_19_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_19", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_19_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_19", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_19_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_19_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_19_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_19_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_19", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_19_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_19", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_19_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_19_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_19_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_19_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_19_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_19_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_19", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_19_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_19_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_19", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_19_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_19", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_19_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_19", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_19_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_19", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_19_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_19", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_19_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_19", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_19_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_19", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_19_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_19", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_19_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_19_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_19_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_19_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_19", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_19_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_19_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_19_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_19_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_19", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_19_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_19_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_19_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_19", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_19_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_19_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_19", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_20_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_20_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_20_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_20", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_20_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_20_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_20", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_20_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_20", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_20_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_20", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_20_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_20", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_20_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_20", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_20_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_20", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_20_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_20", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_20_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_20", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_20_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_20_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_20_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_20_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_20", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_20_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_20", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_20_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_20_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_20_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_20_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_20_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_20_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_20", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_20_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_20_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_20", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_20_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_20", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_20_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_20", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_20_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_20", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_20_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_20", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_20_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_20", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_20_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_20", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_20_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_20", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_20_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_20_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_20_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_20_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_20", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_20_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_20_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_20_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_20_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_20", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_20_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_20_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_20_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_20", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_20_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_20_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_20", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_21_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_21_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_21_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_21", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_21_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_21_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_21", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_21_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_21", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_21_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_21", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_21_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_21", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_21_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_21", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_21_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_21", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_21_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_21", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_21_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_21", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_21_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_21_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_21_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_21_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_21", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_21_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_21", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_21_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_21_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_21_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_21_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_21_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_21_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_21", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_21_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_21_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_21", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_21_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_21", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_21_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_21", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_21_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_21", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_21_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_21", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_21_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_21", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_21_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_21", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_21_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_21", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_21_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_21_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_21_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_21_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_21", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_21_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_21_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_21_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_21_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_21", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_21_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_21_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_21_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_21", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_21_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_21_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_21", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_22_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_22_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_22_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_22", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_22_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_22_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_22", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_22_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_22", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_22_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_22", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_22_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_22", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_22_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_22", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_22_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_22", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_22_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_22", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_22_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_22", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_22_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_22_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_22_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_22_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_22", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_22_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_22", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_22_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_22_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_22_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_22_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_22_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_22_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_22", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_22_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_22_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_22", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_22_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_22", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_22_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_22", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_22_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_22", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_22_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_22", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_22_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_22", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_22_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_22", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_22_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_22", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_22_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_22_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_22_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_22_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_22", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_22_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_22_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_22_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_22_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_22", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_22_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_22_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_22_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_22", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_22_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_22_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_22", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_23_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_23_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_23_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_23", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_23_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_23_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_23", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_23_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_23", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_23_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_23", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_23_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_23", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_23_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_23", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_23_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_23", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_23_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_23", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_23_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_23", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_23_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_23_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_23_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_23_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_23", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_23_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_23", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_23_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_23_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_23_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_23_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_23_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_23_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_23", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_23_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_23_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_23", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_23_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_23", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_23_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_23", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_23_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_23", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_23_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_23", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_23_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_23", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_23_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_23", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_23_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_23", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_23_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_23_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_23_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_23_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_23", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_23_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_23_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_23_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_23_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_23", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_23_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_23_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_23_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_23", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_23_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_23_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_23", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_24_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_24_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_24_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_24", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_24_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_24_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_24", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_24_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_24", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_24_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_24", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_24_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_24", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_24_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_24", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_24_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_24", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_24_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_24", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_24_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_24", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_24_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_24_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_24_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_24_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_24", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_24_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_24", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_24_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_24_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_24_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_24_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_24_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_24_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_24", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_24_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_24_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_24", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_24_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_24", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_24_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_24", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_24_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_24", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_24_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_24", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_24_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_24", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_24_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_24", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_24_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_24", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_24_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_24_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_24_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_24_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_24", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_24_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_24_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_24_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_24_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_24", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_24_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_24_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_24_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_24", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_24_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_24_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_24", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_25_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_25_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_25_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_25", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_25_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_25_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_25", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_25_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_25", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_25_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_25", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_25_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_25", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_25_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_25", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_25_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_25", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_25_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_25", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_25_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_25", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_25_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_25_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_25_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_25_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_25", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_25_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_25", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_25_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_25_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_25_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_25_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_25_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_25_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_25", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_25_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_25_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_25", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_25_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_25", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_25_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_25", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_25_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_25", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_25_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_25", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_25_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_25", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_25_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_25", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_25_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_25", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_25_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_25_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_25_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_25_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_25", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_25_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_25_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_25_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_25_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_25", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_25_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_25_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_25_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_25", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_25_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_25_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_25", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_26_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_26_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_26_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_26", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_26_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_26_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_26", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_26_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_26", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_26_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_26", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_26_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_26", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_26_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_26", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_26_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_26", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_26_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_26", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_26_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_26", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_26_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_26_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_26_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_26_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_26", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_26_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_26", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_26_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_26_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_26_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_26_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_26_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_26_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_26", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_26_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_26_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_26", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_26_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_26", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_26_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_26", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_26_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_26", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_26_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_26", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_26_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_26", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_26_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_26", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_26_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_26", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_26_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_26_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_26_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_26_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_26", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_26_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_26_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_26_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_26_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_26", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_26_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_26_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_26_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_26", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_26_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_26_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_26", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_27_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_27_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_27_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_27", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_27_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_27_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_27", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_27_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_27", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_27_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_27", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_27_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_27", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_27_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_27", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_27_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_27", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_27_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_27", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_27_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_27", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_27_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_27_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_27_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_27_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_27", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_27_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_27", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_27_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_27_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_27_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_27_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_27_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_27_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_27", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_27_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_27_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_27", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_27_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_27", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_27_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_27", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_27_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_27", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_27_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_27", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_27_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_27", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_27_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_27", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_27_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_27", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_27_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_27_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_27_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_27_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_27", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_27_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_27_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_27_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_27_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_27", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_27_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_27_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_27_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_27", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_27_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_27_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_27", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_28_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_28_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_28_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_28", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_28_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_28_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_28", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_28_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_28", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_28_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_28", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_28_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_28", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_28_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_28", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_28_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_28", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_28_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_28", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_28_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_28", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_28_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_28_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_28_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_28_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_28", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_28_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_28", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_28_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_28_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_28_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_28_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_28_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_28_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_28", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_28_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_28_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_28", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_28_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_28", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_28_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_28", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_28_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_28", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_28_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_28", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_28_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_28", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_28_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_28", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_28_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_28", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_28_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_28_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_28_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_28_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_28", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_28_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_28_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_28_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_28_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_28", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_28_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_28_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_28_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_28", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_28_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_28_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_28", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_29_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_29_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_29_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_29", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_29_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_29_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_29", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_29_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_29", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_29_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_29", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_29_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_29", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_29_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_29", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_29_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_29", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_29_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_29", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_29_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_29", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_29_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_29_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_29_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_29_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_29", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_29_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_29", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_29_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_29_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_29_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_29_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_29_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_29_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_29", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_29_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_29_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_29", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_29_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_29", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_29_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_29", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_29_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_29", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_29_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_29", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_29_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_29", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_29_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_29", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_29_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_29", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_29_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_29_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_29_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_29_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_29", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_29_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_29_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_29_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_29_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_29", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_29_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_29_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_29_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_29", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_29_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_29_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_29", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_30_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_30_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_30_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_30", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_30_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_30_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_30", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_30_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_30", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_30_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_30", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_30_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_30", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_30_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_30", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_30_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_30", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_30_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_30", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_30_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_30", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_30_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_30_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_30_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_30_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_30", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_30_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_30", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_30_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_30_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_30_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_30_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_30_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_30_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_30", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_30_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_30_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_30", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_30_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_30", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_30_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_30", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_30_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_30", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_30_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_30", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_30_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_30", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_30_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_30", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_30_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_30", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_30_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_30_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_30_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_30_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_30", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_30_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_30_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_30_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_30_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_30", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_30_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_30_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_30_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_30", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_30_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_30_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_30", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_31_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_31_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_31_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_31", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_31_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_31_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_31", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem_31_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_31", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem_31_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_31", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem_31_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_31", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem_31_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_31", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem_31_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_31", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem_31_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_31", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem_31_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_31", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem_31_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem_31_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem_31_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem_31_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_31", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem_31_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_31", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem_31_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem_31_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "WID" }} , 
 	{ "name": "m_axi_gmem_31_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem_31_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem_31_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem_31_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem_31", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem_31_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem_31_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem_31", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem_31_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_31", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem_31_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_31", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem_31_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_31", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem_31_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_31", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem_31_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem_31", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem_31_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_31", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem_31_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem_31", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem_31_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem_31_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem_31_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem_31_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem_31", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem_31_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem_31_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "RID" }} , 
 	{ "name": "m_axi_gmem_31_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_31_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_31", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_31_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_31_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_31_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem_31", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_31_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_31_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem_31", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BID" }} , 
 	{ "name": "m_axi_gmem_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "67", "68", "69"],
		"CDFG" : "seq_align_multiple_static",
		"Protocol" : "ap_ctrl_chain",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1", "real_start" : "0",
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
					{"ID" : "1", "SubInstance" : "grp_AlignStatic_fu_404", "Port" : "gmem_0", "Inst_start_state" : "75", "Inst_end_state" : "76"}]},
			{"Name" : "gmem_1", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_2", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_3", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_4", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_5", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_6", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_7", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_8", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_9", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_10", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_11", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_12", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_13", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_14", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_15", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_16", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_17", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_18", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_19", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_20", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_21", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_22", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_23", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_24", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_25", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_26", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_27", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_28", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_29", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_30", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem_31", "Type" : "MAXI", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"BlockSignal" : [
					{"Name" : "gmem_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_AlignStatic_fu_404", "Port" : "gmem", "Inst_start_state" : "75", "Inst_end_state" : "76"}]},
			{"Name" : "querys_0", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "querys_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "references", "Type" : "None", "Direction" : "I"},
			{"Name" : "query_lengths", "Type" : "None", "Direction" : "I"},
			{"Name" : "reference_lengths", "Type" : "None", "Direction" : "I"},
			{"Name" : "penalties", "Type" : "None", "Direction" : "I"},
			{"Name" : "tb_streams", "Type" : "None", "Direction" : "I"},
			{"Name" : "local_max_pe", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_AlignStatic_fu_404", "Port" : "local_max_pe", "Inst_start_state" : "75", "Inst_end_state" : "76"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "46", "48", "54", "55", "56", "60", "62"],
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
					{"ID" : "54", "SubInstance" : "grp_PrepareLocalQuery_fu_851", "Port" : "gmem_0", "Inst_start_state" : "8", "Inst_end_state" : "9"}]},
			{"Name" : "query", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "62", "SubInstance" : "grp_Traceback_fu_1059", "Port" : "gmem", "Inst_start_state" : "16", "Inst_end_state" : "17"},
					{"ID" : "56", "SubInstance" : "grp_ChunkCompute_fu_869", "Port" : "gmem", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
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
					{"ID" : "48", "SubInstance" : "grp_AlignStatic_Pipeline_VITIS_LOOP_463_1_fu_746", "Port" : "local_max_pe", "Inst_start_state" : "7", "Inst_end_state" : "14"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_559_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_state7", "LastState" : ["ap_ST_fsm_state13"], "QuitState" : ["ap_ST_fsm_state7"], "PreState" : ["ap_ST_fsm_state6"], "PostState" : ["ap_ST_fsm_state14"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.init_col_score_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.init_row_score_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_1_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_2_U", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_3_U", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_4_U", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_5_U", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_6_U", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_7_U", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_8_U", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_9_U", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_10_U", "Parent" : "1"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_11_U", "Parent" : "1"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_12_U", "Parent" : "1"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_13_U", "Parent" : "1"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_14_U", "Parent" : "1"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_15_U", "Parent" : "1"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_16_U", "Parent" : "1"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_17_U", "Parent" : "1"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_18_U", "Parent" : "1"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_19_U", "Parent" : "1"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_20_U", "Parent" : "1"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_21_U", "Parent" : "1"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_22_U", "Parent" : "1"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_23_U", "Parent" : "1"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_24_U", "Parent" : "1"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_25_U", "Parent" : "1"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_26_U", "Parent" : "1"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_27_U", "Parent" : "1"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_28_U", "Parent" : "1"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_29_U", "Parent" : "1"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_30_U", "Parent" : "1"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.tbp_matrix_31_U", "Parent" : "1"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.local_init_col_score_U", "Parent" : "1"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.local_init_col_score_1_U", "Parent" : "1"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.local_init_col_score_2_U", "Parent" : "1"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.preserved_row_buffer_U", "Parent" : "1"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.preserved_row_buffer_3_U", "Parent" : "1"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.preserved_row_buffer_4_U", "Parent" : "1"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_ArrSet_vector_ap_fixed_16_11_5_3_0_3ul_256_1_fu_704", "Parent" : "1",
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
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_ArrSet_vector_ap_fixed_16_11_5_3_0_3ul_256_s_fu_716", "Parent" : "1",
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
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_AlignStatic_Pipeline_VITIS_LOOP_128_1_fu_728", "Parent" : "1", "Child" : ["45"],
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
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_AlignStatic_Pipeline_VITIS_LOOP_128_1_fu_728.flow_control_loop_pipe_sequential_init_U", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_AlignStatic_Pipeline_VITIS_LOOP_117_1_fu_737", "Parent" : "1", "Child" : ["47"],
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
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_AlignStatic_Pipeline_VITIS_LOOP_117_1_fu_737.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_AlignStatic_Pipeline_VITIS_LOOP_463_1_fu_746", "Parent" : "1", "Child" : ["49", "50", "51", "52", "53"],
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
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_AlignStatic_Pipeline_VITIS_LOOP_463_1_fu_746.local_max_pe_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_AlignStatic_Pipeline_VITIS_LOOP_463_1_fu_746.mux_32_5_16_1_1_U674", "Parent" : "48"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_AlignStatic_Pipeline_VITIS_LOOP_463_1_fu_746.mux_32_5_32_1_1_U675", "Parent" : "48"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_AlignStatic_Pipeline_VITIS_LOOP_463_1_fu_746.mux_32_5_32_1_1_U676", "Parent" : "48"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_AlignStatic_Pipeline_VITIS_LOOP_463_1_fu_746.flow_control_loop_pipe_sequential_init_U", "Parent" : "48"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_PrepareLocalQuery_fu_851", "Parent" : "1",
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
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_CopyColScore_fu_860", "Parent" : "1",
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
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_ChunkCompute_fu_869", "Parent" : "1", "Child" : ["57"],
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
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "gmem", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "reference", "Type" : "None", "Direction" : "I"},
			{"Name" : "init_col_scr_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "init_col_scr_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "init_col_scr_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "init_col_scr_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "init_col_scr_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "init_col_scr_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "init_row_scr", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "init_row_scr", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "global_query_length", "Type" : "None", "Direction" : "I"},
			{"Name" : "reference_length", "Type" : "None", "Direction" : "I"},
			{"Name" : "penalties_0_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "penalties_1_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "penalties_2_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "penalties_3_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "preserved_row_scr_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "preserved_row_scr_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "preserved_row_scr_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "preserved_row_scr_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "preserved_row_scr_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "preserved_row_scr_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
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
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_2", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_3", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_4", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_5", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_6", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_7", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_8", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_9", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_10", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_11", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_12", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_13", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_14", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_15", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_16", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_16", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_17", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_17", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_18", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_18", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_19", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_19", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_20", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_20", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_21", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_21", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_22", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_22", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_23", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_23", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_24", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_24", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_25", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_25", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_26", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_26", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_27", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_27", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_28", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_28", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_29", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_29", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_30", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_30", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "chunk_tbp_out_31", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "57", "SubInstance" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Port" : "chunk_tbp_out_31", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "idx", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_ChunkCompute_fu_869.grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598", "Parent" : "56", "Child" : ["58", "59"],
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
	{"ID" : "58", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_ChunkCompute_fu_869.grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598.call_ret_UpdatePEMaximum_fu_16690", "Parent" : "57",
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
	{"ID" : "59", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_ChunkCompute_fu_869.grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598.flow_control_loop_pipe_sequential_init_U", "Parent" : "57"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_AlignStatic_Pipeline_4_fu_1051", "Parent" : "1", "Child" : ["61"],
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
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_AlignStatic_Pipeline_4_fu_1051.flow_control_loop_pipe_sequential_init_U", "Parent" : "60"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_Traceback_fu_1059", "Parent" : "1", "Child" : ["63", "66"],
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
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_8", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_9", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_10", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_11", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_12", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_13", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_14", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_15", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_16", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_17", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_18", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_19", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_20", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_21", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_22", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_23", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_24", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_25", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_26", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_27", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_28", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_29", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_30", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "tbmat_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "tbmat_31", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "gmem", "Type" : "MAXI", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "63", "SubInstance" : "grp_Traceback_Pipeline_traceback_loop_fu_552", "Port" : "gmem", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "traceback_out", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_row", "Type" : "None", "Direction" : "I"},
			{"Name" : "max_col", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_Traceback_fu_1059.grp_Traceback_Pipeline_traceback_loop_fu_552", "Parent" : "62", "Child" : ["64", "65"],
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
	{"ID" : "64", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_Traceback_fu_1059.grp_Traceback_Pipeline_traceback_loop_fu_552.mux_32_5_3_1_1_U779", "Parent" : "63"},
	{"ID" : "65", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_Traceback_fu_1059.grp_Traceback_Pipeline_traceback_loop_fu_552.flow_control_loop_pipe_sequential_init_U", "Parent" : "63"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_AlignStatic_fu_404.grp_Traceback_fu_1059.mux_32_5_2_1_1_U819", "Parent" : "62"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_m_axi_U", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem_0_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	seq_align_multiple_static {
		gmem_0 {Type I LastRead 2335 FirstWrite -1}
		gmem_1 {Type I LastRead -1 FirstWrite -1}
		gmem_2 {Type I LastRead -1 FirstWrite -1}
		gmem_3 {Type I LastRead -1 FirstWrite -1}
		gmem_4 {Type I LastRead -1 FirstWrite -1}
		gmem_5 {Type I LastRead -1 FirstWrite -1}
		gmem_6 {Type I LastRead -1 FirstWrite -1}
		gmem_7 {Type I LastRead -1 FirstWrite -1}
		gmem_8 {Type I LastRead -1 FirstWrite -1}
		gmem_9 {Type I LastRead -1 FirstWrite -1}
		gmem_10 {Type I LastRead -1 FirstWrite -1}
		gmem_11 {Type I LastRead -1 FirstWrite -1}
		gmem_12 {Type I LastRead -1 FirstWrite -1}
		gmem_13 {Type I LastRead -1 FirstWrite -1}
		gmem_14 {Type I LastRead -1 FirstWrite -1}
		gmem_15 {Type I LastRead -1 FirstWrite -1}
		gmem_16 {Type I LastRead -1 FirstWrite -1}
		gmem_17 {Type I LastRead -1 FirstWrite -1}
		gmem_18 {Type I LastRead -1 FirstWrite -1}
		gmem_19 {Type I LastRead -1 FirstWrite -1}
		gmem_20 {Type I LastRead -1 FirstWrite -1}
		gmem_21 {Type I LastRead -1 FirstWrite -1}
		gmem_22 {Type I LastRead -1 FirstWrite -1}
		gmem_23 {Type I LastRead -1 FirstWrite -1}
		gmem_24 {Type I LastRead -1 FirstWrite -1}
		gmem_25 {Type I LastRead -1 FirstWrite -1}
		gmem_26 {Type I LastRead -1 FirstWrite -1}
		gmem_27 {Type I LastRead -1 FirstWrite -1}
		gmem_28 {Type I LastRead -1 FirstWrite -1}
		gmem_29 {Type I LastRead -1 FirstWrite -1}
		gmem_30 {Type I LastRead -1 FirstWrite -1}
		gmem_31 {Type I LastRead -1 FirstWrite -1}
		gmem {Type IO LastRead 73 FirstWrite -1}
		querys_0 {Type I LastRead 72 FirstWrite -1}
		querys_1 {Type I LastRead -1 FirstWrite -1}
		querys_2 {Type I LastRead -1 FirstWrite -1}
		querys_3 {Type I LastRead -1 FirstWrite -1}
		querys_4 {Type I LastRead -1 FirstWrite -1}
		querys_5 {Type I LastRead -1 FirstWrite -1}
		querys_6 {Type I LastRead -1 FirstWrite -1}
		querys_7 {Type I LastRead -1 FirstWrite -1}
		querys_8 {Type I LastRead -1 FirstWrite -1}
		querys_9 {Type I LastRead -1 FirstWrite -1}
		querys_10 {Type I LastRead -1 FirstWrite -1}
		querys_11 {Type I LastRead -1 FirstWrite -1}
		querys_12 {Type I LastRead -1 FirstWrite -1}
		querys_13 {Type I LastRead -1 FirstWrite -1}
		querys_14 {Type I LastRead -1 FirstWrite -1}
		querys_15 {Type I LastRead -1 FirstWrite -1}
		querys_16 {Type I LastRead -1 FirstWrite -1}
		querys_17 {Type I LastRead -1 FirstWrite -1}
		querys_18 {Type I LastRead -1 FirstWrite -1}
		querys_19 {Type I LastRead -1 FirstWrite -1}
		querys_20 {Type I LastRead -1 FirstWrite -1}
		querys_21 {Type I LastRead -1 FirstWrite -1}
		querys_22 {Type I LastRead -1 FirstWrite -1}
		querys_23 {Type I LastRead -1 FirstWrite -1}
		querys_24 {Type I LastRead -1 FirstWrite -1}
		querys_25 {Type I LastRead -1 FirstWrite -1}
		querys_26 {Type I LastRead -1 FirstWrite -1}
		querys_27 {Type I LastRead -1 FirstWrite -1}
		querys_28 {Type I LastRead -1 FirstWrite -1}
		querys_29 {Type I LastRead -1 FirstWrite -1}
		querys_30 {Type I LastRead -1 FirstWrite -1}
		querys_31 {Type I LastRead -1 FirstWrite -1}
		references {Type I LastRead 72 FirstWrite -1}
		query_lengths {Type I LastRead 0 FirstWrite -1}
		reference_lengths {Type I LastRead 1 FirstWrite -1}
		penalties {Type I LastRead 74 FirstWrite -1}
		tb_streams {Type I LastRead 72 FirstWrite -1}
		local_max_pe {Type I LastRead -1 FirstWrite -1}}
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
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem_0 { m_axi {  { m_axi_gmem_0_AWVALID VALID 1 1 }  { m_axi_gmem_0_AWREADY READY 0 1 }  { m_axi_gmem_0_AWADDR ADDR 1 64 }  { m_axi_gmem_0_AWID ID 1 1 }  { m_axi_gmem_0_AWLEN SIZE 1 8 }  { m_axi_gmem_0_AWSIZE BURST 1 3 }  { m_axi_gmem_0_AWBURST LOCK 1 2 }  { m_axi_gmem_0_AWLOCK CACHE 1 2 }  { m_axi_gmem_0_AWCACHE PROT 1 4 }  { m_axi_gmem_0_AWPROT QOS 1 3 }  { m_axi_gmem_0_AWQOS REGION 1 4 }  { m_axi_gmem_0_AWREGION USER 1 4 }  { m_axi_gmem_0_AWUSER DATA 1 1 }  { m_axi_gmem_0_WVALID VALID 1 1 }  { m_axi_gmem_0_WREADY READY 0 1 }  { m_axi_gmem_0_WDATA FIFONUM 1 32 }  { m_axi_gmem_0_WSTRB STRB 1 4 }  { m_axi_gmem_0_WLAST LAST 1 1 }  { m_axi_gmem_0_WID ID 1 1 }  { m_axi_gmem_0_WUSER DATA 1 1 }  { m_axi_gmem_0_ARVALID VALID 1 1 }  { m_axi_gmem_0_ARREADY READY 0 1 }  { m_axi_gmem_0_ARADDR ADDR 1 64 }  { m_axi_gmem_0_ARID ID 1 1 }  { m_axi_gmem_0_ARLEN SIZE 1 8 }  { m_axi_gmem_0_ARSIZE BURST 1 3 }  { m_axi_gmem_0_ARBURST LOCK 1 2 }  { m_axi_gmem_0_ARLOCK CACHE 1 2 }  { m_axi_gmem_0_ARCACHE PROT 1 4 }  { m_axi_gmem_0_ARPROT QOS 1 3 }  { m_axi_gmem_0_ARQOS REGION 1 4 }  { m_axi_gmem_0_ARREGION USER 1 4 }  { m_axi_gmem_0_ARUSER DATA 1 1 }  { m_axi_gmem_0_RVALID VALID 0 1 }  { m_axi_gmem_0_RREADY READY 1 1 }  { m_axi_gmem_0_RDATA FIFONUM 0 32 }  { m_axi_gmem_0_RLAST LAST 0 1 }  { m_axi_gmem_0_RID ID 0 1 }  { m_axi_gmem_0_RUSER DATA 0 1 }  { m_axi_gmem_0_RRESP RESP 0 2 }  { m_axi_gmem_0_BVALID VALID 0 1 }  { m_axi_gmem_0_BREADY READY 1 1 }  { m_axi_gmem_0_BRESP RESP 0 2 }  { m_axi_gmem_0_BID ID 0 1 }  { m_axi_gmem_0_BUSER DATA 0 1 } } }
	gmem_1 { m_axi {  { m_axi_gmem_1_AWVALID VALID 1 1 }  { m_axi_gmem_1_AWREADY READY 0 1 }  { m_axi_gmem_1_AWADDR ADDR 1 64 }  { m_axi_gmem_1_AWID ID 1 1 }  { m_axi_gmem_1_AWLEN SIZE 1 8 }  { m_axi_gmem_1_AWSIZE BURST 1 3 }  { m_axi_gmem_1_AWBURST LOCK 1 2 }  { m_axi_gmem_1_AWLOCK CACHE 1 2 }  { m_axi_gmem_1_AWCACHE PROT 1 4 }  { m_axi_gmem_1_AWPROT QOS 1 3 }  { m_axi_gmem_1_AWQOS REGION 1 4 }  { m_axi_gmem_1_AWREGION USER 1 4 }  { m_axi_gmem_1_AWUSER DATA 1 1 }  { m_axi_gmem_1_WVALID VALID 1 1 }  { m_axi_gmem_1_WREADY READY 0 1 }  { m_axi_gmem_1_WDATA FIFONUM 1 32 }  { m_axi_gmem_1_WSTRB STRB 1 4 }  { m_axi_gmem_1_WLAST LAST 1 1 }  { m_axi_gmem_1_WID ID 1 1 }  { m_axi_gmem_1_WUSER DATA 1 1 }  { m_axi_gmem_1_ARVALID VALID 1 1 }  { m_axi_gmem_1_ARREADY READY 0 1 }  { m_axi_gmem_1_ARADDR ADDR 1 64 }  { m_axi_gmem_1_ARID ID 1 1 }  { m_axi_gmem_1_ARLEN SIZE 1 8 }  { m_axi_gmem_1_ARSIZE BURST 1 3 }  { m_axi_gmem_1_ARBURST LOCK 1 2 }  { m_axi_gmem_1_ARLOCK CACHE 1 2 }  { m_axi_gmem_1_ARCACHE PROT 1 4 }  { m_axi_gmem_1_ARPROT QOS 1 3 }  { m_axi_gmem_1_ARQOS REGION 1 4 }  { m_axi_gmem_1_ARREGION USER 1 4 }  { m_axi_gmem_1_ARUSER DATA 1 1 }  { m_axi_gmem_1_RVALID VALID 0 1 }  { m_axi_gmem_1_RREADY READY 1 1 }  { m_axi_gmem_1_RDATA FIFONUM 0 32 }  { m_axi_gmem_1_RLAST LAST 0 1 }  { m_axi_gmem_1_RID ID 0 1 }  { m_axi_gmem_1_RUSER DATA 0 1 }  { m_axi_gmem_1_RRESP RESP 0 2 }  { m_axi_gmem_1_BVALID VALID 0 1 }  { m_axi_gmem_1_BREADY READY 1 1 }  { m_axi_gmem_1_BRESP RESP 0 2 }  { m_axi_gmem_1_BID ID 0 1 }  { m_axi_gmem_1_BUSER DATA 0 1 } } }
	gmem_2 { m_axi {  { m_axi_gmem_2_AWVALID VALID 1 1 }  { m_axi_gmem_2_AWREADY READY 0 1 }  { m_axi_gmem_2_AWADDR ADDR 1 64 }  { m_axi_gmem_2_AWID ID 1 1 }  { m_axi_gmem_2_AWLEN SIZE 1 8 }  { m_axi_gmem_2_AWSIZE BURST 1 3 }  { m_axi_gmem_2_AWBURST LOCK 1 2 }  { m_axi_gmem_2_AWLOCK CACHE 1 2 }  { m_axi_gmem_2_AWCACHE PROT 1 4 }  { m_axi_gmem_2_AWPROT QOS 1 3 }  { m_axi_gmem_2_AWQOS REGION 1 4 }  { m_axi_gmem_2_AWREGION USER 1 4 }  { m_axi_gmem_2_AWUSER DATA 1 1 }  { m_axi_gmem_2_WVALID VALID 1 1 }  { m_axi_gmem_2_WREADY READY 0 1 }  { m_axi_gmem_2_WDATA FIFONUM 1 32 }  { m_axi_gmem_2_WSTRB STRB 1 4 }  { m_axi_gmem_2_WLAST LAST 1 1 }  { m_axi_gmem_2_WID ID 1 1 }  { m_axi_gmem_2_WUSER DATA 1 1 }  { m_axi_gmem_2_ARVALID VALID 1 1 }  { m_axi_gmem_2_ARREADY READY 0 1 }  { m_axi_gmem_2_ARADDR ADDR 1 64 }  { m_axi_gmem_2_ARID ID 1 1 }  { m_axi_gmem_2_ARLEN SIZE 1 8 }  { m_axi_gmem_2_ARSIZE BURST 1 3 }  { m_axi_gmem_2_ARBURST LOCK 1 2 }  { m_axi_gmem_2_ARLOCK CACHE 1 2 }  { m_axi_gmem_2_ARCACHE PROT 1 4 }  { m_axi_gmem_2_ARPROT QOS 1 3 }  { m_axi_gmem_2_ARQOS REGION 1 4 }  { m_axi_gmem_2_ARREGION USER 1 4 }  { m_axi_gmem_2_ARUSER DATA 1 1 }  { m_axi_gmem_2_RVALID VALID 0 1 }  { m_axi_gmem_2_RREADY READY 1 1 }  { m_axi_gmem_2_RDATA FIFONUM 0 32 }  { m_axi_gmem_2_RLAST LAST 0 1 }  { m_axi_gmem_2_RID ID 0 1 }  { m_axi_gmem_2_RUSER DATA 0 1 }  { m_axi_gmem_2_RRESP RESP 0 2 }  { m_axi_gmem_2_BVALID VALID 0 1 }  { m_axi_gmem_2_BREADY READY 1 1 }  { m_axi_gmem_2_BRESP RESP 0 2 }  { m_axi_gmem_2_BID ID 0 1 }  { m_axi_gmem_2_BUSER DATA 0 1 } } }
	gmem_3 { m_axi {  { m_axi_gmem_3_AWVALID VALID 1 1 }  { m_axi_gmem_3_AWREADY READY 0 1 }  { m_axi_gmem_3_AWADDR ADDR 1 64 }  { m_axi_gmem_3_AWID ID 1 1 }  { m_axi_gmem_3_AWLEN SIZE 1 8 }  { m_axi_gmem_3_AWSIZE BURST 1 3 }  { m_axi_gmem_3_AWBURST LOCK 1 2 }  { m_axi_gmem_3_AWLOCK CACHE 1 2 }  { m_axi_gmem_3_AWCACHE PROT 1 4 }  { m_axi_gmem_3_AWPROT QOS 1 3 }  { m_axi_gmem_3_AWQOS REGION 1 4 }  { m_axi_gmem_3_AWREGION USER 1 4 }  { m_axi_gmem_3_AWUSER DATA 1 1 }  { m_axi_gmem_3_WVALID VALID 1 1 }  { m_axi_gmem_3_WREADY READY 0 1 }  { m_axi_gmem_3_WDATA FIFONUM 1 32 }  { m_axi_gmem_3_WSTRB STRB 1 4 }  { m_axi_gmem_3_WLAST LAST 1 1 }  { m_axi_gmem_3_WID ID 1 1 }  { m_axi_gmem_3_WUSER DATA 1 1 }  { m_axi_gmem_3_ARVALID VALID 1 1 }  { m_axi_gmem_3_ARREADY READY 0 1 }  { m_axi_gmem_3_ARADDR ADDR 1 64 }  { m_axi_gmem_3_ARID ID 1 1 }  { m_axi_gmem_3_ARLEN SIZE 1 8 }  { m_axi_gmem_3_ARSIZE BURST 1 3 }  { m_axi_gmem_3_ARBURST LOCK 1 2 }  { m_axi_gmem_3_ARLOCK CACHE 1 2 }  { m_axi_gmem_3_ARCACHE PROT 1 4 }  { m_axi_gmem_3_ARPROT QOS 1 3 }  { m_axi_gmem_3_ARQOS REGION 1 4 }  { m_axi_gmem_3_ARREGION USER 1 4 }  { m_axi_gmem_3_ARUSER DATA 1 1 }  { m_axi_gmem_3_RVALID VALID 0 1 }  { m_axi_gmem_3_RREADY READY 1 1 }  { m_axi_gmem_3_RDATA FIFONUM 0 32 }  { m_axi_gmem_3_RLAST LAST 0 1 }  { m_axi_gmem_3_RID ID 0 1 }  { m_axi_gmem_3_RUSER DATA 0 1 }  { m_axi_gmem_3_RRESP RESP 0 2 }  { m_axi_gmem_3_BVALID VALID 0 1 }  { m_axi_gmem_3_BREADY READY 1 1 }  { m_axi_gmem_3_BRESP RESP 0 2 }  { m_axi_gmem_3_BID ID 0 1 }  { m_axi_gmem_3_BUSER DATA 0 1 } } }
	gmem_4 { m_axi {  { m_axi_gmem_4_AWVALID VALID 1 1 }  { m_axi_gmem_4_AWREADY READY 0 1 }  { m_axi_gmem_4_AWADDR ADDR 1 64 }  { m_axi_gmem_4_AWID ID 1 1 }  { m_axi_gmem_4_AWLEN SIZE 1 8 }  { m_axi_gmem_4_AWSIZE BURST 1 3 }  { m_axi_gmem_4_AWBURST LOCK 1 2 }  { m_axi_gmem_4_AWLOCK CACHE 1 2 }  { m_axi_gmem_4_AWCACHE PROT 1 4 }  { m_axi_gmem_4_AWPROT QOS 1 3 }  { m_axi_gmem_4_AWQOS REGION 1 4 }  { m_axi_gmem_4_AWREGION USER 1 4 }  { m_axi_gmem_4_AWUSER DATA 1 1 }  { m_axi_gmem_4_WVALID VALID 1 1 }  { m_axi_gmem_4_WREADY READY 0 1 }  { m_axi_gmem_4_WDATA FIFONUM 1 32 }  { m_axi_gmem_4_WSTRB STRB 1 4 }  { m_axi_gmem_4_WLAST LAST 1 1 }  { m_axi_gmem_4_WID ID 1 1 }  { m_axi_gmem_4_WUSER DATA 1 1 }  { m_axi_gmem_4_ARVALID VALID 1 1 }  { m_axi_gmem_4_ARREADY READY 0 1 }  { m_axi_gmem_4_ARADDR ADDR 1 64 }  { m_axi_gmem_4_ARID ID 1 1 }  { m_axi_gmem_4_ARLEN SIZE 1 8 }  { m_axi_gmem_4_ARSIZE BURST 1 3 }  { m_axi_gmem_4_ARBURST LOCK 1 2 }  { m_axi_gmem_4_ARLOCK CACHE 1 2 }  { m_axi_gmem_4_ARCACHE PROT 1 4 }  { m_axi_gmem_4_ARPROT QOS 1 3 }  { m_axi_gmem_4_ARQOS REGION 1 4 }  { m_axi_gmem_4_ARREGION USER 1 4 }  { m_axi_gmem_4_ARUSER DATA 1 1 }  { m_axi_gmem_4_RVALID VALID 0 1 }  { m_axi_gmem_4_RREADY READY 1 1 }  { m_axi_gmem_4_RDATA FIFONUM 0 32 }  { m_axi_gmem_4_RLAST LAST 0 1 }  { m_axi_gmem_4_RID ID 0 1 }  { m_axi_gmem_4_RUSER DATA 0 1 }  { m_axi_gmem_4_RRESP RESP 0 2 }  { m_axi_gmem_4_BVALID VALID 0 1 }  { m_axi_gmem_4_BREADY READY 1 1 }  { m_axi_gmem_4_BRESP RESP 0 2 }  { m_axi_gmem_4_BID ID 0 1 }  { m_axi_gmem_4_BUSER DATA 0 1 } } }
	gmem_5 { m_axi {  { m_axi_gmem_5_AWVALID VALID 1 1 }  { m_axi_gmem_5_AWREADY READY 0 1 }  { m_axi_gmem_5_AWADDR ADDR 1 64 }  { m_axi_gmem_5_AWID ID 1 1 }  { m_axi_gmem_5_AWLEN SIZE 1 8 }  { m_axi_gmem_5_AWSIZE BURST 1 3 }  { m_axi_gmem_5_AWBURST LOCK 1 2 }  { m_axi_gmem_5_AWLOCK CACHE 1 2 }  { m_axi_gmem_5_AWCACHE PROT 1 4 }  { m_axi_gmem_5_AWPROT QOS 1 3 }  { m_axi_gmem_5_AWQOS REGION 1 4 }  { m_axi_gmem_5_AWREGION USER 1 4 }  { m_axi_gmem_5_AWUSER DATA 1 1 }  { m_axi_gmem_5_WVALID VALID 1 1 }  { m_axi_gmem_5_WREADY READY 0 1 }  { m_axi_gmem_5_WDATA FIFONUM 1 32 }  { m_axi_gmem_5_WSTRB STRB 1 4 }  { m_axi_gmem_5_WLAST LAST 1 1 }  { m_axi_gmem_5_WID ID 1 1 }  { m_axi_gmem_5_WUSER DATA 1 1 }  { m_axi_gmem_5_ARVALID VALID 1 1 }  { m_axi_gmem_5_ARREADY READY 0 1 }  { m_axi_gmem_5_ARADDR ADDR 1 64 }  { m_axi_gmem_5_ARID ID 1 1 }  { m_axi_gmem_5_ARLEN SIZE 1 8 }  { m_axi_gmem_5_ARSIZE BURST 1 3 }  { m_axi_gmem_5_ARBURST LOCK 1 2 }  { m_axi_gmem_5_ARLOCK CACHE 1 2 }  { m_axi_gmem_5_ARCACHE PROT 1 4 }  { m_axi_gmem_5_ARPROT QOS 1 3 }  { m_axi_gmem_5_ARQOS REGION 1 4 }  { m_axi_gmem_5_ARREGION USER 1 4 }  { m_axi_gmem_5_ARUSER DATA 1 1 }  { m_axi_gmem_5_RVALID VALID 0 1 }  { m_axi_gmem_5_RREADY READY 1 1 }  { m_axi_gmem_5_RDATA FIFONUM 0 32 }  { m_axi_gmem_5_RLAST LAST 0 1 }  { m_axi_gmem_5_RID ID 0 1 }  { m_axi_gmem_5_RUSER DATA 0 1 }  { m_axi_gmem_5_RRESP RESP 0 2 }  { m_axi_gmem_5_BVALID VALID 0 1 }  { m_axi_gmem_5_BREADY READY 1 1 }  { m_axi_gmem_5_BRESP RESP 0 2 }  { m_axi_gmem_5_BID ID 0 1 }  { m_axi_gmem_5_BUSER DATA 0 1 } } }
	gmem_6 { m_axi {  { m_axi_gmem_6_AWVALID VALID 1 1 }  { m_axi_gmem_6_AWREADY READY 0 1 }  { m_axi_gmem_6_AWADDR ADDR 1 64 }  { m_axi_gmem_6_AWID ID 1 1 }  { m_axi_gmem_6_AWLEN SIZE 1 8 }  { m_axi_gmem_6_AWSIZE BURST 1 3 }  { m_axi_gmem_6_AWBURST LOCK 1 2 }  { m_axi_gmem_6_AWLOCK CACHE 1 2 }  { m_axi_gmem_6_AWCACHE PROT 1 4 }  { m_axi_gmem_6_AWPROT QOS 1 3 }  { m_axi_gmem_6_AWQOS REGION 1 4 }  { m_axi_gmem_6_AWREGION USER 1 4 }  { m_axi_gmem_6_AWUSER DATA 1 1 }  { m_axi_gmem_6_WVALID VALID 1 1 }  { m_axi_gmem_6_WREADY READY 0 1 }  { m_axi_gmem_6_WDATA FIFONUM 1 32 }  { m_axi_gmem_6_WSTRB STRB 1 4 }  { m_axi_gmem_6_WLAST LAST 1 1 }  { m_axi_gmem_6_WID ID 1 1 }  { m_axi_gmem_6_WUSER DATA 1 1 }  { m_axi_gmem_6_ARVALID VALID 1 1 }  { m_axi_gmem_6_ARREADY READY 0 1 }  { m_axi_gmem_6_ARADDR ADDR 1 64 }  { m_axi_gmem_6_ARID ID 1 1 }  { m_axi_gmem_6_ARLEN SIZE 1 8 }  { m_axi_gmem_6_ARSIZE BURST 1 3 }  { m_axi_gmem_6_ARBURST LOCK 1 2 }  { m_axi_gmem_6_ARLOCK CACHE 1 2 }  { m_axi_gmem_6_ARCACHE PROT 1 4 }  { m_axi_gmem_6_ARPROT QOS 1 3 }  { m_axi_gmem_6_ARQOS REGION 1 4 }  { m_axi_gmem_6_ARREGION USER 1 4 }  { m_axi_gmem_6_ARUSER DATA 1 1 }  { m_axi_gmem_6_RVALID VALID 0 1 }  { m_axi_gmem_6_RREADY READY 1 1 }  { m_axi_gmem_6_RDATA FIFONUM 0 32 }  { m_axi_gmem_6_RLAST LAST 0 1 }  { m_axi_gmem_6_RID ID 0 1 }  { m_axi_gmem_6_RUSER DATA 0 1 }  { m_axi_gmem_6_RRESP RESP 0 2 }  { m_axi_gmem_6_BVALID VALID 0 1 }  { m_axi_gmem_6_BREADY READY 1 1 }  { m_axi_gmem_6_BRESP RESP 0 2 }  { m_axi_gmem_6_BID ID 0 1 }  { m_axi_gmem_6_BUSER DATA 0 1 } } }
	gmem_7 { m_axi {  { m_axi_gmem_7_AWVALID VALID 1 1 }  { m_axi_gmem_7_AWREADY READY 0 1 }  { m_axi_gmem_7_AWADDR ADDR 1 64 }  { m_axi_gmem_7_AWID ID 1 1 }  { m_axi_gmem_7_AWLEN SIZE 1 8 }  { m_axi_gmem_7_AWSIZE BURST 1 3 }  { m_axi_gmem_7_AWBURST LOCK 1 2 }  { m_axi_gmem_7_AWLOCK CACHE 1 2 }  { m_axi_gmem_7_AWCACHE PROT 1 4 }  { m_axi_gmem_7_AWPROT QOS 1 3 }  { m_axi_gmem_7_AWQOS REGION 1 4 }  { m_axi_gmem_7_AWREGION USER 1 4 }  { m_axi_gmem_7_AWUSER DATA 1 1 }  { m_axi_gmem_7_WVALID VALID 1 1 }  { m_axi_gmem_7_WREADY READY 0 1 }  { m_axi_gmem_7_WDATA FIFONUM 1 32 }  { m_axi_gmem_7_WSTRB STRB 1 4 }  { m_axi_gmem_7_WLAST LAST 1 1 }  { m_axi_gmem_7_WID ID 1 1 }  { m_axi_gmem_7_WUSER DATA 1 1 }  { m_axi_gmem_7_ARVALID VALID 1 1 }  { m_axi_gmem_7_ARREADY READY 0 1 }  { m_axi_gmem_7_ARADDR ADDR 1 64 }  { m_axi_gmem_7_ARID ID 1 1 }  { m_axi_gmem_7_ARLEN SIZE 1 8 }  { m_axi_gmem_7_ARSIZE BURST 1 3 }  { m_axi_gmem_7_ARBURST LOCK 1 2 }  { m_axi_gmem_7_ARLOCK CACHE 1 2 }  { m_axi_gmem_7_ARCACHE PROT 1 4 }  { m_axi_gmem_7_ARPROT QOS 1 3 }  { m_axi_gmem_7_ARQOS REGION 1 4 }  { m_axi_gmem_7_ARREGION USER 1 4 }  { m_axi_gmem_7_ARUSER DATA 1 1 }  { m_axi_gmem_7_RVALID VALID 0 1 }  { m_axi_gmem_7_RREADY READY 1 1 }  { m_axi_gmem_7_RDATA FIFONUM 0 32 }  { m_axi_gmem_7_RLAST LAST 0 1 }  { m_axi_gmem_7_RID ID 0 1 }  { m_axi_gmem_7_RUSER DATA 0 1 }  { m_axi_gmem_7_RRESP RESP 0 2 }  { m_axi_gmem_7_BVALID VALID 0 1 }  { m_axi_gmem_7_BREADY READY 1 1 }  { m_axi_gmem_7_BRESP RESP 0 2 }  { m_axi_gmem_7_BID ID 0 1 }  { m_axi_gmem_7_BUSER DATA 0 1 } } }
	gmem_8 { m_axi {  { m_axi_gmem_8_AWVALID VALID 1 1 }  { m_axi_gmem_8_AWREADY READY 0 1 }  { m_axi_gmem_8_AWADDR ADDR 1 64 }  { m_axi_gmem_8_AWID ID 1 1 }  { m_axi_gmem_8_AWLEN SIZE 1 8 }  { m_axi_gmem_8_AWSIZE BURST 1 3 }  { m_axi_gmem_8_AWBURST LOCK 1 2 }  { m_axi_gmem_8_AWLOCK CACHE 1 2 }  { m_axi_gmem_8_AWCACHE PROT 1 4 }  { m_axi_gmem_8_AWPROT QOS 1 3 }  { m_axi_gmem_8_AWQOS REGION 1 4 }  { m_axi_gmem_8_AWREGION USER 1 4 }  { m_axi_gmem_8_AWUSER DATA 1 1 }  { m_axi_gmem_8_WVALID VALID 1 1 }  { m_axi_gmem_8_WREADY READY 0 1 }  { m_axi_gmem_8_WDATA FIFONUM 1 32 }  { m_axi_gmem_8_WSTRB STRB 1 4 }  { m_axi_gmem_8_WLAST LAST 1 1 }  { m_axi_gmem_8_WID ID 1 1 }  { m_axi_gmem_8_WUSER DATA 1 1 }  { m_axi_gmem_8_ARVALID VALID 1 1 }  { m_axi_gmem_8_ARREADY READY 0 1 }  { m_axi_gmem_8_ARADDR ADDR 1 64 }  { m_axi_gmem_8_ARID ID 1 1 }  { m_axi_gmem_8_ARLEN SIZE 1 8 }  { m_axi_gmem_8_ARSIZE BURST 1 3 }  { m_axi_gmem_8_ARBURST LOCK 1 2 }  { m_axi_gmem_8_ARLOCK CACHE 1 2 }  { m_axi_gmem_8_ARCACHE PROT 1 4 }  { m_axi_gmem_8_ARPROT QOS 1 3 }  { m_axi_gmem_8_ARQOS REGION 1 4 }  { m_axi_gmem_8_ARREGION USER 1 4 }  { m_axi_gmem_8_ARUSER DATA 1 1 }  { m_axi_gmem_8_RVALID VALID 0 1 }  { m_axi_gmem_8_RREADY READY 1 1 }  { m_axi_gmem_8_RDATA FIFONUM 0 32 }  { m_axi_gmem_8_RLAST LAST 0 1 }  { m_axi_gmem_8_RID ID 0 1 }  { m_axi_gmem_8_RUSER DATA 0 1 }  { m_axi_gmem_8_RRESP RESP 0 2 }  { m_axi_gmem_8_BVALID VALID 0 1 }  { m_axi_gmem_8_BREADY READY 1 1 }  { m_axi_gmem_8_BRESP RESP 0 2 }  { m_axi_gmem_8_BID ID 0 1 }  { m_axi_gmem_8_BUSER DATA 0 1 } } }
	gmem_9 { m_axi {  { m_axi_gmem_9_AWVALID VALID 1 1 }  { m_axi_gmem_9_AWREADY READY 0 1 }  { m_axi_gmem_9_AWADDR ADDR 1 64 }  { m_axi_gmem_9_AWID ID 1 1 }  { m_axi_gmem_9_AWLEN SIZE 1 8 }  { m_axi_gmem_9_AWSIZE BURST 1 3 }  { m_axi_gmem_9_AWBURST LOCK 1 2 }  { m_axi_gmem_9_AWLOCK CACHE 1 2 }  { m_axi_gmem_9_AWCACHE PROT 1 4 }  { m_axi_gmem_9_AWPROT QOS 1 3 }  { m_axi_gmem_9_AWQOS REGION 1 4 }  { m_axi_gmem_9_AWREGION USER 1 4 }  { m_axi_gmem_9_AWUSER DATA 1 1 }  { m_axi_gmem_9_WVALID VALID 1 1 }  { m_axi_gmem_9_WREADY READY 0 1 }  { m_axi_gmem_9_WDATA FIFONUM 1 32 }  { m_axi_gmem_9_WSTRB STRB 1 4 }  { m_axi_gmem_9_WLAST LAST 1 1 }  { m_axi_gmem_9_WID ID 1 1 }  { m_axi_gmem_9_WUSER DATA 1 1 }  { m_axi_gmem_9_ARVALID VALID 1 1 }  { m_axi_gmem_9_ARREADY READY 0 1 }  { m_axi_gmem_9_ARADDR ADDR 1 64 }  { m_axi_gmem_9_ARID ID 1 1 }  { m_axi_gmem_9_ARLEN SIZE 1 8 }  { m_axi_gmem_9_ARSIZE BURST 1 3 }  { m_axi_gmem_9_ARBURST LOCK 1 2 }  { m_axi_gmem_9_ARLOCK CACHE 1 2 }  { m_axi_gmem_9_ARCACHE PROT 1 4 }  { m_axi_gmem_9_ARPROT QOS 1 3 }  { m_axi_gmem_9_ARQOS REGION 1 4 }  { m_axi_gmem_9_ARREGION USER 1 4 }  { m_axi_gmem_9_ARUSER DATA 1 1 }  { m_axi_gmem_9_RVALID VALID 0 1 }  { m_axi_gmem_9_RREADY READY 1 1 }  { m_axi_gmem_9_RDATA FIFONUM 0 32 }  { m_axi_gmem_9_RLAST LAST 0 1 }  { m_axi_gmem_9_RID ID 0 1 }  { m_axi_gmem_9_RUSER DATA 0 1 }  { m_axi_gmem_9_RRESP RESP 0 2 }  { m_axi_gmem_9_BVALID VALID 0 1 }  { m_axi_gmem_9_BREADY READY 1 1 }  { m_axi_gmem_9_BRESP RESP 0 2 }  { m_axi_gmem_9_BID ID 0 1 }  { m_axi_gmem_9_BUSER DATA 0 1 } } }
	gmem_10 { m_axi {  { m_axi_gmem_10_AWVALID VALID 1 1 }  { m_axi_gmem_10_AWREADY READY 0 1 }  { m_axi_gmem_10_AWADDR ADDR 1 64 }  { m_axi_gmem_10_AWID ID 1 1 }  { m_axi_gmem_10_AWLEN SIZE 1 8 }  { m_axi_gmem_10_AWSIZE BURST 1 3 }  { m_axi_gmem_10_AWBURST LOCK 1 2 }  { m_axi_gmem_10_AWLOCK CACHE 1 2 }  { m_axi_gmem_10_AWCACHE PROT 1 4 }  { m_axi_gmem_10_AWPROT QOS 1 3 }  { m_axi_gmem_10_AWQOS REGION 1 4 }  { m_axi_gmem_10_AWREGION USER 1 4 }  { m_axi_gmem_10_AWUSER DATA 1 1 }  { m_axi_gmem_10_WVALID VALID 1 1 }  { m_axi_gmem_10_WREADY READY 0 1 }  { m_axi_gmem_10_WDATA FIFONUM 1 32 }  { m_axi_gmem_10_WSTRB STRB 1 4 }  { m_axi_gmem_10_WLAST LAST 1 1 }  { m_axi_gmem_10_WID ID 1 1 }  { m_axi_gmem_10_WUSER DATA 1 1 }  { m_axi_gmem_10_ARVALID VALID 1 1 }  { m_axi_gmem_10_ARREADY READY 0 1 }  { m_axi_gmem_10_ARADDR ADDR 1 64 }  { m_axi_gmem_10_ARID ID 1 1 }  { m_axi_gmem_10_ARLEN SIZE 1 8 }  { m_axi_gmem_10_ARSIZE BURST 1 3 }  { m_axi_gmem_10_ARBURST LOCK 1 2 }  { m_axi_gmem_10_ARLOCK CACHE 1 2 }  { m_axi_gmem_10_ARCACHE PROT 1 4 }  { m_axi_gmem_10_ARPROT QOS 1 3 }  { m_axi_gmem_10_ARQOS REGION 1 4 }  { m_axi_gmem_10_ARREGION USER 1 4 }  { m_axi_gmem_10_ARUSER DATA 1 1 }  { m_axi_gmem_10_RVALID VALID 0 1 }  { m_axi_gmem_10_RREADY READY 1 1 }  { m_axi_gmem_10_RDATA FIFONUM 0 32 }  { m_axi_gmem_10_RLAST LAST 0 1 }  { m_axi_gmem_10_RID ID 0 1 }  { m_axi_gmem_10_RUSER DATA 0 1 }  { m_axi_gmem_10_RRESP RESP 0 2 }  { m_axi_gmem_10_BVALID VALID 0 1 }  { m_axi_gmem_10_BREADY READY 1 1 }  { m_axi_gmem_10_BRESP RESP 0 2 }  { m_axi_gmem_10_BID ID 0 1 }  { m_axi_gmem_10_BUSER DATA 0 1 } } }
	gmem_11 { m_axi {  { m_axi_gmem_11_AWVALID VALID 1 1 }  { m_axi_gmem_11_AWREADY READY 0 1 }  { m_axi_gmem_11_AWADDR ADDR 1 64 }  { m_axi_gmem_11_AWID ID 1 1 }  { m_axi_gmem_11_AWLEN SIZE 1 8 }  { m_axi_gmem_11_AWSIZE BURST 1 3 }  { m_axi_gmem_11_AWBURST LOCK 1 2 }  { m_axi_gmem_11_AWLOCK CACHE 1 2 }  { m_axi_gmem_11_AWCACHE PROT 1 4 }  { m_axi_gmem_11_AWPROT QOS 1 3 }  { m_axi_gmem_11_AWQOS REGION 1 4 }  { m_axi_gmem_11_AWREGION USER 1 4 }  { m_axi_gmem_11_AWUSER DATA 1 1 }  { m_axi_gmem_11_WVALID VALID 1 1 }  { m_axi_gmem_11_WREADY READY 0 1 }  { m_axi_gmem_11_WDATA FIFONUM 1 32 }  { m_axi_gmem_11_WSTRB STRB 1 4 }  { m_axi_gmem_11_WLAST LAST 1 1 }  { m_axi_gmem_11_WID ID 1 1 }  { m_axi_gmem_11_WUSER DATA 1 1 }  { m_axi_gmem_11_ARVALID VALID 1 1 }  { m_axi_gmem_11_ARREADY READY 0 1 }  { m_axi_gmem_11_ARADDR ADDR 1 64 }  { m_axi_gmem_11_ARID ID 1 1 }  { m_axi_gmem_11_ARLEN SIZE 1 8 }  { m_axi_gmem_11_ARSIZE BURST 1 3 }  { m_axi_gmem_11_ARBURST LOCK 1 2 }  { m_axi_gmem_11_ARLOCK CACHE 1 2 }  { m_axi_gmem_11_ARCACHE PROT 1 4 }  { m_axi_gmem_11_ARPROT QOS 1 3 }  { m_axi_gmem_11_ARQOS REGION 1 4 }  { m_axi_gmem_11_ARREGION USER 1 4 }  { m_axi_gmem_11_ARUSER DATA 1 1 }  { m_axi_gmem_11_RVALID VALID 0 1 }  { m_axi_gmem_11_RREADY READY 1 1 }  { m_axi_gmem_11_RDATA FIFONUM 0 32 }  { m_axi_gmem_11_RLAST LAST 0 1 }  { m_axi_gmem_11_RID ID 0 1 }  { m_axi_gmem_11_RUSER DATA 0 1 }  { m_axi_gmem_11_RRESP RESP 0 2 }  { m_axi_gmem_11_BVALID VALID 0 1 }  { m_axi_gmem_11_BREADY READY 1 1 }  { m_axi_gmem_11_BRESP RESP 0 2 }  { m_axi_gmem_11_BID ID 0 1 }  { m_axi_gmem_11_BUSER DATA 0 1 } } }
	gmem_12 { m_axi {  { m_axi_gmem_12_AWVALID VALID 1 1 }  { m_axi_gmem_12_AWREADY READY 0 1 }  { m_axi_gmem_12_AWADDR ADDR 1 64 }  { m_axi_gmem_12_AWID ID 1 1 }  { m_axi_gmem_12_AWLEN SIZE 1 8 }  { m_axi_gmem_12_AWSIZE BURST 1 3 }  { m_axi_gmem_12_AWBURST LOCK 1 2 }  { m_axi_gmem_12_AWLOCK CACHE 1 2 }  { m_axi_gmem_12_AWCACHE PROT 1 4 }  { m_axi_gmem_12_AWPROT QOS 1 3 }  { m_axi_gmem_12_AWQOS REGION 1 4 }  { m_axi_gmem_12_AWREGION USER 1 4 }  { m_axi_gmem_12_AWUSER DATA 1 1 }  { m_axi_gmem_12_WVALID VALID 1 1 }  { m_axi_gmem_12_WREADY READY 0 1 }  { m_axi_gmem_12_WDATA FIFONUM 1 32 }  { m_axi_gmem_12_WSTRB STRB 1 4 }  { m_axi_gmem_12_WLAST LAST 1 1 }  { m_axi_gmem_12_WID ID 1 1 }  { m_axi_gmem_12_WUSER DATA 1 1 }  { m_axi_gmem_12_ARVALID VALID 1 1 }  { m_axi_gmem_12_ARREADY READY 0 1 }  { m_axi_gmem_12_ARADDR ADDR 1 64 }  { m_axi_gmem_12_ARID ID 1 1 }  { m_axi_gmem_12_ARLEN SIZE 1 8 }  { m_axi_gmem_12_ARSIZE BURST 1 3 }  { m_axi_gmem_12_ARBURST LOCK 1 2 }  { m_axi_gmem_12_ARLOCK CACHE 1 2 }  { m_axi_gmem_12_ARCACHE PROT 1 4 }  { m_axi_gmem_12_ARPROT QOS 1 3 }  { m_axi_gmem_12_ARQOS REGION 1 4 }  { m_axi_gmem_12_ARREGION USER 1 4 }  { m_axi_gmem_12_ARUSER DATA 1 1 }  { m_axi_gmem_12_RVALID VALID 0 1 }  { m_axi_gmem_12_RREADY READY 1 1 }  { m_axi_gmem_12_RDATA FIFONUM 0 32 }  { m_axi_gmem_12_RLAST LAST 0 1 }  { m_axi_gmem_12_RID ID 0 1 }  { m_axi_gmem_12_RUSER DATA 0 1 }  { m_axi_gmem_12_RRESP RESP 0 2 }  { m_axi_gmem_12_BVALID VALID 0 1 }  { m_axi_gmem_12_BREADY READY 1 1 }  { m_axi_gmem_12_BRESP RESP 0 2 }  { m_axi_gmem_12_BID ID 0 1 }  { m_axi_gmem_12_BUSER DATA 0 1 } } }
	gmem_13 { m_axi {  { m_axi_gmem_13_AWVALID VALID 1 1 }  { m_axi_gmem_13_AWREADY READY 0 1 }  { m_axi_gmem_13_AWADDR ADDR 1 64 }  { m_axi_gmem_13_AWID ID 1 1 }  { m_axi_gmem_13_AWLEN SIZE 1 8 }  { m_axi_gmem_13_AWSIZE BURST 1 3 }  { m_axi_gmem_13_AWBURST LOCK 1 2 }  { m_axi_gmem_13_AWLOCK CACHE 1 2 }  { m_axi_gmem_13_AWCACHE PROT 1 4 }  { m_axi_gmem_13_AWPROT QOS 1 3 }  { m_axi_gmem_13_AWQOS REGION 1 4 }  { m_axi_gmem_13_AWREGION USER 1 4 }  { m_axi_gmem_13_AWUSER DATA 1 1 }  { m_axi_gmem_13_WVALID VALID 1 1 }  { m_axi_gmem_13_WREADY READY 0 1 }  { m_axi_gmem_13_WDATA FIFONUM 1 32 }  { m_axi_gmem_13_WSTRB STRB 1 4 }  { m_axi_gmem_13_WLAST LAST 1 1 }  { m_axi_gmem_13_WID ID 1 1 }  { m_axi_gmem_13_WUSER DATA 1 1 }  { m_axi_gmem_13_ARVALID VALID 1 1 }  { m_axi_gmem_13_ARREADY READY 0 1 }  { m_axi_gmem_13_ARADDR ADDR 1 64 }  { m_axi_gmem_13_ARID ID 1 1 }  { m_axi_gmem_13_ARLEN SIZE 1 8 }  { m_axi_gmem_13_ARSIZE BURST 1 3 }  { m_axi_gmem_13_ARBURST LOCK 1 2 }  { m_axi_gmem_13_ARLOCK CACHE 1 2 }  { m_axi_gmem_13_ARCACHE PROT 1 4 }  { m_axi_gmem_13_ARPROT QOS 1 3 }  { m_axi_gmem_13_ARQOS REGION 1 4 }  { m_axi_gmem_13_ARREGION USER 1 4 }  { m_axi_gmem_13_ARUSER DATA 1 1 }  { m_axi_gmem_13_RVALID VALID 0 1 }  { m_axi_gmem_13_RREADY READY 1 1 }  { m_axi_gmem_13_RDATA FIFONUM 0 32 }  { m_axi_gmem_13_RLAST LAST 0 1 }  { m_axi_gmem_13_RID ID 0 1 }  { m_axi_gmem_13_RUSER DATA 0 1 }  { m_axi_gmem_13_RRESP RESP 0 2 }  { m_axi_gmem_13_BVALID VALID 0 1 }  { m_axi_gmem_13_BREADY READY 1 1 }  { m_axi_gmem_13_BRESP RESP 0 2 }  { m_axi_gmem_13_BID ID 0 1 }  { m_axi_gmem_13_BUSER DATA 0 1 } } }
	gmem_14 { m_axi {  { m_axi_gmem_14_AWVALID VALID 1 1 }  { m_axi_gmem_14_AWREADY READY 0 1 }  { m_axi_gmem_14_AWADDR ADDR 1 64 }  { m_axi_gmem_14_AWID ID 1 1 }  { m_axi_gmem_14_AWLEN SIZE 1 8 }  { m_axi_gmem_14_AWSIZE BURST 1 3 }  { m_axi_gmem_14_AWBURST LOCK 1 2 }  { m_axi_gmem_14_AWLOCK CACHE 1 2 }  { m_axi_gmem_14_AWCACHE PROT 1 4 }  { m_axi_gmem_14_AWPROT QOS 1 3 }  { m_axi_gmem_14_AWQOS REGION 1 4 }  { m_axi_gmem_14_AWREGION USER 1 4 }  { m_axi_gmem_14_AWUSER DATA 1 1 }  { m_axi_gmem_14_WVALID VALID 1 1 }  { m_axi_gmem_14_WREADY READY 0 1 }  { m_axi_gmem_14_WDATA FIFONUM 1 32 }  { m_axi_gmem_14_WSTRB STRB 1 4 }  { m_axi_gmem_14_WLAST LAST 1 1 }  { m_axi_gmem_14_WID ID 1 1 }  { m_axi_gmem_14_WUSER DATA 1 1 }  { m_axi_gmem_14_ARVALID VALID 1 1 }  { m_axi_gmem_14_ARREADY READY 0 1 }  { m_axi_gmem_14_ARADDR ADDR 1 64 }  { m_axi_gmem_14_ARID ID 1 1 }  { m_axi_gmem_14_ARLEN SIZE 1 8 }  { m_axi_gmem_14_ARSIZE BURST 1 3 }  { m_axi_gmem_14_ARBURST LOCK 1 2 }  { m_axi_gmem_14_ARLOCK CACHE 1 2 }  { m_axi_gmem_14_ARCACHE PROT 1 4 }  { m_axi_gmem_14_ARPROT QOS 1 3 }  { m_axi_gmem_14_ARQOS REGION 1 4 }  { m_axi_gmem_14_ARREGION USER 1 4 }  { m_axi_gmem_14_ARUSER DATA 1 1 }  { m_axi_gmem_14_RVALID VALID 0 1 }  { m_axi_gmem_14_RREADY READY 1 1 }  { m_axi_gmem_14_RDATA FIFONUM 0 32 }  { m_axi_gmem_14_RLAST LAST 0 1 }  { m_axi_gmem_14_RID ID 0 1 }  { m_axi_gmem_14_RUSER DATA 0 1 }  { m_axi_gmem_14_RRESP RESP 0 2 }  { m_axi_gmem_14_BVALID VALID 0 1 }  { m_axi_gmem_14_BREADY READY 1 1 }  { m_axi_gmem_14_BRESP RESP 0 2 }  { m_axi_gmem_14_BID ID 0 1 }  { m_axi_gmem_14_BUSER DATA 0 1 } } }
	gmem_15 { m_axi {  { m_axi_gmem_15_AWVALID VALID 1 1 }  { m_axi_gmem_15_AWREADY READY 0 1 }  { m_axi_gmem_15_AWADDR ADDR 1 64 }  { m_axi_gmem_15_AWID ID 1 1 }  { m_axi_gmem_15_AWLEN SIZE 1 8 }  { m_axi_gmem_15_AWSIZE BURST 1 3 }  { m_axi_gmem_15_AWBURST LOCK 1 2 }  { m_axi_gmem_15_AWLOCK CACHE 1 2 }  { m_axi_gmem_15_AWCACHE PROT 1 4 }  { m_axi_gmem_15_AWPROT QOS 1 3 }  { m_axi_gmem_15_AWQOS REGION 1 4 }  { m_axi_gmem_15_AWREGION USER 1 4 }  { m_axi_gmem_15_AWUSER DATA 1 1 }  { m_axi_gmem_15_WVALID VALID 1 1 }  { m_axi_gmem_15_WREADY READY 0 1 }  { m_axi_gmem_15_WDATA FIFONUM 1 32 }  { m_axi_gmem_15_WSTRB STRB 1 4 }  { m_axi_gmem_15_WLAST LAST 1 1 }  { m_axi_gmem_15_WID ID 1 1 }  { m_axi_gmem_15_WUSER DATA 1 1 }  { m_axi_gmem_15_ARVALID VALID 1 1 }  { m_axi_gmem_15_ARREADY READY 0 1 }  { m_axi_gmem_15_ARADDR ADDR 1 64 }  { m_axi_gmem_15_ARID ID 1 1 }  { m_axi_gmem_15_ARLEN SIZE 1 8 }  { m_axi_gmem_15_ARSIZE BURST 1 3 }  { m_axi_gmem_15_ARBURST LOCK 1 2 }  { m_axi_gmem_15_ARLOCK CACHE 1 2 }  { m_axi_gmem_15_ARCACHE PROT 1 4 }  { m_axi_gmem_15_ARPROT QOS 1 3 }  { m_axi_gmem_15_ARQOS REGION 1 4 }  { m_axi_gmem_15_ARREGION USER 1 4 }  { m_axi_gmem_15_ARUSER DATA 1 1 }  { m_axi_gmem_15_RVALID VALID 0 1 }  { m_axi_gmem_15_RREADY READY 1 1 }  { m_axi_gmem_15_RDATA FIFONUM 0 32 }  { m_axi_gmem_15_RLAST LAST 0 1 }  { m_axi_gmem_15_RID ID 0 1 }  { m_axi_gmem_15_RUSER DATA 0 1 }  { m_axi_gmem_15_RRESP RESP 0 2 }  { m_axi_gmem_15_BVALID VALID 0 1 }  { m_axi_gmem_15_BREADY READY 1 1 }  { m_axi_gmem_15_BRESP RESP 0 2 }  { m_axi_gmem_15_BID ID 0 1 }  { m_axi_gmem_15_BUSER DATA 0 1 } } }
	gmem_16 { m_axi {  { m_axi_gmem_16_AWVALID VALID 1 1 }  { m_axi_gmem_16_AWREADY READY 0 1 }  { m_axi_gmem_16_AWADDR ADDR 1 64 }  { m_axi_gmem_16_AWID ID 1 1 }  { m_axi_gmem_16_AWLEN SIZE 1 8 }  { m_axi_gmem_16_AWSIZE BURST 1 3 }  { m_axi_gmem_16_AWBURST LOCK 1 2 }  { m_axi_gmem_16_AWLOCK CACHE 1 2 }  { m_axi_gmem_16_AWCACHE PROT 1 4 }  { m_axi_gmem_16_AWPROT QOS 1 3 }  { m_axi_gmem_16_AWQOS REGION 1 4 }  { m_axi_gmem_16_AWREGION USER 1 4 }  { m_axi_gmem_16_AWUSER DATA 1 1 }  { m_axi_gmem_16_WVALID VALID 1 1 }  { m_axi_gmem_16_WREADY READY 0 1 }  { m_axi_gmem_16_WDATA FIFONUM 1 32 }  { m_axi_gmem_16_WSTRB STRB 1 4 }  { m_axi_gmem_16_WLAST LAST 1 1 }  { m_axi_gmem_16_WID ID 1 1 }  { m_axi_gmem_16_WUSER DATA 1 1 }  { m_axi_gmem_16_ARVALID VALID 1 1 }  { m_axi_gmem_16_ARREADY READY 0 1 }  { m_axi_gmem_16_ARADDR ADDR 1 64 }  { m_axi_gmem_16_ARID ID 1 1 }  { m_axi_gmem_16_ARLEN SIZE 1 8 }  { m_axi_gmem_16_ARSIZE BURST 1 3 }  { m_axi_gmem_16_ARBURST LOCK 1 2 }  { m_axi_gmem_16_ARLOCK CACHE 1 2 }  { m_axi_gmem_16_ARCACHE PROT 1 4 }  { m_axi_gmem_16_ARPROT QOS 1 3 }  { m_axi_gmem_16_ARQOS REGION 1 4 }  { m_axi_gmem_16_ARREGION USER 1 4 }  { m_axi_gmem_16_ARUSER DATA 1 1 }  { m_axi_gmem_16_RVALID VALID 0 1 }  { m_axi_gmem_16_RREADY READY 1 1 }  { m_axi_gmem_16_RDATA FIFONUM 0 32 }  { m_axi_gmem_16_RLAST LAST 0 1 }  { m_axi_gmem_16_RID ID 0 1 }  { m_axi_gmem_16_RUSER DATA 0 1 }  { m_axi_gmem_16_RRESP RESP 0 2 }  { m_axi_gmem_16_BVALID VALID 0 1 }  { m_axi_gmem_16_BREADY READY 1 1 }  { m_axi_gmem_16_BRESP RESP 0 2 }  { m_axi_gmem_16_BID ID 0 1 }  { m_axi_gmem_16_BUSER DATA 0 1 } } }
	gmem_17 { m_axi {  { m_axi_gmem_17_AWVALID VALID 1 1 }  { m_axi_gmem_17_AWREADY READY 0 1 }  { m_axi_gmem_17_AWADDR ADDR 1 64 }  { m_axi_gmem_17_AWID ID 1 1 }  { m_axi_gmem_17_AWLEN SIZE 1 8 }  { m_axi_gmem_17_AWSIZE BURST 1 3 }  { m_axi_gmem_17_AWBURST LOCK 1 2 }  { m_axi_gmem_17_AWLOCK CACHE 1 2 }  { m_axi_gmem_17_AWCACHE PROT 1 4 }  { m_axi_gmem_17_AWPROT QOS 1 3 }  { m_axi_gmem_17_AWQOS REGION 1 4 }  { m_axi_gmem_17_AWREGION USER 1 4 }  { m_axi_gmem_17_AWUSER DATA 1 1 }  { m_axi_gmem_17_WVALID VALID 1 1 }  { m_axi_gmem_17_WREADY READY 0 1 }  { m_axi_gmem_17_WDATA FIFONUM 1 32 }  { m_axi_gmem_17_WSTRB STRB 1 4 }  { m_axi_gmem_17_WLAST LAST 1 1 }  { m_axi_gmem_17_WID ID 1 1 }  { m_axi_gmem_17_WUSER DATA 1 1 }  { m_axi_gmem_17_ARVALID VALID 1 1 }  { m_axi_gmem_17_ARREADY READY 0 1 }  { m_axi_gmem_17_ARADDR ADDR 1 64 }  { m_axi_gmem_17_ARID ID 1 1 }  { m_axi_gmem_17_ARLEN SIZE 1 8 }  { m_axi_gmem_17_ARSIZE BURST 1 3 }  { m_axi_gmem_17_ARBURST LOCK 1 2 }  { m_axi_gmem_17_ARLOCK CACHE 1 2 }  { m_axi_gmem_17_ARCACHE PROT 1 4 }  { m_axi_gmem_17_ARPROT QOS 1 3 }  { m_axi_gmem_17_ARQOS REGION 1 4 }  { m_axi_gmem_17_ARREGION USER 1 4 }  { m_axi_gmem_17_ARUSER DATA 1 1 }  { m_axi_gmem_17_RVALID VALID 0 1 }  { m_axi_gmem_17_RREADY READY 1 1 }  { m_axi_gmem_17_RDATA FIFONUM 0 32 }  { m_axi_gmem_17_RLAST LAST 0 1 }  { m_axi_gmem_17_RID ID 0 1 }  { m_axi_gmem_17_RUSER DATA 0 1 }  { m_axi_gmem_17_RRESP RESP 0 2 }  { m_axi_gmem_17_BVALID VALID 0 1 }  { m_axi_gmem_17_BREADY READY 1 1 }  { m_axi_gmem_17_BRESP RESP 0 2 }  { m_axi_gmem_17_BID ID 0 1 }  { m_axi_gmem_17_BUSER DATA 0 1 } } }
	gmem_18 { m_axi {  { m_axi_gmem_18_AWVALID VALID 1 1 }  { m_axi_gmem_18_AWREADY READY 0 1 }  { m_axi_gmem_18_AWADDR ADDR 1 64 }  { m_axi_gmem_18_AWID ID 1 1 }  { m_axi_gmem_18_AWLEN SIZE 1 8 }  { m_axi_gmem_18_AWSIZE BURST 1 3 }  { m_axi_gmem_18_AWBURST LOCK 1 2 }  { m_axi_gmem_18_AWLOCK CACHE 1 2 }  { m_axi_gmem_18_AWCACHE PROT 1 4 }  { m_axi_gmem_18_AWPROT QOS 1 3 }  { m_axi_gmem_18_AWQOS REGION 1 4 }  { m_axi_gmem_18_AWREGION USER 1 4 }  { m_axi_gmem_18_AWUSER DATA 1 1 }  { m_axi_gmem_18_WVALID VALID 1 1 }  { m_axi_gmem_18_WREADY READY 0 1 }  { m_axi_gmem_18_WDATA FIFONUM 1 32 }  { m_axi_gmem_18_WSTRB STRB 1 4 }  { m_axi_gmem_18_WLAST LAST 1 1 }  { m_axi_gmem_18_WID ID 1 1 }  { m_axi_gmem_18_WUSER DATA 1 1 }  { m_axi_gmem_18_ARVALID VALID 1 1 }  { m_axi_gmem_18_ARREADY READY 0 1 }  { m_axi_gmem_18_ARADDR ADDR 1 64 }  { m_axi_gmem_18_ARID ID 1 1 }  { m_axi_gmem_18_ARLEN SIZE 1 8 }  { m_axi_gmem_18_ARSIZE BURST 1 3 }  { m_axi_gmem_18_ARBURST LOCK 1 2 }  { m_axi_gmem_18_ARLOCK CACHE 1 2 }  { m_axi_gmem_18_ARCACHE PROT 1 4 }  { m_axi_gmem_18_ARPROT QOS 1 3 }  { m_axi_gmem_18_ARQOS REGION 1 4 }  { m_axi_gmem_18_ARREGION USER 1 4 }  { m_axi_gmem_18_ARUSER DATA 1 1 }  { m_axi_gmem_18_RVALID VALID 0 1 }  { m_axi_gmem_18_RREADY READY 1 1 }  { m_axi_gmem_18_RDATA FIFONUM 0 32 }  { m_axi_gmem_18_RLAST LAST 0 1 }  { m_axi_gmem_18_RID ID 0 1 }  { m_axi_gmem_18_RUSER DATA 0 1 }  { m_axi_gmem_18_RRESP RESP 0 2 }  { m_axi_gmem_18_BVALID VALID 0 1 }  { m_axi_gmem_18_BREADY READY 1 1 }  { m_axi_gmem_18_BRESP RESP 0 2 }  { m_axi_gmem_18_BID ID 0 1 }  { m_axi_gmem_18_BUSER DATA 0 1 } } }
	gmem_19 { m_axi {  { m_axi_gmem_19_AWVALID VALID 1 1 }  { m_axi_gmem_19_AWREADY READY 0 1 }  { m_axi_gmem_19_AWADDR ADDR 1 64 }  { m_axi_gmem_19_AWID ID 1 1 }  { m_axi_gmem_19_AWLEN SIZE 1 8 }  { m_axi_gmem_19_AWSIZE BURST 1 3 }  { m_axi_gmem_19_AWBURST LOCK 1 2 }  { m_axi_gmem_19_AWLOCK CACHE 1 2 }  { m_axi_gmem_19_AWCACHE PROT 1 4 }  { m_axi_gmem_19_AWPROT QOS 1 3 }  { m_axi_gmem_19_AWQOS REGION 1 4 }  { m_axi_gmem_19_AWREGION USER 1 4 }  { m_axi_gmem_19_AWUSER DATA 1 1 }  { m_axi_gmem_19_WVALID VALID 1 1 }  { m_axi_gmem_19_WREADY READY 0 1 }  { m_axi_gmem_19_WDATA FIFONUM 1 32 }  { m_axi_gmem_19_WSTRB STRB 1 4 }  { m_axi_gmem_19_WLAST LAST 1 1 }  { m_axi_gmem_19_WID ID 1 1 }  { m_axi_gmem_19_WUSER DATA 1 1 }  { m_axi_gmem_19_ARVALID VALID 1 1 }  { m_axi_gmem_19_ARREADY READY 0 1 }  { m_axi_gmem_19_ARADDR ADDR 1 64 }  { m_axi_gmem_19_ARID ID 1 1 }  { m_axi_gmem_19_ARLEN SIZE 1 8 }  { m_axi_gmem_19_ARSIZE BURST 1 3 }  { m_axi_gmem_19_ARBURST LOCK 1 2 }  { m_axi_gmem_19_ARLOCK CACHE 1 2 }  { m_axi_gmem_19_ARCACHE PROT 1 4 }  { m_axi_gmem_19_ARPROT QOS 1 3 }  { m_axi_gmem_19_ARQOS REGION 1 4 }  { m_axi_gmem_19_ARREGION USER 1 4 }  { m_axi_gmem_19_ARUSER DATA 1 1 }  { m_axi_gmem_19_RVALID VALID 0 1 }  { m_axi_gmem_19_RREADY READY 1 1 }  { m_axi_gmem_19_RDATA FIFONUM 0 32 }  { m_axi_gmem_19_RLAST LAST 0 1 }  { m_axi_gmem_19_RID ID 0 1 }  { m_axi_gmem_19_RUSER DATA 0 1 }  { m_axi_gmem_19_RRESP RESP 0 2 }  { m_axi_gmem_19_BVALID VALID 0 1 }  { m_axi_gmem_19_BREADY READY 1 1 }  { m_axi_gmem_19_BRESP RESP 0 2 }  { m_axi_gmem_19_BID ID 0 1 }  { m_axi_gmem_19_BUSER DATA 0 1 } } }
	gmem_20 { m_axi {  { m_axi_gmem_20_AWVALID VALID 1 1 }  { m_axi_gmem_20_AWREADY READY 0 1 }  { m_axi_gmem_20_AWADDR ADDR 1 64 }  { m_axi_gmem_20_AWID ID 1 1 }  { m_axi_gmem_20_AWLEN SIZE 1 8 }  { m_axi_gmem_20_AWSIZE BURST 1 3 }  { m_axi_gmem_20_AWBURST LOCK 1 2 }  { m_axi_gmem_20_AWLOCK CACHE 1 2 }  { m_axi_gmem_20_AWCACHE PROT 1 4 }  { m_axi_gmem_20_AWPROT QOS 1 3 }  { m_axi_gmem_20_AWQOS REGION 1 4 }  { m_axi_gmem_20_AWREGION USER 1 4 }  { m_axi_gmem_20_AWUSER DATA 1 1 }  { m_axi_gmem_20_WVALID VALID 1 1 }  { m_axi_gmem_20_WREADY READY 0 1 }  { m_axi_gmem_20_WDATA FIFONUM 1 32 }  { m_axi_gmem_20_WSTRB STRB 1 4 }  { m_axi_gmem_20_WLAST LAST 1 1 }  { m_axi_gmem_20_WID ID 1 1 }  { m_axi_gmem_20_WUSER DATA 1 1 }  { m_axi_gmem_20_ARVALID VALID 1 1 }  { m_axi_gmem_20_ARREADY READY 0 1 }  { m_axi_gmem_20_ARADDR ADDR 1 64 }  { m_axi_gmem_20_ARID ID 1 1 }  { m_axi_gmem_20_ARLEN SIZE 1 8 }  { m_axi_gmem_20_ARSIZE BURST 1 3 }  { m_axi_gmem_20_ARBURST LOCK 1 2 }  { m_axi_gmem_20_ARLOCK CACHE 1 2 }  { m_axi_gmem_20_ARCACHE PROT 1 4 }  { m_axi_gmem_20_ARPROT QOS 1 3 }  { m_axi_gmem_20_ARQOS REGION 1 4 }  { m_axi_gmem_20_ARREGION USER 1 4 }  { m_axi_gmem_20_ARUSER DATA 1 1 }  { m_axi_gmem_20_RVALID VALID 0 1 }  { m_axi_gmem_20_RREADY READY 1 1 }  { m_axi_gmem_20_RDATA FIFONUM 0 32 }  { m_axi_gmem_20_RLAST LAST 0 1 }  { m_axi_gmem_20_RID ID 0 1 }  { m_axi_gmem_20_RUSER DATA 0 1 }  { m_axi_gmem_20_RRESP RESP 0 2 }  { m_axi_gmem_20_BVALID VALID 0 1 }  { m_axi_gmem_20_BREADY READY 1 1 }  { m_axi_gmem_20_BRESP RESP 0 2 }  { m_axi_gmem_20_BID ID 0 1 }  { m_axi_gmem_20_BUSER DATA 0 1 } } }
	gmem_21 { m_axi {  { m_axi_gmem_21_AWVALID VALID 1 1 }  { m_axi_gmem_21_AWREADY READY 0 1 }  { m_axi_gmem_21_AWADDR ADDR 1 64 }  { m_axi_gmem_21_AWID ID 1 1 }  { m_axi_gmem_21_AWLEN SIZE 1 8 }  { m_axi_gmem_21_AWSIZE BURST 1 3 }  { m_axi_gmem_21_AWBURST LOCK 1 2 }  { m_axi_gmem_21_AWLOCK CACHE 1 2 }  { m_axi_gmem_21_AWCACHE PROT 1 4 }  { m_axi_gmem_21_AWPROT QOS 1 3 }  { m_axi_gmem_21_AWQOS REGION 1 4 }  { m_axi_gmem_21_AWREGION USER 1 4 }  { m_axi_gmem_21_AWUSER DATA 1 1 }  { m_axi_gmem_21_WVALID VALID 1 1 }  { m_axi_gmem_21_WREADY READY 0 1 }  { m_axi_gmem_21_WDATA FIFONUM 1 32 }  { m_axi_gmem_21_WSTRB STRB 1 4 }  { m_axi_gmem_21_WLAST LAST 1 1 }  { m_axi_gmem_21_WID ID 1 1 }  { m_axi_gmem_21_WUSER DATA 1 1 }  { m_axi_gmem_21_ARVALID VALID 1 1 }  { m_axi_gmem_21_ARREADY READY 0 1 }  { m_axi_gmem_21_ARADDR ADDR 1 64 }  { m_axi_gmem_21_ARID ID 1 1 }  { m_axi_gmem_21_ARLEN SIZE 1 8 }  { m_axi_gmem_21_ARSIZE BURST 1 3 }  { m_axi_gmem_21_ARBURST LOCK 1 2 }  { m_axi_gmem_21_ARLOCK CACHE 1 2 }  { m_axi_gmem_21_ARCACHE PROT 1 4 }  { m_axi_gmem_21_ARPROT QOS 1 3 }  { m_axi_gmem_21_ARQOS REGION 1 4 }  { m_axi_gmem_21_ARREGION USER 1 4 }  { m_axi_gmem_21_ARUSER DATA 1 1 }  { m_axi_gmem_21_RVALID VALID 0 1 }  { m_axi_gmem_21_RREADY READY 1 1 }  { m_axi_gmem_21_RDATA FIFONUM 0 32 }  { m_axi_gmem_21_RLAST LAST 0 1 }  { m_axi_gmem_21_RID ID 0 1 }  { m_axi_gmem_21_RUSER DATA 0 1 }  { m_axi_gmem_21_RRESP RESP 0 2 }  { m_axi_gmem_21_BVALID VALID 0 1 }  { m_axi_gmem_21_BREADY READY 1 1 }  { m_axi_gmem_21_BRESP RESP 0 2 }  { m_axi_gmem_21_BID ID 0 1 }  { m_axi_gmem_21_BUSER DATA 0 1 } } }
	gmem_22 { m_axi {  { m_axi_gmem_22_AWVALID VALID 1 1 }  { m_axi_gmem_22_AWREADY READY 0 1 }  { m_axi_gmem_22_AWADDR ADDR 1 64 }  { m_axi_gmem_22_AWID ID 1 1 }  { m_axi_gmem_22_AWLEN SIZE 1 8 }  { m_axi_gmem_22_AWSIZE BURST 1 3 }  { m_axi_gmem_22_AWBURST LOCK 1 2 }  { m_axi_gmem_22_AWLOCK CACHE 1 2 }  { m_axi_gmem_22_AWCACHE PROT 1 4 }  { m_axi_gmem_22_AWPROT QOS 1 3 }  { m_axi_gmem_22_AWQOS REGION 1 4 }  { m_axi_gmem_22_AWREGION USER 1 4 }  { m_axi_gmem_22_AWUSER DATA 1 1 }  { m_axi_gmem_22_WVALID VALID 1 1 }  { m_axi_gmem_22_WREADY READY 0 1 }  { m_axi_gmem_22_WDATA FIFONUM 1 32 }  { m_axi_gmem_22_WSTRB STRB 1 4 }  { m_axi_gmem_22_WLAST LAST 1 1 }  { m_axi_gmem_22_WID ID 1 1 }  { m_axi_gmem_22_WUSER DATA 1 1 }  { m_axi_gmem_22_ARVALID VALID 1 1 }  { m_axi_gmem_22_ARREADY READY 0 1 }  { m_axi_gmem_22_ARADDR ADDR 1 64 }  { m_axi_gmem_22_ARID ID 1 1 }  { m_axi_gmem_22_ARLEN SIZE 1 8 }  { m_axi_gmem_22_ARSIZE BURST 1 3 }  { m_axi_gmem_22_ARBURST LOCK 1 2 }  { m_axi_gmem_22_ARLOCK CACHE 1 2 }  { m_axi_gmem_22_ARCACHE PROT 1 4 }  { m_axi_gmem_22_ARPROT QOS 1 3 }  { m_axi_gmem_22_ARQOS REGION 1 4 }  { m_axi_gmem_22_ARREGION USER 1 4 }  { m_axi_gmem_22_ARUSER DATA 1 1 }  { m_axi_gmem_22_RVALID VALID 0 1 }  { m_axi_gmem_22_RREADY READY 1 1 }  { m_axi_gmem_22_RDATA FIFONUM 0 32 }  { m_axi_gmem_22_RLAST LAST 0 1 }  { m_axi_gmem_22_RID ID 0 1 }  { m_axi_gmem_22_RUSER DATA 0 1 }  { m_axi_gmem_22_RRESP RESP 0 2 }  { m_axi_gmem_22_BVALID VALID 0 1 }  { m_axi_gmem_22_BREADY READY 1 1 }  { m_axi_gmem_22_BRESP RESP 0 2 }  { m_axi_gmem_22_BID ID 0 1 }  { m_axi_gmem_22_BUSER DATA 0 1 } } }
	gmem_23 { m_axi {  { m_axi_gmem_23_AWVALID VALID 1 1 }  { m_axi_gmem_23_AWREADY READY 0 1 }  { m_axi_gmem_23_AWADDR ADDR 1 64 }  { m_axi_gmem_23_AWID ID 1 1 }  { m_axi_gmem_23_AWLEN SIZE 1 8 }  { m_axi_gmem_23_AWSIZE BURST 1 3 }  { m_axi_gmem_23_AWBURST LOCK 1 2 }  { m_axi_gmem_23_AWLOCK CACHE 1 2 }  { m_axi_gmem_23_AWCACHE PROT 1 4 }  { m_axi_gmem_23_AWPROT QOS 1 3 }  { m_axi_gmem_23_AWQOS REGION 1 4 }  { m_axi_gmem_23_AWREGION USER 1 4 }  { m_axi_gmem_23_AWUSER DATA 1 1 }  { m_axi_gmem_23_WVALID VALID 1 1 }  { m_axi_gmem_23_WREADY READY 0 1 }  { m_axi_gmem_23_WDATA FIFONUM 1 32 }  { m_axi_gmem_23_WSTRB STRB 1 4 }  { m_axi_gmem_23_WLAST LAST 1 1 }  { m_axi_gmem_23_WID ID 1 1 }  { m_axi_gmem_23_WUSER DATA 1 1 }  { m_axi_gmem_23_ARVALID VALID 1 1 }  { m_axi_gmem_23_ARREADY READY 0 1 }  { m_axi_gmem_23_ARADDR ADDR 1 64 }  { m_axi_gmem_23_ARID ID 1 1 }  { m_axi_gmem_23_ARLEN SIZE 1 8 }  { m_axi_gmem_23_ARSIZE BURST 1 3 }  { m_axi_gmem_23_ARBURST LOCK 1 2 }  { m_axi_gmem_23_ARLOCK CACHE 1 2 }  { m_axi_gmem_23_ARCACHE PROT 1 4 }  { m_axi_gmem_23_ARPROT QOS 1 3 }  { m_axi_gmem_23_ARQOS REGION 1 4 }  { m_axi_gmem_23_ARREGION USER 1 4 }  { m_axi_gmem_23_ARUSER DATA 1 1 }  { m_axi_gmem_23_RVALID VALID 0 1 }  { m_axi_gmem_23_RREADY READY 1 1 }  { m_axi_gmem_23_RDATA FIFONUM 0 32 }  { m_axi_gmem_23_RLAST LAST 0 1 }  { m_axi_gmem_23_RID ID 0 1 }  { m_axi_gmem_23_RUSER DATA 0 1 }  { m_axi_gmem_23_RRESP RESP 0 2 }  { m_axi_gmem_23_BVALID VALID 0 1 }  { m_axi_gmem_23_BREADY READY 1 1 }  { m_axi_gmem_23_BRESP RESP 0 2 }  { m_axi_gmem_23_BID ID 0 1 }  { m_axi_gmem_23_BUSER DATA 0 1 } } }
	gmem_24 { m_axi {  { m_axi_gmem_24_AWVALID VALID 1 1 }  { m_axi_gmem_24_AWREADY READY 0 1 }  { m_axi_gmem_24_AWADDR ADDR 1 64 }  { m_axi_gmem_24_AWID ID 1 1 }  { m_axi_gmem_24_AWLEN SIZE 1 8 }  { m_axi_gmem_24_AWSIZE BURST 1 3 }  { m_axi_gmem_24_AWBURST LOCK 1 2 }  { m_axi_gmem_24_AWLOCK CACHE 1 2 }  { m_axi_gmem_24_AWCACHE PROT 1 4 }  { m_axi_gmem_24_AWPROT QOS 1 3 }  { m_axi_gmem_24_AWQOS REGION 1 4 }  { m_axi_gmem_24_AWREGION USER 1 4 }  { m_axi_gmem_24_AWUSER DATA 1 1 }  { m_axi_gmem_24_WVALID VALID 1 1 }  { m_axi_gmem_24_WREADY READY 0 1 }  { m_axi_gmem_24_WDATA FIFONUM 1 32 }  { m_axi_gmem_24_WSTRB STRB 1 4 }  { m_axi_gmem_24_WLAST LAST 1 1 }  { m_axi_gmem_24_WID ID 1 1 }  { m_axi_gmem_24_WUSER DATA 1 1 }  { m_axi_gmem_24_ARVALID VALID 1 1 }  { m_axi_gmem_24_ARREADY READY 0 1 }  { m_axi_gmem_24_ARADDR ADDR 1 64 }  { m_axi_gmem_24_ARID ID 1 1 }  { m_axi_gmem_24_ARLEN SIZE 1 8 }  { m_axi_gmem_24_ARSIZE BURST 1 3 }  { m_axi_gmem_24_ARBURST LOCK 1 2 }  { m_axi_gmem_24_ARLOCK CACHE 1 2 }  { m_axi_gmem_24_ARCACHE PROT 1 4 }  { m_axi_gmem_24_ARPROT QOS 1 3 }  { m_axi_gmem_24_ARQOS REGION 1 4 }  { m_axi_gmem_24_ARREGION USER 1 4 }  { m_axi_gmem_24_ARUSER DATA 1 1 }  { m_axi_gmem_24_RVALID VALID 0 1 }  { m_axi_gmem_24_RREADY READY 1 1 }  { m_axi_gmem_24_RDATA FIFONUM 0 32 }  { m_axi_gmem_24_RLAST LAST 0 1 }  { m_axi_gmem_24_RID ID 0 1 }  { m_axi_gmem_24_RUSER DATA 0 1 }  { m_axi_gmem_24_RRESP RESP 0 2 }  { m_axi_gmem_24_BVALID VALID 0 1 }  { m_axi_gmem_24_BREADY READY 1 1 }  { m_axi_gmem_24_BRESP RESP 0 2 }  { m_axi_gmem_24_BID ID 0 1 }  { m_axi_gmem_24_BUSER DATA 0 1 } } }
	gmem_25 { m_axi {  { m_axi_gmem_25_AWVALID VALID 1 1 }  { m_axi_gmem_25_AWREADY READY 0 1 }  { m_axi_gmem_25_AWADDR ADDR 1 64 }  { m_axi_gmem_25_AWID ID 1 1 }  { m_axi_gmem_25_AWLEN SIZE 1 8 }  { m_axi_gmem_25_AWSIZE BURST 1 3 }  { m_axi_gmem_25_AWBURST LOCK 1 2 }  { m_axi_gmem_25_AWLOCK CACHE 1 2 }  { m_axi_gmem_25_AWCACHE PROT 1 4 }  { m_axi_gmem_25_AWPROT QOS 1 3 }  { m_axi_gmem_25_AWQOS REGION 1 4 }  { m_axi_gmem_25_AWREGION USER 1 4 }  { m_axi_gmem_25_AWUSER DATA 1 1 }  { m_axi_gmem_25_WVALID VALID 1 1 }  { m_axi_gmem_25_WREADY READY 0 1 }  { m_axi_gmem_25_WDATA FIFONUM 1 32 }  { m_axi_gmem_25_WSTRB STRB 1 4 }  { m_axi_gmem_25_WLAST LAST 1 1 }  { m_axi_gmem_25_WID ID 1 1 }  { m_axi_gmem_25_WUSER DATA 1 1 }  { m_axi_gmem_25_ARVALID VALID 1 1 }  { m_axi_gmem_25_ARREADY READY 0 1 }  { m_axi_gmem_25_ARADDR ADDR 1 64 }  { m_axi_gmem_25_ARID ID 1 1 }  { m_axi_gmem_25_ARLEN SIZE 1 8 }  { m_axi_gmem_25_ARSIZE BURST 1 3 }  { m_axi_gmem_25_ARBURST LOCK 1 2 }  { m_axi_gmem_25_ARLOCK CACHE 1 2 }  { m_axi_gmem_25_ARCACHE PROT 1 4 }  { m_axi_gmem_25_ARPROT QOS 1 3 }  { m_axi_gmem_25_ARQOS REGION 1 4 }  { m_axi_gmem_25_ARREGION USER 1 4 }  { m_axi_gmem_25_ARUSER DATA 1 1 }  { m_axi_gmem_25_RVALID VALID 0 1 }  { m_axi_gmem_25_RREADY READY 1 1 }  { m_axi_gmem_25_RDATA FIFONUM 0 32 }  { m_axi_gmem_25_RLAST LAST 0 1 }  { m_axi_gmem_25_RID ID 0 1 }  { m_axi_gmem_25_RUSER DATA 0 1 }  { m_axi_gmem_25_RRESP RESP 0 2 }  { m_axi_gmem_25_BVALID VALID 0 1 }  { m_axi_gmem_25_BREADY READY 1 1 }  { m_axi_gmem_25_BRESP RESP 0 2 }  { m_axi_gmem_25_BID ID 0 1 }  { m_axi_gmem_25_BUSER DATA 0 1 } } }
	gmem_26 { m_axi {  { m_axi_gmem_26_AWVALID VALID 1 1 }  { m_axi_gmem_26_AWREADY READY 0 1 }  { m_axi_gmem_26_AWADDR ADDR 1 64 }  { m_axi_gmem_26_AWID ID 1 1 }  { m_axi_gmem_26_AWLEN SIZE 1 8 }  { m_axi_gmem_26_AWSIZE BURST 1 3 }  { m_axi_gmem_26_AWBURST LOCK 1 2 }  { m_axi_gmem_26_AWLOCK CACHE 1 2 }  { m_axi_gmem_26_AWCACHE PROT 1 4 }  { m_axi_gmem_26_AWPROT QOS 1 3 }  { m_axi_gmem_26_AWQOS REGION 1 4 }  { m_axi_gmem_26_AWREGION USER 1 4 }  { m_axi_gmem_26_AWUSER DATA 1 1 }  { m_axi_gmem_26_WVALID VALID 1 1 }  { m_axi_gmem_26_WREADY READY 0 1 }  { m_axi_gmem_26_WDATA FIFONUM 1 32 }  { m_axi_gmem_26_WSTRB STRB 1 4 }  { m_axi_gmem_26_WLAST LAST 1 1 }  { m_axi_gmem_26_WID ID 1 1 }  { m_axi_gmem_26_WUSER DATA 1 1 }  { m_axi_gmem_26_ARVALID VALID 1 1 }  { m_axi_gmem_26_ARREADY READY 0 1 }  { m_axi_gmem_26_ARADDR ADDR 1 64 }  { m_axi_gmem_26_ARID ID 1 1 }  { m_axi_gmem_26_ARLEN SIZE 1 8 }  { m_axi_gmem_26_ARSIZE BURST 1 3 }  { m_axi_gmem_26_ARBURST LOCK 1 2 }  { m_axi_gmem_26_ARLOCK CACHE 1 2 }  { m_axi_gmem_26_ARCACHE PROT 1 4 }  { m_axi_gmem_26_ARPROT QOS 1 3 }  { m_axi_gmem_26_ARQOS REGION 1 4 }  { m_axi_gmem_26_ARREGION USER 1 4 }  { m_axi_gmem_26_ARUSER DATA 1 1 }  { m_axi_gmem_26_RVALID VALID 0 1 }  { m_axi_gmem_26_RREADY READY 1 1 }  { m_axi_gmem_26_RDATA FIFONUM 0 32 }  { m_axi_gmem_26_RLAST LAST 0 1 }  { m_axi_gmem_26_RID ID 0 1 }  { m_axi_gmem_26_RUSER DATA 0 1 }  { m_axi_gmem_26_RRESP RESP 0 2 }  { m_axi_gmem_26_BVALID VALID 0 1 }  { m_axi_gmem_26_BREADY READY 1 1 }  { m_axi_gmem_26_BRESP RESP 0 2 }  { m_axi_gmem_26_BID ID 0 1 }  { m_axi_gmem_26_BUSER DATA 0 1 } } }
	gmem_27 { m_axi {  { m_axi_gmem_27_AWVALID VALID 1 1 }  { m_axi_gmem_27_AWREADY READY 0 1 }  { m_axi_gmem_27_AWADDR ADDR 1 64 }  { m_axi_gmem_27_AWID ID 1 1 }  { m_axi_gmem_27_AWLEN SIZE 1 8 }  { m_axi_gmem_27_AWSIZE BURST 1 3 }  { m_axi_gmem_27_AWBURST LOCK 1 2 }  { m_axi_gmem_27_AWLOCK CACHE 1 2 }  { m_axi_gmem_27_AWCACHE PROT 1 4 }  { m_axi_gmem_27_AWPROT QOS 1 3 }  { m_axi_gmem_27_AWQOS REGION 1 4 }  { m_axi_gmem_27_AWREGION USER 1 4 }  { m_axi_gmem_27_AWUSER DATA 1 1 }  { m_axi_gmem_27_WVALID VALID 1 1 }  { m_axi_gmem_27_WREADY READY 0 1 }  { m_axi_gmem_27_WDATA FIFONUM 1 32 }  { m_axi_gmem_27_WSTRB STRB 1 4 }  { m_axi_gmem_27_WLAST LAST 1 1 }  { m_axi_gmem_27_WID ID 1 1 }  { m_axi_gmem_27_WUSER DATA 1 1 }  { m_axi_gmem_27_ARVALID VALID 1 1 }  { m_axi_gmem_27_ARREADY READY 0 1 }  { m_axi_gmem_27_ARADDR ADDR 1 64 }  { m_axi_gmem_27_ARID ID 1 1 }  { m_axi_gmem_27_ARLEN SIZE 1 8 }  { m_axi_gmem_27_ARSIZE BURST 1 3 }  { m_axi_gmem_27_ARBURST LOCK 1 2 }  { m_axi_gmem_27_ARLOCK CACHE 1 2 }  { m_axi_gmem_27_ARCACHE PROT 1 4 }  { m_axi_gmem_27_ARPROT QOS 1 3 }  { m_axi_gmem_27_ARQOS REGION 1 4 }  { m_axi_gmem_27_ARREGION USER 1 4 }  { m_axi_gmem_27_ARUSER DATA 1 1 }  { m_axi_gmem_27_RVALID VALID 0 1 }  { m_axi_gmem_27_RREADY READY 1 1 }  { m_axi_gmem_27_RDATA FIFONUM 0 32 }  { m_axi_gmem_27_RLAST LAST 0 1 }  { m_axi_gmem_27_RID ID 0 1 }  { m_axi_gmem_27_RUSER DATA 0 1 }  { m_axi_gmem_27_RRESP RESP 0 2 }  { m_axi_gmem_27_BVALID VALID 0 1 }  { m_axi_gmem_27_BREADY READY 1 1 }  { m_axi_gmem_27_BRESP RESP 0 2 }  { m_axi_gmem_27_BID ID 0 1 }  { m_axi_gmem_27_BUSER DATA 0 1 } } }
	gmem_28 { m_axi {  { m_axi_gmem_28_AWVALID VALID 1 1 }  { m_axi_gmem_28_AWREADY READY 0 1 }  { m_axi_gmem_28_AWADDR ADDR 1 64 }  { m_axi_gmem_28_AWID ID 1 1 }  { m_axi_gmem_28_AWLEN SIZE 1 8 }  { m_axi_gmem_28_AWSIZE BURST 1 3 }  { m_axi_gmem_28_AWBURST LOCK 1 2 }  { m_axi_gmem_28_AWLOCK CACHE 1 2 }  { m_axi_gmem_28_AWCACHE PROT 1 4 }  { m_axi_gmem_28_AWPROT QOS 1 3 }  { m_axi_gmem_28_AWQOS REGION 1 4 }  { m_axi_gmem_28_AWREGION USER 1 4 }  { m_axi_gmem_28_AWUSER DATA 1 1 }  { m_axi_gmem_28_WVALID VALID 1 1 }  { m_axi_gmem_28_WREADY READY 0 1 }  { m_axi_gmem_28_WDATA FIFONUM 1 32 }  { m_axi_gmem_28_WSTRB STRB 1 4 }  { m_axi_gmem_28_WLAST LAST 1 1 }  { m_axi_gmem_28_WID ID 1 1 }  { m_axi_gmem_28_WUSER DATA 1 1 }  { m_axi_gmem_28_ARVALID VALID 1 1 }  { m_axi_gmem_28_ARREADY READY 0 1 }  { m_axi_gmem_28_ARADDR ADDR 1 64 }  { m_axi_gmem_28_ARID ID 1 1 }  { m_axi_gmem_28_ARLEN SIZE 1 8 }  { m_axi_gmem_28_ARSIZE BURST 1 3 }  { m_axi_gmem_28_ARBURST LOCK 1 2 }  { m_axi_gmem_28_ARLOCK CACHE 1 2 }  { m_axi_gmem_28_ARCACHE PROT 1 4 }  { m_axi_gmem_28_ARPROT QOS 1 3 }  { m_axi_gmem_28_ARQOS REGION 1 4 }  { m_axi_gmem_28_ARREGION USER 1 4 }  { m_axi_gmem_28_ARUSER DATA 1 1 }  { m_axi_gmem_28_RVALID VALID 0 1 }  { m_axi_gmem_28_RREADY READY 1 1 }  { m_axi_gmem_28_RDATA FIFONUM 0 32 }  { m_axi_gmem_28_RLAST LAST 0 1 }  { m_axi_gmem_28_RID ID 0 1 }  { m_axi_gmem_28_RUSER DATA 0 1 }  { m_axi_gmem_28_RRESP RESP 0 2 }  { m_axi_gmem_28_BVALID VALID 0 1 }  { m_axi_gmem_28_BREADY READY 1 1 }  { m_axi_gmem_28_BRESP RESP 0 2 }  { m_axi_gmem_28_BID ID 0 1 }  { m_axi_gmem_28_BUSER DATA 0 1 } } }
	gmem_29 { m_axi {  { m_axi_gmem_29_AWVALID VALID 1 1 }  { m_axi_gmem_29_AWREADY READY 0 1 }  { m_axi_gmem_29_AWADDR ADDR 1 64 }  { m_axi_gmem_29_AWID ID 1 1 }  { m_axi_gmem_29_AWLEN SIZE 1 8 }  { m_axi_gmem_29_AWSIZE BURST 1 3 }  { m_axi_gmem_29_AWBURST LOCK 1 2 }  { m_axi_gmem_29_AWLOCK CACHE 1 2 }  { m_axi_gmem_29_AWCACHE PROT 1 4 }  { m_axi_gmem_29_AWPROT QOS 1 3 }  { m_axi_gmem_29_AWQOS REGION 1 4 }  { m_axi_gmem_29_AWREGION USER 1 4 }  { m_axi_gmem_29_AWUSER DATA 1 1 }  { m_axi_gmem_29_WVALID VALID 1 1 }  { m_axi_gmem_29_WREADY READY 0 1 }  { m_axi_gmem_29_WDATA FIFONUM 1 32 }  { m_axi_gmem_29_WSTRB STRB 1 4 }  { m_axi_gmem_29_WLAST LAST 1 1 }  { m_axi_gmem_29_WID ID 1 1 }  { m_axi_gmem_29_WUSER DATA 1 1 }  { m_axi_gmem_29_ARVALID VALID 1 1 }  { m_axi_gmem_29_ARREADY READY 0 1 }  { m_axi_gmem_29_ARADDR ADDR 1 64 }  { m_axi_gmem_29_ARID ID 1 1 }  { m_axi_gmem_29_ARLEN SIZE 1 8 }  { m_axi_gmem_29_ARSIZE BURST 1 3 }  { m_axi_gmem_29_ARBURST LOCK 1 2 }  { m_axi_gmem_29_ARLOCK CACHE 1 2 }  { m_axi_gmem_29_ARCACHE PROT 1 4 }  { m_axi_gmem_29_ARPROT QOS 1 3 }  { m_axi_gmem_29_ARQOS REGION 1 4 }  { m_axi_gmem_29_ARREGION USER 1 4 }  { m_axi_gmem_29_ARUSER DATA 1 1 }  { m_axi_gmem_29_RVALID VALID 0 1 }  { m_axi_gmem_29_RREADY READY 1 1 }  { m_axi_gmem_29_RDATA FIFONUM 0 32 }  { m_axi_gmem_29_RLAST LAST 0 1 }  { m_axi_gmem_29_RID ID 0 1 }  { m_axi_gmem_29_RUSER DATA 0 1 }  { m_axi_gmem_29_RRESP RESP 0 2 }  { m_axi_gmem_29_BVALID VALID 0 1 }  { m_axi_gmem_29_BREADY READY 1 1 }  { m_axi_gmem_29_BRESP RESP 0 2 }  { m_axi_gmem_29_BID ID 0 1 }  { m_axi_gmem_29_BUSER DATA 0 1 } } }
	gmem_30 { m_axi {  { m_axi_gmem_30_AWVALID VALID 1 1 }  { m_axi_gmem_30_AWREADY READY 0 1 }  { m_axi_gmem_30_AWADDR ADDR 1 64 }  { m_axi_gmem_30_AWID ID 1 1 }  { m_axi_gmem_30_AWLEN SIZE 1 8 }  { m_axi_gmem_30_AWSIZE BURST 1 3 }  { m_axi_gmem_30_AWBURST LOCK 1 2 }  { m_axi_gmem_30_AWLOCK CACHE 1 2 }  { m_axi_gmem_30_AWCACHE PROT 1 4 }  { m_axi_gmem_30_AWPROT QOS 1 3 }  { m_axi_gmem_30_AWQOS REGION 1 4 }  { m_axi_gmem_30_AWREGION USER 1 4 }  { m_axi_gmem_30_AWUSER DATA 1 1 }  { m_axi_gmem_30_WVALID VALID 1 1 }  { m_axi_gmem_30_WREADY READY 0 1 }  { m_axi_gmem_30_WDATA FIFONUM 1 32 }  { m_axi_gmem_30_WSTRB STRB 1 4 }  { m_axi_gmem_30_WLAST LAST 1 1 }  { m_axi_gmem_30_WID ID 1 1 }  { m_axi_gmem_30_WUSER DATA 1 1 }  { m_axi_gmem_30_ARVALID VALID 1 1 }  { m_axi_gmem_30_ARREADY READY 0 1 }  { m_axi_gmem_30_ARADDR ADDR 1 64 }  { m_axi_gmem_30_ARID ID 1 1 }  { m_axi_gmem_30_ARLEN SIZE 1 8 }  { m_axi_gmem_30_ARSIZE BURST 1 3 }  { m_axi_gmem_30_ARBURST LOCK 1 2 }  { m_axi_gmem_30_ARLOCK CACHE 1 2 }  { m_axi_gmem_30_ARCACHE PROT 1 4 }  { m_axi_gmem_30_ARPROT QOS 1 3 }  { m_axi_gmem_30_ARQOS REGION 1 4 }  { m_axi_gmem_30_ARREGION USER 1 4 }  { m_axi_gmem_30_ARUSER DATA 1 1 }  { m_axi_gmem_30_RVALID VALID 0 1 }  { m_axi_gmem_30_RREADY READY 1 1 }  { m_axi_gmem_30_RDATA FIFONUM 0 32 }  { m_axi_gmem_30_RLAST LAST 0 1 }  { m_axi_gmem_30_RID ID 0 1 }  { m_axi_gmem_30_RUSER DATA 0 1 }  { m_axi_gmem_30_RRESP RESP 0 2 }  { m_axi_gmem_30_BVALID VALID 0 1 }  { m_axi_gmem_30_BREADY READY 1 1 }  { m_axi_gmem_30_BRESP RESP 0 2 }  { m_axi_gmem_30_BID ID 0 1 }  { m_axi_gmem_30_BUSER DATA 0 1 } } }
	gmem_31 { m_axi {  { m_axi_gmem_31_AWVALID VALID 1 1 }  { m_axi_gmem_31_AWREADY READY 0 1 }  { m_axi_gmem_31_AWADDR ADDR 1 64 }  { m_axi_gmem_31_AWID ID 1 1 }  { m_axi_gmem_31_AWLEN SIZE 1 8 }  { m_axi_gmem_31_AWSIZE BURST 1 3 }  { m_axi_gmem_31_AWBURST LOCK 1 2 }  { m_axi_gmem_31_AWLOCK CACHE 1 2 }  { m_axi_gmem_31_AWCACHE PROT 1 4 }  { m_axi_gmem_31_AWPROT QOS 1 3 }  { m_axi_gmem_31_AWQOS REGION 1 4 }  { m_axi_gmem_31_AWREGION USER 1 4 }  { m_axi_gmem_31_AWUSER DATA 1 1 }  { m_axi_gmem_31_WVALID VALID 1 1 }  { m_axi_gmem_31_WREADY READY 0 1 }  { m_axi_gmem_31_WDATA FIFONUM 1 32 }  { m_axi_gmem_31_WSTRB STRB 1 4 }  { m_axi_gmem_31_WLAST LAST 1 1 }  { m_axi_gmem_31_WID ID 1 1 }  { m_axi_gmem_31_WUSER DATA 1 1 }  { m_axi_gmem_31_ARVALID VALID 1 1 }  { m_axi_gmem_31_ARREADY READY 0 1 }  { m_axi_gmem_31_ARADDR ADDR 1 64 }  { m_axi_gmem_31_ARID ID 1 1 }  { m_axi_gmem_31_ARLEN SIZE 1 8 }  { m_axi_gmem_31_ARSIZE BURST 1 3 }  { m_axi_gmem_31_ARBURST LOCK 1 2 }  { m_axi_gmem_31_ARLOCK CACHE 1 2 }  { m_axi_gmem_31_ARCACHE PROT 1 4 }  { m_axi_gmem_31_ARPROT QOS 1 3 }  { m_axi_gmem_31_ARQOS REGION 1 4 }  { m_axi_gmem_31_ARREGION USER 1 4 }  { m_axi_gmem_31_ARUSER DATA 1 1 }  { m_axi_gmem_31_RVALID VALID 0 1 }  { m_axi_gmem_31_RREADY READY 1 1 }  { m_axi_gmem_31_RDATA FIFONUM 0 32 }  { m_axi_gmem_31_RLAST LAST 0 1 }  { m_axi_gmem_31_RID ID 0 1 }  { m_axi_gmem_31_RUSER DATA 0 1 }  { m_axi_gmem_31_RRESP RESP 0 2 }  { m_axi_gmem_31_BVALID VALID 0 1 }  { m_axi_gmem_31_BREADY READY 1 1 }  { m_axi_gmem_31_BRESP RESP 0 2 }  { m_axi_gmem_31_BID ID 0 1 }  { m_axi_gmem_31_BUSER DATA 0 1 } } }
	gmem { m_axi {  { m_axi_gmem_AWVALID VALID 1 1 }  { m_axi_gmem_AWREADY READY 0 1 }  { m_axi_gmem_AWADDR ADDR 1 64 }  { m_axi_gmem_AWID ID 1 1 }  { m_axi_gmem_AWLEN SIZE 1 8 }  { m_axi_gmem_AWSIZE BURST 1 3 }  { m_axi_gmem_AWBURST LOCK 1 2 }  { m_axi_gmem_AWLOCK CACHE 1 2 }  { m_axi_gmem_AWCACHE PROT 1 4 }  { m_axi_gmem_AWPROT QOS 1 3 }  { m_axi_gmem_AWQOS REGION 1 4 }  { m_axi_gmem_AWREGION USER 1 4 }  { m_axi_gmem_AWUSER DATA 1 1 }  { m_axi_gmem_WVALID VALID 1 1 }  { m_axi_gmem_WREADY READY 0 1 }  { m_axi_gmem_WDATA FIFONUM 1 32 }  { m_axi_gmem_WSTRB STRB 1 4 }  { m_axi_gmem_WLAST LAST 1 1 }  { m_axi_gmem_WID ID 1 1 }  { m_axi_gmem_WUSER DATA 1 1 }  { m_axi_gmem_ARVALID VALID 1 1 }  { m_axi_gmem_ARREADY READY 0 1 }  { m_axi_gmem_ARADDR ADDR 1 64 }  { m_axi_gmem_ARID ID 1 1 }  { m_axi_gmem_ARLEN SIZE 1 8 }  { m_axi_gmem_ARSIZE BURST 1 3 }  { m_axi_gmem_ARBURST LOCK 1 2 }  { m_axi_gmem_ARLOCK CACHE 1 2 }  { m_axi_gmem_ARCACHE PROT 1 4 }  { m_axi_gmem_ARPROT QOS 1 3 }  { m_axi_gmem_ARQOS REGION 1 4 }  { m_axi_gmem_ARREGION USER 1 4 }  { m_axi_gmem_ARUSER DATA 1 1 }  { m_axi_gmem_RVALID VALID 0 1 }  { m_axi_gmem_RREADY READY 1 1 }  { m_axi_gmem_RDATA FIFONUM 0 32 }  { m_axi_gmem_RLAST LAST 0 1 }  { m_axi_gmem_RID ID 0 1 }  { m_axi_gmem_RUSER DATA 0 1 }  { m_axi_gmem_RRESP RESP 0 2 }  { m_axi_gmem_BVALID VALID 0 1 }  { m_axi_gmem_BREADY READY 1 1 }  { m_axi_gmem_BRESP RESP 0 2 }  { m_axi_gmem_BID ID 0 1 }  { m_axi_gmem_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem_0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_2 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_3 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_4 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_5 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_6 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_7 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_8 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_9 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_10 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_11 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_12 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_13 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_14 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_15 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_16 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_17 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_18 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_19 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_20 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_21 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_22 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_23 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_24 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_25 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_26 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_27 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_28 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_29 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_30 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem_31 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_WRITE}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem_0 64 }
	{ gmem_1 1 }
	{ gmem_2 1 }
	{ gmem_3 1 }
	{ gmem_4 1 }
	{ gmem_5 1 }
	{ gmem_6 1 }
	{ gmem_7 1 }
	{ gmem_8 1 }
	{ gmem_9 1 }
	{ gmem_10 1 }
	{ gmem_11 1 }
	{ gmem_12 1 }
	{ gmem_13 1 }
	{ gmem_14 1 }
	{ gmem_15 1 }
	{ gmem_16 1 }
	{ gmem_17 1 }
	{ gmem_18 1 }
	{ gmem_19 1 }
	{ gmem_20 1 }
	{ gmem_21 1 }
	{ gmem_22 1 }
	{ gmem_23 1 }
	{ gmem_24 1 }
	{ gmem_25 1 }
	{ gmem_26 1 }
	{ gmem_27 1 }
	{ gmem_28 1 }
	{ gmem_29 1 }
	{ gmem_30 1 }
	{ gmem_31 1 }
	{ gmem 64 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem_0 64 }
	{ gmem_1 1 }
	{ gmem_2 1 }
	{ gmem_3 1 }
	{ gmem_4 1 }
	{ gmem_5 1 }
	{ gmem_6 1 }
	{ gmem_7 1 }
	{ gmem_8 1 }
	{ gmem_9 1 }
	{ gmem_10 1 }
	{ gmem_11 1 }
	{ gmem_12 1 }
	{ gmem_13 1 }
	{ gmem_14 1 }
	{ gmem_15 1 }
	{ gmem_16 1 }
	{ gmem_17 1 }
	{ gmem_18 1 }
	{ gmem_19 1 }
	{ gmem_20 1 }
	{ gmem_21 1 }
	{ gmem_22 1 }
	{ gmem_23 1 }
	{ gmem_24 1 }
	{ gmem_25 1 }
	{ gmem_26 1 }
	{ gmem_27 1 }
	{ gmem_28 1 }
	{ gmem_29 1 }
	{ gmem_30 1 }
	{ gmem_31 1 }
	{ gmem 64 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
