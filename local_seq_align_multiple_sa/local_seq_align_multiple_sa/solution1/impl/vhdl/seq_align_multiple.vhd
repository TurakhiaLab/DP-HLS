-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity seq_align_multiple is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    chunk1_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    chunk1_ce0 : OUT STD_LOGIC;
    chunk1_q0 : IN STD_LOGIC_VECTOR (1 downto 0);
    chunk2_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    chunk2_ce0 : OUT STD_LOGIC;
    chunk2_q0 : IN STD_LOGIC_VECTOR (1 downto 0);
    chunk3_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    chunk3_ce0 : OUT STD_LOGIC;
    chunk3_q0 : IN STD_LOGIC_VECTOR (1 downto 0);
    chunk4_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    chunk4_ce0 : OUT STD_LOGIC;
    chunk4_q0 : IN STD_LOGIC_VECTOR (1 downto 0);
    chunk5_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    chunk5_ce0 : OUT STD_LOGIC;
    chunk5_q0 : IN STD_LOGIC_VECTOR (1 downto 0);
    chunk6_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    chunk6_ce0 : OUT STD_LOGIC;
    chunk6_q0 : IN STD_LOGIC_VECTOR (1 downto 0);
    chunk7_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    chunk7_ce0 : OUT STD_LOGIC;
    chunk7_q0 : IN STD_LOGIC_VECTOR (1 downto 0);
    chunk8_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    chunk8_ce0 : OUT STD_LOGIC;
    chunk8_q0 : IN STD_LOGIC_VECTOR (1 downto 0);
    ref1_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    ref1_ce0 : OUT STD_LOGIC;
    ref1_q0 : IN STD_LOGIC_VECTOR (1 downto 0);
    ref2_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    ref2_ce0 : OUT STD_LOGIC;
    ref2_q0 : IN STD_LOGIC_VECTOR (1 downto 0);
    ref3_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    ref3_ce0 : OUT STD_LOGIC;
    ref3_q0 : IN STD_LOGIC_VECTOR (1 downto 0);
    ref4_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    ref4_ce0 : OUT STD_LOGIC;
    ref4_q0 : IN STD_LOGIC_VECTOR (1 downto 0);
    ref5_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    ref5_ce0 : OUT STD_LOGIC;
    ref5_q0 : IN STD_LOGIC_VECTOR (1 downto 0);
    ref6_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    ref6_ce0 : OUT STD_LOGIC;
    ref6_q0 : IN STD_LOGIC_VECTOR (1 downto 0);
    ref7_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    ref7_ce0 : OUT STD_LOGIC;
    ref7_q0 : IN STD_LOGIC_VECTOR (1 downto 0);
    ref8_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    ref8_ce0 : OUT STD_LOGIC;
    ref8_q0 : IN STD_LOGIC_VECTOR (1 downto 0);
    dummy1_out : OUT STD_LOGIC_VECTOR (9 downto 0);
    dummy1_out_ap_vld : OUT STD_LOGIC;
    dummy2_out : OUT STD_LOGIC_VECTOR (9 downto 0);
    dummy2_out_ap_vld : OUT STD_LOGIC;
    dummy3_out : OUT STD_LOGIC_VECTOR (9 downto 0);
    dummy3_out_ap_vld : OUT STD_LOGIC;
    dummy4_out : OUT STD_LOGIC_VECTOR (9 downto 0);
    dummy4_out_ap_vld : OUT STD_LOGIC;
    dummy5_out : OUT STD_LOGIC_VECTOR (9 downto 0);
    dummy5_out_ap_vld : OUT STD_LOGIC;
    dummy6_out : OUT STD_LOGIC_VECTOR (9 downto 0);
    dummy6_out_ap_vld : OUT STD_LOGIC;
    dummy7_out : OUT STD_LOGIC_VECTOR (9 downto 0);
    dummy7_out_ap_vld : OUT STD_LOGIC;
    dummy8_out : OUT STD_LOGIC_VECTOR (9 downto 0);
    dummy8_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of seq_align_multiple is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "seq_align_multiple_seq_align_multiple,hls_ip_2022_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xcvu5p-flva2104-1-e,HLS_INPUT_CLOCK=4.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=6.044250,HLS_SYN_LAT=1082352,HLS_SYN_TPT=none,HLS_SYN_MEM=272,HLS_SYN_DSP=0,HLS_SYN_FF=50898,HLS_SYN_LUT=159624,HLS_VERSION=2022_1}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (1 downto 0) := "10";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;

    signal ap_CS_fsm : STD_LOGIC_VECTOR (1 downto 0) := "01";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal grp_seq_align_fu_126_ap_start : STD_LOGIC;
    signal grp_seq_align_fu_126_ap_done : STD_LOGIC;
    signal grp_seq_align_fu_126_ap_idle : STD_LOGIC;
    signal grp_seq_align_fu_126_ap_ready : STD_LOGIC;
    signal grp_seq_align_fu_126_chunk1_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_seq_align_fu_126_chunk1_ce0 : STD_LOGIC;
    signal grp_seq_align_fu_126_ref1_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_seq_align_fu_126_ref1_ce0 : STD_LOGIC;
    signal grp_seq_align_fu_126_ap_return : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_seq_align_fu_134_ap_start : STD_LOGIC;
    signal grp_seq_align_fu_134_ap_done : STD_LOGIC;
    signal grp_seq_align_fu_134_ap_idle : STD_LOGIC;
    signal grp_seq_align_fu_134_ap_ready : STD_LOGIC;
    signal grp_seq_align_fu_134_chunk1_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_seq_align_fu_134_chunk1_ce0 : STD_LOGIC;
    signal grp_seq_align_fu_134_ref1_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_seq_align_fu_134_ref1_ce0 : STD_LOGIC;
    signal grp_seq_align_fu_134_ap_return : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_seq_align_fu_142_ap_start : STD_LOGIC;
    signal grp_seq_align_fu_142_ap_done : STD_LOGIC;
    signal grp_seq_align_fu_142_ap_idle : STD_LOGIC;
    signal grp_seq_align_fu_142_ap_ready : STD_LOGIC;
    signal grp_seq_align_fu_142_chunk1_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_seq_align_fu_142_chunk1_ce0 : STD_LOGIC;
    signal grp_seq_align_fu_142_ref1_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_seq_align_fu_142_ref1_ce0 : STD_LOGIC;
    signal grp_seq_align_fu_142_ap_return : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_seq_align_fu_150_ap_start : STD_LOGIC;
    signal grp_seq_align_fu_150_ap_done : STD_LOGIC;
    signal grp_seq_align_fu_150_ap_idle : STD_LOGIC;
    signal grp_seq_align_fu_150_ap_ready : STD_LOGIC;
    signal grp_seq_align_fu_150_chunk1_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_seq_align_fu_150_chunk1_ce0 : STD_LOGIC;
    signal grp_seq_align_fu_150_ref1_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_seq_align_fu_150_ref1_ce0 : STD_LOGIC;
    signal grp_seq_align_fu_150_ap_return : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_seq_align_fu_158_ap_start : STD_LOGIC;
    signal grp_seq_align_fu_158_ap_done : STD_LOGIC;
    signal grp_seq_align_fu_158_ap_idle : STD_LOGIC;
    signal grp_seq_align_fu_158_ap_ready : STD_LOGIC;
    signal grp_seq_align_fu_158_chunk1_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_seq_align_fu_158_chunk1_ce0 : STD_LOGIC;
    signal grp_seq_align_fu_158_ref1_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_seq_align_fu_158_ref1_ce0 : STD_LOGIC;
    signal grp_seq_align_fu_158_ap_return : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_seq_align_fu_166_ap_start : STD_LOGIC;
    signal grp_seq_align_fu_166_ap_done : STD_LOGIC;
    signal grp_seq_align_fu_166_ap_idle : STD_LOGIC;
    signal grp_seq_align_fu_166_ap_ready : STD_LOGIC;
    signal grp_seq_align_fu_166_chunk1_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_seq_align_fu_166_chunk1_ce0 : STD_LOGIC;
    signal grp_seq_align_fu_166_ref1_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_seq_align_fu_166_ref1_ce0 : STD_LOGIC;
    signal grp_seq_align_fu_166_ap_return : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_seq_align_fu_174_ap_start : STD_LOGIC;
    signal grp_seq_align_fu_174_ap_done : STD_LOGIC;
    signal grp_seq_align_fu_174_ap_idle : STD_LOGIC;
    signal grp_seq_align_fu_174_ap_ready : STD_LOGIC;
    signal grp_seq_align_fu_174_chunk1_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_seq_align_fu_174_chunk1_ce0 : STD_LOGIC;
    signal grp_seq_align_fu_174_ref1_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_seq_align_fu_174_ref1_ce0 : STD_LOGIC;
    signal grp_seq_align_fu_174_ap_return : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_seq_align_fu_182_ap_start : STD_LOGIC;
    signal grp_seq_align_fu_182_ap_done : STD_LOGIC;
    signal grp_seq_align_fu_182_ap_idle : STD_LOGIC;
    signal grp_seq_align_fu_182_ap_ready : STD_LOGIC;
    signal grp_seq_align_fu_182_chunk1_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_seq_align_fu_182_chunk1_ce0 : STD_LOGIC;
    signal grp_seq_align_fu_182_ref1_address0 : STD_LOGIC_VECTOR (9 downto 0);
    signal grp_seq_align_fu_182_ref1_ce0 : STD_LOGIC;
    signal grp_seq_align_fu_182_ap_return : STD_LOGIC_VECTOR (8 downto 0);
    signal grp_seq_align_fu_126_ap_start_reg : STD_LOGIC := '0';
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal grp_seq_align_fu_134_ap_start_reg : STD_LOGIC := '0';
    signal grp_seq_align_fu_142_ap_start_reg : STD_LOGIC := '0';
    signal grp_seq_align_fu_150_ap_start_reg : STD_LOGIC := '0';
    signal grp_seq_align_fu_158_ap_start_reg : STD_LOGIC := '0';
    signal grp_seq_align_fu_166_ap_start_reg : STD_LOGIC := '0';
    signal grp_seq_align_fu_174_ap_start_reg : STD_LOGIC := '0';
    signal grp_seq_align_fu_182_ap_start_reg : STD_LOGIC := '0';
    signal ap_block_state2_on_subcall_done : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ST_fsm_state2_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component seq_align_multiple_seq_align IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        chunk1_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        chunk1_ce0 : OUT STD_LOGIC;
        chunk1_q0 : IN STD_LOGIC_VECTOR (1 downto 0);
        ref1_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
        ref1_ce0 : OUT STD_LOGIC;
        ref1_q0 : IN STD_LOGIC_VECTOR (1 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (8 downto 0) );
    end component;



