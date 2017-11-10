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
	signal display_clk : std_logic;
	signal display_buf : std_logic_vector(15 downto 0) := (others => '1');
	signal last_button4_status : std_logic := '0';
	signal curr_button4_status : std_logic := '0';
	
	component led_4_display port
	(
		d_clk : in std_logic;
		full_number : in std_logic_vector(15 downto 0);
		digit_select : out std_logic_vector(3 downto 0);
		seg : out std_logic_vector(7 downto 0)
	);
	end component;
	
	component pulse_generator port
	(
		inclk : in std_logic;
		oclk : out std_logic
	);
	end component;
	
begin
	inst_led_4_display : led_4_display port map
	(
		d_clk => display_clk,
		full_number => display_buf,
		digit_select => digit,
		seg => segments
	);

	inst_pulse_generator : pulse_generator port map
	(
		inclk => clk,
		oclk => display_clk
	);
	
	curr_button4_status <= buttons(4);
	process(display_clk)
	begin
		if rising_edge(display_clk) then	--use divided clock to debounce
			last_button4_status <= curr_button4_status;	--After or before last-current button status comparison, does not where to put this statement. 
			if(last_button4_status = '0' and curr_button4_status = '1') then --button 4 pressed
				display_buf <= display_buf + 1;
				leds <= (others => '1');
			elsif (last_button4_status = '1' and curr_button4_status = '1') then --button 4 hold
				leds <= (others => '1');
			else 	--button 4 released and remain released
				leds <= (others => '0');
			end if;
		end if;
	end process;
	
end Behavioral;   