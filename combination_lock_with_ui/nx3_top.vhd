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
use IEEE.NUMERIC_STD.all;

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

	component debouncer port
	(
		clk : in std_logic;
		inbtn : in  std_logic_vector (4 downto 0);
		outbtn : out  std_logic_vector (4 downto 0)
	);
	end component;

	component led_4_display_kr port
	(	
		enable : in std_logic_vector(3 downto 0);
		clk : in std_logic;
		full_number : in std_logic_vector(15 downto 0);
		flash_digit : in std_logic_vector(3 downto 0);
		digit_select : out std_logic_vector(3 downto 0);
		seg : out std_logic_vector(7 downto 0)
	);
	end component;

	component spinbox_dec_digit_4 port
	(
		clk : in std_logic;
		enable : in std_logic;
		set : in std_logic;
		set_value : in std_logic_vector(15 downto 0);
		left : in  std_logic;
		right : in  std_logic;
		inc : in  std_logic;
		dec : in  std_logic;
		digit_selected : out std_logic_vector(3 downto 0);
		value : out  std_logic_vector(15 downto 0)
	);
	end component;

	signal debounced_buttons : std_logic_vector(4 downto 0);	
	
	signal display_buf : std_logic_vector(15 downto 0);
	signal display_enable_bus : std_logic_vector(3 downto 0);
	signal flash_digit_bus : std_logic_vector(3 downto 0);
	
	signal passwd_input : std_logic_vector(15 downto 0);
	signal digit_selected_bus : std_logic_vector(3 downto 0);
	
	signal buttons_prev : std_logic_vector(4 downto 0);
	signal buttons_curr : std_logic_vector(4 downto 0);
	
	type state_type is (st_input, st_ok, st_err);
	signal state : state_type := st_input;
	
begin

	--Button debouncer
	inst_debouncer : debouncer port map
	(
		clk => clk,
		inbtn => buttons,
		outbtn => debounced_buttons
	);
	
	inst_led_4_display_kr : led_4_display_kr port map
	(
		enable => display_enable_bus,
		clk => clk,
		full_number => display_buf,
		flash_digit => flash_digit_bus,
		digit_select => digit,
		seg => segments
	);
	
	inst_spinbox_dec_digit_4 : spinbox_dec_digit_4 port map
	(
		clk => clk,
		enable => switches(7),
		set => '0',
		set_value => X"0000",
		left => debounced_buttons(3),
		right => debounced_buttons(1),
		inc => debounced_buttons(2),
		dec => debounced_buttons(0),
		digit_selected => digit_selected_bus,
		value => passwd_input
	);

	buttons_curr <= debounced_buttons;
	process(clk)
	begin
		if rising_edge(clk) then
			buttons_prev <= buttons_curr;
			if(buttons_prev = "00000" and buttons_curr = "10000") then	---left pressed
				case state is 
					when st_input =>	if(display_buf = X"3049") then
												state <= st_ok;
											else
												state <= st_err;
											end if;
					when others => state <= st_input;
				end case;
			else
				null;
			end if;
		end if;
	end process;
	
	process(state)
	begin
		case state is
			when st_input =>	display_buf <= passwd_input;
									display_enable_bus <= "1111";
									flash_digit_bus <= digit_selected_bus;
									
			when st_ok =>	display_buf <= X"000D";
									display_enable_bus <= "0011";
									flash_digit_bus <= "0000";
									
			when st_err =>	display_buf <= X"0EFF";
									display_enable_bus <= "0111";
									flash_digit_bus <= "0000";
			when others => null;
		end case;
	end process;
	
	leds <= (others => '0');
end Behavioral;   