set ModuleHierarchy {[{
"Name" : "seq_align_multiple_static","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_AlignStatic_fu_404","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_ArrSet_vector_ap_fixed_16_11_5_3_0_3ul_256_1_fu_704","ID" : "2","Type" : "sequential"},
		{"Name" : "grp_ArrSet_vector_ap_fixed_16_11_5_3_0_3ul_256_s_fu_716","ID" : "3","Type" : "sequential"},
		{"Name" : "grp_AlignStatic_Pipeline_VITIS_LOOP_128_1_fu_728","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_128_1","ID" : "5","Type" : "pipeline"},]},
		{"Name" : "grp_AlignStatic_Pipeline_VITIS_LOOP_117_1_fu_737","ID" : "6","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_117_1","ID" : "7","Type" : "pipeline"},]},
		{"Name" : "grp_AlignStatic_Pipeline_VITIS_LOOP_463_1_fu_746","ID" : "8","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_463_1","ID" : "9","Type" : "pipeline"},]},
		{"Name" : "grp_Traceback_fu_1059","ID" : "10","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_Traceback_Pipeline_traceback_loop_fu_552","ID" : "11","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "traceback_loop","ID" : "12","Type" : "pipeline"},]},]},],
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_559_1","ID" : "13","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_PrepareLocalQuery_fu_851","ID" : "14","Type" : "sequential"},
		{"Name" : "grp_CopyColScore_fu_860","ID" : "15","Type" : "sequential"},
		{"Name" : "grp_ChunkCompute_fu_869","ID" : "16","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_ChunkCompute_Pipeline_VITIS_LOOP_347_1_fu_1598","ID" : "17","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_347_1","ID" : "18","Type" : "pipeline",
					"SubInsts" : [
					{"Name" : "call_ret_UpdatePEMaximum_fu_16690","ID" : "19","Type" : "pipeline"},]},]},]},
		{"Name" : "grp_AlignStatic_Pipeline_4_fu_1051","ID" : "20","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "Loop 1","ID" : "21","Type" : "pipeline"},]},]},]},]
}]}