library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity not_gate is
    Port ( A : in  STD_LOGIC;
           Y : out STD_LOGIC);
end not_gate;

architecture Structural of not_gate is

    component nand_gate
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

begin

    -- NOT(A) = NAND(A,A)
    U1: nand_gate port map ( A => A, B => A, Y => Y );

end Structural;
