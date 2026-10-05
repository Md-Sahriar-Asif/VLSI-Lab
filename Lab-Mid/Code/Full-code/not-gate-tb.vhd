LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY not_gate_tb IS
END not_gate_tb;

ARCHITECTURE behavior OF not_gate_tb IS

    -- Component Declaration
    COMPONENT not_gate
    PORT(
         A : IN  std_logic;
         Y : OUT std_logic
        );
    END COMPONENT;

    -- Input
    signal A : std_logic := '0';

    -- Output
    signal Y : std_logic;

BEGIN

 -- Instantiate the Unit Under Test
    uut: not_gate PORT MAP (
        A => A,
        Y => Y
    );

    -- Stimulus process
    stim_proc: process
    begin

        -- A = 0
        A <= '0';
        wait for 10 ns;

        -- A = 1
        A <= '1';
        wait for 10 ns;
		  
		   -- A = 0
        A <= '0';
        wait for 10 ns;

        -- A = 1
        A <= '1';
        wait for 10 ns;

        -- Stop simulation
        wait;

    end process;

END;