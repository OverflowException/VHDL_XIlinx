----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:45:12 12/06/2017 
-- Design Name: 
-- Module Name:    regulator - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity regulator is port 
( 
	switches_in : in  STD_LOGIC_VECTOR (3 downto 0);
	display_out : out  STD_LOGIC_VECTOR (15 downto 0);
	msd_out : out  STD_LOGIC_VECTOR (3 downto 0)
);
end regulator;

architecture Behavioral of regulator is

	signal msd : std_logic_vector(3 downto 0);

begin
	msd_out <= msd;
	msd <= 	X"3" when (switches_in <= X"4") else
				X"9" when (switches_in >= X"A") else
				switches_in - 1;
	
	display_out <= X"0004" when msd = X"3" else
						X"0005" when msd = X"4" else
						X"0006" when msd = X"5" else
						X"0007" when msd = X"6" else
						X"0008" when msd = X"7" else
						X"0009" when msd = X"8" else
						X"0010" when msd = X"9";

end Behavioral;

