----------------------------------------------------------------------------------
-- Company:        University of Birmingham
-- Engineer:       Yao Li
-- Create Date:    
-- Design Name:    
-- Module Name:    nx3_top - Behavioral 
-- Project Name:   Combination lock
-- Target Devices: xc6slx16
-- Description:    A combination lock
-- Additional Comments: Correct password is 0419. Press button_0(bottom) to confirm input digit,
--								press button_4(middle) to confirm password. All leds will light up if password is correct.
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
	
	signal display_buf : std_logic_vector(15 downto 0) := X"0000";	--Display buffer. All values set to this buffer will be displayed instantly.
	signal correct_pswd : std_logic_vector(15 downto 0) := X"0419";	--Correct password
	signal pswd_correct : std_logic := '0';	--password correctness indicator
	signal d_ff_clk_bus : std_logic_vector(3 downto 0) := "0001";	--Clock bus for input selection.
	signal display_clk : std_logic;	--Divided clock. Used for 4 digit led display.
	signal debounced_buttons : std_logic_vector(4 downto 0);
	signal last_button4_status : std_logic;	--Detect button 4 state every clock rising edge. Records last state.
	signal curr_button4_status : std_logic;	--Record current state.
	
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
	
	component bit4_cycle_generator port
	(
		in_clk : in std_logic;          
		out_cycle : out std_logic_vector(3 downto 0)
	);
	end component;

	component d_ff_bit_4 port
	(
		in_clk : in std_logic;
		d : in std_logic_vector(3 downto 0);
		q : out std_logic_vector(3 downto 0)
	);
	end component;
	
	component debouncer port
	(
		clk : in std_logic;
		inbtn : in std_logic_vector(4 downto 0);
		outbtn : out std_logic_vector(4 downto 0)
	);
	end component;
	
begin	
	
	leds <= (others => pswd_correct); --light up all leds if the password is correct

	--Debouncer
	inst_debouncer : debouncer port map
	(
		clk => clk,
		inbtn => buttons,
		outbtn => debounced_buttons
	);
	
	--Generate 1kHz pulse by dividing clock. Used for 4 digit led display
	inst_pulse_generator: pulse_generator port map
	(
		inclk => clk,
		oclk => display_clk
	);
	
	--4 digit led display driver
	inst_led_4_display: led_4_display port map
	(
		d_clk => display_clk,
		full_number => display_buf,
		digit_select => digit,
		seg => segments
	);

	--cycle generator. Generate 0001, 0010, 0100, 1000 in one period. Change state by pressing buttons(0)
	inst_bit4_cycle_generator: bit4_cycle_generator port map
	(
		in_clk => debounced_buttons(0),
		out_cycle => d_ff_clk_bus
	);
	
	--A component that could select and change value of digits in display_buf
	gen_input_select : for i in 3 downto 0 generate
	inst_d_ff_bit_4 : d_ff_bit_4 port map
	(
		in_clk => not d_ff_clk_bus(i),
		d => switches(3 downto 0),
		q => display_buf(4 * (i + 1) - 1 downto 4 * i)
	);
	end generate gen_input_select;

	--Check button 4 status with last-current status comparison
	curr_button4_status <= debounced_buttons(4);
	process(clk)
	begin
		if rising_edge(clk) then
			last_button4_status <= curr_button4_status;	--After or before last-current button status comparison, does not matter where to put this statement. 
			if(last_button4_status = '0' and curr_button4_status = '1') then --button 4 pressed
				if (display_buf = correct_pswd) then
					pswd_correct <= '1';
				else
					pswd_correct <= '0';
				end if;
			end if;
		end if;
	end process;

end Behavioral;   