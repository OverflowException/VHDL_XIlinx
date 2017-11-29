-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          component nx3_top port
			 (
                  buttons : in std_logic_vector(4 downto 0);
                  switches : in std_logic_vector(7 downto 0);       
                  leds : out std_logic_vector(7 downto 0)
           );
          end component;

          signal stim_buttons :  std_logic_vector(4 downto 0) := (others => '0');
          signal stim_switches :  std_logic_vector(7 downto 0) := (others => '0');
          signal stim_leds : std_logic_vector(7 downto 0);

  begin

  -- Component Instantiation
          init: nx3_top port map
			 (
                  buttons => stim_buttons,
                  switches => stim_switches,
						leds => stim_leds
          );


  --  Test Bench Statements
  
	  --Global set/reset?
	clk_set : process
	begin
		wait for 10 ms;
		loop
			stim_buttons(1) <= '1';
			wait for 1 ms;
			stim_buttons(1) <= '0';
			wait for 9 ms;
		end loop;
	end process clk_set;
	  
	clk_reset : process
	begin
		wait for 5 ms;
		stim_buttons(3) <= '1';
		wait for 1 ms;
		stim_buttons(3) <= '0';
		wait for 4 ms;
	end process clk_reset;
	

	sd : process
	begin
		wait for 5 ms;
		stim_switches(0) <= '1';
		wait for 10 ms;
		stim_switches(0) <= '1';
		wait for 10 ms;
		stim_switches(0) <= '0';
		wait for 10 ms;
		stim_switches(0) <= '0';
		wait for 10 ms;
		stim_switches(0) <= '1';
		wait for 10 ms;
		stim_switches(0) <= '1';
		wait for 10 ms;
		stim_switches(0) <= '0';
		wait for 10 ms;
		stim_switches(0) <= '0';
		wait for 10 ms;
		stim_switches(0) <= '1';
		wait for 10 ms;
		stim_switches(0) <= '1';
		wait for 10 ms;
		stim_switches(0) <= '1';
		wait for 10 ms;
		stim_switches(0) <= '1';
		wait for 10 ms;
		stim_switches(0) <= '0';
		wait for 10 ms;
		stim_switches(0) <= '0';
		wait for 10 ms;
		stim_switches(0) <= '1';
		wait for 10 ms;
		stim_switches(0) <= '0';
		wait for 10 ms;
		
	end process sd;
--		  clk_set : loop
--			stim_buttons(1) <= '1';
--			wait for 1 ms;
--			stim_buttons(1) <= '0';
--			wait for 9 ms;
--		  end loop;
	  
--	  clk_reset £º process
--	  begin
--	  end process clk_reset;
  --  End Test Bench 

  end;
