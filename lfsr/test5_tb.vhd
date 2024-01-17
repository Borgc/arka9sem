-- Vhdl test bench created from schematic /home/slaventy/projects/lfsr/lfsr_sch.sch - Wed Jan 17 17:49:28 2024
--
-- Notes: 
-- 1) This testbench template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the unit under test.
-- Xilinx recommends that these types always be used for the top-level
-- I/O of a design in order to guarantee that the testbench will bind
-- correctly to the timing (post-route) simulation model.
-- 2) To use this template as your testbench, change the filename to any
-- name of your choice with the extension .vhd, and use the "Source->Add"
-- menu in Project Navigator to import the testbench. Then
-- edit the user defined section below, adding code to generate the 
-- stimulus for your design.
--
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;
ENTITY lfsr_sch_lfsr_sch_sch_tb IS
END lfsr_sch_lfsr_sch_sch_tb;
ARCHITECTURE behavioral OF lfsr_sch_lfsr_sch_sch_tb IS 

   COMPONENT lfsr_sch
   PORT(  ciphertext	:	OUT	STD_LOGIC; 
          init	:	IN	STD_LOGIC; 
          choice	:	IN	STD_LOGIC; 
          clk	:	IN	STD_LOGIC; 
          clk_enable	:	IN	STD_LOGIC; 
          reser	:	IN	STD_LOGIC; 
          plaintext	:	IN	STD_LOGIC);
   END COMPONENT;

   SIGNAL ciphertext	:	STD_LOGIC;
   SIGNAL init	:	STD_LOGIC;
   SIGNAL choice	:	STD_LOGIC := '1';
   SIGNAL clk	:	STD_LOGIC := '1';
   SIGNAL clk_enable	:	STD_LOGIC := '0';
   SIGNAL reser	:	STD_LOGIC := '1';
   SIGNAL plaintext	:	STD_LOGIC;
	constant clk_period : time := 10 ns;
   constant init_vec : std_logic_vector (0 to 3) := "1010";
   constant plaintext_data : std_logic_vector (0 to 7) := "00000000";
BEGIN

   UUT: lfsr_sch PORT MAP(
		ciphertext => ciphertext, 
		init => init, 
		choice => choice, 
		clk => clk, 
		clk_enable => clk_enable, 
		reser => reser, 
		plaintext => plaintext
   );

-- *** Test Bench - User Defined Section ***
   clk_proc: process
   begin
      wait for clk_period;
      clk <= not clk;
   end process;

   process is
   begin
		wait for clk_period * 2;
		reser <= '0';
		wait for clk_period * 10;
		clk_enable <= '1';
      choice <= '1';
      for i in 0 to 3 loop
         init <= init_vec(i);
         wait for clk_period * 2;
      end loop;
      
      choice <= '0';
      for i in 0 to 7 loop
         plaintext <= plaintext_data(i);
         wait for clk_period * 2;
      end loop;
      wait;
		end process;
-- *** End Test Bench - User Defined Section ***

END;
