set SynModuleInfo {
  {SRCNAME seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2 MODELNAME seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2 RTLNAME seq_align_multiple_seq_align_Pipeline_VITIS_LOOP_78_1_VITIS_LOOP_79_2
    SUBMODULES {
      {MODELNAME seq_align_multiple_flow_control_loop_pipe_sequential_init RTLNAME seq_align_multiple_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME seq_align_multiple_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3 MODELNAME seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3 RTLNAME seq_align_multiple_seq_align_Pipeline_local_dpmem_loop_VITIS_LOOP_86_3}
  {SRCNAME seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4 MODELNAME seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4 RTLNAME seq_align_multiple_seq_align_Pipeline_local_Ixmem_loop_VITIS_LOOP_93_4}
  {SRCNAME seq_align_Pipeline_VITIS_LOOP_100_5 MODELNAME seq_align_Pipeline_VITIS_LOOP_100_5 RTLNAME seq_align_multiple_seq_align_Pipeline_VITIS_LOOP_100_5}
  {SRCNAME seq_align_Pipeline_VITIS_LOOP_117_6 MODELNAME seq_align_Pipeline_VITIS_LOOP_117_6 RTLNAME seq_align_multiple_seq_align_Pipeline_VITIS_LOOP_117_6}
  {SRCNAME seq_align_Pipeline_kernel_kernel1 MODELNAME seq_align_Pipeline_kernel_kernel1 RTLNAME seq_align_multiple_seq_align_Pipeline_kernel_kernel1
    SUBMODULES {
      {MODELNAME seq_align_multiple_mux_164_2_1_1 RTLNAME seq_align_multiple_mux_164_2_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME seq_align MODELNAME seq_align RTLNAME seq_align_multiple_seq_align
    SUBMODULES {
      {MODELNAME seq_align_multiple_seq_align_dp_matrix_V_RAM_AUTO_1R1W RTLNAME seq_align_multiple_seq_align_dp_matrix_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME seq_align_multiple_seq_align_last_pe_score_V_RAM_AUTO_1R1W RTLNAME seq_align_multiple_seq_align_last_pe_score_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME seq_align_multiple_seq_align_last_pe_scoreIx_V_RAM_AUTO_1R1W RTLNAME seq_align_multiple_seq_align_last_pe_scoreIx_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME seq_align_multiple_seq_align_local_reference_V_RAM_1WNR_AUTO_1R1W RTLNAME seq_align_multiple_seq_align_local_reference_V_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME seq_align_multiple MODELNAME seq_align_multiple RTLNAME seq_align_multiple IS_TOP 1}
}
