set moduleName Cipher_Pipeline_VITIS_LOOP_424_1
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
set C_modelName {Cipher_Pipeline_VITIS_LOOP_424_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict sbox { MEM_WIDTH 8 MEM_SIZE 256 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ buf_r_load_9 int 8 regular  }
	{ temp_2 int 8 regular  }
	{ temp int 8 regular  }
	{ buf_r_load_14 int 8 regular  }
	{ buf_r_load_10 int 8 regular  }
	{ temp_1 int 8 regular  }
	{ buf_r_load_2 int 8 regular  }
	{ buf_r_load_13 int 8 regular  }
	{ temp_3 int 8 regular  }
	{ buf_r_load_6 int 8 regular  }
	{ buf_r_load_1 int 8 regular  }
	{ buf_r_load_12 int 8 regular  }
	{ buf_r_load_8 int 8 regular  }
	{ buf_r_load_4 int 8 regular  }
	{ buf_r_load int 8 regular  }
	{ buf_r_load_11 int 8 regular  }
	{ RoundKey_val int 1536 regular  }
	{ p_out int 8 regular {pointer 1}  }
	{ p_out1 int 8 regular {pointer 1}  }
	{ p_out2 int 8 regular {pointer 1}  }
	{ t_3_out int 8 regular {pointer 1}  }
	{ p_out3 int 8 regular {pointer 1}  }
	{ p_out4 int 8 regular {pointer 1}  }
	{ p_out5 int 8 regular {pointer 1}  }
	{ t_2_out int 8 regular {pointer 1}  }
	{ p_out6 int 8 regular {pointer 1}  }
	{ p_out7 int 8 regular {pointer 1}  }
	{ p_out8 int 8 regular {pointer 1}  }
	{ t_1_out int 8 regular {pointer 1}  }
	{ p_out9 int 8 regular {pointer 1}  }
	{ p_out10 int 8 regular {pointer 1}  }
	{ p_out11 int 8 regular {pointer 1}  }
	{ t_out int 8 regular {pointer 1}  }
	{ sbox int 8 regular {array 256 { 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 } 1 1 } {global 0}  }
}
set hasAXIMCache 0
set hasAXIML2Cache 0
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "buf_r_load_9", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf_r_load_14", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf_r_load_10", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf_r_load_2", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf_r_load_13", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "temp_3", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf_r_load_6", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf_r_load_1", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf_r_load_12", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf_r_load_8", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf_r_load_4", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf_r_load", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "buf_r_load_11", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "RoundKey_val", "interface" : "wire", "bitwidth" : 1536, "direction" : "READONLY"} , 
 	{ "Name" : "p_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out1", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out2", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t_3_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out3", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out4", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out5", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t_2_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out6", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out7", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out8", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t_1_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out9", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out10", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "p_out11", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "t_out", "interface" : "wire", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sbox", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 103
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buf_r_load_9 sc_in sc_lv 8 signal 0 } 
	{ temp_2 sc_in sc_lv 8 signal 1 } 
	{ temp sc_in sc_lv 8 signal 2 } 
	{ buf_r_load_14 sc_in sc_lv 8 signal 3 } 
	{ buf_r_load_10 sc_in sc_lv 8 signal 4 } 
	{ temp_1 sc_in sc_lv 8 signal 5 } 
	{ buf_r_load_2 sc_in sc_lv 8 signal 6 } 
	{ buf_r_load_13 sc_in sc_lv 8 signal 7 } 
	{ temp_3 sc_in sc_lv 8 signal 8 } 
	{ buf_r_load_6 sc_in sc_lv 8 signal 9 } 
	{ buf_r_load_1 sc_in sc_lv 8 signal 10 } 
	{ buf_r_load_12 sc_in sc_lv 8 signal 11 } 
	{ buf_r_load_8 sc_in sc_lv 8 signal 12 } 
	{ buf_r_load_4 sc_in sc_lv 8 signal 13 } 
	{ buf_r_load sc_in sc_lv 8 signal 14 } 
	{ buf_r_load_11 sc_in sc_lv 8 signal 15 } 
	{ RoundKey_val sc_in sc_lv 1536 signal 16 } 
	{ p_out sc_out sc_lv 8 signal 17 } 
	{ p_out_ap_vld sc_out sc_logic 1 outvld 17 } 
	{ p_out1 sc_out sc_lv 8 signal 18 } 
	{ p_out1_ap_vld sc_out sc_logic 1 outvld 18 } 
	{ p_out2 sc_out sc_lv 8 signal 19 } 
	{ p_out2_ap_vld sc_out sc_logic 1 outvld 19 } 
	{ t_3_out sc_out sc_lv 8 signal 20 } 
	{ t_3_out_ap_vld sc_out sc_logic 1 outvld 20 } 
	{ p_out3 sc_out sc_lv 8 signal 21 } 
	{ p_out3_ap_vld sc_out sc_logic 1 outvld 21 } 
	{ p_out4 sc_out sc_lv 8 signal 22 } 
	{ p_out4_ap_vld sc_out sc_logic 1 outvld 22 } 
	{ p_out5 sc_out sc_lv 8 signal 23 } 
	{ p_out5_ap_vld sc_out sc_logic 1 outvld 23 } 
	{ t_2_out sc_out sc_lv 8 signal 24 } 
	{ t_2_out_ap_vld sc_out sc_logic 1 outvld 24 } 
	{ p_out6 sc_out sc_lv 8 signal 25 } 
	{ p_out6_ap_vld sc_out sc_logic 1 outvld 25 } 
	{ p_out7 sc_out sc_lv 8 signal 26 } 
	{ p_out7_ap_vld sc_out sc_logic 1 outvld 26 } 
	{ p_out8 sc_out sc_lv 8 signal 27 } 
	{ p_out8_ap_vld sc_out sc_logic 1 outvld 27 } 
	{ t_1_out sc_out sc_lv 8 signal 28 } 
	{ t_1_out_ap_vld sc_out sc_logic 1 outvld 28 } 
	{ p_out9 sc_out sc_lv 8 signal 29 } 
	{ p_out9_ap_vld sc_out sc_logic 1 outvld 29 } 
	{ p_out10 sc_out sc_lv 8 signal 30 } 
	{ p_out10_ap_vld sc_out sc_logic 1 outvld 30 } 
	{ p_out11 sc_out sc_lv 8 signal 31 } 
	{ p_out11_ap_vld sc_out sc_logic 1 outvld 31 } 
	{ t_out sc_out sc_lv 8 signal 32 } 
	{ t_out_ap_vld sc_out sc_logic 1 outvld 32 } 
	{ sbox_address0 sc_out sc_lv 8 signal 33 } 
	{ sbox_ce0 sc_out sc_logic 1 signal 33 } 
	{ sbox_q0 sc_in sc_lv 8 signal 33 } 
	{ sbox_address1 sc_out sc_lv 8 signal 33 } 
	{ sbox_ce1 sc_out sc_logic 1 signal 33 } 
	{ sbox_q1 sc_in sc_lv 8 signal 33 } 
	{ sbox_address2 sc_out sc_lv 8 signal 33 } 
	{ sbox_ce2 sc_out sc_logic 1 signal 33 } 
	{ sbox_q2 sc_in sc_lv 8 signal 33 } 
	{ sbox_address3 sc_out sc_lv 8 signal 33 } 
	{ sbox_ce3 sc_out sc_logic 1 signal 33 } 
	{ sbox_q3 sc_in sc_lv 8 signal 33 } 
	{ sbox_address4 sc_out sc_lv 8 signal 33 } 
	{ sbox_ce4 sc_out sc_logic 1 signal 33 } 
	{ sbox_q4 sc_in sc_lv 8 signal 33 } 
	{ sbox_address5 sc_out sc_lv 8 signal 33 } 
	{ sbox_ce5 sc_out sc_logic 1 signal 33 } 
	{ sbox_q5 sc_in sc_lv 8 signal 33 } 
	{ sbox_address6 sc_out sc_lv 8 signal 33 } 
	{ sbox_ce6 sc_out sc_logic 1 signal 33 } 
	{ sbox_q6 sc_in sc_lv 8 signal 33 } 
	{ sbox_address7 sc_out sc_lv 8 signal 33 } 
	{ sbox_ce7 sc_out sc_logic 1 signal 33 } 
	{ sbox_q7 sc_in sc_lv 8 signal 33 } 
	{ sbox_address8 sc_out sc_lv 8 signal 33 } 
	{ sbox_ce8 sc_out sc_logic 1 signal 33 } 
	{ sbox_q8 sc_in sc_lv 8 signal 33 } 
	{ sbox_address9 sc_out sc_lv 8 signal 33 } 
	{ sbox_ce9 sc_out sc_logic 1 signal 33 } 
	{ sbox_q9 sc_in sc_lv 8 signal 33 } 
	{ sbox_address10 sc_out sc_lv 8 signal 33 } 
	{ sbox_ce10 sc_out sc_logic 1 signal 33 } 
	{ sbox_q10 sc_in sc_lv 8 signal 33 } 
	{ sbox_address11 sc_out sc_lv 8 signal 33 } 
	{ sbox_ce11 sc_out sc_logic 1 signal 33 } 
	{ sbox_q11 sc_in sc_lv 8 signal 33 } 
	{ sbox_address12 sc_out sc_lv 8 signal 33 } 
	{ sbox_ce12 sc_out sc_logic 1 signal 33 } 
	{ sbox_q12 sc_in sc_lv 8 signal 33 } 
	{ sbox_address13 sc_out sc_lv 8 signal 33 } 
	{ sbox_ce13 sc_out sc_logic 1 signal 33 } 
	{ sbox_q13 sc_in sc_lv 8 signal 33 } 
	{ sbox_address14 sc_out sc_lv 8 signal 33 } 
	{ sbox_ce14 sc_out sc_logic 1 signal 33 } 
	{ sbox_q14 sc_in sc_lv 8 signal 33 } 
	{ sbox_address15 sc_out sc_lv 8 signal 33 } 
	{ sbox_ce15 sc_out sc_logic 1 signal 33 } 
	{ sbox_q15 sc_in sc_lv 8 signal 33 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buf_r_load_9", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r_load_9", "role": "default" }} , 
 	{ "name": "temp_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_2", "role": "default" }} , 
 	{ "name": "temp", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp", "role": "default" }} , 
 	{ "name": "buf_r_load_14", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r_load_14", "role": "default" }} , 
 	{ "name": "buf_r_load_10", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r_load_10", "role": "default" }} , 
 	{ "name": "temp_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_1", "role": "default" }} , 
 	{ "name": "buf_r_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r_load_2", "role": "default" }} , 
 	{ "name": "buf_r_load_13", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r_load_13", "role": "default" }} , 
 	{ "name": "temp_3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "temp_3", "role": "default" }} , 
 	{ "name": "buf_r_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r_load_6", "role": "default" }} , 
 	{ "name": "buf_r_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r_load_1", "role": "default" }} , 
 	{ "name": "buf_r_load_12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r_load_12", "role": "default" }} , 
 	{ "name": "buf_r_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r_load_8", "role": "default" }} , 
 	{ "name": "buf_r_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r_load_4", "role": "default" }} , 
 	{ "name": "buf_r_load", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r_load", "role": "default" }} , 
 	{ "name": "buf_r_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf_r_load_11", "role": "default" }} , 
 	{ "name": "RoundKey_val", "direction": "in", "datatype": "sc_lv", "bitwidth":1536, "type": "signal", "bundle":{"name": "RoundKey_val", "role": "default" }} , 
 	{ "name": "p_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out", "role": "default" }} , 
 	{ "name": "p_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out", "role": "ap_vld" }} , 
 	{ "name": "p_out1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out1", "role": "default" }} , 
 	{ "name": "p_out1_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out1", "role": "ap_vld" }} , 
 	{ "name": "p_out2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out2", "role": "default" }} , 
 	{ "name": "p_out2_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out2", "role": "ap_vld" }} , 
 	{ "name": "t_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_3_out", "role": "default" }} , 
 	{ "name": "t_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "t_3_out", "role": "ap_vld" }} , 
 	{ "name": "p_out3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out3", "role": "default" }} , 
 	{ "name": "p_out3_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out3", "role": "ap_vld" }} , 
 	{ "name": "p_out4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out4", "role": "default" }} , 
 	{ "name": "p_out4_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out4", "role": "ap_vld" }} , 
 	{ "name": "p_out5", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out5", "role": "default" }} , 
 	{ "name": "p_out5_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out5", "role": "ap_vld" }} , 
 	{ "name": "t_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_2_out", "role": "default" }} , 
 	{ "name": "t_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "t_2_out", "role": "ap_vld" }} , 
 	{ "name": "p_out6", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out6", "role": "default" }} , 
 	{ "name": "p_out6_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out6", "role": "ap_vld" }} , 
 	{ "name": "p_out7", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out7", "role": "default" }} , 
 	{ "name": "p_out7_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out7", "role": "ap_vld" }} , 
 	{ "name": "p_out8", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out8", "role": "default" }} , 
 	{ "name": "p_out8_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out8", "role": "ap_vld" }} , 
 	{ "name": "t_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_1_out", "role": "default" }} , 
 	{ "name": "t_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "t_1_out", "role": "ap_vld" }} , 
 	{ "name": "p_out9", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out9", "role": "default" }} , 
 	{ "name": "p_out9_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out9", "role": "ap_vld" }} , 
 	{ "name": "p_out10", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out10", "role": "default" }} , 
 	{ "name": "p_out10_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out10", "role": "ap_vld" }} , 
 	{ "name": "p_out11", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "p_out11", "role": "default" }} , 
 	{ "name": "p_out11_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "p_out11", "role": "ap_vld" }} , 
 	{ "name": "t_out", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "t_out", "role": "default" }} , 
 	{ "name": "t_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "t_out", "role": "ap_vld" }} , 
 	{ "name": "sbox_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address0" }} , 
 	{ "name": "sbox_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce0" }} , 
 	{ "name": "sbox_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q0" }} , 
 	{ "name": "sbox_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address1" }} , 
 	{ "name": "sbox_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce1" }} , 
 	{ "name": "sbox_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q1" }} , 
 	{ "name": "sbox_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address2" }} , 
 	{ "name": "sbox_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce2" }} , 
 	{ "name": "sbox_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q2" }} , 
 	{ "name": "sbox_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address3" }} , 
 	{ "name": "sbox_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce3" }} , 
 	{ "name": "sbox_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q3" }} , 
 	{ "name": "sbox_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address4" }} , 
 	{ "name": "sbox_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce4" }} , 
 	{ "name": "sbox_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q4" }} , 
 	{ "name": "sbox_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address5" }} , 
 	{ "name": "sbox_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce5" }} , 
 	{ "name": "sbox_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q5" }} , 
 	{ "name": "sbox_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address6" }} , 
 	{ "name": "sbox_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce6" }} , 
 	{ "name": "sbox_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q6" }} , 
 	{ "name": "sbox_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address7" }} , 
 	{ "name": "sbox_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce7" }} , 
 	{ "name": "sbox_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q7" }} , 
 	{ "name": "sbox_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address8" }} , 
 	{ "name": "sbox_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce8" }} , 
 	{ "name": "sbox_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q8" }} , 
 	{ "name": "sbox_address9", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address9" }} , 
 	{ "name": "sbox_ce9", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce9" }} , 
 	{ "name": "sbox_q9", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q9" }} , 
 	{ "name": "sbox_address10", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address10" }} , 
 	{ "name": "sbox_ce10", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce10" }} , 
 	{ "name": "sbox_q10", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q10" }} , 
 	{ "name": "sbox_address11", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address11" }} , 
 	{ "name": "sbox_ce11", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce11" }} , 
 	{ "name": "sbox_q11", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q11" }} , 
 	{ "name": "sbox_address12", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address12" }} , 
 	{ "name": "sbox_ce12", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce12" }} , 
 	{ "name": "sbox_q12", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q12" }} , 
 	{ "name": "sbox_address13", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address13" }} , 
 	{ "name": "sbox_ce13", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce13" }} , 
 	{ "name": "sbox_q13", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q13" }} , 
 	{ "name": "sbox_address14", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address14" }} , 
 	{ "name": "sbox_ce14", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce14" }} , 
 	{ "name": "sbox_q14", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q14" }} , 
 	{ "name": "sbox_address15", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "address15" }} , 
 	{ "name": "sbox_ce15", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sbox", "role": "ce15" }} , 
 	{ "name": "sbox_q15", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sbox", "role": "q15" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		sbox {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "21", "Max" : "21"}
	, {"Name" : "Interval", "Min" : "21", "Max" : "21"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	buf_r_load_9 { ap_none {  { buf_r_load_9 in_data 0 8 } } }
	temp_2 { ap_none {  { temp_2 in_data 0 8 } } }
	temp { ap_none {  { temp in_data 0 8 } } }
	buf_r_load_14 { ap_none {  { buf_r_load_14 in_data 0 8 } } }
	buf_r_load_10 { ap_none {  { buf_r_load_10 in_data 0 8 } } }
	temp_1 { ap_none {  { temp_1 in_data 0 8 } } }
	buf_r_load_2 { ap_none {  { buf_r_load_2 in_data 0 8 } } }
	buf_r_load_13 { ap_none {  { buf_r_load_13 in_data 0 8 } } }
	temp_3 { ap_none {  { temp_3 in_data 0 8 } } }
	buf_r_load_6 { ap_none {  { buf_r_load_6 in_data 0 8 } } }
	buf_r_load_1 { ap_none {  { buf_r_load_1 in_data 0 8 } } }
	buf_r_load_12 { ap_none {  { buf_r_load_12 in_data 0 8 } } }
	buf_r_load_8 { ap_none {  { buf_r_load_8 in_data 0 8 } } }
	buf_r_load_4 { ap_none {  { buf_r_load_4 in_data 0 8 } } }
	buf_r_load { ap_none {  { buf_r_load in_data 0 8 } } }
	buf_r_load_11 { ap_none {  { buf_r_load_11 in_data 0 8 } } }
	RoundKey_val { ap_none {  { RoundKey_val in_data 0 1536 } } }
	p_out { ap_vld {  { p_out out_data 1 8 }  { p_out_ap_vld out_vld 1 1 } } }
	p_out1 { ap_vld {  { p_out1 out_data 1 8 }  { p_out1_ap_vld out_vld 1 1 } } }
	p_out2 { ap_vld {  { p_out2 out_data 1 8 }  { p_out2_ap_vld out_vld 1 1 } } }
	t_3_out { ap_vld {  { t_3_out out_data 1 8 }  { t_3_out_ap_vld out_vld 1 1 } } }
	p_out3 { ap_vld {  { p_out3 out_data 1 8 }  { p_out3_ap_vld out_vld 1 1 } } }
	p_out4 { ap_vld {  { p_out4 out_data 1 8 }  { p_out4_ap_vld out_vld 1 1 } } }
	p_out5 { ap_vld {  { p_out5 out_data 1 8 }  { p_out5_ap_vld out_vld 1 1 } } }
	t_2_out { ap_vld {  { t_2_out out_data 1 8 }  { t_2_out_ap_vld out_vld 1 1 } } }
	p_out6 { ap_vld {  { p_out6 out_data 1 8 }  { p_out6_ap_vld out_vld 1 1 } } }
	p_out7 { ap_vld {  { p_out7 out_data 1 8 }  { p_out7_ap_vld out_vld 1 1 } } }
	p_out8 { ap_vld {  { p_out8 out_data 1 8 }  { p_out8_ap_vld out_vld 1 1 } } }
	t_1_out { ap_vld {  { t_1_out out_data 1 8 }  { t_1_out_ap_vld out_vld 1 1 } } }
	p_out9 { ap_vld {  { p_out9 out_data 1 8 }  { p_out9_ap_vld out_vld 1 1 } } }
	p_out10 { ap_vld {  { p_out10 out_data 1 8 }  { p_out10_ap_vld out_vld 1 1 } } }
	p_out11 { ap_vld {  { p_out11 out_data 1 8 }  { p_out11_ap_vld out_vld 1 1 } } }
	t_out { ap_vld {  { t_out out_data 1 8 }  { t_out_ap_vld out_vld 1 1 } } }
	sbox { ap_memory {  { sbox_address0 mem_address 1 8 }  { sbox_ce0 mem_ce 1 1 }  { sbox_q0 mem_dout 0 8 }  { sbox_address1 MemPortADDR2 1 8 }  { sbox_ce1 MemPortCE2 1 1 }  { sbox_q1 MemPortDOUT2 0 8 }  { sbox_address2 MemPortADDR2 1 8 }  { sbox_ce2 MemPortCE2 1 1 }  { sbox_q2 MemPortDOUT2 0 8 }  { sbox_address3 MemPortADDR2 1 8 }  { sbox_ce3 MemPortCE2 1 1 }  { sbox_q3 MemPortDOUT2 0 8 }  { sbox_address4 MemPortADDR2 1 8 }  { sbox_ce4 MemPortCE2 1 1 }  { sbox_q4 MemPortDOUT2 0 8 }  { sbox_address5 MemPortADDR2 1 8 }  { sbox_ce5 MemPortCE2 1 1 }  { sbox_q5 MemPortDOUT2 0 8 }  { sbox_address6 MemPortADDR2 1 8 }  { sbox_ce6 MemPortCE2 1 1 }  { sbox_q6 MemPortDOUT2 0 8 }  { sbox_address7 MemPortADDR2 1 8 }  { sbox_ce7 MemPortCE2 1 1 }  { sbox_q7 MemPortDOUT2 0 8 }  { sbox_address8 MemPortADDR2 1 8 }  { sbox_ce8 MemPortCE2 1 1 }  { sbox_q8 MemPortDOUT2 0 8 }  { sbox_address9 MemPortADDR2 1 8 }  { sbox_ce9 MemPortCE2 1 1 }  { sbox_q9 MemPortDOUT2 0 8 }  { sbox_address10 MemPortADDR2 1 8 }  { sbox_ce10 MemPortCE2 1 1 }  { sbox_q10 MemPortDOUT2 0 8 }  { sbox_address11 MemPortADDR2 1 8 }  { sbox_ce11 MemPortCE2 1 1 }  { sbox_q11 MemPortDOUT2 0 8 }  { sbox_address12 MemPortADDR2 1 8 }  { sbox_ce12 MemPortCE2 1 1 }  { sbox_q12 MemPortDOUT2 0 8 }  { sbox_address13 MemPortADDR2 1 8 }  { sbox_ce13 MemPortCE2 1 1 }  { sbox_q13 MemPortDOUT2 0 8 }  { sbox_address14 MemPortADDR2 1 8 }  { sbox_ce14 MemPortCE2 1 1 }  { sbox_q14 MemPortDOUT2 0 8 }  { sbox_address15 MemPortADDR2 1 8 }  { sbox_ce15 MemPortCE2 1 1 }  { sbox_q15 MemPortDOUT2 0 8 } } }
}
