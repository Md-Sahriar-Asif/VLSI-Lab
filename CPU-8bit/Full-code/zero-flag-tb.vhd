LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY zero_flag_tb IS
END zero_flag_tb;

ARCHITECTURE behavior OF zero_flag_tb IS

    COMPONENT zero_flag
    PORT(
        CLK   : IN  std_logic;
        RESET : IN  std_logic;
        LOAD  : IN  std_logic;
        D     : IN  std_logic;
        Z     : OUT std_logic
    );
    END COMPONENT;
	 
    signal CLK   : std_logic := '0';
    signal RESET : std_logic := '0';
    signal LOAD  : std_logic := '0';
    signal D     : std_logic := '0';
    signal Z     : std_logic;

    constant CLK_period : time := 10 ns;

BEGIN

    uut: zero_flag PORT MAP (
        CLK   => CLK,
        RESET => RESET,
        LOAD  => LOAD,
        D     => D,
        Z     => Z
    );

    -- Clock generation
    CLK_process: process
    begin
        CLK <= '0';
        wait for CLK_period / 2;
        CLK <= '1';
        wait for CLK_period / 2;
    end process;

    -- Test cases
    stim_proc: process
    begin
        -- Reset: Z should become 1
        RESET <= '1';
        wait for CLK_period;
        RESET <= '0';
        wait for 1 ns;
		  
        -- Store 1: accumulator result is zero
        LOAD <= '1';
        D <= '1';
        wait for CLK_period;

        -- Store 0: accumulator result is nonzero
        D <= '0';
        wait for CLK_period;

        -- Hold previous value (Z should remain 0)
        LOAD <= '0';
        D <= '1';
        wait for CLK_period;

        -- Reset again: Z should return to 1
        RESET <= '1';
        wait for CLK_period;
        RESET <= '0';

        wait;
    end process;

END behavior;