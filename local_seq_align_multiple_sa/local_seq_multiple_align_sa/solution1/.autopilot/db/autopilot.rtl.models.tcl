set SynModuleInfo {
  {SRCNAME seq_align_global_Pipeline_local_dpmem_loop_VITIS_LOOP_767_1 MODELNAME seq_align_global_Pipeline_local_dpmem_loop_VITIS_LOOP_767_1 RTLNAME seq_align_multiple_seq_align_global_Pipeline_local_dpmem_loop_VITIS_LOOP_767_1
    SUBMODULES {
      {MODELNAME seq_align_multiple_flow_control_loop_pipe_sequential_init RTLNAME seq_align_multiple_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME seq_align_multiple_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME seq_align_global_Pipeline_VITIS_LOOP_773_2 MODELNAME seq_align_global_Pipeline_VITIS_LOOP_773_2 RTLNAME seq_align_multiple_seq_align_global_Pipeline_VITIS_LOOP_773_2}
  {SRCNAME seq_align_global_Pipeline_VITIS_LOOP_786_4_VITIS_LOOP_788_5 MODELNAME seq_align_global_Pipeline_VITIS_LOOP_786_4_VITIS_LOOP_788_5 RTLNAME seq_align_multiple_seq_align_global_Pipeline_VITIS_LOOP_786_4_VITIS_LOOP_788_5}
  {SRCNAME seq_align_global_Pipeline_VITIS_LOOP_795_6 MODELNAME seq_align_global_Pipeline_VITIS_LOOP_795_6 RTLNAME seq_align_multiple_seq_align_global_Pipeline_VITIS_LOOP_795_6}
  {SRCNAME seq_align_global_Pipeline_VITIS_LOOP_828_9 MODELNAME seq_align_global_Pipeline_VITIS_LOOP_828_9 RTLNAME seq_align_multiple_seq_align_global_Pipeline_VITIS_LOOP_828_9}
  {SRCNAME seq_align_global_Pipeline_kernel1 MODELNAME seq_align_global_Pipeline_kernel1 RTLNAME seq_align_multiple_seq_align_global_Pipeline_kernel1
    SUBMODULES {
      {MODELNAME seq_align_multiple_mux_325_8_1_1 RTLNAME seq_align_multiple_mux_325_8_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME seq_align_global_Pipeline_traceback_logic MODELNAME seq_align_global_Pipeline_traceback_logic RTLNAME seq_align_multiple_seq_align_global_Pipeline_traceback_logic
    SUBMODULES {
      {MODELNAME seq_align_multiple_mux_325_2_1_1 RTLNAME seq_align_multiple_mux_325_2_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME seq_align_global MODELNAME seq_align_global RTLNAME seq_align_multiple_seq_align_global
    SUBMODULES {
      {MODELNAME seq_align_multiple_seq_align_global_traceback_V_RAM_AUTO_1R1W RTLNAME seq_align_multiple_seq_align_global_traceback_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME seq_align_multiple_seq_align_global_traceback_V_1_RAM_AUTO_1R1W RTLNAME seq_align_multiple_seq_align_global_traceback_V_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME seq_align_multiple_seq_align_global_last_pe_score_RAM_AUTO_1R1W RTLNAME seq_align_multiple_seq_align_global_last_pe_score_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME seq_align_multiple_seq_align_global_local_reference_RAM_1WNR_AUTO_1R1W RTLNAME seq_align_multiple_seq_align_global_local_reference_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME seq_align_multiple MODELNAME seq_align_multiple RTLNAME seq_align_multiple IS_TOP 1
    SUBMODULES {
      {MODELNAME seq_align_multiple_gmem_m_axi RTLNAME seq_align_multiple_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME seq_align_multiple_control_s_axi RTLNAME seq_align_multiple_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME seq_align_multiple_regslice_both RTLNAME seq_align_multiple_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME seq_align_multiple_regslice_both_U}
    }
  }
}
