----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:47:44 11/10/2017 
-- Design Name: 
-- Module Name:    d_ff_bit_4 - Behavioral 
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

entity d_ff_bit_4 is
    Port ( in_clk : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (3 downto 0);
           q : out  STD_LOGIC_VECTOR (3 downto 0));
end d_ff_bit_4;

architecture Behavioral of d_ff_bit_4 is
	component d_ff_bit_1 port 
	(
		clk : in std_logic;
		d : in std_logic;
		q: out std_logic
	);
	end component;
begin
		
		gen_d_ff_bit_4 : for i in 3 downto 0 generate
		inst_d_ff_bit_1 : d_ff_bit_1 port map
		(
			clk => in_clk,
			d => d(i),
			q => q(i)
		);
		end generate gen_d_ff_bit_4;

end Behavioral;

