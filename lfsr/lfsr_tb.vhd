--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:25:45 01/15/2024
-- Design Name:   
-- Module Name:   /home/slaventy/projects/lfsr/lfsr_tb.vhd
-- Project Name:  lfsr
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lfsr
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
 
ENTITY lfsr_tb IS
END lfsr_tb;
 
ARCHITECTURE behavior OF lfsr_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lfsr
    PORT(
         init : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
         data_in : IN  std_logic;
         choice : IN  std_logic;
         data_out : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal init : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal data_in : std_logic := '0';
   signal choice : std_logic := '0';

 	--Outputs
   signal data_out : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
	constant init_vec : std_logic_vector (0 to 2) := "101";
	constant plaintext : std_logic_vector (0 to 7) := "10101010";

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lfsr PORT MAP (
          init => init,
          clk => clk,
          reset => reset,
          data_in => data_in,
          choice => choice,
          data_out => data_out
        );

   -- Clock process definitions
	 clk_process :process
   begin
  clk <= not clk;
  wait for clk_period/2;
   end process;
 

   data_proc: process
   begin
      choice <= '0';
      for i in 0 to 2 loop
         init <= init_vec(i);
         wait for clk_period;
      end loop;
      
      choice <= '1';
      for i in 0 to 7 loop
         data_in <= plaintext(i);
         wait for clk_period;
      end loop;
      wait;
   end process;

   -- Stimulus process
 

END;
