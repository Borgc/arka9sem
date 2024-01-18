----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:54:38 01/18/2024 
-- Design Name: 
-- Module Name:    ram - Behavioral 
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
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ram is
    Port ( clk : in  STD_LOGIC;
           we : in  STD_LOGIC;
           en : in  STD_LOGIC;
           addr : in  STD_LOGIC_VECTOR (5 downto 0);
           di : in  STD_LOGIC_VECTOR (0 to 3);
           do : out  STD_LOGIC_VECTOR (0 to 3));
end ram;

architecture Behavioral of ram is
type ram_type is array (63 downto 0) of std_logic_vector (0 to 3); 
signal RAM : ram_type := (others => (others => '0'));
begin
	process (clk)
		begin
		if rising_edge(clk) then
			if en = '1' then
				if we = '1' then
					RAM(conv_integer(addr)) <= di;
					do <= di;
				else
					do <= RAM(conv_integer(addr));
				end if;
			end if;
		end if;
	end process;

end Behavioral;

