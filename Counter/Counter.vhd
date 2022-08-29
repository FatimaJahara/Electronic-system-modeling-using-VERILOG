-------------Counter Component------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Counter is
    Port ( Clock : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end Counter;

architecture Behavioral of Counter is
	signal Qt: STD_LOGIC := '0';
begin
	inverter: process(Clock)
	begin
		if(falling_edge(Clock)) then
			Qt<=not Qt;
		end if;
	end process;
	Q <= Qt;
end Behavioral;

