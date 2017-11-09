----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:59:04 11/08/2017 
-- Design Name: 
-- Module Name:    led_4_display - Behavioral 
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





entity led_4_display is
	port(	d_clk: in std_logic;
			full_number: in std_logic_vector(15 downto 0);
			digit_select: out std_logic_vector(3 downto 0);
			seg: out std_logic_vector(7 downto 0));
end led_4_display;

architecture Behavioral of led_4_display is
	--4 types of finite state machine
	type state_type is (st_0, st_1, st_2, st_3);
	signal state: state_type;
	
	signal single_number: std_logic_vector(3 downto 0);

	--single display driver component
	COMPONENT display
	PORT(
		number : IN std_logic_vector(3 downto 0);          
		segs : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	
begin

	single_display: display port map(
	number => single_number,
	segs => seg
	);

	process(d_clk)
	begin
		if rising_edge(d_clk) then
			case state is
				when st_0 => state <= st_1;
				when st_1 => state <= st_2;
				when st_2 => state <= st_3;
				when st_3 => state <= st_0;
				when others => state <= st_0;
			end case;
		end if;
	end process;


	with state select 
	digit_select <= "1110" when st_0,
						"1101" when st_1,
						"1011" when st_2,
						"0111" when st_3;
	
	with state select 
		single_number <= full_number(3 downto 0) when st_0,
						full_number(7 downto 4) when st_1,
						full_number(11 downto 8) when st_2,
						full_number(15 downto 12) when st_3;
	

	
	
end Behavioral;

