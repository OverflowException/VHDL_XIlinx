----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:15:26 11/10/2017 
-- Design Name: 
-- Module Name:    bit4_cycle_generator - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bit4_cycle_generator is port 
( 
	reset : in std_logic;
	in_clk : in  std_logic;
   out_cycle : out  std_logic_vector (3 downto 0)
);
end bit4_cycle_generator;

architecture Behavioral of bit4_cycle_generator is
		type state_type is(st_0, st_1, st_2, st_3, st_4);
		signal state: state_type := st_0;
begin

	--asyc reset.
	process(in_clk, reset)
	begin
		if reset = '1' then
			state <= st_0;
		elsif rising_edge(in_clk) then
			case state is
				when st_0 => state <= st_1;
				when st_1 => state <= st_2;
				when st_2 => state <= st_3;
				when st_3 => state <= st_4;
				when st_4 => state <= st_1;
				when others => state <= st_0;
			end case;
		end if;
	end process;
	
	with state select
	out_cycle <="0000" when st_0,
					"0001" when st_1,
					"0010" when st_2,
					"0100" when st_3,
					"1000" when st_4;
					
end architecture Behavioral;

