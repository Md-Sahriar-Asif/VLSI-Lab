LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY accumulator_4bit_tb IS
END accumulator_4bit_tb;

ARCHITECTURE behavior OF accumulator_4bit_tb IS

    COMPONENT accumulator_4bit
    PORT(
         A     : IN  std_logic_vector(3 downto 0);
         B     : IN  std_logic_vector(3 downto 0);
         CLK   : IN  std_logic;
         RESET : IN  std_logic;
         Q     : OUT std_logic_vector(3 downto 0)
        );
    END COMPONENT;
	 
    signal A     : std_logic_vector(3 downto 0) := (others => '0');
    signal B     : std_logic_vector(3 downto 0) := (others => '0');
    signal CLK   : std_logic := '0';
    signal RESET : std_logic := '0';

    signal Q : std_logic_vector(3 downto 0);

begin

    uut: accumulator_4bit PORT MAP (
        A     => A,
        B     => B,
        CLK   => CLK,
        RESET => RESET,
        Q     => Q
    );
	 
    -- Clock generation
    CLK_process : process
    begin
        CLK <= '0';
        wait for 5 ns;
        CLK <= '1';
        wait for 5 ns;
    end process;

    -- Stimulus process
    stim_proc: process
    begin

        -- Test 1: RESET
        RESET <= '1';
        A <= "0000";
        B <= "0000";
        wait for 10 ns;

        -- Test 2: 3 + 5 = 8
        RESET <= '0';
        A <= "0011";
        B <= "0101";
        wait for 10 ns;

        -- Test 3: 2 + 1 = 3
        A <= "0010";
        B <= "0001";
        wait for 10 ns;
		  
        -- Test 4: 15 + 1 = 0 (4-bit overflow)
        A <= "1111";
        B <= "0001";
        wait for 10 ns;

        -- Test 5: 10 + 5 = 15
        A <= "1010";
        B <= "0101";
        wait for 10 ns;

        wait;

    end process;

END behavior;