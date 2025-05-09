
`include "dump_file_agent.svh"
`include "csv_file_dump.svh"
`include "sample_agent.svh"
`include "loop_sample_agent.svh"
`include "sample_manager.svh"
`include "nodf_module_interface.svh"
`include "nodf_module_monitor.svh"
`include "seq_loop_interface.svh"
`include "seq_loop_monitor.svh"
`include "upc_loop_interface.svh"
`include "upc_loop_monitor.svh"
`timescale 1ns/1ps

// top module for dataflow related monitors
module dataflow_monitor(
input logic clock,
input logic reset,
input logic finish
);




    nodf_module_intf module_intf_1(clock,reset);
    assign module_intf_1.ap_start = AESL_inst_AES_ECB_encrypt.ap_start;
    assign module_intf_1.ap_ready = AESL_inst_AES_ECB_encrypt.ap_ready;
    assign module_intf_1.ap_done = AESL_inst_AES_ECB_encrypt.ap_done;
    assign module_intf_1.ap_continue = 1'b1;
    assign module_intf_1.finish = finish;
    csv_file_dump mstatus_csv_dumper_1;
    nodf_module_monitor module_monitor_1;
    nodf_module_intf module_intf_2(clock,reset);
    assign module_intf_2.ap_start = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.ap_start;
    assign module_intf_2.ap_ready = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.ap_ready;
    assign module_intf_2.ap_done = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.ap_done;
    assign module_intf_2.ap_continue = 1'b1;
    assign module_intf_2.finish = finish;
    csv_file_dump mstatus_csv_dumper_2;
    nodf_module_monitor module_monitor_2;
    nodf_module_intf module_intf_3(clock,reset);
    assign module_intf_3.ap_start = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2_fu_203.ap_start;
    assign module_intf_3.ap_ready = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2_fu_203.ap_ready;
    assign module_intf_3.ap_done = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2_fu_203.ap_done;
    assign module_intf_3.ap_continue = 1'b1;
    assign module_intf_3.finish = finish;
    csv_file_dump mstatus_csv_dumper_3;
    nodf_module_monitor module_monitor_3;
    nodf_module_intf module_intf_4(clock,reset);
    assign module_intf_4.ap_start = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2_fu_211.ap_start;
    assign module_intf_4.ap_ready = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2_fu_211.ap_ready;
    assign module_intf_4.ap_done = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2_fu_211.ap_done;
    assign module_intf_4.ap_continue = 1'b1;
    assign module_intf_4.finish = finish;
    csv_file_dump mstatus_csv_dumper_4;
    nodf_module_monitor module_monitor_4;
    nodf_module_intf module_intf_5(clock,reset);
    assign module_intf_5.ap_start = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_304_1_fu_219.ap_start;
    assign module_intf_5.ap_ready = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_304_1_fu_219.ap_ready;
    assign module_intf_5.ap_done = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_304_1_fu_219.ap_done;
    assign module_intf_5.ap_continue = 1'b1;
    assign module_intf_5.finish = finish;
    csv_file_dump mstatus_csv_dumper_5;
    nodf_module_monitor module_monitor_5;
    nodf_module_intf module_intf_6(clock,reset);
    assign module_intf_6.ap_start = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22_fu_225.ap_start;
    assign module_intf_6.ap_ready = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22_fu_225.ap_ready;
    assign module_intf_6.ap_done = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22_fu_225.ap_done;
    assign module_intf_6.ap_continue = 1'b1;
    assign module_intf_6.finish = finish;
    csv_file_dump mstatus_csv_dumper_6;
    nodf_module_monitor module_monitor_6;
    nodf_module_intf module_intf_7(clock,reset);
    assign module_intf_7.ap_start = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_23_fu_233.ap_start;
    assign module_intf_7.ap_ready = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_23_fu_233.ap_ready;
    assign module_intf_7.ap_done = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_23_fu_233.ap_done;
    assign module_intf_7.ap_continue = 1'b1;
    assign module_intf_7.finish = finish;
    csv_file_dump mstatus_csv_dumper_7;
    nodf_module_monitor module_monitor_7;
    nodf_module_intf module_intf_8(clock,reset);
    assign module_intf_8.ap_start = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_24_fu_241.ap_start;
    assign module_intf_8.ap_ready = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_24_fu_241.ap_ready;
    assign module_intf_8.ap_done = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_24_fu_241.ap_done;
    assign module_intf_8.ap_continue = 1'b1;
    assign module_intf_8.finish = finish;
    csv_file_dump mstatus_csv_dumper_8;
    nodf_module_monitor module_monitor_8;

    seq_loop_intf#(35) seq_loop_intf_1(clock,reset);
    assign seq_loop_intf_1.pre_loop_state0 = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.ap_ST_fsm_state15;
    assign seq_loop_intf_1.pre_states_valid = 1'b1;
    assign seq_loop_intf_1.post_loop_state0 = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.ap_ST_fsm_state34;
    assign seq_loop_intf_1.post_states_valid = 1'b1;
    assign seq_loop_intf_1.quit_loop_state0 = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.ap_ST_fsm_state16;
    assign seq_loop_intf_1.quit_states_valid = 1'b1;
    assign seq_loop_intf_1.cur_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.ap_CS_fsm;
    assign seq_loop_intf_1.iter_start_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.ap_ST_fsm_state16;
    assign seq_loop_intf_1.iter_end_state0 = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.ap_ST_fsm_state33;
    assign seq_loop_intf_1.iter_end_states_valid = 1'b1;
    assign seq_loop_intf_1.one_state_loop = 1'b0;
    assign seq_loop_intf_1.one_state_block = 1'b0;
    assign seq_loop_intf_1.finish = finish;
    csv_file_dump seq_loop_csv_dumper_1;
    seq_loop_monitor #(35) seq_loop_monitor_1;
    upc_loop_intf#(1) upc_loop_intf_1(clock,reset);
    assign upc_loop_intf_1.cur_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2_fu_203.ap_CS_fsm;
    assign upc_loop_intf_1.iter_start_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2_fu_203.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_1.iter_end_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2_fu_203.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_1.quit_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2_fu_203.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_1.iter_start_block = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2_fu_203.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_1.iter_end_block = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2_fu_203.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_1.quit_block = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2_fu_203.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_1.iter_start_enable = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2_fu_203.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_1.iter_end_enable = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2_fu_203.ap_enable_reg_pp0_iter3;
    assign upc_loop_intf_1.quit_enable = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2_fu_203.ap_enable_reg_pp0_iter3;
    assign upc_loop_intf_1.loop_start = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2_fu_203.ap_start;
    assign upc_loop_intf_1.loop_ready = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2_fu_203.ap_ready;
    assign upc_loop_intf_1.loop_done = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_2_fu_203.ap_done_int;
    assign upc_loop_intf_1.loop_continue = 1'b1;
    assign upc_loop_intf_1.quit_at_end = 1'b1;
    assign upc_loop_intf_1.finish = finish;
    csv_file_dump upc_loop_csv_dumper_1;
    upc_loop_monitor #(1) upc_loop_monitor_1;
    upc_loop_intf#(1) upc_loop_intf_2(clock,reset);
    assign upc_loop_intf_2.cur_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2_fu_211.ap_CS_fsm;
    assign upc_loop_intf_2.iter_start_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2_fu_211.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_2.iter_end_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2_fu_211.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_2.quit_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2_fu_211.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_2.iter_start_block = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2_fu_211.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_2.iter_end_block = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2_fu_211.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_2.quit_block = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2_fu_211.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_2.iter_start_enable = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2_fu_211.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_2.iter_end_enable = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2_fu_211.ap_enable_reg_pp0_iter3;
    assign upc_loop_intf_2.quit_enable = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2_fu_211.ap_enable_reg_pp0_iter3;
    assign upc_loop_intf_2.loop_start = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2_fu_211.ap_start;
    assign upc_loop_intf_2.loop_ready = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2_fu_211.ap_ready;
    assign upc_loop_intf_2.loop_done = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_2_fu_211.ap_done_int;
    assign upc_loop_intf_2.loop_continue = 1'b1;
    assign upc_loop_intf_2.quit_at_end = 1'b1;
    assign upc_loop_intf_2.finish = finish;
    csv_file_dump upc_loop_csv_dumper_2;
    upc_loop_monitor #(1) upc_loop_monitor_2;
    upc_loop_intf#(4) upc_loop_intf_3(clock,reset);
    assign upc_loop_intf_3.cur_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_304_1_fu_219.ap_CS_fsm;
    assign upc_loop_intf_3.iter_start_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_304_1_fu_219.ap_ST_fsm_state1;
    assign upc_loop_intf_3.iter_end_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_304_1_fu_219.ap_ST_fsm_state4;
    assign upc_loop_intf_3.quit_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_304_1_fu_219.ap_ST_fsm_state4;
    assign upc_loop_intf_3.iter_start_block = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_304_1_fu_219.ap_ST_fsm_state1_blk;
    assign upc_loop_intf_3.iter_end_block = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_304_1_fu_219.ap_ST_fsm_state4_blk;
    assign upc_loop_intf_3.quit_block = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_304_1_fu_219.ap_ST_fsm_state4_blk;
    assign upc_loop_intf_3.iter_start_enable = 1'b1;
    assign upc_loop_intf_3.iter_end_enable = 1'b1;
    assign upc_loop_intf_3.quit_enable = 1'b1;
    assign upc_loop_intf_3.loop_start = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_304_1_fu_219.ap_start;
    assign upc_loop_intf_3.loop_ready = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_304_1_fu_219.ap_ready;
    assign upc_loop_intf_3.loop_done = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_304_1_fu_219.ap_done_int;
    assign upc_loop_intf_3.loop_continue = 1'b1;
    assign upc_loop_intf_3.quit_at_end = 1'b1;
    assign upc_loop_intf_3.finish = finish;
    csv_file_dump upc_loop_csv_dumper_3;
    upc_loop_monitor #(4) upc_loop_monitor_3;
    upc_loop_intf#(1) upc_loop_intf_4(clock,reset);
    assign upc_loop_intf_4.cur_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22_fu_225.ap_CS_fsm;
    assign upc_loop_intf_4.iter_start_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22_fu_225.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_4.iter_end_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22_fu_225.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_4.quit_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22_fu_225.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_4.iter_start_block = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22_fu_225.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_4.iter_end_block = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22_fu_225.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_4.quit_block = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22_fu_225.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_4.iter_start_enable = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22_fu_225.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_4.iter_end_enable = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22_fu_225.ap_enable_reg_pp0_iter3;
    assign upc_loop_intf_4.quit_enable = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22_fu_225.ap_enable_reg_pp0_iter3;
    assign upc_loop_intf_4.loop_start = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22_fu_225.ap_start;
    assign upc_loop_intf_4.loop_ready = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22_fu_225.ap_ready;
    assign upc_loop_intf_4.loop_done = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_22_fu_225.ap_done_int;
    assign upc_loop_intf_4.loop_continue = 1'b1;
    assign upc_loop_intf_4.quit_at_end = 1'b1;
    assign upc_loop_intf_4.finish = finish;
    csv_file_dump upc_loop_csv_dumper_4;
    upc_loop_monitor #(1) upc_loop_monitor_4;
    upc_loop_intf#(1) upc_loop_intf_5(clock,reset);
    assign upc_loop_intf_5.cur_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_23_fu_233.ap_CS_fsm;
    assign upc_loop_intf_5.iter_start_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_23_fu_233.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_5.iter_end_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_23_fu_233.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_5.quit_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_23_fu_233.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_5.iter_start_block = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_23_fu_233.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_5.iter_end_block = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_23_fu_233.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_5.quit_block = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_23_fu_233.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_5.iter_start_enable = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_23_fu_233.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_5.iter_end_enable = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_23_fu_233.ap_enable_reg_pp0_iter3;
    assign upc_loop_intf_5.quit_enable = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_23_fu_233.ap_enable_reg_pp0_iter3;
    assign upc_loop_intf_5.loop_start = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_23_fu_233.ap_start;
    assign upc_loop_intf_5.loop_ready = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_23_fu_233.ap_ready;
    assign upc_loop_intf_5.loop_done = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_254_1_VITIS_LOOP_256_23_fu_233.ap_done_int;
    assign upc_loop_intf_5.loop_continue = 1'b1;
    assign upc_loop_intf_5.quit_at_end = 1'b1;
    assign upc_loop_intf_5.finish = finish;
    csv_file_dump upc_loop_csv_dumper_5;
    upc_loop_monitor #(1) upc_loop_monitor_5;
    upc_loop_intf#(1) upc_loop_intf_6(clock,reset);
    assign upc_loop_intf_6.cur_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_24_fu_241.ap_CS_fsm;
    assign upc_loop_intf_6.iter_start_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_24_fu_241.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_6.iter_end_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_24_fu_241.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_6.quit_state = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_24_fu_241.ap_ST_fsm_pp0_stage0;
    assign upc_loop_intf_6.iter_start_block = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_24_fu_241.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_6.iter_end_block = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_24_fu_241.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_6.quit_block = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_24_fu_241.ap_block_pp0_stage0_subdone;
    assign upc_loop_intf_6.iter_start_enable = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_24_fu_241.ap_enable_reg_pp0_iter0;
    assign upc_loop_intf_6.iter_end_enable = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_24_fu_241.ap_enable_reg_pp0_iter3;
    assign upc_loop_intf_6.quit_enable = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_24_fu_241.ap_enable_reg_pp0_iter3;
    assign upc_loop_intf_6.loop_start = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_24_fu_241.ap_start;
    assign upc_loop_intf_6.loop_ready = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_24_fu_241.ap_ready;
    assign upc_loop_intf_6.loop_done = AESL_inst_AES_ECB_encrypt.grp_Cipher_fu_34.grp_Cipher_Pipeline_VITIS_LOOP_240_1_VITIS_LOOP_242_24_fu_241.ap_done_int;
    assign upc_loop_intf_6.loop_continue = 1'b1;
    assign upc_loop_intf_6.quit_at_end = 1'b1;
    assign upc_loop_intf_6.finish = finish;
    csv_file_dump upc_loop_csv_dumper_6;
    upc_loop_monitor #(1) upc_loop_monitor_6;

    sample_manager sample_manager_inst;

