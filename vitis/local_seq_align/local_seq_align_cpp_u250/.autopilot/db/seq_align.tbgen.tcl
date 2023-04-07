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
set C_modelType { int 1280 }
set C_modelArgList {
	{ query_string_comp int 2 regular {array 512 { 1 3 } 1 1 }  }
	{ reference_string_comp int 2 regular {array 1024 { 1 3 } 1 1 }  }
	{ dp_mem_0_0 int 10 regular {pointer 1}  }
	{ dp_mem_0_1 int 10 regular {pointer 1}  }
	{ dp_mem_0_2 int 10 regular {pointer 1}  }
	{ dp_mem_0_3 int 10 regular {pointer 1}  }
	{ dp_mem_0_4 int 10 regular {pointer 1}  }
	{ dp_mem_0_5 int 10 regular {pointer 1}  }
	{ dp_mem_0_6 int 10 regular {pointer 1}  }
	{ dp_mem_0_7 int 10 regular {pointer 1}  }
	{ dp_mem_0_8 int 10 regular {pointer 1}  }
	{ dp_mem_0_9 int 10 regular {pointer 1}  }
	{ dp_mem_0_10 int 10 regular {pointer 1}  }
	{ dp_mem_0_11 int 10 regular {pointer 1}  }
	{ dp_mem_0_12 int 10 regular {pointer 1}  }
	{ dp_mem_0_13 int 10 regular {pointer 1}  }
	{ dp_mem_0_14 int 10 regular {pointer 1}  }
	{ dp_mem_0_15 int 10 regular {pointer 1}  }
	{ dp_mem_0_16 int 10 regular {pointer 1}  }
	{ dp_mem_0_17 int 10 regular {pointer 1}  }
	{ dp_mem_0_18 int 10 regular {pointer 1}  }
	{ dp_mem_0_19 int 10 regular {pointer 1}  }
	{ dp_mem_0_20 int 10 regular {pointer 1}  }
	{ dp_mem_0_21 int 10 regular {pointer 1}  }
	{ dp_mem_0_22 int 10 regular {pointer 1}  }
	{ dp_mem_0_23 int 10 regular {pointer 1}  }
	{ dp_mem_0_24 int 10 regular {pointer 1}  }
	{ dp_mem_0_25 int 10 regular {pointer 1}  }
	{ dp_mem_0_26 int 10 regular {pointer 1}  }
	{ dp_mem_0_27 int 10 regular {pointer 1}  }
	{ dp_mem_0_28 int 10 regular {pointer 1}  }
	{ dp_mem_0_29 int 10 regular {pointer 1}  }
	{ dp_mem_0_30 int 10 regular {pointer 1}  }
	{ dp_mem_0_31 int 10 regular {pointer 1}  }
	{ p_read1 int 10 regular  }
	{ p_read2 int 10 regular  }
	{ p_read3 int 10 regular  }
	{ p_read4 int 10 regular  }
	{ p_read5 int 10 regular  }
	{ p_read6 int 10 regular  }
	{ p_read7 int 10 regular  }
	{ p_read8 int 10 regular  }
	{ p_read9 int 10 regular  }
	{ p_read10 int 10 regular  }
	{ p_read11 int 10 regular  }
	{ p_read12 int 10 regular  }
	{ p_read13 int 10 regular  }
	{ p_read14 int 10 regular  }
	{ p_read15 int 10 regular  }
	{ p_read16 int 10 regular  }
	{ p_read17 int 10 regular  }
	{ p_read18 int 10 regular  }
	{ p_read19 int 10 regular  }
	{ p_read20 int 10 regular  }
	{ p_read21 int 10 regular  }
	{ p_read22 int 10 regular  }
	{ p_read23 int 10 regular  }
	{ p_read24 int 10 regular  }
	{ p_read25 int 10 regular  }
	{ p_read26 int 10 regular  }
	{ p_read27 int 10 regular  }
	{ p_read28 int 10 regular  }
	{ p_read29 int 10 regular  }
	{ p_read30 int 10 regular  }
	{ p_read31 int 10 regular  }
	{ p_read32 int 10 regular  }
	{ p_read33 int 10 regular  }
	{ p_read34 int 10 regular  }
	{ p_read35 int 10 regular  }
	{ p_read36 int 10 regular  }
	{ p_read37 int 10 regular  }
	{ p_read38 int 10 regular  }
	{ p_read39 int 10 regular  }
	{ p_read40 int 10 regular  }
	{ p_read41 int 10 regular  }
	{ p_read42 int 10 regular  }
	{ p_read43 int 10 regular  }
	{ p_read44 int 10 regular  }
	{ p_read45 int 10 regular  }
	{ p_read46 int 10 regular  }
	{ p_read47 int 10 regular  }
	{ p_read48 int 10 regular  }
	{ p_read49 int 10 regular  }
	{ p_read50 int 10 regular  }
	{ p_read51 int 10 regular  }
	{ p_read52 int 10 regular  }
	{ p_read53 int 10 regular  }
	{ p_read54 int 10 regular  }
	{ p_read55 int 10 regular  }
	{ p_read56 int 10 regular  }
	{ p_read57 int 10 regular  }
	{ p_read58 int 10 regular  }
	{ p_read59 int 10 regular  }
	{ p_read60 int 10 regular  }
	{ p_read61 int 10 regular  }
	{ p_read62 int 10 regular  }
	{ p_read63 int 10 regular  }
	{ p_read64 int 10 regular  }
	{ Ix_mem_0_0 int 10 regular {pointer 1}  }
	{ Ix_mem_0_1 int 10 regular {pointer 1}  }
	{ Ix_mem_0_2 int 10 regular {pointer 1}  }
	{ Ix_mem_0_3 int 10 regular {pointer 1}  }
	{ Ix_mem_0_4 int 10 regular {pointer 1}  }
	{ Ix_mem_0_5 int 10 regular {pointer 1}  }
	{ Ix_mem_0_6 int 10 regular {pointer 1}  }
	{ Ix_mem_0_7 int 10 regular {pointer 1}  }
	{ Ix_mem_0_8 int 10 regular {pointer 1}  }
	{ Ix_mem_0_9 int 10 regular {pointer 1}  }
	{ Ix_mem_0_10 int 10 regular {pointer 1}  }
	{ Ix_mem_0_11 int 10 regular {pointer 1}  }
	{ Ix_mem_0_12 int 10 regular {pointer 1}  }
	{ Ix_mem_0_13 int 10 regular {pointer 1}  }
	{ Ix_mem_0_14 int 10 regular {pointer 1}  }
	{ Ix_mem_0_15 int 10 regular {pointer 1}  }
	{ Ix_mem_0_16 int 10 regular {pointer 1}  }
	{ Ix_mem_0_17 int 10 regular {pointer 1}  }
	{ Ix_mem_0_18 int 10 regular {pointer 1}  }
	{ Ix_mem_0_19 int 10 regular {pointer 1}  }
	{ Ix_mem_0_20 int 10 regular {pointer 1}  }
	{ Ix_mem_0_21 int 10 regular {pointer 1}  }
	{ Ix_mem_0_22 int 10 regular {pointer 1}  }
	{ Ix_mem_0_23 int 10 regular {pointer 1}  }
	{ Ix_mem_0_24 int 10 regular {pointer 1}  }
	{ Ix_mem_0_25 int 10 regular {pointer 1}  }
	{ Ix_mem_0_26 int 10 regular {pointer 1}  }
	{ Ix_mem_0_27 int 10 regular {pointer 1}  }
	{ Ix_mem_0_28 int 10 regular {pointer 1}  }
	{ Ix_mem_0_29 int 10 regular {pointer 1}  }
	{ Ix_mem_0_30 int 10 regular {pointer 1}  }
	{ Ix_mem_0_31 int 10 regular {pointer 1}  }
	{ p_read65 int 10 regular  }
	{ p_read66 int 10 regular  }
	{ p_read67 int 10 regular  }
	{ p_read68 int 10 regular  }
	{ p_read69 int 10 regular  }
	{ p_read70 int 10 regular  }
	{ p_read71 int 10 regular  }
	{ p_read72 int 10 regular  }
	{ p_read73 int 10 regular  }
	{ p_read74 int 10 regular  }
	{ p_read75 int 10 regular  }
	{ p_read76 int 10 regular  }
	{ p_read77 int 10 regular  }
	{ p_read78 int 10 regular  }
	{ p_read79 int 10 regular  }
	{ p_read80 int 10 regular  }
	{ p_read81 int 10 regular  }
	{ p_read82 int 10 regular  }
	{ p_read83 int 10 regular  }
	{ p_read84 int 10 regular  }
	{ p_read85 int 10 regular  }
	{ p_read86 int 10 regular  }
	{ p_read87 int 10 regular  }
	{ p_read88 int 10 regular  }
	{ p_read89 int 10 regular  }
	{ p_read90 int 10 regular  }
	{ p_read91 int 10 regular  }
	{ p_read92 int 10 regular  }
	{ p_read93 int 10 regular  }
	{ p_read94 int 10 regular  }
	{ p_read95 int 10 regular  }
	{ p_read96 int 10 regular  }
	{ Iy_mem_0_0 int 10 regular {pointer 1}  }
	{ Iy_mem_0_1 int 10 regular {pointer 1}  }
	{ Iy_mem_0_2 int 10 regular {pointer 1}  }
	{ Iy_mem_0_3 int 10 regular {pointer 1}  }
	{ Iy_mem_0_4 int 10 regular {pointer 1}  }
	{ Iy_mem_0_5 int 10 regular {pointer 1}  }
	{ Iy_mem_0_6 int 10 regular {pointer 1}  }
	{ Iy_mem_0_7 int 10 regular {pointer 1}  }
	{ Iy_mem_0_8 int 10 regular {pointer 1}  }
	{ Iy_mem_0_9 int 10 regular {pointer 1}  }
	{ Iy_mem_0_10 int 10 regular {pointer 1}  }
	{ Iy_mem_0_11 int 10 regular {pointer 1}  }
	{ Iy_mem_0_12 int 10 regular {pointer 1}  }
	{ Iy_mem_0_13 int 10 regular {pointer 1}  }
	{ Iy_mem_0_14 int 10 regular {pointer 1}  }
	{ Iy_mem_0_15 int 10 regular {pointer 1}  }
	{ Iy_mem_0_16 int 10 regular {pointer 1}  }
	{ Iy_mem_0_17 int 10 regular {pointer 1}  }
	{ Iy_mem_0_18 int 10 regular {pointer 1}  }
	{ Iy_mem_0_19 int 10 regular {pointer 1}  }
	{ Iy_mem_0_20 int 10 regular {pointer 1}  }
	{ Iy_mem_0_21 int 10 regular {pointer 1}  }
	{ Iy_mem_0_22 int 10 regular {pointer 1}  }
	{ Iy_mem_0_23 int 10 regular {pointer 1}  }
	{ Iy_mem_0_24 int 10 regular {pointer 1}  }
	{ Iy_mem_0_25 int 10 regular {pointer 1}  }
	{ Iy_mem_0_26 int 10 regular {pointer 1}  }
	{ Iy_mem_0_27 int 10 regular {pointer 1}  }
	{ Iy_mem_0_28 int 10 regular {pointer 1}  }
	{ Iy_mem_0_29 int 10 regular {pointer 1}  }
	{ Iy_mem_0_30 int 10 regular {pointer 1}  }
	{ Iy_mem_0_31 int 10 regular {pointer 1}  }
	{ p_read97 int 10 regular  }
	{ p_read98 int 10 regular  }
	{ p_read99 int 10 regular  }
	{ p_read100 int 10 regular  }
	{ p_read101 int 10 regular  }
	{ p_read102 int 10 regular  }
	{ p_read103 int 10 regular  }
	{ p_read104 int 10 regular  }
	{ p_read105 int 10 regular  }
	{ p_read106 int 10 regular  }
	{ p_read107 int 10 regular  }
	{ p_read108 int 10 regular  }
	{ p_read109 int 10 regular  }
	{ p_read110 int 10 regular  }
	{ p_read111 int 10 regular  }
	{ p_read112 int 10 regular  }
	{ p_read113 int 10 regular  }
	{ p_read114 int 10 regular  }
	{ p_read115 int 10 regular  }
	{ p_read116 int 10 regular  }
	{ p_read117 int 10 regular  }
	{ p_read118 int 10 regular  }
	{ p_read119 int 10 regular  }
	{ p_read120 int 10 regular  }
	{ p_read121 int 10 regular  }
	{ p_read122 int 10 regular  }
	{ p_read123 int 10 regular  }
	{ p_read124 int 10 regular  }
	{ p_read125 int 10 regular  }
	{ p_read126 int 10 regular  }
	{ p_read127 int 10 regular  }
	{ p_read128 int 10 regular  }
	{ last_pe_score int 10 regular {array 1024 { 0 1 } 1 1 }  }
	{ last_pe_scoreIx int 10 regular {array 1024 { 2 3 } 1 1 }  }
	{ dp_matrix1_0 int 10 regular {array 32768 { 0 0 } 0 1 }  }
	{ dp_matrix1_1 int 10 regular {array 32768 { 0 0 } 0 1 }  }
	{ dp_matrix1_2 int 10 regular {array 32768 { 0 0 } 0 1 }  }
	{ dp_matrix1_3 int 10 regular {array 32768 { 0 0 } 0 1 }  }
	{ dp_matrix1_4 int 10 regular {array 32768 { 0 0 } 0 1 }  }
	{ dp_matrix1_5 int 10 regular {array 32768 { 0 0 } 0 1 }  }
	{ dp_matrix1_6 int 10 regular {array 32768 { 0 0 } 0 1 }  }
	{ dp_matrix1_7 int 10 regular {array 32768 { 0 0 } 0 1 }  }
	{ dp_matrix1_8 int 10 regular {array 32768 { 0 0 } 0 1 }  }
	{ dp_matrix1_9 int 10 regular {array 32768 { 0 0 } 0 1 }  }
	{ dp_matrix1_10 int 10 regular {array 32768 { 0 0 } 0 1 }  }
	{ dp_matrix1_11 int 10 regular {array 32768 { 0 0 } 0 1 }  }
	{ dp_matrix1_12 int 10 regular {array 32768 { 0 0 } 0 1 }  }
	{ dp_matrix1_13 int 10 regular {array 32768 { 0 0 } 0 1 }  }
	{ dp_matrix1_14 int 10 regular {array 32768 { 0 0 } 0 1 }  }
	{ dp_matrix1_15 int 10 regular {array 32768 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "query_string_comp", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "reference_string_comp", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} , 
 	{ "Name" : "dp_mem_0_0", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_1", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_2", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_3", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_4", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_5", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_6", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_7", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_8", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_9", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_10", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_11", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_12", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_13", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_14", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_15", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_16", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_17", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_18", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_19", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_20", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_21", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_22", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_23", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_24", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_25", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_26", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_27", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_28", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_29", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_30", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_mem_0_31", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read2", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read3", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read4", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read5", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read6", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read7", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read8", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read9", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read10", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read11", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read12", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read13", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read14", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read15", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read16", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read17", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read18", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read19", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read20", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read21", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read22", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read23", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read24", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read25", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read26", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read27", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read28", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read29", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read30", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read31", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read32", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read33", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read34", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read35", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read36", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read37", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read38", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read39", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read40", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read41", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read42", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read43", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read44", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read45", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read46", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read47", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read48", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read49", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read50", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read51", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read52", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read53", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read54", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read55", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read56", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read57", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read58", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read59", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read60", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read61", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read62", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read63", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read64", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "Ix_mem_0_0", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_1", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_2", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_3", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_4", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_5", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_6", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_7", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_8", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_9", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_10", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_11", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_12", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_13", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_14", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_15", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_16", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_17", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_18", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_19", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_20", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_21", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_22", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_23", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_24", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_25", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_26", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_27", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_28", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_29", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_30", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Ix_mem_0_31", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read65", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read66", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read67", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read68", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read69", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read70", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read71", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read72", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read73", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read74", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read75", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read76", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read77", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read78", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read79", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read80", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read81", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read82", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read83", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read84", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read85", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read86", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read87", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read88", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read89", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read90", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read91", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read92", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read93", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read94", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read95", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read96", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "Iy_mem_0_0", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_1", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_2", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_3", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_4", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_5", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_6", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_7", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_8", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_9", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_10", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_11", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_12", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_13", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_14", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_15", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_16", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_17", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_18", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_19", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_20", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_21", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_22", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_23", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_24", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_25", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_26", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_27", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_28", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_29", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_30", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "Iy_mem_0_31", "interface" : "wire", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_read97", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read98", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read99", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read100", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read101", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read102", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read103", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read104", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read105", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read106", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read107", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read108", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read109", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read110", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read111", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read112", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read113", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read114", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read115", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read116", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read117", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read118", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read119", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read120", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read121", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read122", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read123", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read124", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read125", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read126", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read127", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "p_read128", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "last_pe_score", "interface" : "memory", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "last_pe_scoreIx", "interface" : "memory", "bitwidth" : 10, "direction" : "READWRITE"} , 
 	{ "Name" : "dp_matrix1_0", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix1_1", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix1_2", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix1_3", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix1_4", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix1_5", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix1_6", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix1_7", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix1_8", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix1_9", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix1_10", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix1_11", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix1_12", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix1_13", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix1_14", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "dp_matrix1_15", "interface" : "memory", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1280} ]}
