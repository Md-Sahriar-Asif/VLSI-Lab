LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY low_nibble_4bit_tb IS
END low_nibble_4bit_tb;

ARCHITECTURE behavior OF low_nibble_4bit_tb IS

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

        -- Test 1: 0000 + 0000 + 0 = 0000
        A <= "0000";
        B <= "0000";
        CIN <= '0';
        wait for 10 ns;

        -- Test 2: 0001 + 0010 = 0011
        A <= "0001";
        B <= "0010";
        CIN <= '0';
        wait for 10 ns;
		  
		          -- Test 3: 0101 + 0011 = 1000
        A <= "0101";
        B <= "0011";
        CIN <= '0';
        wait for 10 ns;

        -- Test 4: 1111 + 0001 = 0000, COUT = 1
        A <= "1111";
        B <= "0001";
        CIN <= '0';
        wait for 10 ns;

        -- Test 5: 1010 + 0101 + 1 = 0000, COUT = 1
        A <= "1010";
        B <= "0101";
        CIN <= '1';
        wait for 10 ns;

        wait;
    end process;

END;