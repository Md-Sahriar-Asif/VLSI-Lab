LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY d_latch_tb IS
END d_latch_tb;

ARCHITECTURE behavior OF d_latch_tb IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT d_latch
    PORT(
        D      : IN  std_logic;
        ENABLE : IN  std_logic;
        Q      : OUT std_logic;
        Q_n    : OUT std_logic
    );
    END COMPONENT;

    -- Inputs
    signal D      : std_logic := '0';
    signal ENABLE : std_logic := '0';

    -- Outputs
    signal Q   : std_logic;
    signal Q_n : std_logic;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: d_latch PORT MAP (
        D      => D,
        ENABLE => ENABLE,
        Q      => Q,
        Q_n    => Q_n
    );

    -- Stimulus process
    stim_proc: process
    begin

        -- ENABLE = 0, latch holds its previous state
        D <= '0';
        ENABLE <= '0';
        wait for 10 ns;

        -- ENABLE = 1, D = 0 → Q = 0
        D <= '0';
        ENABLE <= '1';
        wait for 10 ns;

        -- ENABLE = 1, D = 1 → Q = 1
        D <= '1';
        ENABLE <= '1';
        wait for 10 ns;

       -- ENABLE = 0 → Hold Q = 1
        D <= '0';
        ENABLE <= '0';
        wait for 10 ns;

        -- ENABLE = 1, D = 0 → Q = 0
        D <= '0';
        ENABLE <= '1';
        wait for 10 ns;

        -- ENABLE = 1, D = 1 → Q = 1
        D <= '1';
        ENABLE <= '1';
        wait for 10 ns;

        wait;
    end process;

END;
