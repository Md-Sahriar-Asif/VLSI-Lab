LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY full_adder_8bit_tb IS
END full_adder_8bit_tb;

ARCHITECTURE behavior OF full_adder_8bit_tb IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT adder_8bit
    PORT(
         A    : IN  std_logic_vector(7 downto 0);
         B    : IN  std_logic_vector(7 downto 0);
         CIN  : IN  std_logic;
         SUM  : OUT std_logic_vector(7 downto 0);
         COUT : OUT std_logic
        );
    END COMPONENT;
	 
	     -- Inputs
    signal A   : std_logic_vector(7 downto 0) := (others => '0');
    signal B   : std_logic_vector(7 downto 0) := (others => '0');
    signal CIN : std_logic := '0';

    -- Outputs
    signal SUM  : std_logic_vector(7 downto 0);
    signal COUT : std_logic;

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: adder_8bit PORT MAP (
          A    => A,
          B    => B,
          CIN  => CIN,
          SUM  => SUM,
          COUT => COUT
        );

    -- Stimulus process
    stim_proc: process
    begin
	 
	         -- Test 1: 0 + 0
        A <= "00000000";
        B <= "00000000";
        CIN <= '0';
        wait for 10 ns;

        -- Test 2: 5 + 3 = 8
        A <= "00000101";
        B <= "00000011";
        CIN <= '0';
        wait for 10 ns;

        -- Test 3: 15 + 1 = 16
        A <= "00001111";
        B <= "00000001";
        CIN <= '0';
        wait for 10 ns;
		  
		          -- Test 4: 100 + 50 = 150
        A <= "01100100";
        B <= "00110010";
        CIN <= '0';
        wait for 10 ns;

        -- Test 5: 255 + 1 = 256
        A <= "11111111";
        B <= "00000001";
        CIN <= '0';
        wait for 10 ns;

        -- Test 6: 100 + 50 + CIN = 151
        A <= "01100100";
        B <= "00110010";
        CIN <= '1';
        wait for 10 ns;

        wait;
    end process;

END;