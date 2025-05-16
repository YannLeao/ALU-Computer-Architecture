library ieee;
use ieee.std_logic_1164.all;

entity halfAdder is
    port(
        a : in std_logic;
        b : in std_logic;
        y : out std_logic;
        carry_o : out std_logic
    );
end halfAdder;

architecture behavior of halfAdder is
begin 
    y <= a xor b;
    carry_o <= a and b;
end behavior;