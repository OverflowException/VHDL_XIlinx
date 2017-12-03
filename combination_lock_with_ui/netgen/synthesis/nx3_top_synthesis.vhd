--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: nx3_top_synthesis.vhd
-- /___/   /\     Timestamp: Sun Dec 03 02:17:10 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm nx3_top -w -dir netgen/synthesis -ofmt vhdl -sim nx3_top.ngc nx3_top_synthesis.vhd 
-- Device	: xc6slx16-2-csg324
-- Input file	: nx3_top.ngc
-- Output file	: E:\projects\VHDL_XIlinx\combination_lock_with_ui\netgen\synthesis\nx3_top_synthesis.vhd
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
  signal buttons_4_IBUF_0 : STD_LOGIC; 
  signal buttons_3_IBUF_1 : STD_LOGIC; 
  signal buttons_2_IBUF_2 : STD_LOGIC; 
  signal switches_3_IBUF_3 : STD_LOGIC; 
  signal switches_2_IBUF_4 : STD_LOGIC; 
  signal switches_1_IBUF_5 : STD_LOGIC; 
  signal switches_0_IBUF_6 : STD_LOGIC; 
  signal switches_7_IBUF_7 : STD_LOGIC; 
  signal clk_BUFGP_8 : STD_LOGIC; 
  signal inst_counter_10_value_buf_3 : STD_LOGIC; 
  signal inst_counter_10_value_buf_2 : STD_LOGIC; 
  signal inst_counter_10_value_buf_1 : STD_LOGIC; 
  signal inst_counter_10_value_buf_0 : STD_LOGIC; 
  signal segments_0_OBUF_16 : STD_LOGIC; 
  signal digit_0_OBUF_17 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_out_pulse_state_18 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o : STD_LOGIC; 
  signal inst_counter_10_cmd_change : STD_LOGIC; 
  signal inst_counter_10_set_set_value_0_AND_11_o : STD_LOGIC; 
  signal inst_counter_10_set_set_value_0_AND_10_o : STD_LOGIC; 
  signal inst_counter_10_set_set_value_1_AND_9_o : STD_LOGIC; 
  signal inst_counter_10_set_set_value_1_AND_8_o : STD_LOGIC; 
  signal inst_counter_10_set_set_value_2_AND_7_o : STD_LOGIC; 
  signal inst_counter_10_set_set_value_2_AND_6_o : STD_LOGIC; 
  signal inst_counter_10_set_set_value_3_AND_5_o : STD_LOGIC; 
  signal inst_counter_10_set_set_value_3_AND_4_o : STD_LOGIC; 
  signal inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_0_Q : STD_LOGIC; 
  signal inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_1_Q : STD_LOGIC; 
  signal inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_2_Q : STD_LOGIC; 
  signal inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_3_Q_128 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_Q : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_1_130 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_2_131 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_3_132 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_4_133 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_5_134 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_1_rt_164 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_2_rt_165 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_3_rt_166 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_4_rt_167 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_5_rt_168 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_6_rt_169 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_7_rt_170 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_8_rt_171 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_9_rt_172 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_10_rt_173 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_11_rt_174 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_12_rt_175 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_13_rt_176 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_14_rt_177 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_15_rt_178 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_16_rt_179 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_17_rt_180 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_18_rt_181 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_19_rt_182 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_20_rt_183 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_21_rt_184 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_22_rt_185 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_23_rt_186 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_24_rt_187 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_25_rt_188 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_26_rt_189 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_27_rt_190 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_28_rt_191 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_29_rt_192 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_30_rt_193 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_31_rt_194 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_out_pulse_state_dpot_195 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_out_pulse_state_rstpot_196 : STD_LOGIC; 
  signal inst_counter_10_value_buf_0_LDC_197 : STD_LOGIC; 
  signal inst_counter_10_value_buf_0_C_0_198 : STD_LOGIC; 
  signal inst_counter_10_value_buf_0_P_0_199 : STD_LOGIC; 
  signal inst_counter_10_value_buf_1_LDC_200 : STD_LOGIC; 
  signal inst_counter_10_value_buf_1_C_1_201 : STD_LOGIC; 
  signal inst_counter_10_value_buf_1_P_1_202 : STD_LOGIC; 
  signal inst_counter_10_value_buf_2_LDC_203 : STD_LOGIC; 
  signal inst_counter_10_value_buf_2_C_2_204 : STD_LOGIC; 
  signal inst_counter_10_value_buf_2_P_2_205 : STD_LOGIC; 
  signal inst_counter_10_value_buf_3_LDC_206 : STD_LOGIC; 
  signal inst_counter_10_value_buf_3_C_3_207 : STD_LOGIC; 
  signal inst_counter_10_value_buf_3_P_3_208 : STD_LOGIC; 
  signal N7 : STD_LOGIC; 
  signal N8 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_0_rstpot_211 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_1_rstpot_212 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_2_rstpot_213 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_3_rstpot_214 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_4_rstpot_215 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_5_rstpot_216 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_6_rstpot_217 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_7_rstpot_218 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_8_rstpot_219 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_9_rstpot_220 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_10_rstpot_221 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_11_rstpot_222 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_12_rstpot_223 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_13_rstpot_224 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_14_rstpot_225 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_15_rstpot_226 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_16_rstpot_227 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_17_rstpot_228 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_18_rstpot_229 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_19_rstpot_230 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_20_rstpot_231 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_21_rstpot_232 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_22_rstpot_233 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_23_rstpot_234 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_24_rstpot_235 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_25_rstpot_236 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_26_rstpot_237 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_27_rstpot_238 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_28_rstpot_239 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_29_rstpot_240 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_30_rstpot_241 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_rstpot_242 : STD_LOGIC; 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_7_243 : STD_LOGIC; 
  signal inst_debouncer_outbtn : STD_LOGIC_VECTOR ( 4 downto 2 ); 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy : STD_LOGIC_VECTOR ( 30 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => segments_0_OBUF_16
    );
  XST_GND : GND
    port map (
      G => digit_0_OBUF_17
    );
  inst_debouncer_outbtn_4 : FD
    port map (
      C => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_out_pulse_state_18,
      D => buttons_4_IBUF_0,
      Q => inst_debouncer_outbtn(4)
    );
  inst_debouncer_outbtn_3 : FD
    port map (
      C => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_out_pulse_state_18,
      D => buttons_3_IBUF_1,
      Q => inst_debouncer_outbtn(3)
    );
  inst_debouncer_outbtn_2 : FD
    port map (
      C => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_out_pulse_state_18,
      D => buttons_2_IBUF_2,
      Q => inst_debouncer_outbtn(2)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_0_Q : MUXCY
    port map (
      CI => digit_0_OBUF_17,
      DI => segments_0_OBUF_16,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_lut(0),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(0)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_0_Q : XORCY
    port map (
      CI => digit_0_OBUF_17,
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_lut(0),
      O => Result(0)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_1_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(0),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_1_rt_164,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(1)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_1_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(0),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_1_rt_164,
      O => Result(1)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_2_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(1),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_2_rt_165,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(2)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_2_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(1),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_2_rt_165,
      O => Result(2)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_3_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(2),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_3_rt_166,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(3)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_3_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(2),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_3_rt_166,
      O => Result(3)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_4_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(3),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_4_rt_167,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(4)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_4_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(3),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_4_rt_167,
      O => Result(4)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_5_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(4),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_5_rt_168,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(5)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_5_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(4),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_5_rt_168,
      O => Result(5)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_6_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(5),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_6_rt_169,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(6)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_6_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(5),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_6_rt_169,
      O => Result(6)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_7_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(6),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_7_rt_170,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(7)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_7_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(6),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_7_rt_170,
      O => Result(7)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_8_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(7),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_8_rt_171,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(8)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_8_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(7),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_8_rt_171,
      O => Result(8)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_9_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(8),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_9_rt_172,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(9)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_9_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(8),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_9_rt_172,
      O => Result(9)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_10_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(9),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_10_rt_173,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(10)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_10_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(9),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_10_rt_173,
      O => Result(10)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_11_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(10),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_11_rt_174,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(11)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_11_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(10),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_11_rt_174,
      O => Result(11)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_12_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(11),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_12_rt_175,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(12)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_12_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(11),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_12_rt_175,
      O => Result(12)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_13_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(12),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_13_rt_176,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(13)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_13_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(12),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_13_rt_176,
      O => Result(13)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_14_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(13),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_14_rt_177,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(14)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_14_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(13),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_14_rt_177,
      O => Result(14)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_15_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(14),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_15_rt_178,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(15)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_15_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(14),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_15_rt_178,
      O => Result(15)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_16_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(15),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_16_rt_179,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(16)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_16_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(15),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_16_rt_179,
      O => Result(16)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_17_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(16),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_17_rt_180,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(17)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_17_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(16),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_17_rt_180,
      O => Result(17)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_18_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(17),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_18_rt_181,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(18)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_18_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(17),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_18_rt_181,
      O => Result(18)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_19_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(18),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_19_rt_182,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(19)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_19_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(18),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_19_rt_182,
      O => Result(19)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_20_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(19),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_20_rt_183,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(20)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_20_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(19),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_20_rt_183,
      O => Result(20)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_21_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(20),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_21_rt_184,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(21)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_21_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(20),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_21_rt_184,
      O => Result(21)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_22_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(21),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_22_rt_185,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(22)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_22_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(21),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_22_rt_185,
      O => Result(22)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_23_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(22),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_23_rt_186,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(23)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_23_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(22),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_23_rt_186,
      O => Result(23)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_24_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(23),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_24_rt_187,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(24)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_24_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(23),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_24_rt_187,
      O => Result(24)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_25_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(24),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_25_rt_188,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(25)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_25_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(24),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_25_rt_188,
      O => Result(25)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_26_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(25),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_26_rt_189,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(26)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_26_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(25),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_26_rt_189,
      O => Result(26)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_27_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(26),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_27_rt_190,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(27)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_27_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(26),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_27_rt_190,
      O => Result(27)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_28_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(27),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_28_rt_191,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(28)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_28_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(27),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_28_rt_191,
      O => Result(28)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_29_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(28),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_29_rt_192,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(29)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_29_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(28),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_29_rt_192,
      O => Result(29)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_30_Q : MUXCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(29),
      DI => digit_0_OBUF_17,
      S => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_30_rt_193,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(30)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_30_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(29),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_30_rt_193,
      O => Result(30)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_31_Q : XORCY
    port map (
      CI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy(30),
      LI => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_31_rt_194,
      O => Result(31)
    );
  inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_1_1 : LUT5
    generic map(
      INIT => X"F0D278F0"
    )
    port map (
      I0 => switches_7_IBUF_7,
      I1 => inst_debouncer_outbtn(2),
      I2 => inst_counter_10_value_buf_1,
      I3 => inst_counter_10_value_buf_0,
      I4 => inst_debouncer_outbtn(3),
      O => inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_1_Q
    );
  inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_2_1 : LUT6
    generic map(
      INIT => X"FF00FD027F80FF00"
    )
    port map (
      I0 => switches_7_IBUF_7,
      I1 => inst_debouncer_outbtn(2),
      I2 => inst_counter_10_value_buf_1,
      I3 => inst_counter_10_value_buf_2,
      I4 => inst_counter_10_value_buf_0,
      I5 => inst_debouncer_outbtn(3),
      O => inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_2_Q
    );
  inst_counter_10_out1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => inst_debouncer_outbtn(2),
      I1 => inst_debouncer_outbtn(3),
      O => inst_counter_10_cmd_change
    );
  inst_counter_10_set_set_value_0_AND_11_o1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_outbtn(4),
      I1 => switches_0_IBUF_6,
      O => inst_counter_10_set_set_value_0_AND_11_o
    );
  inst_counter_10_set_set_value_0_AND_10_o1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => inst_debouncer_outbtn(4),
      I1 => switches_0_IBUF_6,
      O => inst_counter_10_set_set_value_0_AND_10_o
    );
  inst_counter_10_set_set_value_1_AND_9_o1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_outbtn(4),
      I1 => switches_1_IBUF_5,
      O => inst_counter_10_set_set_value_1_AND_9_o
    );
  inst_counter_10_set_set_value_1_AND_8_o1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => inst_debouncer_outbtn(4),
      I1 => switches_1_IBUF_5,
      O => inst_counter_10_set_set_value_1_AND_8_o
    );
  inst_counter_10_set_set_value_2_AND_7_o1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_outbtn(4),
      I1 => switches_2_IBUF_4,
      O => inst_counter_10_set_set_value_2_AND_7_o
    );
  inst_counter_10_set_set_value_2_AND_6_o1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => inst_debouncer_outbtn(4),
      I1 => switches_2_IBUF_4,
      O => inst_counter_10_set_set_value_2_AND_6_o
    );
  inst_counter_10_set_set_value_3_AND_5_o1 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_outbtn(4),
      I1 => switches_3_IBUF_3,
      O => inst_counter_10_set_set_value_3_AND_5_o
    );
  inst_counter_10_set_set_value_3_AND_4_o1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => inst_debouncer_outbtn(4),
      I1 => switches_3_IBUF_3,
      O => inst_counter_10_set_set_value_3_AND_4_o
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(5),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(3),
      I2 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(8),
      I3 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(7),
      I4 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(14),
      I5 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(13),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_Q
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_2 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(1),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(0),
      I2 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(2),
      I3 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(4),
      I4 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(6),
      I5 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(9),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_1_130
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_3 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(11),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(10),
      I2 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(12),
      I3 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(15),
      I4 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(16),
      I5 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(17),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_2_131
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_4 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(19),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(18),
      I2 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(20),
      I3 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(21),
      I4 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(22),
      I5 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(23),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_3_132
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_5 : LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(25),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(24),
      I2 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(26),
      I3 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(27),
      I4 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(28),
      I5 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(29),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_4_133
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_6 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(31),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(30),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_5_134
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_7 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_5_134,
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_4_133,
      I2 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_3_132,
      I3 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_2_131,
      I4 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_1_130,
      I5 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_Q,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o
    );
  buttons_4_IBUF : IBUF
    port map (
      I => buttons(4),
      O => buttons_4_IBUF_0
    );
  buttons_3_IBUF : IBUF
    port map (
      I => buttons(3),
      O => buttons_3_IBUF_1
    );
  buttons_2_IBUF : IBUF
    port map (
      I => buttons(2),
      O => buttons_2_IBUF_2
    );
  switches_7_IBUF : IBUF
    port map (
      I => switches(7),
      O => switches_7_IBUF_7
    );
  switches_3_IBUF : IBUF
    port map (
      I => switches(3),
      O => switches_3_IBUF_3
    );
  switches_2_IBUF : IBUF
    port map (
      I => switches(2),
      O => switches_2_IBUF_4
    );
  switches_1_IBUF : IBUF
    port map (
      I => switches(1),
      O => switches_1_IBUF_5
    );
  switches_0_IBUF : IBUF
    port map (
      I => switches(0),
      O => switches_0_IBUF_6
    );
  leds_7_OBUF : OBUF
    port map (
      I => digit_0_OBUF_17,
      O => leds(7)
    );
  leds_6_OBUF : OBUF
    port map (
      I => digit_0_OBUF_17,
      O => leds(6)
    );
  leds_5_OBUF : OBUF
    port map (
      I => digit_0_OBUF_17,
      O => leds(5)
    );
  leds_4_OBUF : OBUF
    port map (
      I => digit_0_OBUF_17,
      O => leds(4)
    );
  leds_3_OBUF : OBUF
    port map (
      I => inst_counter_10_value_buf_3,
      O => leds(3)
    );
  leds_2_OBUF : OBUF
    port map (
      I => inst_counter_10_value_buf_2,
      O => leds(2)
    );
  leds_1_OBUF : OBUF
    port map (
      I => inst_counter_10_value_buf_1,
      O => leds(1)
    );
  leds_0_OBUF : OBUF
    port map (
      I => inst_counter_10_value_buf_0,
      O => leds(0)
    );
  digit_3_OBUF : OBUF
    port map (
      I => segments_0_OBUF_16,
      O => digit(3)
    );
  digit_2_OBUF : OBUF
    port map (
      I => segments_0_OBUF_16,
      O => digit(2)
    );
  digit_1_OBUF : OBUF
    port map (
      I => segments_0_OBUF_16,
      O => digit(1)
    );
  digit_0_OBUF : OBUF
    port map (
      I => digit_0_OBUF_17,
      O => digit(0)
    );
  segments_7_OBUF : OBUF
    port map (
      I => segments_0_OBUF_16,
      O => segments(7)
    );
  segments_6_OBUF : OBUF
    port map (
      I => segments_0_OBUF_16,
      O => segments(6)
    );
  segments_5_OBUF : OBUF
    port map (
      I => segments_0_OBUF_16,
      O => segments(5)
    );
  segments_4_OBUF : OBUF
    port map (
      I => segments_0_OBUF_16,
      O => segments(4)
    );
  segments_3_OBUF : OBUF
    port map (
      I => segments_0_OBUF_16,
      O => segments(3)
    );
  segments_2_OBUF : OBUF
    port map (
      I => segments_0_OBUF_16,
      O => segments(2)
    );
  segments_1_OBUF : OBUF
    port map (
      I => segments_0_OBUF_16,
      O => segments(1)
    );
  segments_0_OBUF : OBUF
    port map (
      I => segments_0_OBUF_16,
      O => segments(0)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(1),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_1_rt_164
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(2),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_2_rt_165
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(3),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_3_rt_166
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(4),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_4_rt_167
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(5),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_5_rt_168
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(6),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_6_rt_169
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(7),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_7_rt_170
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(8),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_8_rt_171
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(9),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_9_rt_172
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(10),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_10_rt_173
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(11),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_11_rt_174
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(12),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_12_rt_175
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(13),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_13_rt_176
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(14),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_14_rt_177
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(15),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_15_rt_178
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(16),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_16_rt_179
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(17),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_17_rt_180
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(18),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_18_rt_181
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(19),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_19_rt_182
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(20),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_20_rt_183
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(21),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_21_rt_184
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(22),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_22_rt_185
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(23),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_23_rt_186
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(24),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_24_rt_187
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(25),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_25_rt_188
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(26),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_26_rt_189
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_27_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(27),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_27_rt_190
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_28_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(28),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_28_rt_191
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_29_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(29),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_29_rt_192
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_30_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(30),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_cy_30_rt_193
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_31_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(31),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_xor_31_rt_194
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_out_pulse_state_dpot : LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_out_pulse_state_18,
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_5_134,
      I2 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_1_130,
      I3 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_2_131,
      I4 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_3_132,
      I5 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_4_133,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_out_pulse_state_dpot_195
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_out_pulse_state_rstpot : LUT3
    generic map(
      INIT => X"E2"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_out_pulse_state_18,
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_Q,
      I2 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_out_pulse_state_dpot_195,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_out_pulse_state_rstpot_196
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_out_pulse_state : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_out_pulse_state_rstpot_196,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_out_pulse_state_18
    );
  inst_counter_10_value_buf_0_LDC : LDC
    generic map(
      INIT => '0'
    )
    port map (
      CLR => inst_counter_10_set_set_value_0_AND_11_o,
      D => segments_0_OBUF_16,
      G => inst_counter_10_set_set_value_0_AND_10_o,
      Q => inst_counter_10_value_buf_0_LDC_197
    );
  inst_counter_10_value_buf_0_C_0 : FDC
    port map (
      C => inst_counter_10_cmd_change,
      CLR => inst_counter_10_set_set_value_0_AND_11_o,
      D => inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_0_Q,
      Q => inst_counter_10_value_buf_0_C_0_198
    );
  inst_counter_10_value_buf_0_P_0 : FDP
    port map (
      C => inst_counter_10_cmd_change,
      D => inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_0_Q,
      PRE => inst_counter_10_set_set_value_0_AND_10_o,
      Q => inst_counter_10_value_buf_0_P_0_199
    );
  inst_counter_10_value_buf_01 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => inst_counter_10_value_buf_0_LDC_197,
      I1 => inst_counter_10_value_buf_0_P_0_199,
      I2 => inst_counter_10_value_buf_0_C_0_198,
      O => inst_counter_10_value_buf_0
    );
  inst_counter_10_value_buf_1_LDC : LDC
    generic map(
      INIT => '0'
    )
    port map (
      CLR => inst_counter_10_set_set_value_1_AND_9_o,
      D => segments_0_OBUF_16,
      G => inst_counter_10_set_set_value_1_AND_8_o,
      Q => inst_counter_10_value_buf_1_LDC_200
    );
  inst_counter_10_value_buf_1_C_1 : FDC
    port map (
      C => inst_counter_10_cmd_change,
      CLR => inst_counter_10_set_set_value_1_AND_9_o,
      D => inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_1_Q,
      Q => inst_counter_10_value_buf_1_C_1_201
    );
  inst_counter_10_value_buf_1_P_1 : FDP
    port map (
      C => inst_counter_10_cmd_change,
      D => inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_1_Q,
      PRE => inst_counter_10_set_set_value_1_AND_8_o,
      Q => inst_counter_10_value_buf_1_P_1_202
    );
  inst_counter_10_value_buf_11 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => inst_counter_10_value_buf_1_LDC_200,
      I1 => inst_counter_10_value_buf_1_P_1_202,
      I2 => inst_counter_10_value_buf_1_C_1_201,
      O => inst_counter_10_value_buf_1
    );
  inst_counter_10_value_buf_2_LDC : LDC
    generic map(
      INIT => '0'
    )
    port map (
      CLR => inst_counter_10_set_set_value_2_AND_7_o,
      D => segments_0_OBUF_16,
      G => inst_counter_10_set_set_value_2_AND_6_o,
      Q => inst_counter_10_value_buf_2_LDC_203
    );
  inst_counter_10_value_buf_2_C_2 : FDC
    port map (
      C => inst_counter_10_cmd_change,
      CLR => inst_counter_10_set_set_value_2_AND_7_o,
      D => inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_2_Q,
      Q => inst_counter_10_value_buf_2_C_2_204
    );
  inst_counter_10_value_buf_2_P_2 : FDP
    port map (
      C => inst_counter_10_cmd_change,
      D => inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_2_Q,
      PRE => inst_counter_10_set_set_value_2_AND_6_o,
      Q => inst_counter_10_value_buf_2_P_2_205
    );
  inst_counter_10_value_buf_21 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => inst_counter_10_value_buf_2_LDC_203,
      I1 => inst_counter_10_value_buf_2_P_2_205,
      I2 => inst_counter_10_value_buf_2_C_2_204,
      O => inst_counter_10_value_buf_2
    );
  inst_counter_10_value_buf_3_LDC : LDC
    generic map(
      INIT => '0'
    )
    port map (
      CLR => inst_counter_10_set_set_value_3_AND_5_o,
      D => segments_0_OBUF_16,
      G => inst_counter_10_set_set_value_3_AND_4_o,
      Q => inst_counter_10_value_buf_3_LDC_206
    );
  inst_counter_10_value_buf_3_C_3 : FDC
    port map (
      C => inst_counter_10_cmd_change,
      CLR => inst_counter_10_set_set_value_3_AND_5_o,
      D => inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_3_Q_128,
      Q => inst_counter_10_value_buf_3_C_3_207
    );
  inst_counter_10_value_buf_3_P_3 : FDP
    port map (
      C => inst_counter_10_cmd_change,
      D => inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_3_Q_128,
      PRE => inst_counter_10_set_set_value_3_AND_4_o,
      Q => inst_counter_10_value_buf_3_P_3_208
    );
  inst_counter_10_value_buf_31 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => inst_counter_10_value_buf_3_LDC_206,
      I1 => inst_counter_10_value_buf_3_P_3_208,
      I2 => inst_counter_10_value_buf_3_C_3_207,
      O => inst_counter_10_value_buf_3
    );
  inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_3_SW0_SW0 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => switches_7_IBUF_7,
      I1 => inst_debouncer_outbtn(3),
      I2 => inst_debouncer_outbtn(2),
      O => N7
    );
  inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_3_SW0_SW1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => inst_debouncer_outbtn(2),
      I1 => switches_7_IBUF_7,
      I2 => inst_debouncer_outbtn(3),
      O => N8
    );
  inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_3_Q : LUT6
    generic map(
      INIT => X"7E81FE017F80FF00"
    )
    port map (
      I0 => inst_counter_10_value_buf_2,
      I1 => inst_counter_10_value_buf_1,
      I2 => inst_counter_10_value_buf_0,
      I3 => inst_counter_10_value_buf_3,
      I4 => N8,
      I5 => N7,
      O => inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_3_Q_128
    );
  inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_0_1 : LUT6
    generic map(
      INIT => X"DD2DD22277877888"
    )
    port map (
      I0 => switches_7_IBUF_7,
      I1 => inst_debouncer_outbtn(2),
      I2 => inst_counter_10_value_buf_0_LDC_197,
      I3 => inst_counter_10_value_buf_0_P_0_199,
      I4 => inst_counter_10_value_buf_0_C_0_198,
      I5 => inst_debouncer_outbtn(3),
      O => inst_counter_10_value_buf_3_cmd_1_mux_6_OUT_0_Q
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_0_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(0),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_0_rstpot_211
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_0_rstpot_211,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(0)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_1_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(1),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_1_rstpot_212
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_1_rstpot_212,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(1)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_2_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(2),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_2_rstpot_213
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_2_rstpot_213,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(2)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_3_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(3),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_3_rstpot_214
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_3_rstpot_214,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(3)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_4_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(4),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_4_rstpot_215
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_4_rstpot_215,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(4)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_5_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(5),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_5_rstpot_216
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_5_rstpot_216,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(5)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_6_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(6),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_6_rstpot_217
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_6_rstpot_217,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(6)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_7_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(7),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_7_rstpot_218
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_7_rstpot_218,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(7)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_8_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(8),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_8_rstpot_219
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_8_rstpot_219,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(8)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_9_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(9),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_9_rstpot_220
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_9_rstpot_220,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(9)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_10_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(10),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_10_rstpot_221
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_10_rstpot_221,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(10)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_11_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(11),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_11_rstpot_222
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_11_rstpot_222,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(11)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_12_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(12),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_12_rstpot_223
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_12_rstpot_223,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(12)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_13_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(13),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_13_rstpot_224
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_13_rstpot_224,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(13)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_14_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(14),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_14_rstpot_225
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_14_rstpot_225,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(14)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_15_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(15),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_15_rstpot_226
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_15_rstpot_226,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(15)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_16_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(16),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_16_rstpot_227
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_16_rstpot_227,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(16)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_17_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(17),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_7_243,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_17_rstpot_228
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_17_rstpot_228,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(17)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_18_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(18),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_7_243,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_18_rstpot_229
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_18_rstpot_229,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(18)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_19_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(19),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_7_243,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_19_rstpot_230
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_19_rstpot_230,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(19)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_20_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(20),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_7_243,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_20_rstpot_231
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_20_rstpot_231,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(20)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_21_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(21),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_7_243,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_21_rstpot_232
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_21_rstpot_232,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(21)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_22_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(22),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_7_243,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_22_rstpot_233
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_22_rstpot_233,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(22)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_23_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(23),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_7_243,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_23_rstpot_234
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_23_rstpot_234,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(23)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_24_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(24),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_7_243,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_24_rstpot_235
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_24 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_24_rstpot_235,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(24)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_25_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(25),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_7_243,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_25_rstpot_236
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_25 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_25_rstpot_236,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(25)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_26_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(26),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_7_243,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_26_rstpot_237
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_26 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_26_rstpot_237,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(26)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_27_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(27),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_7_243,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_27_rstpot_238
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_27 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_27_rstpot_238,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(27)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_28_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(28),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_7_243,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_28_rstpot_239
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_28 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_28_rstpot_239,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(28)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_29_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(29),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_7_243,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_29_rstpot_240
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_29 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_29_rstpot_240,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(29)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_30_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(30),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_7_243,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_30_rstpot_241
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_30 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_30_rstpot_241,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(30)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_rstpot : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(31),
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_7_243,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_rstpot_242
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => clk_BUFGP_8,
      D => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_rstpot_242,
      Q => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(31)
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_7_1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_5_134,
      I1 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_4_133,
      I2 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_3_132,
      I3 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_2_131,
      I4 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_1_130,
      I5 => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_Q,
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count_31_half_period_count_31_equal_2_o_31_7_243
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_8
    );
  inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_lut_0_INV_0 : INV
    port map (
      I => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_count(0),
      O => inst_debouncer_inst_pulse_generator_1khz_inst_freq_divider_Mcount_count_lut(0)
    );

end Structure;

