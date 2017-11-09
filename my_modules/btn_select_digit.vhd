----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:02:48 11/08/2017 
-- Design Name: 
-- Module Name:    btn_select_digit - Behavioral 
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

entity btn_select_digit is
	port( btn: in std_logic_vector(4 downto 0);
			p: in std_logic_vector(7 downto 0);
			p_selected: out std_logic_vector(3 downto 0);
			d_select: out std_logic_vector(3 downto 0));
end btn_select_digit;

architecture Behavioral of btn_select_digit is
begin

		with btn select
			d_select(3 downto 0) <= "1110" when "00001",
			"1101" when "00010",
			"1111" when others;
			
		with btn select
			p_selected(3 downto 0) <= p(3 downto 0) when "00001",
			p(7 downto 4) when "00010",
			"0000" when others;

end Behavioral;

