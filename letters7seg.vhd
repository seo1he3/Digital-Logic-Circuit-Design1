library ieee;
use ieee.std_logic_1164.all;

entity letters7seg is
    port (
        dat : in std_logic_vector(2 downto 0);
        display : out std_logic_vector(7 downto 0)
    );
end entity letters7seg;

architecture bhv of letters7seg is
begin
    process(dat)
    begin
        case dat is
            when "000" => display <= "11111010"; -- a
            when "001" => display <= "00111110"; -- b
            when "010" => display <= "00011010"; -- c
            when "011" => display <= "01111010"; -- d
            when "100" => display <= "10001110"; -- f
            when "101" => display <= "11110110"; -- g
            when others => display <= "00000000";
        end case;
    end process;
end architecture bhv;