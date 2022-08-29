-----------------DFlipFlop--------------------- 
library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
 
entity DFLIPFLOP is     
Port ( d : in  STD_LOGIC;            
		CLOCK : in  STD_LOGIC;                     
		q : out  STD_LOGIC); 
end DFLIPFLOP; 
 
architecture Behavioral of DFLIPFLOP is 
 	 	Signal QBAR : std_logic := '0'; 
begin 
 	 	flipflop: process(d, CLOCK) 
 	 	begin 	 	 	 	 
 	 	 	 	if(rising_edge(CLOCK)) then  	 	 	 	 	 	
				if(d = '0' ) then QBAR <= '0'; 
 	 	 	 	 	 	elsif(d = '1') then QBAR <= '1';   	 	 	 	 	 	
						end if;  	 	 	 	
				end if;  	 	
      end process; 
  q <= QBAR; 
end Behavioral; 


