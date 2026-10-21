library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control_unit is
    Port (
        OPCODE     : in  STD_LOGIC_VECTOR(3 downto 0);
        ALU_OPCODE : out STD_LOGIC_VECTOR(2 downto 0);
        ACC_SEL    : out STD_LOGIC;
        ACC_EN     : out STD_LOGIC
    );
end control_unit;

architecture Structural of control_unit is

begin

    process(OPCODE)
    begin
        -- Default values
        ALU_OPCODE <= "000";
        ACC_SEL    <= '0';
        ACC_EN     <= '0';

        case OPCODE is

            when "0001" =>  -- LDI
                ACC_SEL <= '1';
                ACC_EN  <= '1';

            when "0010" =>  -- ADD
                ALU_OPCODE <= "000";
                ACC_EN     <= '1';

            when "0011" =>  -- SUB
                ALU_OPCODE <= "001";
                ACC_EN     <= '1';
					 
            when "0100" =>  -- AND
                ALU_OPCODE <= "010";
                ACC_EN     <= '1';

            when "0101" =>  -- OR
                ALU_OPCODE <= "011";
                ACC_EN     <= '1';

            when others =>
                null;

        end case;
    end process;

end Structural;