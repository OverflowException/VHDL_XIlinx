----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:45:25 11/11/2017 
-- Design Name: 
-- Module Name:    pulse_generator_1khz - Behavioral 
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

entity pulse_generator_1khz is port 
( 
	in_clk : in  STD_LOGIC;
   out_clk : out  STD_LOGIC
);
end pulse_generator_1khz;

architecture Behavioral of pulse_generator_1khz is
	component freq_divider port
	(
		in_pulse : in std_logic;
		half_period_count : in std_logic_vector(31 downto 0);
		out_pulse : out std_logic
	);
	end component;
	
begin
	--Assume period of in_clk is 20 ns. So counting 25,000 rising edges will take 0.5 ms. Thus period of out_clk is 1 ms.
	inst_freq_divider : freq_divider port map
	(
		in_pulse => in_clk,
		half_period_count => X"000061A8",	-- 25,000 in hex
		out_pulse => out_clk
	);


end architecture Behavioral;

