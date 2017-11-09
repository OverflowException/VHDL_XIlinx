
-- VHDL Instantiation Created from source file led_4_display.vhd -- 10:36:40 11/09/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT led_4_display
	PORT(
		d_clk : IN std_logic;
		full_number : IN std_logic_vector(15 downto 0);          
		digit_select : OUT std_logic_vector(3 downto 0);
		seg : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_led_4_display: led_4_display PORT MAP(
		d_clk => ,
		full_number => ,
		digit_select => ,
		seg => 
	);


