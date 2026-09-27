library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity master_slave_ff is
    Port (
        D     : in  STD_LOGIC;
        CLK   : in  STD_LOGIC;
        Q     : out STD_LOGIC;
        Q_n   : out STD_LOGIC
    );
end master_slave_ff;

architecture Structural of master_slave_ff is

    component d_latch
        Port (
            D      : in  STD_LOGIC;
            ENABLE : in  STD_LOGIC;
            Q      : out STD_LOGIC;
            Q_n    : out STD_LOGIC
        );
    end component;

    signal CLK_n : STD_LOGIC;
    signal Q_M   : STD_LOGIC;
    signal Q_M_n : STD_LOGIC;

begin

    -- Inverted clock
    CLK_n <= not CLK;

   -- Master latch
    -- Master is enabled when CLK = 0
    MASTER: d_latch
        port map (
            D      => D,
            ENABLE => CLK_n,
            Q      => Q_M,
            Q_n    => Q_M_n
        );

    -- Slave latch
    -- Slave is enabled when CLK = 1
    SLAVE: d_latch
        port map (
            D      => Q_M,
            ENABLE => CLK,
            Q      => Q,
            Q_n    => Q_n
        );

end Structural;
