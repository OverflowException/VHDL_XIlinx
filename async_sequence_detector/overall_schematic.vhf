--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : overall_schematic.vhf
-- /___/   /\     Timestamp : 11/29/2017 02:34:00
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/projects/VHDL_XIlinx/async_sequence_detector/overall_schematic.vhf -w E:/projects/VHDL_XIlinx/async_sequence_detector/overall_schematic.sch
--Design Name: overall_schematic
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL OR6_HXILINX_overall_schematic -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity OR6_HXILINX_overall_schematic is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic
  );
end OR6_HXILINX_overall_schematic;

architecture OR6_HXILINX_overall_schematic_V of OR6_HXILINX_overall_schematic is
begin
  O <=  (I0 or I1 or I2 or I3 or I4 or I5);
end OR6_HXILINX_overall_schematic_V;
----- CELL AND6_HXILINX_overall_schematic -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity AND6_HXILINX_overall_schematic is
  
port(
    O  : out std_logic;

    I0  : in std_logic;
    I1  : in std_logic;
    I2  : in std_logic;
    I3  : in std_logic;
    I4  : in std_logic;
    I5  : in std_logic
  );
end AND6_HXILINX_overall_schematic;

architecture AND6_HXILINX_overall_schematic_V of AND6_HXILINX_overall_schematic is
begin
  O <= I0 and I1 and I2 and I3 and I4 and I5;
end AND6_HXILINX_overall_schematic_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Q4_schematic_MUSER_overall_schematic is
   port ( clk    : in    std_logic; 
          Q1_in  : in    std_logic; 
          Q2_in  : in    std_logic; 
          Q3_in  : in    std_logic; 
          Q4_in  : in    std_logic; 
          SD     : in    std_logic; 
          Q4_out : out   std_logic);
end Q4_schematic_MUSER_overall_schematic;

architecture BEHAVIORAL of Q4_schematic_MUSER_overall_schematic is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Q3_schematic_MUSER_overall_schematic is
   port ( clk    : in    std_logic; 
          Q1_in  : in    std_logic; 
          Q2_in  : in    std_logic; 
          Q3_in  : in    std_logic; 
          Q4_in  : in    std_logic; 
          SD     : in    std_logic; 
          Q3_out : out   std_logic);
end Q3_schematic_MUSER_overall_schematic;

architecture BEHAVIORAL of Q3_schematic_MUSER_overall_schematic is
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



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Q2_schematic_MUSER_overall_schematic is
   port ( clk    : in    std_logic; 
          Q1_in  : in    std_logic; 
          Q2_in  : in    std_logic; 
          Q3_in  : in    std_logic; 
          Q4_in  : in    std_logic; 
          SD     : in    std_logic; 
          Q2_out : out   std_logic);
end Q2_schematic_MUSER_overall_schematic;

architecture BEHAVIORAL of Q2_schematic_MUSER_overall_schematic is
   attribute BOX_TYPE   : string ;
   attribute HU_SET     : string ;
   signal XLXN_1  : std_logic;
   signal XLXN_2  : std_logic;
   signal XLXN_3  : std_logic;
   signal XLXN_12 : std_logic;
   signal XLXN_13 : std_logic;
   signal XLXN_14 : std_logic;
   signal XLXN_15 : std_logic;
   signal XLXN_16 : std_logic;
   signal XLXN_17 : std_logic;
   signal XLXN_18 : std_logic;
   signal XLXN_19 : std_logic;
   signal XLXN_20 : std_logic;
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
   
   component AND6_HXILINX_overall_schematic
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
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_7 : label is "XLXI_7_5";
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
                O=>XLXN_15);
   
   XLXI_5 : AND4B2
      port map (I0=>Q4_in,
                I1=>Q3_in,
                I2=>Q2_in,
                I3=>Q1_in,
                O=>XLXN_16);
   
   XLXI_6 : AND3B1
      port map (I0=>Q4_in,
                I1=>SD,
                I2=>Q2_in,
                O=>XLXN_17);
   
   XLXI_7 : AND6_HXILINX_overall_schematic
      port map (I0=>clk,
                I1=>SD,
                I2=>Q1_in,
                I3=>XLXN_3,
                I4=>XLXN_2,
                I5=>XLXN_1,
                O=>XLXN_18);
   
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
   
   XLXI_16 : OR4
      port map (I0=>XLXN_18,
                I1=>XLXN_17,
                I2=>XLXN_16,
                I3=>XLXN_15,
                O=>XLXN_20);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Q1_schematic_MUSER_overall_schematic is
   port ( clk    : in    std_logic; 
          Q1_in  : in    std_logic; 
          Q2_in  : in    std_logic; 
          Q3_in  : in    std_logic; 
          Q4_in  : in    std_logic; 
          SD     : in    std_logic; 
          Q1_out : out   std_logic);
end Q1_schematic_MUSER_overall_schematic;

