--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:52:51 01/18/2024
-- Design Name:   
-- Module Name:   /home/slaventy/projects/crc/top_tb.vhd
-- Project Name:  crc
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: top
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
 
ENTITY top_tb IS
END top_tb;
 
ARCHITECTURE behavior OF top_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT top
    PORT(
         clk : IN  std_logic;
         data_in : IN  std_logic_vector(15 downto 0);
         file_descriptor : IN  std_logic_vector(5 downto 0);
         mode : IN  std_logic;
         is_equal : OUT  std_logic;
         result_out : OUT  std_logic_vector(0 to 3);
         ram_data_out : OUT  std_logic_vector(0 to 3)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal data_in : std_logic_vector(15 downto 0) := (others => '0');
   signal file_descriptor : std_logic_vector(5 downto 0) := (others => '0');
   signal mode : std_logic := '0';

 	--Outputs
   signal is_equal : std_logic;
   signal result_out : std_logic_vector(0 to 3);
   signal ram_data_out : std_logic_vector(0 to 3);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top PORT MAP (
          clk => clk,
          data_in => data_in,
          file_descriptor => file_descriptor,
          mode => mode,
          is_equal => is_equal,
          result_out => result_out,
          ram_data_out => ram_data_out
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
      data_in <= "1111111111111111"; 
		file_descriptor <= "000001";
		wait for clk_period;
		mode <= '0';--read mode
		wait for clk_period;--ram read
		wait for clk_period;--compare
		
		--write in ram
		
		data_in <= "1010101010101010";
		file_descriptor <= "000001";
		wait for clk_period;
		mode <= '1';--write mode
		wait for clk_period;--ram write
		mode <= '0';
		wait for clk_period;--compare
      

      wait;
   end process;

END;
