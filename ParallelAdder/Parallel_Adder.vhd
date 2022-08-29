library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Parallel_Adder is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
			  Cin : in  STD_LOGIC;
           SUM : out  STD_LOGIC_VECTOR (3 downto 0));
end Parallel_Adder;

architecture Behavioral of Parallel_Adder is

component Full_Adder
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end component;

signal C1, C2, C3, C4: STD_LOGIC;

begin
	FA1: Full_Adder port map(A(0), B(0), Cin, SUM(0), C1);
	FA2: Full_Adder port map(A(1), B(1), C1, SUM(1), C2);
	FA3: Full_Adder port map(A(2), B(2), C2, SUM(2), C3);
	FA4: Full_Adder port map(A(3), B(3), C3, SUM(3), C4);
end Behavioral;

