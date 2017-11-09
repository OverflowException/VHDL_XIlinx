--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   08:28:23 11/09/2017
-- Design Name:   
-- Module Name:   E:/projects/VHDL_XIlinx/led_4_display/full_displa_tb.vhd
-- Project Name:  led_4_display
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: led_4_display
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY full_displa_tb IS
END full_displa_tb;
 
ARCHITECTURE behavior OF full_displa_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT led_4_display
    PORT(
         full_number : IN  std_logic_vector(15 downto 0);
         digit_select : OUT  std_logic_vector(3 downto 0);
         seg : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal full_number : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal digit_select : std_logic_vector(3 downto 0);
   signal seg : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: led_4_display PORT MAP (
          full_number => full_number,
          digit_select => digit_select,
          seg => seg
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ms;	

      wait for <clock>_period*10;

      -- insert stimulus here 
		full_number <= "0000000000000000";
		wait for 1000 ms;
		
      wait;
   end process;

END;
