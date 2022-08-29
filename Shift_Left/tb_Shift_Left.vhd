LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY tb_Shift_Left IS
END tb_Shift_Left;
 
ARCHITECTURE behavior OF tb_Shift_Left IS 
 
    COMPONENT Shift_Left
    PORT(
         D : IN  std_logic_vector(3 downto 0);
         Clock : IN  std_logic;
         Reset : IN  std_logic;
         Q : INOUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;

   signal D : std_logic_vector(3 downto 0) := (others => '0');
   signal Clock : std_logic := '0';
   signal Reset : std_logic := '0';

   signal Q : std_logic_vector(3 downto 0);

   constant Clock_period : time := 100 ns;
 
BEGIN
   uut: Shift_Left PORT MAP (
          D => D,
          Clock => Clock,
          Reset => Reset,
          Q => Q
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
		D <= "0001";
		wait for 100 ns;
		D <= "0010";
		wait for 100 ns;
		D <= "0011";
		wait for 100 ns;
		D <= "0100";
		wait for 100 ns;
		D <= "0101";
		wait for 100 ns;
		D <= "1001";
		wait for 100 ns;
		D <= "1010";
		wait for 100 ns;
		D <= "1011";
		wait for 100 ns;
		D <= "1101";
		wait for 100 ns;
		D <= "1100";
		wait for 100 ns;
		D <= "1110";
		wait for 100 ns;
		D <= "1111";
		wait for 100 ns;
		Reset <= '1';
		D <= "1000"; 
		wait for 100 ns;
		D <= "1101";
		wait for 100 ns;
		D <= "1100";
		wait for 100 ns;
		D <= "1110";
      wait;
   end process;

END;
