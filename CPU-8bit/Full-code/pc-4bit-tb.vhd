LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY pc_4bit_tb IS
END pc_4bit_tb;

ARCHITECTURE behavior OF pc_4bit_tb IS

    COMPONENT pc_4bit
    PORT(
        CLK    : IN  std_logic;
        RESET  : IN  std_logic;
        PC_OUT : OUT std_logic_vector(3 downto 0)
    );
    END COMPONENT;
	 

    signal CLK    : std_logic := '0';
    signal RESET  : std_logic := '0';
    signal PC_OUT : std_logic_vector(3 downto 0);

    constant CLK_period : time := 10 ns;

BEGIN

    uut: pc_4bit PORT MAP (
        CLK    => CLK,
        RESET  => RESET,
        PC_OUT => PC_OUT
    );
	 
    -- Clock generation
    CLK_process: process
    begin
        CLK <= '0';
        wait for CLK_period / 2;
        CLK <= '1';
        wait for CLK_period / 2;
    end process;

    -- Test process
    stim_proc: process
    begin
        -- Apply reset
        RESET <= '1';
        wait for CLK_period;
		  
        -- Release reset
        RESET <= '0';
        wait for CLK_period * 4;

        -- Stop simulation
        wait;
    end process;

END behavior;