----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:27:39 12/02/2017 
-- Design Name: 
-- Module Name:    counter_10 - Behavioral 
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
use IEEE.NUMERIC_STD.all;
use IEEE.STD_LOGIC_MISC.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter_10 is port 
( 
	clk : in std_logic;
	enable : in  std_logic;
   set : in  std_logic;
	set_value : in std_logic_vector(3 downto 0);
   inc : in  std_logic;
	dec : in  std_logic;
   value : out  std_logic_vector(3 downto 0)
);
end counter_10;

architecture Behavioral of counter_10 is
	signal value_buf : std_logic_vector(3 downto 0) := "0000";
	signal cmd_prev : std_logic_vector(1 downto 0);
	signal cmd_curr : std_logic_vector(1 downto 0);
begin
	value <= value_buf;
	
	cmd_curr <= (inc, dec);
	
	process(set, clk, enable)
	begin
		if((set and enable) = '1') then	     ---async force set, do not set any value other than 0-9
			value_buf <= set_value;
			
		elsif	(rising_edge(clk) and enable = '1') then	---this implementation will ignore the situation where inc and dec are pressed simutaneously
			cmd_prev <= cmd_curr;
			if(cmd_prev = "00" and cmd_curr = "01" and value_buf /= "0000") then	---dec pressed, check range
				value_buf <= value_buf - 1;
			elsif(cmd_prev = "00" and cmd_curr = "10" and value_buf /= "1001") then	---inc pressed, check range
				value_buf <= value_buf + 1;
				if(value_buf = "1001") then						
					value_buf <= "0000";
				end if;
			end if;
		end if;
		
	end process;
	
	--value_buf <= "0000" when value_buf = "1010" else	---out of range
	--				 "1001" when value_buf = "1111";  

end architecture Behavioral;

