set SynModuleInfo {
  {SRCNAME seq_align_Pipeline_VITIS_LOOP_76_1 MODELNAME seq_align_Pipeline_VITIS_LOOP_76_1 RTLNAME seq_align_multiple_seq_align_Pipeline_VITIS_LOOP_76_1
    SUBMODULES {
      {MODELNAME seq_align_multiple_flow_control_loop_pipe_sequential_init RTLNAME seq_align_multiple_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME seq_align_multiple_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME seq_align_Pipeline_kernel_kernel1 MODELNAME seq_align_Pipeline_kernel_kernel1 RTLNAME seq_align_multiple_seq_align_Pipeline_kernel_kernel1
    SUBMODULES {
      {MODELNAME seq_align_multiple_mux_164_2_1_1 RTLNAME seq_align_multiple_mux_164_2_1_1 BINDTYPE op TYPE mux IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME seq_align MODELNAME seq_align RTLNAME seq_align_multiple_seq_align
    SUBMODULES {
      {MODELNAME seq_align_multiple_seq_align_local_reference_V_RAM_1WNR_AUTO_1R1W RTLNAME seq_align_multiple_seq_align_local_reference_V_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME seq_align_multiple MODELNAME seq_align_multiple RTLNAME seq_align_multiple IS_TOP 1}
}
