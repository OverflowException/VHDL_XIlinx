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

	component led_4_display_tkr port
	(
		enable : in std_logic_vector(3 downto 0);
		clk : in std_logic;
		full_number : in std_logic_vector(15 downto 0);
		flash_digit : in std_logic_vector(3 downto 0);
		digit_select : out std_logic_vector(3 downto 0);
		seg : out std_logic_vector(7 downto 0)
	);
	end component;
	
	component debouncer port
	(
		clk : in std_logic;
		inbtn : in  std_logic_vector (4 downto 0);
		outbtn : out  std_logic_vector (4 downto 0)
	);
	end component;
	
	component spinbox_dec_digit_10_window_4 port
	( 
		clk : in std_logic;
		enable : in std_logic;
		set : in std_logic;
		set_value : in std_logic_vector(39 downto 0);
		set_msd : in std_logic_vector(3 downto 0);
		left : in  std_logic;
		right : in  std_logic;
		inc : in  std_logic;
		dec : in  std_logic;
		cursor_pos : out std_logic_vector(3 downto 0);
		window_value : out std_logic_vector(15 downto 0);
		value : out  std_logic_vector(39 downto 0)
	);
	end component;
	
	component delay_bit_4 port
	(
		clk : in std_logic;
		i : in  std_logic_vector (3 downto 0);
		o : out  std_logic_vector (3 downto 0)
	);
	end component;
	
	component delay_bit_16 port
	(
		clk : in std_logic;
		i : in  std_logic_vector (15 downto 0);
		o : out  std_logic_vector (15 downto 0)
	);
	end component;
	
	component delay_bit_40 port
	(
		clk : in std_logic;
		i : in  std_logic_vector (39 downto 0);
		o : out  std_logic_vector (39 downto 0)
	);
	end component;
	
	component regulator port 
	( 
		switches_in : in  std_logic_vector (3 downto 0);
		display_out : out  std_logic_vector (15 downto 0);
		msd_out : out  std_logic_vector (3 downto 0)
	);
	end component;
	
	signal input_enable : std_logic;
	signal verify_switch : std_logic;
	signal confirm_button_prev : std_logic;
	signal confirm_button_curr : std_logic;
	
	signal debounced_buttons : std_logic_vector(4 downto 0);
	
	signal display_buf : std_logic_vector(15 downto 0);	--a buffer that would be displayed directly
	signal display_enable : std_logic_vector(3 downto 0) := "1111";
	signal display_flash : std_logic_vector(3 downto 0);
	
	signal spin_set : std_logic;
	signal spin_set_value : std_logic_vector(39 downto 0);
	signal spin_set_msd : std_logic_vector(3 downto 0);
	signal spin_cursor_pos : std_logic_vector(3 downto 0);
	signal spin_window_value : std_logic_vector(15 downto 0);
	signal spin_value : std_logic_vector(39 downto 0);
	
	signal msg_err : std_logic_vector(15 downto 0) := X"0EFF";
	signal msg_set : std_logic_vector(15 downto 0) := X"05EC";
	signal msg_ok : std_logic_vector(15 downto 0):= X"000D";
	
	signal passwd_temp : std_logic_vector(39 downto 0); 
	signal passwd_correct : std_logic_vector(39 downto 0);
	signal passwd_msd : std_logic_vector(3 downto 0) := X"3";
	--signal passwd_msd_temp : std_logic_vector(15 downto 0);
	signal verify_code_temp : std_logic_vector(39 downto 0);
	signal verify_code_correct : std_logic_vector(39 downto 0) := X"00_0000_0419";
	signal leds_dummy : std_logic_vector(7 downto 0);
	
	signal regulator_display : std_logic_vector(15 downto 0);
	signal regulator_msd : std_logic_vector(3 downto 0);
	
	signal delayed_spin_set_value : std_logic_vector(39 downto 0);	---signals added the delay mechanism will nullify all initializer
	signal delayed_spin_set_msd : std_logic_vector(3 downto 0);
	signal delayed_passwd_correct : std_logic_vector(39 downto 0);
	
--	st_passwd: input password
--	st_ok: password correct
--	st_err: password error
--	st_verify: verify user
--	st_verify_err: verification failed
--	st_new_length: input the length of new password
--	st_new_passwd: input new password
--	st_new_passwd_set: new password successfully set
	type state_type is (st_passwd, st_ok, st_err, st_verify, st_verify_err, st_new_length, st_new_passwd, st_new_passwd_set);
	signal state : state_type := st_passwd;
	signal state_prev : state_type;
	
