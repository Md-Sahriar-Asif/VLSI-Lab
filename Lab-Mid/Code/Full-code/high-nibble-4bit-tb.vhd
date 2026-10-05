LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY high_nibble_4bit_tb IS
END high_nibble_4bit_tb;

ARCHITECTURE behavior OF high_nibble_4bit_tb IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT adder_4bit
    PORT(
         A    : IN  std_logic_vector(3 downto 0);
         B    : IN  std_logic_vector(3 downto 0);
         CIN  : IN  std_logic;
         SUM  : OUT std_logic_vector(3 downto 0);
         COUT : OUT std_logic
        );
    END COMPONENT;
	 
	     -- Inputs
    signal A   : std_logic_vector(3 downto 0) := (others => '0');
    signal B   : std_logic_vector(3 downto 0) := (others => '0');
    signal CIN : std_logic := '0';

    -- Outputs
    signal SUM  : std_logic_vector(3 downto 0);
    signal COUT : std_logic;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: adder_4bit PORT MAP (
          A    => A,
          B    => B,
          CIN  => CIN,
          SUM  => SUM,
          COUT => COUT
        );
		  
		      -- Stimulus process
    stim_proc: process
    begin

        -- Test 1
        A <= "0000";
        B <= "0000";
        CIN <= '0';
        wait for 10 ns;

        -- Test 2
        A <= "0011";
        B <= "0100";
        CIN <= '0';
        wait for 10 ns;
		  
		          -- Test 3
        A <= "0111";
        B <= "0001";
        CIN <= '0';
        wait for 10 ns;

        -- Test 4
        A <= "1111";
        B <= "0001";
        CIN <= '0';
        wait for 10 ns;

        -- Test 5
        A <= "1000";
        B <= "0111";
        CIN <= '1';
        wait for 10 ns;

        wait;
    end process;

END;