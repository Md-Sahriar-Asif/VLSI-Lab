LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY full_adder_circuit_1b_tb IS
END full_adder_circuit_1b_tb;

ARCHITECTURE behavior OF full_adder_circuit_1b_tb IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT full_adder
    PORT(
         A    : IN  std_logic;
         B    : IN  std_logic;
         CIN  : IN  std_logic;
         SUM  : OUT std_logic;
         COUT : OUT std_logic
        );
    END COMPONENT;
	 
	     -- Inputs
    signal A   : std_logic := '0';
    signal B   : std_logic := '0';
    signal CIN : std_logic := '0';

    -- Outputs
    signal SUM  : std_logic;
    signal COUT : std_logic;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: full_adder PORT MAP (
          A    => A,
          B    => B,
          CIN  => CIN,
          SUM  => SUM,
          COUT => COUT
        );
		  
		      -- Stimulus process
    stim_proc: process
    begin

        A <= '0';
        B <= '0';
        CIN <= '0';
        wait for 10 ns;

        A <= '0';
        B <= '0';
        CIN <= '1';
        wait for 10 ns;

        A <= '0';
        B <= '1';
        CIN <= '0';
        wait for 10 ns;
		  
		  A <= '0';
        B <= '1';
        CIN <= '1';
        wait for 10 ns;

        A <= '1';
        B <= '0';
        CIN <= '0';
        wait for 10 ns;

        A <= '1';
        B <= '0';
        CIN <= '1';
        wait for 10 ns;

        A <= '1';
        B <= '1';
        CIN <= '0';
        wait for 10 ns;

        A <= '1';
        B <= '1';
        CIN <= '1';
        wait for 10 ns;

        wait;
    end process;

END;