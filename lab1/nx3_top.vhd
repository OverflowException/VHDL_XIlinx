----------------------------------------------------------------------------------
-- Company:        University of Birmingham
-- Engineer:       Steven Quigley
-- Create Date:    16:16:11 01/09/2016 
-- Design Name:    Lab 1 
-- Module Name:    nx3_top - Behavioral 
-- Project Name:   lab1
-- Target Devices: xc6slx16
-- Description:    Start file for lab1
-- Additional Comments: 
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity nx3_top is
  Port ( clk      : in  STD_LOGIC;
         buttons  : in  STD_LOGIC_VECTOR (4 downto 0);  -- centre, left, up, right, down
         switches : in  STD_LOGIC_VECTOR (7 downto 0);  
         leds     : out  STD_LOGIC_VECTOR (7 downto 0);
         digit    : out  STD_LOGIC_VECTOR (3 downto 0);
         segments : out  STD_LOGIC_VECTOR (7 downto 0));

      -- Assign inputs and outputs to appropriate pins on FPGA
         attribute LOC : string ;
         attribute LOC of clk : signal is "V10";
         attribute LOC of switches : signal is "T5,V8,U8,N8,M8,V9,T9,T10";
         attribute LOC of buttons : signal is "B8,C4,A8,D9,C9";
         attribute LOC of leds : signal is "T11,R11,N11,M11,V15,U15,V16,U16";
         attribute LOC of digit : signal is "P17,P18,N15,N16";
         attribute LOC of segments : signal is "M13,L14,N14,M14,U18,U17,T18,T17";
end nx3_top;  

architecture Behavioral of nx3_top is
	signal product: std_logic_vector(7 downto 0);
	signal partial_product: std_logic_vector(3 downto 0);
	--Display driver
	COMPONENT display
		PORT(
			number : IN std_logic_vector(3 downto 0);          
			segs : OUT std_logic_vector(7 downto 0)
			);
	END COMPONENT;
	
	--Button select
   COMPONENT btn_select_digit
	PORT(
		btn : IN std_logic_vector(4 downto 0);
		p : IN std_logic_vector(7 downto 0);          
		p_selected : OUT std_logic_vector(3 downto 0);
		d_select : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

begin

	--
	product <= switches(7 downto 4) * switches(3 downto 0);
	
	--Btn driver
	Inst_btn_select_digit: btn_select_digit port map(
		btn => buttons, 
		p => product,
		p_selected => partial_product,
		d_select => digit);
	--display driver
	d_d: display port map (
		number=>partial_product, 
		segs=>segments);
	
	leds(7 downto 0) <= "00000000";
	
	-- (The tools will complain if these lines are left out, as all outputs must be assigned a value)
	--digit <= "1110";           -- Address the rightmost 7-segment display

end Behavioral;   