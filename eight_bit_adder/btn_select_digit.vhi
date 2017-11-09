
-- VHDL Instantiation Created from source file btn_select_digit.vhd -- 11:53:54 11/08/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT btn_select_digit
	PORT(
		btn : IN std_logic_vector(4 downto 0);
		p : IN std_logic_vector(7 downto 0);          
		p_selected : OUT std_logic_vector(3 downto 0);
		d_select : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_btn_select_digit: btn_select_digit PORT MAP(
		btn => ,
		p => ,
		p_selected => ,
		d_select => 
	);


