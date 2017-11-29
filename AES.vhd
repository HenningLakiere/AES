----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:26:03 11/25/2017 
-- Design Name: 
-- Module Name:    AES - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity AES is
	port(	text_in : in std_logic_vector (128 downto 0);
			key_in : in std_logic_vector (128 downto 0);
			clk: in std_logic;
			reset: in std_logic;
			text_out : out std_logic_vector (128 downto 0)
			);
end AES;

architecture Behavioral of AES is

constant KS_state: std_logic_vector(4 downto 0) := "00001";
constant ARK_state: std_logic_vector(4 downto 0) := "00010";
constant BS_state: std_logic_vector(4 downto 0) := "00100";
constant SR_state: std_logic_vector(4 downto 0) := "01000";
constant MC_state: std_logic_vector(4 downto 0) := "10000";

component AddRoundKey is 
	port(	DPM_in: in std_logic_vector(127 downto 0);
			key_in: in std_logic_vector(127 downto 0);
			ADR_out: out std_logic_vector(127 downto 0)
			);
end component;


component ByteSub is 
	port( BS_in :in std_logic_vector( 7 downto 0 );
         BS_out :out std_logic_vector( 7 downto 0 )
			);
end component;


component DataPathMux is
	port(	SEL: in std_logic;
			text_in: in std_logic_vector(127 downto 0);
			MC_in: in std_logic_vector(127 downto 0);
			SR_in: in std_logic_vector(127 downto 0);
			DPM_out: out std_logic_vector(127 downto 0)
			);
end component;


component Keyscheduler is 
	port( roundcounter:	 	in STD_LOGIC_VECTOR(3 downto 0);
			clock:            in std_logic; 
			reset:            in std_logic;
			ce:            in std_logic;
			key:    	 			in std_logic_vector(127 downto 0);
			key_out:				out std_logic_vector(127 downto 0)
			);
end component;


component MixColumn is 
	port (MC_in : in std_logic_vector (127 downto 0);
			MC_out : out std_logic_vector(127 downto 0)
			);
end component;


component ShiftRow is 
  port (  shiftrow_in : in std_logic_vector(127 downto 0);
          shiftrow_out : out std_logic_vector(127 downto 0)
			 );
end component;



begin

if (reset='1') then
	


end Behavioral;

