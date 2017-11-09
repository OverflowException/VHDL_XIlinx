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
	signal counter: std_logic_vector(31 downto 0);
	signal display_clk: std_logic;
	signal display_number: std_logic_vector(15 downto 0);
	
	COMPONENT led_4_display
	PORT(
		d_clk : IN std_logic;
		full_number : IN std_logic_vector(15 downto 0);          
		digit_select : OUT std_logic_vector(3 downto 0);
		seg : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
	COMPONENT pulse_generator
	PORT(
		inclk : IN std_logic;          
		oclk : OUT std_logic
		);
	END COMPONENT;

	COMPONENT pulse_counter
	PORT(
		inclk : IN std_logic;          
		count : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

begin
	display_number(15 downto 8) <= (others => '0');
	display_number(7 downto 0) <= counter(31 downto 24);

	Inst_pulse_counter: pulse_counter PORT MAP(
		inclk => clk,
		count => counter
	);

	Inst_pulse_generator: pulse_generator PORT MAP(
		inclk => clk,
		oclk => display_clk
	);

	Inst_led_4_display: led_4_display PORT MAP(
		d_clk => display_clk,
		full_number => display_number,
		digit_select => digit,
		seg => segments
	);

  -- Copy the switches input values to the LED outputs
  leds(7 downto 0) <= switches(7 downto 0);  --Deliberate mistake (semicolon omitted)
  
  -- (The tools will complain if these lines are left out, as all outputs must be assigned a value) 

end Behavioral;   