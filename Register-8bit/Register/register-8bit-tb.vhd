LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY register_8bit_tb IS
END register_8bit_tb;

ARCHITECTURE behavior OF register_8bit_tb IS

    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT register_8bit
    PORT(
        CLK   : IN  std_logic;
        RESET : IN  std_logic;
        LOAD  : IN  std_logic;
        D     : IN  std_logic_vector(7 downto 0);
        Q     : OUT std_logic_vector(7 downto 0)
    );
    END COMPONENT;

    -- Inputs
    signal CLK   : std_logic := '0';
    signal RESET : std_logic := '0';
    signal LOAD  : std_logic := '0';
    signal D     : std_logic_vector(7 downto 0) := (others => '0');

    -- Output
    signal Q : std_logic_vector(7 downto 0);

BEGIN

    -- Instantiate the Unit Under Test (UUT)
    uut: register_8bit PORT MAP (
        CLK   => CLK,
        RESET => RESET,
        LOAD  => LOAD,
        D     => D,
        Q     => Q
    );

   -- Clock generation
    clk_process: process
    begin
        CLK <= '0';
        wait for 10 ns;

        CLK <= '1';
        wait for 10 ns;
    end process;

    -- Stimulus process
    stim_proc: process
    begin

       -- Reset
        RESET <= '1';
        LOAD  <= '0';
        D     <= "10101010";
        wait for 20 ns;

        -- Load 10101010
        RESET <= '0';
        LOAD  <= '1';
        D     <= "10101010";
        wait for 20 ns;

        -- Load 11001100
        D <= "11001100";
        wait for 20 ns;

       -- Hold previous value
        LOAD <= '0';
        D    <= "11111111";
        wait for 20 ns;

        -- Load 00001111
        LOAD <= '1';
        D    <= "00001111";
        wait for 20 ns;

        -- Reset
        RESET <= '1';
        LOAD  <= '0';
        D     <= "11111111";
        wait for 20 ns;

        wait;
    end process;

END;
