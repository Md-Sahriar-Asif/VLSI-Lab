LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY mux_8bit_tb IS
END mux_8bit_tb;

ARCHITECTURE behavior OF mux_8bit_tb IS 

    COMPONENT mux_8bit
    PORT(
         I0 : IN  std_logic_vector(7 downto 0);
         I1 : IN  std_logic_vector(7 downto 0);
         I2 : IN  std_logic_vector(7 downto 0);
         I3 : IN  std_logic_vector(7 downto 0);
         I4 : IN  std_logic_vector(7 downto 0);
         I5 : IN  std_logic_vector(7 downto 0);
         I6 : IN  std_logic_vector(7 downto 0);
         I7 : IN  std_logic_vector(7 downto 0);
         S  : IN  std_logic_vector(2 downto 0);
         Y  : OUT std_logic_vector(7 downto 0)
        );
    END COMPONENT;
	 
    signal I0 : std_logic_vector(7 downto 0) := (others => '0');
    signal I1 : std_logic_vector(7 downto 0) := (others => '0');
    signal I2 : std_logic_vector(7 downto 0) := (others => '0');
    signal I3 : std_logic_vector(7 downto 0) := (others => '0');
    signal I4 : std_logic_vector(7 downto 0) := (others => '0');
    signal I5 : std_logic_vector(7 downto 0) := (others => '0');
    signal I6 : std_logic_vector(7 downto 0) := (others => '0');
    signal I7 : std_logic_vector(7 downto 0) := (others => '0');
    signal S  : std_logic_vector(2 downto 0) := (others => '0');

    signal Y : std_logic_vector(7 downto 0);

BEGIN

    uut: mux_8bit PORT MAP (
          I0 => I0,
          I1 => I1,
          I2 => I2,
          I3 => I3,
          I4 => I4,
          I5 => I5,
          I6 => I6,
          I7 => I7,
          S  => S,
          Y  => Y
        );

    stim_proc: process
    begin
	 
        -- Give each input a different value
        I0 <= "00000001";
        I1 <= "00000010";
        I2 <= "00000100";
        I3 <= "00001000";
        I4 <= "00010000";
        I5 <= "00100000";
        I6 <= "01000000";
        I7 <= "10000000";
		  
        -- Select I0
        S <= "000";
        wait for 10 ns;

        -- Select I1
        S <= "001";
        wait for 10 ns;

        -- Select I2
        S <= "010";
        wait for 10 ns;
		  
        -- Select I3
        S <= "011";
        wait for 10 ns;

        -- Select I4
        S <= "100";
        wait for 10 ns;

        -- Select I5
        S <= "101";
        wait for 10 ns;
		  
        -- Select I6
        S <= "110";
        wait for 10 ns;

        -- Select I7
        S <= "111";
        wait for 10 ns;

        wait;

    end process;

END behavior;