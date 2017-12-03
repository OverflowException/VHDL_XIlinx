--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : schematic.vhf
-- /___/   /\     Timestamp : 11/18/2017 14:09:05
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl E:/projects/VHDL_XIlinx/sync_sequence_detector/schematic.vhf -w E:/projects/VHDL_XIlinx/sync_sequence_detector/schematic.sch
--Design Name: schematic
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

entity schematic is
   port ( clk_reset : in    std_logic; 
          clk_set   : in    std_logic; 
          SD        : in    std_logic; 
          Q1        : out   std_logic; 
          Q2        : out   std_logic; 
          Q3        : out   std_logic; 
          T         : out   std_logic);
end schematic;

architecture BEHAVIORAL of schematic is
   attribute BOX_TYPE   : string ;
   signal XLXN_1    : std_logic;
   signal XLXN_2    : std_logic;
   signal XLXN_3    : std_logic;
   signal XLXN_12   : std_logic;
   signal XLXN_13   : std_logic;
   signal XLXN_15   : std_logic;
   signal XLXN_40   : std_logic;
   signal XLXN_61   : std_logic;
   signal XLXN_68   : std_logic;
   signal XLXN_69   : std_logic;
   signal XLXN_70   : std_logic;
   signal XLXN_71   : std_logic;
   signal XLXN_81   : std_logic;
   signal Q1_DUMMY  : std_logic := '1';
   signal Q2_DUMMY  : std_logic := '1';
   signal Q3_DUMMY  : std_logic := '1';
   component FD
      generic( INIT : bit :=  '0');
      port ( C : in    std_logic; 
             D : in    std_logic; 
             Q : out   std_logic);
   end component;
   attribute BOX_TYPE of FD : component is "BLACK_BOX";
   
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
   
   component AND3B2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B2 : component is "BLACK_BOX";
   
   component AND3B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3B1 : component is "BLACK_BOX";
   
   component AND2B1
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2B1 : component is "BLACK_BOX";
   
   component OR4
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             I3 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of OR4 : component is "BLACK_BOX";
   
   component AND3
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             I2 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND3 : component is "BLACK_BOX";
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
begin
   Q1 <= Q1_DUMMY;
   Q2 <= Q2_DUMMY;
   Q3 <= Q3_DUMMY;
   XLXI_1 : FD
      port map (C=>XLXN_61,
                D=>XLXN_1,
                Q=>Q1_DUMMY);
   
   XLXI_2 : FD
      port map (C=>XLXN_61,
                D=>XLXN_2,
                Q=>Q2_DUMMY);
   
   XLXI_3 : FD
      port map (C=>XLXN_61,
                D=>XLXN_3,
                Q=>Q3_DUMMY);
   
   XLXI_4 : OR2
      port map (I0=>XLXN_13,
                I1=>XLXN_12,
                O=>XLXN_1);
   
   XLXI_6 : OR2
      port map (I0=>XLXN_15,
                I1=>XLXN_81,
                O=>XLXN_2);
   
   XLXI_12 : AND4B2
      port map (I0=>SD,
                I1=>Q1_DUMMY,
                I2=>Q3_DUMMY,
                I3=>Q2_DUMMY,
                O=>XLXN_12);
   
   XLXI_13 : AND4B2
      port map (I0=>Q3_DUMMY,
                I1=>Q2_DUMMY,
                I2=>SD,
                I3=>Q1_DUMMY,
                O=>XLXN_13);
   
   XLXI_17 : AND3B2
      port map (I0=>SD,
                I1=>Q3_DUMMY,
                I2=>Q2_DUMMY,
                O=>XLXN_68);
   
   XLXI_34 : AND3B1
      port map (I0=>Q2_DUMMY,
                I1=>Q3_DUMMY,
                I2=>SD,
                O=>XLXN_15);
   
   XLXI_36 : AND3B1
      port map (I0=>Q2_DUMMY,
                I1=>Q1_DUMMY,
                I2=>Q3_DUMMY,
                O=>T);
   
   XLXI_52 : AND2B1
      port map (I0=>clk_reset,
                I1=>XLXN_61,
                O=>XLXN_40);
   
   XLXI_53 : OR2
      port map (I0=>clk_set,
                I1=>XLXN_40,
                O=>XLXN_61);
   
   XLXI_54 : OR4
      port map (I0=>XLXN_71,
                I1=>XLXN_70,
                I2=>XLXN_69,
                I3=>XLXN_68,
                O=>XLXN_3);
   
   XLXI_55 : AND3
      port map (I0=>SD,
                I1=>Q3_DUMMY,
                I2=>Q2_DUMMY,
                O=>XLXN_69);
   
   XLXI_56 : AND2
      port map (I0=>Q2_DUMMY,
                I1=>Q1_DUMMY,
                O=>XLXN_70);
   
   XLXI_57 : AND3B2
      port map (I0=>Q3_DUMMY,
                I1=>Q2_DUMMY,
                I2=>SD,
                O=>XLXN_71);
   
   XLXI_60 : AND3B2
      port map (I0=>Q3_DUMMY,
                I1=>Q1_DUMMY,
                I2=>Q2_DUMMY,
                O=>XLXN_81);
   
end BEHAVIORAL;


