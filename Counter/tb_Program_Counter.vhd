LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_Program_Counter IS
END tb_Program_Counter;
 
ARCHITECTURE behavior OF tb_Program_Counter IS 
 
    COMPONENT P_Counter
    PORT(
         Clock : IN  std_logic;
         C : INOUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
   signal Clock : std_logic := '0';
   signal C : std_logic_vector(2 downto 0);
   constant Clock_period : time := 100 ns;
 
BEGIN
   uut: P_Counter PORT MAP (
          Clock => Clock,
          C => C
        );
   Clock_process :process
   begin
		Clock <= '0';
		wait for Clock_period/2;
		Clock <= '1';
		wait for Clock_period/2;
   end process;

   stim_proc: process
   begin		
      wait for 100 ns;	

      wait;
   end process;

END;
