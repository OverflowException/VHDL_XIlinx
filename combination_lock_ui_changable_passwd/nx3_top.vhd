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
	
	component signal_comparator_digit_10 port
	(
		sig_1 : in  std_logic_vector (39 downto 0);
		sig_2 : in  std_logic_vector (39 downto 0);
		equal : out  std_logic
	);
	end component;
	
	component signal_comparator_digit_1 port
	(
		sig_1 : in  std_logic_vector (3 downto 0);
		sig_2 : in  std_logic_vector (3 downto 0);
		equal : out  std_logic
	);
	end component;
	
	component regulator port 
	( 
		switches_in : in  std_logic_vector (3 downto 0);
		display_out : out  std_logic_vector (15 downto 0);
		msd_out : out  std_logic_vector (3 downto 0)
	);
	end component;
	
	---debouncer related
	signal debounced_buttons : std_logic_vector(4 downto 0);
	---display driver related
	signal display_buf : std_logic_vector(15 downto 0);	--a buffer that would be displayed directly
	signal display_enable : std_logic_vector(3 downto 0) := "1111";
	signal display_flash : std_logic_vector(3 downto 0);
	---spinbox related
	signal spin_set : std_logic;
	signal spin_set_value : std_logic_vector(39 downto 0);
	signal spin_set_msd : std_logic_vector(3 downto 0);
	signal spin_cursor_pos : std_logic_vector(3 downto 0);
	signal spin_window_value : std_logic_vector(15 downto 0);
	signal spin_value : std_logic_vector(39 downto 0);
	---password related
	signal passwd_temp : std_logic_vector(39 downto 0); 
	signal passwd_correct : std_logic_vector(39 downto 0);
	signal passwd_match : std_logic;
	signal passwd_error_count : std_logic_vector(3 downto 0) := X"0";			---count how many times password errors occur
	signal passwd_error_count_max : std_logic_vector(3 downto 0) := X"3";	---maximum number of password errors before forced verification
	signal too_many_passwd_errors : std_logic;
	signal passwd_msd : std_logic_vector(3 downto 0) := X"3";
	---verify code related
	signal verify_code_temp : std_logic_vector(39 downto 0);
	signal verify_code_correct : std_logic_vector(39 downto 0) := X"00_0000_0419";
	signal verify_code_match : std_logic;
	---regulator related
	signal regulated_display : std_logic_vector(15 downto 0);
	signal regulated_msd : std_logic_vector(3 downto 0);
	---time delay component related
	signal delayed_spin_set_value : std_logic_vector(39 downto 0);	---signals added the delay mechanism will nullify all initializer
	signal delayed_spin_set_msd : std_logic_vector(3 downto 0);
	signal delayed_passwd_correct : std_logic_vector(39 downto 0);
	---messages
	signal msg_err : std_logic_vector(15 downto 0) := X"0EFF";
	signal msg_set : std_logic_vector(15 downto 0) := X"05EC";
	signal msg_ok : std_logic_vector(15 downto 0):= X"000D";
	---misc signals
	signal leds_dummy : std_logic_vector(7 downto 0);
	signal input_enable : std_logic;
	signal verify_switch : std_logic;
	signal confirm_button_prev : std_logic;
	signal confirm_button_curr : std_logic;
	
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
	
	--delay components are added to slow down multiplexers.
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
	
	inst_passwd_comparator : signal_comparator_digit_10 port map
	(
		sig_1 => passwd_temp,
		sig_2 => passwd_correct,
		equal => passwd_match
	);
	
	inst_verify_code_comparator : signal_comparator_digit_10 port map
	(
		sig_1 => verify_code_temp,
		sig_2 => verify_code_correct,
		equal => verify_code_match
	);
	
	inst_error_counter_comparator : signal_comparator_digit_1 port map
	(
		sig_1 => passwd_error_count,
		sig_2 => passwd_error_count_max,
		equal => too_many_passwd_errors
	);
	
	inst_regulator : regulator port map
	(
		switches_in => switches(3 downto 0),
		display_out => regulated_display,
		msd_out => regulated_msd
	);
	--finite state machine, 8 states
	--st_passwd, st_ok, st_err, st_verify, st_verify_err, st_new_length, st_new_passwd, st_new_passwd_set
	verify_switch <= switches(6);
	confirm_button_curr <= debounced_buttons(4);
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
													if(passwd_match = '1') then
														state <= st_ok;				---st_passwd -> st_ok
													else
														state <= st_err;				---st_passwd -> st_err
													end if;
												end if;
						when st_verify =>	if(verify_code_match = '1') then	
													if(too_many_passwd_errors = '1')	then	---st_verify -> st_passwd
														state <= st_passwd;
													else												---st_verify -> st_verify_err
														state <= st_new_length;			
													end if;
												else													---st_verify -> st_verify_err
													state <= st_verify_err;
												end if;
						when st_verify_err =>	if(too_many_passwd_errors = '1') then	---st_verify_err => st_verify
															state <= st_verify;
														else 												---st_verify_err => st_passwd
															state <= st_passwd;
														end if;
						when st_err =>		if(too_many_passwd_errors = '1') then	---st_err -> st_verify
													state <= st_verify;
												else												---st_err -> st_passwd
													state <= st_passwd;				
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
																									---handle state transitions
																									
			if(state_prev = st_passwd and state = st_verify) then					---st_passwd -> st_verify, refresh spinbox
				spin_set <= not spin_set;
			elsif(state_prev = st_new_length and state = st_new_passwd) then	---st_new_length -> st_new_passwd, refresh spinbox
				spin_set <= not spin_set;
			elsif(state_prev = st_new_passwd_set and state = st_passwd) then	---st_new_passwd_set ->st_passwd, refresh spinbox
				spin_set <= not spin_set;
			elsif(state_prev = st_verify_err and state = st_passwd) then		---st_verify_err -> st_passwd, refresh spinbox
				spin_set <= not spin_set;
			elsif(state_prev = st_err and state = st_verify) then					---st_err -> st_verify, refreset spinbox
				spin_set <= not spin_set;
			elsif(state_prev = st_verify and state = st_passwd) then				---st_verify -> st_passwd, refreset spinbox and clear error counter
				spin_set <= not spin_set;
				passwd_error_count <= X"0";
			elsif(state_prev = st_passwd and state = st_ok) then					---password correct, clear error counter
				passwd_error_count <= X"0";
			elsif(state_prev = st_verify and state = st_new_length) then		---verified, clear error counter
				passwd_error_count <= X"0";
			elsif(state_prev = st_passwd and state = st_err) then					---a password error, increase error counter
				passwd_error_count <= passwd_error_count + 1;
				
			end if;
		end if;
	end process;
	
	--multiplexers that support latches
	display_buf <=		msg_ok				when state = st_ok else
							msg_err				when (state = st_err or state = st_verify_err) else
							msg_set				when state = st_new_passwd_set else
							regulated_display	when state = st_new_length else
							spin_window_value;
						
	display_enable <=	"0011"				when state = st_ok else
							"0111"				when (state = st_err or state = st_verify_err or state = st_new_passwd_set) else
							"1111";
							
	display_flash <=	spin_cursor_pos 	when (state = st_passwd or state = st_verify or state = st_new_passwd) else
							"0000";
	
	spin_set_value <=	X"00_0000_0000"	when (state = st_verify_err or state = st_passwd or state = st_new_length or state = st_new_passwd_set or state = st_err) else
							delayed_spin_set_value;
	
	spin_set_msd <=	passwd_msd			when (state = st_verify_err or state = st_new_passwd_set or state = st_verify)else
							X"3"					when (state = st_passwd or state = st_err) else
							--switches(3 downto 0) when state = st_new_length else
							regulated_msd		when state = st_new_length else
							delayed_spin_set_msd;
							
	passwd_temp <=		spin_value;
	
	passwd_correct <= spin_value			when state = st_new_passwd else
							delayed_passwd_correct;
	
	passwd_msd <=		regulated_msd		when state = st_new_length else
							passwd_msd;
	
	verify_code_temp <=	spin_value;
	
	--debug
--	leds_dummy(7) <= '0';
--	leds_dummy(6 downto 4) <=	"000"				when state = st_passwd else
--								"001"				when state = st_ok else
--								"010"				when state = st_err else
--								"011"				when state = st_verify else
--								"100"				when state = st_new_length else
--								"101"				when state = st_verify_err else
--								"110"				when state = st_new_passwd else
--								"111"				when state = st_new_passwd_set;
--								
--	leds_dummy(3 downto 0) <= (passwd_match, verify_code_match, verify_switch, too_many_passwd_errors);		--debug
	
	leds_dummy(7 downto 4) <= 	(others => '1')	when (state = st_new_length or state = st_new_passwd) else
										(others => '0');
	leds_dummy(3 downto 0) <=	(others => '0')	when (state = st_passwd or state = st_ok or state = st_err) else
										(others => '1');
	leds <= leds_dummy;

end Behavioral;   