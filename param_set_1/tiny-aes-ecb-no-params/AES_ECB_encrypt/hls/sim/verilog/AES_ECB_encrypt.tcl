open_vcd
log_vcd [get_object /*]
run all
close_vcd
quit


log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set return_group [add_wave_group return(memory) -into $cinoutgroup]
add_wave /apatb_AES_ECB_encrypt_top/AESL_inst_AES_ECB_encrypt/buf_r_q1 -into $return_group -radix hex
add_wave /apatb_AES_ECB_encrypt_top/AESL_inst_AES_ECB_encrypt/buf_r_d1 -into $return_group -radix hex
add_wave /apatb_AES_ECB_encrypt_top/AESL_inst_AES_ECB_encrypt/buf_r_we1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_AES_ECB_encrypt_top/AESL_inst_AES_ECB_encrypt/buf_r_ce1 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_AES_ECB_encrypt_top/AESL_inst_AES_ECB_encrypt/buf_r_address1 -into $return_group -radix hex
add_wave /apatb_AES_ECB_encrypt_top/AESL_inst_AES_ECB_encrypt/buf_r_q0 -into $return_group -radix hex
add_wave /apatb_AES_ECB_encrypt_top/AESL_inst_AES_ECB_encrypt/buf_r_d0 -into $return_group -radix hex
add_wave /apatb_AES_ECB_encrypt_top/AESL_inst_AES_ECB_encrypt/buf_r_we0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_AES_ECB_encrypt_top/AESL_inst_AES_ECB_encrypt/buf_r_ce0 -into $return_group -color #ffff00 -radix hex
add_wave /apatb_AES_ECB_encrypt_top/AESL_inst_AES_ECB_encrypt/buf_r_address0 -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $cinputgroup]
add_wave /apatb_AES_ECB_encrypt_top/AESL_inst_AES_ECB_encrypt/ctx -into $return_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_AES_ECB_encrypt_top/AESL_inst_AES_ECB_encrypt/ap_start -into $blocksiggroup
add_wave /apatb_AES_ECB_encrypt_top/AESL_inst_AES_ECB_encrypt/ap_done -into $blocksiggroup
add_wave /apatb_AES_ECB_encrypt_top/AESL_inst_AES_ECB_encrypt/ap_idle -into $blocksiggroup
add_wave /apatb_AES_ECB_encrypt_top/AESL_inst_AES_ECB_encrypt/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_AES_ECB_encrypt_top/AESL_inst_AES_ECB_encrypt/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_AES_ECB_encrypt_top/AESL_inst_AES_ECB_encrypt/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_AES_ECB_encrypt_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_AES_ECB_encrypt_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_AES_ECB_encrypt_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_AES_ECB_encrypt_top/LENGTH_buf_r -into $tb_portdepth_group -radix hex
add_wave /apatb_AES_ECB_encrypt_top/LENGTH_ctx -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_return_group [add_wave_group return(memory) -into $tbcinoutgroup]
add_wave /apatb_AES_ECB_encrypt_top/buf_r_q1 -into $tb_return_group -radix hex
add_wave /apatb_AES_ECB_encrypt_top/buf_r_d1 -into $tb_return_group -radix hex
add_wave /apatb_AES_ECB_encrypt_top/buf_r_we1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_AES_ECB_encrypt_top/buf_r_ce1 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_AES_ECB_encrypt_top/buf_r_address1 -into $tb_return_group -radix hex
add_wave /apatb_AES_ECB_encrypt_top/buf_r_q0 -into $tb_return_group -radix hex
add_wave /apatb_AES_ECB_encrypt_top/buf_r_d0 -into $tb_return_group -radix hex
add_wave /apatb_AES_ECB_encrypt_top/buf_r_we0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_AES_ECB_encrypt_top/buf_r_ce0 -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_AES_ECB_encrypt_top/buf_r_address0 -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcinputgroup]
add_wave /apatb_AES_ECB_encrypt_top/ctx -into $tb_return_group -radix hex
save_wave_config AES_ECB_encrypt.wcfg
run all
quit

