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





entity led_4_display_tkr is port
(	
	enable : in std_logic_vector(3 downto 0);
	clk : in std_logic;
	full_number : in std_logic_vector(15 downto 0);
	flash_digit : in std_logic_vector(3 downto 0);
	digit_select : out std_logic_vector(3 downto 0);
	seg : out std_logic_vector(7 downto 0)
);
end led_4_display_tkr;

architecture Behavioral of led_4_display_tkr is
	--4 types of finite state machine
	--type state_type is (st_0, st_1, st_2, st_3);
	--signal state: state_type;
	
	signal single_number : std_logic_vector(3 downto 0);
	signal inverted_digit_select : std_logic_vector(3 downto 0);
	signal display_clk : std_logic := '0';	--Will be 100hz
	signal flash_clk : std_logic := '0';	--Will be 2hz
	signal flash_clk_vector : std_logic_vector(3 downto 0);
	signal flash_mask : std_logic_vector(3 downto 0);

	component display_tkr port
	(
		number : in std_logic_vector(3 downto 0);          
		segs : out std_logic_vector(7 downto 0)
	);
	end component;
	
	component bit4_cycle_generator port
	(
		reset : in std_logic;
		in_clk : in std_logic;          
		out_cycle : out std_logic_vector(3 downto 0)
	);
	end component;
	
	component pulse_generator_100hz port
	(
		in_clk : in std_logic;
		out_clk : out std_logic
	);
	end component;

	component pulse_generator_2hz port
	(
		in_clk : in std_logic;
		out_clk : out std_logic
	);
	end component;
	
begin
	
	--A 100 hz pulse generator.
	inst_pulse_generator_100hz : pulse_generator_100hz port map
	(
		in_clk => clk,
		out_clk => display_clk
	);

	--A cycle generator. To make certain digits flash.
	inst_pulse_generator_2hz : pulse_generator_2hz port map
	(
		in_clk => clk,
		out_clk => flash_clk
	);

	--A single display driver
	inst_display_tkr: display_tkr port map
	(
		number => single_number,
		segs => seg
	);
	
	--A cycle generator. To light up digits in turns. Its clock is generated by the 100hz pulse generator
	inst_bit4_cycle_generator: bit4_cycle_generator port map
	(
		reset => '0',
		in_clk => display_clk,
		out_cycle => inverted_digit_select
	);
	
	
	with inverted_digit_select select 
		single_number <= full_number(3 downto 0) when "0001",
						full_number(7 downto 4) when "0010",
						full_number(11 downto 8) when "0100",
						full_number(15 downto 12) when "1000",
						"0000" when others;
	
	--It is ok to exclude flash_digit from the sensitivity list in this case.
	--Since it is not important for the digit to start flashing 0.25s earlier or later.
	generate_flash_mask : process (flash_clk, flash_digit) 
	variable flash_mask_tmp : std_logic_vector(3 downto 0);
	begin
		--Do not put 
		--		flash_mask <= (others => flash_clk);.
		--		flash_mask <= flash_mask or(not flash_digit);
		--Or flash_mask will cause a combinational loop to occur when synthesizing. 
		--Use a variable instead, as demonstrated below.
		flash_mask_tmp := (others => flash_clk);  
		flash_mask <= flash_mask_tmp or (not flash_digit);
	end process;
	
	digit_select <= not (inverted_digit_select and enable and flash_mask);
	
	
end Behavioral;

