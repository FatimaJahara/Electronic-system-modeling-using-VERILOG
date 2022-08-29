library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity P_Counter is
    Port ( Clock : in  STD_LOGIC;
           C : inout  STD_LOGIC(2 downto 0));
end P_Counter;

architecture Behavioral of P_Counter is
component Counter
    Port ( Clock : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;


begin
C0: Counter Port Map(Clock , C(0));
C1: Counter Port Map(C(0) , C(1));
C2: Counter Port Map(C(1) , C(2));

end Behavioral;

