library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fsm2 is
Port(
    clk: in std_logic;
    reset: in std_logic;
    plain: in std_logic;
	 k : in std_logic;
    crypt: out std_logic
);
end fsm2;

architecture Behavioral of fsm2 is
    type state_type is (s0, s1, s2, s3);
    signal state: state_type;
    signal y: std_logic;
begin

    process(clk, reset)
    begin
        if (reset ='1') then 
            state <= s0;
        elsif (clk='1' and clk'event) and k = '0' then
            case state is
                when s0 => 
                if plain='1' then 
                    state <= s1;
                else
                    state <= s2;
                end if;
                when s1 => state <= s3;
                when s2 => state <= s3;
                when s3 => state <= s0;
            end case;
            crypt <= plain xor y;
			elsif (clk='1' and clk'event) and k = '1' then
            case state is
                when s0 => 
                if plain='1' then 
                    state <= s2;
                else
                    state <= s1;
                end if;
                when s1 => state <= s3;
                when s2 => state <= s3;
                when s3 => state <= s0;
            end case;
            crypt <= plain xor y;
        end if;
    end process;

    process(state)
    begin
        case state is
            when s0 => y <= '1';
            when s1 => y <= '1';
            when s2 => y <= '0';
            when s3 => y <= '0';
        end case;
    end process;

end Behavioral;