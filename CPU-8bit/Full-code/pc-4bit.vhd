library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pc_4bit is
    Port (
        CLK    : in  STD_LOGIC;
        RESET  : in  STD_LOGIC;
        PC_OUT : out STD_LOGIC_VECTOR(3 downto 0)
    );
end pc_4bit;

architecture Structural of pc_4bit is

    signal PC : unsigned(3 downto 0) := (others => '0');

begin

    process(CLK)
    begin
        if rising_edge(CLK) then
            if RESET = '1' then
                PC <= (others => '0');
            else
                PC <= PC + 1;
            end if;
        end if;
    end process;

    PC_OUT <= std_logic_vector(PC);

end Structural;