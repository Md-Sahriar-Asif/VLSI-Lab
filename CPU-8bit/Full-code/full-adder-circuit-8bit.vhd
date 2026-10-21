library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity adder_8bit is
    Port (
        A    : in  STD_LOGIC_VECTOR (7 downto 0);
        B    : in  STD_LOGIC_VECTOR (7 downto 0);
        CIN  : in  STD_LOGIC;
        SUM  : out STD_LOGIC_VECTOR (7 downto 0);
        COUT : out STD_LOGIC
    );
end adder_8bit;

architecture Structural of adder_8bit is

    component low_nibble_4bit
        Port (
            A    : in  STD_LOGIC_VECTOR (3 downto 0);
            B    : in  STD_LOGIC_VECTOR (3 downto 0);
            CIN  : in  STD_LOGIC;
            SUM  : out STD_LOGIC_VECTOR (3 downto 0);
            COUT : out STD_LOGIC
        );
    end component;
	 
	     component high_nibble_4bit
        Port (
            A    : in  STD_LOGIC_VECTOR (3 downto 0);
            B    : in  STD_LOGIC_VECTOR (3 downto 0);
            CIN  : in  STD_LOGIC;
            SUM  : out STD_LOGIC_VECTOR (3 downto 0);
            COUT : out STD_LOGIC
        );
    end component;

    signal carry_mid : STD_LOGIC;

begin

    -- Lower 4 bits
    LOW_NIBBLE: low_nibble_4bit
        port map (
            A    => A(3 downto 0),
            B    => B(3 downto 0),
            CIN  => CIN,
            SUM  => SUM(3 downto 0),
            COUT => carry_mid
        );

    -- Upper 4 bits
    HIGH_NIBBLE: high_nibble_4bit
        port map (
            A    => A(7 downto 4),
            B    => B(7 downto 4),
            CIN  => carry_mid,
            SUM  => SUM(7 downto 4),
            COUT => COUT
        );

end Structural;