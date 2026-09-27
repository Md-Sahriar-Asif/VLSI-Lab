LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY register_1bit_tb IS
END register_1bit_tb;

ARCHITECTURE behavior OF register_1bit_tb IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT register_1bit
    PORT(
        CLK   : IN  std_logic;
        RESET : IN  std_logic;
        LOAD  : IN  std_logic;
        D     : IN  std_logic;
        Q     : OUT std_logic
    );
    END COMPONENT;

    -- Inputs
    signal CLK   : std_logic := '0';
    signal RESET : std_logic := '0';
    signal LOAD  : std_logic := '0';
    signal D     : std_logic := '0';

    -- Output
    signal Q : std_logic;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: register_1bit PORT MAP (
        CLK   => CLK,
        RESET => RESET,
        LOAD  => LOAD,
        D     => D,
        Q     => Q
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

       -- Reset
        RESET <= '1';
        LOAD  <= '0';
        D     <= '1';
        wait for 20 ns;

        -- Load D = 1
        RESET <= '0';
        LOAD  <= '1';
        D     <= '1';
        wait for 20 ns;

        -- Load D = 0
        D <= '0';
        wait for 20 ns;

        -- Hold previous value
        LOAD <= '0';
        D    <= '1';
        wait for 20 ns;

        -- Reset again
        RESET <= '1';
        LOAD  <= '0';
        D     <= '1';
        wait for 20 ns;

        -- Return to normal operation
        RESET <= '0';
        LOAD  <= '1';
        D     <= '1';
        wait for 20 ns;

        wait;
    end process;

END;
