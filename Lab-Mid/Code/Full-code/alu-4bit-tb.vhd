LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY alu_4bit_tb IS
END alu_4bit_tb;

ARCHITECTURE behavior OF alu_4bit_tb IS

    COMPONENT alu_4bit
    PORT(
         A    : IN  std_logic_vector(3 downto 0);
         B    : IN  std_logic_vector(3 downto 0);
         SEL  : IN  std_logic_vector(1 downto 0);
         Y    : OUT std_logic_vector(3 downto 0);
         COUT : OUT std_logic
        );
    END COMPONENT;
	 
    signal A    : std_logic_vector(3 downto 0) := (others => '0');
    signal B    : std_logic_vector(3 downto 0) := (others => '0');
    signal SEL  : std_logic_vector(1 downto 0) := (others => '0');

    signal Y    : std_logic_vector(3 downto 0);
    signal COUT : std_logic;

BEGIN

    uut: alu_4bit PORT MAP (
        A    => A,
        B    => B,
        SEL  => SEL,
        Y    => Y,
        COUT => COUT
    );
	 
    stim_proc: process
    begin

        -- Step 1: AND
        SEL <= "00";
        A <= "1100";
        B <= "1010";
        wait for 10 ns;

        assert Y = "1000" and COUT = '0'
        report "Step 1 failed"
        severity error;
		  
        -- Step 2: AND
        SEL <= "00";
        A <= "1111";
        B <= "0101";
        wait for 10 ns;

        assert Y = "0101" and COUT = '0'
        report "Step 2 failed"
        severity error;


        -- Step 3: OR
        SEL <= "01";
        A <= "1100";
        B <= "0011";
        wait for 10 ns;
		  
        assert Y = "1111" and COUT = '0'
        report "Step 3 failed"
        severity error;


        -- Step 4: OR
        SEL <= "01";
        A <= "1001";
        B <= "0100";
        wait for 10 ns;

        assert Y = "1101" and COUT = '0'
        report "Step 4 failed"
        severity error;
		  
        -- Step 5: ADD
        SEL <= "10";
        A <= "0011";
        B <= "0101";
        wait for 10 ns;

        assert Y = "1000" and COUT = '0'
        report "Step 5 failed"
        severity error;
		  
        -- Step 6: ADD with overflow
        SEL <= "10";
        A <= "1111";
        B <= "0001";
        wait for 10 ns;

        assert Y = "0000" and COUT = '1'
        report "Step 6 failed"
        severity error;


        -- Step 7: ADD
        SEL <= "10";
        A <= "1010";
        B <= "0101";
        wait for 10 ns;

        assert Y = "1111" and COUT = '0'
        report "Step 7 failed"
        severity error;


        -- Step 8: Unused
        SEL <= "11";
        A <= "1010";
        B <= "0101";
        wait for 10 ns;
		  
        assert Y = "0000" and COUT = '0'
        report "Step 8 failed"
        severity error;


        report "All test cases passed successfully."
        severity note;

        wait;

    end process;

END behavior;