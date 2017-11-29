--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Q4_schematic.vhf
-- /___/   /\     Timestamp : 11/29/2017 01:49:23
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
   signal XLXN_9  : std_logic;
   signal XLXN_10 : std_logic;
   signal XLXN_11 : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_15 : std_logic;
   signal XLXN_16 : std_logic;
   signal XLXN_17 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_19 : std_logic;
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
                O=>XLXN_13);
   
   XLXI_6 : AND3
      port map (I0=>Q4_in,
                I1=>Q3_in,
                I2=>Q1_in,
                O=>XLXN_14);
   
   XLXI_7 : AND5B3
      port map (I0=>clk,
                I1=>SD,
                I2=>Q2_in,
                I3=>Q3_in,
                I4=>Q1_in,
                O=>XLXN_15);
   
   XLXI_8 : AND5B2
      port map (I0=>clk,
                I1=>Q2_in,
                I2=>SD,
                I3=>Q3_in,
                I4=>Q1_in,
                O=>XLXN_16);
   
   XLXI_9 : AND4B1
      port map (I0=>Q2_in,
                I1=>clk,
                I2=>Q4_in,
                I3=>Q1_in,
                O=>XLXN_17);
   
   XLXI_10 : OR4
      port map (I0=>XLXN_12,
                I1=>XLXN_11,
                I2=>XLXN_10,
                I3=>XLXN_9,
                O=>XLXN_18);
   
   XLXI_11 : OR5
      port map (I0=>XLXN_17,
                I1=>XLXN_16,
                I2=>XLXN_15,
                I3=>XLXN_14,
                I4=>XLXN_13,
                O=>XLXN_19);
   
   XLXI_12 : OR2
      port map (I0=>XLXN_19,
                I1=>XLXN_18,
                O=>Q4_out);
   
end BEHAVIORAL;


