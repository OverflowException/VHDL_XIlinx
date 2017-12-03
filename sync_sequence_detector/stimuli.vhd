-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;
  
  library unisim;
  use unisim.vcomponents.all;
  use ieee.std_logic_textio.all;
  
  library std;
  use std.textio.all;

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
  
	clk : process
	begin
		wait for 200 ns;
		loop
			stim_buttons(1) <= '1';
			wait for 20 ns;
			stim_buttons(1) <= '0';
			wait for 80 ns;
			stim_buttons(3) <= '1';
			wait for 20 ns;
			stim_buttons(3) <= '0';
			wait for 80 ns;
		end loop;
	end process clk;
	


	sd : process
	
	file log_file : text open write_mode is "log.txt";
	variable line_buffer : line;
	
	begin
		wait for 100 ns;
		loop
			write(line_buffer, "Starting Simulation");
			writeline(output, line_buffer);
		
			stim_switches(0) <= '0';
			wait for 200 ns;
			write(line_buffer, "SD = ");
			write(line_buffer, stim_switches(0));
			write(line_buffer, " state A, Q1 Q2 Q3 = ");
			write(line_buffer, stim_leds(2 downto 0));
			write(line_buffer, "   T = ");
			write(line_buffer, stim_leds(5));
			writeline(output, line_buffer);
			
			stim_switches(0) <= '1';
			wait for 200 ns;
			write(line_buffer, "SD = ");
			write(line_buffer, stim_switches(0));
			write(line_buffer, " state B, Q1 Q2 Q3 = ");
			write(line_buffer, stim_leds(2 downto 0));
			write(line_buffer, "   T = ");
			write(line_buffer, stim_leds(5));
			writeline(output, line_buffer);
			
			stim_switches(0) <= '1';
			wait for 200 ns;
			write(line_buffer, "SD = ");
			write(line_buffer, stim_switches(0));
			write(line_buffer, " state C, Q1 Q2 Q3 = ");
			write(line_buffer, stim_leds(2 downto 0));
			write(line_buffer, "   T = ");
			write(line_buffer, stim_leds(5));
			writeline(output, line_buffer);
			
			stim_switches(0) <= '0';
			wait for 200 ns;
			write(line_buffer, "SD = ");
			write(line_buffer, stim_switches(0));
			write(line_buffer, " state D, Q1 Q2 Q3 = ");
			write(line_buffer, stim_leds(2 downto 0));
			write(line_buffer, "   T = ");
			write(line_buffer, stim_leds(5));
			writeline(output, line_buffer);
			
			stim_switches(0) <= '0';
			wait for 200 ns;
			write(line_buffer, "SD = ");
			write(line_buffer, stim_switches(0));
			write(line_buffer, " state E, Q1 Q2 Q3 = ");
			write(line_buffer, stim_leds(2 downto 0));
			write(line_buffer, "   T = ");
			write(line_buffer, stim_leds(5));
			writeline(output, line_buffer);
			
			stim_switches(0) <= '1';
			wait for 200 ns;
			write(line_buffer, "SD = ");
			write(line_buffer, stim_switches(0));
			write(line_buffer, " state F, Q1 Q2 Q3 = ");
			write(line_buffer, stim_leds(2 downto 0));
			write(line_buffer, "   T = ");
			write(line_buffer, stim_leds(5));
			writeline(output, line_buffer);
			
			stim_switches(0) <= '1';
			wait for 200 ns;
			write(line_buffer, "SD = ");
			write(line_buffer, stim_switches(0));
			write(line_buffer, " state C, Q1 Q2 Q3 = ");
			write(line_buffer, stim_leds(2 downto 0));
			write(line_buffer, "   T = ");
			write(line_buffer, stim_leds(5));
			writeline(output, line_buffer);
			
			stim_switches(0) <= '1';
			wait for 200 ns;
			write(line_buffer, "SD = ");
			write(line_buffer, stim_switches(0));
			write(line_buffer, " state C, Q1 Q2 Q3 = ");
			write(line_buffer, stim_leds(2 downto 0));
			write(line_buffer, "   T = ");
			write(line_buffer, stim_leds(5));
			writeline(output, line_buffer);
			
			stim_switches(0) <= '0';
			wait for 200 ns;
			write(line_buffer, "SD = ");
			write(line_buffer, stim_switches(0));
			write(line_buffer, " state D, Q1 Q2 Q3 = ");
			write(line_buffer, stim_leds(2 downto 0));
			write(line_buffer, "   T = ");
			write(line_buffer, stim_leds(5));
			writeline(output, line_buffer);
			
			stim_switches(0) <= '1';
			wait for 200 ns;
			write(line_buffer, "SD = ");
			write(line_buffer, stim_switches(0));
			write(line_buffer, " state B, Q1 Q2 Q3 = ");
			write(line_buffer, stim_leds(2 downto 0));
			write(line_buffer, "   T = ");
			write(line_buffer, stim_leds(5));
			writeline(output, line_buffer);
			
			stim_switches(0) <= '1';
			wait for 200 ns;
			write(line_buffer, "SD = ");
			write(line_buffer, stim_switches(0));
			write(line_buffer, " state C, Q1 Q2 Q3 = ");
			write(line_buffer, stim_leds(2 downto 0));
			write(line_buffer, "   T = ");
			write(line_buffer, stim_leds(5));
			writeline(output, line_buffer);
			
			stim_switches(0) <= '0';
			wait for 200 ns;
			write(line_buffer, "SD = ");
			write(line_buffer, stim_switches(0));
			write(line_buffer, " state D, Q1 Q2 Q3 = ");
			write(line_buffer, stim_leds(2 downto 0));
			write(line_buffer, "   T = ");
			write(line_buffer, stim_leds(5));
			writeline(output, line_buffer);
			
			stim_switches(0) <= '0';
			wait for 200 ns;
			write(line_buffer, "SD = ");
			write(line_buffer, stim_switches(0));
			write(line_buffer, " state E, Q1 Q2 Q3 = ");
			write(line_buffer, stim_leds(2 downto 0));
			write(line_buffer, "   T = ");
			write(line_buffer, stim_leds(5));
			writeline(output, line_buffer);
			
			stim_switches(0) <= '1';
			wait for 200 ns;
			write(line_buffer, "SD = ");
			write(line_buffer, stim_switches(0));
			write(line_buffer, " state F, Q1 Q2 Q3 = ");
			write(line_buffer, stim_leds(2 downto 0));
			write(line_buffer, "   T = ");
			write(line_buffer, stim_leds(5));
			writeline(output, line_buffer);
		
			stim_switches(0) <= '0';
			wait for 200 ns;
			write(line_buffer, "SD = ");
			write(line_buffer, stim_switches(0));
			write(line_buffer, " state A, Q1 Q2 Q3 = ");
			write(line_buffer, stim_leds(2 downto 0));
			write(line_buffer, "   T = ");
			write(line_buffer, stim_leds(5));
			writeline(output, line_buffer);
			
			stim_switches(0) <= '1';
			wait for 200 ns;
			write(line_buffer, "SD = ");
			write(line_buffer, stim_switches(0));
			write(line_buffer, " state B, Q1 Q2 Q3 = ");
			write(line_buffer, stim_leds(2 downto 0));
			write(line_buffer, "   T = ");
			write(line_buffer, stim_leds(5));
			writeline(output, line_buffer);
			
			stim_switches(0) <= '1';
			wait for 200 ns;
			write(line_buffer, "SD = ");
			write(line_buffer, stim_switches(0));
			write(line_buffer, " state C, Q1 Q2 Q3 = ");
			write(line_buffer, stim_leds(2 downto 0));
			write(line_buffer, "   T = ");
			write(line_buffer, stim_leds(5));
			writeline(output, line_buffer);
			
			stim_switches(0) <= '0';
			wait for 200 ns;
			write(line_buffer, "SD = ");
			write(line_buffer, stim_switches(0));
			write(line_buffer, " state D, Q1 Q2 Q3 = ");
			write(line_buffer, stim_leds(2 downto 0));
			write(line_buffer, "   T = ");
			write(line_buffer, stim_leds(5));
			writeline(output, line_buffer);
			
			stim_switches(0) <= '0';
			wait for 200 ns;
			write(line_buffer, "SD = ");
			write(line_buffer, stim_switches(0));
			write(line_buffer, " state E, Q1 Q2 Q3 = ");
			write(line_buffer, stim_leds(2 downto 0));
			write(line_buffer, "   T = ");
			write(line_buffer, stim_leds(5));
			writeline(output, line_buffer);
		
			stim_switches(0) <= '0';
			wait for 200 ns;
			write(line_buffer, "SD = ");
			write(line_buffer, stim_switches(0));
			write(line_buffer, " state A, Q1 Q2 Q3 = ");
			write(line_buffer, stim_leds(2 downto 0));
			write(line_buffer, "   T = ");
			write(line_buffer, stim_leds(5));
			writeline(output, line_buffer);
			
		end loop;
	end process sd;
--		  clk_set : loop
--			stim_buttons(1) <= '1';
--			wait for 1 ns;
--			stim_buttons(1) <= '0';
--			wait for 9 ns;
--		  end loop;
	  
--	  clk_reset £º process
--	  begin
--	  end process clk_reset;
  --  End Test Bench 

  end;
