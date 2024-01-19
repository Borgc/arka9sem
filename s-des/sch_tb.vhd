-- Vhdl test bench created from schematic /home/slaventy/projects/s_des/des_sch.sch - Fri Jan 19 17:53:56 2024
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
ENTITY des_sch_des_sch_sch_tb IS
END des_sch_des_sch_sch_tb;
ARCHITECTURE behavioral OF des_sch_des_sch_sch_tb IS 

   COMPONENT des_sch
   PORT( x0	:	IN	STD_LOGIC; 
          x1	:	IN	STD_LOGIC; 
          x2	:	IN	STD_LOGIC; 
          x3	:	IN	STD_LOGIC; 
          x4	:	IN	STD_LOGIC; 
          x5	:	IN	STD_LOGIC; 
          x6	:	IN	STD_LOGIC; 
          x7	:	IN	STD_LOGIC; 
          k0	:	IN	STD_LOGIC; 
          k1	:	IN	STD_LOGIC; 
          k2	:	IN	STD_LOGIC; 
          k3	:	IN	STD_LOGIC; 
          k4	:	IN	STD_LOGIC; 
          k5	:	IN	STD_LOGIC; 
          k6	:	IN	STD_LOGIC; 
          k7	:	IN	STD_LOGIC; 
          k8	:	IN	STD_LOGIC; 
          k9	:	IN	STD_LOGIC; 
          k10	:	IN	STD_LOGIC; 
          k11	:	IN	STD_LOGIC; 
          k12	:	IN	STD_LOGIC; 
          k13	:	IN	STD_LOGIC; 
          k14	:	IN	STD_LOGIC; 
          k15	:	IN	STD_LOGIC; 
          c0	:	OUT	STD_LOGIC; 
          c1	:	OUT	STD_LOGIC; 
          c2	:	OUT	STD_LOGIC; 
          c3	:	OUT	STD_LOGIC; 
          c4	:	OUT	STD_LOGIC; 
          c5	:	OUT	STD_LOGIC; 
          c6	:	OUT	STD_LOGIC; 
          c7	:	OUT	STD_LOGIC);
   END COMPONENT;

   SIGNAL x0	:	STD_LOGIC;
   SIGNAL x1	:	STD_LOGIC;
   SIGNAL x2	:	STD_LOGIC;
   SIGNAL x3	:	STD_LOGIC;
   SIGNAL x4	:	STD_LOGIC;
   SIGNAL x5	:	STD_LOGIC;
   SIGNAL x6	:	STD_LOGIC;
   SIGNAL x7	:	STD_LOGIC;
   SIGNAL k0	:	STD_LOGIC;
   SIGNAL k1	:	STD_LOGIC;
   SIGNAL k2	:	STD_LOGIC;
   SIGNAL k3	:	STD_LOGIC;
   SIGNAL k4	:	STD_LOGIC;
   SIGNAL k5	:	STD_LOGIC;
   SIGNAL k6	:	STD_LOGIC;
   SIGNAL k7	:	STD_LOGIC;
   SIGNAL k8	:	STD_LOGIC;
   SIGNAL k9	:	STD_LOGIC;
   SIGNAL k10	:	STD_LOGIC;
   SIGNAL k11	:	STD_LOGIC;
   SIGNAL k12	:	STD_LOGIC;
   SIGNAL k13	:	STD_LOGIC;
   SIGNAL k14	:	STD_LOGIC;
   SIGNAL k15	:	STD_LOGIC;
   SIGNAL c0	:	STD_LOGIC;
   SIGNAL c1	:	STD_LOGIC;
   SIGNAL c2	:	STD_LOGIC;
   SIGNAL c3	:	STD_LOGIC;
   SIGNAL c4	:	STD_LOGIC;
   SIGNAL c5	:	STD_LOGIC;
   SIGNAL c6	:	STD_LOGIC;
   SIGNAL c7	:	STD_LOGIC;

BEGIN

   UUT: des_sch PORT MAP(
		x0 => x0, 
		x1 => x1, 
		x2 => x2, 
		x3 => x3, 
		x4 => x4, 
		x5 => x5, 
		x6 => x6, 
		x7 => x7, 
		k0 => k0, 
		k1 => k1, 
		k2 => k2, 
		k3 => k3, 
		k4 => k4, 
		k5 => k5, 
		k6 => k6, 
		k7 => k7, 
		k8 => k8, 
		k9 => k9, 
		k10 => k10, 
		k11 => k11, 
		k12 => k12, 
		k13 => k13, 
		k14 => k14, 
		k15 => k15, 
		c0 => c0, 
		c1 => c1, 
		c2 => c2, 
		c3 => c3, 
		c4 => c4, 
		c5 => c5, 
		c6 => c6, 
		c7 => c7
   );

-- *** Test Bench - User Defined Section ***
   tb : PROCESS
   BEGIN
	x0 <= '1';
	x1 <= '1';
	x2 <= '1';
	x3 <= '1';
	x4 <= '0';
	x5 <= '0';
	x6 <= '1';
	x7 <= '0';
	
	k0 <= '1';
	k1 <= '0';
	k2 <= '1';
	k3 <= '1';
	k4 <= '1';
	k5 <= '1';
	k6 <= '0';
	k7 <= '0';
	
	k8 <= '1';
	k9 <= '1';
	k10 <= '0';
	k11 <= '1';
	k12 <= '0';
	k13 <= '0';
	k14 <= '1';
	k15 <= '1';
      WAIT; -- will wait forever
   END PROCESS;
-- *** End Test Bench - User Defined Section ***

END;
