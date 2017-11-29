--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Q3_schematic.vhf
-- /___/   /\     Timestamp : 11/29/2017 01:49:23
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/projects/VHDL_XIlinx/async_sequence_detector/Q3_schematic.vhf -w E:/projects/VHDL_XIlinx/async_sequence_detector/Q3_schematic.sch
--Design Name: Q3_schematic
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Q3_schematic is
   port ( clk    : in    std_logic; 
          Q1_in  : in    std_logic; 
          Q2_in  : in    std_logic; 
          Q3_in  : in    std_logic; 
          Q4_in  : in    std_logic; 
          SD     : in    std_logic; 
          Q3_out : out   std_logic);
end Q3_schematic;

architecture BEHAVIORAL of Q3_schematic is
   attribute BOX_TYPE   : string ;
   signal XLXN_12 : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_15 : std_logic;
   signal XLXN_16 : std_logic;
   signal XLXN_17 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
   signal XLXN_21 : std_logic;
   signal XLXN_22 : std_logic;
   signal XLXN_23 : std_logic;
   component AND5B4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B4 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component AND5B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND5B2 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4 : component is "BLACK_BOX";
   
   component OR5
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR5 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND5B4
      port map (I0=>clk,
                I1=>SD,
                I2=>Q4_in,
                I3=>Q1_in,
                I4=>Q3_in,
                O=>XLXN_12);
   
   XLXI_2 : AND3B1
      port map (I0=>Q1_in,
                I1=>SD,
                I2=>Q3_in,
                O=>XLXN_13);
   
   XLXI_3 : AND5B2
      port map (I0=>Q2_in,
                I1=>Q1_in,
                I2=>clk,
                I3=>SD,
                I4=>Q4_in,
                O=>XLXN_14);
   
   XLXI_4 : AND3B1
      port map (I0=>Q1_in,
                I1=>Q4_in,
                I2=>Q3_in,
                O=>XLXN_15);
   
   XLXI_5 : AND3B1
      port map (I0=>Q1_in,
                I1=>Q3_in,
                I2=>Q2_in,
                O=>XLXN_16);
   
   XLXI_6 : AND5B2
      port map (I0=>Q4_in,
                I1=>Q1_in,
                I2=>clk,
                I3=>SD,
                I4=>Q2_in,
                O=>XLXN_17);
   
   XLXI_7 : AND3
      port map (I0=>Q3_in,
                I1=>Q2_in,
                I2=>Q1_in,
                O=>XLXN_18);
   
   XLXI_8 : AND3B1
      port map (I0=>Q4_in,
                I1=>Q3_in,
                I2=>Q1_in,
                O=>XLXN_19);
   
   XLXI_9 : AND4
      port map (I0=>SD,
                I1=>Q4_in,
                I2=>Q3_in,
                I3=>Q1_in,
                O=>XLXN_20);
   
   XLXI_10 : AND5B2
      port map (I0=>clk,
                I1=>SD,
                I2=>Q4_in,
                I3=>Q3_in,
                I4=>Q1_in,
                O=>XLXN_21);
   
   XLXI_11 : OR5
      port map (I0=>XLXN_16,
                I1=>XLXN_15,
                I2=>XLXN_14,
                I3=>XLXN_13,
                I4=>XLXN_12,
                O=>XLXN_22);
   
   XLXI_12 : OR5
      port map (I0=>XLXN_21,
                I1=>XLXN_20,
                I2=>XLXN_19,
                I3=>XLXN_18,
                I4=>XLXN_17,
                O=>XLXN_23);
   
   XLXI_13 : OR2
      port map (I0=>XLXN_23,
                I1=>XLXN_22,
                O=>Q3_out);
   
end BEHAVIORAL;


