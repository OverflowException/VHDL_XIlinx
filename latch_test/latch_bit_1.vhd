----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:59:04 11/12/2017 
-- Design Name: 
-- Module Name:    latch_bit_1 - Behavioral 
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
	clk : in  std_logic;
   in_bit : in  std_logic;
   out_bit : out  std_logic
);
end latch_bit_1;

architecture Behavioral of d_latch_bit_1 is

begin
	process(clk)
	begin
		if(rising_edge(clk))
			out_bit <= in_bit;
		end if;
	end process;

end Behavioral;

