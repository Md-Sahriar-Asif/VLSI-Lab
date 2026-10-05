library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu_4bit is
    Port (
        A    : in  STD_LOGIC_VECTOR(3 downto 0);
        B    : in  STD_LOGIC_VECTOR(3 downto 0);
        SEL  : in  STD_LOGIC_VECTOR(1 downto 0);
        Y    : out STD_LOGIC_VECTOR(3 downto 0);
        COUT : out STD_LOGIC
    );
end alu_4bit;

architecture Structural of alu_4bit is

    component low_nibble_4bit
        Port (
            A    : in  STD_LOGIC_VECTOR(3 downto 0);
            B    : in  STD_LOGIC_VECTOR(3 downto 0);
            CIN  : in  STD_LOGIC;
            SUM  : out STD_LOGIC_VECTOR(3 downto 0);
            COUT : out STD_LOGIC
        );
    end component;
	 
    component mux_4bit
        Port (
            I0 : in  STD_LOGIC_VECTOR(3 downto 0);
            I1 : in  STD_LOGIC_VECTOR(3 downto 0);
            I2 : in  STD_LOGIC_VECTOR(3 downto 0);
            I3 : in  STD_LOGIC_VECTOR(3 downto 0);
            S  : in  STD_LOGIC_VECTOR(1 downto 0);
            Y  : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;
	 
    signal AND_RESULT : STD_LOGIC_VECTOR(3 downto 0);
    signal OR_RESULT  : STD_LOGIC_VECTOR(3 downto 0);
    signal ADD_RESULT : STD_LOGIC_VECTOR(3 downto 0);
    signal ADD_COUT   : STD_LOGIC;

    signal RESULT_INT : STD_LOGIC_VECTOR(3 downto 0);

begin

    -- Logic operations
    AND_RESULT <= A and B;
    OR_RESULT  <= A or B;

    -- Addition
    ADDER: low_nibble_4bit
        port map (
            A    => A,
            B    => B,
            CIN  => '0',
            SUM  => ADD_RESULT,
            COUT => ADD_COUT
        );

    -- Select operation
    MUX: mux_4bit
        port map (
            I0 => AND_RESULT,
            I1 => OR_RESULT,
            I2 => ADD_RESULT,
            I3 => "0000",
            S  => SEL,
            Y  => RESULT_INT
        );

    -- Connect result
    Y <= RESULT_INT;

    -- Carry-out only for ADD
    COUT <= ADD_COUT when SEL = "10" else
            '0';

end Structural;