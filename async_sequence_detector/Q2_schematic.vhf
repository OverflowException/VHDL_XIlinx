--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Q2_schematic.vhf
-- /___/   /\     Timestamp : 12/03/2017 22:24:37
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/projects/VHDL_XIlinx/async_sequence_detector/Q2_schematic.vhf -w E:/projects/VHDL_XIlinx/async_sequence_detector/Q2_schematic.sch
--Design Name: Q2_schematic
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL AND6_HXILINX_Q2_schematic -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AND6_HXILINX_Q2_schematic is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic
  );
end AND6_HXILINX_Q2_schematic;

architecture AND6_HXILINX_Q2_schematic_V of AND6_HXILINX_Q2_schematic is
begin
  O <= I0 and I1 and I2 and I3 and I4 and I5;
end AND6_HXILINX_Q2_schematic_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Q2_schematic is
   port ( clk    : in    std_logic; 
          Q1_in  : in    std_logic; 
          Q2_in  : in    std_logic; 
          Q3_in  : in    std_logic; 
          Q4_in  : in    std_logic; 
          SD     : in    std_logic; 
          Q2_out : out   std_logic);
end Q2_schematic;

architecture BEHAVIORAL of Q2_schematic is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_1  : std_logic;
   signal XLXN_2  : std_logic;
   signal XLXN_3  : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
   signal XLXN_21 : std_logic;
   signal XLXN_22 : std_logic;
   signal XLXN_23 : std_logic;
   signal XLXN_25 : std_logic;
   signal XLXN_26 : std_logic;
   component AND5B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B2 : component is "BLACK_BOX";
   
   component AND4B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B2 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component AND4B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B3 : component is "BLACK_BOX";
   
   component AND6_HXILINX_Q2_schematic
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   component OR3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR3 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_7 : label is "XLXI_7_0";
begin
   XLXI_1 : AND5B2
      port map (I0=>Q4_in,
                I1=>Q1_in,
                I2=>clk,
                I3=>SD,
                I4=>Q3_in,
                O=>XLXN_12);
   
   XLXI_2 : AND4B2
      port map (I0=>Q4_in,
                I1=>Q1_in,
                I2=>Q3_in,
                I3=>Q2_in,
                O=>XLXN_13);
   
   XLXI_3 : AND3B1
      port map (I0=>Q1_in,
                I1=>Q4_in,
                I2=>Q2_in,
                O=>XLXN_14);
   
   XLXI_4 : AND4B3
      port map (I0=>clk,
                I1=>SD,
                I2=>Q4_in,
                I3=>Q2_in,
                O=>XLXN_21);
   
   XLXI_5 : AND4B2
      port map (I0=>Q4_in,
                I1=>Q3_in,
                I2=>Q2_in,
                I3=>Q1_in,
                O=>XLXN_22);
   
   XLXI_6 : AND3B1
      port map (I0=>Q4_in,
                I1=>SD,
                I2=>Q2_in,
                O=>XLXN_23);
   
   XLXI_7 : AND6_HXILINX_Q2_schematic
      port map (I0=>clk,
                I1=>SD,
                I2=>Q1_in,
                I3=>XLXN_3,
                I4=>XLXN_2,
                I5=>XLXN_1,
                O=>XLXN_25);
   
   XLXI_8 : INV
      port map (I=>Q2_in,
                O=>XLXN_1);
   
   XLXI_9 : INV
      port map (I=>Q3_in,
                O=>XLXN_2);
   
   XLXI_10 : INV
      port map (I=>Q4_in,
                O=>XLXN_3);
   
   XLXI_14 : OR3
      port map (I0=>XLXN_14,
                I1=>XLXN_13,
                I2=>XLXN_12,
                O=>XLXN_19);
   
   XLXI_15 : OR2
      port map (I0=>XLXN_20,
                I1=>XLXN_19,
                O=>Q2_out);
   
   XLXI_18 : OR5
      port map (I0=>XLXN_26,
                I1=>XLXN_25,
                I2=>XLXN_23,
                I3=>XLXN_22,
                I4=>XLXN_21,
                O=>XLXN_20);
   
   XLXI_19 : AND4B2
      port map (I0=>clk,
                I1=>Q1_in,
                I2=>SD,
                I3=>Q2_in,
                O=>XLXN_26);
   
end BEHAVIORAL;


