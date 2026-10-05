LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux_4bit_tb IS
END mux_4bit_tb;

ARCHITECTURE behavior OF mux_4bit_tb IS

    COMPONENT mux_4bit
    PORT(
         I0 : IN  std_logic_vector(3 downto 0);
         I1 : IN  std_logic_vector(3 downto 0);
         I2 : IN  std_logic_vector(3 downto 0);
         I3 : IN  std_logic_vector(3 downto 0);
         S  : IN  std_logic_vector(1 downto 0);
         Y  : OUT std_logic_vector(3 downto 0)
        );
    END COMPONENT;
	 
    signal I0 : std_logic_vector(3 downto 0) := (others => '0');
    signal I1 : std_logic_vector(3 downto 0) := (others => '0');
    signal I2 : std_logic_vector(3 downto 0) := (others => '0');
    signal I3 : std_logic_vector(3 downto 0) := (others => '0');
    signal S  : std_logic_vector(1 downto 0) := (others => '0');

    signal Y : std_logic_vector(3 downto 0);

BEGIN

    uut: mux_4bit PORT MAP (
        I0 => I0,
        I1 => I1,
        I2 => I2,
        I3 => I3,
        S  => S,
        Y  => Y
    );

    stim_proc: process
    begin
	 
        -- Set input values
        I0 <= "0001";
        I1 <= "0010";
        I2 <= "0100";
        I3 <= "1000";

        -- Select I0
        S <= "00";
        wait for 10 ns;

        assert Y = "0001"
        report "MUX test 1 failed"
        severity error;
		  
        -- Select I1
        S <= "01";
        wait for 10 ns;

        assert Y = "0010"
        report "MUX test 2 failed"
        severity error;

        -- Select I2
        S <= "10";
        wait for 10 ns;

        assert Y = "0100"
        report "MUX test 3 failed"
        severity error;
		  
        -- Select I3
        S <= "11";
        wait for 10 ns;

        assert Y = "1000"
        report "MUX test 4 failed"
        severity error;

        report "All MUX test cases passed successfully."
        severity note;

        wait;

    end process;

END behavior;