LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_Parallel_Adder IS
END tb_Parallel_Adder;
 
ARCHITECTURE behavior OF tb_Parallel_Adder IS 
 
    COMPONENT Parallel_Adder
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         SUM : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

   signal SUM : std_logic_vector(3 downto 0);
 
BEGIN
 
   uut: Parallel_Adder PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          SUM => SUM
        );

   stim_proc: process
   begin		
      wait for 200 ns;
		A <= "0110";
		B <= "1100"; 
		wait for 200 ns;
		A <= "1111";
		B <= "1100";
		wait for 100 ns;
		A <= "0110";
		B <= "0111";	 
		wait for 200 ns;
		A <= "0110";
		B <= "1110"; 
		wait for 100 ns;
		A <= "1111";
		B <= "1111";
      wait;
   end process;

END;
