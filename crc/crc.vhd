----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:03:29 01/18/2024 
-- Design Name: 
-- Module Name:    crc - Behavioral 
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

entity crc is
    Port ( clk : in  STD_LOGIC;
           data_in : in  STD_LOGIC_vector (15 downto 0);
           result : out  STD_LOGIC_vector (0 to 3)
			  );
			  
end crc;

architecture Behavioral of crc is

begin
	process(clk)
		variable tmp : std_logic_vector (0 to 3);
	begin
		if rising_edge(clk) then
			tmp := (others => '0');
			for i in data_in'range loop
				tmp := (tmp(0) xor tmp(3) xor (data_in(i))) & tmp (0 to 2);
			end loop;
			result <= tmp;
		end if;
	end process;
end Behavioral;

