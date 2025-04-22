set SynModuleInfo {
  {SRCNAME proc_1_1_Pipeline_VITIS_LOOP_32_1 MODELNAME proc_1_1_Pipeline_VITIS_LOOP_32_1 RTLNAME example_proc_1_1_Pipeline_VITIS_LOOP_32_1
    SUBMODULES {
      {MODELNAME example_flow_control_loop_pipe_sequential_init RTLNAME example_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME example_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME proc_1_1_Pipeline_VITIS_LOOP_36_2 MODELNAME proc_1_1_Pipeline_VITIS_LOOP_36_2 RTLNAME example_proc_1_1_Pipeline_VITIS_LOOP_36_2}
  {SRCNAME proc_1_1 MODELNAME proc_1_1 RTLNAME example_proc_1_1}
  {SRCNAME proc_1_2_Pipeline_VITIS_LOOP_45_1 MODELNAME proc_1_2_Pipeline_VITIS_LOOP_45_1 RTLNAME example_proc_1_2_Pipeline_VITIS_LOOP_45_1}
  {SRCNAME proc_1_2_Pipeline_VITIS_LOOP_49_2 MODELNAME proc_1_2_Pipeline_VITIS_LOOP_49_2 RTLNAME example_proc_1_2_Pipeline_VITIS_LOOP_49_2}
  {SRCNAME proc_1_2 MODELNAME proc_1_2 RTLNAME example_proc_1_2}
  {SRCNAME proc_1 MODELNAME proc_1 RTLNAME example_proc_1
    SUBMODULES {
      {MODELNAME example_fifo_w32_d2_S RTLNAME example_fifo_w32_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME example_start_for_proc_1_2_U0 RTLNAME example_start_for_proc_1_2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME proc_2_1_Pipeline_VITIS_LOOP_67_1 MODELNAME proc_2_1_Pipeline_VITIS_LOOP_67_1 RTLNAME example_proc_2_1_Pipeline_VITIS_LOOP_67_1}
  {SRCNAME proc_2_1_Pipeline_VITIS_LOOP_71_2 MODELNAME proc_2_1_Pipeline_VITIS_LOOP_71_2 RTLNAME example_proc_2_1_Pipeline_VITIS_LOOP_71_2}
  {SRCNAME proc_2_1 MODELNAME proc_2_1 RTLNAME example_proc_2_1}
  {SRCNAME proc_2_2 MODELNAME proc_2_2 RTLNAME example_proc_2_2
    SUBMODULES {
      {MODELNAME example_flow_control_loop_pipe RTLNAME example_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME example_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME proc_2 MODELNAME proc_2 RTLNAME example_proc_2
    SUBMODULES {
      {MODELNAME example_fifo_w32_d2_S_x RTLNAME example_fifo_w32_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME example_start_for_proc_2_2_U0 RTLNAME example_start_for_proc_2_2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME example MODELNAME example RTLNAME example IS_TOP 1
    SUBMODULES {
      {MODELNAME example_fifo_w32_d2_S_x0 RTLNAME example_fifo_w32_d2_S_x0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME example_start_for_proc_2_U0 RTLNAME example_start_for_proc_2_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
}
