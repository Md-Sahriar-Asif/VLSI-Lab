library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register_1bit is
    Port (
        CLK   : in  STD_LOGIC;
        RESET : in  STD_LOGIC;   -- synchronous, active-high
        LOAD  : in  STD_LOGIC;   -- load enable
        D     : in  STD_LOGIC;
        Q     : out STD_LOGIC
    );
end register_1bit;

architecture Structural of register_1bit is

    component master_slave_ff
        Port (
            D     : in  STD_LOGIC;
            CLK   : in  STD_LOGIC;
            Q     : out STD_LOGIC;
            Q_n   : out STD_LOGIC
        );
    end component;

    signal D_next : STD_LOGIC;
    signal Q_int  : STD_LOGIC;
    signal Q_n_int : STD_LOGIC;

begin

    -- Next-state logic
    -- RESET = 1          -> D_next = 0
    -- RESET = 0, LOAD=1  -> D_next = D
    -- RESET = 0, LOAD=0  -> D_next = Q_int (hold)

    D_next <= '0' when RESET = '1' else
              D    when LOAD  = '1' else
              Q_int;

    -- Master-slave flip-flop
    FF: master_slave_ff
        port map (
            D   => D_next,
            CLK => CLK,
            Q   => Q_int,
            Q_n => Q_n_int
        );

    -- Register output
    Q <= Q_int;

end Structural;