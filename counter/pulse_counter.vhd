----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:01:58 11/09/2017 
-- Design Name: 
-- Module Name:    pulse_counter - Behavioral 
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

entity pulse_counter is
    port ( inclk : in  STD_LOGIC;
           count : out  STD_LOGIC_VECTOR (31 downto 0));
end pulse_counter;

architecture Behavioral of pulse_counter is
	signal count_buf: std_logic_vector(31 downto 0);
begin
	--count_buf <= (others => '0');
	process
	begin
		if(rising_edge(inclk)) then
			count_buf <= count_buf + 1;
			count <= count_buf;
		end if;
	end process;
end architecture Behavioral;

