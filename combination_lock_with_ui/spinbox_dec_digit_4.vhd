----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:49:17 12/02/2017 
-- Design Name: 
-- Module Name:    spinbox_dec_digit_4 - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity spinbox_dec_digit_4 is port 
( 
	clk : in std_logic;
	enable : in std_logic;
	set : in std_logic;		---force set output value to set_value when 'set' changes
	set_value : in std_logic_vector(15 downto 0);
	left : in  std_logic;
   right : in  std_logic;
   inc : in  std_logic;
   dec : in  std_logic;
	cursor_pos : out std_logic_vector(3 downto 0);	---indicates which digit is currently selected
   value : out  std_logic_vector(15 downto 0)
);
end spinbox_dec_digit_4;

architecture Behavioral of spinbox_dec_digit_4 is

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

	signal inc_bus : std_logic_vector(3 downto 0);
	signal dec_bus : std_logic_vector(3 downto 0);
	signal select_mask : std_logic_vector(3 downto 0) := "0001";		---manual selection
	signal cmd_prev : std_logic_vector(1 downto 0);
	signal cmd_curr : std_logic_vector(1 downto 0);

begin
	cursor_pos <= (enable, enable, enable, enable) and select_mask;
	
	inc_bus <= (inc, inc, inc, inc) and select_mask;
	dec_bus <= (dec, dec, dec, dec) and select_mask;

	gen_inst_4_spinbox_dec_digit_1 : for i in 3 downto 0 generate
	inst_spinbox_dec_digit_1 : spinbox_dec_digit_1 port map
	(
		clk => clk,
		enable => enable,
		set => set,
		set_value => set_value((4 * i + 3) downto (4 * i)),
		inc => inc_bus(i),
		dec => dec_bus(i),
		value => value((4 * i + 3) downto (4 * i))
	);
	end generate;
	
	cmd_curr <= (left, right);
	
	process(clk)
	begin
		if rising_edge(clk) then
			cmd_prev <= cmd_curr;
			if(enable = '1') then
				if(cmd_prev = "00" and cmd_curr = "10" and select_mask /= "1000") then ---left pressed, check range
					select_mask <= std_logic_vector(unsigned(select_mask) sll 1);
				elsif(cmd_prev = "00" and cmd_curr = "01" and select_mask /= "0001") then	---right pressed, check range
					select_mask <= std_logic_vector(unsigned(select_mask) srl 1);
				end if;
			end if;
		end if;
	end process;

end architecture Behavioral;

