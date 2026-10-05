library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_8bit is
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
end mux_8bit;

architecture Structural of mux_8bit is

    signal S_not : STD_LOGIC_VECTOR(2 downto 0);

begin

    S_not(0) <= not S(0);
    S_not(1) <= not S(1);
    S_not(2) <= not S(2);

    Y(0) <= (I0(0) and S_not(2) and S_not(1) and S_not(0)) or
            (I1(0) and S_not(2) and S_not(1) and S(0))     or
            (I2(0) and S_not(2) and S(1) and S_not(0))     or
            (I3(0) and S_not(2) and S(1) and S(0))         or
				(I4(0) and S(2) and S_not(1) and S_not(0))     or
            (I5(0) and S(2) and S_not(1) and S(0))         or
            (I6(0) and S(2) and S(1) and S_not(0))         or
            (I7(0) and S(2) and S(1) and S(0));
				
	 Y(1) <= (I0(1) and S_not(2) and S_not(1) and S_not(0)) or
            (I1(1) and S_not(2) and S_not(1) and S(0))     or
            (I2(1) and S_not(2) and S(1) and S_not(0))     or
            (I3(1) and S_not(2) and S(1) and S(0))         or
            (I4(1) and S(2) and S_not(1) and S_not(0))     or
            (I5(1) and S(2) and S_not(1) and S(0))         or
            (I6(1) and S(2) and S(1) and S_not(0))         or
            (I7(1) and S(2) and S(1) and S(0));
				
    Y(2) <= (I0(2) and S_not(2) and S_not(1) and S_not(0)) or
            (I1(2) and S_not(2) and S_not(1) and S(0))     or
            (I2(2) and S_not(2) and S(1) and S_not(0))     or
            (I3(2) and S_not(2) and S(1) and S(0))         or
            (I4(2) and S(2) and S_not(1) and S_not(0))     or
            (I5(2) and S(2) and S_not(1) and S(0))         or
            (I6(2) and S(2) and S(1) and S_not(0))         or
            (I7(2) and S(2) and S(1) and S(0));
				
	 Y(3) <= (I0(3) and S_not(2) and S_not(1) and S_not(0)) or
            (I1(3) and S_not(2) and S_not(1) and S(0))     or
            (I2(3) and S_not(2) and S(1) and S_not(0))     or
            (I3(3) and S_not(2) and S(1) and S(0))         or
            (I4(3) and S(2) and S_not(1) and S_not(0))     or
            (I5(3) and S(2) and S_not(1) and S(0))         or
            (I6(3) and S(2) and S(1) and S_not(0))         or
            (I7(3) and S(2) and S(1) and S(0));
				
    Y(4) <= (I0(4) and S_not(2) and S_not(1) and S_not(0)) or
            (I1(4) and S_not(2) and S_not(1) and S(0))     or
            (I2(4) and S_not(2) and S(1) and S_not(0))     or
            (I3(4) and S_not(2) and S(1) and S(0))         or
            (I4(4) and S(2) and S_not(1) and S_not(0))     or
            (I5(4) and S(2) and S_not(1) and S(0))         or
            (I6(4) and S(2) and S(1) and S_not(0))         or
            (I7(4) and S(2) and S(1) and S(0));

    Y(5) <= (I0(5) and S_not(2) and S_not(1) and S_not(0)) or
            (I1(5) and S_not(2) and S_not(1) and S(0))     or
            (I2(5) and S_not(2) and S(1) and S_not(0))     or
            (I3(5) and S_not(2) and S(1) and S(0))         or
            (I4(5) and S(2) and S_not(1) and S_not(0))     or
            (I5(5) and S(2) and S_not(1) and S(0))         or
            (I6(5) and S(2) and S(1) and S_not(0))         or
            (I7(5) and S(2) and S(1) and S(0));

    Y(6) <= (I0(6) and S_not(2) and S_not(1) and S_not(0)) or
            (I1(6) and S_not(2) and S_not(1) and S(0))     or
            (I2(6) and S_not(2) and S(1) and S_not(0))     or
            (I3(6) and S_not(2) and S(1) and S(0))         or
            (I4(6) and S(2) and S_not(1) and S_not(0))     or
            (I5(6) and S(2) and S_not(1) and S(0))         or
            (I6(6) and S(2) and S(1) and S_not(0))         or
            (I7(6) and S(2) and S(1) and S(0));
				
    Y(7) <= (I0(7) and S_not(2) and S_not(1) and S_not(0)) or
            (I1(7) and S_not(2) and S_not(1) and S(0))     or
            (I2(7) and S_not(2) and S(1) and S_not(0))     or
            (I3(7) and S_not(2) and S(1) and S(0))         or
            (I4(7) and S(2) and S_not(1) and S_not(0))     or
            (I5(7) and S(2) and S_not(1) and S(0))         or
            (I6(7) and S(2) and S(1) and S_not(0))         or
            (I7(7) and S(2) and S(1) and S(0));

end Structural;