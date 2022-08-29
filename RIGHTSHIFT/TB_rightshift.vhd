library IEEE;
USE ieee.std_logic_1164.ALL;
ENTITY TB_rightshift IS
END TB_rightshift;
 
ARCHITECTURE behavior OF TB_rightshift IS 
COMPONENT RIGHTSHIFT
    PORT(
         D : IN  std_logic_vector(2 downto 0);
         CLOCK : IN  std_logic;
         Q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
   --Inputs
   signal D : std_logic_vector(2 downto 0) := "0000";
   signal CLOCK : std_logic := '0';
	--Outputs
   signal Q : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant CLOCK_period : time := 100 ns;
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: RIGHTSHIFT PORT MAP (
          D => D,
          CLOCK => CLOCK,
          Q => Q
        );

   -- Clock process definitions
   CLOCK_process :process
   begin
		CLOCK <= '0';
		wait for CLOCK_period/2;
		CLOCK <= '1';
		wait for CLOCK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		D<="1010";
		wait for 100 ns;
		D<="0110";
		wait for 100 ns;
		D<="1010";
		wait for 100 ns;
		D<="0101";
		wait;
   end process;

END;
