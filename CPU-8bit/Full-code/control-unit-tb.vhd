LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY control_unit_tb IS
END control_unit_tb;

ARCHITECTURE behavior OF control_unit_tb IS

    COMPONENT control_unit
    PORT(
        OPCODE     : IN  std_logic_vector(3 downto 0);
        ALU_OPCODE : OUT std_logic_vector(2 downto 0);
        ACC_SEL    : OUT std_logic;
        ACC_EN     : OUT std_logic
    );
    END COMPONENT;
	 
    signal OPCODE     : std_logic_vector(3 downto 0) := (others => '0');
    signal ALU_OPCODE : std_logic_vector(2 downto 0);
    signal ACC_SEL    : std_logic;
    signal ACC_EN     : std_logic;

BEGIN

    uut: control_unit PORT MAP (
        OPCODE     => OPCODE,
        ALU_OPCODE => ALU_OPCODE,
        ACC_SEL    => ACC_SEL,
        ACC_EN     => ACC_EN
    );
	 
    stim_proc: process
    begin
        -- LDI
        OPCODE <= "0001";
        wait for 10 ns;

        -- ADD
        OPCODE <= "0010";
        wait for 10 ns;

        -- SUB
        OPCODE <= "0011";
        wait for 10 ns;
		  
        -- AND
        OPCODE <= "0100";
        wait for 10 ns;

        -- OR
        OPCODE <= "0101";
        wait for 10 ns;

        -- Invalid opcode
        OPCODE <= "1111";
        wait for 10 ns;

        wait;
    end process;

END behavior;