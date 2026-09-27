LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY sr_latch_tb IS
END sr_latch_tb;

ARCHITECTURE behavior OF sr_latch_tb IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT sr_latch
    PORT(
        S_n : IN  std_logic;
        R_n : IN  std_logic;
        Q   : OUT std_logic;
        Q_n : OUT std_logic
    );
    END COMPONENT;

   -- Inputs
    signal S_n : std_logic := '1';
    signal R_n : std_logic := '1';

    -- Outputs
    signal Q   : std_logic;
    signal Q_n : std_logic;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: sr_latch PORT MAP (
        S_n => S_n,
        R_n => R_n,
        Q   => Q,
        Q_n => Q_n
    );

   -- Stimulus process
    stim_proc: process
    begin

        -- Set
        S_n <= '0';
        R_n <= '1';
        wait for 10 ns;

        -- Hold
        S_n <= '1';
        R_n <= '1';
        wait for 10 ns;

        -- Reset
        S_n <= '1';
        R_n <= '0';
        wait for 10 ns;

       -- Hold
        S_n <= '1';
        R_n <= '1';
        wait for 10 ns;

        -- Forbidden state
        S_n <= '0';
        R_n <= '0';
        wait for 10 ns;

        -- Return to hold
        S_n <= '1';
        R_n <= '1';
        wait for 10 ns;

        wait;
    end process;

END;
