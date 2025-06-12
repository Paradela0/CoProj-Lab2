set moduleName axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict localmem { MEM_WIDTH 25 MEM_SIZE 2048 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ strm_in_V_data_V int 32 regular {axi_s 0 volatile  { strm_in Data } }  }
	{ strm_in_V_keep_V int 4 regular {axi_s 0 volatile  { strm_in Keep } }  }
	{ strm_in_V_strb_V int 4 regular {axi_s 0 volatile  { strm_in Strb } }  }
	{ strm_in_V_last_V int 1 regular {axi_s 0 volatile  { strm_in Last } }  }
	{ strm_out_V_data_V int 32 regular {axi_s 1 volatile  { strm_out Data } }  }
	{ strm_out_V_keep_V int 4 regular {axi_s 1 volatile  { strm_out Keep } }  }
	{ strm_out_V_strb_V int 4 regular {axi_s 1 volatile  { strm_out Strb } }  }
	{ strm_out_V_last_V int 1 regular {axi_s 1 volatile  { strm_out Last } }  }
	{ i_0260 int 10 regular  }
	{ localmem int 25 regular {array 512 { 1 3 } 1 1 } {global 0}  }
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
 	{ "Name" : "strm_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "i_0260", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "localmem", "interface" : "memory", "bitwidth" : 25, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ strm_in_TVALID sc_in sc_logic 1 invld 0 } 
	{ strm_out_TREADY sc_in sc_logic 1 outacc 4 } 
	{ strm_in_TDATA sc_in sc_lv 32 signal 0 } 
	{ strm_in_TREADY sc_out sc_logic 1 inacc 3 } 
	{ strm_in_TKEEP sc_in sc_lv 4 signal 1 } 
	{ strm_in_TSTRB sc_in sc_lv 4 signal 2 } 
	{ strm_in_TLAST sc_in sc_lv 1 signal 3 } 
	{ strm_out_TDATA sc_out sc_lv 32 signal 4 } 
	{ strm_out_TVALID sc_out sc_logic 1 outvld 7 } 
	{ strm_out_TKEEP sc_out sc_lv 4 signal 5 } 
	{ strm_out_TSTRB sc_out sc_lv 4 signal 6 } 
	{ strm_out_TLAST sc_out sc_lv 1 signal 7 } 
	{ i_0260 sc_in sc_lv 10 signal 8 } 
	{ localmem_address0 sc_out sc_lv 9 signal 9 } 
	{ localmem_ce0 sc_out sc_logic 1 signal 9 } 
	{ localmem_q0 sc_in sc_lv 25 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "strm_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "strm_in_V_data_V", "role": "default" }} , 
 	{ "name": "strm_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "strm_out_V_data_V", "role": "default" }} , 
 	{ "name": "strm_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm_in_V_data_V", "role": "default" }} , 
 	{ "name": "strm_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "strm_in_V_last_V", "role": "default" }} , 
 	{ "name": "strm_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "strm_in_V_keep_V", "role": "default" }} , 
 	{ "name": "strm_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "strm_in_V_strb_V", "role": "default" }} , 
 	{ "name": "strm_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_in_V_last_V", "role": "default" }} , 
 	{ "name": "strm_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "strm_out_V_data_V", "role": "default" }} , 
 	{ "name": "strm_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "strm_out_V_last_V", "role": "default" }} , 
 	{ "name": "strm_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "strm_out_V_keep_V", "role": "default" }} , 
 	{ "name": "strm_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "strm_out_V_strb_V", "role": "default" }} , 
 	{ "name": "strm_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "strm_out_V_last_V", "role": "default" }} , 
 	{ "name": "i_0260", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "i_0260", "role": "default" }} , 
 	{ "name": "localmem_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "localmem", "role": "address0" }} , 
 	{ "name": "localmem_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "localmem", "role": "ce0" }} , 
 	{ "name": "localmem_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "localmem", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_25s_25s_50_1_1_U7", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "5", "Max" : "262149"}
	, {"Name" : "Interval", "Min" : "5", "Max" : "262149"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	strm_in_V_data_V { axis {  { strm_in_TVALID in_vld 0 1 }  { strm_in_TDATA in_data 0 32 } } }
	strm_in_V_keep_V { axis {  { strm_in_TKEEP in_data 0 4 } } }
	strm_in_V_strb_V { axis {  { strm_in_TSTRB in_data 0 4 } } }
	strm_in_V_last_V { axis {  { strm_in_TREADY in_acc 1 1 }  { strm_in_TLAST in_data 0 1 } } }
	strm_out_V_data_V { axis {  { strm_out_TREADY out_acc 0 1 }  { strm_out_TDATA out_data 1 32 } } }
	strm_out_V_keep_V { axis {  { strm_out_TKEEP out_data 1 4 } } }
	strm_out_V_strb_V { axis {  { strm_out_TSTRB out_data 1 4 } } }
	strm_out_V_last_V { axis {  { strm_out_TVALID out_vld 1 1 }  { strm_out_TLAST out_data 1 1 } } }
	i_0260 { ap_none {  { i_0260 in_data 0 10 } } }
	localmem { ap_memory {  { localmem_address0 mem_address 1 9 }  { localmem_ce0 mem_ce 1 1 }  { localmem_q0 mem_dout 0 25 } } }
}
