library ieee;
use ieee.std_logic_1164.all;

entity halfAdder_db is
end halfAdder_db;

architecture test of halfAdder_db is
    signal a, b, y, carry_o : std_logic;
begin
    uut: entity work.halfAdder
        port map (
            a => a,
            b => b,
            y => y,
            carry_o => carry_o
        );

    process
    begin
        -- Teste 1: 0 + 0
        a <= '0'; b <= '0';
        wait for 10 ns;

        -- Teste 2: 0 + 1
        a <= '0'; b <= '1';
        wait for 10 ns;

        -- Teste 3: 1 + 0
        a <= '1'; b <= '0';
        wait for 10 ns;

        -- Teste 4: 1 + 1
        a <= '1'; b <= '1';
        wait for 10 ns;

        wait;
    end process;
end test;
