library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity accumulator_4bit is
    Port (
        A     : in  STD_LOGIC_VECTOR(3 downto 0);
        B     : in  STD_LOGIC_VECTOR(3 downto 0);
        CLK   : in  STD_LOGIC;
        RESET : in  STD_LOGIC;
        Q     : out STD_LOGIC_VECTOR(3 downto 0)
    );
end accumulator_4bit;

architecture Structural of accumulator_4bit is

    component low_nibble_4bit
        Port (
            A    : in  STD_LOGIC_VECTOR(3 downto 0);
            B    : in  STD_LOGIC_VECTOR(3 downto 0);
            CIN  : in  STD_LOGIC;
            SUM  : out STD_LOGIC_VECTOR(3 downto 0);
            COUT : out STD_LOGIC
        );
    end component;
	 
    component register_4bit
        Port (
            D     : in  STD_LOGIC_VECTOR(3 downto 0);
            CLK   : in  STD_LOGIC;
            RESET : in  STD_LOGIC;
            LOAD  : in  STD_LOGIC;
            Q     : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;

    signal SUM : STD_LOGIC_VECTOR(3 downto 0);

begin

    ADDER: low_nibble_4bit
        port map (
            A    => A,
            B    => B,
            CIN  => '0',
            SUM  => SUM,
            COUT => open
        );

    REG: register_4bit
        port map (
            D     => SUM,
            CLK   => CLK,
            RESET => RESET,
            LOAD  => '1',
            Q     => Q
        );

end Structural;