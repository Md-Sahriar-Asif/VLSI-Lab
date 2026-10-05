LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY alu_8bit_tb IS
END alu_8bit_tb;

ARCHITECTURE behavior OF alu_8bit_tb IS

    COMPONENT alu_8bit
    PORT(
         A      : IN  std_logic_vector(7 downto 0);
         B      : IN  std_logic_vector(7 downto 0);
         OPCODE : IN  std_logic_vector(2 downto 0);
         RESULT : OUT std_logic_vector(7 downto 0);
         FLAG   : OUT std_logic
        );
    END COMPONENT;
	 
    signal A      : std_logic_vector(7 downto 0) := (others => '0');
    signal B      : std_logic_vector(7 downto 0) := (others => '0');
    signal OPCODE : std_logic_vector(2 downto 0) := (others => '0');

    signal RESULT : std_logic_vector(7 downto 0);
    signal FLAG   : std_logic;

BEGIN

    uut: alu_8bit PORT MAP (
          A      => A,
          B      => B,
          OPCODE => OPCODE,
          RESULT => RESULT,
          FLAG   => FLAG
        );

    stim_proc: process
    begin
	 
        -- ADD: 5 + 3 = 8
        A <= "00000101";
        B <= "00000011";
        OPCODE <= "000";
        wait for 10 ns;

        -- ADD: 5 + 251 = 0
        A <= "00000101";
        B <= "11111011";
        OPCODE <= "000";
        wait for 10 ns;
		  
        -- SUB: 8 - 3 = 5
        A <= "00001000";
        B <= "00000011";
        OPCODE <= "001";
        wait for 10 ns;

        -- SUB: 5 - 5 = 0, FLAG = 1
        A <= "00000101";
        B <= "00000101";
        OPCODE <= "001";
        wait for 10 ns;
		  
        -- AND: 10101010 AND 11110000 = 10100000
        A <= "10101010";
        B <= "11110000";
        OPCODE <= "010";
        wait for 10 ns;

        -- AND: 10101010 AND 01010101 = 0, FLAG = 1
        A <= "10101010";
        B <= "01010101";
        OPCODE <= "010";
        wait for 10 ns;
		  
        -- OR: 10100000 OR 00001111 = 10101111
        A <= "10100000";
        B <= "00001111";
        OPCODE <= "011";
        wait for 10 ns;

        -- OR: 00000000 OR 00000000 = 0, FLAG = 1
        A <= "00000000";
        B <= "00000000";
        OPCODE <= "011";
        wait for 10 ns;
		  
        -- XOR: 10101010 XOR 11110000 = 01011010
        A <= "10101010";
        B <= "11110000";
        OPCODE <= "100";
        wait for 10 ns;

        -- XOR: 10101010 XOR 10101010 = 0, FLAG = 1
        A <= "10101010";
        B <= "10101010";
        OPCODE <= "100";
        wait for 10 ns;
		  
        -- Reserved operation
        A <= "11111111";
        B <= "11111111";
        OPCODE <= "101";
        wait for 10 ns;

        wait;

    end process;

END behavior;