--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:01:15 01/14/2024
-- Design Name:   
-- Module Name:   /home/slaventy/projects/des_box/des_box_tb.vhd
-- Project Name:  des_box
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: des_box
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
 
ENTITY des_box_tb IS
END des_box_tb;
 
ARCHITECTURE behavior OF des_box_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT des_box
    PORT(
         c : IN  std_logic;
         x1 : IN  std_logic;
         x2 : IN  std_logic;
         y1 : OUT  std_logic;
         y2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal c : std_logic := '0';
   signal x1 : std_logic := '0';
   signal x2 : std_logic := '0';

 	--Outputs
   signal y1 : std_logic;
   signal y2 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: des_box PORT MAP (
          c => c,
          x1 => x1,
          x2 => x2,
          y1 => y1,
          y2 => y2
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 50 ns;	
		c <= '0'; x1 <= '0'; x2 <= '1';
		wait for 50 ns;
		c <= '0'; x1 <= '1'; x2 <= '0';
		wait for 50 ns;
		c <= '0'; x1 <= '1'; x2 <= '1';
		wait for 50 ns;
		c <= '1'; x1 <= '0'; x2 <= '0';
		wait for 50 ns;
		c <= '1'; x1 <= '0'; x2 <= '1';
		wait for 50 ns;
		c <= '1'; x1 <= '1'; x2 <= '0';
		wait for 50 ns;
		c <= '1'; x1 <= '1'; x2 <= '1';
		wait for 50 ns;
      

      -- insert stimulus here 

      wait;
   end process;

END;
