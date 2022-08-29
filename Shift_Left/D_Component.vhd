---------Component----------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity D_Component is
    Port ( D : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end D_Component;

architecture Behavioral of D_Component is

begin
Process(Clock, Reset)
	begin
	if(Reset = '1') then
		Q <= '0';
	else
			Q <= D;
	end if;
end Process;
end Behavioral;

