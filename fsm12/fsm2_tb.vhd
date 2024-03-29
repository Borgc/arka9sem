--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:48:26 01/18/2024
-- Design Name:   
-- Module Name:   /home/slaventy/projects/fsm/fsm2_tb.vhd
-- Project Name:  fsm
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: fsm2
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
 
ENTITY fsm2_tb IS
END fsm2_tb;
 
ARCHITECTURE behavior OF fsm2_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT fsm2
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         plain : IN  std_logic;
         k : IN  std_logic;
         crypt : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal plain : std_logic := '0';
   signal k : std_logic := '0';

 	--Outputs
   signal crypt : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: fsm2 PORT MAP (
          clk => clk,
          reset => reset,
          plain => plain,
          k => k,
          crypt => crypt
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      reset <= '1';
		k <= '0';
		wait for clk_period/2;
		reset <= '0';
		plain <='0';
		wait for clk_period*10;
		k <= '1';

      -- insert stimulus here 

      wait;
   end process;

END;