architecture BEHAVIORAL of Q1_schematic_MUSER_overall_schematic is
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
   
   component OR6_HXILINX_overall_schematic
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             I4 : in    std_logic; 
             I5 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   attribute HU_SET of XLXI_82 : label is "XLXI_82_6";
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
   
   XLXI_82 : OR6_HXILINX_overall_schematic
      port map (I0=>XLXN_26,
                I1=>XLXN_25,
                I2=>XLXN_24,
                I3=>XLXN_23,
                I4=>XLXN_22,
                I5=>XLXN_21,
                O=>XLXN_28);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity overall_schematic is
   port ( clk_reset : in    std_logic; 
          clk_set   : in    std_logic; 
          SD        : in    std_logic; 
          Q1        : out   std_logic; 
          Q2        : out   std_logic; 
          Q3        : out   std_logic; 
          Q4        : out   std_logic; 
          T         : out   std_logic);
end overall_schematic;

architecture BEHAVIORAL of overall_schematic is
   attribute BOX_TYPE   : string ;
   signal XLXN_40   : std_logic;
   signal XLXN_42   : std_logic;
   signal XLXN_52   : std_logic;
   signal XLXN_53   : std_logic;
   signal Q1_DUMMY  : std_logic;
   signal Q2_DUMMY  : std_logic;
   signal Q3_DUMMY  : std_logic;
   signal Q4_DUMMY  : std_logic;
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR2 : component is "BLACK_BOX";
   
   component AND4B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B2 : component is "BLACK_BOX";
   
   component AND4B3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND4B3 : component is "BLACK_BOX";
   
   component Q1_schematic_MUSER_overall_schematic
      port ( clk    : in    std_logic; 
             Q1_in  : in    std_logic; 
             Q1_out : out   std_logic; 
             Q2_in  : in    std_logic; 
             Q3_in  : in    std_logic; 
             Q4_in  : in    std_logic; 
             SD     : in    std_logic);
   end component;
   
   component Q2_schematic_MUSER_overall_schematic
      port ( clk    : in    std_logic; 
             Q1_in  : in    std_logic; 
             Q2_in  : in    std_logic; 
             Q2_out : out   std_logic; 
             Q3_in  : in    std_logic; 
             Q4_in  : in    std_logic; 
             SD     : in    std_logic);
   end component;
   
   component Q3_schematic_MUSER_overall_schematic
      port ( clk    : in    std_logic; 
             Q1_in  : in    std_logic; 
             Q2_in  : in    std_logic; 
             Q3_in  : in    std_logic; 
             Q3_out : out   std_logic; 
             Q4_in  : in    std_logic; 
             SD     : in    std_logic);
   end component;
   
   component Q4_schematic_MUSER_overall_schematic
      port ( clk    : in    std_logic; 
             Q1_in  : in    std_logic; 
             Q2_in  : in    std_logic; 
             Q3_in  : in    std_logic; 
             Q4_in  : in    std_logic; 
             Q4_out : out   std_logic; 
             SD     : in    std_logic);
   end component;
   
begin
   Q1 <= Q1_DUMMY;
   Q2 <= Q2_DUMMY;
   Q3 <= Q3_DUMMY;
   Q4 <= Q4_DUMMY;
   XLXI_52 : AND2B1
      port map (I0=>clk_reset,
                I1=>XLXN_42,
                O=>XLXN_40);
   
   XLXI_53 : OR2
      port map (I0=>clk_set,
                I1=>XLXN_40,
                O=>XLXN_42);
   
   XLXI_54 : AND4B2
      port map (I0=>Q4_DUMMY,
                I1=>Q3_DUMMY,
                I2=>Q2_DUMMY,
                I3=>Q1_DUMMY,
                O=>XLXN_52);
   
   XLXI_55 : AND4B3
      port map (I0=>Q1_DUMMY,
                I1=>Q3_DUMMY,
                I2=>Q4_DUMMY,
                I3=>Q2_DUMMY,
                O=>XLXN_53);
   
   XLXI_56 : OR2
      port map (I0=>XLXN_53,
                I1=>XLXN_52,
                O=>T);
   
   XLXI_64 : Q1_schematic_MUSER_overall_schematic
      port map (clk=>XLXN_42,
                Q1_in=>Q1_DUMMY,
                Q2_in=>Q2_DUMMY,
                Q3_in=>Q3_DUMMY,
                Q4_in=>Q4_DUMMY,
                SD=>SD,
                Q1_out=>Q1_DUMMY);
   
   XLXI_65 : Q2_schematic_MUSER_overall_schematic
      port map (clk=>XLXN_42,
                Q1_in=>Q1_DUMMY,
                Q2_in=>Q2_DUMMY,
                Q3_in=>Q3_DUMMY,
                Q4_in=>Q4_DUMMY,
                SD=>SD,
                Q2_out=>Q2_DUMMY);
   
   XLXI_66 : Q3_schematic_MUSER_overall_schematic
      port map (clk=>XLXN_42,
                Q1_in=>Q1_DUMMY,
                Q2_in=>Q2_DUMMY,
                Q3_in=>Q3_DUMMY,
                Q4_in=>Q4_DUMMY,
                SD=>SD,
                Q3_out=>Q3_DUMMY);
   
   XLXI_67 : Q4_schematic_MUSER_overall_schematic
      port map (clk=>XLXN_42,
                Q1_in=>Q1_DUMMY,
                Q2_in=>Q2_DUMMY,
                Q3_in=>Q3_DUMMY,
                Q4_in=>Q4_DUMMY,
                SD=>SD,
                Q4_out=>Q4_DUMMY);
   
end BEHAVIORAL;


