library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu_8bit is
    Port (
        A      : in  STD_LOGIC_VECTOR(7 downto 0);
        B      : in  STD_LOGIC_VECTOR(7 downto 0);
        OPCODE : in  STD_LOGIC_VECTOR(2 downto 0);
        RESULT : out STD_LOGIC_VECTOR(7 downto 0);
        FLAG   : out STD_LOGIC
    );
end alu_8bit;

architecture Structural of alu_8bit is

    component adder_8bit
        Port (
            A    : in  STD_LOGIC_VECTOR(7 downto 0);
            B    : in  STD_LOGIC_VECTOR(7 downto 0);
            CIN  : in  STD_LOGIC;
            SUM  : out STD_LOGIC_VECTOR(7 downto 0);
            COUT : out STD_LOGIC
        );
    end component;
	 
    component subtractor_8bit
        Port (
            A      : in  STD_LOGIC_VECTOR(7 downto 0);
            B      : in  STD_LOGIC_VECTOR(7 downto 0);
            DIFF   : out STD_LOGIC_VECTOR(7 downto 0);
            BORROW : out STD_LOGIC
        );
    end component;
	 
    component mux_8bit
        Port (
            I0 : in  STD_LOGIC_VECTOR(7 downto 0);
            I1 : in  STD_LOGIC_VECTOR(7 downto 0);
            I2 : in  STD_LOGIC_VECTOR(7 downto 0);
            I3 : in  STD_LOGIC_VECTOR(7 downto 0);
            I4 : in  STD_LOGIC_VECTOR(7 downto 0);
            I5 : in  STD_LOGIC_VECTOR(7 downto 0);
            I6 : in  STD_LOGIC_VECTOR(7 downto 0);
				I7 : in  STD_LOGIC_VECTOR(7 downto 0);
            S  : in  STD_LOGIC_VECTOR(2 downto 0);
            Y  : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
	 
    signal ADD_RESULT : STD_LOGIC_VECTOR(7 downto 0);
    signal SUB_RESULT : STD_LOGIC_VECTOR(7 downto 0);
    signal AND_RESULT : STD_LOGIC_VECTOR(7 downto 0);
    signal OR_RESULT  : STD_LOGIC_VECTOR(7 downto 0);
    signal XOR_RESULT : STD_LOGIC_VECTOR(7 downto 0);

    signal RESULT_INT : STD_LOGIC_VECTOR(7 downto 0);

begin

    -- Addition
    ADDER: adder_8bit
        port map (
            A    => A,
            B    => B,
            CIN  => '0',
            SUM  => ADD_RESULT,
            COUT => open
        );
		  
    -- Subtraction
    SUBTRACTOR: subtractor_8bit
        port map (
            A      => A,
            B      => B,
            DIFF   => SUB_RESULT,
            BORROW => open
        );
		  
    -- Logic operations
    AND_RESULT <= A and B;
    OR_RESULT  <= A or B;
    XOR_RESULT <= A xor B;

    -- Select operation
    MUX: mux_8bit
        port map (
            I0 => ADD_RESULT,
            I1 => SUB_RESULT,
            I2 => AND_RESULT,
            I3 => OR_RESULT,
            I4 => XOR_RESULT,
            I5 => (others => '0'),
            I6 => (others => '0'),
            I7 => (others => '0'),
            S  => OPCODE,
            Y  => RESULT_INT
        );
		  
    -- Connect internal result to output
    RESULT <= RESULT_INT;

    -- Zero flag
    FLAG <= '1' when RESULT_INT = "00000000" else
            '0';

end Structural;