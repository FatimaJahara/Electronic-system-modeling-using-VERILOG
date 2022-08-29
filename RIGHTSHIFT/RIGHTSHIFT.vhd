library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RIGHTSHIFT is
    Port ( D : in  STD_LOGIC_VECTOR(2 downto 0); 
           CLOCK : in  STD_LOGIC;            
           Q : out  STD_LOGIC_VECTOR(3 downto 0)); 
end RIGHTSHIFT;


architecture Behavioral of RIGHTSHIFT is
component DFLIPFLOP 
 	 	Port ( d : in  STD_LOGIC; 
           CLOCK : in  STD_LOGIC;           
             q : out  STD_LOGIC); 
end component; 

begin
DFLIPFLOP1 : DFLIPFLOP port map(d=>D(2),CLOCK=>CLOCK,q=>Q(2));  	 	
DFLIPFLOP2 : DFLIPFLOP port map(d=>D(1),CLOCK=>CLOCK,q=>Q(1));  	 	
DFLIPFLOP3 : DFLIPFLOP port map(d=>D(0),CLOCK=>CLOCK,q=>Q(0)); 
Q(3) <= '0'; 
end Behavioral;