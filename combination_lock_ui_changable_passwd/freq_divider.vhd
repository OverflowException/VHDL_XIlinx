----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:34:20 11/11/2017 
-- Design Name: 
-- Module Name:    freq_divider - Behavioral 
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

entity freq_divider is port 
( 
	in_pulse : in  STD_LOGIC;
   half_period_count : in  STD_LOGIC_VECTOR (31 downto 0);
   out_pulse : out  STD_LOGIC
);
end freq_divider;

architecture Behavioral of freq_divider is
	signal count : std_logic_vector(31 downto 0) := (others => '0');
	signal out_pulse_state : std_logic := '0';
begin
	out_pulse <= out_pulse_state;
	
	process(in_pulse)
	begin
		if rising_edge(in_pulse) then
			count <= count + 1;
			if(count = half_period_count) then
				out_pulse_state <= not out_pulse_state;
				count <= (others => '0');
			end if;
		end if;
	end process;

end Behavioral;

