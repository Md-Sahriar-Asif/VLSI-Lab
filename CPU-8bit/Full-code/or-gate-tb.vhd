LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY or_gate_tb IS
END or_gate_tb;

ARCHITECTURE behavior OF or_gate_tb IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT or_gate
    PORT(
         A : IN std_logic;
         B : IN std_logic;
         Y : OUT std_logic
        );
    END COMPONENT;
	  -- Inputs
    signal A : std_logic := '0';
    signal B : std_logic := '0';

    -- Output
    signal Y : std_logic;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: or_gate PORT MAP (
          A => A,
          B => B,
          Y => Y
        );
		  
		   -- Stimulus process
    stim_proc: process
    begin

        A <= '0';
        B <= '0';
        wait for 10 ns;

        A <= '0';
        B <= '1';
        wait for 10 ns;

        A <= '1';
        B <= '0';
        wait for 10 ns;

        A <= '1';
        B <= '1';
        wait for 10 ns;

        wait;
    end process;

END;