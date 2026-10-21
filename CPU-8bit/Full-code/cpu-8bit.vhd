library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cpu_8bit is
    Port (
        CLK   : in  STD_LOGIC;
        RESET : in  STD_LOGIC;
        Q     : out STD_LOGIC_VECTOR(7 downto 0);
        Z     : out STD_LOGIC;
        PC    : out STD_LOGIC_VECTOR(3 downto 0)
    );
end cpu_8bit;

architecture Structural of cpu_8bit is

    -- Program Counter
    component pc_4bit
        Port (
            CLK    : in  STD_LOGIC;
            RESET  : in  STD_LOGIC;
            PC_OUT : out STD_LOGIC_VECTOR(3 downto 0)
        );
    end component;

    -- Program ROM
    component rom_192bits
        Port (
            PC_ADDR : in  STD_LOGIC_VECTOR(3 downto 0);
            INSTR   : out STD_LOGIC_VECTOR(11 downto 0)
        );
    end component;
	 
    -- Control Unit
    component control_unit
        Port (
            OPCODE     : in  STD_LOGIC_VECTOR(3 downto 0);
            ALU_OPCODE : out STD_LOGIC_VECTOR(2 downto 0);
            ACC_SEL    : out STD_LOGIC;
            ACC_EN     : out STD_LOGIC
        );
    end component;
	 
    -- ALU
    component alu_8bit
        Port (
            A      : in  STD_LOGIC_VECTOR(7 downto 0);
            B      : in  STD_LOGIC_VECTOR(7 downto 0);
            OPCODE : in  STD_LOGIC_VECTOR(2 downto 0);
            RESULT : out STD_LOGIC_VECTOR(7 downto 0);
            FLAG   : out STD_LOGIC
        );
    end component;
	 
    -- Accumulator Register
    component register_8bit
        Port (
            CLK   : in  STD_LOGIC;
            RESET : in  STD_LOGIC;
            LOAD  : in  STD_LOGIC;
            D     : in  STD_LOGIC_VECTOR(7 downto 0);
            Q     : out STD_LOGIC_VECTOR(7 downto 0)
        );
    end component;
	 
    -- Zero Flag Register
    component zero_flag
        Port (
            CLK   : in  STD_LOGIC;
            RESET : in  STD_LOGIC;
            LOAD  : in  STD_LOGIC;
            D     : in  STD_LOGIC;
            Z     : out STD_LOGIC
        );
    end component;

    -- Internal signals
    signal PC_VALUE   : STD_LOGIC_VECTOR(3 downto 0);
    signal INSTR      : STD_LOGIC_VECTOR(11 downto 0);

    signal CPU_OPCODE : STD_LOGIC_VECTOR(3 downto 0);
    signal OPERAND    : STD_LOGIC_VECTOR(7 downto 0);

    signal ALU_OPCODE : STD_LOGIC_VECTOR(2 downto 0);
    signal ACC_SEL    : STD_LOGIC;
    signal ACC_EN     : STD_LOGIC;
	 
    signal ACC_VALUE  : STD_LOGIC_VECTOR(7 downto 0);
    signal ALU_RESULT : STD_LOGIC_VECTOR(7 downto 0);
    signal ACC_INPUT  : STD_LOGIC_VECTOR(7 downto 0);

    signal ALU_FLAG   : STD_LOGIC;
    signal ZERO_INPUT : STD_LOGIC;
    signal ZERO_VALUE : STD_LOGIC;

begin

    -- Split the instruction into opcode and operand
    CPU_OPCODE <= INSTR(11 downto 8);
    OPERAND    <= INSTR(7 downto 0);
	 
    -- Program Counter
    PC_UNIT: pc_4bit
        port map (
            CLK    => CLK,
            RESET  => RESET,
            PC_OUT => PC_VALUE
        );

    PC <= PC_VALUE;

    -- Program ROM
    ROM_UNIT: rom_192bits
        port map (
            PC_ADDR => PC_VALUE,
            INSTR   => INSTR
        );
		  
    -- Control Unit
    CONTROL_UNIT_INST: control_unit
        port map (
            OPCODE     => CPU_OPCODE,
            ALU_OPCODE => ALU_OPCODE,
            ACC_SEL    => ACC_SEL,
            ACC_EN     => ACC_EN
        );

    -- ALU
    ALU_UNIT: alu_8bit
        port map (
            A      => ACC_VALUE,
            B      => OPERAND,
            OPCODE => ALU_OPCODE,
            RESULT => ALU_RESULT,
            FLAG   => ALU_FLAG
        );

    -- Select immediate operand for LDI,
    -- otherwise select the ALU result
    ACC_INPUT <= OPERAND when ACC_SEL = '1'
                 else ALU_RESULT;
					  
    -- Accumulator Register
    ACC_REG: register_8bit
        port map (
            CLK   => CLK,
            RESET => RESET,
            LOAD  => ACC_EN,
            D     => ACC_INPUT,
            Q     => ACC_VALUE
        );

    Q <= ACC_VALUE;
	 
    -- Detect whether the value being written is zero
    ZERO_INPUT <= '1' when ACC_INPUT = x"00"
                  else '0';

    -- Zero Flag Register
    ZERO_REG: zero_flag
        port map (
            CLK   => CLK,
            RESET => RESET,
            LOAD  => ACC_EN,
            D     => ZERO_INPUT,
            Z     => ZERO_VALUE
        );

    Z <= ZERO_VALUE;

end Structural;