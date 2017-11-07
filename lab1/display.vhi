
-- VHDL Instantiation Created from source file display.vhd -- 12:35:15 11/07/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT display
	PORT(
		number : IN std_logic_vector(3 downto 0);          
		segs : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_display: display PORT MAP(
		number => ,
		segs => 
	);


