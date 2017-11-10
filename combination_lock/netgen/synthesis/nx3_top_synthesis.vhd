--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: nx3_top_synthesis.vhd
-- /___/   /\     Timestamp: Fri Nov 10 21:26:16 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm nx3_top -w -dir netgen/synthesis -ofmt vhdl -sim nx3_top.ngc nx3_top_synthesis.vhd 
-- Device	: xc6slx16-2-csg324
-- Input file	: nx3_top.ngc
-- Output file	: E:\projects\VHDL_XIlinx\combination_lock\netgen\synthesis\nx3_top_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: nx3_top
-- Xilinx	: D:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity nx3_top is
  port (
    clk : in STD_LOGIC := 'X'; 
    buttons : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
    switches : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    leds : out STD_LOGIC_VECTOR ( 7 downto 0 ); 
    digit : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    segments : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end nx3_top;

architecture Structure of nx3_top is
  signal buttons_0_BUFGP_0 : STD_LOGIC; 
  signal buttons_4_IBUF_1 : STD_LOGIC; 
  signal switches_3_IBUF_2 : STD_LOGIC; 
  signal switches_2_IBUF_3 : STD_LOGIC; 
  signal switches_1_IBUF_4 : STD_LOGIC; 
  signal switches_0_IBUF_5 : STD_LOGIC; 
  signal clk_BUFGP_6 : STD_LOGIC; 
  signal inst_pulse_generator_oclk_7 : STD_LOGIC; 
  signal last_button4_state_8 : STD_LOGIC; 
  signal pswd_correct_9 : STD_LOGIC; 
  signal inst_bit4_cycle_generator_state_FSM_FFd1_10 : STD_LOGIC; 
  signal inst_bit4_cycle_generator_state_FSM_FFd2_11 : STD_LOGIC; 
  signal inst_bit4_cycle_generator_state_FSM_FFd3_12 : STD_LOGIC; 
  signal inst_bit4_cycle_generator_state_FSM_FFd4_13 : STD_LOGIC; 
  signal gen_input_select_3_inst_d_ff_bit_4_gen_d_ff_bit_4_3_inst_d_ff_bit_1_q_14 : STD_LOGIC; 
  signal gen_input_select_3_inst_d_ff_bit_4_gen_d_ff_bit_4_2_inst_d_ff_bit_1_q_15 : STD_LOGIC; 
  signal gen_input_select_3_inst_d_ff_bit_4_gen_d_ff_bit_4_1_inst_d_ff_bit_1_q_16 : STD_LOGIC; 
  signal gen_input_select_3_inst_d_ff_bit_4_gen_d_ff_bit_4_0_inst_d_ff_bit_1_q_17 : STD_LOGIC; 
  signal gen_input_select_2_inst_d_ff_bit_4_gen_d_ff_bit_4_3_inst_d_ff_bit_1_q_18 : STD_LOGIC; 
  signal gen_input_select_2_inst_d_ff_bit_4_gen_d_ff_bit_4_2_inst_d_ff_bit_1_q_19 : STD_LOGIC; 
  signal gen_input_select_2_inst_d_ff_bit_4_gen_d_ff_bit_4_1_inst_d_ff_bit_1_q_20 : STD_LOGIC; 
  signal gen_input_select_2_inst_d_ff_bit_4_gen_d_ff_bit_4_0_inst_d_ff_bit_1_q_21 : STD_LOGIC; 
  signal gen_input_select_1_inst_d_ff_bit_4_gen_d_ff_bit_4_3_inst_d_ff_bit_1_q_22 : STD_LOGIC; 
  signal gen_input_select_1_inst_d_ff_bit_4_gen_d_ff_bit_4_2_inst_d_ff_bit_1_q_23 : STD_LOGIC; 
  signal gen_input_select_1_inst_d_ff_bit_4_gen_d_ff_bit_4_1_inst_d_ff_bit_1_q_24 : STD_LOGIC; 
  signal gen_input_select_1_inst_d_ff_bit_4_gen_d_ff_bit_4_0_inst_d_ff_bit_1_q_25 : STD_LOGIC; 
  signal gen_input_select_0_inst_d_ff_bit_4_gen_d_ff_bit_4_3_inst_d_ff_bit_1_q_26 : STD_LOGIC; 
  signal gen_input_select_0_inst_d_ff_bit_4_gen_d_ff_bit_4_2_inst_d_ff_bit_1_q_27 : STD_LOGIC; 
  signal gen_input_select_0_inst_d_ff_bit_4_gen_d_ff_bit_4_1_inst_d_ff_bit_1_q_28 : STD_LOGIC; 
  signal gen_input_select_0_inst_d_ff_bit_4_gen_d_ff_bit_4_0_inst_d_ff_bit_1_q_29 : STD_LOGIC; 
  signal digit_3_OBUF_30 : STD_LOGIC; 
  signal digit_2_OBUF_31 : STD_LOGIC; 
  signal digit_1_OBUF_32 : STD_LOGIC; 
  signal digit_0_OBUF_33 : STD_LOGIC; 
  signal segments_6_OBUF_34 : STD_LOGIC; 
  signal segments_5_OBUF_35 : STD_LOGIC; 
  signal segments_4_OBUF_36 : STD_LOGIC; 
  signal segments_3_OBUF_37 : STD_LOGIC; 
  signal segments_2_OBUF_38 : STD_LOGIC; 
  signal segments_1_OBUF_39 : STD_LOGIC; 
  signal segments_0_OBUF_40 : STD_LOGIC; 
  signal display_buf_15_GND_5_o_equal_2_o : STD_LOGIC; 
  signal segments_7_OBUF_42 : STD_LOGIC; 
  signal inst_pulse_generator_count_15_GND_6_o_equal_2_o : STD_LOGIC; 
  signal inst_pulse_generator_state_INV_4_o : STD_LOGIC; 
  signal inst_pulse_generator_state_45 : STD_LOGIC; 
  signal inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd2_92 : STD_LOGIC; 
  signal inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd3_93 : STD_LOGIC; 
  signal inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd4_94 : STD_LOGIC; 
  signal inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd1_95 : STD_LOGIC; 
  signal display_buf_15_GND_5_o_equal_2_o_15_Q : STD_LOGIC; 
  signal display_buf_15_GND_5_o_equal_2_o_15_1_101 : STD_LOGIC; 
  signal inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_Q : STD_LOGIC; 
  signal inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_1_103 : STD_LOGIC; 
  signal N3 : STD_LOGIC; 
  signal N5 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal inst_pulse_generator_Mcount_count_cy_1_rt_135 : STD_LOGIC; 
  signal inst_pulse_generator_Mcount_count_cy_2_rt_136 : STD_LOGIC; 
  signal inst_pulse_generator_Mcount_count_cy_3_rt_137 : STD_LOGIC; 
  signal inst_pulse_generator_Mcount_count_cy_4_rt_138 : STD_LOGIC; 
  signal inst_pulse_generator_Mcount_count_cy_5_rt_139 : STD_LOGIC; 
  signal inst_pulse_generator_Mcount_count_cy_6_rt_140 : STD_LOGIC; 
  signal inst_pulse_generator_Mcount_count_cy_7_rt_141 : STD_LOGIC; 
  signal inst_pulse_generator_Mcount_count_cy_8_rt_142 : STD_LOGIC; 
  signal inst_pulse_generator_Mcount_count_cy_9_rt_143 : STD_LOGIC; 
  signal inst_pulse_generator_Mcount_count_cy_10_rt_144 : STD_LOGIC; 
  signal inst_pulse_generator_Mcount_count_cy_11_rt_145 : STD_LOGIC; 
  signal inst_pulse_generator_Mcount_count_cy_12_rt_146 : STD_LOGIC; 
  signal inst_pulse_generator_Mcount_count_cy_13_rt_147 : STD_LOGIC; 
  signal inst_pulse_generator_Mcount_count_xor_14_rt_148 : STD_LOGIC; 
  signal pswd_correct_rstpot_149 : STD_LOGIC; 
  signal inst_pulse_generator_count_0_rstpot_150 : STD_LOGIC; 
  signal inst_pulse_generator_count_1_rstpot_151 : STD_LOGIC; 
  signal inst_pulse_generator_count_2_rstpot_152 : STD_LOGIC; 
  signal inst_pulse_generator_count_3_rstpot_153 : STD_LOGIC; 
  signal inst_pulse_generator_count_4_rstpot_154 : STD_LOGIC; 
  signal inst_pulse_generator_count_5_rstpot_155 : STD_LOGIC; 
  signal inst_pulse_generator_count_6_rstpot_156 : STD_LOGIC; 
  signal inst_pulse_generator_count_7_rstpot_157 : STD_LOGIC; 
  signal inst_pulse_generator_count_8_rstpot_158 : STD_LOGIC; 
  signal inst_pulse_generator_count_9_rstpot_159 : STD_LOGIC; 
  signal inst_pulse_generator_count_10_rstpot_160 : STD_LOGIC; 
  signal inst_pulse_generator_count_11_rstpot_161 : STD_LOGIC; 
  signal inst_pulse_generator_count_12_rstpot_162 : STD_LOGIC; 
  signal inst_pulse_generator_count_13_rstpot_163 : STD_LOGIC; 
  signal inst_pulse_generator_count_14_rstpot_164 : STD_LOGIC; 
  signal inst_pulse_generator_count : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal inst_pulse_generator_Mcount_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal inst_pulse_generator_Mcount_count_cy : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal inst_led_4_display_single_number : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => inst_pulse_generator_count(15)
    );
  XST_VCC : VCC
    port map (
      P => segments_7_OBUF_42
    );
  last_button4_state : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_6,
      D => buttons_4_IBUF_1,
      Q => last_button4_state_8
    );
  inst_pulse_generator_oclk : FDE
    port map (
      C => clk_BUFGP_6,
      CE => inst_pulse_generator_count_15_GND_6_o_equal_2_o,
      D => inst_pulse_generator_state_45,
      Q => inst_pulse_generator_oclk_7
    );
  inst_pulse_generator_state : FDE
    port map (
      C => clk_BUFGP_6,
      CE => inst_pulse_generator_count_15_GND_6_o_equal_2_o,
      D => inst_pulse_generator_state_INV_4_o,
      Q => inst_pulse_generator_state_45
    );
  gen_input_select_3_inst_d_ff_bit_4_gen_d_ff_bit_4_0_inst_d_ff_bit_1_q : FD
    port map (
      C => inst_bit4_cycle_generator_state_FSM_FFd1_10,
      D => switches_0_IBUF_5,
      Q => gen_input_select_3_inst_d_ff_bit_4_gen_d_ff_bit_4_0_inst_d_ff_bit_1_q_17
    );
  gen_input_select_3_inst_d_ff_bit_4_gen_d_ff_bit_4_1_inst_d_ff_bit_1_q : FD
    port map (
      C => inst_bit4_cycle_generator_state_FSM_FFd1_10,
      D => switches_1_IBUF_4,
      Q => gen_input_select_3_inst_d_ff_bit_4_gen_d_ff_bit_4_1_inst_d_ff_bit_1_q_16
    );
  gen_input_select_3_inst_d_ff_bit_4_gen_d_ff_bit_4_2_inst_d_ff_bit_1_q : FD
    port map (
      C => inst_bit4_cycle_generator_state_FSM_FFd1_10,
      D => switches_2_IBUF_3,
      Q => gen_input_select_3_inst_d_ff_bit_4_gen_d_ff_bit_4_2_inst_d_ff_bit_1_q_15
    );
  gen_input_select_3_inst_d_ff_bit_4_gen_d_ff_bit_4_3_inst_d_ff_bit_1_q : FD
    port map (
      C => inst_bit4_cycle_generator_state_FSM_FFd1_10,
      D => switches_3_IBUF_2,
      Q => gen_input_select_3_inst_d_ff_bit_4_gen_d_ff_bit_4_3_inst_d_ff_bit_1_q_14
    );
  gen_input_select_2_inst_d_ff_bit_4_gen_d_ff_bit_4_0_inst_d_ff_bit_1_q : FD
    port map (
      C => inst_bit4_cycle_generator_state_FSM_FFd2_11,
      D => switches_0_IBUF_5,
      Q => gen_input_select_2_inst_d_ff_bit_4_gen_d_ff_bit_4_0_inst_d_ff_bit_1_q_21
    );
  gen_input_select_2_inst_d_ff_bit_4_gen_d_ff_bit_4_1_inst_d_ff_bit_1_q : FD
    port map (
      C => inst_bit4_cycle_generator_state_FSM_FFd2_11,
      D => switches_1_IBUF_4,
      Q => gen_input_select_2_inst_d_ff_bit_4_gen_d_ff_bit_4_1_inst_d_ff_bit_1_q_20
    );
  gen_input_select_2_inst_d_ff_bit_4_gen_d_ff_bit_4_2_inst_d_ff_bit_1_q : FD
    port map (
      C => inst_bit4_cycle_generator_state_FSM_FFd2_11,
      D => switches_2_IBUF_3,
      Q => gen_input_select_2_inst_d_ff_bit_4_gen_d_ff_bit_4_2_inst_d_ff_bit_1_q_19
    );
  gen_input_select_2_inst_d_ff_bit_4_gen_d_ff_bit_4_3_inst_d_ff_bit_1_q : FD
    port map (
      C => inst_bit4_cycle_generator_state_FSM_FFd2_11,
      D => switches_3_IBUF_2,
      Q => gen_input_select_2_inst_d_ff_bit_4_gen_d_ff_bit_4_3_inst_d_ff_bit_1_q_18
    );
  gen_input_select_1_inst_d_ff_bit_4_gen_d_ff_bit_4_0_inst_d_ff_bit_1_q : FD
    port map (
      C => inst_bit4_cycle_generator_state_FSM_FFd3_12,
      D => switches_0_IBUF_5,
      Q => gen_input_select_1_inst_d_ff_bit_4_gen_d_ff_bit_4_0_inst_d_ff_bit_1_q_25
    );
  gen_input_select_1_inst_d_ff_bit_4_gen_d_ff_bit_4_1_inst_d_ff_bit_1_q : FD
    port map (
      C => inst_bit4_cycle_generator_state_FSM_FFd3_12,
      D => switches_1_IBUF_4,
      Q => gen_input_select_1_inst_d_ff_bit_4_gen_d_ff_bit_4_1_inst_d_ff_bit_1_q_24
    );
  gen_input_select_1_inst_d_ff_bit_4_gen_d_ff_bit_4_2_inst_d_ff_bit_1_q : FD
    port map (
      C => inst_bit4_cycle_generator_state_FSM_FFd3_12,
      D => switches_2_IBUF_3,
      Q => gen_input_select_1_inst_d_ff_bit_4_gen_d_ff_bit_4_2_inst_d_ff_bit_1_q_23
    );
  gen_input_select_1_inst_d_ff_bit_4_gen_d_ff_bit_4_3_inst_d_ff_bit_1_q : FD
    port map (
      C => inst_bit4_cycle_generator_state_FSM_FFd3_12,
      D => switches_3_IBUF_2,
      Q => gen_input_select_1_inst_d_ff_bit_4_gen_d_ff_bit_4_3_inst_d_ff_bit_1_q_22
    );
  gen_input_select_0_inst_d_ff_bit_4_gen_d_ff_bit_4_0_inst_d_ff_bit_1_q : FD
    port map (
      C => inst_bit4_cycle_generator_state_FSM_FFd4_13,
      D => switches_0_IBUF_5,
      Q => gen_input_select_0_inst_d_ff_bit_4_gen_d_ff_bit_4_0_inst_d_ff_bit_1_q_29
    );
  gen_input_select_0_inst_d_ff_bit_4_gen_d_ff_bit_4_1_inst_d_ff_bit_1_q : FD
    port map (
      C => inst_bit4_cycle_generator_state_FSM_FFd4_13,
      D => switches_1_IBUF_4,
      Q => gen_input_select_0_inst_d_ff_bit_4_gen_d_ff_bit_4_1_inst_d_ff_bit_1_q_28
    );
  gen_input_select_0_inst_d_ff_bit_4_gen_d_ff_bit_4_2_inst_d_ff_bit_1_q : FD
    port map (
      C => inst_bit4_cycle_generator_state_FSM_FFd4_13,
      D => switches_2_IBUF_3,
      Q => gen_input_select_0_inst_d_ff_bit_4_gen_d_ff_bit_4_2_inst_d_ff_bit_1_q_27
    );
  gen_input_select_0_inst_d_ff_bit_4_gen_d_ff_bit_4_3_inst_d_ff_bit_1_q : FD
    port map (
      C => inst_bit4_cycle_generator_state_FSM_FFd4_13,
      D => switches_3_IBUF_2,
      Q => gen_input_select_0_inst_d_ff_bit_4_gen_d_ff_bit_4_3_inst_d_ff_bit_1_q_26
    );
  inst_bit4_cycle_generator_state_FSM_FFd3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => buttons_0_BUFGP_0,
      D => inst_bit4_cycle_generator_state_FSM_FFd4_13,
      Q => inst_bit4_cycle_generator_state_FSM_FFd3_12
    );
  inst_bit4_cycle_generator_state_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => buttons_0_BUFGP_0,
      D => inst_bit4_cycle_generator_state_FSM_FFd3_12,
      Q => inst_bit4_cycle_generator_state_FSM_FFd2_11
    );
  inst_bit4_cycle_generator_state_FSM_FFd1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => buttons_0_BUFGP_0,
      D => inst_bit4_cycle_generator_state_FSM_FFd2_11,
      Q => inst_bit4_cycle_generator_state_FSM_FFd1_10
    );
  inst_bit4_cycle_generator_state_FSM_FFd4 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => buttons_0_BUFGP_0,
      D => inst_bit4_cycle_generator_state_FSM_FFd1_10,
      Q => inst_bit4_cycle_generator_state_FSM_FFd4_13
    );
  inst_pulse_generator_Mcount_count_cy_0_Q : MUXCY
    port map (
      CI => inst_pulse_generator_count(15),
      DI => segments_7_OBUF_42,
      S => inst_pulse_generator_Mcount_count_lut(0),
      O => inst_pulse_generator_Mcount_count_cy(0)
    );
  inst_pulse_generator_Mcount_count_xor_0_Q : XORCY
    port map (
      CI => inst_pulse_generator_count(15),
      LI => inst_pulse_generator_Mcount_count_lut(0),
      O => Result(0)
    );
  inst_pulse_generator_Mcount_count_cy_1_Q : MUXCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(0),
      DI => inst_pulse_generator_count(15),
      S => inst_pulse_generator_Mcount_count_cy_1_rt_135,
      O => inst_pulse_generator_Mcount_count_cy(1)
    );
  inst_pulse_generator_Mcount_count_xor_1_Q : XORCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(0),
      LI => inst_pulse_generator_Mcount_count_cy_1_rt_135,
      O => Result(1)
    );
  inst_pulse_generator_Mcount_count_cy_2_Q : MUXCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(1),
      DI => inst_pulse_generator_count(15),
      S => inst_pulse_generator_Mcount_count_cy_2_rt_136,
      O => inst_pulse_generator_Mcount_count_cy(2)
    );
  inst_pulse_generator_Mcount_count_xor_2_Q : XORCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(1),
      LI => inst_pulse_generator_Mcount_count_cy_2_rt_136,
      O => Result(2)
    );
  inst_pulse_generator_Mcount_count_cy_3_Q : MUXCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(2),
      DI => inst_pulse_generator_count(15),
      S => inst_pulse_generator_Mcount_count_cy_3_rt_137,
      O => inst_pulse_generator_Mcount_count_cy(3)
    );
  inst_pulse_generator_Mcount_count_xor_3_Q : XORCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(2),
      LI => inst_pulse_generator_Mcount_count_cy_3_rt_137,
      O => Result(3)
    );
  inst_pulse_generator_Mcount_count_cy_4_Q : MUXCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(3),
      DI => inst_pulse_generator_count(15),
      S => inst_pulse_generator_Mcount_count_cy_4_rt_138,
      O => inst_pulse_generator_Mcount_count_cy(4)
    );
  inst_pulse_generator_Mcount_count_xor_4_Q : XORCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(3),
      LI => inst_pulse_generator_Mcount_count_cy_4_rt_138,
      O => Result(4)
    );
  inst_pulse_generator_Mcount_count_cy_5_Q : MUXCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(4),
      DI => inst_pulse_generator_count(15),
      S => inst_pulse_generator_Mcount_count_cy_5_rt_139,
      O => inst_pulse_generator_Mcount_count_cy(5)
    );
  inst_pulse_generator_Mcount_count_xor_5_Q : XORCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(4),
      LI => inst_pulse_generator_Mcount_count_cy_5_rt_139,
      O => Result(5)
    );
  inst_pulse_generator_Mcount_count_cy_6_Q : MUXCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(5),
      DI => inst_pulse_generator_count(15),
      S => inst_pulse_generator_Mcount_count_cy_6_rt_140,
      O => inst_pulse_generator_Mcount_count_cy(6)
    );
  inst_pulse_generator_Mcount_count_xor_6_Q : XORCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(5),
      LI => inst_pulse_generator_Mcount_count_cy_6_rt_140,
      O => Result(6)
    );
  inst_pulse_generator_Mcount_count_cy_7_Q : MUXCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(6),
      DI => inst_pulse_generator_count(15),
      S => inst_pulse_generator_Mcount_count_cy_7_rt_141,
      O => inst_pulse_generator_Mcount_count_cy(7)
    );
  inst_pulse_generator_Mcount_count_xor_7_Q : XORCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(6),
      LI => inst_pulse_generator_Mcount_count_cy_7_rt_141,
      O => Result(7)
    );
  inst_pulse_generator_Mcount_count_cy_8_Q : MUXCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(7),
      DI => inst_pulse_generator_count(15),
      S => inst_pulse_generator_Mcount_count_cy_8_rt_142,
      O => inst_pulse_generator_Mcount_count_cy(8)
    );
  inst_pulse_generator_Mcount_count_xor_8_Q : XORCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(7),
      LI => inst_pulse_generator_Mcount_count_cy_8_rt_142,
      O => Result(8)
    );
  inst_pulse_generator_Mcount_count_cy_9_Q : MUXCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(8),
      DI => inst_pulse_generator_count(15),
      S => inst_pulse_generator_Mcount_count_cy_9_rt_143,
      O => inst_pulse_generator_Mcount_count_cy(9)
    );
  inst_pulse_generator_Mcount_count_xor_9_Q : XORCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(8),
      LI => inst_pulse_generator_Mcount_count_cy_9_rt_143,
      O => Result(9)
    );
  inst_pulse_generator_Mcount_count_cy_10_Q : MUXCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(9),
      DI => inst_pulse_generator_count(15),
      S => inst_pulse_generator_Mcount_count_cy_10_rt_144,
      O => inst_pulse_generator_Mcount_count_cy(10)
    );
  inst_pulse_generator_Mcount_count_xor_10_Q : XORCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(9),
      LI => inst_pulse_generator_Mcount_count_cy_10_rt_144,
      O => Result(10)
    );
  inst_pulse_generator_Mcount_count_cy_11_Q : MUXCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(10),
      DI => inst_pulse_generator_count(15),
      S => inst_pulse_generator_Mcount_count_cy_11_rt_145,
      O => inst_pulse_generator_Mcount_count_cy(11)
    );
  inst_pulse_generator_Mcount_count_xor_11_Q : XORCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(10),
      LI => inst_pulse_generator_Mcount_count_cy_11_rt_145,
      O => Result(11)
    );
  inst_pulse_generator_Mcount_count_cy_12_Q : MUXCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(11),
      DI => inst_pulse_generator_count(15),
      S => inst_pulse_generator_Mcount_count_cy_12_rt_146,
      O => inst_pulse_generator_Mcount_count_cy(12)
    );
  inst_pulse_generator_Mcount_count_xor_12_Q : XORCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(11),
      LI => inst_pulse_generator_Mcount_count_cy_12_rt_146,
      O => Result(12)
    );
  inst_pulse_generator_Mcount_count_cy_13_Q : MUXCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(12),
      DI => inst_pulse_generator_count(15),
      S => inst_pulse_generator_Mcount_count_cy_13_rt_147,
      O => inst_pulse_generator_Mcount_count_cy(13)
    );
  inst_pulse_generator_Mcount_count_xor_13_Q : XORCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(12),
      LI => inst_pulse_generator_Mcount_count_cy_13_rt_147,
      O => Result(13)
    );
  inst_pulse_generator_Mcount_count_xor_14_Q : XORCY
    port map (
      CI => inst_pulse_generator_Mcount_count_cy(13),
      LI => inst_pulse_generator_Mcount_count_xor_14_rt_148,
      O => Result(14)
    );
  inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd4 : FD
    generic map(
      INIT => '1'
    )
    port map (
      C => inst_pulse_generator_oclk_7,
      D => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd1_95,
      Q => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd4_94
    );
  inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => inst_pulse_generator_oclk_7,
      D => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd2_92,
      Q => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd1_95
    );
  inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => inst_pulse_generator_oclk_7,
      D => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd3_93,
      Q => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd2_92
    );
  inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => inst_pulse_generator_oclk_7,
      D => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd4_94,
      Q => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd3_93
    );
  inst_led_4_display_single_display_Mram_segs21 : LUT4
    generic map(
      INIT => X"D004"
    )
    port map (
      I0 => inst_led_4_display_single_number(0),
      I1 => inst_led_4_display_single_number(1),
      I2 => inst_led_4_display_single_number(2),
      I3 => inst_led_4_display_single_number(3),
      O => segments_2_OBUF_38
    );
  inst_led_4_display_single_display_Mram_segs51 : LUT4
    generic map(
      INIT => X"6054"
    )
    port map (
      I0 => inst_led_4_display_single_number(3),
      I1 => inst_led_4_display_single_number(1),
      I2 => inst_led_4_display_single_number(0),
      I3 => inst_led_4_display_single_number(2),
      O => segments_5_OBUF_35
    );
  inst_led_4_display_single_display_Mram_segs31 : LUT4
    generic map(
      INIT => X"8294"
    )
    port map (
      I0 => inst_led_4_display_single_number(1),
      I1 => inst_led_4_display_single_number(2),
      I2 => inst_led_4_display_single_number(0),
      I3 => inst_led_4_display_single_number(3),
      O => segments_3_OBUF_37
    );
  inst_led_4_display_single_display_Mram_segs12 : LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      I0 => inst_led_4_display_single_number(0),
      I1 => inst_led_4_display_single_number(1),
      I2 => inst_led_4_display_single_number(2),
      I3 => inst_led_4_display_single_number(3),
      O => segments_0_OBUF_40
    );
  inst_led_4_display_single_display_Mram_segs41 : LUT4
    generic map(
      INIT => X"02BA"
    )
    port map (
      I0 => inst_led_4_display_single_number(0),
      I1 => inst_led_4_display_single_number(1),
      I2 => inst_led_4_display_single_number(2),
      I3 => inst_led_4_display_single_number(3),
      O => segments_4_OBUF_36
    );
  inst_led_4_display_single_display_Mram_segs61 : LUT4
    generic map(
      INIT => X"0941"
    )
    port map (
      I0 => inst_led_4_display_single_number(1),
      I1 => inst_led_4_display_single_number(2),
      I2 => inst_led_4_display_single_number(3),
      I3 => inst_led_4_display_single_number(0),
      O => segments_6_OBUF_34
    );
  inst_led_4_display_single_display_Mram_segs111 : LUT4
    generic map(
      INIT => X"E228"
    )
    port map (
      I0 => inst_led_4_display_single_number(2),
      I1 => inst_led_4_display_single_number(0),
      I2 => inst_led_4_display_single_number(1),
      I3 => inst_led_4_display_single_number(3),
      O => segments_1_OBUF_39
    );
  display_buf_15_GND_5_o_equal_2_o_15_1 : LUT6
    generic map(
      INIT => X"0000000000400000"
    )
    port map (
      I0 => gen_input_select_0_inst_d_ff_bit_4_gen_d_ff_bit_4_1_inst_d_ff_bit_1_q_28,
      I1 => gen_input_select_1_inst_d_ff_bit_4_gen_d_ff_bit_4_0_inst_d_ff_bit_1_q_25,
      I2 => gen_input_select_0_inst_d_ff_bit_4_gen_d_ff_bit_4_0_inst_d_ff_bit_1_q_29,
      I3 => gen_input_select_0_inst_d_ff_bit_4_gen_d_ff_bit_4_2_inst_d_ff_bit_1_q_27,
      I4 => gen_input_select_0_inst_d_ff_bit_4_gen_d_ff_bit_4_3_inst_d_ff_bit_1_q_26,
      I5 => gen_input_select_1_inst_d_ff_bit_4_gen_d_ff_bit_4_1_inst_d_ff_bit_1_q_24,
      O => display_buf_15_GND_5_o_equal_2_o_15_Q
    );
  display_buf_15_GND_5_o_equal_2_o_15_2 : LUT6
    generic map(
      INIT => X"0000000000020000"
    )
    port map (
      I0 => display_buf_15_GND_5_o_equal_2_o_15_Q,
      I1 => gen_input_select_1_inst_d_ff_bit_4_gen_d_ff_bit_4_2_inst_d_ff_bit_1_q_23,
      I2 => gen_input_select_1_inst_d_ff_bit_4_gen_d_ff_bit_4_3_inst_d_ff_bit_1_q_22,
      I3 => gen_input_select_2_inst_d_ff_bit_4_gen_d_ff_bit_4_0_inst_d_ff_bit_1_q_21,
      I4 => gen_input_select_2_inst_d_ff_bit_4_gen_d_ff_bit_4_2_inst_d_ff_bit_1_q_19,
      I5 => gen_input_select_2_inst_d_ff_bit_4_gen_d_ff_bit_4_1_inst_d_ff_bit_1_q_20,
      O => display_buf_15_GND_5_o_equal_2_o_15_1_101
    );
  display_buf_15_GND_5_o_equal_2_o_15_3 : LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => gen_input_select_2_inst_d_ff_bit_4_gen_d_ff_bit_4_3_inst_d_ff_bit_1_q_18,
      I1 => gen_input_select_3_inst_d_ff_bit_4_gen_d_ff_bit_4_0_inst_d_ff_bit_1_q_17,
      I2 => gen_input_select_3_inst_d_ff_bit_4_gen_d_ff_bit_4_1_inst_d_ff_bit_1_q_16,
      I3 => gen_input_select_3_inst_d_ff_bit_4_gen_d_ff_bit_4_2_inst_d_ff_bit_1_q_15,
      I4 => display_buf_15_GND_5_o_equal_2_o_15_1_101,
      I5 => gen_input_select_3_inst_d_ff_bit_4_gen_d_ff_bit_4_3_inst_d_ff_bit_1_q_14,
      O => display_buf_15_GND_5_o_equal_2_o
    );
  inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => inst_pulse_generator_count(5),
      I1 => inst_pulse_generator_count(3),
      I2 => inst_pulse_generator_count(8),
      I3 => inst_pulse_generator_count(7),
      I4 => inst_pulse_generator_count(14),
      I5 => inst_pulse_generator_count(13),
      O => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_Q
    );
  inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => inst_pulse_generator_count(1),
      I1 => inst_pulse_generator_count(0),
      I2 => inst_pulse_generator_count(2),
      I3 => inst_pulse_generator_count(4),
      I4 => inst_pulse_generator_count(6),
      I5 => inst_pulse_generator_count(9),
      O => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_1_103
    );
  inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_3 : LUT5
    generic map(
      INIT => X"01000000"
    )
    port map (
      I0 => inst_pulse_generator_count(12),
      I1 => inst_pulse_generator_count(10),
      I2 => inst_pulse_generator_count(11),
      I3 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_1_103,
      I4 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_Q,
      O => inst_pulse_generator_count_15_GND_6_o_equal_2_o
    );
  inst_led_4_display_Mmux_single_number_3_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd4_94,
      I1 => gen_input_select_0_inst_d_ff_bit_4_gen_d_ff_bit_4_3_inst_d_ff_bit_1_q_26,
      I2 => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd1_95,
      I3 => gen_input_select_3_inst_d_ff_bit_4_gen_d_ff_bit_4_3_inst_d_ff_bit_1_q_14,
      O => N3
    );
  inst_led_4_display_Mmux_single_number_3_Q : LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
    port map (
      I0 => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd3_93,
      I1 => gen_input_select_1_inst_d_ff_bit_4_gen_d_ff_bit_4_3_inst_d_ff_bit_1_q_22,
      I2 => N3,
      I3 => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd2_92,
      I4 => gen_input_select_2_inst_d_ff_bit_4_gen_d_ff_bit_4_3_inst_d_ff_bit_1_q_18,
      O => inst_led_4_display_single_number(3)
    );
  inst_led_4_display_Mmux_single_number_2_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd4_94,
      I1 => gen_input_select_0_inst_d_ff_bit_4_gen_d_ff_bit_4_2_inst_d_ff_bit_1_q_27,
      I2 => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd1_95,
      I3 => gen_input_select_3_inst_d_ff_bit_4_gen_d_ff_bit_4_2_inst_d_ff_bit_1_q_15,
      O => N5
    );
  inst_led_4_display_Mmux_single_number_2_Q : LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
    port map (
      I0 => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd3_93,
      I1 => gen_input_select_1_inst_d_ff_bit_4_gen_d_ff_bit_4_2_inst_d_ff_bit_1_q_23,
      I2 => N5,
      I3 => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd2_92,
      I4 => gen_input_select_2_inst_d_ff_bit_4_gen_d_ff_bit_4_2_inst_d_ff_bit_1_q_19,
      O => inst_led_4_display_single_number(2)
    );
  inst_led_4_display_Mmux_single_number_1_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd4_94,
      I1 => gen_input_select_0_inst_d_ff_bit_4_gen_d_ff_bit_4_1_inst_d_ff_bit_1_q_28,
      I2 => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd1_95,
      I3 => gen_input_select_3_inst_d_ff_bit_4_gen_d_ff_bit_4_1_inst_d_ff_bit_1_q_16,
      O => N7
    );
  inst_led_4_display_Mmux_single_number_1_Q : LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
    port map (
      I0 => gen_input_select_2_inst_d_ff_bit_4_gen_d_ff_bit_4_1_inst_d_ff_bit_1_q_20,
      I1 => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd2_92,
      I2 => N7,
      I3 => gen_input_select_1_inst_d_ff_bit_4_gen_d_ff_bit_4_1_inst_d_ff_bit_1_q_24,
      I4 => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd3_93,
      O => inst_led_4_display_single_number(1)
    );
  inst_led_4_display_Mmux_single_number_0_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd4_94,
      I1 => gen_input_select_0_inst_d_ff_bit_4_gen_d_ff_bit_4_0_inst_d_ff_bit_1_q_29,
      I2 => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd1_95,
      I3 => gen_input_select_3_inst_d_ff_bit_4_gen_d_ff_bit_4_0_inst_d_ff_bit_1_q_17,
      O => N9
    );
  inst_led_4_display_Mmux_single_number_0_Q : LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
    port map (
      I0 => gen_input_select_2_inst_d_ff_bit_4_gen_d_ff_bit_4_0_inst_d_ff_bit_1_q_21,
      I1 => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd2_92,
      I2 => N9,
      I3 => gen_input_select_1_inst_d_ff_bit_4_gen_d_ff_bit_4_0_inst_d_ff_bit_1_q_25,
      I4 => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd3_93,
      O => inst_led_4_display_single_number(0)
    );
  buttons_4_IBUF : IBUF
    port map (
      I => buttons(4),
      O => buttons_4_IBUF_1
    );
  switches_3_IBUF : IBUF
    port map (
      I => switches(3),
      O => switches_3_IBUF_2
    );
  switches_2_IBUF : IBUF
    port map (
      I => switches(2),
      O => switches_2_IBUF_3
    );
  switches_1_IBUF : IBUF
    port map (
      I => switches(1),
      O => switches_1_IBUF_4
    );
  switches_0_IBUF : IBUF
    port map (
      I => switches(0),
      O => switches_0_IBUF_5
    );
  leds_7_OBUF : OBUF
    port map (
      I => pswd_correct_9,
      O => leds(7)
    );
  leds_6_OBUF : OBUF
    port map (
      I => pswd_correct_9,
      O => leds(6)
    );
  leds_5_OBUF : OBUF
    port map (
      I => pswd_correct_9,
      O => leds(5)
    );
  leds_4_OBUF : OBUF
    port map (
      I => pswd_correct_9,
      O => leds(4)
    );
  leds_3_OBUF : OBUF
    port map (
      I => pswd_correct_9,
      O => leds(3)
    );
  leds_2_OBUF : OBUF
    port map (
      I => pswd_correct_9,
      O => leds(2)
    );
  leds_1_OBUF : OBUF
    port map (
      I => pswd_correct_9,
      O => leds(1)
    );
  leds_0_OBUF : OBUF
    port map (
      I => pswd_correct_9,
      O => leds(0)
    );
  digit_3_OBUF : OBUF
    port map (
      I => digit_3_OBUF_30,
      O => digit(3)
    );
  digit_2_OBUF : OBUF
    port map (
      I => digit_2_OBUF_31,
      O => digit(2)
    );
  digit_1_OBUF : OBUF
    port map (
      I => digit_1_OBUF_32,
      O => digit(1)
    );
  digit_0_OBUF : OBUF
    port map (
      I => digit_0_OBUF_33,
      O => digit(0)
    );
  segments_7_OBUF : OBUF
    port map (
      I => segments_7_OBUF_42,
      O => segments(7)
    );
  segments_6_OBUF : OBUF
    port map (
      I => segments_6_OBUF_34,
      O => segments(6)
    );
  segments_5_OBUF : OBUF
    port map (
      I => segments_5_OBUF_35,
      O => segments(5)
    );
  segments_4_OBUF : OBUF
    port map (
      I => segments_4_OBUF_36,
      O => segments(4)
    );
  segments_3_OBUF : OBUF
    port map (
      I => segments_3_OBUF_37,
      O => segments(3)
    );
  segments_2_OBUF : OBUF
    port map (
      I => segments_2_OBUF_38,
      O => segments(2)
    );
  segments_1_OBUF : OBUF
    port map (
      I => segments_1_OBUF_39,
      O => segments(1)
    );
  segments_0_OBUF : OBUF
    port map (
      I => segments_0_OBUF_40,
      O => segments(0)
    );
  inst_pulse_generator_Mcount_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_pulse_generator_count(1),
      O => inst_pulse_generator_Mcount_count_cy_1_rt_135
    );
  inst_pulse_generator_Mcount_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_pulse_generator_count(2),
      O => inst_pulse_generator_Mcount_count_cy_2_rt_136
    );
  inst_pulse_generator_Mcount_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_pulse_generator_count(3),
      O => inst_pulse_generator_Mcount_count_cy_3_rt_137
    );
  inst_pulse_generator_Mcount_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_pulse_generator_count(4),
      O => inst_pulse_generator_Mcount_count_cy_4_rt_138
    );
  inst_pulse_generator_Mcount_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_pulse_generator_count(5),
      O => inst_pulse_generator_Mcount_count_cy_5_rt_139
    );
  inst_pulse_generator_Mcount_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_pulse_generator_count(6),
      O => inst_pulse_generator_Mcount_count_cy_6_rt_140
    );
  inst_pulse_generator_Mcount_count_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_pulse_generator_count(7),
      O => inst_pulse_generator_Mcount_count_cy_7_rt_141
    );
  inst_pulse_generator_Mcount_count_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_pulse_generator_count(8),
      O => inst_pulse_generator_Mcount_count_cy_8_rt_142
    );
  inst_pulse_generator_Mcount_count_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_pulse_generator_count(9),
      O => inst_pulse_generator_Mcount_count_cy_9_rt_143
    );
  inst_pulse_generator_Mcount_count_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_pulse_generator_count(10),
      O => inst_pulse_generator_Mcount_count_cy_10_rt_144
    );
  inst_pulse_generator_Mcount_count_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_pulse_generator_count(11),
      O => inst_pulse_generator_Mcount_count_cy_11_rt_145
    );
  inst_pulse_generator_Mcount_count_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_pulse_generator_count(12),
      O => inst_pulse_generator_Mcount_count_cy_12_rt_146
    );
  inst_pulse_generator_Mcount_count_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_pulse_generator_count(13),
      O => inst_pulse_generator_Mcount_count_cy_13_rt_147
    );
  inst_pulse_generator_Mcount_count_xor_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_pulse_generator_count(14),
      O => inst_pulse_generator_Mcount_count_xor_14_rt_148
    );
  pswd_correct : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_6,
      D => pswd_correct_rstpot_149,
      Q => pswd_correct_9
    );
  pswd_correct_rstpot : LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      I0 => pswd_correct_9,
      I1 => buttons_4_IBUF_1,
      I2 => last_button4_state_8,
      I3 => display_buf_15_GND_5_o_equal_2_o,
      O => pswd_correct_rstpot_149
    );
  inst_pulse_generator_count_0 : FD
    port map (
      C => clk_BUFGP_6,
      D => inst_pulse_generator_count_0_rstpot_150,
      Q => inst_pulse_generator_count(0)
    );
  inst_pulse_generator_count_1 : FD
    port map (
      C => clk_BUFGP_6,
      D => inst_pulse_generator_count_1_rstpot_151,
      Q => inst_pulse_generator_count(1)
    );
  inst_pulse_generator_count_2 : FD
    port map (
      C => clk_BUFGP_6,
      D => inst_pulse_generator_count_2_rstpot_152,
      Q => inst_pulse_generator_count(2)
    );
  inst_pulse_generator_count_3 : FD
    port map (
      C => clk_BUFGP_6,
      D => inst_pulse_generator_count_3_rstpot_153,
      Q => inst_pulse_generator_count(3)
    );
  inst_pulse_generator_count_4 : FD
    port map (
      C => clk_BUFGP_6,
      D => inst_pulse_generator_count_4_rstpot_154,
      Q => inst_pulse_generator_count(4)
    );
  inst_pulse_generator_count_5 : FD
    port map (
      C => clk_BUFGP_6,
      D => inst_pulse_generator_count_5_rstpot_155,
      Q => inst_pulse_generator_count(5)
    );
  inst_pulse_generator_count_6 : FD
    port map (
      C => clk_BUFGP_6,
      D => inst_pulse_generator_count_6_rstpot_156,
      Q => inst_pulse_generator_count(6)
    );
  inst_pulse_generator_count_7 : FD
    port map (
      C => clk_BUFGP_6,
      D => inst_pulse_generator_count_7_rstpot_157,
      Q => inst_pulse_generator_count(7)
    );
  inst_pulse_generator_count_8 : FD
    port map (
      C => clk_BUFGP_6,
      D => inst_pulse_generator_count_8_rstpot_158,
      Q => inst_pulse_generator_count(8)
    );
  inst_pulse_generator_count_9 : FD
    port map (
      C => clk_BUFGP_6,
      D => inst_pulse_generator_count_9_rstpot_159,
      Q => inst_pulse_generator_count(9)
    );
  inst_pulse_generator_count_10 : FD
    port map (
      C => clk_BUFGP_6,
      D => inst_pulse_generator_count_10_rstpot_160,
      Q => inst_pulse_generator_count(10)
    );
  inst_pulse_generator_count_11 : FD
    port map (
      C => clk_BUFGP_6,
      D => inst_pulse_generator_count_11_rstpot_161,
      Q => inst_pulse_generator_count(11)
    );
  inst_pulse_generator_count_12 : FD
    port map (
      C => clk_BUFGP_6,
      D => inst_pulse_generator_count_12_rstpot_162,
      Q => inst_pulse_generator_count(12)
    );
  inst_pulse_generator_count_13 : FD
    port map (
      C => clk_BUFGP_6,
      D => inst_pulse_generator_count_13_rstpot_163,
      Q => inst_pulse_generator_count(13)
    );
  inst_pulse_generator_count_14 : FD
    port map (
      C => clk_BUFGP_6,
      D => inst_pulse_generator_count_14_rstpot_164,
      Q => inst_pulse_generator_count(14)
    );
  inst_pulse_generator_count_0_rstpot : LUT6
    generic map(
      INIT => X"FE00FF00FF00FF00"
    )
    port map (
      I0 => inst_pulse_generator_count(10),
      I1 => inst_pulse_generator_count(11),
      I2 => inst_pulse_generator_count(12),
      I3 => Result(0),
      I4 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_1_103,
      I5 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_Q,
      O => inst_pulse_generator_count_0_rstpot_150
    );
  inst_pulse_generator_count_1_rstpot : LUT6
    generic map(
      INIT => X"FE00FF00FF00FF00"
    )
    port map (
      I0 => inst_pulse_generator_count(10),
      I1 => inst_pulse_generator_count(11),
      I2 => inst_pulse_generator_count(12),
      I3 => Result(1),
      I4 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_1_103,
      I5 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_Q,
      O => inst_pulse_generator_count_1_rstpot_151
    );
  inst_pulse_generator_count_2_rstpot : LUT6
    generic map(
      INIT => X"FE00FF00FF00FF00"
    )
    port map (
      I0 => inst_pulse_generator_count(10),
      I1 => inst_pulse_generator_count(11),
      I2 => inst_pulse_generator_count(12),
      I3 => Result(2),
      I4 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_1_103,
      I5 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_Q,
      O => inst_pulse_generator_count_2_rstpot_152
    );
  inst_pulse_generator_count_3_rstpot : LUT6
    generic map(
      INIT => X"FE00FF00FF00FF00"
    )
    port map (
      I0 => inst_pulse_generator_count(10),
      I1 => inst_pulse_generator_count(11),
      I2 => inst_pulse_generator_count(12),
      I3 => Result(3),
      I4 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_1_103,
      I5 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_Q,
      O => inst_pulse_generator_count_3_rstpot_153
    );
  inst_pulse_generator_count_4_rstpot : LUT6
    generic map(
      INIT => X"FE00FF00FF00FF00"
    )
    port map (
      I0 => inst_pulse_generator_count(10),
      I1 => inst_pulse_generator_count(11),
      I2 => inst_pulse_generator_count(12),
      I3 => Result(4),
      I4 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_1_103,
      I5 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_Q,
      O => inst_pulse_generator_count_4_rstpot_154
    );
  inst_pulse_generator_count_5_rstpot : LUT6
    generic map(
      INIT => X"FE00FF00FF00FF00"
    )
    port map (
      I0 => inst_pulse_generator_count(10),
      I1 => inst_pulse_generator_count(11),
      I2 => inst_pulse_generator_count(12),
      I3 => Result(5),
      I4 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_1_103,
      I5 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_Q,
      O => inst_pulse_generator_count_5_rstpot_155
    );
  inst_pulse_generator_count_6_rstpot : LUT6
    generic map(
      INIT => X"FE00FF00FF00FF00"
    )
    port map (
      I0 => inst_pulse_generator_count(10),
      I1 => inst_pulse_generator_count(11),
      I2 => inst_pulse_generator_count(12),
      I3 => Result(6),
      I4 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_1_103,
      I5 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_Q,
      O => inst_pulse_generator_count_6_rstpot_156
    );
  inst_pulse_generator_count_7_rstpot : LUT6
    generic map(
      INIT => X"FE00FF00FF00FF00"
    )
    port map (
      I0 => inst_pulse_generator_count(10),
      I1 => inst_pulse_generator_count(11),
      I2 => inst_pulse_generator_count(12),
      I3 => Result(7),
      I4 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_1_103,
      I5 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_Q,
      O => inst_pulse_generator_count_7_rstpot_157
    );
  inst_pulse_generator_count_8_rstpot : LUT6
    generic map(
      INIT => X"FE00FF00FF00FF00"
    )
    port map (
      I0 => inst_pulse_generator_count(10),
      I1 => inst_pulse_generator_count(11),
      I2 => inst_pulse_generator_count(12),
      I3 => Result(8),
      I4 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_1_103,
      I5 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_Q,
      O => inst_pulse_generator_count_8_rstpot_158
    );
  inst_pulse_generator_count_9_rstpot : LUT6
    generic map(
      INIT => X"FE00FF00FF00FF00"
    )
    port map (
      I0 => inst_pulse_generator_count(10),
      I1 => inst_pulse_generator_count(11),
      I2 => inst_pulse_generator_count(12),
      I3 => Result(9),
      I4 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_1_103,
      I5 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_Q,
      O => inst_pulse_generator_count_9_rstpot_159
    );
  inst_pulse_generator_count_10_rstpot : LUT6
    generic map(
      INIT => X"FE00FF00FF00FF00"
    )
    port map (
      I0 => inst_pulse_generator_count(10),
      I1 => inst_pulse_generator_count(11),
      I2 => inst_pulse_generator_count(12),
      I3 => Result(10),
      I4 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_1_103,
      I5 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_Q,
      O => inst_pulse_generator_count_10_rstpot_160
    );
  inst_pulse_generator_count_11_rstpot : LUT6
    generic map(
      INIT => X"FE00FF00FF00FF00"
    )
    port map (
      I0 => inst_pulse_generator_count(10),
      I1 => inst_pulse_generator_count(11),
      I2 => inst_pulse_generator_count(12),
      I3 => Result(11),
      I4 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_1_103,
      I5 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_Q,
      O => inst_pulse_generator_count_11_rstpot_161
    );
  inst_pulse_generator_count_12_rstpot : LUT6
    generic map(
      INIT => X"FE00FF00FF00FF00"
    )
    port map (
      I0 => inst_pulse_generator_count(10),
      I1 => inst_pulse_generator_count(11),
      I2 => inst_pulse_generator_count(12),
      I3 => Result(12),
      I4 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_1_103,
      I5 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_Q,
      O => inst_pulse_generator_count_12_rstpot_162
    );
  inst_pulse_generator_count_13_rstpot : LUT6
    generic map(
      INIT => X"FE00FF00FF00FF00"
    )
    port map (
      I0 => inst_pulse_generator_count(10),
      I1 => inst_pulse_generator_count(11),
      I2 => inst_pulse_generator_count(12),
      I3 => Result(13),
      I4 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_1_103,
      I5 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_Q,
      O => inst_pulse_generator_count_13_rstpot_163
    );
  inst_pulse_generator_count_14_rstpot : LUT6
    generic map(
      INIT => X"FEFFFFFF00000000"
    )
    port map (
      I0 => inst_pulse_generator_count(10),
      I1 => inst_pulse_generator_count(11),
      I2 => inst_pulse_generator_count(12),
      I3 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_1_103,
      I4 => inst_pulse_generator_count_15_GND_6_o_equal_2_o_15_Q,
      I5 => Result(14),
      O => inst_pulse_generator_count_14_rstpot_164
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_6
    );
  buttons_0_BUFGP : BUFGP
    port map (
      I => buttons(0),
      O => buttons_0_BUFGP_0
    );
  inst_pulse_generator_Mcount_count_lut_0_INV_0 : INV
    port map (
      I => inst_pulse_generator_count(0),
      O => inst_pulse_generator_Mcount_count_lut(0)
    );
  inst_pulse_generator_state_INV_4_o1_INV_0 : INV
    port map (
      I => inst_pulse_generator_state_45,
      O => inst_pulse_generator_state_INV_4_o
    );
  inst_led_4_display_digit_select_0_1_INV_0 : INV
    port map (
      I => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd4_94,
      O => digit_0_OBUF_33
    );
  inst_led_4_display_digit_select_1_1_INV_0 : INV
    port map (
      I => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd3_93,
      O => digit_1_OBUF_32
    );
  inst_led_4_display_digit_select_2_1_INV_0 : INV
    port map (
      I => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd2_92,
      O => digit_2_OBUF_31
    );
  inst_led_4_display_digit_select_3_1_INV_0 : INV
    port map (
      I => inst_led_4_display_Inst_bit4_cycle_generator_state_FSM_FFd1_95,
      O => digit_3_OBUF_30
    );

end Structure;

