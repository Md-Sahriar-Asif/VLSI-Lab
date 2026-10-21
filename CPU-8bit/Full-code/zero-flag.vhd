library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zero_flag is
    Port (
        CLK   : in  STD_LOGIC;
        RESET : in  STD_LOGIC;
        LOAD  : in  STD_LOGIC;
        D     : in  STD_LOGIC;
        Z     : out STD_LOGIC
    );
end zero_flag;

architecture Structural of zero_flag is

    signal Z_REG : STD_LOGIC := '1';

begin

    process(CLK)
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                Z_REG <= '1';
            elsif LOAD = '1' then
                Z_REG <= D;
            end if;
        end if;
    end process;
	 
    Z <= Z_REG;

end Structural;