--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:42:01 11/30/2017
-- Design Name:   
-- Module Name:   D:/Users/Henni/Desktop/Chip/AES/tb.vhd
-- Project Name:  AES
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: AES
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb IS
END tb;
 
ARCHITECTURE behavior OF tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AES
    PORT(
         text_in : IN  std_logic_vector(127 downto 0);
         start_key : IN  std_logic_vector(127 downto 0);
         clk : IN  std_logic;
         res : IN  std_logic;
         enable : IN  std_logic;
         text_out : OUT  std_logic_vector(127 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal text_in : std_logic_vector(127 downto 0) := (others => '0');
   signal start_key : std_logic_vector(127 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal res : std_logic := '0';
   signal enable : std_logic := '0';

 	--Outputs
   signal text_out : std_logic_vector(127 downto 0);

   -- Clock period definitions
   constant clk_period : time := 1 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AES PORT MAP (
          text_in => text_in,
          start_key => start_key,
          clk => clk,
          res => res,
          enable => enable,
          text_out => text_out
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 10 ns;	
		
		text_in <= (others => '0');
		start_key <= (others => '0');
		
      wait for clk_period;
		res <= '1';
		wait for clk_period;
		res <= '0';
		wait for clk_period;
		
		enable <= '1';
		wait for clk_period;
		
		text_in <= "10011001100110011001100110011001100110011001100110011001100110011001100110011001100110011001100110011001100110011001100110011001";
		start_key <= "10011001100110011001100110011001100110011001100110011001100110011001100110011001100110011001100110011001100110011001100110011001";
		


      wait;
   end process;

END;