begin
    grp_seq_align_fu_126 : component seq_align_multiple_seq_align
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_seq_align_fu_126_ap_start,
        ap_done => grp_seq_align_fu_126_ap_done,
        ap_idle => grp_seq_align_fu_126_ap_idle,
        ap_ready => grp_seq_align_fu_126_ap_ready,
        chunk1_address0 => grp_seq_align_fu_126_chunk1_address0,
        chunk1_ce0 => grp_seq_align_fu_126_chunk1_ce0,
        chunk1_q0 => chunk1_q0,
        ref1_address0 => grp_seq_align_fu_126_ref1_address0,
        ref1_ce0 => grp_seq_align_fu_126_ref1_ce0,
        ref1_q0 => ref1_q0,
        ap_return => grp_seq_align_fu_126_ap_return);

    grp_seq_align_fu_134 : component seq_align_multiple_seq_align
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_seq_align_fu_134_ap_start,
        ap_done => grp_seq_align_fu_134_ap_done,
        ap_idle => grp_seq_align_fu_134_ap_idle,
        ap_ready => grp_seq_align_fu_134_ap_ready,
        chunk1_address0 => grp_seq_align_fu_134_chunk1_address0,
        chunk1_ce0 => grp_seq_align_fu_134_chunk1_ce0,
        chunk1_q0 => chunk2_q0,
        ref1_address0 => grp_seq_align_fu_134_ref1_address0,
        ref1_ce0 => grp_seq_align_fu_134_ref1_ce0,
        ref1_q0 => ref2_q0,
        ap_return => grp_seq_align_fu_134_ap_return);

    grp_seq_align_fu_142 : component seq_align_multiple_seq_align
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_seq_align_fu_142_ap_start,
        ap_done => grp_seq_align_fu_142_ap_done,
        ap_idle => grp_seq_align_fu_142_ap_idle,
        ap_ready => grp_seq_align_fu_142_ap_ready,
        chunk1_address0 => grp_seq_align_fu_142_chunk1_address0,
        chunk1_ce0 => grp_seq_align_fu_142_chunk1_ce0,
        chunk1_q0 => chunk3_q0,
        ref1_address0 => grp_seq_align_fu_142_ref1_address0,
        ref1_ce0 => grp_seq_align_fu_142_ref1_ce0,
        ref1_q0 => ref3_q0,
        ap_return => grp_seq_align_fu_142_ap_return);

    grp_seq_align_fu_150 : component seq_align_multiple_seq_align
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_seq_align_fu_150_ap_start,
        ap_done => grp_seq_align_fu_150_ap_done,
        ap_idle => grp_seq_align_fu_150_ap_idle,
        ap_ready => grp_seq_align_fu_150_ap_ready,
        chunk1_address0 => grp_seq_align_fu_150_chunk1_address0,
        chunk1_ce0 => grp_seq_align_fu_150_chunk1_ce0,
        chunk1_q0 => chunk4_q0,
        ref1_address0 => grp_seq_align_fu_150_ref1_address0,
        ref1_ce0 => grp_seq_align_fu_150_ref1_ce0,
        ref1_q0 => ref4_q0,
        ap_return => grp_seq_align_fu_150_ap_return);

    grp_seq_align_fu_158 : component seq_align_multiple_seq_align
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_seq_align_fu_158_ap_start,
        ap_done => grp_seq_align_fu_158_ap_done,
        ap_idle => grp_seq_align_fu_158_ap_idle,
        ap_ready => grp_seq_align_fu_158_ap_ready,
        chunk1_address0 => grp_seq_align_fu_158_chunk1_address0,
        chunk1_ce0 => grp_seq_align_fu_158_chunk1_ce0,
        chunk1_q0 => chunk5_q0,
        ref1_address0 => grp_seq_align_fu_158_ref1_address0,
        ref1_ce0 => grp_seq_align_fu_158_ref1_ce0,
        ref1_q0 => ref5_q0,
        ap_return => grp_seq_align_fu_158_ap_return);

    grp_seq_align_fu_166 : component seq_align_multiple_seq_align
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_seq_align_fu_166_ap_start,
        ap_done => grp_seq_align_fu_166_ap_done,
        ap_idle => grp_seq_align_fu_166_ap_idle,
        ap_ready => grp_seq_align_fu_166_ap_ready,
        chunk1_address0 => grp_seq_align_fu_166_chunk1_address0,
        chunk1_ce0 => grp_seq_align_fu_166_chunk1_ce0,
        chunk1_q0 => chunk6_q0,
        ref1_address0 => grp_seq_align_fu_166_ref1_address0,
        ref1_ce0 => grp_seq_align_fu_166_ref1_ce0,
        ref1_q0 => ref6_q0,
        ap_return => grp_seq_align_fu_166_ap_return);

    grp_seq_align_fu_174 : component seq_align_multiple_seq_align
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_seq_align_fu_174_ap_start,
        ap_done => grp_seq_align_fu_174_ap_done,
        ap_idle => grp_seq_align_fu_174_ap_idle,
        ap_ready => grp_seq_align_fu_174_ap_ready,
        chunk1_address0 => grp_seq_align_fu_174_chunk1_address0,
        chunk1_ce0 => grp_seq_align_fu_174_chunk1_ce0,
        chunk1_q0 => chunk7_q0,
        ref1_address0 => grp_seq_align_fu_174_ref1_address0,
        ref1_ce0 => grp_seq_align_fu_174_ref1_ce0,
        ref1_q0 => ref7_q0,
        ap_return => grp_seq_align_fu_174_ap_return);

    grp_seq_align_fu_182 : component seq_align_multiple_seq_align
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => grp_seq_align_fu_182_ap_start,
        ap_done => grp_seq_align_fu_182_ap_done,
        ap_idle => grp_seq_align_fu_182_ap_idle,
        ap_ready => grp_seq_align_fu_182_ap_ready,
        chunk1_address0 => grp_seq_align_fu_182_chunk1_address0,
        chunk1_ce0 => grp_seq_align_fu_182_chunk1_ce0,
        chunk1_q0 => chunk8_q0,
        ref1_address0 => grp_seq_align_fu_182_ref1_address0,
        ref1_ce0 => grp_seq_align_fu_182_ref1_ce0,
        ref1_q0 => ref8_q0,
        ap_return => grp_seq_align_fu_182_ap_return);





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


    grp_seq_align_fu_126_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_seq_align_fu_126_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_seq_align_fu_126_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_seq_align_fu_126_ap_ready = ap_const_logic_1)) then 
                    grp_seq_align_fu_126_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_seq_align_fu_134_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_seq_align_fu_134_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_seq_align_fu_134_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_seq_align_fu_134_ap_ready = ap_const_logic_1)) then 
                    grp_seq_align_fu_134_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_seq_align_fu_142_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_seq_align_fu_142_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_seq_align_fu_142_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_seq_align_fu_142_ap_ready = ap_const_logic_1)) then 
                    grp_seq_align_fu_142_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_seq_align_fu_150_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_seq_align_fu_150_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_seq_align_fu_150_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_seq_align_fu_150_ap_ready = ap_const_logic_1)) then 
                    grp_seq_align_fu_150_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_seq_align_fu_158_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_seq_align_fu_158_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_seq_align_fu_158_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_seq_align_fu_158_ap_ready = ap_const_logic_1)) then 
                    grp_seq_align_fu_158_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_seq_align_fu_166_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_seq_align_fu_166_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_seq_align_fu_166_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_seq_align_fu_166_ap_ready = ap_const_logic_1)) then 
                    grp_seq_align_fu_166_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_seq_align_fu_174_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_seq_align_fu_174_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_seq_align_fu_174_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_seq_align_fu_174_ap_ready = ap_const_logic_1)) then 
                    grp_seq_align_fu_174_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    grp_seq_align_fu_182_ap_start_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                grp_seq_align_fu_182_ap_start_reg <= ap_const_logic_0;
            else
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    grp_seq_align_fu_182_ap_start_reg <= ap_const_logic_1;
                elsif ((grp_seq_align_fu_182_ap_ready = ap_const_logic_1)) then 
                    grp_seq_align_fu_182_ap_start_reg <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1, ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when others =>  
                ap_NS_fsm <= "XX";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_ST_fsm_state2_blk_assign_proc : process(ap_block_state2_on_subcall_done)
    begin
        if ((ap_const_boolean_1 = ap_block_state2_on_subcall_done)) then 
            ap_ST_fsm_state2_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state2_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_block_state2_on_subcall_done_assign_proc : process(grp_seq_align_fu_126_ap_done, grp_seq_align_fu_134_ap_done, grp_seq_align_fu_142_ap_done, grp_seq_align_fu_150_ap_done, grp_seq_align_fu_158_ap_done, grp_seq_align_fu_166_ap_done, grp_seq_align_fu_174_ap_done, grp_seq_align_fu_182_ap_done)
    begin
                ap_block_state2_on_subcall_done <= ((grp_seq_align_fu_182_ap_done = ap_const_logic_0) or (grp_seq_align_fu_174_ap_done = ap_const_logic_0) or (grp_seq_align_fu_166_ap_done = ap_const_logic_0) or (grp_seq_align_fu_158_ap_done = ap_const_logic_0) or (grp_seq_align_fu_150_ap_done = ap_const_logic_0) or (grp_seq_align_fu_142_ap_done = ap_const_logic_0) or (grp_seq_align_fu_134_ap_done = ap_const_logic_0) or (grp_seq_align_fu_126_ap_done = ap_const_logic_0));
    end process;


    ap_done_assign_proc : process(ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    chunk1_address0 <= grp_seq_align_fu_126_chunk1_address0;
    chunk1_ce0 <= grp_seq_align_fu_126_chunk1_ce0;
    chunk2_address0 <= grp_seq_align_fu_134_chunk1_address0;
    chunk2_ce0 <= grp_seq_align_fu_134_chunk1_ce0;
    chunk3_address0 <= grp_seq_align_fu_142_chunk1_address0;
    chunk3_ce0 <= grp_seq_align_fu_142_chunk1_ce0;
    chunk4_address0 <= grp_seq_align_fu_150_chunk1_address0;
    chunk4_ce0 <= grp_seq_align_fu_150_chunk1_ce0;
    chunk5_address0 <= grp_seq_align_fu_158_chunk1_address0;
    chunk5_ce0 <= grp_seq_align_fu_158_chunk1_ce0;
    chunk6_address0 <= grp_seq_align_fu_166_chunk1_address0;
    chunk6_ce0 <= grp_seq_align_fu_166_chunk1_ce0;
    chunk7_address0 <= grp_seq_align_fu_174_chunk1_address0;
    chunk7_ce0 <= grp_seq_align_fu_174_chunk1_ce0;
    chunk8_address0 <= grp_seq_align_fu_182_chunk1_address0;
    chunk8_ce0 <= grp_seq_align_fu_182_chunk1_ce0;
    dummy1_out <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_seq_align_fu_126_ap_return),10));

    dummy1_out_ap_vld_assign_proc : process(ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            dummy1_out_ap_vld <= ap_const_logic_1;
        else 
            dummy1_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    dummy2_out <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_seq_align_fu_134_ap_return),10));

    dummy2_out_ap_vld_assign_proc : process(ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            dummy2_out_ap_vld <= ap_const_logic_1;
        else 
            dummy2_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    dummy3_out <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_seq_align_fu_142_ap_return),10));

    dummy3_out_ap_vld_assign_proc : process(ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            dummy3_out_ap_vld <= ap_const_logic_1;
        else 
            dummy3_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    dummy4_out <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_seq_align_fu_150_ap_return),10));

    dummy4_out_ap_vld_assign_proc : process(ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            dummy4_out_ap_vld <= ap_const_logic_1;
        else 
            dummy4_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    dummy5_out <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_seq_align_fu_158_ap_return),10));

    dummy5_out_ap_vld_assign_proc : process(ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            dummy5_out_ap_vld <= ap_const_logic_1;
        else 
            dummy5_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    dummy6_out <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_seq_align_fu_166_ap_return),10));

    dummy6_out_ap_vld_assign_proc : process(ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            dummy6_out_ap_vld <= ap_const_logic_1;
        else 
            dummy6_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    dummy7_out <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_seq_align_fu_174_ap_return),10));

    dummy7_out_ap_vld_assign_proc : process(ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            dummy7_out_ap_vld <= ap_const_logic_1;
        else 
            dummy7_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    dummy8_out <= std_logic_vector(IEEE.numeric_std.resize(unsigned(grp_seq_align_fu_182_ap_return),10));

    dummy8_out_ap_vld_assign_proc : process(ap_CS_fsm_state2, ap_block_state2_on_subcall_done)
    begin
        if (((ap_const_boolean_0 = ap_block_state2_on_subcall_done) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            dummy8_out_ap_vld <= ap_const_logic_1;
        else 
            dummy8_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    grp_seq_align_fu_126_ap_start <= grp_seq_align_fu_126_ap_start_reg;
    grp_seq_align_fu_134_ap_start <= grp_seq_align_fu_134_ap_start_reg;
    grp_seq_align_fu_142_ap_start <= grp_seq_align_fu_142_ap_start_reg;
    grp_seq_align_fu_150_ap_start <= grp_seq_align_fu_150_ap_start_reg;
    grp_seq_align_fu_158_ap_start <= grp_seq_align_fu_158_ap_start_reg;
    grp_seq_align_fu_166_ap_start <= grp_seq_align_fu_166_ap_start_reg;
    grp_seq_align_fu_174_ap_start <= grp_seq_align_fu_174_ap_start_reg;
    grp_seq_align_fu_182_ap_start <= grp_seq_align_fu_182_ap_start_reg;
    ref1_address0 <= grp_seq_align_fu_126_ref1_address0;
    ref1_ce0 <= grp_seq_align_fu_126_ref1_ce0;
    ref2_address0 <= grp_seq_align_fu_134_ref1_address0;
    ref2_ce0 <= grp_seq_align_fu_134_ref1_ce0;
    ref3_address0 <= grp_seq_align_fu_142_ref1_address0;
    ref3_ce0 <= grp_seq_align_fu_142_ref1_ce0;
    ref4_address0 <= grp_seq_align_fu_150_ref1_address0;
    ref4_ce0 <= grp_seq_align_fu_150_ref1_ce0;
    ref5_address0 <= grp_seq_align_fu_158_ref1_address0;
    ref5_ce0 <= grp_seq_align_fu_158_ref1_ce0;
    ref6_address0 <= grp_seq_align_fu_166_ref1_address0;
    ref6_ce0 <= grp_seq_align_fu_166_ref1_ce0;
    ref7_address0 <= grp_seq_align_fu_174_ref1_address0;
    ref7_ce0 <= grp_seq_align_fu_174_ref1_ce0;
    ref8_address0 <= grp_seq_align_fu_182_ref1_address0;
    ref8_ce0 <= grp_seq_align_fu_182_ref1_ce0;
end behav;
