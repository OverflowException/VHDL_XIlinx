----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:13:21 12/07/2017 
-- Design Name: 
-- Module Name:    signal_comparator_digit_4 - Behavioral 
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

entity signal_comparator_digit_1 is port 
( 
	sig_1 : in  std_logic_vector (3 downto 0);
	sig_2 : in  std_logic_vector (3 downto 0);
	equal : out  std_logic
);
end signal_comparator_digit_1;

architecture Behavioral of signal_comparator_digit_1 is

begin
	equal <= '1' when sig_1 = sig_2 else
				'0';

end Behavioral;
