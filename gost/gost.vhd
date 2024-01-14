--x1x2x3 f1f2f3
--000		001
--001		010
--010		000
--011		100
--100		101
--101		110
--110		111
--111		011

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SboxGOST is
    Port ( x1 : in  STD_LOGIC;
           x2 : in  STD_LOGIC;
           x3 : in  STD_LOGIC;
           y1 : out  STD_LOGIC;
           y2 : out  STD_LOGIC;
           y3 : out  STD_LOGIC);
end SboxGOST;

architecture Behavioral of SboxGOST is
	signal x : std_logic_vector(0 to 2);
	signal y : std_logic_vector(0 to 2);
	signal tmp : std_logic_vector(0 to 7);
begin
	process (x1,x2,x3) is
	begin
		x(0) <= x1;
		x(1) <= x2;
		x(2) <= x3;
	end process;

	decoder : process (x) is
	begin
		case x is
			when "000" =>
				tmp <= "00000001";
			when "001" =>
				tmp <= "00000010";
			when "010" =>
				tmp <= "00000100";
			when "011" =>
				tmp <= "00001000";
			when "100" =>
				tmp <= "00010000";
			when "101" =>
				tmp <= "00100000";
			when "110" =>
				tmp <= "01000000";
			when "111" =>
				tmp <= "10000000";
			when others =>
				tmp <= (others => '0');
		end case;
	end process;
	
	coder : process (tmp) is
	begin
		case tmp is
			when "00000001" =>
				y <= "001";
			when "00000010" =>
				y <= "010";
			when "00000100" =>
				y <= "000";
			when "00001000" =>
				y <= "100";
			when "00010000" =>
				y <= "101";
			when "00100000" =>
				y <= "110";
			when "01000000" =>
				y <= "111";
			when "10000000" =>
				y <= "011";
			when others =>
				y <= (others => '0');
		end case;
	end process;
	
	process (y) is
	begin
		y1 <= y(0);
		y2 <= y(1);
		y3 <= y(2);
	end process;
end Behavioral;