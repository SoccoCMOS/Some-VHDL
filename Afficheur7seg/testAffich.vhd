--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:57:24 03/03/2016
-- Design Name:   
-- Module Name:   D:/BENSI/Afficheur7seg/testAffich.vhd
-- Project Name:  Afficheur7seg
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: afficheur
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
 
ENTITY testAffich IS
END testAffich;
 
ARCHITECTURE behavior OF testAffich IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT afficheur
    PORT(
         data : IN  std_logic_vector(3 downto 0);
         affich : OUT  std_logic_vector(6 downto 0);
         an : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal data : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal affich : std_logic_vector(6 downto 0);
   signal an : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: afficheur PORT MAP (
          data => data,
          affich => affich,
          an => an
        );

--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		data <="0000";
		wait for 100 ns;
		data <= "0001";

      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
