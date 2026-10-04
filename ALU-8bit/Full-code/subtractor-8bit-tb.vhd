LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY subtractor_8bit_tb IS
END subtractor_8bit_tb;

ARCHITECTURE behavior OF subtractor_8bit_tb IS

    COMPONENT subtractor_8bit
    PORT(
         A      : IN  std_logic_vector(7 downto 0);
         B      : IN  std_logic_vector(7 downto 0);
         DIFF   : OUT std_logic_vector(7 downto 0);
         BORROW : OUT std_logic
        );
    END COMPONENT;
	 
	     signal A : std_logic_vector(7 downto 0) := (others => '0');
    signal B : std_logic_vector(7 downto 0) := (others => '0');

    signal DIFF   : std_logic_vector(7 downto 0);
    signal BORROW : std_logic;

BEGIN

    uut: subtractor_8bit PORT MAP (
          A      => A,
          B      => B,
          DIFF   => DIFF,
          BORROW => BORROW
        );

    stim_proc: process
    begin
	 
	        -- 0 - 0 = 0
        A <= "00000000";
        B <= "00000000";
        wait for 10 ns;

        -- 5 - 3 = 2
        A <= "00000101";
        B <= "00000011";
        wait for 10 ns;

        -- 10 - 4 = 6
        A <= "00001010";
        B <= "00000100";
        wait for 10 ns;

        -- 15 - 1 = 14
        A <= "00001111";
        B <= "00000001";
        wait for 10 ns;
		  
		          -- 3 - 5 = -2
        A <= "00000011";
        B <= "00000101";
        wait for 10 ns;

        -- 255 - 1 = 254
        A <= "11111111";
        B <= "00000001";
        wait for 10 ns;

        -- 128 - 128 = 0
        A <= "10000000";
        B <= "10000000";
        wait for 10 ns;

        wait;
    end process;

END behavior;