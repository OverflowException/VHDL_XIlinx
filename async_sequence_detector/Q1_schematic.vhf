--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Q1_schematic.vhf
-- /___/   /\     Timestamp : 12/03/2017 22:59:34
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/projects/VHDL_XIlinx/async_sequence_detector/Q1_schematic.vhf -w E:/projects/VHDL_XIlinx/async_sequence_detector/Q1_schematic.sch
--Design Name: Q1_schematic
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL OR7_HXILINX_Q1_schematic -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR7_HXILINX_Q1_schematic is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic;
    I6  : in std_logic
  );
end OR7_HXILINX_Q1_schematic;

architecture OR7_HXILINX_Q1_schematic_V of OR7_HXILINX_Q1_schematic is
begin
  O <= (I0 or I1 or I2 or I3 or I4 or I5 or I6);
end OR7_HXILINX_Q1_schematic_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Q1_schematic is
   port ( clk    : in    std_logic; 
          Q1_in  : in    std_logic; 
          Q2_in  : in    std_logic; 
          Q3_in  : in    std_logic; 
          Q4_in  : in    std_logic; 
          SD     : in    std_logic; 
          Q1_out : out   std_logic);
end Q1_schematic;

architecture BEHAVIORAL of Q1_schematic is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_37 : std_logic;
   signal XLXN_38 : std_logic;
   signal XLXN_39 : std_logic;
   signal XLXN_40 : std_logic;
   signal XLXN_41 : std_logic;
   signal XLXN_42 : std_logic;
   signal XLXN_43 : std_logic;
   signal XLXN_44 : std_logic;
   signal XLXN_45 : std_logic;
   signal XLXN_46 : std_logic;
   signal XLXN_47 : std_logic;
   signal XLXN_48 : std_logic;
   signal XLXN_49 : std_logic;
   signal XLXN_50 : std_logic;
   signal XLXN_51 : std_logic;
   signal XLXN_52 : std_logic;
   component AND5B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B3 : component is "BLACK_BOX";
   
   component AND5B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B2 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND4B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B1 : component is "BLACK_BOX";
   
   component AND4B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B2 : component is "BLACK_BOX";
   
   component AND5B4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B4 : component is "BLACK_BOX";
   
   component OR7_HXILINX_Q1_schematic
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             I6 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_88 : label is "XLXI_88_0";
   attribute HU_SET of XLXI_89 : label is "XLXI_89_1";
begin
   XLXI_15 : AND5B3
      port map (I0=>clk,
                I1=>SD,
                I2=>Q1_in,
                I3=>Q3_in,
                I4=>Q2_in,
                O=>XLXN_37);
   
   XLXI_26 : AND5B2
      port map (I0=>clk,
                I1=>Q1_in,
                I2=>SD,
                I3=>Q3_in,
                I4=>Q2_in,
                O=>XLXN_38);
   
   XLXI_27 : AND2
      port map (I0=>Q4_in,
                I1=>Q2_in,
                O=>XLXN_39);
   
   XLXI_28 : AND5B2
      port map (I0=>Q4_in,
                I1=>Q3_in,
                I2=>clk,
                I3=>Q2_in,
                I4=>Q1_in,
                O=>XLXN_40);
   
   XLXI_29 : AND4B1
      port map (I0=>clk,
                I1=>SD,
                I2=>Q4_in,
                I3=>Q1_in,
                O=>XLXN_41);
   
   XLXI_30 : AND4B2
      port map (I0=>SD,
                I1=>Q4_in,
                I2=>Q3_in,
                I3=>Q1_in,
                O=>XLXN_42);
   
   XLXI_31 : AND4B1
      port map (I0=>clk,
                I1=>SD,
                I2=>Q3_in,
                I3=>Q1_in,
                O=>XLXN_43);
   
   XLXI_32 : AND5B4
      port map (I0=>clk,
                I1=>SD,
                I2=>Q4_in,
                I3=>Q2_in,
                I4=>Q1_in,
                O=>XLXN_44);
   
   XLXI_33 : AND5B2
      port map (I0=>Q4_in,
                I1=>Q2_in,
                I2=>clk,
                I3=>SD,
                I4=>Q1_in,
                O=>XLXN_45);
   
   XLXI_34 : AND4B2
      port map (I0=>SD,
                I1=>Q2_in,
                I2=>Q4_in,
                I3=>Q1_in,
                O=>XLXN_46);
   
   XLXI_35 : AND4B2
      port map (I0=>Q3_in,
                I1=>Q2_in,
                I2=>SD,
                I3=>Q1_in,
                O=>XLXN_47);
   
   XLXI_84 : AND5B2
      port map (I0=>SD,
                I1=>Q4_in,
                I2=>clk,
                I3=>Q2_in,
                I4=>Q1_in,
                O=>XLXN_48);
   
   XLXI_85 : AND4B2
      port map (I0=>Q4_in,
                I1=>Q2_in,
                I2=>SD,
                I3=>Q1_in,
                O=>XLXN_49);
   
   XLXI_86 : AND4B1
      port map (I0=>SD,
                I1=>Q4_in,
                I2=>Q3_in,
                I3=>Q1_in,
                O=>XLXN_50);
   
   XLXI_88 : OR7_HXILINX_Q1_schematic
      port map (I0=>XLXN_43,
                I1=>XLXN_42,
                I2=>XLXN_41,
                I3=>XLXN_40,
                I4=>XLXN_39,
                I5=>XLXN_38,
                I6=>XLXN_37,
                O=>XLXN_51);
   
   XLXI_89 : OR7_HXILINX_Q1_schematic
      port map (I0=>XLXN_50,
                I1=>XLXN_49,
                I2=>XLXN_48,
                I3=>XLXN_47,
                I4=>XLXN_46,
                I5=>XLXN_45,
                I6=>XLXN_44,
                O=>XLXN_52);
   
   XLXI_90 : OR2
      port map (I0=>XLXN_52,
                I1=>XLXN_51,
                O=>Q1_out);
   
end BEHAVIORAL;


