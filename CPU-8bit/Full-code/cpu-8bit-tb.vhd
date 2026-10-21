LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY cpu_8bit_tb IS
END cpu_8bit_tb;

ARCHITECTURE behavior OF cpu_8bit_tb IS

    COMPONENT cpu_8bit
        PORT (
            CLK   : IN  std_logic;
            RESET : IN  std_logic;
            Q     : OUT std_logic_vector(7 downto 0);
            Z     : OUT std_logic;
            PC    : OUT std_logic_vector(3 downto 0)
        );
    END COMPONENT;

    -- Inputs
    signal CLK   : std_logic := '0';
    signal RESET : std_logic := '0';

    -- Outputs
    signal Q  : std_logic_vector(7 downto 0);
    signal Z  : std_logic;
    signal PC : std_logic_vector(3 downto 0);

    constant CLK_period : time := 10 ns;
	 
BEGIN

    -- Instantiate the CPU
    uut: cpu_8bit
        PORT MAP (
            CLK   => CLK,
            RESET => RESET,
            Q     => Q,
            Z     => Z,
            PC    => PC
        );

    -- Clock generation
    CLK_process: process
    begin
        CLK <= '0';
        wait for CLK_period / 2;
        CLK <= '1';
        wait for CLK_period / 2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
	 
        -- Apply reset
        RESET <= '1';
        wait for CLK_period;

        RESET <= '0';
        wait for CLK_period;

        -- LDI 3C
        wait for CLK_period;

        -- ADD 0F
        wait for CLK_period;

        -- SUB 0B
        wait for CLK_period;
		  
        -- AND F0
        wait for CLK_period;

        -- OR 0A
        wait for CLK_period;

        -- SUB 4A
        wait for CLK_period;

        -- SUB 01
        wait for CLK_period;

        -- Allow simulation to finish
        wait;
    end process;

END behavior;