----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:21:25 11/12/2017 
-- Design Name: 
-- Module Name:    d_latch_bit_4 - Behavioral 
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

--Do not connect buttons or switches to enable.
--Switches and buttons do not have enough driving power. Doing so will cause a global timing error.
entity d_latch_bit_4 is port 
( 
	enable : in  std_logic;
   d : in  std_logic_vector(3 downto 0);
   q : out  std_logic_vector (3 downto 0)
);
end d_latch_bit_4;

architecture Behavioral of d_latch_bit_4 is
	component d_latch_bit_1 port
	(
		enable : in std_logic;
		d : in std_logic;
		q : out std_logic
	);
	end component;
begin
	gen_d_latch_bit_4 : for i in 3 downto 0 generate
	inst_d_latch_bit_1 : d_latch_bit_1 port map
	(
		enable => enable,
		d => d(i),
		q => q(i)
	);
	end generate gen_d_latch_bit_4;
	
end Behavioral;

