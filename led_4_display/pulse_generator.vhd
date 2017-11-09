----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:54:55 11/09/2017 
-- Design Name: 
-- Module Name:    pulse_generator - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity pulse_generator is
	port(inclk: in std_logic;
			oclk: out std_logic);
end pulse_generator;

architecture Behavioral of pulse_generator is
	signal count: std_logic_vector(15 downto 0);
	signal state: std_logic;
begin
	process(inclk)
	begin
		if rising_edge(inclk) then
			count <= count + 1;
			if count = B"0110_0001_1010_1000" then --count to 25k
				oclk <= state;
				state <= not state;
				count <= (others => '0'); --reset counter
			end if;
		end if;
	end process;
end architecture Behavioral;

