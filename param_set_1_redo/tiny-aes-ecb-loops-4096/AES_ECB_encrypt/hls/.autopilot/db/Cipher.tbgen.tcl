set moduleName Cipher
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
set DLRegFirstOffset 0
set DLRegItemOffset 0
set C_modelName {Cipher}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict buf_r { MEM_WIDTH 8 MEM_SIZE 16 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ buf_r int 8 regular {array 16 { 2 2 } 1 1 }  }
	{ RoundKey_val int 1536 regular  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "buf_r", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "RoundKey_val", "interface" : "wire", "bitwidth" : 1536, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buf_r_address0 sc_out sc_lv 4 signal 0 } 
	{ buf_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ buf_r_we0 sc_out sc_logic 1 signal 0 } 
	{ buf_r_d0 sc_out sc_lv 8 signal 0 } 
	{ buf_r_q0 sc_in sc_lv 8 signal 0 } 
	{ buf_r_address1 sc_out sc_lv 4 signal 0 } 
	{ buf_r_ce1 sc_out sc_logic 1 signal 0 } 
	{ buf_r_we1 sc_out sc_logic 1 signal 0 } 
	{ buf_r_d1 sc_out sc_lv 8 signal 0 } 
	{ buf_r_q1 sc_in sc_lv 8 signal 0 } 
	{ RoundKey_val sc_in sc_lv 1536 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buf_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "address0" }} , 
 	{ "name": "buf_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "ce0" }} , 
 	{ "name": "buf_r_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "we0" }} , 
 	{ "name": "buf_r_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r", "role": "d0" }} , 
 	{ "name": "buf_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r", "role": "q0" }} , 
 	{ "name": "buf_r_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "buf_r", "role": "address1" }} , 
 	{ "name": "buf_r_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "ce1" }} , 
 	{ "name": "buf_r_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf_r", "role": "we1" }} , 
 	{ "name": "buf_r_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r", "role": "d1" }} , 
 	{ "name": "buf_r_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r", "role": "q1" }} , 
 	{ "name": "RoundKey_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1536, "type": "signal", "bundle":{"name": "RoundKey_val", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "4", "6", "8"],
		"CDFG" : "Cipher",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "104", "EstimateLatencyMax" : "104",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "8", "SubInstance" : "grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22_fu_338", "Port" : "buf_r", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "2", "SubInstance" : "grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2_fu_281", "Port" : "buf_r", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "4", "SubInstance" : "grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2_fu_289", "Port" : "buf_r", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "RoundKey_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2_fu_289", "Port" : "sbox", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "6", "SubInstance" : "grp_Cipher_Pipeline_VITIS_LOOP_424_1_fu_297", "Port" : "sbox", "Inst_start_state" : "13", "Inst_end_state" : "14"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sbox_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2_fu_281", "Parent" : "0", "Child" : ["3"],
		"CDFG" : "Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "RoundKey_val", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_240_1_VITIS_LOOP_242_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2_fu_281.flow_control_loop_pipe_sequential_init_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2_fu_289", "Parent" : "0", "Child" : ["5"],
		"CDFG" : "Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_254_1_VITIS_LOOP_256_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2_fu_289.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Cipher_Pipeline_VITIS_LOOP_424_1_fu_297", "Parent" : "0", "Child" : ["7"],
		"CDFG" : "Cipher_Pipeline_VITIS_LOOP_424_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "21", "EstimateLatencyMax" : "21",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf_r_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "buf_r_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "RoundKey_val", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out1", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out3", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out4", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out5", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out6", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out7", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out8", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out9", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out10", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "p_out11", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "t_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "sbox", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_424_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Cipher_Pipeline_VITIS_LOOP_424_1_fu_297.flow_control_loop_pipe_sequential_init_U", "Parent" : "6"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22_fu_338", "Parent" : "0", "Child" : ["9"],
		"CDFG" : "Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20", "EstimateLatencyMax" : "20",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "buf_r", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "RoundKey_val", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_240_1_VITIS_LOOP_242_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22_fu_338.flow_control_loop_pipe_sequential_init_U", "Parent" : "8"}]}


set ArgLastReadFirstWriteLatency {
	Cipher {
		buf_r {Type IO LastRead 12 FirstWrite 3}
		RoundKey_val {Type I LastRead 0 FirstWrite -1}
		sbox {Type I LastRead -1 FirstWrite -1}}
	Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2 {
		buf_r {Type IO LastRead 2 FirstWrite 3}
		RoundKey_val {Type I LastRead 0 FirstWrite -1}}
	Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2 {
		buf_r {Type IO LastRead 1 FirstWrite 3}
		sbox {Type I LastRead 2 FirstWrite -1}}
	Cipher_Pipeline_VITIS_LOOP_424_1 {
		buf_r_load_9 {Type I LastRead 0 FirstWrite -1}
		temp_2 {Type I LastRead 0 FirstWrite -1}
		temp {Type I LastRead 0 FirstWrite -1}
		buf_r_load_14 {Type I LastRead 0 FirstWrite -1}
		buf_r_load_10 {Type I LastRead 0 FirstWrite -1}
		temp_1 {Type I LastRead 0 FirstWrite -1}
		buf_r_load_2 {Type I LastRead 0 FirstWrite -1}
		buf_r_load_13 {Type I LastRead 0 FirstWrite -1}
		temp_3 {Type I LastRead 0 FirstWrite -1}
		buf_r_load_6 {Type I LastRead 0 FirstWrite -1}
		buf_r_load_1 {Type I LastRead 0 FirstWrite -1}
		buf_r_load_12 {Type I LastRead 0 FirstWrite -1}
		buf_r_load_8 {Type I LastRead 0 FirstWrite -1}
		buf_r_load_4 {Type I LastRead 0 FirstWrite -1}
		buf_r_load {Type I LastRead 0 FirstWrite -1}
		buf_r_load_11 {Type I LastRead 0 FirstWrite -1}
		RoundKey_val {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 1}
		p_out1 {Type O LastRead -1 FirstWrite 1}
		p_out2 {Type O LastRead -1 FirstWrite 1}
		t_3_out {Type O LastRead -1 FirstWrite 1}
		p_out3 {Type O LastRead -1 FirstWrite 1}
		p_out4 {Type O LastRead -1 FirstWrite 1}
		p_out5 {Type O LastRead -1 FirstWrite 1}
		t_2_out {Type O LastRead -1 FirstWrite 1}
		p_out6 {Type O LastRead -1 FirstWrite 1}
		p_out7 {Type O LastRead -1 FirstWrite 1}
		p_out8 {Type O LastRead -1 FirstWrite 1}
		t_1_out {Type O LastRead -1 FirstWrite 1}
		p_out9 {Type O LastRead -1 FirstWrite 1}
		p_out10 {Type O LastRead -1 FirstWrite 1}
		p_out11 {Type O LastRead -1 FirstWrite 1}
		t_out {Type O LastRead -1 FirstWrite 1}
		sbox {Type I LastRead 3 FirstWrite -1}}
	Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22 {
		buf_r {Type IO LastRead 2 FirstWrite 3}
		RoundKey_val {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "104", "Max" : "104"}
	, {"Name" : "Interval", "Min" : "104", "Max" : "104"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	buf_r { ap_memory {  { buf_r_address0 mem_address 1 4 }  { buf_r_ce0 mem_ce 1 1 }  { buf_r_we0 mem_we 1 1 }  { buf_r_d0 mem_din 1 8 }  { buf_r_q0 mem_dout 0 8 }  { buf_r_address1 MemPortADDR2 1 4 }  { buf_r_ce1 MemPortCE2 1 1 }  { buf_r_we1 MemPortWE2 1 1 }  { buf_r_d1 MemPortDIN2 1 8 }  { buf_r_q1 MemPortDOUT2 0 8 } } }
	RoundKey_val { ap_none {  { RoundKey_val in_data 0 1536 } } }
}
