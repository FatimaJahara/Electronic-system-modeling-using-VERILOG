LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY tb_Shift_Left_n IS
END tb_Shift_Left_n;
 
ARCHITECTURE behavior OF tb_Shift_Left_n IS 
    COMPONENT Shift_Left
    PORT(
         D : IN  std_logic_vector(3 downto 0);
         Clock : IN  std_logic;
         Reset : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0);
         n : IN  std_logic
        );
    END COMPONENT;
   signal D : std_logic_vector(3 downto 0) := (others => '0');
   signal Clock : std_logic := '0';
   signal Reset : std_logic := '0';
   signal n : std_logic := '0';
   signal Q : std_logic_vector(3 downto 0);

   constant Clock_period : time := 100 ns;
 
BEGIN
   uut: Shift_Left PORT MAP (
          D => D,
          Clock => Clock,
          Reset => Reset,
          Q => Q,
          n => n
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
		D <= "1000";
		n<= '1';
		wait for 100 ns;
		D <= "1001";
		wait for 100 ns;
		Reset <= '1';
		D <= "1000";	
      wait;
   end process;
END;