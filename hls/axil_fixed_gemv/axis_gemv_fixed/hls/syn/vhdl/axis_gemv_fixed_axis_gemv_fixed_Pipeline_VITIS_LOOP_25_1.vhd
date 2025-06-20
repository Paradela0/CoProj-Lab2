-- ==============================================================
-- Generated by Vitis HLS v2024.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity axis_gemv_fixed_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1 is
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
end;


architecture behav of axis_gemv_fixed_axis_gemv_fixed_Pipeline_VITIS_LOOP_25_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv10_200 : STD_LOGIC_VECTOR (9 downto 0) := "1000000000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal icmp_ln25_fu_120_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal tmpi_last_fu_141_p1 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal strm_in_TDATA_blk_n : STD_LOGIC;
    signal ap_phi_mux_UnifiedRetVal_phi_fu_99_p4 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln25_fu_132_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_fu_60 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    signal add_ln25_fu_126_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_i_3 : STD_LOGIC_VECTOR (9 downto 0);
    signal localmem_we0_local : STD_LOGIC;
    signal tmpi_data_fu_145_p1 : STD_LOGIC_VECTOR (24 downto 0);
    signal localmem_ce0_local : STD_LOGIC;
    signal ap_return_preg : STD_LOGIC_VECTOR (0 downto 0) := "0";
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ready_sig : STD_LOGIC;
    signal ap_done_sig : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component axis_gemv_fixed_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component axis_gemv_fixed_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready_sig,
        ap_done => ap_done_sig,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_return_preg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_return_preg <= ap_const_lv1_0;
            else
                if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_return_preg <= ap_phi_mux_UnifiedRetVal_phi_fu_99_p4;
                end if; 
            end if;
        end if;
    end process;


    i_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                if (((tmpi_last_fu_141_p1 = ap_const_lv1_0) and (icmp_ln25_fu_120_p2 = ap_const_lv1_0))) then 
                    i_fu_60 <= add_ln25_fu_126_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    i_fu_60 <= ap_const_lv10_0;
                end if;
            end if; 
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm, ap_CS_fsm_state1, ap_block_state1_pp0_stage0_iter0)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln25_fu_126_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i_3) + unsigned(ap_const_lv10_1));
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_block_state1_pp0_stage0_iter0)
    begin
        if ((ap_const_boolean_1 = ap_block_state1_pp0_stage0_iter0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state1_pp0_stage0_iter0_assign_proc : process(strm_in_TVALID, icmp_ln25_fu_120_p2, ap_start_int)
    begin
                ap_block_state1_pp0_stage0_iter0 <= ((ap_start_int = ap_const_logic_0) or ((icmp_ln25_fu_120_p2 = ap_const_lv1_0) and (strm_in_TVALID = ap_const_logic_0)));
    end process;


    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_state1, icmp_ln25_fu_120_p2, ap_block_state1_pp0_stage0_iter0, tmpi_last_fu_141_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1) and ((tmpi_last_fu_141_p1 = ap_const_lv1_1) or (icmp_ln25_fu_120_p2 = ap_const_lv1_1)))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_done <= ap_done_sig;

    ap_done_int_assign_proc : process(ap_CS_fsm_state1, ap_block_state1_pp0_stage0_iter0, ap_loop_exit_ready, ap_done_reg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_CS_fsm_state1, ap_start_int)
    begin
        if (((ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_phi_mux_UnifiedRetVal_phi_fu_99_p4_assign_proc : process(ap_CS_fsm_state1, icmp_ln25_fu_120_p2, tmpi_last_fu_141_p1)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
            if (((tmpi_last_fu_141_p1 = ap_const_lv1_1) and (icmp_ln25_fu_120_p2 = ap_const_lv1_0))) then 
                ap_phi_mux_UnifiedRetVal_phi_fu_99_p4 <= ap_const_lv1_0;
            elsif ((icmp_ln25_fu_120_p2 = ap_const_lv1_1)) then 
                ap_phi_mux_UnifiedRetVal_phi_fu_99_p4 <= ap_const_lv1_1;
            else 
                ap_phi_mux_UnifiedRetVal_phi_fu_99_p4 <= "X";
            end if;
        else 
            ap_phi_mux_UnifiedRetVal_phi_fu_99_p4 <= "X";
        end if; 
    end process;

    ap_ready <= ap_ready_sig;

    ap_ready_int_assign_proc : process(ap_CS_fsm_state1, ap_block_state1_pp0_stage0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_return_assign_proc : process(ap_CS_fsm_state1, ap_block_state1_pp0_stage0_iter0, ap_loop_exit_ready, ap_phi_mux_UnifiedRetVal_phi_fu_99_p4, ap_return_preg)
    begin
        if (((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_return <= ap_phi_mux_UnifiedRetVal_phi_fu_99_p4;
        else 
            ap_return <= ap_return_preg;
        end if; 
    end process;


    ap_sig_allocacmp_i_3_assign_proc : process(ap_CS_fsm_state1, i_fu_60, ap_loop_init)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_sig_allocacmp_i_3 <= ap_const_lv10_0;
        else 
            ap_sig_allocacmp_i_3 <= i_fu_60;
        end if; 
    end process;

    i_out <= ap_sig_allocacmp_i_3(9 - 1 downto 0);

    i_out_ap_vld_assign_proc : process(ap_CS_fsm_state1, icmp_ln25_fu_120_p2, ap_block_state1_pp0_stage0_iter0, tmpi_last_fu_141_p1, ap_loop_exit_ready)
    begin
        if ((((ap_loop_exit_ready = ap_const_logic_1) and (tmpi_last_fu_141_p1 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (icmp_ln25_fu_120_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_loop_exit_ready = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (icmp_ln25_fu_120_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            i_out_ap_vld <= ap_const_logic_1;
        else 
            i_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln25_fu_120_p2 <= "1" when (ap_sig_allocacmp_i_3 = ap_const_lv10_200) else "0";
    localmem_address0 <= zext_ln25_fu_132_p1(9 - 1 downto 0);
    localmem_ce0 <= localmem_ce0_local;

    localmem_ce0_local_assign_proc : process(ap_CS_fsm_state1, ap_block_state1_pp0_stage0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            localmem_ce0_local <= ap_const_logic_1;
        else 
            localmem_ce0_local <= ap_const_logic_0;
        end if; 
    end process;

    localmem_d0 <= tmpi_data_fu_145_p1;
    localmem_we0 <= localmem_we0_local;

    localmem_we0_local_assign_proc : process(ap_CS_fsm_state1, icmp_ln25_fu_120_p2, ap_block_state1_pp0_stage0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (icmp_ln25_fu_120_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            localmem_we0_local <= ap_const_logic_1;
        else 
            localmem_we0_local <= ap_const_logic_0;
        end if; 
    end process;


    strm_in_TDATA_blk_n_assign_proc : process(ap_CS_fsm_state1, strm_in_TVALID, icmp_ln25_fu_120_p2, ap_start_int)
    begin
        if (((icmp_ln25_fu_120_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1) and (ap_start_int = ap_const_logic_1))) then 
            strm_in_TDATA_blk_n <= strm_in_TVALID;
        else 
            strm_in_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    strm_in_TREADY_assign_proc : process(ap_CS_fsm_state1, icmp_ln25_fu_120_p2, ap_block_state1_pp0_stage0_iter0)
    begin
        if (((ap_const_boolean_0 = ap_block_state1_pp0_stage0_iter0) and (icmp_ln25_fu_120_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            strm_in_TREADY <= ap_const_logic_1;
        else 
            strm_in_TREADY <= ap_const_logic_0;
        end if; 
    end process;

    tmpi_data_fu_145_p1 <= strm_in_TDATA(25 - 1 downto 0);
    tmpi_last_fu_141_p1 <= strm_in_TLAST;
    zext_ln25_fu_132_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i_3),64));
end behav;
