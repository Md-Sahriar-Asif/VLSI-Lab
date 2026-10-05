library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_gate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Y : out STD_LOGIC);
end xor_gate;

architecture Structural of xor_gate is

    component nand_gate
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

    signal n1, n2, n3 : STD_LOGIC;

begin

 -- Classic 4-NAND XOR construction
    U1: nand_gate port map ( A => A,  B => B,  Y => n1 );
    U2: nand_gate port map ( A => A,  B => n1, Y => n2 );
    U3: nand_gate port map ( A => B,  B => n1, Y => n3 );
    U4: nand_gate port map ( A => n2, B => n3, Y => Y );

end Structural;