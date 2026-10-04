library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sr_latch is
    Port ( S_n : in  STD_LOGIC;   -- active-low set
           R_n : in  STD_LOGIC;   -- active-low reset
           Q   : out STD_LOGIC;
           Q_n : out STD_LOGIC);
end sr_latch;

architecture Structural of sr_latch is

    component nand_gate
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

    signal Q_int, Qn_int : STD_LOGIC;

begin

    -- Cross-coupled NAND feedback loop
    -- Q   = NAND(S_n, Q_n)
    -- Q_n = NAND(R_n, Q)
    U1: nand_gate port map ( A => S_n, B => Qn_int, Y => Q_int );
    U2: nand_gate port map ( A => R_n, B => Q_int,  Y => Qn_int );

    Q   <= Q_int;
    Q_n <= Qn_int;

end Structural;