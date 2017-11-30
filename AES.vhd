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
	port(	text_in : in std_logic_vector (127 downto 0);
			start_key : in std_logic_vector (127 downto 0);
			clk: in std_logic;
			res: in std_logic;
			text_out : out std_logic_vector (127 downto 0)
			);
end AES;

architecture Behavioral of AES is

component AddRoundKey is 
	port(	ADR_in: in std_logic_vector(127 downto 0);
			key_in: in std_logic_vector(127 downto 0);
			ADR_out: out std_logic_vector(127 downto 0)
			);
end component;


component ByteSub is 
	port( BS_in :in std_logic_vector( 7 downto 0 );
         BS_out :out std_logic_vector( 7 downto 0 )
			);
end component;

component Keyscheduler is 
	port( roundcounter:	 	in STD_LOGIC_VECTOR(3 downto 0);
			clock:            in std_logic; 
			reset:            in std_logic;
			ce:            	in std_logic;
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
  port (  SR_in : in std_logic_vector(127 downto 0);
          SR_out : out std_logic_vector(127 downto 0)
			 );
end component;

signal ADR_temp, ADR_signal, BS_temp, SR_temp, MC_temp, key_temp: std_logic_vector(127 downto 0);
signal BS_temp_part, ADR_temp_part : std_logic_vector(7 downto 0);
signal RC : std_logic_vector(3 downto 0);
signal enable : std_logic;

constant KS_state: std_logic_vector(4 downto 0) := "00001";
constant ADR_state:std_logic_vector(4 downto 0) := "00010";
constant BS_state: std_logic_vector(4 downto 0) := "00100";
constant SR_state: std_logic_vector(4 downto 0) := "01000";
constant MC_state: std_logic_vector(4 downto 0) := "10000";

begin

	KS		: Keyscheduler	port map(roundcounter => RC, clock => clk,reset => res, ce => enable, key => start_key, key_out => key_temp);
	ADR 	: AddRoundKey 	port map(ADR_in => ADR_signal, key_in => key_temp, ADR_out => ADR_temp);
	BS		: ByteSub 		port map(BS_in => ADR_temp_part ,BS_out => BS_temp_part);
	SR		: ShiftRow 		port map(SR_in => BS_temp ,SR_out => SR_temp);
	MC		: MixColumn 	port map(MC_in => SR_temp ,MC_out => MC_temp);


	process(clk, res, text_in)
		begin
			if res='1' then
			
			else
				ADR_temp_part <= text_in(7 downto 0);			
			end if;
	end process;

	


end Behavioral;

