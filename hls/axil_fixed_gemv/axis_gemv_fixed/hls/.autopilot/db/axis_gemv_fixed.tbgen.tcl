set moduleName axis_gemv_fixed
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {axis_gemv_fixed}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ strm_in_V_data_V int 32 regular {axi_s 0 volatile  { strm_in Data } }  }
	{ strm_in_V_keep_V int 4 regular {axi_s 0 volatile  { strm_in Keep } }  }
	{ strm_in_V_strb_V int 4 regular {axi_s 0 volatile  { strm_in Strb } }  }
	{ strm_in_V_last_V int 1 regular {axi_s 0 volatile  { strm_in Last } }  }
	{ strm_out_V_data_V int 32 regular {axi_s 1 volatile  { strm_out Data } }  }
	{ strm_out_V_keep_V int 4 regular {axi_s 1 volatile  { strm_out Keep } }  }
	{ strm_out_V_strb_V int 4 regular {axi_s 1 volatile  { strm_out Strb } }  }
	{ strm_out_V_last_V int 1 regular {axi_s 1 volatile  { strm_out Last } }  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "strm_in_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "strm_in_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "strm_in_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "strm_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "strm_out_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "strm_out_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "strm_out_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "strm_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ strm_in_TDATA sc_in sc_lv 32 signal 0 } 
	{ strm_in_TVALID sc_in sc_logic 1 invld 3 } 
	{ strm_in_TREADY sc_out sc_logic 1 inacc 3 } 
	{ strm_in_TKEEP sc_in sc_lv 4 signal 1 } 
	{ strm_in_TSTRB sc_in sc_lv 4 signal 2 } 
	{ strm_in_TLAST sc_in sc_lv 1 signal 3 } 
	{ strm_out_TDATA sc_out sc_lv 32 signal 4 } 
	{ strm_out_TVALID sc_out sc_logic 1 outvld 7 } 
	{ strm_out_TREADY sc_in sc_logic 1 outacc 7 } 
	{ strm_out_TKEEP sc_out sc_lv 4 signal 5 } 
	{ strm_out_TSTRB sc_out sc_lv 4 signal 6 } 
	{ strm_out_TLAST sc_out sc_lv 1 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "strm_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm_in_V_data_V", "role": "default" }} , 
 	{ "name": "strm_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "strm_in_V_last_V", "role": "default" }} , 
 	{ "name": "strm_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "strm_in_V_last_V", "role": "default" }} , 
 	{ "name": "strm_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "strm_in_V_keep_V", "role": "default" }} , 
 	{ "name": "strm_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "strm_in_V_strb_V", "role": "default" }} , 
 	{ "name": "strm_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in_V_last_V", "role": "default" }} , 
 	{ "name": "strm_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm_out_V_data_V", "role": "default" }} , 
 	{ "name": "strm_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "strm_out_V_last_V", "role": "default" }} , 
 	{ "name": "strm_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "strm_out_V_last_V", "role": "default" }} , 
 	{ "name": "strm_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "strm_out_V_keep_V", "role": "default" }} , 
 	{ "name": "strm_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "strm_out_V_strb_V", "role": "default" }} , 
 	{ "name": "strm_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "7", "8", "9", "10", "11", "12", "13", "14"],
		"CDFG" : "axis_gemv_fixed",
		"Protocol" : "ap_ctrl_none",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "262669",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "strm_in_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "strm_in",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76", "Port" : "strm_in_V_data_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "4", "SubInstance" : "grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91", "Port" : "strm_in_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "strm_in_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "strm_in",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76", "Port" : "strm_in_V_keep_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "4", "SubInstance" : "grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91", "Port" : "strm_in_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "strm_in_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "strm_in",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76", "Port" : "strm_in_V_strb_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "4", "SubInstance" : "grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91", "Port" : "strm_in_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "strm_in_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "strm_in",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76", "Port" : "strm_in_V_last_V", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "4", "SubInstance" : "grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91", "Port" : "strm_in_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "strm_out_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "strm_out",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91", "Port" : "strm_out_V_data_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "strm_out_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "strm_out",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91", "Port" : "strm_out_V_keep_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "strm_out_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "strm_out",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91", "Port" : "strm_out_V_strb_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "strm_out_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "strm_out",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91", "Port" : "strm_out_V_last_V", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "localmem", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76", "Port" : "localmem", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "4", "SubInstance" : "grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91", "Port" : "localmem", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91", "Port" : "acc", "Inst_start_state" : "5", "Inst_end_state" : "6"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.localmem_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2", "EstimateLatencyMax" : "514",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "strm_in_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "strm_in",
				"BlockSignal" : [
					{"Name" : "strm_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "strm_in_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "strm_in"},
			{"Name" : "strm_in_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "strm_in"},
			{"Name" : "strm_in_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "strm_in"},
			{"Name" : "i_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "localmem", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_25_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_state1", "FirstStateIter" : "", "FirstStateBlock" : "ap_ST_fsm_state1_blk", "LastState" : "ap_ST_fsm_state1", "LastStateIter" : "", "LastStateBlock" : "ap_ST_fsm_state1_blk", "QuitState" : "ap_ST_fsm_state1", "QuitStateIter" : "", "QuitStateBlock" : "ap_ST_fsm_state1_blk", "OneDepthLoop" : "1", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91", "Parent" : "0", "Child" : ["5", "6"],
		"CDFG" : "axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "262149",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "strm_in_V_data_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "strm_in",
				"BlockSignal" : [
					{"Name" : "strm_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "strm_in_V_keep_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "strm_in"},
			{"Name" : "strm_in_V_strb_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "strm_in"},
			{"Name" : "strm_in_V_last_V", "Type" : "Axis", "Direction" : "I", "BaseName" : "strm_in"},
			{"Name" : "strm_out_V_data_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "strm_out",
				"BlockSignal" : [
					{"Name" : "strm_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "strm_out_V_keep_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "strm_out"},
			{"Name" : "strm_out_V_strb_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "strm_out"},
			{"Name" : "strm_out_V_last_V", "Type" : "Axis", "Direction" : "O", "BaseName" : "strm_out"},
			{"Name" : "i_0260", "Type" : "None", "Direction" : "I"},
			{"Name" : "localmem", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "acc", "Type" : "OVld", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_32_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91.mul_25s_25s_50_1_1_U7", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_strm_in_V_data_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_strm_in_V_keep_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_strm_in_V_strb_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_strm_in_V_last_V_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_strm_out_V_data_V_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_strm_out_V_keep_V_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_strm_out_V_strb_V_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_strm_out_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	axis_gemv_fixed {
		strm_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		strm_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		strm_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		strm_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		strm_out_V_data_V {Type O LastRead -1 FirstWrite 3}
		strm_out_V_keep_V {Type O LastRead -1 FirstWrite 3}
		strm_out_V_strb_V {Type O LastRead -1 FirstWrite 3}
		strm_out_V_last_V {Type O LastRead -1 FirstWrite 3}
		localmem {Type IO LastRead -1 FirstWrite -1}
		acc {Type IO LastRead -1 FirstWrite -1}}
	axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1 {
		strm_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		strm_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		strm_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		strm_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		i_out {Type O LastRead -1 FirstWrite 0}
		localmem {Type O LastRead -1 FirstWrite 0}}
	axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2 {
		strm_in_V_data_V {Type I LastRead 0 FirstWrite -1}
		strm_in_V_keep_V {Type I LastRead 0 FirstWrite -1}
		strm_in_V_strb_V {Type I LastRead 0 FirstWrite -1}
		strm_in_V_last_V {Type I LastRead 0 FirstWrite -1}
		strm_out_V_data_V {Type O LastRead -1 FirstWrite 3}
		strm_out_V_keep_V {Type O LastRead -1 FirstWrite 3}
		strm_out_V_strb_V {Type O LastRead -1 FirstWrite 3}
		strm_out_V_last_V {Type O LastRead -1 FirstWrite 3}
		i_0260 {Type I LastRead 0 FirstWrite -1}
		localmem {Type I LastRead 0 FirstWrite -1}
		acc {Type IO LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "13", "Max" : "262669"}
	, {"Name" : "Interval", "Min" : "14", "Max" : "262670"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	strm_in_V_data_V { axis {  { strm_in_TDATA in_data 0 32 } } }
	strm_in_V_keep_V { axis {  { strm_in_TKEEP in_data 0 4 } } }
	strm_in_V_strb_V { axis {  { strm_in_TSTRB in_data 0 4 } } }
	strm_in_V_last_V { axis {  { strm_in_TVALID in_vld 0 1 }  { strm_in_TREADY in_acc 1 1 }  { strm_in_TLAST in_data 0 1 } } }
	strm_out_V_data_V { axis {  { strm_out_TDATA out_data 1 32 } } }
	strm_out_V_keep_V { axis {  { strm_out_TKEEP out_data 1 4 } } }
	strm_out_V_strb_V { axis {  { strm_out_TSTRB out_data 1 4 } } }
	strm_out_V_last_V { axis {  { strm_out_TVALID out_vld 1 1 }  { strm_out_TREADY out_acc 0 1 }  { strm_out_TLAST out_data 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
