set SynModuleInfo {
  {SRCNAME {ArrSet<vector<ap_fixed<16, 11, 5, 3, 0>, 3ul>, 256>.1} MODELNAME ArrSet_vector_ap_fixed_16_11_5_3_0_3ul_256_1 RTLNAME seq_align_multiple_static_ArrSet_vector_ap_fixed_16_11_5_3_0_3ul_256_1}
  {SRCNAME AlignStatic_Pipeline_VITIS_LOOP_128_1 MODELNAME AlignStatic_Pipeline_VITIS_LOOP_128_1 RTLNAME seq_align_multiple_static_AlignStatic_Pipeline_VITIS_LOOP_128_1
    SUBMODULES {
      {MODELNAME seq_align_multiple_static_flow_control_loop_pipe_sequential_init RTLNAME seq_align_multiple_static_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME seq_align_multiple_static_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME {ArrSet<vector<ap_fixed<16, 11, 5, 3, 0>, 3ul>, 256>} MODELNAME ArrSet_vector_ap_fixed_16_11_5_3_0_3ul_256_s RTLNAME seq_align_multiple_static_ArrSet_vector_ap_fixed_16_11_5_3_0_3ul_256_s}
  {SRCNAME AlignStatic_Pipeline_VITIS_LOOP_117_1 MODELNAME AlignStatic_Pipeline_VITIS_LOOP_117_1 RTLNAME seq_align_multiple_static_AlignStatic_Pipeline_VITIS_LOOP_117_1}
  {SRCNAME PrepareLocalQuery MODELNAME PrepareLocalQuery RTLNAME seq_align_multiple_static_PrepareLocalQuery}
  {SRCNAME CopyColScore MODELNAME CopyColScore RTLNAME seq_align_multiple_static_CopyColScore}
  {SRCNAME UpdatePEMaximum MODELNAME UpdatePEMaximum RTLNAME seq_align_multiple_static_UpdatePEMaximum}
  {SRCNAME ChunkCompute_Pipeline_VITIS_LOOP_347_1 MODELNAME ChunkCompute_Pipeline_VITIS_LOOP_347_1 RTLNAME seq_align_multiple_static_ChunkCompute_Pipeline_VITIS_LOOP_347_1}
  {SRCNAME ChunkCompute MODELNAME ChunkCompute RTLNAME seq_align_multiple_static_ChunkCompute}
  {SRCNAME AlignStatic_Pipeline_4 MODELNAME AlignStatic_Pipeline_4 RTLNAME seq_align_multiple_static_AlignStatic_Pipeline_4}
  {SRCNAME AlignStatic_Pipeline_VITIS_LOOP_463_1 MODELNAME AlignStatic_Pipeline_VITIS_LOOP_463_1 RTLNAME seq_align_multiple_static_AlignStatic_Pipeline_VITIS_LOOP_463_1
    SUBMODULES {
      {MODELNAME seq_align_multiple_static_mux_32_5_16_1_1 RTLNAME seq_align_multiple_static_mux_32_5_16_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME seq_align_multiple_static_mux_32_5_32_1_1 RTLNAME seq_align_multiple_static_mux_32_5_32_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME seq_align_multiple_static_AlignStatic_Pipeline_VITIS_LOOP_463_1_local_max_pe_ROM_AUTO_1R RTLNAME seq_align_multiple_static_AlignStatic_Pipeline_VITIS_LOOP_463_1_local_max_pe_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Traceback_Pipeline_traceback_loop MODELNAME Traceback_Pipeline_traceback_loop RTLNAME seq_align_multiple_static_Traceback_Pipeline_traceback_loop
    SUBMODULES {
      {MODELNAME seq_align_multiple_static_mux_32_5_3_1_1 RTLNAME seq_align_multiple_static_mux_32_5_3_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME Traceback MODELNAME Traceback RTLNAME seq_align_multiple_static_Traceback
    SUBMODULES {
      {MODELNAME seq_align_multiple_static_mux_32_5_2_1_1 RTLNAME seq_align_multiple_static_mux_32_5_2_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME AlignStatic MODELNAME AlignStatic RTLNAME seq_align_multiple_static_AlignStatic
    SUBMODULES {
      {MODELNAME seq_align_multiple_static_AlignStatic_init_col_score_RAM_AUTO_1R1W RTLNAME seq_align_multiple_static_AlignStatic_init_col_score_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME seq_align_multiple_static_AlignStatic_tbp_matrix_RAM_AUTO_1R1W RTLNAME seq_align_multiple_static_AlignStatic_tbp_matrix_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME seq_align_multiple_static_AlignStatic_local_init_col_score_RAM_AUTO_1R1W RTLNAME seq_align_multiple_static_AlignStatic_local_init_col_score_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME seq_align_multiple_static_AlignStatic_local_init_col_score_2_RAM_AUTO_1R1W RTLNAME seq_align_multiple_static_AlignStatic_local_init_col_score_2_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME seq_align_multiple_static_AlignStatic_preserved_row_buffer_RAM_AUTO_1R1W RTLNAME seq_align_multiple_static_AlignStatic_preserved_row_buffer_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME seq_align_multiple_static MODELNAME seq_align_multiple_static RTLNAME seq_align_multiple_static IS_TOP 1
    SUBMODULES {
      {MODELNAME seq_align_multiple_static_gmem_0_m_axi RTLNAME seq_align_multiple_static_gmem_0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME seq_align_multiple_static_gmem_m_axi RTLNAME seq_align_multiple_static_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME seq_align_multiple_static_control_s_axi RTLNAME seq_align_multiple_static_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
