# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 38 \
    name sbox \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename sbox \
    op interface \
    ports { sbox_address0 { O 8 vector } sbox_ce0 { O 1 bit } sbox_q0 { I 8 vector } sbox_address1 { O 8 vector } sbox_ce1 { O 1 bit } sbox_q1 { I 8 vector } sbox_address2 { O 8 vector } sbox_ce2 { O 1 bit } sbox_q2 { I 8 vector } sbox_address3 { O 8 vector } sbox_ce3 { O 1 bit } sbox_q3 { I 8 vector } sbox_address4 { O 8 vector } sbox_ce4 { O 1 bit } sbox_q4 { I 8 vector } sbox_address5 { O 8 vector } sbox_ce5 { O 1 bit } sbox_q5 { I 8 vector } sbox_address6 { O 8 vector } sbox_ce6 { O 1 bit } sbox_q6 { I 8 vector } sbox_address7 { O 8 vector } sbox_ce7 { O 1 bit } sbox_q7 { I 8 vector } sbox_address8 { O 8 vector } sbox_ce8 { O 1 bit } sbox_q8 { I 8 vector } sbox_address9 { O 8 vector } sbox_ce9 { O 1 bit } sbox_q9 { I 8 vector } sbox_address10 { O 8 vector } sbox_ce10 { O 1 bit } sbox_q10 { I 8 vector } sbox_address11 { O 8 vector } sbox_ce11 { O 1 bit } sbox_q11 { I 8 vector } sbox_address12 { O 8 vector } sbox_ce12 { O 1 bit } sbox_q12 { I 8 vector } sbox_address13 { O 8 vector } sbox_ce13 { O 1 bit } sbox_q13 { I 8 vector } sbox_address14 { O 8 vector } sbox_ce14 { O 1 bit } sbox_q14 { I 8 vector } sbox_address15 { O 8 vector } sbox_ce15 { O 1 bit } sbox_q15 { I 8 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'sbox'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name buf_r_load_9 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_r_load_9 \
    op interface \
    ports { buf_r_load_9 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name temp_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_2 \
    op interface \
    ports { temp_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name temp \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp \
    op interface \
    ports { temp { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name buf_r_load_14 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_r_load_14 \
    op interface \
    ports { buf_r_load_14 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name buf_r_load_10 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_r_load_10 \
    op interface \
    ports { buf_r_load_10 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name temp_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_1 \
    op interface \
    ports { temp_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name buf_r_load_2 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_r_load_2 \
    op interface \
    ports { buf_r_load_2 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name buf_r_load_13 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_r_load_13 \
    op interface \
    ports { buf_r_load_13 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name temp_3 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_temp_3 \
    op interface \
    ports { temp_3 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 14 \
    name buf_r_load_6 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_r_load_6 \
    op interface \
    ports { buf_r_load_6 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 15 \
    name buf_r_load_1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_r_load_1 \
    op interface \
    ports { buf_r_load_1 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 16 \
    name buf_r_load_12 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_r_load_12 \
    op interface \
    ports { buf_r_load_12 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 17 \
    name buf_r_load_8 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_r_load_8 \
    op interface \
    ports { buf_r_load_8 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 18 \
    name buf_r_load_4 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_r_load_4 \
    op interface \
    ports { buf_r_load_4 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 19 \
    name buf_r_load \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_r_load \
    op interface \
    ports { buf_r_load { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 20 \
    name buf_r_load_11 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_buf_r_load_11 \
    op interface \
    ports { buf_r_load_11 { I 8 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 21 \
    name RoundKey_val \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_RoundKey_val \
    op interface \
    ports { RoundKey_val { I 1536 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 22 \
    name p_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out \
    op interface \
    ports { p_out { O 8 vector } p_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 23 \
    name p_out1 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out1 \
    op interface \
    ports { p_out1 { O 8 vector } p_out1_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 24 \
    name p_out2 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out2 \
    op interface \
    ports { p_out2 { O 8 vector } p_out2_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 25 \
    name t_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t_3_out \
    op interface \
    ports { t_3_out { O 8 vector } t_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 26 \
    name p_out3 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out3 \
    op interface \
    ports { p_out3 { O 8 vector } p_out3_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name p_out4 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out4 \
    op interface \
    ports { p_out4 { O 8 vector } p_out4_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name p_out5 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out5 \
    op interface \
    ports { p_out5 { O 8 vector } p_out5_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name t_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t_2_out \
    op interface \
    ports { t_2_out { O 8 vector } t_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name p_out6 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out6 \
    op interface \
    ports { p_out6 { O 8 vector } p_out6_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name p_out7 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out7 \
    op interface \
    ports { p_out7 { O 8 vector } p_out7_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name p_out8 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out8 \
    op interface \
    ports { p_out8 { O 8 vector } p_out8_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name t_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t_1_out \
    op interface \
    ports { t_1_out { O 8 vector } t_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name p_out9 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out9 \
    op interface \
    ports { p_out9 { O 8 vector } p_out9_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name p_out10 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out10 \
    op interface \
    ports { p_out10 { O 8 vector } p_out10_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name p_out11 \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_p_out11 \
    op interface \
    ports { p_out11 { O 8 vector } p_out11_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name t_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_t_out \
    op interface \
    ports { t_out { O 8 vector } t_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName AES_ECB_encrypt_flow_control_loop_pipe_sequential_init_U
set CompName AES_ECB_encrypt_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix AES_ECB_encrypt_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


