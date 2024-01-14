----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:45:05 01/14/2024 
-- Design Name: 
-- Module Name:    des_box - Behavioral 
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
--|c| x| y|	y1:| | |*|*| min: y1 = !c&x2 or c&!x1 or !x1&x2
--|0|00|01|	   |*| | |*|
--|0|01|10| y2:|*| |*| | min: y2 = !x1*!x2 or c&!x2 or !c&x1&x2
--|0|10|00|		|*|*| | |
--|0|11|11|
--|1|00|11|
--|1|01|10|
--|1|10|01|
--|1|11|00|
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

entity des_box is
    Port ( c : in  STD_LOGIC;
           x1 : in  STD_LOGIC;
           x2 : in  STD_LOGIC;
           y1 : out  STD_LOGIC;
           y2 : out  STD_LOGIC);
end des_box;

architecture Behavioral of des_box is

begin
y1 <= (not c and  x2) or (c and not x1) or (not x1 and x2);
y2 <= ((not x1) and (not x2)) or (c and (not x2)) or ((not c) and x1 and x2);

end Behavioral;

