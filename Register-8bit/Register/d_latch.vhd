library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity d_latch is
    Port ( D      : in  STD_LOGIC;
           ENABLE : in  STD_LOGIC;
           Q      : out STD_LOGIC;
           Q_n    : out STD_LOGIC);
end d_latch;

architecture Structural of d_latch is

    component nand_gate
        Port ( A : in  STD_LOGIC;
               B : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

   component not_gate
        Port ( A : in  STD_LOGIC;
               Y : out STD_LOGIC);
    end component;

    component sr_latch
        Port ( S_n : in  STD_LOGIC;
               R_n : in  STD_LOGIC;
               Q   : out STD_LOGIC;
               Q_n : out STD_LOGIC);
    end component;

    signal D_n, S_n, R_n : STD_LOGIC;

begin

    -- Steering: when ENABLE=1, S_n = NAND(D,ENABLE), R_n = NAND(D_n,ENABLE)
    -- When ENABLE=0, both S_n and R_n forced to '1' (hold)
    U1: not_gate  port map ( A => D, Y => D_n );
    U2: nand_gate port map ( A => D,   B => ENABLE, Y => S_n );
    U3: nand_gate port map ( A => D_n, B => ENABLE, Y => R_n );

    U4: sr_latch  port map ( S_n => S_n, R_n => R_n, Q => Q, Q_n => Q_n );

end Structural;
