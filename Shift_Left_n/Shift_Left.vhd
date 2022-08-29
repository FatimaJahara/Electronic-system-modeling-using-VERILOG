library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Shift_Left is
    Port ( D : in  STD_LOGIC_VECTOR(3 downto 0);
           Clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(3 downto 0);
           n : in  STD_LOGIC);
end Shift_Left;

architecture Behavioral of Shift_Left is
signal tmp:std_logic_vector(3 downto 0);
component D_Component
    Port ( D : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end component;

begin		
process()
D1: D_Component port map(D(3), Clock, Reset, Q(0));
D2: D_Component port map(D(0), Clock, Reset, Q(1));
D3: D_Component port map(D(1), Clock, Reset, Q(2));
D4: D_Component port map(D(2), Clock, Reset, Q(3));

end Behavioral;

