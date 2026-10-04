library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity subtractor_8bit is
    Port (
        A      : in  STD_LOGIC_VECTOR (7 downto 0);
        B      : in  STD_LOGIC_VECTOR (7 downto 0);
        DIFF   : out STD_LOGIC_VECTOR (7 downto 0);
        BORROW : out STD_LOGIC
    );
end subtractor_8bit;

architecture Structural of subtractor_8bit is

    component adder_8bit
        Port (
            A    : in  STD_LOGIC_VECTOR (7 downto 0);
            B    : in  STD_LOGIC_VECTOR (7 downto 0);
            CIN  : in  STD_LOGIC;
            SUM  : out STD_LOGIC_VECTOR (7 downto 0);
            COUT : out STD_LOGIC
        );
    end component;

    signal B_not : STD_LOGIC_VECTOR (7 downto 0);
    signal COUT  : STD_LOGIC;

begin

    -- Invert B
    B_not(0) <= not B(0);
    B_not(1) <= not B(1);
    B_not(2) <= not B(2);
    B_not(3) <= not B(3);
    B_not(4) <= not B(4);
    B_not(5) <= not B(5);
    B_not(6) <= not B(6);
    B_not(7) <= not B(7);

    -- A - B = A + (~B) + 1
    SUB: adder_8bit
        port map (
            A    => A,
            B    => B_not,
            CIN  => '1',
            SUM  => DIFF,
            COUT => COUT
        );

    -- No carry means borrow
    BORROW <= not COUT;

end Structural;