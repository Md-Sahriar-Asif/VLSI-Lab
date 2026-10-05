library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_4bit is
    Port (
        I0 : in  STD_LOGIC_VECTOR(3 downto 0);
        I1 : in  STD_LOGIC_VECTOR(3 downto 0);
        I2 : in  STD_LOGIC_VECTOR(3 downto 0);
        I3 : in  STD_LOGIC_VECTOR(3 downto 0);
        S  : in  STD_LOGIC_VECTOR(1 downto 0);
        Y  : out STD_LOGIC_VECTOR(3 downto 0)
    );
end mux_4bit;

architecture Structural of mux_4bit is

begin

    Y <= I0 when S = "00" else
         I1 when S = "01" else
         I2 when S = "10" else
         I3;

end Structural;