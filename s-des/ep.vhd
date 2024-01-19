----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:53:18 01/19/2024 
-- Design Name: 
-- Module Name:    ep - Behavioral 
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

entity ep is
    Port ( x0 : in  STD_LOGIC;
           x1 : in  STD_LOGIC;
           x2 : in  STD_LOGIC;
           x3 : in  STD_LOGIC;
           y0 : out  STD_LOGIC;
           y1 : out  STD_LOGIC;
           y2 : out  STD_LOGIC;
           y3 : out  STD_LOGIC;
           y4 : out  STD_LOGIC;
           y5 : out  STD_LOGIC;
           y6 : out  STD_LOGIC;
           y7 : out  STD_LOGIC);
end ep;

architecture Behavioral of ep is
begin
	expand_permutation : process (x0, x1, x2, x3) is
	begin
		y0 <= x3;
		y1 <= x0;
		y2 <= x1;
		y3 <= x2;
		y4 <= x1;
		y5 <= x2;
		y6 <= x3;
		y7 <= x0;
	end process expand_permutation;



end Behavioral;

