----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:40:37 01/19/2024 
-- Design Name: 
-- Module Name:    ititial_perm - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ititial_perm is
    Port ( x0 : in  STD_LOGIC;
           x1 : in  STD_LOGIC;
           x2 : in  STD_LOGIC;
           x3 : in  STD_LOGIC;
           x4 : in  STD_LOGIC;
           x5 : in  STD_LOGIC;
           x6 : in  STD_LOGIC;
           x7 : in  STD_LOGIC;
           y0 : out  STD_LOGIC;
           y1 : out  STD_LOGIC;
           y2 : out  STD_LOGIC;
           y3 : out  STD_LOGIC;
           y4 : out  STD_LOGIC;
           y5 : out  STD_LOGIC;
           y6 : out  STD_LOGIC;
           y7 : out  STD_LOGIC);
end ititial_perm;

architecture Behavioral of ititial_perm is

begin
	process (x0, x1,x2, x3, x4, x5, x6, x7) is
	begin
		y0 <= x1;
		y1 <= x5;
		y2 <= x2;
		y3 <= x0;
		y4 <= x3;
		y5 <= x7;
		y6 <= x4;
		y7 <= x6;
	end process;
end Behavioral;

