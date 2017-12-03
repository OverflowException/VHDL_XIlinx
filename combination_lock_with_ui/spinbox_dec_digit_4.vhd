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
	set : in std_logic;	---force set output value to set_value when set = '1'
	set_value : in std_logic_vector(15 downto 0);
	left : in  std_logic;
   right : in  std_logic;
   inc : in  std_logic;
   dec : in  std_logic;
	digit_selected : out std_logic_vector(3 downto 0);	---indicates which digit is currently selected
   value : out  std_logic_vector(15 downto 0)
);
end spinbox_dec_digit_4;

architecture Behavioral of spinbox_dec_digit_4 is

	component counter_10 port
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

	signal enable_mask : std_logic_vector(3 downto 0);
	signal set_mask : std_logic_vector(3 downto 0);
	signal enable_bus : std_logic_vector(3 downto 0);	---Each bit is the 'enable' pin of each counter
	signal select_bus : std_logic_vector(3 downto 0) := "0001";		---manual selection
	signal value_buf : std_logic_vector(15 downto 0) := B"0000_0000_0000_0000";
	signal cmd_prev : std_logic_vector(1 downto 0);
	signal cmd_curr : std_logic_vector(1 downto 0);

begin
	enable_mask <= (others => enable);
	set_mask <= (others => set);
	enable_bus <= (select_bus or set_mask) and enable_mask;
	digit_selected <= enable_bus;

	gen_inst_4_counter_10 : for i in 3 downto 0 generate
	inst_counter_10 : counter_10 port map
	(
		clk => clk,
		enable => enable_bus(i),
		set => set,
		set_value => set_value((4 * i + 3) downto (4 * i)),
		inc => inc,
		dec => dec,
		value => value_buf((4 * i + 3) downto (4 * i))
	);
	end generate;
	
	cmd_curr <= (left, right);
	value <= value_buf;
	
	process(clk)
	begin
		if(rising_edge(clk) and enable = '1') then
			cmd_prev <= cmd_curr;
			if(cmd_prev = "00" and cmd_curr = "10" and select_bus /= "1000") then ---left pressed, check range
				select_bus <= std_logic_vector(unsigned(select_bus) sll 1);
			elsif(cmd_prev = "00" and cmd_curr = "01" and select_bus /= "0001") then	---right pressed, check range
				select_bus <= std_logic_vector(unsigned(select_bus) srl 1);
			end if;
		end if;
	end process;

end architecture Behavioral;

