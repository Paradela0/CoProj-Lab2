-- ==============================================================
-- Generated by Vitis HLS v2024.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity axis_gemv_fixed is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    strm_in_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
    strm_in_TVALID : IN STD_LOGIC;
    strm_in_TREADY : OUT STD_LOGIC;
    strm_in_TKEEP : IN STD_LOGIC_VECTOR (3 downto 0);
    strm_in_TSTRB : IN STD_LOGIC_VECTOR (3 downto 0);
    strm_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
    strm_out_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
    strm_out_TVALID : OUT STD_LOGIC;
    strm_out_TREADY : IN STD_LOGIC;
    strm_out_TKEEP : OUT STD_LOGIC_VECTOR (3 downto 0);
    strm_out_TSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
    strm_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of axis_gemv_fixed is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "axis_gemv_fixed_axis_gemv_fixed,hls_ip_2024_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.091000,HLS_SYN_LAT=131341,HLS_SYN_TPT=none,HLS_SYN_MEM=1,HLS_SYN_DSP=0,HLS_SYN_FF=439,HLS_SYN_LUT=521,HLS_VERSION=2024_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_ST_fsm_state3 : STD_LOGIC_VECTOR (6 downto 0) := "0000100";
    constant ap_ST_fsm_state4 : STD_LOGIC_VECTOR (6 downto 0) := "0001000";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (6 downto 0) := "0010000";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (6 downto 0) := "0100000";
    constant ap_ST_fsm_state7 : STD_LOGIC_VECTOR (6 downto 0) := "1000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv10_200 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";

    signal ap_rst_n_inv : STD_LOGIC;
    signal localmem_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal localmem_ce0 : STD_LOGIC;
    signal localmem_we0 : STD_LOGIC;
    signal localmem_q0 : STD_LOGIC_VECTOR (24 downto 0);
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_return : STD_LOGIC_VECTOR (0 downto 0);
    signal targetBlock_reg_130 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state3 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state3 : signal is "none";
    signal zext_ln28_fu_120_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_CS_fsm_state4 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state4 : signal is "none";
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_start : STD_LOGIC;
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_done : STD_LOGIC;
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_idle : STD_LOGIC;
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_ready : STD_LOGIC;
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_strm_in_TREADY : STD_LOGIC;
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_i_out : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_i_out_ap_vld : STD_LOGIC;
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_localmem_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_localmem_ce0 : STD_LOGIC;
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_localmem_we0 : STD_LOGIC;
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_localmem_d0 : STD_LOGIC_VECTOR (24 downto 0);
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_ap_start : STD_LOGIC;
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_ap_done : STD_LOGIC;
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_ap_idle : STD_LOGIC;
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_ap_ready : STD_LOGIC;
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TREADY : STD_LOGIC;
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_in_TREADY : STD_LOGIC;
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TDATA : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TVALID : STD_LOGIC;
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TKEEP : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TSTRB : STD_LOGIC_VECTOR (3 downto 0);
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TLAST : STD_LOGIC_VECTOR (0 downto 0);
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_localmem_address0 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_localmem_ce0 : STD_LOGIC;
    signal i_0260_reg_64 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal i_loc_fu_60 : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_NS_fsm : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ST_fsm_state3_blk : STD_LOGIC;
    signal ap_ST_fsm_state4_blk : STD_LOGIC;
    signal ap_ST_fsm_state5_blk : STD_LOGIC;
    signal ap_ST_fsm_state6_blk : STD_LOGIC;
    signal ap_ST_fsm_state7_blk : STD_LOGIC;
    signal regslice_both_strm_out_V_data_V_U_apdone_blk : STD_LOGIC;
    signal ap_CS_fsm_state7 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state7 : signal is "none";
    signal regslice_both_strm_in_V_data_V_U_apdone_blk : STD_LOGIC;
    signal strm_in_TDATA_int_regslice : STD_LOGIC_VECTOR (31 downto 0);
    signal strm_in_TVALID_int_regslice : STD_LOGIC;
    signal strm_in_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_strm_in_V_data_V_U_ack_in : STD_LOGIC;
    signal regslice_both_strm_in_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal strm_in_TKEEP_int_regslice : STD_LOGIC_VECTOR (3 downto 0);
    signal regslice_both_strm_in_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_strm_in_V_keep_V_U_ack_in : STD_LOGIC;
    signal regslice_both_strm_in_V_strb_V_U_apdone_blk : STD_LOGIC;
    signal strm_in_TSTRB_int_regslice : STD_LOGIC_VECTOR (3 downto 0);
    signal regslice_both_strm_in_V_strb_V_U_vld_out : STD_LOGIC;
    signal regslice_both_strm_in_V_strb_V_U_ack_in : STD_LOGIC;
    signal regslice_both_strm_in_V_last_V_U_apdone_blk : STD_LOGIC;
    signal strm_in_TLAST_int_regslice : STD_LOGIC_VECTOR (0 downto 0);
    signal regslice_both_strm_in_V_last_V_U_vld_out : STD_LOGIC;
    signal regslice_both_strm_in_V_last_V_U_ack_in : STD_LOGIC;
    signal strm_out_TVALID_int_regslice : STD_LOGIC;
    signal strm_out_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_strm_out_V_data_V_U_vld_out : STD_LOGIC;
    signal regslice_both_strm_out_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_strm_out_V_keep_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_strm_out_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_strm_out_V_strb_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_strm_out_V_strb_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_strm_out_V_strb_V_U_vld_out : STD_LOGIC;
    signal regslice_both_strm_out_V_last_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_strm_out_V_last_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_strm_out_V_last_V_U_vld_out : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component axis_gemv_fixed_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        strm_in_TVALID : IN STD_LOGIC;
        strm_in_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
        strm_in_TREADY : OUT STD_LOGIC;
        strm_in_TKEEP : IN STD_LOGIC_VECTOR (3 downto 0);
        strm_in_TSTRB : IN STD_LOGIC_VECTOR (3 downto 0);
        strm_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
        i_out : OUT STD_LOGIC_VECTOR (8 downto 0);
        i_out_ap_vld : OUT STD_LOGIC;
        localmem_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
        localmem_ce0 : OUT STD_LOGIC;
        localmem_we0 : OUT STD_LOGIC;
        localmem_d0 : OUT STD_LOGIC_VECTOR (24 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component axis_gemv_fixed_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2 IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        strm_in_TVALID : IN STD_LOGIC;
        strm_out_TREADY : IN STD_LOGIC;
        strm_in_TDATA : IN STD_LOGIC_VECTOR (31 downto 0);
        strm_in_TREADY : OUT STD_LOGIC;
        strm_in_TKEEP : IN STD_LOGIC_VECTOR (3 downto 0);
        strm_in_TSTRB : IN STD_LOGIC_VECTOR (3 downto 0);
        strm_in_TLAST : IN STD_LOGIC_VECTOR (0 downto 0);
        strm_out_TDATA : OUT STD_LOGIC_VECTOR (31 downto 0);
        strm_out_TVALID : OUT STD_LOGIC;
        strm_out_TKEEP : OUT STD_LOGIC_VECTOR (3 downto 0);
        strm_out_TSTRB : OUT STD_LOGIC_VECTOR (3 downto 0);
        strm_out_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
        i_0260 : IN STD_LOGIC_VECTOR (9 downto 0);
        localmem_address0 : OUT STD_LOGIC_VECTOR (8 downto 0);
        localmem_ce0 : OUT STD_LOGIC;
        localmem_q0 : IN STD_LOGIC_VECTOR (24 downto 0) );
    end component;


    component axis_gemv_fixed_localmem_RAM_AUTO_1R1W IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (8 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (24 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (24 downto 0) );
    end component;


    component axis_gemv_fixed_regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    localmem_U : component axis_gemv_fixed_localmem_RAM_AUTO_1R1W
    generic map (
        DataWidth => 25,
        AddressRange => 512,
        AddressWidth => 9)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        address0 => localmem_address0,
        ce0 => localmem_ce0,
        we0 => localmem_we0,
        d0 => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_localmem_d0,
        q0 => localmem_q0);

    grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76 : component axis_gemv_fixed_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_start,
        ap_done => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_done,
        ap_idle => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_idle,
        ap_ready => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_ready,
        strm_in_TVALID => strm_in_TVALID_int_regslice,
        strm_in_TDATA => strm_in_TDATA_int_regslice,
        strm_in_TREADY => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_strm_in_TREADY,
        strm_in_TKEEP => strm_in_TKEEP_int_regslice,
        strm_in_TSTRB => strm_in_TSTRB_int_regslice,
        strm_in_TLAST => strm_in_TLAST_int_regslice,
        i_out => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_i_out,
        i_out_ap_vld => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_i_out_ap_vld,
        localmem_address0 => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_localmem_address0,
        localmem_ce0 => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_localmem_ce0,
        localmem_we0 => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_localmem_we0,
        localmem_d0 => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_localmem_d0,
        ap_return => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_return);

    grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91 : component axis_gemv_fixed_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        ap_start => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_ap_start,
        ap_done => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_ap_done,
        ap_idle => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_ap_idle,
        ap_ready => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_ap_ready,
        strm_in_TVALID => strm_in_TVALID_int_regslice,
        strm_out_TREADY => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TREADY,
        strm_in_TDATA => strm_in_TDATA_int_regslice,
        strm_in_TREADY => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_in_TREADY,
        strm_in_TKEEP => strm_in_TKEEP_int_regslice,
        strm_in_TSTRB => strm_in_TSTRB_int_regslice,
        strm_in_TLAST => strm_in_TLAST_int_regslice,
        strm_out_TDATA => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TDATA,
        strm_out_TVALID => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TVALID,
        strm_out_TKEEP => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TKEEP,
        strm_out_TSTRB => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TSTRB,
        strm_out_TLAST => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TLAST,
        i_0260 => i_0260_reg_64,
        localmem_address0 => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_localmem_address0,
        localmem_ce0 => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_localmem_ce0,
        localmem_q0 => localmem_q0);

    regslice_both_strm_in_V_data_V_U : component axis_gemv_fixed_regslice_both
    generic map (
        DataWidth => 32)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => strm_in_TDATA,
        vld_in => strm_in_TVALID,
        ack_in => regslice_both_strm_in_V_data_V_U_ack_in,
        data_out => strm_in_TDATA_int_regslice,
        vld_out => strm_in_TVALID_int_regslice,
        ack_out => strm_in_TREADY_int_regslice,
        apdone_blk => regslice_both_strm_in_V_data_V_U_apdone_blk);

    regslice_both_strm_in_V_keep_V_U : component axis_gemv_fixed_regslice_both
    generic map (
        DataWidth => 4)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => strm_in_TKEEP,
        vld_in => strm_in_TVALID,
        ack_in => regslice_both_strm_in_V_keep_V_U_ack_in,
        data_out => strm_in_TKEEP_int_regslice,
        vld_out => regslice_both_strm_in_V_keep_V_U_vld_out,
        ack_out => strm_in_TREADY_int_regslice,
        apdone_blk => regslice_both_strm_in_V_keep_V_U_apdone_blk);

    regslice_both_strm_in_V_strb_V_U : component axis_gemv_fixed_regslice_both
    generic map (
        DataWidth => 4)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => strm_in_TSTRB,
        vld_in => strm_in_TVALID,
        ack_in => regslice_both_strm_in_V_strb_V_U_ack_in,
        data_out => strm_in_TSTRB_int_regslice,
        vld_out => regslice_both_strm_in_V_strb_V_U_vld_out,
        ack_out => strm_in_TREADY_int_regslice,
        apdone_blk => regslice_both_strm_in_V_strb_V_U_apdone_blk);

    regslice_both_strm_in_V_last_V_U : component axis_gemv_fixed_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => strm_in_TLAST,
        vld_in => strm_in_TVALID,
        ack_in => regslice_both_strm_in_V_last_V_U_ack_in,
        data_out => strm_in_TLAST_int_regslice,
        vld_out => regslice_both_strm_in_V_last_V_U_vld_out,
        ack_out => strm_in_TREADY_int_regslice,
        apdone_blk => regslice_both_strm_in_V_last_V_U_apdone_blk);

    regslice_both_strm_out_V_data_V_U : component axis_gemv_fixed_regslice_both
    generic map (
        DataWidth => 32)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TDATA,
        vld_in => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TVALID,
        ack_in => strm_out_TREADY_int_regslice,
        data_out => strm_out_TDATA,
        vld_out => regslice_both_strm_out_V_data_V_U_vld_out,
        ack_out => strm_out_TREADY,
        apdone_blk => regslice_both_strm_out_V_data_V_U_apdone_blk);

    regslice_both_strm_out_V_keep_V_U : component axis_gemv_fixed_regslice_both
    generic map (
        DataWidth => 4)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TKEEP,
        vld_in => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TVALID,
        ack_in => regslice_both_strm_out_V_keep_V_U_ack_in_dummy,
        data_out => strm_out_TKEEP,
        vld_out => regslice_both_strm_out_V_keep_V_U_vld_out,
        ack_out => strm_out_TREADY,
        apdone_blk => regslice_both_strm_out_V_keep_V_U_apdone_blk);

    regslice_both_strm_out_V_strb_V_U : component axis_gemv_fixed_regslice_both
    generic map (
        DataWidth => 4)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TSTRB,
        vld_in => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TVALID,
        ack_in => regslice_both_strm_out_V_strb_V_U_ack_in_dummy,
        data_out => strm_out_TSTRB,
        vld_out => regslice_both_strm_out_V_strb_V_U_vld_out,
        ack_out => strm_out_TREADY,
        apdone_blk => regslice_both_strm_out_V_strb_V_U_apdone_blk);

    regslice_both_strm_out_V_last_V_U : component axis_gemv_fixed_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst_n_inv,
        data_in => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TLAST,
        vld_in => grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TVALID,
        ack_in => regslice_both_strm_out_V_last_V_U_ack_in_dummy,
        data_out => strm_out_TLAST,
        vld_out => regslice_both_strm_out_V_last_V_U_vld_out,
        ack_out => strm_out_TREADY,
        apdone_blk => regslice_both_strm_out_V_last_V_U_apdone_blk);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state2)) then 
                    grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_ready = ap_const_logic_1)) then 
                    grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_ap_start_reg <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_ap_ready = ap_const_logic_1)) then 
                    grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0260_reg_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state4)) then
                if ((targetBlock_reg_130 = ap_const_lv1_1)) then 
                    i_0260_reg_64 <= ap_const_lv10_200;
                elsif ((targetBlock_reg_130 = ap_const_lv1_0)) then 
                    i_0260_reg_64 <= zext_ln28_fu_120_p1;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_i_out_ap_vld = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                i_loc_fu_60 <= grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_i_out;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state3)) then
                targetBlock_reg_130 <= grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_return;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state3, grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_done, grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_ap_done, ap_CS_fsm_state6, regslice_both_strm_out_V_data_V_U_apdone_blk, ap_CS_fsm_state7)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when ap_ST_fsm_state2 => 
                ap_NS_fsm <= ap_ST_fsm_state3;
            when ap_ST_fsm_state3 => 
                if (((grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state3))) then
                    ap_NS_fsm <= ap_ST_fsm_state4;
                else
                    ap_NS_fsm <= ap_ST_fsm_state3;
                end if;
            when ap_ST_fsm_state4 => 
                ap_NS_fsm <= ap_ST_fsm_state5;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state6;
            when ap_ST_fsm_state6 => 
                if (((grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_ap_done = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state6))) then
                    ap_NS_fsm <= ap_ST_fsm_state7;
                else
                    ap_NS_fsm <= ap_ST_fsm_state6;
                end if;
            when ap_ST_fsm_state7 => 
                if (((ap_const_logic_1 = ap_CS_fsm_state7) and (regslice_both_strm_out_V_data_V_U_apdone_blk = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state7;
                end if;
            when others =>  
                ap_NS_fsm <= "XXXXXXX";
        end case;
    end process;
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state3 <= ap_CS_fsm(2);
    ap_CS_fsm_state4 <= ap_CS_fsm(3);
    ap_CS_fsm_state5 <= ap_CS_fsm(4);
    ap_CS_fsm_state6 <= ap_CS_fsm(5);
    ap_CS_fsm_state7 <= ap_CS_fsm(6);
    ap_ST_fsm_state1_blk <= ap_const_logic_0;
    ap_ST_fsm_state2_blk <= ap_const_logic_0;

    ap_ST_fsm_state3_blk_assign_proc : process(grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_done)
    begin
        if ((grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state3_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state3_blk <= ap_const_logic_0;
        end if; 
    end process;

    ap_ST_fsm_state4_blk <= ap_const_logic_0;
    ap_ST_fsm_state5_blk <= ap_const_logic_0;

    ap_ST_fsm_state6_blk_assign_proc : process(grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_ap_done)
    begin
        if ((grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_ap_done = ap_const_logic_0)) then 
            ap_ST_fsm_state6_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state6_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state7_blk_assign_proc : process(regslice_both_strm_out_V_data_V_U_apdone_blk)
    begin
        if ((regslice_both_strm_out_V_data_V_U_apdone_blk = ap_const_logic_1)) then 
            ap_ST_fsm_state7_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state7_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;

    grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_start <= grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_ap_start_reg;
    grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_ap_start <= grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_ap_start_reg;
    grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TREADY <= (strm_out_TREADY_int_regslice and ap_CS_fsm_state6);

    localmem_address0_assign_proc : process(ap_CS_fsm_state3, grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_localmem_address0, grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_localmem_address0, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            localmem_address0 <= grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_localmem_address0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            localmem_address0 <= grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_localmem_address0;
        else 
            localmem_address0 <= "XXXXXXXXX";
        end if; 
    end process;


    localmem_ce0_assign_proc : process(ap_CS_fsm_state3, grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_localmem_ce0, grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_localmem_ce0, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            localmem_ce0 <= grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_localmem_ce0;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            localmem_ce0 <= grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_localmem_ce0;
        else 
            localmem_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    localmem_we0_assign_proc : process(ap_CS_fsm_state3, grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_localmem_we0)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            localmem_we0 <= grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_localmem_we0;
        else 
            localmem_we0 <= ap_const_logic_0;
        end if; 
    end process;

    strm_in_TREADY <= regslice_both_strm_in_V_data_V_U_ack_in;

    strm_in_TREADY_int_regslice_assign_proc : process(ap_CS_fsm_state3, grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_strm_in_TREADY, grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_in_TREADY, ap_CS_fsm_state6)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
            strm_in_TREADY_int_regslice <= grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_in_TREADY;
        elsif ((ap_const_logic_1 = ap_CS_fsm_state3)) then 
            strm_in_TREADY_int_regslice <= grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1_fu_76_strm_in_TREADY;
        else 
            strm_in_TREADY_int_regslice <= ap_const_logic_0;
        end if; 
    end process;

    strm_out_TVALID <= regslice_both_strm_out_V_data_V_U_vld_out;
    strm_out_TVALID_int_regslice <= grp_axis_gemv_fixed_Pipeline_VITIS_LOOP_32_2_fu_91_strm_out_TVALID;
    zext_ln28_fu_120_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_loc_fu_60),10));
end behav;