initial begin
    sample_manager_inst = new;



    mstatus_csv_dumper_1 = new("./module_status1.csv");
    module_monitor_1 = new(module_intf_1,mstatus_csv_dumper_1);
    mstatus_csv_dumper_2 = new("./module_status2.csv");
    module_monitor_2 = new(module_intf_2,mstatus_csv_dumper_2);
    mstatus_csv_dumper_3 = new("./module_status3.csv");
    module_monitor_3 = new(module_intf_3,mstatus_csv_dumper_3);
    mstatus_csv_dumper_4 = new("./module_status4.csv");
    module_monitor_4 = new(module_intf_4,mstatus_csv_dumper_4);
    mstatus_csv_dumper_5 = new("./module_status5.csv");
    module_monitor_5 = new(module_intf_5,mstatus_csv_dumper_5);
    mstatus_csv_dumper_6 = new("./module_status6.csv");
    module_monitor_6 = new(module_intf_6,mstatus_csv_dumper_6);
    mstatus_csv_dumper_7 = new("./module_status7.csv");
    module_monitor_7 = new(module_intf_7,mstatus_csv_dumper_7);
    mstatus_csv_dumper_8 = new("./module_status8.csv");
    module_monitor_8 = new(module_intf_8,mstatus_csv_dumper_8);



    seq_loop_csv_dumper_1 = new("./seq_loop_status1.csv");
    seq_loop_monitor_1 = new(seq_loop_intf_1,seq_loop_csv_dumper_1);

    upc_loop_csv_dumper_1 = new("./upc_loop_status1.csv");
    upc_loop_monitor_1 = new(upc_loop_intf_1,upc_loop_csv_dumper_1);
    upc_loop_csv_dumper_2 = new("./upc_loop_status2.csv");
    upc_loop_monitor_2 = new(upc_loop_intf_2,upc_loop_csv_dumper_2);
    upc_loop_csv_dumper_3 = new("./upc_loop_status3.csv");
    upc_loop_monitor_3 = new(upc_loop_intf_3,upc_loop_csv_dumper_3);
    upc_loop_csv_dumper_4 = new("./upc_loop_status4.csv");
    upc_loop_monitor_4 = new(upc_loop_intf_4,upc_loop_csv_dumper_4);
    upc_loop_csv_dumper_5 = new("./upc_loop_status5.csv");
    upc_loop_monitor_5 = new(upc_loop_intf_5,upc_loop_csv_dumper_5);
    upc_loop_csv_dumper_6 = new("./upc_loop_status6.csv");
    upc_loop_monitor_6 = new(upc_loop_intf_6,upc_loop_csv_dumper_6);

    sample_manager_inst.add_one_monitor(module_monitor_1);
    sample_manager_inst.add_one_monitor(module_monitor_2);
    sample_manager_inst.add_one_monitor(module_monitor_3);
    sample_manager_inst.add_one_monitor(module_monitor_4);
    sample_manager_inst.add_one_monitor(module_monitor_5);
    sample_manager_inst.add_one_monitor(module_monitor_6);
    sample_manager_inst.add_one_monitor(module_monitor_7);
    sample_manager_inst.add_one_monitor(module_monitor_8);
    sample_manager_inst.add_one_monitor(seq_loop_monitor_1);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_1);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_2);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_3);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_4);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_5);
    sample_manager_inst.add_one_monitor(upc_loop_monitor_6);
    
    fork
        sample_manager_inst.start_monitor();
        last_transaction_done;
    join
    disable fork;

    sample_manager_inst.start_dump();
end

    task last_transaction_done();
        wait(reset == 0);
        while(1) begin
            if (finish == 1'b1) begin
                @(negedge clock);
                break;
            end
            else
                @(posedge clock);
        end
    endtask


endmodule
