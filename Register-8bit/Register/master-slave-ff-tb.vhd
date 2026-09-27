LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY master_slave_ff_tb IS
END master_slave_ff_tb;

ARCHITECTURE behavior OF master_slave_ff_tb IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT master_slave_ff
    PORT(
        D   : IN  std_logic;
        CLK : IN  std_logic;
        Q   : OUT std_logic;
        Q_n : OUT std_logic
    );
    END COMPONENT;

   -- Inputs
    signal D   : std_logic := '0';
    signal CLK : std_logic := '0';

    -- Outputs
    signal Q   : std_logic;
    signal Q_n : std_logic;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: master_slave_ff PORT MAP (
        D   => D,
        CLK => CLK,
        Q   => Q,
        Q_n => Q_n
    );

    -- Clock generation
    clk_process: process
    begin
        CLK <= '0';
        wait for 10 ns;

        CLK <= '1';
        wait for 10 ns;
    end process;

    -- Stimulus process
    stim_proc: process
    begin

       -- D = 0
        D <= '0';
        wait for 20 ns;

        -- D = 1
        D <= '1';
        wait for 20 ns;

        -- D = 0
        D <= '0';
        wait for 20 ns;

        -- D = 1
        D <= '1';
        wait for 20 ns;

        wait;
    end process;

END;
