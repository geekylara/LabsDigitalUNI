--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:27:01 05/03/2023
-- Design Name:   
-- Module Name:   C:/Users/user1/Documents/Nueva carpeta/Adder4bLogic/Adder4bLogig_tb.vhd
-- Project Name:  Adder4bLogic
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Adder4bLogic
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
 
ENTITY Adder4bLogig_tb IS
END Adder4bLogig_tb;
 
ARCHITECTURE behavior OF Adder4bLogig_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Adder4bLogic
    PORT(
         A1 : IN  std_logic_vector(3 downto 0);
         B1 : IN  std_logic_vector(3 downto 0);
         CIN1 : IN  std_logic;
         COUT1 : OUT  std_logic;
         S1 : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal A1 : std_logic_vector(3 downto 0) := (others => '0');
   signal B1 : std_logic_vector(3 downto 0) := (others => '0');
   signal CIN1 : std_logic := '0';

 	--Outputs
   signal COUT1 : std_logic;
   signal S1 : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  -- constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Adder4bLogic PORT MAP (
          A1 => A1,
          B1 => B1,
          CIN1 => CIN1,
          COUT1 => COUT1,
          S1 => S1
        );

   -- Clock process definitions
  -- <clock>_process :process
  -- begin
	--	<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
  -- end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      --wait for <clock>_period*10;

		-- insert stimulus here 
				A1 <= x"D";
				B1 <= x"4";
				wait for 100 ns;
				A1 <= x"5";
				B1 <= x"2";
				wait for 100 ns;
				A1 <= x"F";
				B1 <= x"5";
				wait for 100 ns;
				A1 <= x"F";
				B1 <= x"A";
				wait for 100 ns;
		wait;
   end process;

END;
