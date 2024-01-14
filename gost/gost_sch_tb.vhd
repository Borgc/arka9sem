-- Vhdl test bench created from schematic /home/slaventy/projects/gost/gost_box_sch.sch - Sun Jan 14 19:30:59 2024
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
ENTITY gost_box_sch_gost_box_sch_sch_tb IS
END gost_box_sch_gost_box_sch_sch_tb;
ARCHITECTURE behavioral OF gost_box_sch_gost_box_sch_sch_tb IS 

   COMPONENT gost_box_sch
   PORT( x0	:	IN	STD_LOGIC; 
          x1	:	IN	STD_LOGIC; 
          x2	:	IN	STD_LOGIC; 
          y1	:	OUT	STD_LOGIC; 
          y0	:	OUT	STD_LOGIC; 
          y2	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL x0	:	STD_LOGIC;
   SIGNAL x1	:	STD_LOGIC;
   SIGNAL x2	:	STD_LOGIC;
   SIGNAL y1	:	STD_LOGIC;
   SIGNAL y0	:	STD_LOGIC;
   SIGNAL y2	:	STD_LOGIC;

BEGIN

   UUT: gost_box_sch PORT MAP(
		x0 => x0, 
		x1 => x1, 
		x2 => x2, 
		y1 => y1, 
		y0 => y0, 
		y2 => y2
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
      x0 <= '0'; x1 <= '0'; x2 <= '0';
		wait for 20 ns;
      x0 <= '0'; x1 <= '0'; x2 <= '1';
		wait for 20 ns;
      x0 <= '0'; x1 <= '1'; x2 <= '0';
		wait for 20 ns;
      x0 <= '0'; x1 <= '1'; x2 <= '1';
		wait for 20 ns;
      x0 <= '1'; x1 <= '0'; x2 <= '0';
		wait for 20 ns;
      x0 <= '1'; x1 <= '0'; x2 <= '1';
		wait for 20 ns;
      x0 <= '1'; x1 <= '1'; x2 <= '0';
		wait for 20 ns;
      x0 <= '1'; x1 <= '1'; x2 <= '1';
		wait for 20 ns;
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
