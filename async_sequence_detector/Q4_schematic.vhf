--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Q4_schematic.vhf
-- /___/   /\     Timestamp : 12/03/2017 23:15:51
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/projects/VHDL_XIlinx/async_sequence_detector/Q4_schematic.vhf -w E:/projects/VHDL_XIlinx/async_sequence_detector/Q4_schematic.sch
--Design Name: Q4_schematic
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL OR6_HXILINX_Q4_schematic -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR6_HXILINX_Q4_schematic is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic
  );
end OR6_HXILINX_Q4_schematic;

architecture OR6_HXILINX_Q4_schematic_V of OR6_HXILINX_Q4_schematic is
begin
  O <=  (I0 or I1 or I2 or I3 or I4 or I5);
end OR6_HXILINX_Q4_schematic_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Q4_schematic is
   port ( clk    : in    std_logic; 
          Q1_in  : in    std_logic; 
          Q2_in  : in    std_logic; 
          Q3_in  : in    std_logic; 
          Q4_in  : in    std_logic; 
          SD     : in    std_logic; 
          Q4_out : out   std_logic);
end Q4_schematic;

architecture BEHAVIORAL of Q4_schematic is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_9  : std_logic;
   signal XLXN_10 : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
   signal XLXN_21 : std_logic;
   signal XLXN_22 : std_logic;
   signal XLXN_23 : std_logic;
   signal XLXN_24 : std_logic;
   signal XLXN_26 : std_logic;
   component AND5B5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B5 : component is "BLACK_BOX";
   
   component AND5B4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B4 : component is "BLACK_BOX";
   
   component AND4B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B1 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
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
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component OR6_HXILINX_Q4_schematic
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_13 : label is "XLXI_13_4";
begin
   XLXI_1 : AND5B5
      port map (I0=>clk,
                I1=>SD,
                I2=>Q3_in,
                I3=>Q2_in,
                I4=>Q1_in,
                O=>XLXN_9);
   
   XLXI_2 : AND5B4
      port map (I0=>clk,
                I1=>Q3_in,
                I2=>Q2_in,
                I3=>Q1_in,
                I4=>SD,
                O=>XLXN_10);
   
   XLXI_3 : AND4B1
      port map (I0=>Q1_in,
                I1=>clk,
                I2=>SD,
                I3=>Q4_in,
                O=>XLXN_11);
   
   XLXI_4 : AND4B1
      port map (I0=>Q1_in,
                I1=>clk,
                I2=>Q4_in,
                I3=>Q3_in,
                O=>XLXN_12);
   
   XLXI_5 : AND2
      port map (I0=>Q4_in,
                I1=>Q2_in,
                O=>XLXN_20);
   
   XLXI_6 : AND3
      port map (I0=>Q4_in,
                I1=>Q3_in,
                I2=>Q1_in,
                O=>XLXN_21);
   
   XLXI_7 : AND5B3
      port map (I0=>clk,
                I1=>SD,
                I2=>Q2_in,
                I3=>Q3_in,
                I4=>Q1_in,
                O=>XLXN_22);
   
   XLXI_8 : AND5B2
      port map (I0=>clk,
                I1=>Q2_in,
                I2=>SD,
                I3=>Q3_in,
                I4=>Q1_in,
                O=>XLXN_23);
   
   XLXI_9 : AND4B1
      port map (I0=>Q2_in,
                I1=>clk,
                I2=>Q4_in,
                I3=>Q1_in,
                O=>XLXN_24);
   
   XLXI_10 : OR4
      port map (I0=>XLXN_12,
                I1=>XLXN_11,
                I2=>XLXN_10,
                I3=>XLXN_9,
                O=>XLXN_18);
   
   XLXI_12 : OR2
      port map (I0=>XLXN_19,
                I1=>XLXN_18,
                O=>Q4_out);
   
   XLXI_13 : OR6_HXILINX_Q4_schematic
      port map (I0=>XLXN_26,
                I1=>XLXN_24,
                I2=>XLXN_23,
                I3=>XLXN_22,
                I4=>XLXN_21,
                I5=>XLXN_20,
                O=>XLXN_19);
   
   XLXI_14 : AND5B3
      port map (I0=>Q3_in,
                I1=>Q2_in,
                I2=>Q1_in,
                I3=>SD,
                I4=>Q4_in,
                O=>XLXN_26);
   
end BEHAVIORAL;