# RTL Port declarations: 
set portNum 600
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ query_string_comp_address0 sc_out sc_lv 9 signal 0 } 
	{ query_string_comp_ce0 sc_out sc_logic 1 signal 0 } 
	{ query_string_comp_q0 sc_in sc_lv 2 signal 0 } 
	{ reference_string_comp_address0 sc_out sc_lv 10 signal 1 } 
	{ reference_string_comp_ce0 sc_out sc_logic 1 signal 1 } 
	{ reference_string_comp_q0 sc_in sc_lv 2 signal 1 } 
	{ dp_mem_0_0 sc_out sc_lv 10 signal 2 } 
	{ dp_mem_0_0_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ dp_mem_0_1 sc_out sc_lv 10 signal 3 } 
	{ dp_mem_0_1_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ dp_mem_0_2 sc_out sc_lv 10 signal 4 } 
	{ dp_mem_0_2_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ dp_mem_0_3 sc_out sc_lv 10 signal 5 } 
	{ dp_mem_0_3_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ dp_mem_0_4 sc_out sc_lv 10 signal 6 } 
	{ dp_mem_0_4_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ dp_mem_0_5 sc_out sc_lv 10 signal 7 } 
	{ dp_mem_0_5_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ dp_mem_0_6 sc_out sc_lv 10 signal 8 } 
	{ dp_mem_0_6_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ dp_mem_0_7 sc_out sc_lv 10 signal 9 } 
	{ dp_mem_0_7_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ dp_mem_0_8 sc_out sc_lv 10 signal 10 } 
	{ dp_mem_0_8_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ dp_mem_0_9 sc_out sc_lv 10 signal 11 } 
	{ dp_mem_0_9_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ dp_mem_0_10 sc_out sc_lv 10 signal 12 } 
	{ dp_mem_0_10_ap_vld sc_out sc_logic 1 outvld 12 } 
	{ dp_mem_0_11 sc_out sc_lv 10 signal 13 } 
	{ dp_mem_0_11_ap_vld sc_out sc_logic 1 outvld 13 } 
	{ dp_mem_0_12 sc_out sc_lv 10 signal 14 } 
	{ dp_mem_0_12_ap_vld sc_out sc_logic 1 outvld 14 } 
	{ dp_mem_0_13 sc_out sc_lv 10 signal 15 } 
	{ dp_mem_0_13_ap_vld sc_out sc_logic 1 outvld 15 } 
	{ dp_mem_0_14 sc_out sc_lv 10 signal 16 } 
	{ dp_mem_0_14_ap_vld sc_out sc_logic 1 outvld 16 } 
	{ dp_mem_0_15 sc_out sc_lv 10 signal 17 } 
	{ dp_mem_0_15_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ dp_mem_0_16 sc_out sc_lv 10 signal 18 } 
	{ dp_mem_0_16_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ dp_mem_0_17 sc_out sc_lv 10 signal 19 } 
	{ dp_mem_0_17_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ dp_mem_0_18 sc_out sc_lv 10 signal 20 } 
	{ dp_mem_0_18_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ dp_mem_0_19 sc_out sc_lv 10 signal 21 } 
	{ dp_mem_0_19_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ dp_mem_0_20 sc_out sc_lv 10 signal 22 } 
	{ dp_mem_0_20_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ dp_mem_0_21 sc_out sc_lv 10 signal 23 } 
	{ dp_mem_0_21_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ dp_mem_0_22 sc_out sc_lv 10 signal 24 } 
	{ dp_mem_0_22_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ dp_mem_0_23 sc_out sc_lv 10 signal 25 } 
	{ dp_mem_0_23_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ dp_mem_0_24 sc_out sc_lv 10 signal 26 } 
	{ dp_mem_0_24_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ dp_mem_0_25 sc_out sc_lv 10 signal 27 } 
	{ dp_mem_0_25_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ dp_mem_0_26 sc_out sc_lv 10 signal 28 } 
	{ dp_mem_0_26_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ dp_mem_0_27 sc_out sc_lv 10 signal 29 } 
	{ dp_mem_0_27_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ dp_mem_0_28 sc_out sc_lv 10 signal 30 } 
	{ dp_mem_0_28_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ dp_mem_0_29 sc_out sc_lv 10 signal 31 } 
	{ dp_mem_0_29_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ dp_mem_0_30 sc_out sc_lv 10 signal 32 } 
	{ dp_mem_0_30_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ dp_mem_0_31 sc_out sc_lv 10 signal 33 } 
	{ dp_mem_0_31_ap_vld sc_out sc_logic 1 outvld 33 } 
	{ p_read1 sc_in sc_lv 10 signal 34 } 
	{ p_read2 sc_in sc_lv 10 signal 35 } 
	{ p_read3 sc_in sc_lv 10 signal 36 } 
	{ p_read4 sc_in sc_lv 10 signal 37 } 
	{ p_read5 sc_in sc_lv 10 signal 38 } 
	{ p_read6 sc_in sc_lv 10 signal 39 } 
	{ p_read7 sc_in sc_lv 10 signal 40 } 
	{ p_read8 sc_in sc_lv 10 signal 41 } 
	{ p_read9 sc_in sc_lv 10 signal 42 } 
	{ p_read10 sc_in sc_lv 10 signal 43 } 
	{ p_read11 sc_in sc_lv 10 signal 44 } 
	{ p_read12 sc_in sc_lv 10 signal 45 } 
	{ p_read13 sc_in sc_lv 10 signal 46 } 
	{ p_read14 sc_in sc_lv 10 signal 47 } 
	{ p_read15 sc_in sc_lv 10 signal 48 } 
	{ p_read16 sc_in sc_lv 10 signal 49 } 
	{ p_read17 sc_in sc_lv 10 signal 50 } 
	{ p_read18 sc_in sc_lv 10 signal 51 } 
	{ p_read19 sc_in sc_lv 10 signal 52 } 
	{ p_read20 sc_in sc_lv 10 signal 53 } 
	{ p_read21 sc_in sc_lv 10 signal 54 } 
	{ p_read22 sc_in sc_lv 10 signal 55 } 
	{ p_read23 sc_in sc_lv 10 signal 56 } 
	{ p_read24 sc_in sc_lv 10 signal 57 } 
	{ p_read25 sc_in sc_lv 10 signal 58 } 
	{ p_read26 sc_in sc_lv 10 signal 59 } 
	{ p_read27 sc_in sc_lv 10 signal 60 } 
	{ p_read28 sc_in sc_lv 10 signal 61 } 
	{ p_read29 sc_in sc_lv 10 signal 62 } 
	{ p_read30 sc_in sc_lv 10 signal 63 } 
	{ p_read31 sc_in sc_lv 10 signal 64 } 
	{ p_read32 sc_in sc_lv 10 signal 65 } 
	{ p_read33 sc_in sc_lv 10 signal 66 } 
	{ p_read34 sc_in sc_lv 10 signal 67 } 
	{ p_read35 sc_in sc_lv 10 signal 68 } 
	{ p_read36 sc_in sc_lv 10 signal 69 } 
	{ p_read37 sc_in sc_lv 10 signal 70 } 
	{ p_read38 sc_in sc_lv 10 signal 71 } 
	{ p_read39 sc_in sc_lv 10 signal 72 } 
	{ p_read40 sc_in sc_lv 10 signal 73 } 
	{ p_read41 sc_in sc_lv 10 signal 74 } 
	{ p_read42 sc_in sc_lv 10 signal 75 } 
	{ p_read43 sc_in sc_lv 10 signal 76 } 
	{ p_read44 sc_in sc_lv 10 signal 77 } 
	{ p_read45 sc_in sc_lv 10 signal 78 } 
	{ p_read46 sc_in sc_lv 10 signal 79 } 
	{ p_read47 sc_in sc_lv 10 signal 80 } 
	{ p_read48 sc_in sc_lv 10 signal 81 } 
	{ p_read49 sc_in sc_lv 10 signal 82 } 
	{ p_read50 sc_in sc_lv 10 signal 83 } 
	{ p_read51 sc_in sc_lv 10 signal 84 } 
	{ p_read52 sc_in sc_lv 10 signal 85 } 
	{ p_read53 sc_in sc_lv 10 signal 86 } 
	{ p_read54 sc_in sc_lv 10 signal 87 } 
	{ p_read55 sc_in sc_lv 10 signal 88 } 
	{ p_read56 sc_in sc_lv 10 signal 89 } 
	{ p_read57 sc_in sc_lv 10 signal 90 } 
	{ p_read58 sc_in sc_lv 10 signal 91 } 
	{ p_read59 sc_in sc_lv 10 signal 92 } 
	{ p_read60 sc_in sc_lv 10 signal 93 } 
	{ p_read61 sc_in sc_lv 10 signal 94 } 
	{ p_read62 sc_in sc_lv 10 signal 95 } 
	{ p_read63 sc_in sc_lv 10 signal 96 } 
	{ p_read64 sc_in sc_lv 10 signal 97 } 
	{ Ix_mem_0_0 sc_out sc_lv 10 signal 98 } 
	{ Ix_mem_0_0_ap_vld sc_out sc_logic 1 outvld 98 } 
	{ Ix_mem_0_1 sc_out sc_lv 10 signal 99 } 
	{ Ix_mem_0_1_ap_vld sc_out sc_logic 1 outvld 99 } 
	{ Ix_mem_0_2 sc_out sc_lv 10 signal 100 } 
	{ Ix_mem_0_2_ap_vld sc_out sc_logic 1 outvld 100 } 
	{ Ix_mem_0_3 sc_out sc_lv 10 signal 101 } 
	{ Ix_mem_0_3_ap_vld sc_out sc_logic 1 outvld 101 } 
	{ Ix_mem_0_4 sc_out sc_lv 10 signal 102 } 
	{ Ix_mem_0_4_ap_vld sc_out sc_logic 1 outvld 102 } 
	{ Ix_mem_0_5 sc_out sc_lv 10 signal 103 } 
	{ Ix_mem_0_5_ap_vld sc_out sc_logic 1 outvld 103 } 
	{ Ix_mem_0_6 sc_out sc_lv 10 signal 104 } 
	{ Ix_mem_0_6_ap_vld sc_out sc_logic 1 outvld 104 } 
	{ Ix_mem_0_7 sc_out sc_lv 10 signal 105 } 
	{ Ix_mem_0_7_ap_vld sc_out sc_logic 1 outvld 105 } 
	{ Ix_mem_0_8 sc_out sc_lv 10 signal 106 } 
	{ Ix_mem_0_8_ap_vld sc_out sc_logic 1 outvld 106 } 
	{ Ix_mem_0_9 sc_out sc_lv 10 signal 107 } 
	{ Ix_mem_0_9_ap_vld sc_out sc_logic 1 outvld 107 } 
	{ Ix_mem_0_10 sc_out sc_lv 10 signal 108 } 
	{ Ix_mem_0_10_ap_vld sc_out sc_logic 1 outvld 108 } 
	{ Ix_mem_0_11 sc_out sc_lv 10 signal 109 } 
	{ Ix_mem_0_11_ap_vld sc_out sc_logic 1 outvld 109 } 
	{ Ix_mem_0_12 sc_out sc_lv 10 signal 110 } 
	{ Ix_mem_0_12_ap_vld sc_out sc_logic 1 outvld 110 } 
	{ Ix_mem_0_13 sc_out sc_lv 10 signal 111 } 
	{ Ix_mem_0_13_ap_vld sc_out sc_logic 1 outvld 111 } 
	{ Ix_mem_0_14 sc_out sc_lv 10 signal 112 } 
	{ Ix_mem_0_14_ap_vld sc_out sc_logic 1 outvld 112 } 
	{ Ix_mem_0_15 sc_out sc_lv 10 signal 113 } 
	{ Ix_mem_0_15_ap_vld sc_out sc_logic 1 outvld 113 } 
	{ Ix_mem_0_16 sc_out sc_lv 10 signal 114 } 
	{ Ix_mem_0_16_ap_vld sc_out sc_logic 1 outvld 114 } 
	{ Ix_mem_0_17 sc_out sc_lv 10 signal 115 } 
	{ Ix_mem_0_17_ap_vld sc_out sc_logic 1 outvld 115 } 
	{ Ix_mem_0_18 sc_out sc_lv 10 signal 116 } 
	{ Ix_mem_0_18_ap_vld sc_out sc_logic 1 outvld 116 } 
	{ Ix_mem_0_19 sc_out sc_lv 10 signal 117 } 
	{ Ix_mem_0_19_ap_vld sc_out sc_logic 1 outvld 117 } 
	{ Ix_mem_0_20 sc_out sc_lv 10 signal 118 } 
	{ Ix_mem_0_20_ap_vld sc_out sc_logic 1 outvld 118 } 
	{ Ix_mem_0_21 sc_out sc_lv 10 signal 119 } 
	{ Ix_mem_0_21_ap_vld sc_out sc_logic 1 outvld 119 } 
	{ Ix_mem_0_22 sc_out sc_lv 10 signal 120 } 
	{ Ix_mem_0_22_ap_vld sc_out sc_logic 1 outvld 120 } 
	{ Ix_mem_0_23 sc_out sc_lv 10 signal 121 } 
	{ Ix_mem_0_23_ap_vld sc_out sc_logic 1 outvld 121 } 
	{ Ix_mem_0_24 sc_out sc_lv 10 signal 122 } 
	{ Ix_mem_0_24_ap_vld sc_out sc_logic 1 outvld 122 } 
	{ Ix_mem_0_25 sc_out sc_lv 10 signal 123 } 
	{ Ix_mem_0_25_ap_vld sc_out sc_logic 1 outvld 123 } 
	{ Ix_mem_0_26 sc_out sc_lv 10 signal 124 } 
	{ Ix_mem_0_26_ap_vld sc_out sc_logic 1 outvld 124 } 
	{ Ix_mem_0_27 sc_out sc_lv 10 signal 125 } 
	{ Ix_mem_0_27_ap_vld sc_out sc_logic 1 outvld 125 } 
	{ Ix_mem_0_28 sc_out sc_lv 10 signal 126 } 
	{ Ix_mem_0_28_ap_vld sc_out sc_logic 1 outvld 126 } 
	{ Ix_mem_0_29 sc_out sc_lv 10 signal 127 } 
	{ Ix_mem_0_29_ap_vld sc_out sc_logic 1 outvld 127 } 
	{ Ix_mem_0_30 sc_out sc_lv 10 signal 128 } 
	{ Ix_mem_0_30_ap_vld sc_out sc_logic 1 outvld 128 } 
	{ Ix_mem_0_31 sc_out sc_lv 10 signal 129 } 
	{ Ix_mem_0_31_ap_vld sc_out sc_logic 1 outvld 129 } 
	{ p_read65 sc_in sc_lv 10 signal 130 } 
	{ p_read66 sc_in sc_lv 10 signal 131 } 
	{ p_read67 sc_in sc_lv 10 signal 132 } 
	{ p_read68 sc_in sc_lv 10 signal 133 } 
	{ p_read69 sc_in sc_lv 10 signal 134 } 
	{ p_read70 sc_in sc_lv 10 signal 135 } 
	{ p_read71 sc_in sc_lv 10 signal 136 } 
	{ p_read72 sc_in sc_lv 10 signal 137 } 
	{ p_read73 sc_in sc_lv 10 signal 138 } 
	{ p_read74 sc_in sc_lv 10 signal 139 } 
	{ p_read75 sc_in sc_lv 10 signal 140 } 
	{ p_read76 sc_in sc_lv 10 signal 141 } 
	{ p_read77 sc_in sc_lv 10 signal 142 } 
	{ p_read78 sc_in sc_lv 10 signal 143 } 
	{ p_read79 sc_in sc_lv 10 signal 144 } 
	{ p_read80 sc_in sc_lv 10 signal 145 } 
	{ p_read81 sc_in sc_lv 10 signal 146 } 
	{ p_read82 sc_in sc_lv 10 signal 147 } 
	{ p_read83 sc_in sc_lv 10 signal 148 } 
	{ p_read84 sc_in sc_lv 10 signal 149 } 
	{ p_read85 sc_in sc_lv 10 signal 150 } 
	{ p_read86 sc_in sc_lv 10 signal 151 } 
	{ p_read87 sc_in sc_lv 10 signal 152 } 
	{ p_read88 sc_in sc_lv 10 signal 153 } 
	{ p_read89 sc_in sc_lv 10 signal 154 } 
	{ p_read90 sc_in sc_lv 10 signal 155 } 
	{ p_read91 sc_in sc_lv 10 signal 156 } 
	{ p_read92 sc_in sc_lv 10 signal 157 } 
	{ p_read93 sc_in sc_lv 10 signal 158 } 
	{ p_read94 sc_in sc_lv 10 signal 159 } 
	{ p_read95 sc_in sc_lv 10 signal 160 } 
	{ p_read96 sc_in sc_lv 10 signal 161 } 
	{ Iy_mem_0_0 sc_out sc_lv 10 signal 162 } 
	{ Iy_mem_0_0_ap_vld sc_out sc_logic 1 outvld 162 } 
	{ Iy_mem_0_1 sc_out sc_lv 10 signal 163 } 
	{ Iy_mem_0_1_ap_vld sc_out sc_logic 1 outvld 163 } 
	{ Iy_mem_0_2 sc_out sc_lv 10 signal 164 } 
	{ Iy_mem_0_2_ap_vld sc_out sc_logic 1 outvld 164 } 
	{ Iy_mem_0_3 sc_out sc_lv 10 signal 165 } 
	{ Iy_mem_0_3_ap_vld sc_out sc_logic 1 outvld 165 } 
	{ Iy_mem_0_4 sc_out sc_lv 10 signal 166 } 
	{ Iy_mem_0_4_ap_vld sc_out sc_logic 1 outvld 166 } 
	{ Iy_mem_0_5 sc_out sc_lv 10 signal 167 } 
	{ Iy_mem_0_5_ap_vld sc_out sc_logic 1 outvld 167 } 
	{ Iy_mem_0_6 sc_out sc_lv 10 signal 168 } 
	{ Iy_mem_0_6_ap_vld sc_out sc_logic 1 outvld 168 } 
	{ Iy_mem_0_7 sc_out sc_lv 10 signal 169 } 
	{ Iy_mem_0_7_ap_vld sc_out sc_logic 1 outvld 169 } 
	{ Iy_mem_0_8 sc_out sc_lv 10 signal 170 } 
	{ Iy_mem_0_8_ap_vld sc_out sc_logic 1 outvld 170 } 
	{ Iy_mem_0_9 sc_out sc_lv 10 signal 171 } 
	{ Iy_mem_0_9_ap_vld sc_out sc_logic 1 outvld 171 } 
	{ Iy_mem_0_10 sc_out sc_lv 10 signal 172 } 
	{ Iy_mem_0_10_ap_vld sc_out sc_logic 1 outvld 172 } 
	{ Iy_mem_0_11 sc_out sc_lv 10 signal 173 } 
	{ Iy_mem_0_11_ap_vld sc_out sc_logic 1 outvld 173 } 
	{ Iy_mem_0_12 sc_out sc_lv 10 signal 174 } 
	{ Iy_mem_0_12_ap_vld sc_out sc_logic 1 outvld 174 } 
	{ Iy_mem_0_13 sc_out sc_lv 10 signal 175 } 
	{ Iy_mem_0_13_ap_vld sc_out sc_logic 1 outvld 175 } 
	{ Iy_mem_0_14 sc_out sc_lv 10 signal 176 } 
	{ Iy_mem_0_14_ap_vld sc_out sc_logic 1 outvld 176 } 
	{ Iy_mem_0_15 sc_out sc_lv 10 signal 177 } 
	{ Iy_mem_0_15_ap_vld sc_out sc_logic 1 outvld 177 } 
	{ Iy_mem_0_16 sc_out sc_lv 10 signal 178 } 
	{ Iy_mem_0_16_ap_vld sc_out sc_logic 1 outvld 178 } 
	{ Iy_mem_0_17 sc_out sc_lv 10 signal 179 } 
	{ Iy_mem_0_17_ap_vld sc_out sc_logic 1 outvld 179 } 
	{ Iy_mem_0_18 sc_out sc_lv 10 signal 180 } 
	{ Iy_mem_0_18_ap_vld sc_out sc_logic 1 outvld 180 } 
	{ Iy_mem_0_19 sc_out sc_lv 10 signal 181 } 
	{ Iy_mem_0_19_ap_vld sc_out sc_logic 1 outvld 181 } 
	{ Iy_mem_0_20 sc_out sc_lv 10 signal 182 } 
	{ Iy_mem_0_20_ap_vld sc_out sc_logic 1 outvld 182 } 
	{ Iy_mem_0_21 sc_out sc_lv 10 signal 183 } 
	{ Iy_mem_0_21_ap_vld sc_out sc_logic 1 outvld 183 } 
	{ Iy_mem_0_22 sc_out sc_lv 10 signal 184 } 
	{ Iy_mem_0_22_ap_vld sc_out sc_logic 1 outvld 184 } 
	{ Iy_mem_0_23 sc_out sc_lv 10 signal 185 } 
	{ Iy_mem_0_23_ap_vld sc_out sc_logic 1 outvld 185 } 
	{ Iy_mem_0_24 sc_out sc_lv 10 signal 186 } 
	{ Iy_mem_0_24_ap_vld sc_out sc_logic 1 outvld 186 } 
	{ Iy_mem_0_25 sc_out sc_lv 10 signal 187 } 
	{ Iy_mem_0_25_ap_vld sc_out sc_logic 1 outvld 187 } 
	{ Iy_mem_0_26 sc_out sc_lv 10 signal 188 } 
	{ Iy_mem_0_26_ap_vld sc_out sc_logic 1 outvld 188 } 
	{ Iy_mem_0_27 sc_out sc_lv 10 signal 189 } 
	{ Iy_mem_0_27_ap_vld sc_out sc_logic 1 outvld 189 } 
	{ Iy_mem_0_28 sc_out sc_lv 10 signal 190 } 
	{ Iy_mem_0_28_ap_vld sc_out sc_logic 1 outvld 190 } 
	{ Iy_mem_0_29 sc_out sc_lv 10 signal 191 } 
	{ Iy_mem_0_29_ap_vld sc_out sc_logic 1 outvld 191 } 
	{ Iy_mem_0_30 sc_out sc_lv 10 signal 192 } 
	{ Iy_mem_0_30_ap_vld sc_out sc_logic 1 outvld 192 } 
	{ Iy_mem_0_31 sc_out sc_lv 10 signal 193 } 
	{ Iy_mem_0_31_ap_vld sc_out sc_logic 1 outvld 193 } 
	{ p_read97 sc_in sc_lv 10 signal 194 } 
	{ p_read98 sc_in sc_lv 10 signal 195 } 
	{ p_read99 sc_in sc_lv 10 signal 196 } 
	{ p_read100 sc_in sc_lv 10 signal 197 } 
	{ p_read101 sc_in sc_lv 10 signal 198 } 
	{ p_read102 sc_in sc_lv 10 signal 199 } 
	{ p_read103 sc_in sc_lv 10 signal 200 } 
	{ p_read104 sc_in sc_lv 10 signal 201 } 
	{ p_read105 sc_in sc_lv 10 signal 202 } 
	{ p_read106 sc_in sc_lv 10 signal 203 } 
	{ p_read107 sc_in sc_lv 10 signal 204 } 
	{ p_read108 sc_in sc_lv 10 signal 205 } 
	{ p_read109 sc_in sc_lv 10 signal 206 } 
	{ p_read110 sc_in sc_lv 10 signal 207 } 
	{ p_read111 sc_in sc_lv 10 signal 208 } 
	{ p_read112 sc_in sc_lv 10 signal 209 } 
	{ p_read113 sc_in sc_lv 10 signal 210 } 
	{ p_read114 sc_in sc_lv 10 signal 211 } 
	{ p_read115 sc_in sc_lv 10 signal 212 } 
	{ p_read116 sc_in sc_lv 10 signal 213 } 
	{ p_read117 sc_in sc_lv 10 signal 214 } 
	{ p_read118 sc_in sc_lv 10 signal 215 } 
	{ p_read119 sc_in sc_lv 10 signal 216 } 
	{ p_read120 sc_in sc_lv 10 signal 217 } 
	{ p_read121 sc_in sc_lv 10 signal 218 } 
	{ p_read122 sc_in sc_lv 10 signal 219 } 
	{ p_read123 sc_in sc_lv 10 signal 220 } 
	{ p_read124 sc_in sc_lv 10 signal 221 } 
	{ p_read125 sc_in sc_lv 10 signal 222 } 
	{ p_read126 sc_in sc_lv 10 signal 223 } 
	{ p_read127 sc_in sc_lv 10 signal 224 } 
	{ p_read128 sc_in sc_lv 10 signal 225 } 
	{ last_pe_score_address0 sc_out sc_lv 10 signal 226 } 
	{ last_pe_score_ce0 sc_out sc_logic 1 signal 226 } 
	{ last_pe_score_we0 sc_out sc_logic 1 signal 226 } 
	{ last_pe_score_d0 sc_out sc_lv 10 signal 226 } 
	{ last_pe_score_address1 sc_out sc_lv 10 signal 226 } 
	{ last_pe_score_ce1 sc_out sc_logic 1 signal 226 } 
	{ last_pe_score_q1 sc_in sc_lv 10 signal 226 } 
	{ last_pe_scoreIx_address0 sc_out sc_lv 10 signal 227 } 
	{ last_pe_scoreIx_ce0 sc_out sc_logic 1 signal 227 } 
	{ last_pe_scoreIx_we0 sc_out sc_logic 1 signal 227 } 
	{ last_pe_scoreIx_d0 sc_out sc_lv 10 signal 227 } 
	{ last_pe_scoreIx_q0 sc_in sc_lv 10 signal 227 } 
	{ dp_matrix1_0_address0 sc_out sc_lv 15 signal 228 } 
	{ dp_matrix1_0_ce0 sc_out sc_logic 1 signal 228 } 
	{ dp_matrix1_0_we0 sc_out sc_logic 1 signal 228 } 
	{ dp_matrix1_0_d0 sc_out sc_lv 10 signal 228 } 
	{ dp_matrix1_0_address1 sc_out sc_lv 15 signal 228 } 
	{ dp_matrix1_0_ce1 sc_out sc_logic 1 signal 228 } 
	{ dp_matrix1_0_we1 sc_out sc_logic 1 signal 228 } 
	{ dp_matrix1_0_d1 sc_out sc_lv 10 signal 228 } 
	{ dp_matrix1_1_address0 sc_out sc_lv 15 signal 229 } 
	{ dp_matrix1_1_ce0 sc_out sc_logic 1 signal 229 } 
	{ dp_matrix1_1_we0 sc_out sc_logic 1 signal 229 } 
	{ dp_matrix1_1_d0 sc_out sc_lv 10 signal 229 } 
	{ dp_matrix1_1_address1 sc_out sc_lv 15 signal 229 } 
	{ dp_matrix1_1_ce1 sc_out sc_logic 1 signal 229 } 
	{ dp_matrix1_1_we1 sc_out sc_logic 1 signal 229 } 
	{ dp_matrix1_1_d1 sc_out sc_lv 10 signal 229 } 
	{ dp_matrix1_2_address0 sc_out sc_lv 15 signal 230 } 
	{ dp_matrix1_2_ce0 sc_out sc_logic 1 signal 230 } 
	{ dp_matrix1_2_we0 sc_out sc_logic 1 signal 230 } 
	{ dp_matrix1_2_d0 sc_out sc_lv 10 signal 230 } 
	{ dp_matrix1_2_address1 sc_out sc_lv 15 signal 230 } 
	{ dp_matrix1_2_ce1 sc_out sc_logic 1 signal 230 } 
	{ dp_matrix1_2_we1 sc_out sc_logic 1 signal 230 } 
	{ dp_matrix1_2_d1 sc_out sc_lv 10 signal 230 } 
	{ dp_matrix1_3_address0 sc_out sc_lv 15 signal 231 } 
	{ dp_matrix1_3_ce0 sc_out sc_logic 1 signal 231 } 
	{ dp_matrix1_3_we0 sc_out sc_logic 1 signal 231 } 
	{ dp_matrix1_3_d0 sc_out sc_lv 10 signal 231 } 
	{ dp_matrix1_3_address1 sc_out sc_lv 15 signal 231 } 
	{ dp_matrix1_3_ce1 sc_out sc_logic 1 signal 231 } 
	{ dp_matrix1_3_we1 sc_out sc_logic 1 signal 231 } 
	{ dp_matrix1_3_d1 sc_out sc_lv 10 signal 231 } 
	{ dp_matrix1_4_address0 sc_out sc_lv 15 signal 232 } 
	{ dp_matrix1_4_ce0 sc_out sc_logic 1 signal 232 } 
	{ dp_matrix1_4_we0 sc_out sc_logic 1 signal 232 } 
	{ dp_matrix1_4_d0 sc_out sc_lv 10 signal 232 } 
	{ dp_matrix1_4_address1 sc_out sc_lv 15 signal 232 } 
	{ dp_matrix1_4_ce1 sc_out sc_logic 1 signal 232 } 
	{ dp_matrix1_4_we1 sc_out sc_logic 1 signal 232 } 
	{ dp_matrix1_4_d1 sc_out sc_lv 10 signal 232 } 
	{ dp_matrix1_5_address0 sc_out sc_lv 15 signal 233 } 
	{ dp_matrix1_5_ce0 sc_out sc_logic 1 signal 233 } 
	{ dp_matrix1_5_we0 sc_out sc_logic 1 signal 233 } 
	{ dp_matrix1_5_d0 sc_out sc_lv 10 signal 233 } 
	{ dp_matrix1_5_address1 sc_out sc_lv 15 signal 233 } 
	{ dp_matrix1_5_ce1 sc_out sc_logic 1 signal 233 } 
	{ dp_matrix1_5_we1 sc_out sc_logic 1 signal 233 } 
	{ dp_matrix1_5_d1 sc_out sc_lv 10 signal 233 } 
	{ dp_matrix1_6_address0 sc_out sc_lv 15 signal 234 } 
	{ dp_matrix1_6_ce0 sc_out sc_logic 1 signal 234 } 
	{ dp_matrix1_6_we0 sc_out sc_logic 1 signal 234 } 
	{ dp_matrix1_6_d0 sc_out sc_lv 10 signal 234 } 
	{ dp_matrix1_6_address1 sc_out sc_lv 15 signal 234 } 
	{ dp_matrix1_6_ce1 sc_out sc_logic 1 signal 234 } 
	{ dp_matrix1_6_we1 sc_out sc_logic 1 signal 234 } 
	{ dp_matrix1_6_d1 sc_out sc_lv 10 signal 234 } 
	{ dp_matrix1_7_address0 sc_out sc_lv 15 signal 235 } 
	{ dp_matrix1_7_ce0 sc_out sc_logic 1 signal 235 } 
	{ dp_matrix1_7_we0 sc_out sc_logic 1 signal 235 } 
	{ dp_matrix1_7_d0 sc_out sc_lv 10 signal 235 } 
	{ dp_matrix1_7_address1 sc_out sc_lv 15 signal 235 } 
	{ dp_matrix1_7_ce1 sc_out sc_logic 1 signal 235 } 
	{ dp_matrix1_7_we1 sc_out sc_logic 1 signal 235 } 
	{ dp_matrix1_7_d1 sc_out sc_lv 10 signal 235 } 
	{ dp_matrix1_8_address0 sc_out sc_lv 15 signal 236 } 
	{ dp_matrix1_8_ce0 sc_out sc_logic 1 signal 236 } 
	{ dp_matrix1_8_we0 sc_out sc_logic 1 signal 236 } 
	{ dp_matrix1_8_d0 sc_out sc_lv 10 signal 236 } 
	{ dp_matrix1_8_address1 sc_out sc_lv 15 signal 236 } 
	{ dp_matrix1_8_ce1 sc_out sc_logic 1 signal 236 } 
	{ dp_matrix1_8_we1 sc_out sc_logic 1 signal 236 } 
	{ dp_matrix1_8_d1 sc_out sc_lv 10 signal 236 } 
	{ dp_matrix1_9_address0 sc_out sc_lv 15 signal 237 } 
	{ dp_matrix1_9_ce0 sc_out sc_logic 1 signal 237 } 
	{ dp_matrix1_9_we0 sc_out sc_logic 1 signal 237 } 
	{ dp_matrix1_9_d0 sc_out sc_lv 10 signal 237 } 
	{ dp_matrix1_9_address1 sc_out sc_lv 15 signal 237 } 
	{ dp_matrix1_9_ce1 sc_out sc_logic 1 signal 237 } 
	{ dp_matrix1_9_we1 sc_out sc_logic 1 signal 237 } 
	{ dp_matrix1_9_d1 sc_out sc_lv 10 signal 237 } 
	{ dp_matrix1_10_address0 sc_out sc_lv 15 signal 238 } 
	{ dp_matrix1_10_ce0 sc_out sc_logic 1 signal 238 } 
	{ dp_matrix1_10_we0 sc_out sc_logic 1 signal 238 } 
	{ dp_matrix1_10_d0 sc_out sc_lv 10 signal 238 } 
	{ dp_matrix1_10_address1 sc_out sc_lv 15 signal 238 } 
	{ dp_matrix1_10_ce1 sc_out sc_logic 1 signal 238 } 
	{ dp_matrix1_10_we1 sc_out sc_logic 1 signal 238 } 
	{ dp_matrix1_10_d1 sc_out sc_lv 10 signal 238 } 
	{ dp_matrix1_11_address0 sc_out sc_lv 15 signal 239 } 
	{ dp_matrix1_11_ce0 sc_out sc_logic 1 signal 239 } 
	{ dp_matrix1_11_we0 sc_out sc_logic 1 signal 239 } 
	{ dp_matrix1_11_d0 sc_out sc_lv 10 signal 239 } 
	{ dp_matrix1_11_address1 sc_out sc_lv 15 signal 239 } 
	{ dp_matrix1_11_ce1 sc_out sc_logic 1 signal 239 } 
	{ dp_matrix1_11_we1 sc_out sc_logic 1 signal 239 } 
	{ dp_matrix1_11_d1 sc_out sc_lv 10 signal 239 } 
	{ dp_matrix1_12_address0 sc_out sc_lv 15 signal 240 } 
	{ dp_matrix1_12_ce0 sc_out sc_logic 1 signal 240 } 
	{ dp_matrix1_12_we0 sc_out sc_logic 1 signal 240 } 
	{ dp_matrix1_12_d0 sc_out sc_lv 10 signal 240 } 
	{ dp_matrix1_12_address1 sc_out sc_lv 15 signal 240 } 
	{ dp_matrix1_12_ce1 sc_out sc_logic 1 signal 240 } 
	{ dp_matrix1_12_we1 sc_out sc_logic 1 signal 240 } 
	{ dp_matrix1_12_d1 sc_out sc_lv 10 signal 240 } 
	{ dp_matrix1_13_address0 sc_out sc_lv 15 signal 241 } 
	{ dp_matrix1_13_ce0 sc_out sc_logic 1 signal 241 } 
	{ dp_matrix1_13_we0 sc_out sc_logic 1 signal 241 } 
	{ dp_matrix1_13_d0 sc_out sc_lv 10 signal 241 } 
	{ dp_matrix1_13_address1 sc_out sc_lv 15 signal 241 } 
	{ dp_matrix1_13_ce1 sc_out sc_logic 1 signal 241 } 
	{ dp_matrix1_13_we1 sc_out sc_logic 1 signal 241 } 
	{ dp_matrix1_13_d1 sc_out sc_lv 10 signal 241 } 
	{ dp_matrix1_14_address0 sc_out sc_lv 15 signal 242 } 
	{ dp_matrix1_14_ce0 sc_out sc_logic 1 signal 242 } 
	{ dp_matrix1_14_we0 sc_out sc_logic 1 signal 242 } 
	{ dp_matrix1_14_d0 sc_out sc_lv 10 signal 242 } 
	{ dp_matrix1_14_address1 sc_out sc_lv 15 signal 242 } 
	{ dp_matrix1_14_ce1 sc_out sc_logic 1 signal 242 } 
	{ dp_matrix1_14_we1 sc_out sc_logic 1 signal 242 } 
	{ dp_matrix1_14_d1 sc_out sc_lv 10 signal 242 } 
	{ dp_matrix1_15_address0 sc_out sc_lv 15 signal 243 } 
	{ dp_matrix1_15_ce0 sc_out sc_logic 1 signal 243 } 
	{ dp_matrix1_15_we0 sc_out sc_logic 1 signal 243 } 
	{ dp_matrix1_15_d0 sc_out sc_lv 10 signal 243 } 
	{ dp_matrix1_15_address1 sc_out sc_lv 15 signal 243 } 
	{ dp_matrix1_15_ce1 sc_out sc_logic 1 signal 243 } 
	{ dp_matrix1_15_we1 sc_out sc_logic 1 signal 243 } 
	{ dp_matrix1_15_d1 sc_out sc_lv 10 signal 243 } 
	{ ap_return_0 sc_out sc_lv 10 signal -1 } 
	{ ap_return_1 sc_out sc_lv 10 signal -1 } 
	{ ap_return_2 sc_out sc_lv 10 signal -1 } 
	{ ap_return_3 sc_out sc_lv 10 signal -1 } 
	{ ap_return_4 sc_out sc_lv 10 signal -1 } 
	{ ap_return_5 sc_out sc_lv 10 signal -1 } 
	{ ap_return_6 sc_out sc_lv 10 signal -1 } 
	{ ap_return_7 sc_out sc_lv 10 signal -1 } 
	{ ap_return_8 sc_out sc_lv 10 signal -1 } 
	{ ap_return_9 sc_out sc_lv 10 signal -1 } 
	{ ap_return_10 sc_out sc_lv 10 signal -1 } 
	{ ap_return_11 sc_out sc_lv 10 signal -1 } 
	{ ap_return_12 sc_out sc_lv 10 signal -1 } 
	{ ap_return_13 sc_out sc_lv 10 signal -1 } 
	{ ap_return_14 sc_out sc_lv 10 signal -1 } 
	{ ap_return_15 sc_out sc_lv 10 signal -1 } 
	{ ap_return_16 sc_out sc_lv 10 signal -1 } 
	{ ap_return_17 sc_out sc_lv 10 signal -1 } 
	{ ap_return_18 sc_out sc_lv 10 signal -1 } 
	{ ap_return_19 sc_out sc_lv 10 signal -1 } 
	{ ap_return_20 sc_out sc_lv 10 signal -1 } 
	{ ap_return_21 sc_out sc_lv 10 signal -1 } 
	{ ap_return_22 sc_out sc_lv 10 signal -1 } 
	{ ap_return_23 sc_out sc_lv 10 signal -1 } 
	{ ap_return_24 sc_out sc_lv 10 signal -1 } 
	{ ap_return_25 sc_out sc_lv 10 signal -1 } 
	{ ap_return_26 sc_out sc_lv 10 signal -1 } 
	{ ap_return_27 sc_out sc_lv 10 signal -1 } 
	{ ap_return_28 sc_out sc_lv 10 signal -1 } 
	{ ap_return_29 sc_out sc_lv 10 signal -1 } 
	{ ap_return_30 sc_out sc_lv 10 signal -1 } 
	{ ap_return_31 sc_out sc_lv 10 signal -1 } 
	{ ap_return_32 sc_out sc_lv 10 signal -1 } 
	{ ap_return_33 sc_out sc_lv 10 signal -1 } 
	{ ap_return_34 sc_out sc_lv 10 signal -1 } 
	{ ap_return_35 sc_out sc_lv 10 signal -1 } 
	{ ap_return_36 sc_out sc_lv 10 signal -1 } 
	{ ap_return_37 sc_out sc_lv 10 signal -1 } 
	{ ap_return_38 sc_out sc_lv 10 signal -1 } 
	{ ap_return_39 sc_out sc_lv 10 signal -1 } 
	{ ap_return_40 sc_out sc_lv 10 signal -1 } 
	{ ap_return_41 sc_out sc_lv 10 signal -1 } 
	{ ap_return_42 sc_out sc_lv 10 signal -1 } 
	{ ap_return_43 sc_out sc_lv 10 signal -1 } 
	{ ap_return_44 sc_out sc_lv 10 signal -1 } 
	{ ap_return_45 sc_out sc_lv 10 signal -1 } 
	{ ap_return_46 sc_out sc_lv 10 signal -1 } 
	{ ap_return_47 sc_out sc_lv 10 signal -1 } 
	{ ap_return_48 sc_out sc_lv 10 signal -1 } 
	{ ap_return_49 sc_out sc_lv 10 signal -1 } 
	{ ap_return_50 sc_out sc_lv 10 signal -1 } 
	{ ap_return_51 sc_out sc_lv 10 signal -1 } 
	{ ap_return_52 sc_out sc_lv 10 signal -1 } 
	{ ap_return_53 sc_out sc_lv 10 signal -1 } 
	{ ap_return_54 sc_out sc_lv 10 signal -1 } 
	{ ap_return_55 sc_out sc_lv 10 signal -1 } 
	{ ap_return_56 sc_out sc_lv 10 signal -1 } 
	{ ap_return_57 sc_out sc_lv 10 signal -1 } 
	{ ap_return_58 sc_out sc_lv 10 signal -1 } 
	{ ap_return_59 sc_out sc_lv 10 signal -1 } 
	{ ap_return_60 sc_out sc_lv 10 signal -1 } 
	{ ap_return_61 sc_out sc_lv 10 signal -1 } 
	{ ap_return_62 sc_out sc_lv 10 signal -1 } 
	{ ap_return_63 sc_out sc_lv 10 signal -1 } 
	{ ap_return_64 sc_out sc_lv 10 signal -1 } 
	{ ap_return_65 sc_out sc_lv 10 signal -1 } 
	{ ap_return_66 sc_out sc_lv 10 signal -1 } 
	{ ap_return_67 sc_out sc_lv 10 signal -1 } 
	{ ap_return_68 sc_out sc_lv 10 signal -1 } 
	{ ap_return_69 sc_out sc_lv 10 signal -1 } 
	{ ap_return_70 sc_out sc_lv 10 signal -1 } 
	{ ap_return_71 sc_out sc_lv 10 signal -1 } 
	{ ap_return_72 sc_out sc_lv 10 signal -1 } 
	{ ap_return_73 sc_out sc_lv 10 signal -1 } 
	{ ap_return_74 sc_out sc_lv 10 signal -1 } 
	{ ap_return_75 sc_out sc_lv 10 signal -1 } 
	{ ap_return_76 sc_out sc_lv 10 signal -1 } 
	{ ap_return_77 sc_out sc_lv 10 signal -1 } 
	{ ap_return_78 sc_out sc_lv 10 signal -1 } 
	{ ap_return_79 sc_out sc_lv 10 signal -1 } 
	{ ap_return_80 sc_out sc_lv 10 signal -1 } 
	{ ap_return_81 sc_out sc_lv 10 signal -1 } 
	{ ap_return_82 sc_out sc_lv 10 signal -1 } 
	{ ap_return_83 sc_out sc_lv 10 signal -1 } 
	{ ap_return_84 sc_out sc_lv 10 signal -1 } 
	{ ap_return_85 sc_out sc_lv 10 signal -1 } 
	{ ap_return_86 sc_out sc_lv 10 signal -1 } 
	{ ap_return_87 sc_out sc_lv 10 signal -1 } 
	{ ap_return_88 sc_out sc_lv 10 signal -1 } 
	{ ap_return_89 sc_out sc_lv 10 signal -1 } 
	{ ap_return_90 sc_out sc_lv 10 signal -1 } 
	{ ap_return_91 sc_out sc_lv 10 signal -1 } 
	{ ap_return_92 sc_out sc_lv 10 signal -1 } 
	{ ap_return_93 sc_out sc_lv 10 signal -1 } 
	{ ap_return_94 sc_out sc_lv 10 signal -1 } 
	{ ap_return_95 sc_out sc_lv 10 signal -1 } 
	{ ap_return_96 sc_out sc_lv 10 signal -1 } 
	{ ap_return_97 sc_out sc_lv 10 signal -1 } 
	{ ap_return_98 sc_out sc_lv 10 signal -1 } 
	{ ap_return_99 sc_out sc_lv 10 signal -1 } 
	{ ap_return_100 sc_out sc_lv 10 signal -1 } 
	{ ap_return_101 sc_out sc_lv 10 signal -1 } 
	{ ap_return_102 sc_out sc_lv 10 signal -1 } 
	{ ap_return_103 sc_out sc_lv 10 signal -1 } 
	{ ap_return_104 sc_out sc_lv 10 signal -1 } 
	{ ap_return_105 sc_out sc_lv 10 signal -1 } 
	{ ap_return_106 sc_out sc_lv 10 signal -1 } 
	{ ap_return_107 sc_out sc_lv 10 signal -1 } 
	{ ap_return_108 sc_out sc_lv 10 signal -1 } 
	{ ap_return_109 sc_out sc_lv 10 signal -1 } 
	{ ap_return_110 sc_out sc_lv 10 signal -1 } 
	{ ap_return_111 sc_out sc_lv 10 signal -1 } 
	{ ap_return_112 sc_out sc_lv 10 signal -1 } 
	{ ap_return_113 sc_out sc_lv 10 signal -1 } 
	{ ap_return_114 sc_out sc_lv 10 signal -1 } 
	{ ap_return_115 sc_out sc_lv 10 signal -1 } 
	{ ap_return_116 sc_out sc_lv 10 signal -1 } 
	{ ap_return_117 sc_out sc_lv 10 signal -1 } 
	{ ap_return_118 sc_out sc_lv 10 signal -1 } 
	{ ap_return_119 sc_out sc_lv 10 signal -1 } 
	{ ap_return_120 sc_out sc_lv 10 signal -1 } 
	{ ap_return_121 sc_out sc_lv 10 signal -1 } 
	{ ap_return_122 sc_out sc_lv 10 signal -1 } 
	{ ap_return_123 sc_out sc_lv 10 signal -1 } 
	{ ap_return_124 sc_out sc_lv 10 signal -1 } 
	{ ap_return_125 sc_out sc_lv 10 signal -1 } 
	{ ap_return_126 sc_out sc_lv 10 signal -1 } 
	{ ap_return_127 sc_out sc_lv 10 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "query_string_comp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "query_string_comp", "role": "address0" }} , 
 	{ "name": "query_string_comp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "query_string_comp", "role": "ce0" }} , 
 	{ "name": "query_string_comp_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "query_string_comp", "role": "q0" }} , 
 	{ "name": "reference_string_comp_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "reference_string_comp", "role": "address0" }} , 
 	{ "name": "reference_string_comp_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reference_string_comp", "role": "ce0" }} , 
 	{ "name": "reference_string_comp_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "reference_string_comp", "role": "q0" }} , 
 	{ "name": "dp_mem_0_0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_0", "role": "default" }} , 
 	{ "name": "dp_mem_0_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_0", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_1", "role": "default" }} , 
 	{ "name": "dp_mem_0_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_1", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_2", "role": "default" }} , 
 	{ "name": "dp_mem_0_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_2", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_3", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_3", "role": "default" }} , 
 	{ "name": "dp_mem_0_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_3", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_4", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_4", "role": "default" }} , 
 	{ "name": "dp_mem_0_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_4", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_5", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_5", "role": "default" }} , 
 	{ "name": "dp_mem_0_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_5", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_6", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_6", "role": "default" }} , 
 	{ "name": "dp_mem_0_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_6", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_7", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_7", "role": "default" }} , 
 	{ "name": "dp_mem_0_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_7", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_8", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_8", "role": "default" }} , 
 	{ "name": "dp_mem_0_8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_8", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_9", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_9", "role": "default" }} , 
 	{ "name": "dp_mem_0_9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_9", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_10", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_10", "role": "default" }} , 
 	{ "name": "dp_mem_0_10_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_10", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_11", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_11", "role": "default" }} , 
 	{ "name": "dp_mem_0_11_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_11", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_12", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_12", "role": "default" }} , 
 	{ "name": "dp_mem_0_12_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_12", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_13", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_13", "role": "default" }} , 
 	{ "name": "dp_mem_0_13_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_13", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_14", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_14", "role": "default" }} , 
 	{ "name": "dp_mem_0_14_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_14", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_15", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_15", "role": "default" }} , 
 	{ "name": "dp_mem_0_15_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_15", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_16", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_16", "role": "default" }} , 
 	{ "name": "dp_mem_0_16_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_16", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_17", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_17", "role": "default" }} , 
 	{ "name": "dp_mem_0_17_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_17", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_18", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_18", "role": "default" }} , 
 	{ "name": "dp_mem_0_18_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_18", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_19", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_19", "role": "default" }} , 
 	{ "name": "dp_mem_0_19_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_19", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_20", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_20", "role": "default" }} , 
 	{ "name": "dp_mem_0_20_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_20", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_21", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_21", "role": "default" }} , 
 	{ "name": "dp_mem_0_21_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_21", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_22", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_22", "role": "default" }} , 
 	{ "name": "dp_mem_0_22_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_22", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_23", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_23", "role": "default" }} , 
 	{ "name": "dp_mem_0_23_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_23", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_24", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_24", "role": "default" }} , 
 	{ "name": "dp_mem_0_24_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_24", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_25", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_25", "role": "default" }} , 
 	{ "name": "dp_mem_0_25_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_25", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_26", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_26", "role": "default" }} , 
 	{ "name": "dp_mem_0_26_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_26", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_27", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_27", "role": "default" }} , 
 	{ "name": "dp_mem_0_27_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_27", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_28", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_28", "role": "default" }} , 
 	{ "name": "dp_mem_0_28_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_28", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_29", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_29", "role": "default" }} , 
 	{ "name": "dp_mem_0_29_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_29", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_30", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_30", "role": "default" }} , 
 	{ "name": "dp_mem_0_30_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_30", "role": "ap_vld" }} , 
 	{ "name": "dp_mem_0_31", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_mem_0_31", "role": "default" }} , 
 	{ "name": "dp_mem_0_31_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "dp_mem_0_31", "role": "ap_vld" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "p_read2", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read2", "role": "default" }} , 
 	{ "name": "p_read3", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read3", "role": "default" }} , 
 	{ "name": "p_read4", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read4", "role": "default" }} , 
 	{ "name": "p_read5", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read5", "role": "default" }} , 
 	{ "name": "p_read6", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read6", "role": "default" }} , 
 	{ "name": "p_read7", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read7", "role": "default" }} , 
 	{ "name": "p_read8", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read8", "role": "default" }} , 
 	{ "name": "p_read9", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read9", "role": "default" }} , 
 	{ "name": "p_read10", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read10", "role": "default" }} , 
 	{ "name": "p_read11", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read11", "role": "default" }} , 
 	{ "name": "p_read12", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read12", "role": "default" }} , 
 	{ "name": "p_read13", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read13", "role": "default" }} , 
 	{ "name": "p_read14", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read14", "role": "default" }} , 
 	{ "name": "p_read15", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read15", "role": "default" }} , 
 	{ "name": "p_read16", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read16", "role": "default" }} , 
 	{ "name": "p_read17", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read17", "role": "default" }} , 
 	{ "name": "p_read18", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read18", "role": "default" }} , 
 	{ "name": "p_read19", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read19", "role": "default" }} , 
 	{ "name": "p_read20", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read20", "role": "default" }} , 
 	{ "name": "p_read21", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read21", "role": "default" }} , 
 	{ "name": "p_read22", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read22", "role": "default" }} , 
 	{ "name": "p_read23", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read23", "role": "default" }} , 
 	{ "name": "p_read24", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read24", "role": "default" }} , 
 	{ "name": "p_read25", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read25", "role": "default" }} , 
 	{ "name": "p_read26", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read26", "role": "default" }} , 
 	{ "name": "p_read27", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read27", "role": "default" }} , 
 	{ "name": "p_read28", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read28", "role": "default" }} , 
 	{ "name": "p_read29", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read29", "role": "default" }} , 
 	{ "name": "p_read30", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read30", "role": "default" }} , 
 	{ "name": "p_read31", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read31", "role": "default" }} , 
 	{ "name": "p_read32", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read32", "role": "default" }} , 
 	{ "name": "p_read33", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read33", "role": "default" }} , 
 	{ "name": "p_read34", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read34", "role": "default" }} , 
 	{ "name": "p_read35", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read35", "role": "default" }} , 
 	{ "name": "p_read36", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read36", "role": "default" }} , 
 	{ "name": "p_read37", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read37", "role": "default" }} , 
 	{ "name": "p_read38", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read38", "role": "default" }} , 
 	{ "name": "p_read39", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read39", "role": "default" }} , 
 	{ "name": "p_read40", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read40", "role": "default" }} , 
 	{ "name": "p_read41", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read41", "role": "default" }} , 
 	{ "name": "p_read42", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read42", "role": "default" }} , 
 	{ "name": "p_read43", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read43", "role": "default" }} , 
 	{ "name": "p_read44", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read44", "role": "default" }} , 
 	{ "name": "p_read45", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read45", "role": "default" }} , 
 	{ "name": "p_read46", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read46", "role": "default" }} , 
 	{ "name": "p_read47", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read47", "role": "default" }} , 
 	{ "name": "p_read48", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read48", "role": "default" }} , 
 	{ "name": "p_read49", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read49", "role": "default" }} , 
 	{ "name": "p_read50", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read50", "role": "default" }} , 
 	{ "name": "p_read51", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read51", "role": "default" }} , 
 	{ "name": "p_read52", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read52", "role": "default" }} , 
 	{ "name": "p_read53", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read53", "role": "default" }} , 
 	{ "name": "p_read54", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read54", "role": "default" }} , 
 	{ "name": "p_read55", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read55", "role": "default" }} , 
 	{ "name": "p_read56", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read56", "role": "default" }} , 
 	{ "name": "p_read57", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read57", "role": "default" }} , 
 	{ "name": "p_read58", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read58", "role": "default" }} , 
 	{ "name": "p_read59", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read59", "role": "default" }} , 
 	{ "name": "p_read60", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read60", "role": "default" }} , 
 	{ "name": "p_read61", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read61", "role": "default" }} , 
 	{ "name": "p_read62", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read62", "role": "default" }} , 
 	{ "name": "p_read63", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read63", "role": "default" }} , 
 	{ "name": "p_read64", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read64", "role": "default" }} , 
 	{ "name": "Ix_mem_0_0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_0", "role": "default" }} , 
 	{ "name": "Ix_mem_0_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_0", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_1", "role": "default" }} , 
 	{ "name": "Ix_mem_0_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_1", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_2", "role": "default" }} , 
 	{ "name": "Ix_mem_0_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_2", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_3", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_3", "role": "default" }} , 
 	{ "name": "Ix_mem_0_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_3", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_4", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_4", "role": "default" }} , 
 	{ "name": "Ix_mem_0_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_4", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_5", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_5", "role": "default" }} , 
 	{ "name": "Ix_mem_0_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_5", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_6", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_6", "role": "default" }} , 
 	{ "name": "Ix_mem_0_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_6", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_7", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_7", "role": "default" }} , 
 	{ "name": "Ix_mem_0_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_7", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_8", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_8", "role": "default" }} , 
 	{ "name": "Ix_mem_0_8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_8", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_9", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_9", "role": "default" }} , 
 	{ "name": "Ix_mem_0_9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_9", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_10", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_10", "role": "default" }} , 
 	{ "name": "Ix_mem_0_10_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_10", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_11", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_11", "role": "default" }} , 
 	{ "name": "Ix_mem_0_11_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_11", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_12", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_12", "role": "default" }} , 
 	{ "name": "Ix_mem_0_12_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_12", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_13", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_13", "role": "default" }} , 
 	{ "name": "Ix_mem_0_13_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_13", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_14", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_14", "role": "default" }} , 
 	{ "name": "Ix_mem_0_14_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_14", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_15", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_15", "role": "default" }} , 
 	{ "name": "Ix_mem_0_15_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_15", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_16", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_16", "role": "default" }} , 
 	{ "name": "Ix_mem_0_16_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_16", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_17", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_17", "role": "default" }} , 
 	{ "name": "Ix_mem_0_17_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_17", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_18", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_18", "role": "default" }} , 
 	{ "name": "Ix_mem_0_18_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_18", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_19", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_19", "role": "default" }} , 
 	{ "name": "Ix_mem_0_19_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_19", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_20", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_20", "role": "default" }} , 
 	{ "name": "Ix_mem_0_20_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_20", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_21", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_21", "role": "default" }} , 
 	{ "name": "Ix_mem_0_21_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_21", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_22", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_22", "role": "default" }} , 
 	{ "name": "Ix_mem_0_22_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_22", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_23", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_23", "role": "default" }} , 
 	{ "name": "Ix_mem_0_23_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_23", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_24", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_24", "role": "default" }} , 
 	{ "name": "Ix_mem_0_24_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_24", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_25", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_25", "role": "default" }} , 
 	{ "name": "Ix_mem_0_25_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_25", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_26", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_26", "role": "default" }} , 
 	{ "name": "Ix_mem_0_26_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_26", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_27", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_27", "role": "default" }} , 
 	{ "name": "Ix_mem_0_27_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_27", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_28", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_28", "role": "default" }} , 
 	{ "name": "Ix_mem_0_28_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_28", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_29", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_29", "role": "default" }} , 
 	{ "name": "Ix_mem_0_29_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_29", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_30", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_30", "role": "default" }} , 
 	{ "name": "Ix_mem_0_30_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_30", "role": "ap_vld" }} , 
 	{ "name": "Ix_mem_0_31", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Ix_mem_0_31", "role": "default" }} , 
 	{ "name": "Ix_mem_0_31_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Ix_mem_0_31", "role": "ap_vld" }} , 
 	{ "name": "p_read65", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read65", "role": "default" }} , 
 	{ "name": "p_read66", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read66", "role": "default" }} , 
 	{ "name": "p_read67", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read67", "role": "default" }} , 
 	{ "name": "p_read68", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read68", "role": "default" }} , 
 	{ "name": "p_read69", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read69", "role": "default" }} , 
 	{ "name": "p_read70", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read70", "role": "default" }} , 
 	{ "name": "p_read71", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read71", "role": "default" }} , 
 	{ "name": "p_read72", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read72", "role": "default" }} , 
 	{ "name": "p_read73", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read73", "role": "default" }} , 
 	{ "name": "p_read74", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read74", "role": "default" }} , 
 	{ "name": "p_read75", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read75", "role": "default" }} , 
 	{ "name": "p_read76", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read76", "role": "default" }} , 
 	{ "name": "p_read77", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read77", "role": "default" }} , 
 	{ "name": "p_read78", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read78", "role": "default" }} , 
 	{ "name": "p_read79", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read79", "role": "default" }} , 
 	{ "name": "p_read80", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read80", "role": "default" }} , 
 	{ "name": "p_read81", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read81", "role": "default" }} , 
 	{ "name": "p_read82", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read82", "role": "default" }} , 
 	{ "name": "p_read83", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read83", "role": "default" }} , 
 	{ "name": "p_read84", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read84", "role": "default" }} , 
 	{ "name": "p_read85", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read85", "role": "default" }} , 
 	{ "name": "p_read86", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read86", "role": "default" }} , 
 	{ "name": "p_read87", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read87", "role": "default" }} , 
 	{ "name": "p_read88", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read88", "role": "default" }} , 
 	{ "name": "p_read89", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read89", "role": "default" }} , 
 	{ "name": "p_read90", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read90", "role": "default" }} , 
 	{ "name": "p_read91", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read91", "role": "default" }} , 
 	{ "name": "p_read92", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read92", "role": "default" }} , 
 	{ "name": "p_read93", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read93", "role": "default" }} , 
 	{ "name": "p_read94", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read94", "role": "default" }} , 
 	{ "name": "p_read95", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read95", "role": "default" }} , 
 	{ "name": "p_read96", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read96", "role": "default" }} , 
 	{ "name": "Iy_mem_0_0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_0", "role": "default" }} , 
 	{ "name": "Iy_mem_0_0_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_0", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_1", "role": "default" }} , 
 	{ "name": "Iy_mem_0_1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_1", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_2", "role": "default" }} , 
 	{ "name": "Iy_mem_0_2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_2", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_3", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_3", "role": "default" }} , 
 	{ "name": "Iy_mem_0_3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_3", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_4", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_4", "role": "default" }} , 
 	{ "name": "Iy_mem_0_4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_4", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_5", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_5", "role": "default" }} , 
 	{ "name": "Iy_mem_0_5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_5", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_6", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_6", "role": "default" }} , 
 	{ "name": "Iy_mem_0_6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_6", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_7", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_7", "role": "default" }} , 
 	{ "name": "Iy_mem_0_7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_7", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_8", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_8", "role": "default" }} , 
 	{ "name": "Iy_mem_0_8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_8", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_9", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_9", "role": "default" }} , 
 	{ "name": "Iy_mem_0_9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_9", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_10", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_10", "role": "default" }} , 
 	{ "name": "Iy_mem_0_10_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_10", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_11", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_11", "role": "default" }} , 
 	{ "name": "Iy_mem_0_11_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_11", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_12", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_12", "role": "default" }} , 
 	{ "name": "Iy_mem_0_12_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_12", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_13", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_13", "role": "default" }} , 
 	{ "name": "Iy_mem_0_13_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_13", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_14", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_14", "role": "default" }} , 
 	{ "name": "Iy_mem_0_14_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_14", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_15", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_15", "role": "default" }} , 
 	{ "name": "Iy_mem_0_15_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_15", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_16", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_16", "role": "default" }} , 
 	{ "name": "Iy_mem_0_16_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_16", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_17", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_17", "role": "default" }} , 
 	{ "name": "Iy_mem_0_17_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_17", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_18", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_18", "role": "default" }} , 
 	{ "name": "Iy_mem_0_18_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_18", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_19", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_19", "role": "default" }} , 
 	{ "name": "Iy_mem_0_19_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_19", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_20", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_20", "role": "default" }} , 
 	{ "name": "Iy_mem_0_20_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_20", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_21", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_21", "role": "default" }} , 
 	{ "name": "Iy_mem_0_21_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_21", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_22", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_22", "role": "default" }} , 
 	{ "name": "Iy_mem_0_22_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_22", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_23", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_23", "role": "default" }} , 
 	{ "name": "Iy_mem_0_23_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_23", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_24", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_24", "role": "default" }} , 
 	{ "name": "Iy_mem_0_24_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_24", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_25", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_25", "role": "default" }} , 
 	{ "name": "Iy_mem_0_25_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_25", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_26", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_26", "role": "default" }} , 
 	{ "name": "Iy_mem_0_26_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_26", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_27", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_27", "role": "default" }} , 
 	{ "name": "Iy_mem_0_27_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_27", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_28", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_28", "role": "default" }} , 
 	{ "name": "Iy_mem_0_28_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_28", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_29", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_29", "role": "default" }} , 
 	{ "name": "Iy_mem_0_29_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_29", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_30", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_30", "role": "default" }} , 
 	{ "name": "Iy_mem_0_30_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_30", "role": "ap_vld" }} , 
 	{ "name": "Iy_mem_0_31", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "Iy_mem_0_31", "role": "default" }} , 
 	{ "name": "Iy_mem_0_31_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "Iy_mem_0_31", "role": "ap_vld" }} , 
 	{ "name": "p_read97", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read97", "role": "default" }} , 
 	{ "name": "p_read98", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read98", "role": "default" }} , 
 	{ "name": "p_read99", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read99", "role": "default" }} , 
 	{ "name": "p_read100", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read100", "role": "default" }} , 
 	{ "name": "p_read101", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read101", "role": "default" }} , 
 	{ "name": "p_read102", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read102", "role": "default" }} , 
 	{ "name": "p_read103", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read103", "role": "default" }} , 
 	{ "name": "p_read104", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read104", "role": "default" }} , 
 	{ "name": "p_read105", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read105", "role": "default" }} , 
 	{ "name": "p_read106", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read106", "role": "default" }} , 
 	{ "name": "p_read107", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read107", "role": "default" }} , 
 	{ "name": "p_read108", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read108", "role": "default" }} , 
 	{ "name": "p_read109", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read109", "role": "default" }} , 
 	{ "name": "p_read110", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read110", "role": "default" }} , 
 	{ "name": "p_read111", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read111", "role": "default" }} , 
 	{ "name": "p_read112", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read112", "role": "default" }} , 
 	{ "name": "p_read113", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read113", "role": "default" }} , 
 	{ "name": "p_read114", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read114", "role": "default" }} , 
 	{ "name": "p_read115", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read115", "role": "default" }} , 
 	{ "name": "p_read116", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read116", "role": "default" }} , 
 	{ "name": "p_read117", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read117", "role": "default" }} , 
 	{ "name": "p_read118", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read118", "role": "default" }} , 
 	{ "name": "p_read119", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read119", "role": "default" }} , 
 	{ "name": "p_read120", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read120", "role": "default" }} , 
 	{ "name": "p_read121", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read121", "role": "default" }} , 
 	{ "name": "p_read122", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read122", "role": "default" }} , 
 	{ "name": "p_read123", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read123", "role": "default" }} , 
 	{ "name": "p_read124", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read124", "role": "default" }} , 
 	{ "name": "p_read125", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read125", "role": "default" }} , 
 	{ "name": "p_read126", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read126", "role": "default" }} , 
 	{ "name": "p_read127", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read127", "role": "default" }} , 
 	{ "name": "p_read128", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "p_read128", "role": "default" }} , 
 	{ "name": "last_pe_score_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "last_pe_score", "role": "address0" }} , 
 	{ "name": "last_pe_score_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last_pe_score", "role": "ce0" }} , 
 	{ "name": "last_pe_score_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last_pe_score", "role": "we0" }} , 
 	{ "name": "last_pe_score_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "last_pe_score", "role": "d0" }} , 
 	{ "name": "last_pe_score_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "last_pe_score", "role": "address1" }} , 
 	{ "name": "last_pe_score_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last_pe_score", "role": "ce1" }} , 
 	{ "name": "last_pe_score_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "last_pe_score", "role": "q1" }} , 
 	{ "name": "last_pe_scoreIx_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "last_pe_scoreIx", "role": "address0" }} , 
 	{ "name": "last_pe_scoreIx_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last_pe_scoreIx", "role": "ce0" }} , 
 	{ "name": "last_pe_scoreIx_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "last_pe_scoreIx", "role": "we0" }} , 
 	{ "name": "last_pe_scoreIx_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "last_pe_scoreIx", "role": "d0" }} , 
 	{ "name": "last_pe_scoreIx_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "last_pe_scoreIx", "role": "q0" }} , 
 	{ "name": "dp_matrix1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_0", "role": "address0" }} , 
 	{ "name": "dp_matrix1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_0", "role": "ce0" }} , 
 	{ "name": "dp_matrix1_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_0", "role": "we0" }} , 
 	{ "name": "dp_matrix1_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_0", "role": "d0" }} , 
 	{ "name": "dp_matrix1_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_0", "role": "address1" }} , 
 	{ "name": "dp_matrix1_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_0", "role": "ce1" }} , 
 	{ "name": "dp_matrix1_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_0", "role": "we1" }} , 
 	{ "name": "dp_matrix1_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_0", "role": "d1" }} , 
 	{ "name": "dp_matrix1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_1", "role": "address0" }} , 
 	{ "name": "dp_matrix1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_1", "role": "ce0" }} , 
 	{ "name": "dp_matrix1_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_1", "role": "we0" }} , 
 	{ "name": "dp_matrix1_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_1", "role": "d0" }} , 
 	{ "name": "dp_matrix1_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_1", "role": "address1" }} , 
 	{ "name": "dp_matrix1_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_1", "role": "ce1" }} , 
 	{ "name": "dp_matrix1_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_1", "role": "we1" }} , 
 	{ "name": "dp_matrix1_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_1", "role": "d1" }} , 
 	{ "name": "dp_matrix1_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_2", "role": "address0" }} , 
 	{ "name": "dp_matrix1_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_2", "role": "ce0" }} , 
 	{ "name": "dp_matrix1_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_2", "role": "we0" }} , 
 	{ "name": "dp_matrix1_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_2", "role": "d0" }} , 
 	{ "name": "dp_matrix1_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_2", "role": "address1" }} , 
 	{ "name": "dp_matrix1_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_2", "role": "ce1" }} , 
 	{ "name": "dp_matrix1_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_2", "role": "we1" }} , 
 	{ "name": "dp_matrix1_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_2", "role": "d1" }} , 
 	{ "name": "dp_matrix1_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_3", "role": "address0" }} , 
 	{ "name": "dp_matrix1_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_3", "role": "ce0" }} , 
 	{ "name": "dp_matrix1_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_3", "role": "we0" }} , 
 	{ "name": "dp_matrix1_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_3", "role": "d0" }} , 
 	{ "name": "dp_matrix1_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_3", "role": "address1" }} , 
 	{ "name": "dp_matrix1_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_3", "role": "ce1" }} , 
 	{ "name": "dp_matrix1_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_3", "role": "we1" }} , 
 	{ "name": "dp_matrix1_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_3", "role": "d1" }} , 
 	{ "name": "dp_matrix1_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_4", "role": "address0" }} , 
 	{ "name": "dp_matrix1_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_4", "role": "ce0" }} , 
 	{ "name": "dp_matrix1_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_4", "role": "we0" }} , 
 	{ "name": "dp_matrix1_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_4", "role": "d0" }} , 
 	{ "name": "dp_matrix1_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_4", "role": "address1" }} , 
 	{ "name": "dp_matrix1_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_4", "role": "ce1" }} , 
 	{ "name": "dp_matrix1_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_4", "role": "we1" }} , 
 	{ "name": "dp_matrix1_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_4", "role": "d1" }} , 
 	{ "name": "dp_matrix1_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_5", "role": "address0" }} , 
 	{ "name": "dp_matrix1_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_5", "role": "ce0" }} , 
 	{ "name": "dp_matrix1_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_5", "role": "we0" }} , 
 	{ "name": "dp_matrix1_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_5", "role": "d0" }} , 
 	{ "name": "dp_matrix1_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_5", "role": "address1" }} , 
 	{ "name": "dp_matrix1_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_5", "role": "ce1" }} , 
 	{ "name": "dp_matrix1_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_5", "role": "we1" }} , 
 	{ "name": "dp_matrix1_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_5", "role": "d1" }} , 
 	{ "name": "dp_matrix1_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_6", "role": "address0" }} , 
 	{ "name": "dp_matrix1_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_6", "role": "ce0" }} , 
 	{ "name": "dp_matrix1_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_6", "role": "we0" }} , 
 	{ "name": "dp_matrix1_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_6", "role": "d0" }} , 
 	{ "name": "dp_matrix1_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_6", "role": "address1" }} , 
 	{ "name": "dp_matrix1_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_6", "role": "ce1" }} , 
 	{ "name": "dp_matrix1_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_6", "role": "we1" }} , 
 	{ "name": "dp_matrix1_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_6", "role": "d1" }} , 
 	{ "name": "dp_matrix1_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_7", "role": "address0" }} , 
 	{ "name": "dp_matrix1_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_7", "role": "ce0" }} , 
 	{ "name": "dp_matrix1_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_7", "role": "we0" }} , 
 	{ "name": "dp_matrix1_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_7", "role": "d0" }} , 
 	{ "name": "dp_matrix1_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_7", "role": "address1" }} , 
 	{ "name": "dp_matrix1_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_7", "role": "ce1" }} , 
 	{ "name": "dp_matrix1_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_7", "role": "we1" }} , 
 	{ "name": "dp_matrix1_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_7", "role": "d1" }} , 
 	{ "name": "dp_matrix1_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_8", "role": "address0" }} , 
 	{ "name": "dp_matrix1_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_8", "role": "ce0" }} , 
 	{ "name": "dp_matrix1_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_8", "role": "we0" }} , 
 	{ "name": "dp_matrix1_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_8", "role": "d0" }} , 
 	{ "name": "dp_matrix1_8_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_8", "role": "address1" }} , 
 	{ "name": "dp_matrix1_8_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_8", "role": "ce1" }} , 
 	{ "name": "dp_matrix1_8_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_8", "role": "we1" }} , 
 	{ "name": "dp_matrix1_8_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_8", "role": "d1" }} , 
 	{ "name": "dp_matrix1_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_9", "role": "address0" }} , 
 	{ "name": "dp_matrix1_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_9", "role": "ce0" }} , 
 	{ "name": "dp_matrix1_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_9", "role": "we0" }} , 
 	{ "name": "dp_matrix1_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_9", "role": "d0" }} , 
 	{ "name": "dp_matrix1_9_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_9", "role": "address1" }} , 
 	{ "name": "dp_matrix1_9_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_9", "role": "ce1" }} , 
 	{ "name": "dp_matrix1_9_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_9", "role": "we1" }} , 
 	{ "name": "dp_matrix1_9_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_9", "role": "d1" }} , 
 	{ "name": "dp_matrix1_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_10", "role": "address0" }} , 
 	{ "name": "dp_matrix1_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_10", "role": "ce0" }} , 
 	{ "name": "dp_matrix1_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_10", "role": "we0" }} , 
 	{ "name": "dp_matrix1_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_10", "role": "d0" }} , 
 	{ "name": "dp_matrix1_10_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_10", "role": "address1" }} , 
 	{ "name": "dp_matrix1_10_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_10", "role": "ce1" }} , 
 	{ "name": "dp_matrix1_10_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_10", "role": "we1" }} , 
 	{ "name": "dp_matrix1_10_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_10", "role": "d1" }} , 
 	{ "name": "dp_matrix1_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_11", "role": "address0" }} , 
 	{ "name": "dp_matrix1_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_11", "role": "ce0" }} , 
 	{ "name": "dp_matrix1_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_11", "role": "we0" }} , 
 	{ "name": "dp_matrix1_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_11", "role": "d0" }} , 
 	{ "name": "dp_matrix1_11_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_11", "role": "address1" }} , 
 	{ "name": "dp_matrix1_11_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_11", "role": "ce1" }} , 
 	{ "name": "dp_matrix1_11_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_11", "role": "we1" }} , 
 	{ "name": "dp_matrix1_11_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_11", "role": "d1" }} , 
 	{ "name": "dp_matrix1_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_12", "role": "address0" }} , 
 	{ "name": "dp_matrix1_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_12", "role": "ce0" }} , 
 	{ "name": "dp_matrix1_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_12", "role": "we0" }} , 
 	{ "name": "dp_matrix1_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_12", "role": "d0" }} , 
 	{ "name": "dp_matrix1_12_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_12", "role": "address1" }} , 
 	{ "name": "dp_matrix1_12_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_12", "role": "ce1" }} , 
 	{ "name": "dp_matrix1_12_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_12", "role": "we1" }} , 
 	{ "name": "dp_matrix1_12_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_12", "role": "d1" }} , 
 	{ "name": "dp_matrix1_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_13", "role": "address0" }} , 
 	{ "name": "dp_matrix1_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_13", "role": "ce0" }} , 
 	{ "name": "dp_matrix1_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_13", "role": "we0" }} , 
 	{ "name": "dp_matrix1_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_13", "role": "d0" }} , 
 	{ "name": "dp_matrix1_13_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_13", "role": "address1" }} , 
 	{ "name": "dp_matrix1_13_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_13", "role": "ce1" }} , 
 	{ "name": "dp_matrix1_13_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_13", "role": "we1" }} , 
 	{ "name": "dp_matrix1_13_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_13", "role": "d1" }} , 
 	{ "name": "dp_matrix1_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_14", "role": "address0" }} , 
 	{ "name": "dp_matrix1_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_14", "role": "ce0" }} , 
 	{ "name": "dp_matrix1_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_14", "role": "we0" }} , 
 	{ "name": "dp_matrix1_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_14", "role": "d0" }} , 
 	{ "name": "dp_matrix1_14_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_14", "role": "address1" }} , 
 	{ "name": "dp_matrix1_14_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_14", "role": "ce1" }} , 
 	{ "name": "dp_matrix1_14_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_14", "role": "we1" }} , 
 	{ "name": "dp_matrix1_14_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_14", "role": "d1" }} , 
 	{ "name": "dp_matrix1_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_15", "role": "address0" }} , 
 	{ "name": "dp_matrix1_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_15", "role": "ce0" }} , 
 	{ "name": "dp_matrix1_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_15", "role": "we0" }} , 
 	{ "name": "dp_matrix1_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_15", "role": "d0" }} , 
 	{ "name": "dp_matrix1_15_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "dp_matrix1_15", "role": "address1" }} , 
 	{ "name": "dp_matrix1_15_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_15", "role": "ce1" }} , 
 	{ "name": "dp_matrix1_15_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dp_matrix1_15", "role": "we1" }} , 
 	{ "name": "dp_matrix1_15_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "dp_matrix1_15", "role": "d1" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }} , 
 	{ "name": "ap_return_3", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_3", "role": "default" }} , 
 	{ "name": "ap_return_4", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_4", "role": "default" }} , 
 	{ "name": "ap_return_5", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_5", "role": "default" }} , 
 	{ "name": "ap_return_6", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_6", "role": "default" }} , 
 	{ "name": "ap_return_7", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_7", "role": "default" }} , 
 	{ "name": "ap_return_8", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_8", "role": "default" }} , 
 	{ "name": "ap_return_9", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_9", "role": "default" }} , 
 	{ "name": "ap_return_10", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_10", "role": "default" }} , 
 	{ "name": "ap_return_11", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_11", "role": "default" }} , 
 	{ "name": "ap_return_12", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_12", "role": "default" }} , 
 	{ "name": "ap_return_13", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_13", "role": "default" }} , 
 	{ "name": "ap_return_14", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_14", "role": "default" }} , 
 	{ "name": "ap_return_15", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_15", "role": "default" }} , 
 	{ "name": "ap_return_16", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_16", "role": "default" }} , 
 	{ "name": "ap_return_17", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_17", "role": "default" }} , 
 	{ "name": "ap_return_18", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_18", "role": "default" }} , 
 	{ "name": "ap_return_19", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_19", "role": "default" }} , 
 	{ "name": "ap_return_20", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_20", "role": "default" }} , 
 	{ "name": "ap_return_21", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_21", "role": "default" }} , 
 	{ "name": "ap_return_22", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_22", "role": "default" }} , 
 	{ "name": "ap_return_23", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_23", "role": "default" }} , 
 	{ "name": "ap_return_24", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_24", "role": "default" }} , 
 	{ "name": "ap_return_25", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_25", "role": "default" }} , 
 	{ "name": "ap_return_26", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_26", "role": "default" }} , 
 	{ "name": "ap_return_27", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_27", "role": "default" }} , 
 	{ "name": "ap_return_28", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_28", "role": "default" }} , 
 	{ "name": "ap_return_29", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_29", "role": "default" }} , 
 	{ "name": "ap_return_30", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_30", "role": "default" }} , 
 	{ "name": "ap_return_31", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_31", "role": "default" }} , 
 	{ "name": "ap_return_32", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_32", "role": "default" }} , 
 	{ "name": "ap_return_33", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_33", "role": "default" }} , 
 	{ "name": "ap_return_34", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_34", "role": "default" }} , 
 	{ "name": "ap_return_35", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_35", "role": "default" }} , 
 	{ "name": "ap_return_36", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_36", "role": "default" }} , 
 	{ "name": "ap_return_37", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_37", "role": "default" }} , 
 	{ "name": "ap_return_38", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_38", "role": "default" }} , 
 	{ "name": "ap_return_39", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_39", "role": "default" }} , 
 	{ "name": "ap_return_40", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_40", "role": "default" }} , 
 	{ "name": "ap_return_41", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_41", "role": "default" }} , 
 	{ "name": "ap_return_42", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_42", "role": "default" }} , 
 	{ "name": "ap_return_43", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_43", "role": "default" }} , 
 	{ "name": "ap_return_44", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_44", "role": "default" }} , 
 	{ "name": "ap_return_45", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_45", "role": "default" }} , 
 	{ "name": "ap_return_46", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_46", "role": "default" }} , 
 	{ "name": "ap_return_47", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_47", "role": "default" }} , 
 	{ "name": "ap_return_48", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_48", "role": "default" }} , 
 	{ "name": "ap_return_49", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_49", "role": "default" }} , 
 	{ "name": "ap_return_50", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_50", "role": "default" }} , 
 	{ "name": "ap_return_51", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_51", "role": "default" }} , 
 	{ "name": "ap_return_52", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_52", "role": "default" }} , 
 	{ "name": "ap_return_53", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_53", "role": "default" }} , 
 	{ "name": "ap_return_54", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_54", "role": "default" }} , 
 	{ "name": "ap_return_55", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_55", "role": "default" }} , 
 	{ "name": "ap_return_56", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_56", "role": "default" }} , 
 	{ "name": "ap_return_57", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_57", "role": "default" }} , 
 	{ "name": "ap_return_58", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_58", "role": "default" }} , 
 	{ "name": "ap_return_59", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_59", "role": "default" }} , 
 	{ "name": "ap_return_60", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_60", "role": "default" }} , 
 	{ "name": "ap_return_61", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_61", "role": "default" }} , 
 	{ "name": "ap_return_62", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_62", "role": "default" }} , 
 	{ "name": "ap_return_63", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_63", "role": "default" }} , 
 	{ "name": "ap_return_64", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_64", "role": "default" }} , 
 	{ "name": "ap_return_65", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_65", "role": "default" }} , 
 	{ "name": "ap_return_66", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_66", "role": "default" }} , 
 	{ "name": "ap_return_67", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_67", "role": "default" }} , 
 	{ "name": "ap_return_68", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_68", "role": "default" }} , 
 	{ "name": "ap_return_69", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_69", "role": "default" }} , 
 	{ "name": "ap_return_70", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_70", "role": "default" }} , 
 	{ "name": "ap_return_71", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_71", "role": "default" }} , 
 	{ "name": "ap_return_72", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_72", "role": "default" }} , 
 	{ "name": "ap_return_73", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_73", "role": "default" }} , 
 	{ "name": "ap_return_74", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_74", "role": "default" }} , 
 	{ "name": "ap_return_75", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_75", "role": "default" }} , 
 	{ "name": "ap_return_76", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_76", "role": "default" }} , 
 	{ "name": "ap_return_77", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_77", "role": "default" }} , 
 	{ "name": "ap_return_78", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_78", "role": "default" }} , 
 	{ "name": "ap_return_79", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_79", "role": "default" }} , 
 	{ "name": "ap_return_80", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_80", "role": "default" }} , 
 	{ "name": "ap_return_81", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_81", "role": "default" }} , 
 	{ "name": "ap_return_82", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_82", "role": "default" }} , 
 	{ "name": "ap_return_83", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_83", "role": "default" }} , 
 	{ "name": "ap_return_84", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_84", "role": "default" }} , 
 	{ "name": "ap_return_85", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_85", "role": "default" }} , 
 	{ "name": "ap_return_86", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_86", "role": "default" }} , 
 	{ "name": "ap_return_87", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_87", "role": "default" }} , 
 	{ "name": "ap_return_88", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_88", "role": "default" }} , 
 	{ "name": "ap_return_89", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_89", "role": "default" }} , 
 	{ "name": "ap_return_90", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_90", "role": "default" }} , 
 	{ "name": "ap_return_91", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_91", "role": "default" }} , 
 	{ "name": "ap_return_92", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_92", "role": "default" }} , 
 	{ "name": "ap_return_93", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_93", "role": "default" }} , 
 	{ "name": "ap_return_94", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_94", "role": "default" }} , 
 	{ "name": "ap_return_95", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_95", "role": "default" }} , 
 	{ "name": "ap_return_96", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_96", "role": "default" }} , 
 	{ "name": "ap_return_97", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_97", "role": "default" }} , 
 	{ "name": "ap_return_98", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_98", "role": "default" }} , 
 	{ "name": "ap_return_99", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_99", "role": "default" }} , 
 	{ "name": "ap_return_100", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_100", "role": "default" }} , 
 	{ "name": "ap_return_101", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_101", "role": "default" }} , 
 	{ "name": "ap_return_102", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_102", "role": "default" }} , 
 	{ "name": "ap_return_103", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_103", "role": "default" }} , 
 	{ "name": "ap_return_104", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_104", "role": "default" }} , 
 	{ "name": "ap_return_105", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_105", "role": "default" }} , 
 	{ "name": "ap_return_106", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_106", "role": "default" }} , 
 	{ "name": "ap_return_107", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_107", "role": "default" }} , 
 	{ "name": "ap_return_108", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_108", "role": "default" }} , 
 	{ "name": "ap_return_109", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_109", "role": "default" }} , 
 	{ "name": "ap_return_110", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_110", "role": "default" }} , 
 	{ "name": "ap_return_111", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_111", "role": "default" }} , 
 	{ "name": "ap_return_112", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_112", "role": "default" }} , 
 	{ "name": "ap_return_113", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_113", "role": "default" }} , 
 	{ "name": "ap_return_114", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_114", "role": "default" }} , 
 	{ "name": "ap_return_115", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_115", "role": "default" }} , 
 	{ "name": "ap_return_116", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_116", "role": "default" }} , 
 	{ "name": "ap_return_117", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_117", "role": "default" }} , 
 	{ "name": "ap_return_118", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_118", "role": "default" }} , 
 	{ "name": "ap_return_119", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_119", "role": "default" }} , 
 	{ "name": "ap_return_120", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_120", "role": "default" }} , 
 	{ "name": "ap_return_121", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_121", "role": "default" }} , 
 	{ "name": "ap_return_122", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_122", "role": "default" }} , 
 	{ "name": "ap_return_123", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_123", "role": "default" }} , 
 	{ "name": "ap_return_124", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_124", "role": "default" }} , 
 	{ "name": "ap_return_125", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_125", "role": "default" }} , 
 	{ "name": "ap_return_126", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_126", "role": "default" }} , 
 	{ "name": "ap_return_127", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "ap_return_127", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "19"],
		"CDFG" : "seq_align",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34793", "EstimateLatencyMax" : "34793",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "query_string_comp", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "query_string_comp", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "reference_string_comp", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_seq_align_Pipeline_VITIS_LOOP_76_1_fu_1852", "Port" : "reference_string_comp", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "dp_mem_0_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_4", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_5", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_6", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_7", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_8", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_8", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_9", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_9", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_10", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_10", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_11", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_11", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_12", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_12", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_13", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_13", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_14", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_14", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_15", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_15", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_16", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_16", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_17", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_17", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_18", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_18", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_19", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_19", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_20", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_20", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_21", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_21", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_22", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_22", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_23", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_23", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_24", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_24", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_25", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_25", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_26", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_26", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_27", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_27", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_28", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_28", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_29", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_29", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_30", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_30", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_mem_0_31", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_mem_0_31", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
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
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "Ix_mem_0_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_4", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_5", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_6", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_7", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_8", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_8", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_9", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_9", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_10", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_10", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_11", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_11", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_12", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_12", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_13", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_13", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_14", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_14", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_15", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_15", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_16", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_16", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_17", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_17", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_18", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_18", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_19", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_19", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_20", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_20", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_21", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_21", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_22", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_22", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_23", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_23", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_24", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_24", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_25", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_25", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_26", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_26", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_27", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_27", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_28", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_28", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_29", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_29", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_30", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_30", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Ix_mem_0_31", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Ix_mem_0_31", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
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
			{"Name" : "Iy_mem_0_0", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_1", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_2", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_3", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_4", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_5", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_6", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_7", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_8", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_8", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_9", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_9", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_10", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_10", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_11", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_11", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_12", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_12", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_13", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_13", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_14", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_14", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_15", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_15", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_16", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_16", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_17", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_17", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_18", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_18", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_19", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_19", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_20", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_20", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_21", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_21", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_22", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_22", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_23", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_23", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_24", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_24", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_25", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_25", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_26", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_26", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_27", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_27", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_28", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_28", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_29", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_29", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_30", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_30", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "Iy_mem_0_31", "Type" : "Vld", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "Iy_mem_0_31", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "p_read97", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read98", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read99", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read100", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read101", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read102", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "last_pe_score", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "last_pe_score", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "last_pe_scoreIx", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "last_pe_scoreIx", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_matrix1_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_matrix1_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_matrix1_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_matrix1_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_matrix1_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_matrix1_2", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_matrix1_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_matrix1_3", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_matrix1_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_matrix1_4", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_matrix1_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_matrix1_5", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_matrix1_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_matrix1_6", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_matrix1_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_matrix1_7", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_matrix1_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_matrix1_8", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_matrix1_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_matrix1_9", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_matrix1_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_matrix1_10", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_matrix1_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_matrix1_11", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_matrix1_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_matrix1_12", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_matrix1_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_matrix1_13", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_matrix1_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_matrix1_14", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "dp_matrix1_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Port" : "dp_matrix1_15", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.local_reference_V_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_76_1_fu_1852", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "seq_align_Pipeline_VITIS_LOOP_76_1",
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
			{"Name" : "reference_string_comp", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_76_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_VITIS_LOOP_76_1_fu_1852.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890", "Parent" : "0", "Child" : ["20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52"],
		"CDFG" : "seq_align_Pipeline_kernel_kernel1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33763", "EstimateLatencyMax" : "33763",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
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
			{"Name" : "p_read33", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read34", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read35", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "p_read99", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read100", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read101", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_read102", "Type" : "None", "Direction" : "I"},
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
			{"Name" : "dp_matrix1_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix1_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix1_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix1_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix1_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix1_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix1_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix1_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix1_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix1_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix1_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix1_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix1_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix1_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix1_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "dp_matrix1_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "Iy_mem_0_31", "Type" : "Vld", "Direction" : "O"},
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
			{"Name" : "dp_mem_0_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_0", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_12", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_13", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_14", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_15", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_16", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_16", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_16", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_17", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_17", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_17", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_18", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_18", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_18", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_19", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_19", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_19", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_20", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_20", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_20", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_21", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_21", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_21", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_22", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_22", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_22", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_23", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_23", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_23", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_24", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_24", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_24", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_25", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_25", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_25", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_26", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_26", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_26", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_27", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_27", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_27", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_28", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_28", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_28", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_29", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_29", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_29", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_30", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_30", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_0_30", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_0_31", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_0_31", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "query_string_comp", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "last_pe_score", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "last_pe_scoreIx", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "diag_prev_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "diag_prev_V_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dp_mem_1_31_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "left_prev_V_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_prev_V_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Ix_mem_1_31_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_prev_V_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "Iy_mem_1_31_1_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "kernel_kernel1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U18", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U19", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U20", "Parent" : "19"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U21", "Parent" : "19"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U22", "Parent" : "19"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U23", "Parent" : "19"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U24", "Parent" : "19"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U25", "Parent" : "19"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U26", "Parent" : "19"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U27", "Parent" : "19"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U28", "Parent" : "19"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U29", "Parent" : "19"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U30", "Parent" : "19"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U31", "Parent" : "19"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U32", "Parent" : "19"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U33", "Parent" : "19"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U34", "Parent" : "19"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U35", "Parent" : "19"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U36", "Parent" : "19"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U37", "Parent" : "19"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U38", "Parent" : "19"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U39", "Parent" : "19"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U40", "Parent" : "19"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U41", "Parent" : "19"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U42", "Parent" : "19"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U43", "Parent" : "19"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U44", "Parent" : "19"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U45", "Parent" : "19"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U46", "Parent" : "19"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U47", "Parent" : "19"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U48", "Parent" : "19"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.mux_164_2_1_1_U49", "Parent" : "19"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_seq_align_Pipeline_kernel_kernel1_fu_1890.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"}]}


set ArgLastReadFirstWriteLatency {
	seq_align {
		query_string_comp {Type I LastRead 0 FirstWrite -1}
		reference_string_comp {Type I LastRead 0 FirstWrite -1}
		dp_mem_0_0 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_1 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_2 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_3 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_4 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_5 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_6 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_7 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_8 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_9 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_10 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_11 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_12 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_13 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_14 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_15 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_16 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_17 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_18 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_19 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_20 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_21 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_22 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_23 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_24 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_25 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_26 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_27 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_28 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_29 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_30 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_31 {Type O LastRead -1 FirstWrite 1}
		p_read1 {Type I LastRead 2 FirstWrite -1}
		p_read2 {Type I LastRead 2 FirstWrite -1}
		p_read3 {Type I LastRead 2 FirstWrite -1}
		p_read4 {Type I LastRead 2 FirstWrite -1}
		p_read5 {Type I LastRead 2 FirstWrite -1}
		p_read6 {Type I LastRead 2 FirstWrite -1}
		p_read7 {Type I LastRead 2 FirstWrite -1}
		p_read8 {Type I LastRead 2 FirstWrite -1}
		p_read9 {Type I LastRead 2 FirstWrite -1}
		p_read10 {Type I LastRead 2 FirstWrite -1}
		p_read11 {Type I LastRead 2 FirstWrite -1}
		p_read12 {Type I LastRead 2 FirstWrite -1}
		p_read13 {Type I LastRead 2 FirstWrite -1}
		p_read14 {Type I LastRead 2 FirstWrite -1}
		p_read15 {Type I LastRead 2 FirstWrite -1}
		p_read16 {Type I LastRead 2 FirstWrite -1}
		p_read17 {Type I LastRead 2 FirstWrite -1}
		p_read18 {Type I LastRead 2 FirstWrite -1}
		p_read19 {Type I LastRead 2 FirstWrite -1}
		p_read20 {Type I LastRead 2 FirstWrite -1}
		p_read21 {Type I LastRead 2 FirstWrite -1}
		p_read22 {Type I LastRead 2 FirstWrite -1}
		p_read23 {Type I LastRead 2 FirstWrite -1}
		p_read24 {Type I LastRead 2 FirstWrite -1}
		p_read25 {Type I LastRead 2 FirstWrite -1}
		p_read26 {Type I LastRead 2 FirstWrite -1}
		p_read27 {Type I LastRead 2 FirstWrite -1}
		p_read28 {Type I LastRead 2 FirstWrite -1}
		p_read29 {Type I LastRead 2 FirstWrite -1}
		p_read30 {Type I LastRead 2 FirstWrite -1}
		p_read31 {Type I LastRead 2 FirstWrite -1}
		p_read32 {Type I LastRead 2 FirstWrite -1}
		p_read33 {Type I LastRead 2 FirstWrite -1}
		p_read34 {Type I LastRead 2 FirstWrite -1}
		p_read35 {Type I LastRead 2 FirstWrite -1}
		p_read36 {Type I LastRead 2 FirstWrite -1}
		p_read37 {Type I LastRead 2 FirstWrite -1}
		p_read38 {Type I LastRead 2 FirstWrite -1}
		p_read39 {Type I LastRead 2 FirstWrite -1}
		p_read40 {Type I LastRead 2 FirstWrite -1}
		p_read41 {Type I LastRead 2 FirstWrite -1}
		p_read42 {Type I LastRead 2 FirstWrite -1}
		p_read43 {Type I LastRead 2 FirstWrite -1}
		p_read44 {Type I LastRead 2 FirstWrite -1}
		p_read45 {Type I LastRead 2 FirstWrite -1}
		p_read46 {Type I LastRead 2 FirstWrite -1}
		p_read47 {Type I LastRead 2 FirstWrite -1}
		p_read48 {Type I LastRead 2 FirstWrite -1}
		p_read49 {Type I LastRead 2 FirstWrite -1}
		p_read50 {Type I LastRead 2 FirstWrite -1}
		p_read51 {Type I LastRead 2 FirstWrite -1}
		p_read52 {Type I LastRead 2 FirstWrite -1}
		p_read53 {Type I LastRead 2 FirstWrite -1}
		p_read54 {Type I LastRead 2 FirstWrite -1}
		p_read55 {Type I LastRead 2 FirstWrite -1}
		p_read56 {Type I LastRead 2 FirstWrite -1}
		p_read57 {Type I LastRead 2 FirstWrite -1}
		p_read58 {Type I LastRead 2 FirstWrite -1}
		p_read59 {Type I LastRead 2 FirstWrite -1}
		p_read60 {Type I LastRead 2 FirstWrite -1}
		p_read61 {Type I LastRead 2 FirstWrite -1}
		p_read62 {Type I LastRead 2 FirstWrite -1}
		p_read63 {Type I LastRead 2 FirstWrite -1}
		p_read64 {Type I LastRead 2 FirstWrite -1}
		Ix_mem_0_0 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_1 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_2 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_3 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_4 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_5 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_6 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_7 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_8 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_9 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_10 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_11 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_12 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_13 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_14 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_15 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_16 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_17 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_18 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_19 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_20 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_21 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_22 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_23 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_24 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_25 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_26 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_27 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_28 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_29 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_30 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_31 {Type O LastRead -1 FirstWrite 1}
		p_read65 {Type I LastRead 2 FirstWrite -1}
		p_read66 {Type I LastRead 2 FirstWrite -1}
		p_read67 {Type I LastRead 2 FirstWrite -1}
		p_read68 {Type I LastRead 2 FirstWrite -1}
		p_read69 {Type I LastRead 2 FirstWrite -1}
		p_read70 {Type I LastRead 2 FirstWrite -1}
		p_read71 {Type I LastRead 2 FirstWrite -1}
		p_read72 {Type I LastRead 2 FirstWrite -1}
		p_read73 {Type I LastRead 2 FirstWrite -1}
		p_read74 {Type I LastRead 2 FirstWrite -1}
		p_read75 {Type I LastRead 2 FirstWrite -1}
		p_read76 {Type I LastRead 2 FirstWrite -1}
		p_read77 {Type I LastRead 2 FirstWrite -1}
		p_read78 {Type I LastRead 2 FirstWrite -1}
		p_read79 {Type I LastRead 2 FirstWrite -1}
		p_read80 {Type I LastRead 2 FirstWrite -1}
		p_read81 {Type I LastRead 2 FirstWrite -1}
		p_read82 {Type I LastRead 2 FirstWrite -1}
		p_read83 {Type I LastRead 2 FirstWrite -1}
		p_read84 {Type I LastRead 2 FirstWrite -1}
		p_read85 {Type I LastRead 2 FirstWrite -1}
		p_read86 {Type I LastRead 2 FirstWrite -1}
		p_read87 {Type I LastRead 2 FirstWrite -1}
		p_read88 {Type I LastRead 2 FirstWrite -1}
		p_read89 {Type I LastRead 2 FirstWrite -1}
		p_read90 {Type I LastRead 2 FirstWrite -1}
		p_read91 {Type I LastRead 2 FirstWrite -1}
		p_read92 {Type I LastRead 2 FirstWrite -1}
		p_read93 {Type I LastRead 2 FirstWrite -1}
		p_read94 {Type I LastRead 2 FirstWrite -1}
		p_read95 {Type I LastRead 2 FirstWrite -1}
		p_read96 {Type I LastRead 2 FirstWrite -1}
		Iy_mem_0_0 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_1 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_2 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_3 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_4 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_5 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_6 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_7 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_8 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_9 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_10 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_11 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_12 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_13 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_14 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_15 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_16 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_17 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_18 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_19 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_20 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_21 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_22 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_23 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_24 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_25 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_26 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_27 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_28 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_29 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_30 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_31 {Type O LastRead -1 FirstWrite 2}
		p_read97 {Type I LastRead 2 FirstWrite -1}
		p_read98 {Type I LastRead 2 FirstWrite -1}
		p_read99 {Type I LastRead 2 FirstWrite -1}
		p_read100 {Type I LastRead 2 FirstWrite -1}
		p_read101 {Type I LastRead 2 FirstWrite -1}
		p_read102 {Type I LastRead 2 FirstWrite -1}
		p_read103 {Type I LastRead 2 FirstWrite -1}
		p_read104 {Type I LastRead 2 FirstWrite -1}
		p_read105 {Type I LastRead 2 FirstWrite -1}
		p_read106 {Type I LastRead 2 FirstWrite -1}
		p_read107 {Type I LastRead 2 FirstWrite -1}
		p_read108 {Type I LastRead 2 FirstWrite -1}
		p_read109 {Type I LastRead 2 FirstWrite -1}
		p_read110 {Type I LastRead 2 FirstWrite -1}
		p_read111 {Type I LastRead 2 FirstWrite -1}
		p_read112 {Type I LastRead 2 FirstWrite -1}
		p_read113 {Type I LastRead 2 FirstWrite -1}
		p_read114 {Type I LastRead 2 FirstWrite -1}
		p_read115 {Type I LastRead 2 FirstWrite -1}
		p_read116 {Type I LastRead 2 FirstWrite -1}
		p_read117 {Type I LastRead 2 FirstWrite -1}
		p_read118 {Type I LastRead 2 FirstWrite -1}
		p_read119 {Type I LastRead 2 FirstWrite -1}
		p_read120 {Type I LastRead 2 FirstWrite -1}
		p_read121 {Type I LastRead 2 FirstWrite -1}
		p_read122 {Type I LastRead 2 FirstWrite -1}
		p_read123 {Type I LastRead 2 FirstWrite -1}
		p_read124 {Type I LastRead 2 FirstWrite -1}
		p_read125 {Type I LastRead 2 FirstWrite -1}
		p_read126 {Type I LastRead 2 FirstWrite -1}
		p_read127 {Type I LastRead 2 FirstWrite -1}
		p_read128 {Type I LastRead 2 FirstWrite -1}
		last_pe_score {Type IO LastRead 0 FirstWrite 2}
		last_pe_scoreIx {Type IO LastRead 0 FirstWrite 1}
		dp_matrix1_0 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_1 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_2 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_3 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_4 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_5 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_6 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_7 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_8 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_9 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_10 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_11 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_12 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_13 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_14 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_15 {Type O LastRead -1 FirstWrite 2}}
	seq_align_Pipeline_VITIS_LOOP_76_1 {
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
		reference_string_comp {Type I LastRead 0 FirstWrite -1}}
	seq_align_Pipeline_kernel_kernel1 {
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
		p_read33 {Type I LastRead 0 FirstWrite -1}
		p_read34 {Type I LastRead 0 FirstWrite -1}
		p_read35 {Type I LastRead 0 FirstWrite -1}
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
		p_read99 {Type I LastRead 0 FirstWrite -1}
		p_read100 {Type I LastRead 0 FirstWrite -1}
		p_read101 {Type I LastRead 0 FirstWrite -1}
		p_read102 {Type I LastRead 0 FirstWrite -1}
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
		dp_matrix1_0 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_1 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_2 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_3 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_4 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_5 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_6 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_7 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_8 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_9 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_10 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_11 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_12 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_13 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_14 {Type O LastRead -1 FirstWrite 2}
		dp_matrix1_15 {Type O LastRead -1 FirstWrite 2}
		Iy_mem_0_31 {Type O LastRead -1 FirstWrite 2}
		local_reference_V {Type I LastRead 2 FirstWrite -1}
		local_reference_V_1 {Type I LastRead 2 FirstWrite -1}
		local_reference_V_2 {Type I LastRead 2 FirstWrite -1}
		local_reference_V_3 {Type I LastRead 2 FirstWrite -1}
		local_reference_V_4 {Type I LastRead 2 FirstWrite -1}
		local_reference_V_5 {Type I LastRead 2 FirstWrite -1}
		local_reference_V_6 {Type I LastRead 2 FirstWrite -1}
		local_reference_V_7 {Type I LastRead 2 FirstWrite -1}
		local_reference_V_8 {Type I LastRead 2 FirstWrite -1}
		local_reference_V_9 {Type I LastRead 2 FirstWrite -1}
		local_reference_V_10 {Type I LastRead 2 FirstWrite -1}
		local_reference_V_11 {Type I LastRead 2 FirstWrite -1}
		local_reference_V_12 {Type I LastRead 2 FirstWrite -1}
		local_reference_V_13 {Type I LastRead 2 FirstWrite -1}
		local_reference_V_14 {Type I LastRead 2 FirstWrite -1}
		local_reference_V_15 {Type I LastRead 2 FirstWrite -1}
		dp_mem_0_0 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_0 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_0 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_1 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_1 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_1 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_2 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_2 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_2 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_3 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_3 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_3 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_4 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_4 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_4 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_5 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_5 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_5 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_6 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_6 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_6 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_7 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_7 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_7 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_8 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_8 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_8 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_9 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_9 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_9 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_10 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_10 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_10 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_11 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_11 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_11 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_12 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_12 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_12 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_13 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_13 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_13 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_14 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_14 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_14 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_15 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_15 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_15 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_16 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_16 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_16 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_17 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_17 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_17 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_18 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_18 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_18 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_19 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_19 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_19 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_20 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_20 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_20 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_21 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_21 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_21 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_22 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_22 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_22 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_23 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_23 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_23 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_24 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_24 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_24 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_25 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_25 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_25 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_26 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_26 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_26 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_27 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_27 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_27 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_28 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_28 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_28 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_29 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_29 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_29 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_30 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_30 {Type O LastRead -1 FirstWrite 1}
		Iy_mem_0_30 {Type O LastRead -1 FirstWrite 1}
		dp_mem_0_31 {Type O LastRead -1 FirstWrite 1}
		Ix_mem_0_31 {Type O LastRead -1 FirstWrite 1}
		query_string_comp {Type I LastRead 0 FirstWrite -1}
		last_pe_score {Type IO LastRead 0 FirstWrite 2}
		last_pe_scoreIx {Type IO LastRead 0 FirstWrite 1}
		diag_prev_V_1_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_2_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_3_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_4_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_5_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_6_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_7_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_8_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_9_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_10_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_11_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_12_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_13_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_14_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_15_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_16_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_17_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_18_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_19_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_20_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_21_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_22_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_23_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_24_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_25_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_26_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_27_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_28_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_29_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_30_out {Type O LastRead -1 FirstWrite 1}
		diag_prev_V_31_out {Type O LastRead -1 FirstWrite 1}
		dp_mem_1_31_1_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_17_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_18_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_19_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_20_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_21_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_22_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_23_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_24_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_25_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_26_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_27_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_28_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_29_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_30_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_31_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_32_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_33_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_34_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_35_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_36_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_37_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_38_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_39_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_40_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_41_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_42_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_43_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_44_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_45_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_46_out {Type O LastRead -1 FirstWrite 1}
		left_prev_V_16_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_1_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_2_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_3_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_4_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_5_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_6_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_7_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_8_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_9_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_10_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_11_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_12_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_13_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_14_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_15_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_16_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_17_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_18_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_19_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_20_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_21_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_22_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_23_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_24_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_25_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_26_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_27_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_28_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_29_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_30_out {Type O LastRead -1 FirstWrite 1}
		Ix_prev_V_31_out {Type O LastRead -1 FirstWrite 1}
		Ix_mem_1_31_1_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_1_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_2_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_3_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_4_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_5_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_6_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_7_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_8_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_9_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_10_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_11_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_12_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_13_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_14_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_15_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_16_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_17_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_18_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_19_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_20_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_21_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_22_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_23_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_24_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_25_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_26_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_27_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_28_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_29_out {Type O LastRead -1 FirstWrite 1}
		Iy_prev_V_30_out {Type O LastRead -1 FirstWrite 1}
		Iy_mem_1_31_1_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "34793", "Max" : "34793"}
	, {"Name" : "Interval", "Min" : "34793", "Max" : "34793"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	query_string_comp { ap_memory {  { query_string_comp_address0 mem_address 1 9 }  { query_string_comp_ce0 mem_ce 1 1 }  { query_string_comp_q0 mem_dout 0 2 } } }
	reference_string_comp { ap_memory {  { reference_string_comp_address0 mem_address 1 10 }  { reference_string_comp_ce0 mem_ce 1 1 }  { reference_string_comp_q0 mem_dout 0 2 } } }
	dp_mem_0_0 { ap_vld {  { dp_mem_0_0 out_data 1 10 }  { dp_mem_0_0_ap_vld out_vld 1 1 } } }
	dp_mem_0_1 { ap_vld {  { dp_mem_0_1 out_data 1 10 }  { dp_mem_0_1_ap_vld out_vld 1 1 } } }
	dp_mem_0_2 { ap_vld {  { dp_mem_0_2 out_data 1 10 }  { dp_mem_0_2_ap_vld out_vld 1 1 } } }
	dp_mem_0_3 { ap_vld {  { dp_mem_0_3 out_data 1 10 }  { dp_mem_0_3_ap_vld out_vld 1 1 } } }
	dp_mem_0_4 { ap_vld {  { dp_mem_0_4 out_data 1 10 }  { dp_mem_0_4_ap_vld out_vld 1 1 } } }
	dp_mem_0_5 { ap_vld {  { dp_mem_0_5 out_data 1 10 }  { dp_mem_0_5_ap_vld out_vld 1 1 } } }
	dp_mem_0_6 { ap_vld {  { dp_mem_0_6 out_data 1 10 }  { dp_mem_0_6_ap_vld out_vld 1 1 } } }
	dp_mem_0_7 { ap_vld {  { dp_mem_0_7 out_data 1 10 }  { dp_mem_0_7_ap_vld out_vld 1 1 } } }
	dp_mem_0_8 { ap_vld {  { dp_mem_0_8 out_data 1 10 }  { dp_mem_0_8_ap_vld out_vld 1 1 } } }
	dp_mem_0_9 { ap_vld {  { dp_mem_0_9 out_data 1 10 }  { dp_mem_0_9_ap_vld out_vld 1 1 } } }
	dp_mem_0_10 { ap_vld {  { dp_mem_0_10 out_data 1 10 }  { dp_mem_0_10_ap_vld out_vld 1 1 } } }
	dp_mem_0_11 { ap_vld {  { dp_mem_0_11 out_data 1 10 }  { dp_mem_0_11_ap_vld out_vld 1 1 } } }
	dp_mem_0_12 { ap_vld {  { dp_mem_0_12 out_data 1 10 }  { dp_mem_0_12_ap_vld out_vld 1 1 } } }
	dp_mem_0_13 { ap_vld {  { dp_mem_0_13 out_data 1 10 }  { dp_mem_0_13_ap_vld out_vld 1 1 } } }
	dp_mem_0_14 { ap_vld {  { dp_mem_0_14 out_data 1 10 }  { dp_mem_0_14_ap_vld out_vld 1 1 } } }
	dp_mem_0_15 { ap_vld {  { dp_mem_0_15 out_data 1 10 }  { dp_mem_0_15_ap_vld out_vld 1 1 } } }
	dp_mem_0_16 { ap_vld {  { dp_mem_0_16 out_data 1 10 }  { dp_mem_0_16_ap_vld out_vld 1 1 } } }
	dp_mem_0_17 { ap_vld {  { dp_mem_0_17 out_data 1 10 }  { dp_mem_0_17_ap_vld out_vld 1 1 } } }
	dp_mem_0_18 { ap_vld {  { dp_mem_0_18 out_data 1 10 }  { dp_mem_0_18_ap_vld out_vld 1 1 } } }
	dp_mem_0_19 { ap_vld {  { dp_mem_0_19 out_data 1 10 }  { dp_mem_0_19_ap_vld out_vld 1 1 } } }
	dp_mem_0_20 { ap_vld {  { dp_mem_0_20 out_data 1 10 }  { dp_mem_0_20_ap_vld out_vld 1 1 } } }
	dp_mem_0_21 { ap_vld {  { dp_mem_0_21 out_data 1 10 }  { dp_mem_0_21_ap_vld out_vld 1 1 } } }
	dp_mem_0_22 { ap_vld {  { dp_mem_0_22 out_data 1 10 }  { dp_mem_0_22_ap_vld out_vld 1 1 } } }
	dp_mem_0_23 { ap_vld {  { dp_mem_0_23 out_data 1 10 }  { dp_mem_0_23_ap_vld out_vld 1 1 } } }
	dp_mem_0_24 { ap_vld {  { dp_mem_0_24 out_data 1 10 }  { dp_mem_0_24_ap_vld out_vld 1 1 } } }
	dp_mem_0_25 { ap_vld {  { dp_mem_0_25 out_data 1 10 }  { dp_mem_0_25_ap_vld out_vld 1 1 } } }
	dp_mem_0_26 { ap_vld {  { dp_mem_0_26 out_data 1 10 }  { dp_mem_0_26_ap_vld out_vld 1 1 } } }
	dp_mem_0_27 { ap_vld {  { dp_mem_0_27 out_data 1 10 }  { dp_mem_0_27_ap_vld out_vld 1 1 } } }
	dp_mem_0_28 { ap_vld {  { dp_mem_0_28 out_data 1 10 }  { dp_mem_0_28_ap_vld out_vld 1 1 } } }
	dp_mem_0_29 { ap_vld {  { dp_mem_0_29 out_data 1 10 }  { dp_mem_0_29_ap_vld out_vld 1 1 } } }
	dp_mem_0_30 { ap_vld {  { dp_mem_0_30 out_data 1 10 }  { dp_mem_0_30_ap_vld out_vld 1 1 } } }
	dp_mem_0_31 { ap_vld {  { dp_mem_0_31 out_data 1 10 }  { dp_mem_0_31_ap_vld out_vld 1 1 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 10 } } }
	p_read2 { ap_none {  { p_read2 in_data 0 10 } } }
	p_read3 { ap_none {  { p_read3 in_data 0 10 } } }
	p_read4 { ap_none {  { p_read4 in_data 0 10 } } }
	p_read5 { ap_none {  { p_read5 in_data 0 10 } } }
	p_read6 { ap_none {  { p_read6 in_data 0 10 } } }
	p_read7 { ap_none {  { p_read7 in_data 0 10 } } }
	p_read8 { ap_none {  { p_read8 in_data 0 10 } } }
	p_read9 { ap_none {  { p_read9 in_data 0 10 } } }
	p_read10 { ap_none {  { p_read10 in_data 0 10 } } }
	p_read11 { ap_none {  { p_read11 in_data 0 10 } } }
	p_read12 { ap_none {  { p_read12 in_data 0 10 } } }
	p_read13 { ap_none {  { p_read13 in_data 0 10 } } }
	p_read14 { ap_none {  { p_read14 in_data 0 10 } } }
	p_read15 { ap_none {  { p_read15 in_data 0 10 } } }
	p_read16 { ap_none {  { p_read16 in_data 0 10 } } }
	p_read17 { ap_none {  { p_read17 in_data 0 10 } } }
	p_read18 { ap_none {  { p_read18 in_data 0 10 } } }
	p_read19 { ap_none {  { p_read19 in_data 0 10 } } }
	p_read20 { ap_none {  { p_read20 in_data 0 10 } } }
	p_read21 { ap_none {  { p_read21 in_data 0 10 } } }
	p_read22 { ap_none {  { p_read22 in_data 0 10 } } }
	p_read23 { ap_none {  { p_read23 in_data 0 10 } } }
	p_read24 { ap_none {  { p_read24 in_data 0 10 } } }
	p_read25 { ap_none {  { p_read25 in_data 0 10 } } }
	p_read26 { ap_none {  { p_read26 in_data 0 10 } } }
	p_read27 { ap_none {  { p_read27 in_data 0 10 } } }
	p_read28 { ap_none {  { p_read28 in_data 0 10 } } }
	p_read29 { ap_none {  { p_read29 in_data 0 10 } } }
	p_read30 { ap_none {  { p_read30 in_data 0 10 } } }
	p_read31 { ap_none {  { p_read31 in_data 0 10 } } }
	p_read32 { ap_none {  { p_read32 in_data 0 10 } } }
	p_read33 { ap_none {  { p_read33 in_data 0 10 } } }
	p_read34 { ap_none {  { p_read34 in_data 0 10 } } }
	p_read35 { ap_none {  { p_read35 in_data 0 10 } } }
	p_read36 { ap_none {  { p_read36 in_data 0 10 } } }
	p_read37 { ap_none {  { p_read37 in_data 0 10 } } }
	p_read38 { ap_none {  { p_read38 in_data 0 10 } } }
	p_read39 { ap_none {  { p_read39 in_data 0 10 } } }
	p_read40 { ap_none {  { p_read40 in_data 0 10 } } }
	p_read41 { ap_none {  { p_read41 in_data 0 10 } } }
	p_read42 { ap_none {  { p_read42 in_data 0 10 } } }
	p_read43 { ap_none {  { p_read43 in_data 0 10 } } }
	p_read44 { ap_none {  { p_read44 in_data 0 10 } } }
	p_read45 { ap_none {  { p_read45 in_data 0 10 } } }
	p_read46 { ap_none {  { p_read46 in_data 0 10 } } }
	p_read47 { ap_none {  { p_read47 in_data 0 10 } } }
	p_read48 { ap_none {  { p_read48 in_data 0 10 } } }
	p_read49 { ap_none {  { p_read49 in_data 0 10 } } }
	p_read50 { ap_none {  { p_read50 in_data 0 10 } } }
	p_read51 { ap_none {  { p_read51 in_data 0 10 } } }
	p_read52 { ap_none {  { p_read52 in_data 0 10 } } }
	p_read53 { ap_none {  { p_read53 in_data 0 10 } } }
	p_read54 { ap_none {  { p_read54 in_data 0 10 } } }
	p_read55 { ap_none {  { p_read55 in_data 0 10 } } }
	p_read56 { ap_none {  { p_read56 in_data 0 10 } } }
	p_read57 { ap_none {  { p_read57 in_data 0 10 } } }
	p_read58 { ap_none {  { p_read58 in_data 0 10 } } }
	p_read59 { ap_none {  { p_read59 in_data 0 10 } } }
	p_read60 { ap_none {  { p_read60 in_data 0 10 } } }
	p_read61 { ap_none {  { p_read61 in_data 0 10 } } }
	p_read62 { ap_none {  { p_read62 in_data 0 10 } } }
	p_read63 { ap_none {  { p_read63 in_data 0 10 } } }
	p_read64 { ap_none {  { p_read64 in_data 0 10 } } }
	Ix_mem_0_0 { ap_vld {  { Ix_mem_0_0 out_data 1 10 }  { Ix_mem_0_0_ap_vld out_vld 1 1 } } }
	Ix_mem_0_1 { ap_vld {  { Ix_mem_0_1 out_data 1 10 }  { Ix_mem_0_1_ap_vld out_vld 1 1 } } }
	Ix_mem_0_2 { ap_vld {  { Ix_mem_0_2 out_data 1 10 }  { Ix_mem_0_2_ap_vld out_vld 1 1 } } }
	Ix_mem_0_3 { ap_vld {  { Ix_mem_0_3 out_data 1 10 }  { Ix_mem_0_3_ap_vld out_vld 1 1 } } }
	Ix_mem_0_4 { ap_vld {  { Ix_mem_0_4 out_data 1 10 }  { Ix_mem_0_4_ap_vld out_vld 1 1 } } }
	Ix_mem_0_5 { ap_vld {  { Ix_mem_0_5 out_data 1 10 }  { Ix_mem_0_5_ap_vld out_vld 1 1 } } }
	Ix_mem_0_6 { ap_vld {  { Ix_mem_0_6 out_data 1 10 }  { Ix_mem_0_6_ap_vld out_vld 1 1 } } }
	Ix_mem_0_7 { ap_vld {  { Ix_mem_0_7 out_data 1 10 }  { Ix_mem_0_7_ap_vld out_vld 1 1 } } }
	Ix_mem_0_8 { ap_vld {  { Ix_mem_0_8 out_data 1 10 }  { Ix_mem_0_8_ap_vld out_vld 1 1 } } }
	Ix_mem_0_9 { ap_vld {  { Ix_mem_0_9 out_data 1 10 }  { Ix_mem_0_9_ap_vld out_vld 1 1 } } }
	Ix_mem_0_10 { ap_vld {  { Ix_mem_0_10 out_data 1 10 }  { Ix_mem_0_10_ap_vld out_vld 1 1 } } }
	Ix_mem_0_11 { ap_vld {  { Ix_mem_0_11 out_data 1 10 }  { Ix_mem_0_11_ap_vld out_vld 1 1 } } }
	Ix_mem_0_12 { ap_vld {  { Ix_mem_0_12 out_data 1 10 }  { Ix_mem_0_12_ap_vld out_vld 1 1 } } }
	Ix_mem_0_13 { ap_vld {  { Ix_mem_0_13 out_data 1 10 }  { Ix_mem_0_13_ap_vld out_vld 1 1 } } }
	Ix_mem_0_14 { ap_vld {  { Ix_mem_0_14 out_data 1 10 }  { Ix_mem_0_14_ap_vld out_vld 1 1 } } }
	Ix_mem_0_15 { ap_vld {  { Ix_mem_0_15 out_data 1 10 }  { Ix_mem_0_15_ap_vld out_vld 1 1 } } }
	Ix_mem_0_16 { ap_vld {  { Ix_mem_0_16 out_data 1 10 }  { Ix_mem_0_16_ap_vld out_vld 1 1 } } }
	Ix_mem_0_17 { ap_vld {  { Ix_mem_0_17 out_data 1 10 }  { Ix_mem_0_17_ap_vld out_vld 1 1 } } }
	Ix_mem_0_18 { ap_vld {  { Ix_mem_0_18 out_data 1 10 }  { Ix_mem_0_18_ap_vld out_vld 1 1 } } }
	Ix_mem_0_19 { ap_vld {  { Ix_mem_0_19 out_data 1 10 }  { Ix_mem_0_19_ap_vld out_vld 1 1 } } }
	Ix_mem_0_20 { ap_vld {  { Ix_mem_0_20 out_data 1 10 }  { Ix_mem_0_20_ap_vld out_vld 1 1 } } }
	Ix_mem_0_21 { ap_vld {  { Ix_mem_0_21 out_data 1 10 }  { Ix_mem_0_21_ap_vld out_vld 1 1 } } }
	Ix_mem_0_22 { ap_vld {  { Ix_mem_0_22 out_data 1 10 }  { Ix_mem_0_22_ap_vld out_vld 1 1 } } }
	Ix_mem_0_23 { ap_vld {  { Ix_mem_0_23 out_data 1 10 }  { Ix_mem_0_23_ap_vld out_vld 1 1 } } }
	Ix_mem_0_24 { ap_vld {  { Ix_mem_0_24 out_data 1 10 }  { Ix_mem_0_24_ap_vld out_vld 1 1 } } }
	Ix_mem_0_25 { ap_vld {  { Ix_mem_0_25 out_data 1 10 }  { Ix_mem_0_25_ap_vld out_vld 1 1 } } }
	Ix_mem_0_26 { ap_vld {  { Ix_mem_0_26 out_data 1 10 }  { Ix_mem_0_26_ap_vld out_vld 1 1 } } }
	Ix_mem_0_27 { ap_vld {  { Ix_mem_0_27 out_data 1 10 }  { Ix_mem_0_27_ap_vld out_vld 1 1 } } }
	Ix_mem_0_28 { ap_vld {  { Ix_mem_0_28 out_data 1 10 }  { Ix_mem_0_28_ap_vld out_vld 1 1 } } }
	Ix_mem_0_29 { ap_vld {  { Ix_mem_0_29 out_data 1 10 }  { Ix_mem_0_29_ap_vld out_vld 1 1 } } }
	Ix_mem_0_30 { ap_vld {  { Ix_mem_0_30 out_data 1 10 }  { Ix_mem_0_30_ap_vld out_vld 1 1 } } }
	Ix_mem_0_31 { ap_vld {  { Ix_mem_0_31 out_data 1 10 }  { Ix_mem_0_31_ap_vld out_vld 1 1 } } }
	p_read65 { ap_none {  { p_read65 in_data 0 10 } } }
	p_read66 { ap_none {  { p_read66 in_data 0 10 } } }
	p_read67 { ap_none {  { p_read67 in_data 0 10 } } }
	p_read68 { ap_none {  { p_read68 in_data 0 10 } } }
	p_read69 { ap_none {  { p_read69 in_data 0 10 } } }
	p_read70 { ap_none {  { p_read70 in_data 0 10 } } }
	p_read71 { ap_none {  { p_read71 in_data 0 10 } } }
	p_read72 { ap_none {  { p_read72 in_data 0 10 } } }
	p_read73 { ap_none {  { p_read73 in_data 0 10 } } }
	p_read74 { ap_none {  { p_read74 in_data 0 10 } } }
	p_read75 { ap_none {  { p_read75 in_data 0 10 } } }
	p_read76 { ap_none {  { p_read76 in_data 0 10 } } }
	p_read77 { ap_none {  { p_read77 in_data 0 10 } } }
	p_read78 { ap_none {  { p_read78 in_data 0 10 } } }
	p_read79 { ap_none {  { p_read79 in_data 0 10 } } }
	p_read80 { ap_none {  { p_read80 in_data 0 10 } } }
	p_read81 { ap_none {  { p_read81 in_data 0 10 } } }
	p_read82 { ap_none {  { p_read82 in_data 0 10 } } }
	p_read83 { ap_none {  { p_read83 in_data 0 10 } } }
	p_read84 { ap_none {  { p_read84 in_data 0 10 } } }
	p_read85 { ap_none {  { p_read85 in_data 0 10 } } }
	p_read86 { ap_none {  { p_read86 in_data 0 10 } } }
	p_read87 { ap_none {  { p_read87 in_data 0 10 } } }
	p_read88 { ap_none {  { p_read88 in_data 0 10 } } }
	p_read89 { ap_none {  { p_read89 in_data 0 10 } } }
	p_read90 { ap_none {  { p_read90 in_data 0 10 } } }
	p_read91 { ap_none {  { p_read91 in_data 0 10 } } }
	p_read92 { ap_none {  { p_read92 in_data 0 10 } } }
	p_read93 { ap_none {  { p_read93 in_data 0 10 } } }
	p_read94 { ap_none {  { p_read94 in_data 0 10 } } }
	p_read95 { ap_none {  { p_read95 in_data 0 10 } } }
	p_read96 { ap_none {  { p_read96 in_data 0 10 } } }
	Iy_mem_0_0 { ap_vld {  { Iy_mem_0_0 out_data 1 10 }  { Iy_mem_0_0_ap_vld out_vld 1 1 } } }
	Iy_mem_0_1 { ap_vld {  { Iy_mem_0_1 out_data 1 10 }  { Iy_mem_0_1_ap_vld out_vld 1 1 } } }
	Iy_mem_0_2 { ap_vld {  { Iy_mem_0_2 out_data 1 10 }  { Iy_mem_0_2_ap_vld out_vld 1 1 } } }
	Iy_mem_0_3 { ap_vld {  { Iy_mem_0_3 out_data 1 10 }  { Iy_mem_0_3_ap_vld out_vld 1 1 } } }
	Iy_mem_0_4 { ap_vld {  { Iy_mem_0_4 out_data 1 10 }  { Iy_mem_0_4_ap_vld out_vld 1 1 } } }
	Iy_mem_0_5 { ap_vld {  { Iy_mem_0_5 out_data 1 10 }  { Iy_mem_0_5_ap_vld out_vld 1 1 } } }
	Iy_mem_0_6 { ap_vld {  { Iy_mem_0_6 out_data 1 10 }  { Iy_mem_0_6_ap_vld out_vld 1 1 } } }
	Iy_mem_0_7 { ap_vld {  { Iy_mem_0_7 out_data 1 10 }  { Iy_mem_0_7_ap_vld out_vld 1 1 } } }
	Iy_mem_0_8 { ap_vld {  { Iy_mem_0_8 out_data 1 10 }  { Iy_mem_0_8_ap_vld out_vld 1 1 } } }
	Iy_mem_0_9 { ap_vld {  { Iy_mem_0_9 out_data 1 10 }  { Iy_mem_0_9_ap_vld out_vld 1 1 } } }
	Iy_mem_0_10 { ap_vld {  { Iy_mem_0_10 out_data 1 10 }  { Iy_mem_0_10_ap_vld out_vld 1 1 } } }
	Iy_mem_0_11 { ap_vld {  { Iy_mem_0_11 out_data 1 10 }  { Iy_mem_0_11_ap_vld out_vld 1 1 } } }
	Iy_mem_0_12 { ap_vld {  { Iy_mem_0_12 out_data 1 10 }  { Iy_mem_0_12_ap_vld out_vld 1 1 } } }
	Iy_mem_0_13 { ap_vld {  { Iy_mem_0_13 out_data 1 10 }  { Iy_mem_0_13_ap_vld out_vld 1 1 } } }
	Iy_mem_0_14 { ap_vld {  { Iy_mem_0_14 out_data 1 10 }  { Iy_mem_0_14_ap_vld out_vld 1 1 } } }
	Iy_mem_0_15 { ap_vld {  { Iy_mem_0_15 out_data 1 10 }  { Iy_mem_0_15_ap_vld out_vld 1 1 } } }
	Iy_mem_0_16 { ap_vld {  { Iy_mem_0_16 out_data 1 10 }  { Iy_mem_0_16_ap_vld out_vld 1 1 } } }
	Iy_mem_0_17 { ap_vld {  { Iy_mem_0_17 out_data 1 10 }  { Iy_mem_0_17_ap_vld out_vld 1 1 } } }
	Iy_mem_0_18 { ap_vld {  { Iy_mem_0_18 out_data 1 10 }  { Iy_mem_0_18_ap_vld out_vld 1 1 } } }
	Iy_mem_0_19 { ap_vld {  { Iy_mem_0_19 out_data 1 10 }  { Iy_mem_0_19_ap_vld out_vld 1 1 } } }
	Iy_mem_0_20 { ap_vld {  { Iy_mem_0_20 out_data 1 10 }  { Iy_mem_0_20_ap_vld out_vld 1 1 } } }
	Iy_mem_0_21 { ap_vld {  { Iy_mem_0_21 out_data 1 10 }  { Iy_mem_0_21_ap_vld out_vld 1 1 } } }
	Iy_mem_0_22 { ap_vld {  { Iy_mem_0_22 out_data 1 10 }  { Iy_mem_0_22_ap_vld out_vld 1 1 } } }
	Iy_mem_0_23 { ap_vld {  { Iy_mem_0_23 out_data 1 10 }  { Iy_mem_0_23_ap_vld out_vld 1 1 } } }
	Iy_mem_0_24 { ap_vld {  { Iy_mem_0_24 out_data 1 10 }  { Iy_mem_0_24_ap_vld out_vld 1 1 } } }
	Iy_mem_0_25 { ap_vld {  { Iy_mem_0_25 out_data 1 10 }  { Iy_mem_0_25_ap_vld out_vld 1 1 } } }
	Iy_mem_0_26 { ap_vld {  { Iy_mem_0_26 out_data 1 10 }  { Iy_mem_0_26_ap_vld out_vld 1 1 } } }
	Iy_mem_0_27 { ap_vld {  { Iy_mem_0_27 out_data 1 10 }  { Iy_mem_0_27_ap_vld out_vld 1 1 } } }
	Iy_mem_0_28 { ap_vld {  { Iy_mem_0_28 out_data 1 10 }  { Iy_mem_0_28_ap_vld out_vld 1 1 } } }
	Iy_mem_0_29 { ap_vld {  { Iy_mem_0_29 out_data 1 10 }  { Iy_mem_0_29_ap_vld out_vld 1 1 } } }
	Iy_mem_0_30 { ap_vld {  { Iy_mem_0_30 out_data 1 10 }  { Iy_mem_0_30_ap_vld out_vld 1 1 } } }
	Iy_mem_0_31 { ap_vld {  { Iy_mem_0_31 out_data 1 10 }  { Iy_mem_0_31_ap_vld out_vld 1 1 } } }
	p_read97 { ap_none {  { p_read97 in_data 0 10 } } }
	p_read98 { ap_none {  { p_read98 in_data 0 10 } } }
	p_read99 { ap_none {  { p_read99 in_data 0 10 } } }
	p_read100 { ap_none {  { p_read100 in_data 0 10 } } }
	p_read101 { ap_none {  { p_read101 in_data 0 10 } } }
	p_read102 { ap_none {  { p_read102 in_data 0 10 } } }
	p_read103 { ap_none {  { p_read103 in_data 0 10 } } }
	p_read104 { ap_none {  { p_read104 in_data 0 10 } } }
	p_read105 { ap_none {  { p_read105 in_data 0 10 } } }
	p_read106 { ap_none {  { p_read106 in_data 0 10 } } }
	p_read107 { ap_none {  { p_read107 in_data 0 10 } } }
	p_read108 { ap_none {  { p_read108 in_data 0 10 } } }
	p_read109 { ap_none {  { p_read109 in_data 0 10 } } }
	p_read110 { ap_none {  { p_read110 in_data 0 10 } } }
	p_read111 { ap_none {  { p_read111 in_data 0 10 } } }
	p_read112 { ap_none {  { p_read112 in_data 0 10 } } }
	p_read113 { ap_none {  { p_read113 in_data 0 10 } } }
	p_read114 { ap_none {  { p_read114 in_data 0 10 } } }
	p_read115 { ap_none {  { p_read115 in_data 0 10 } } }
	p_read116 { ap_none {  { p_read116 in_data 0 10 } } }
	p_read117 { ap_none {  { p_read117 in_data 0 10 } } }
	p_read118 { ap_none {  { p_read118 in_data 0 10 } } }
	p_read119 { ap_none {  { p_read119 in_data 0 10 } } }
	p_read120 { ap_none {  { p_read120 in_data 0 10 } } }
	p_read121 { ap_none {  { p_read121 in_data 0 10 } } }
	p_read122 { ap_none {  { p_read122 in_data 0 10 } } }
	p_read123 { ap_none {  { p_read123 in_data 0 10 } } }
	p_read124 { ap_none {  { p_read124 in_data 0 10 } } }
	p_read125 { ap_none {  { p_read125 in_data 0 10 } } }
	p_read126 { ap_none {  { p_read126 in_data 0 10 } } }
	p_read127 { ap_none {  { p_read127 in_data 0 10 } } }
	p_read128 { ap_none {  { p_read128 in_data 0 10 } } }
	last_pe_score { ap_memory {  { last_pe_score_address0 mem_address 1 10 }  { last_pe_score_ce0 mem_ce 1 1 }  { last_pe_score_we0 mem_we 1 1 }  { last_pe_score_d0 mem_din 1 10 }  { last_pe_score_address1 MemPortADDR2 1 10 }  { last_pe_score_ce1 MemPortCE2 1 1 }  { last_pe_score_q1 MemPortDOUT2 0 10 } } }
	last_pe_scoreIx { ap_memory {  { last_pe_scoreIx_address0 mem_address 1 10 }  { last_pe_scoreIx_ce0 mem_ce 1 1 }  { last_pe_scoreIx_we0 mem_we 1 1 }  { last_pe_scoreIx_d0 mem_din 1 10 }  { last_pe_scoreIx_q0 mem_dout 0 10 } } }
	dp_matrix1_0 { ap_memory {  { dp_matrix1_0_address0 mem_address 1 15 }  { dp_matrix1_0_ce0 mem_ce 1 1 }  { dp_matrix1_0_we0 mem_we 1 1 }  { dp_matrix1_0_d0 mem_din 1 10 }  { dp_matrix1_0_address1 MemPortADDR2 1 15 }  { dp_matrix1_0_ce1 MemPortCE2 1 1 }  { dp_matrix1_0_we1 MemPortWE2 1 1 }  { dp_matrix1_0_d1 MemPortDIN2 1 10 } } }
	dp_matrix1_1 { ap_memory {  { dp_matrix1_1_address0 mem_address 1 15 }  { dp_matrix1_1_ce0 mem_ce 1 1 }  { dp_matrix1_1_we0 mem_we 1 1 }  { dp_matrix1_1_d0 mem_din 1 10 }  { dp_matrix1_1_address1 MemPortADDR2 1 15 }  { dp_matrix1_1_ce1 MemPortCE2 1 1 }  { dp_matrix1_1_we1 MemPortWE2 1 1 }  { dp_matrix1_1_d1 MemPortDIN2 1 10 } } }
	dp_matrix1_2 { ap_memory {  { dp_matrix1_2_address0 mem_address 1 15 }  { dp_matrix1_2_ce0 mem_ce 1 1 }  { dp_matrix1_2_we0 mem_we 1 1 }  { dp_matrix1_2_d0 mem_din 1 10 }  { dp_matrix1_2_address1 MemPortADDR2 1 15 }  { dp_matrix1_2_ce1 MemPortCE2 1 1 }  { dp_matrix1_2_we1 MemPortWE2 1 1 }  { dp_matrix1_2_d1 MemPortDIN2 1 10 } } }
	dp_matrix1_3 { ap_memory {  { dp_matrix1_3_address0 mem_address 1 15 }  { dp_matrix1_3_ce0 mem_ce 1 1 }  { dp_matrix1_3_we0 mem_we 1 1 }  { dp_matrix1_3_d0 mem_din 1 10 }  { dp_matrix1_3_address1 MemPortADDR2 1 15 }  { dp_matrix1_3_ce1 MemPortCE2 1 1 }  { dp_matrix1_3_we1 MemPortWE2 1 1 }  { dp_matrix1_3_d1 MemPortDIN2 1 10 } } }
	dp_matrix1_4 { ap_memory {  { dp_matrix1_4_address0 mem_address 1 15 }  { dp_matrix1_4_ce0 mem_ce 1 1 }  { dp_matrix1_4_we0 mem_we 1 1 }  { dp_matrix1_4_d0 mem_din 1 10 }  { dp_matrix1_4_address1 MemPortADDR2 1 15 }  { dp_matrix1_4_ce1 MemPortCE2 1 1 }  { dp_matrix1_4_we1 MemPortWE2 1 1 }  { dp_matrix1_4_d1 MemPortDIN2 1 10 } } }
	dp_matrix1_5 { ap_memory {  { dp_matrix1_5_address0 mem_address 1 15 }  { dp_matrix1_5_ce0 mem_ce 1 1 }  { dp_matrix1_5_we0 mem_we 1 1 }  { dp_matrix1_5_d0 mem_din 1 10 }  { dp_matrix1_5_address1 MemPortADDR2 1 15 }  { dp_matrix1_5_ce1 MemPortCE2 1 1 }  { dp_matrix1_5_we1 MemPortWE2 1 1 }  { dp_matrix1_5_d1 MemPortDIN2 1 10 } } }
	dp_matrix1_6 { ap_memory {  { dp_matrix1_6_address0 mem_address 1 15 }  { dp_matrix1_6_ce0 mem_ce 1 1 }  { dp_matrix1_6_we0 mem_we 1 1 }  { dp_matrix1_6_d0 mem_din 1 10 }  { dp_matrix1_6_address1 MemPortADDR2 1 15 }  { dp_matrix1_6_ce1 MemPortCE2 1 1 }  { dp_matrix1_6_we1 MemPortWE2 1 1 }  { dp_matrix1_6_d1 MemPortDIN2 1 10 } } }
	dp_matrix1_7 { ap_memory {  { dp_matrix1_7_address0 mem_address 1 15 }  { dp_matrix1_7_ce0 mem_ce 1 1 }  { dp_matrix1_7_we0 mem_we 1 1 }  { dp_matrix1_7_d0 mem_din 1 10 }  { dp_matrix1_7_address1 MemPortADDR2 1 15 }  { dp_matrix1_7_ce1 MemPortCE2 1 1 }  { dp_matrix1_7_we1 MemPortWE2 1 1 }  { dp_matrix1_7_d1 MemPortDIN2 1 10 } } }
	dp_matrix1_8 { ap_memory {  { dp_matrix1_8_address0 mem_address 1 15 }  { dp_matrix1_8_ce0 mem_ce 1 1 }  { dp_matrix1_8_we0 mem_we 1 1 }  { dp_matrix1_8_d0 mem_din 1 10 }  { dp_matrix1_8_address1 MemPortADDR2 1 15 }  { dp_matrix1_8_ce1 MemPortCE2 1 1 }  { dp_matrix1_8_we1 MemPortWE2 1 1 }  { dp_matrix1_8_d1 MemPortDIN2 1 10 } } }
	dp_matrix1_9 { ap_memory {  { dp_matrix1_9_address0 mem_address 1 15 }  { dp_matrix1_9_ce0 mem_ce 1 1 }  { dp_matrix1_9_we0 mem_we 1 1 }  { dp_matrix1_9_d0 mem_din 1 10 }  { dp_matrix1_9_address1 MemPortADDR2 1 15 }  { dp_matrix1_9_ce1 MemPortCE2 1 1 }  { dp_matrix1_9_we1 MemPortWE2 1 1 }  { dp_matrix1_9_d1 MemPortDIN2 1 10 } } }
	dp_matrix1_10 { ap_memory {  { dp_matrix1_10_address0 mem_address 1 15 }  { dp_matrix1_10_ce0 mem_ce 1 1 }  { dp_matrix1_10_we0 mem_we 1 1 }  { dp_matrix1_10_d0 mem_din 1 10 }  { dp_matrix1_10_address1 MemPortADDR2 1 15 }  { dp_matrix1_10_ce1 MemPortCE2 1 1 }  { dp_matrix1_10_we1 MemPortWE2 1 1 }  { dp_matrix1_10_d1 MemPortDIN2 1 10 } } }
	dp_matrix1_11 { ap_memory {  { dp_matrix1_11_address0 mem_address 1 15 }  { dp_matrix1_11_ce0 mem_ce 1 1 }  { dp_matrix1_11_we0 mem_we 1 1 }  { dp_matrix1_11_d0 mem_din 1 10 }  { dp_matrix1_11_address1 MemPortADDR2 1 15 }  { dp_matrix1_11_ce1 MemPortCE2 1 1 }  { dp_matrix1_11_we1 MemPortWE2 1 1 }  { dp_matrix1_11_d1 MemPortDIN2 1 10 } } }
	dp_matrix1_12 { ap_memory {  { dp_matrix1_12_address0 mem_address 1 15 }  { dp_matrix1_12_ce0 mem_ce 1 1 }  { dp_matrix1_12_we0 mem_we 1 1 }  { dp_matrix1_12_d0 mem_din 1 10 }  { dp_matrix1_12_address1 MemPortADDR2 1 15 }  { dp_matrix1_12_ce1 MemPortCE2 1 1 }  { dp_matrix1_12_we1 MemPortWE2 1 1 }  { dp_matrix1_12_d1 MemPortDIN2 1 10 } } }
	dp_matrix1_13 { ap_memory {  { dp_matrix1_13_address0 mem_address 1 15 }  { dp_matrix1_13_ce0 mem_ce 1 1 }  { dp_matrix1_13_we0 mem_we 1 1 }  { dp_matrix1_13_d0 mem_din 1 10 }  { dp_matrix1_13_address1 MemPortADDR2 1 15 }  { dp_matrix1_13_ce1 MemPortCE2 1 1 }  { dp_matrix1_13_we1 MemPortWE2 1 1 }  { dp_matrix1_13_d1 MemPortDIN2 1 10 } } }
	dp_matrix1_14 { ap_memory {  { dp_matrix1_14_address0 mem_address 1 15 }  { dp_matrix1_14_ce0 mem_ce 1 1 }  { dp_matrix1_14_we0 mem_we 1 1 }  { dp_matrix1_14_d0 mem_din 1 10 }  { dp_matrix1_14_address1 MemPortADDR2 1 15 }  { dp_matrix1_14_ce1 MemPortCE2 1 1 }  { dp_matrix1_14_we1 MemPortWE2 1 1 }  { dp_matrix1_14_d1 MemPortDIN2 1 10 } } }
	dp_matrix1_15 { ap_memory {  { dp_matrix1_15_address0 mem_address 1 15 }  { dp_matrix1_15_ce0 mem_ce 1 1 }  { dp_matrix1_15_we0 mem_we 1 1 }  { dp_matrix1_15_d0 mem_din 1 10 }  { dp_matrix1_15_address1 MemPortADDR2 1 15 }  { dp_matrix1_15_ce1 MemPortCE2 1 1 }  { dp_matrix1_15_we1 MemPortWE2 1 1 }  { dp_matrix1_15_d1 MemPortDIN2 1 10 } } }
}
