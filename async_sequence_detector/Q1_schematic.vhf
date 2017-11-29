--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Q1_schematic.vhf
-- /___/   /\     Timestamp : 11/29/2017 02:19:44
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
----- CELL OR6_HXILINX_Q1_schematic -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR6_HXILINX_Q1_schematic is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic
  );
end OR6_HXILINX_Q1_schematic;

architecture OR6_HXILINX_Q1_schematic_V of OR6_HXILINX_Q1_schematic is
begin
  O <=  (I0 or I1 or I2 or I3 or I4 or I5);
end OR6_HXILINX_Q1_schematic_V;

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
   signal XLXN_12 : std_logic;
   signal XLXN_16 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
   signal XLXN_21 : std_logic;
   signal XLXN_22 : std_logic;
   signal XLXN_23 : std_logic;
   signal XLXN_24 : std_logic;
   signal XLXN_25 : std_logic;
   signal XLXN_26 : std_logic;
   signal XLXN_27 : std_logic;
   signal XLXN_28 : std_logic;
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
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
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component OR6_HXILINX_Q1_schematic
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_82 : label is "XLXI_82_0";
begin
   XLXI_3 : OR2
      port map (I0=>XLXN_28,
                I1=>XLXN_27,
                O=>Q1_out);
   
   XLXI_15 : AND5B3
      port map (I0=>clk,
                I1=>SD,
                I2=>Q1_in,
                I3=>Q3_in,
                I4=>Q2_in,
                O=>XLXN_12);
   
   XLXI_26 : AND5B2
      port map (I0=>clk,
                I1=>Q1_in,
                I2=>SD,
                I3=>Q3_in,
                I4=>Q2_in,
                O=>XLXN_16);
   
   XLXI_27 : AND2
      port map (I0=>Q4_in,
                I1=>Q2_in,
                O=>XLXN_18);
   
   XLXI_28 : AND5B2
      port map (I0=>Q4_in,
                I1=>Q3_in,
                I2=>clk,
                I3=>Q2_in,
                I4=>Q1_in,
                O=>XLXN_19);
   
   XLXI_29 : AND4B1
      port map (I0=>clk,
                I1=>SD,
                I2=>Q4_in,
                I3=>Q1_in,
                O=>XLXN_20);
   
   XLXI_30 : AND4B2
      port map (I0=>SD,
                I1=>Q4_in,
                I2=>Q3_in,
                I3=>Q1_in,
                O=>XLXN_21);
   
   XLXI_31 : AND4B1
      port map (I0=>clk,
                I1=>SD,
                I2=>Q3_in,
                I3=>Q1_in,
                O=>XLXN_22);
   
   XLXI_32 : AND5B4
      port map (I0=>clk,
                I1=>SD,
                I2=>Q4_in,
                I3=>Q2_in,
                I4=>Q1_in,
                O=>XLXN_23);
   
   XLXI_33 : AND5B2
      port map (I0=>Q4_in,
                I1=>Q2_in,
                I2=>clk,
                I3=>SD,
                I4=>Q1_in,
                O=>XLXN_24);
   
   XLXI_34 : AND4B2
      port map (I0=>SD,
                I1=>Q2_in,
                I2=>Q4_in,
                I3=>Q1_in,
                O=>XLXN_25);
   
   XLXI_35 : AND4B2
      port map (I0=>Q3_in,
                I1=>Q2_in,
                I2=>SD,
                I3=>Q1_in,
                O=>XLXN_26);
   
   XLXI_81 : OR5
      port map (I0=>XLXN_20,
                I1=>XLXN_19,
                I2=>XLXN_18,
                I3=>XLXN_16,
                I4=>XLXN_12,
                O=>XLXN_27);
   
   XLXI_82 : OR6_HXILINX_Q1_schematic
      port map (I0=>XLXN_26,
                I1=>XLXN_25,
                I2=>XLXN_24,
                I3=>XLXN_23,
                I4=>XLXN_22,
                I5=>XLXN_21,
                O=>XLXN_28);
   
end BEHAVIORAL;


