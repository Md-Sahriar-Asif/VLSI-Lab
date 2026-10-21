LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY rom_192bits_tb IS
END rom_192bits_tb;

ARCHITECTURE behavior OF rom_192bits_tb IS

    COMPONENT rom_192bits
    PORT(
        PC_ADDR : IN  std_logic_vector(3 downto 0);
        INSTR   : OUT std_logic_vector(11 downto 0)
    );
    END COMPONENT;
	 
    signal PC_ADDR : std_logic_vector(3 downto 0) := (others => '0');
    signal INSTR   : std_logic_vector(11 downto 0);

BEGIN

    uut: rom_192bits PORT MAP (
        PC_ADDR => PC_ADDR,
        INSTR   => INSTR
    );

    stim_proc: process
    begin
        PC_ADDR <= "0000";  -- Address 0: LDI 0x3C
        wait for 10 ns;
		  
        PC_ADDR <= "0001";  -- Address 1: ADD 0x0F
        wait for 10 ns;

        PC_ADDR <= "0010";  -- Address 2: SUB 0x0B
        wait for 10 ns;

        PC_ADDR <= "0011";  -- Address 3: AND 0xF0
        wait for 10 ns;

        PC_ADDR <= "0100";  -- Address 4: OR 0x0A
        wait for 10 ns;

        PC_ADDR <= "0101";  -- Address 5: SUB 0x4A
        wait for 10 ns;
		  
        PC_ADDR <= "0110";  -- Address 6: SUB 0x01
        wait for 10 ns;

        PC_ADDR <= "0111";  -- Address 7: Unused location
        wait for 10 ns;

        wait;
    end process;

END behavior;