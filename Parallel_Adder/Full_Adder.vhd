library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Full_Adder is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry : out  STD_LOGIC);
end Full_Adder;

architecture Behavioral of Full_Adder is

begin
sum <= a XOR b XOR cin;
carry<=(a AND b) OR (b AND cin) OR (cin AND a);

end Behavioral;

