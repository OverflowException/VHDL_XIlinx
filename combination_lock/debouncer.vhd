----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:45:54 11/10/2017 
-- Design Name: 
-- Module Name:    debouncer - Behavioral 
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

entity debouncer is port 
( 
	clk : in std_logic;
	inbtn : in  std_logic_vector (4 downto 0);
	outbtn : out  std_logic_vector (4 downto 0)
);
end debouncer;

architecture Behavioral of debouncer is
	signal debounce_clk : std_logic := '0';
	component pulse_generator_1khz port
	(
		in_clk : in std_logic;
		out_clk : out std_logic
	);
	end component;
begin

	inst_pulse_generator_1khz : pulse_generator_1khz port map
	(
		in_clk => clk,
		out_clk => debounce_clk
	);
	process(debounce_clk)
	begin
		if rising_edge(debounce_clk) then
			outbtn <= inbtn;
		end if;
	end process;

end Behavioral;

