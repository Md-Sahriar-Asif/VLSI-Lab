library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity low_nibble_4bit is
    Port ( A    : in  STD_LOGIC_VECTOR (3 downto 0);
           B    : in  STD_LOGIC_VECTOR (3 downto 0);
           CIN  : in  STD_LOGIC;
           SUM  : out STD_LOGIC_VECTOR (3 downto 0);
           COUT : out STD_LOGIC);
end low_nibble_4bit;
architecture Structural of low_nibble_4bit is

    component full_adder
        Port ( A     : in  STD_LOGIC;
               B     : in  STD_LOGIC;
               CIN   : in  STD_LOGIC;
               SUM   : out STD_LOGIC;
               COUT  : out STD_LOGIC);
    end component;

    -- internal carry chain: carry(0) = CIN, carry(4) = COUT
    signal carry : STD_LOGIC_VECTOR (4 downto 0);

begin

    carry(0) <= CIN;
    COUT     <= carry(4);

    GEN_ADD: for i in 0 to 3 generate
        FA: full_adder port map (
            A    => A(i),
            B    => B(i),
            CIN  => carry(i),
            SUM  => SUM(i),
            COUT => carry(i+1)
        );
    end generate GEN_ADD;

end Structural;