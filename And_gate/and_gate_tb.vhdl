library ieee;
use ieee.std_logic_1164.all;

entity and_gate_tb is
end and_gate_tb;

architecture test of and_gate_tb is
    signal a, b, y : std_logic;
begin
    uut: entity work.and_gate
        port map (
            a => a,
            b => b,
            y => y
        );

    process
    begin
        -- Teste 1: 0 and 0
        a <= '0'; b <= '0';
        wait for 10 ns;

        -- Teste 2: 0 and 1
        a <= '0'; b <= '1';
        wait for 10 ns;

        -- Teste 3: 1 and 0
        a <= '1'; b <= '0';
        wait for 10 ns;

        -- Teste 4: 1 and 1
        a <= '1'; b <= '1';
        wait for 10 ns;

        wait;
    end process;
end test;
