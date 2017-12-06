----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:21:43 12/06/2017 
-- Design Name: 
-- Module Name:    delay_bit_4 - Behavioral 
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

entity delay_bit_4 is port 
( 
	clk : in std_logic;
	i : in  std_logic_vector (3 downto 0);
   o : out  std_logic_vector (3 downto 0)
);
end delay_bit_4;

architecture Behavioral of delay_bit_4 is

	signal i_1 : std_logic_vector(3 downto 0);
	signal i_2 : std_logic_vector(3 downto 0);
	signal i_3 : std_logic_vector(3 downto 0);
	signal i_4 : std_logic_vector(3 downto 0);
	signal i_5 : std_logic_vector(3 downto 0);

begin
	o <= i_5;
	process(clk)
	begin
		if rising_edge(clk) then
			i_1 <= i;
			i_2 <= i_1;
			i_3 <= i_2;
			i_4 <= i_3;
			i_5 <= i_4;
		end if;
	end process;


end Behavioral;

