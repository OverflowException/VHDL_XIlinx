
-- VHDL Instantiation Created from source file pulse_counter.vhd -- 15:19:58 11/09/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT pulse_counter
	PORT(
		inclk : IN std_logic;          
		count : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_pulse_counter: pulse_counter PORT MAP(
		inclk => ,
		count => 
	);


