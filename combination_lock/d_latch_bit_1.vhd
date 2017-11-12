----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:16:05 11/12/2017 
-- Design Name: 
-- Module Name:    d_latch_bit_1 - Behavioral 
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

entity d_latch_bit_1 is port 
( 
	enable : in  std_logic;
   d : in  std_logic;
   q : out  std_logic
);
end d_latch_bit_1;

architecture Behavioral of d_latch_bit_1 is

begin
	process(enable, d)
	begin
		if(enable = '1') then
			q <= d;
		end if;
	end process;

end architecture Behavioral;

