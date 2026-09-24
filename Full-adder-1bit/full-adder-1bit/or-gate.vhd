library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_gate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Y : out STD_LOGIC);
end or_gate;

architecture Structural of or_gate is

    component not_gate
        Port ( A : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;
 component nand_gate
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

    signal not_a, not_b : STD_LOGIC;

begin

    U1: not_gate  port map ( A => A, Y => not_a );
    U2: not_gate  port map ( A => B, Y => not_b );
    U3: nand_gate port map ( A => not_a, B => not_b, Y => Y );

end Structural;
