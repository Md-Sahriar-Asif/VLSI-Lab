LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY half_adder_tb IS
END half_adder_tb;

ARCHITECTURE behavior OF half_adder_tb IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT half_adder
    PORT(
         A    : IN  std_logic;
         B    : IN  std_logic;
         SUM  : OUT std_logic;
         COUT : OUT std_logic
        );
    END COMPONENT;
    -- Inputs
    signal A : std_logic := '0';
    signal B : std_logic := '0';

    -- Outputs
    signal SUM  : std_logic;
    signal COUT : std_logic;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: half_adder PORT MAP (
          A    => A,
          B    => B,
          SUM  => SUM,
          COUT => COUT
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