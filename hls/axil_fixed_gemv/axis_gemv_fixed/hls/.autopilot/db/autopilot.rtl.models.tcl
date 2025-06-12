set SynModuleInfo {
  {SRCNAME axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1 MODELNAME axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1 RTLNAME axis_gemv_fixed_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1
    SUBMODULES {
      {MODELNAME axis_gemv_fixed_flow_control_loop_pipe_sequential_init RTLNAME axis_gemv_fixed_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME axis_gemv_fixed_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2 MODELNAME axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2 RTLNAME axis_gemv_fixed_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2
    SUBMODULES {
      {MODELNAME axis_gemv_fixed_mul_25s_25s_50_1_1 RTLNAME axis_gemv_fixed_mul_25s_25s_50_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME axis_gemv_fixed MODELNAME axis_gemv_fixed RTLNAME axis_gemv_fixed IS_TOP 1
    SUBMODULES {
      {MODELNAME axis_gemv_fixed_localmem_RAM_AUTO_1R1W RTLNAME axis_gemv_fixed_localmem_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME axis_gemv_fixed_regslice_both RTLNAME axis_gemv_fixed_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
