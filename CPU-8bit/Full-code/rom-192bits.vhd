library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rom_192bits is
    Port (
        PC_ADDR : in  STD_LOGIC_VECTOR(3 downto 0);
        INSTR   : out STD_LOGIC_VECTOR(11 downto 0)
    );
end rom_192bits;

architecture Structural of rom_192bits is

    type ROM_ARRAY is array (0 to 15) of
        STD_LOGIC_VECTOR(11 downto 0);
		  
    constant ROM : ROM_ARRAY := (
        0 => x"13C",
        1 => x"20F",
        2 => x"30B",
        3 => x"4F0",
        4 => x"50A",
        5 => x"34A",
        6 => x"301",
        others => x"000"
    );

begin

    INSTR <= ROM(to_integer(unsigned(PC_ADDR)));

end Structural;