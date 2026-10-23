library ieee;
use ieee.std_logic_1164.all;

entity vote25 is
    port (
        vt : in std_logic_vector(24 downto 0);
        result : out std_logic
    );
end entity vote25;

architecture bhv of vote25 is
begin
    process(vt)
        variable cnt : integer range 0 to 25;
    begin
        cnt := 0;

        for i in 0 to 24 loop
            if vt(i) = '1' then
                cnt := cnt + 1;
            end if;
        end loop;

        if cnt >= 13 then
            result <= '1';
        else
            result <= '0';
        end if;
    end process;
end architecture bhv;