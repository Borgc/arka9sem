----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:30:16 01/19/2024 
-- Design Name: 
-- Module Name:    ff - Behavioral 
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

entity ff is
    Port ( x0 : in  STD_LOGIC;
           x1 : in  STD_LOGIC;
           x2 : in  STD_LOGIC;
           x3 : in  STD_LOGIC;
           y0 : out  STD_LOGIC;
           y1 : out  STD_LOGIC;
           y2 : out  STD_LOGIC;
           y3 : out  STD_LOGIC);
end ff;

architecture Behavioral of ff is
	variable ep_out : std_logic_vector (0 to 7);--expanded permitation out
	type s_block_type is array (0 to 3, 0 to 3) of std_logic_vector (0 to 1);
	signal s1 : s_block_type;
	signal row : std_logic_vector (0 to 1);
	signal column : std_logic_vector (0 to 1);

begin
	
		s1(0, 0) <= "01";
		s1(0, 1) <= "00";
		s1(0, 2) <= "11";
		s1(0, 3) <= "10";
		
		s1(1, 0) <= "11";
		s1(1, 1) <= "10";
		s1(1, 2) <= "01";
		s1(1, 3) <= "00";
		
		s1(2, 0) <= "00";
		s1(2, 1) <= "10";
		s1(2, 2) <= "01";
		s1(2, 3) <= "11";
		
		s1(3, 0) <= "11";
		s1(3, 1) <= "01";
		s1(3, 2) <= "11";
		s1(3, 3) <= "10";
		
		
	end process;

end Behavioral;

