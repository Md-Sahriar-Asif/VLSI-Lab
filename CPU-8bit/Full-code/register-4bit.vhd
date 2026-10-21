library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity register_4bit is
    Port (
        D     : in  STD_LOGIC_VECTOR(3 downto 0);
        CLK   : in  STD_LOGIC;
        RESET : in  STD_LOGIC;
        LOAD  : in  STD_LOGIC;
        Q     : out STD_LOGIC_VECTOR(3 downto 0)
    );
end register_4bit;

architecture Structural of register_4bit is

    component register_1bit
        Port (
            D     : in  STD_LOGIC;
            CLK   : in  STD_LOGIC;
            RESET : in  STD_LOGIC;
            LOAD  : in  STD_LOGIC;
            Q     : out STD_LOGIC
        );
    end component;

begin

    REG0: register_1bit
        port map (
            D     => D(0),
            CLK   => CLK,
            RESET => RESET,
            LOAD  => LOAD,
            Q     => Q(0)
        );

    REG1: register_1bit
        port map (
            D     => D(1),
            CLK   => CLK,
            RESET => RESET,
            LOAD  => LOAD,
            Q     => Q(1)
        );
		  
    REG2: register_1bit
        port map (
            D     => D(2),
            CLK   => CLK,
            RESET => RESET,
            LOAD  => LOAD,
            Q     => Q(2)
        );

    REG3: register_1bit
        port map (
            D     => D(3),
            CLK   => CLK,
            RESET => RESET,
            LOAD  => LOAD,
            Q     => Q(3)
        );

end Structural;