begin
	input_enable <= switches(7);

	inst_debouncer : debouncer port map
	(
		clk => clk,
		inbtn => buttons,
		outbtn => debounced_buttons
	);
	
	inst_led_4_display_tkr : led_4_display_tkr port map
	(
		enable => display_enable,
		clk => clk,
		full_number => display_buf,
		flash_digit => display_flash,
		digit_select => digit,
		seg => segments
	);
	
	inst_spinbox_dec_digit_10_window_4 : spinbox_dec_digit_10_window_4 port map
	( 
		clk => clk,
		enable => input_enable,
		set => spin_set,
		set_value => delayed_spin_set_value,
		set_msd => delayed_spin_set_msd,
		left => debounced_buttons(3),
		right => debounced_buttons(1),
		inc => debounced_buttons(2),
		dec => debounced_buttons(0),
		cursor_pos => spin_cursor_pos,
		window_value => spin_window_value,
		value => spin_value
	);
	
	inst_spin_set_value_delay : delay_bit_40 port map
	(
		clk => clk,
		i => spin_set_value,
		o => delayed_spin_set_value
	);
	
	inst_spin_set_msd_delay : delay_bit_4 port map
	(
		clk => clk,
		i => spin_set_msd,
		o => delayed_spin_set_msd
	);
	
	inst_passwd_correct_delay : delay_bit_40 port map
	(
		clk => clk,
		i => passwd_correct,
		o => delayed_passwd_correct
	);
	
	inst_regulator : regulator port map
	(
		switches_in => switches(3 downto 0),
		display_out => regulator_display,
		msd_out => regulator_msd
	);
	--finite state machine, 8 states
	--st_passwd, st_ok, st_err, st_verify, st_verify_err, st_new_length, st_new_passwd, st_new_passwd_set
	verify_switch <= switches(6);
	confirm_button_curr <= debounced_buttons(4);
	--state_prev <= state after 100ns;
	process(clk)
	begin
		if rising_edge(clk) then
			confirm_button_prev <= confirm_button_curr;
			state_prev <= state;
			if(input_enable = '1') then
				if(confirm_button_prev = '0' and confirm_button_curr = '1') then	---confirm button pressed, state transition
					case state is
						when st_passwd => if(verify_switch = '1') then			 
													state <= st_verify;				---st_passwd -> st_verify
												else
													if(passwd_temp = passwd_correct) then
														state <= st_ok;				---st_passwd -> st_ok
													else
														state <= st_err;				---st_passwd -> st_err
													end if;
												end if;
						when st_verify =>	if(verify_code_temp = verify_code_correct) then	
													state <= st_new_length;			---st_verify -> st_new_length
												else
													state <= st_verify_err;			---st_verify -> st_verify_err
												end if;		
						when st_new_length =>	state <= st_new_passwd;		---st_new_length -> st_new_passwd
						when st_new_passwd =>	state <= st_new_passwd_set;---st_new_passwd -> st_new_passwd_set
						when others =>		state <= st_passwd;					---st_err -> st_passwd
																							---st_ok -> st_passwd
																							---st_verify_err -> st_passwd
																							---st_new_passwd_set -> st_passwd
					end case;
				end if;
			end if;
			if(state_prev = st_passwd and state = st_verify) then		---handle state transitions
				spin_set <= not spin_set;
			elsif(state_prev = st_verify_err and state = st_passwd) then
				spin_set <= not spin_set;
			elsif(state_prev = st_new_length and state = st_new_passwd) then
				spin_set <= not spin_set;
			elsif(state_prev = st_new_passwd_set and state = st_passwd) then
				spin_set <= not spin_set;
			end if;
		end if;
	end process;
	
--	state_prev <= state after 1ms;
--	process(state)
--	begin
--		--state_prev <= state;
--		if(state_prev = st_passwd and state = st_verify) then		---handle state transitions
--			spin_set <= not spin_set;
--			leds_dummy(3) <= not leds_dummy(3);
--		elsif(state_prev = st_verify_err and state = st_passwd) then
--			spin_set <= not spin_set;
--		elsif(state_prev = st_new_length and state = st_new_passwd) then
--			spin_set <= not spin_set;
--		elsif(state_prev = st_new_passwd_set and state = st_passwd) then
--			spin_set <= not spin_set;
--		end if;
--	end process;

	--display_buf, display_enable, display_flash
	--spin_set, spin_set_value, spin_set_msd, spin_cursor_pos, spin_window_value, spin_value, 
	--passwd_temp, passwd_correct passwd_msd, passwd_msd_temp
	--verify_code_temp
	--leds_dummy
	
	--multiplexers that support latches
	display_buf <=		msg_ok				when state = st_ok else
							msg_err				when (state = st_err or state = st_verify_err) else
							msg_set				when state = st_new_passwd_set else
							regulator_display	when state = st_new_length else
							spin_window_value;
						
	display_enable <=	"0011"				when state = st_ok else
							"0111"				when (state = st_err or state = st_verify_err or state = st_new_passwd_set) else
							"1111";
							
	display_flash <=	spin_cursor_pos 	when (state = st_passwd or state = st_verify or state = st_new_passwd) else
							"0000";
	
	spin_set_value <=	X"00_0000_0000"	when (state = st_verify_err or state = st_passwd or state = st_new_length or state = st_new_passwd_set) else
							delayed_spin_set_value;
	
	spin_set_msd <=	passwd_msd			when (state = st_verify_err or state = st_new_passwd_set)else
							X"3"					when state = st_passwd else
							--switches(3 downto 0) when state = st_new_length else
							regulator_msd		when state = st_new_length else
							delayed_spin_set_msd;
							
	passwd_temp <=		spin_value;
	
	passwd_correct <= spin_value			when state = st_new_passwd else
							delayed_passwd_correct;
	
	passwd_msd <=		--switches(3 downto 0)	when state = st_new_length else
							regulator_msd		when state = st_new_length else
							passwd_msd;
						
	--passwd_msd_temp(3 downto 0) <= switches(3 downto 0);
	--passwd_msd_temp(15 downto 4) <= (others => '0');
	
	verify_code_temp <=	spin_value;
	
	leds_dummy(2 downto 0) <=	"000"				when state = st_passwd else
								"001"				when state = st_ok else
								"010"				when state = st_err else
								"011"				when state = st_verify else
								"100"				when state = st_new_length else
								"101"				when state = st_verify_err else
								"110"				when state = st_new_passwd else
								"111"				when state = st_new_passwd_set;
								
	leds_dummy(7 downto 4) <= spin_set_msd;		--debug
	--leds_dummy(3) <= '0';
	leds <= leds_dummy;

end Behavioral;   