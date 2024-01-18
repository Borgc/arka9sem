----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:30:27 01/18/2024 
-- Design Name: 
-- Module Name:    top - Behavioral 
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

entity top is
    Port ( clk : in  STD_LOGIC;
           data_in : in  STD_LOGIC_vector (15 downto 0);
           file_descriptor : in  STD_LOGIC_vector (5 downto 0);
           mode : in  STD_LOGIC;
           is_equal : out  STD_LOGIC;
           result_out : out  STD_LOGIC_vector(0 to 3);
           ram_data_out : out  STD_LOGIC_vector(0 to 3)
			  );
end top;

architecture Behavioral of top is
	component crc is
		port(
		clk : in std_logic;
		data_in : in std_logic_vector(15 downto 0);
		result : out std_logic_vector(0 to 3)
		);
	end component;
	
	component ram is
		port(
			clk : in std_logic;
			we : in std_logic;
			en : in std_logic;
			addr : in std_logic_vector (5 downto 0);
			di : in std_logic_vector (0 to 3);
			do : out std_logic_vector (0 to 3)
		);
	end component;
	type state_type is (calc, wr, compare);
	signal state : state_type;
	signal crc_result : std_logic_vector(0 to 3);
	signal ram_data : std_logic_vector(0 to 3);
begin
	crc_map: crc port map(clk=>clk, data_in => data_in, result => crc_result);
	ram_map: ram port map(clk=>clk, we=> mode, en=>clk, addr=>file_descriptor, di=>crc_result, do => ram_data);
	process (clk) 
	begin
		if rising_edge(clk) then
			result_out <= crc_result;
			ram_data_out <= ram_data;
			case state is
				when calc =>
					state <= wr;
				when wr =>
					state <= compare;
				when compare =>
					if crc_result = ram_data then
						is_equal <= '1';
					else
						is_equal <= '0';
					end if;
					state <= calc;
				end case;
			end if;
	end process;
end Behavioral;

