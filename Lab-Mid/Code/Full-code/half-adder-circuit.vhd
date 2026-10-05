library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
    Port ( A     : in  STD_LOGIC;
           B     : in  STD_LOGIC;
           SUM   : out STD_LOGIC;
           COUT  : out STD_LOGIC);
end half_adder;

architecture Structural of half_adder is

    component xor_gate
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;
    component and_gate
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

begin

    U1: xor_gate port map ( A => A, B => B, Y => SUM );
    U2: and_gate port map ( A => A, B => B, Y => COUT );

end Structural;
