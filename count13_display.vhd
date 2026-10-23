library ieee;
use ieee.std_logic_1164.all;

entity count13_display is
    port (
        vt : in std_logic_vector(12 downto 0);
        en : in std_logic;
        display : out std_logic_vector(7 downto 0)
    );
end entity count13_display;

architecture bhv of count13_display is
begin
    process(vt, en)
        variable cnt : integer range 0 to 15;
    begin
        cnt := 0;

        for i in 0 to 12 loop
            if vt(i) = '1' then
                cnt := cnt + 1;
            end if;
        end loop;

        if en = '1' then
            case cnt is
                when 0  => display <= "11111100";
                when 1  => display <= "01100000";
                when 2  => display <= "11011010";
                when 3  => display <= "11110010";
                when 4  => display <= "01100110";
                when 5  => display <= "10110110";
                when 6  => display <= "10111110";
                when 7  => display <= "11100000";
                when 8  => display <= "11111110";
                when 9  => display <= "11110110";
                when 10 => display <= "11101110"; -- A
                when 11 => display <= "00111110"; -- b
                when 12 => display <= "10011100"; -- C
                when 13 => display <= "01111010"; -- d
                when 14 => display <= "10011110"; -- E
                when 15 => display <= "10001110"; -- F
                when others => display <= "00000000";
            end case;
        else
            display <= "00000000";
        end if;
    end process;
end architecture bhv;