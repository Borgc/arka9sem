----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:16:55 01/15/2024 
-- Design Name: 
-- Module Name:    lfsr - Behavioral 
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

entity lfsr is
    Port ( init : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           data_in : in  STD_LOGIC;
           choice : in  STD_LOGIC;
           data_out : out  STD_LOGIC);
end lfsr;

architecture Behavioral of lfsr is
	signal lfsr : std_logic_vector (0 to 2);
begin
	process (clk, reset)
    begin
        if reset = '1' then
            lfsr <= "000";
        elsif rising_edge(clk) then
            data_out <= data_in xor lfsr(2);
            if choice = '1' then
                lfsr <= (lfsr(2) xor lfsr(0)) & lfsr(0 to 1);
            else
                lfsr <= init & lfsr(0 to 1);
            end if;
        end if;
    end process;

end Behavioral;

