----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:29:54 12/04/2017 
-- Design Name: 
-- Module Name:    spinbox_dec_digit_16_window_4 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.ALL;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity spinbox_dec_digit_10_window_4 is port
( 
	clk : in std_logic;
	enable : in std_logic;
	set : in std_logic;			---when 'set' changes, force set 'value' to 'set_value', set msd, relocate window to the lowest position.
	set_value : in std_logic_vector(39 downto 0);
	set_msd : in std_logic_vector(3 downto 0);		---most significant digit the slide window can reach, in this case make sure it ranges from 9 downto 3
	left : in  std_logic;
   right : in  std_logic;
   inc : in  std_logic;
   dec : in  std_logic;
	cursor_pos : out std_logic_vector(3 downto 0);	---indicates which digit is currently selected, relative to the position of slide window
	window_value : out std_logic_vector(15 downto 0);	---4 digits per window * 4 bits per digit = 16 bits
   value : out  std_logic_vector(39 downto 0)			---10 digits * 4 bits per digit = 40 bits
);
end spinbox_dec_digit_10_window_4;

architecture Behavioral of spinbox_dec_digit_10_window_4 is
	
	component spinbox_dec_digit_1 port
	(
		clk : in std_logic;
		enable : in  std_logic;
		set : in  std_logic;
		set_value : in std_logic_vector(3 downto 0);
		inc : in  std_logic;
		dec : in  std_logic;
		value : out  std_logic_vector(3 downto 0)
	);
	end component;
	
	signal inc_bus : std_logic_vector(9 downto 0);
	signal dec_bus : std_logic_vector(9 downto 0);
	signal inc_mask : std_logic_vector(9 downto 0);
	signal dec_mask : std_logic_vector(9 downto 0);
	signal select_mask : std_logic_vector(9 downto 0) := B"00_0000_0001";
	signal select_mask_prev : std_logic_vector(9 downto 0) := B"00_0000_0001";
	signal window_pos_upper : std_logic_vector(9 downto 0) := B"00_0000_1000";		---current window position, position of upper boundary set to 1
	signal window_pos_lower : std_logic_vector(9 downto 0) := B"00_0000_0001";		---current window position, position of lower boundary set to 1
	signal window_msd : std_logic_vector(3 downto 0) := X"3";							---current window msd
	signal highest_window_pos : std_logic_vector(9 downto 0) := B"00_0000_1000";	---highest window position, position of upper boundary set to 1
	signal shift_base : std_logic_vector(9 downto 0) := B"00_0000_0001";
	signal cursor_pos_enable_mask : std_logic_vector(3 downto 0);
	
	signal cmd_prev : std_logic_vector(1 downto 0);
	signal cmd_curr : std_logic_vector(1 downto 0);
	signal set_prev : std_logic;
	signal set_curr : std_logic;
	
	signal cursor_pos_dummy : std_logic_vector(3 downto 0) := B"0001";
	
	signal value_buf : std_logic_vector(39 downto 0);
	
begin
	inc_mask <= (others => inc);
	dec_mask <= (others => dec);
	inc_bus <= select_mask and inc_mask;
	dec_bus <= select_mask and dec_mask;
	
	cmd_curr <= (left, right);
	set_curr <= set;
	
	cursor_pos_enable_mask <= (others => enable);
	cursor_pos <= cursor_pos_dummy and cursor_pos_enable_mask;
	
	shift_base <= B"00_0000_0001";
	
	value <= value_buf;
	
	gen_inst_10_spinbox_dec_digit_1 : for i in 9 downto 0 generate ---10 spinbox_dec_digit_1 instances
	inst_spinbox_dec_digit_1 : spinbox_dec_digit_1 port map
	(
		clk => clk,
		enable => enable,
		set => set,
		set_value => set_value((4 * i + 3) downto (4 * i)),
		inc => inc_bus(i),
		dec => dec_bus(i),
		value => value_buf((4 * i + 3) downto (4 * i))
	);
	end generate;
	
	process(clk, select_mask)
	variable cursor_pos_10_bits : std_logic_vector(9 downto 0);
	variable cursor_pos_4_bits : std_logic_vector(3 downto 0);
	begin
		if rising_edge(clk) then
			cmd_prev <= cmd_curr;
			set_prev <= set_curr;
			select_mask_prev <= select_mask;
			if(enable = '1') then
				if(set_prev /= set_curr) then		---'set' changes, set msd
					select_mask <= shift_base;
					highest_window_pos <= std_logic_vector(unsigned(shift_base) sll to_integer(unsigned(set_msd)));		---set msd.
					window_pos_upper <= std_logic_vector(unsigned(shift_base) sll 3);				---relocate window to the lowest position.
					window_pos_lower <= shift_base;
					window_msd <= X"3";
				elsif(cmd_prev = "00" and cmd_curr = "10" and select_mask /= highest_window_pos) then ---left pressed, check range
					select_mask <= std_logic_vector(unsigned(select_mask) sll 1);
				elsif(cmd_prev = "00" and cmd_curr = "01" and select_mask /= shift_base) then	---right pressed, check range
					select_mask <= std_logic_vector(unsigned(select_mask) srl 1);
				end if;
			end if;
			if(select_mask_prev /= select_mask) then			---select mask changed
				if(select_mask > window_pos_upper) then		---left slide window
					window_pos_upper <= std_logic_vector(unsigned(window_pos_upper) sll 1);
					window_pos_lower <= std_logic_vector(unsigned(window_pos_lower) sll 1);
					window_msd <= window_msd + 1;
					cursor_pos_dummy <= "1000";
				elsif(select_mask < window_pos_lower) then	---right slide window
					window_pos_upper <= std_logic_vector(unsigned(window_pos_upper) srl 1);
					window_pos_lower <= std_logic_vector(unsigned(window_pos_lower) srl 1);
					window_msd <= window_msd - 1;
					cursor_pos_dummy <= "0001";
				else														---do not slide window, move cursor
					cursor_pos_10_bits := std_logic_vector(unsigned(select_mask) srl to_integer(unsigned(window_msd - 3)));
					cursor_pos_4_bits := cursor_pos_10_bits(3 downto 0);
					cursor_pos_dummy <= cursor_pos_4_bits;
				end if;
			end if;
		end if;
	end process;
	
	
	with window_msd select
		window_value <=	value_buf(15 downto 0) when X"3",
								value_buf(19 downto 4) when X"4",
								value_buf(23 downto 8) when X"5",
								value_buf(27 downto 12) when X"6",
								value_buf(31 downto 16) when X"7",
								value_buf(35 downto 20) when X"8",
								value_buf(39 downto 24) when X"9",
								value_buf(15 downto 0) when others;
	
end architecture Behavioral;