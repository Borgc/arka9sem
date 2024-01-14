-- Vhdl test bench created from schematic /home/slaventy/projects/des_box/des_scheme.sch - Sun Jan 14 16:13:23 2024
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
ENTITY des_scheme_des_scheme_sch_tb IS
END des_scheme_des_scheme_sch_tb;
ARCHITECTURE behavioral OF des_scheme_des_scheme_sch_tb IS 

   COMPONENT des_scheme
   PORT( c	:	IN	STD_LOGIC; 
          x1	:	IN	STD_LOGIC; 
          x2	:	IN	STD_LOGIC; 
          y1	:	OUT	STD_LOGIC; 
          y2	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL c	:	STD_LOGIC;
   SIGNAL x1	:	STD_LOGIC;
   SIGNAL x2	:	STD_LOGIC;
   SIGNAL y1	:	STD_LOGIC;
   SIGNAL y2	:	STD_LOGIC;

BEGIN

   UUT: des_scheme PORT MAP(
		c => c, 
		x1 => x1, 
		x2 => x2, 
		y1 => y1, 
		y2 => y2
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
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
		wait for 50 ns;   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
