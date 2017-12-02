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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

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
			enable: in std_logic;
			text_out : out std_logic_vector (127 downto 0);
			state_out : out std_logic_vector (4 downto 0)
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
signal RC : std_logic_vector(3 downto 0) := "0000";
signal part_c : std_logic_vector(3 downto 0) := "0000";


signal state: std_logic_vector(4 downto 0);
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
	
	state_out <= state;


	process(clk, res)
		begin
			if res='1' then
				RC <= (others => '0');
				state <= ADR_state;
				
			else
				if (rising_edge(clk) and enable = '1')  then
					
					case state is
					
						when ADR_state =>
							if RC = "0000" then
								ADR_signal <= text_in;
							elsif RC < "1001" then
								ADR_signal <= MC_temp;
							elsif RC = "1010" then
								ADR_signal <= SR_temp;
							elsif RC = "1011" then
								text_out <= ADR_temp;
								RC <= "0000";
								enable <= '0';
							else
								ADR_signal <= (others => '0');														
							end if;
							
							state <= BS_state;
							
						when BS_state =>
						
							case part_c is
								when "0000" =>
									ADR_temp_part <= ADR_temp(7 downto 0);
									BS_temp(7 downto 0) <= BS_temp_part;
								when "0001" =>
									ADR_temp_part <= ADR_temp(15 downto 8);
									BS_temp(15 downto 8) <= BS_temp_part;
								when "0010" =>
									ADR_temp_part <= ADR_temp(23 downto 16);
									BS_temp(23 downto 16) <= BS_temp_part;
								when "0011" =>
									ADR_temp_part <= ADR_temp(31 downto 24);
									BS_temp(31 downto 24) <= BS_temp_part;
								when "0100" =>
									ADR_temp_part <= ADR_temp(39 downto 32);
									BS_temp(39 downto 32) <= BS_temp_part;
								when "0101" =>
									ADR_temp_part <= ADR_temp(47 downto 40);
									BS_temp(47 downto 40) <= BS_temp_part;
								when "0110" =>
									ADR_temp_part <= ADR_temp(55 downto 48);
									BS_temp(55 downto 48) <= BS_temp_part;
								when "0111" =>
									ADR_temp_part <= ADR_temp(63 downto 56);
									BS_temp(63 downto 56) <= BS_temp_part;
								when "1000" =>
									ADR_temp_part <= ADR_temp(71 downto 64);
									BS_temp(71 downto 64) <= BS_temp_part;
								when "1001" =>
									ADR_temp_part <= ADR_temp(79 downto 72);
									BS_temp(79 downto 72) <= BS_temp_part;
								when "1010" =>
									ADR_temp_part <= ADR_temp(87 downto 80);
									BS_temp(87 downto 80) <= BS_temp_part;
								when "1011" =>
									ADR_temp_part <= ADR_temp(95 downto 88);
									BS_temp(95 downto 88) <= BS_temp_part;
								when "1100" =>
									ADR_temp_part <= ADR_temp(103 downto 96);
									BS_temp(103 downto 96) <= BS_temp_part;
								when "1101" =>
									ADR_temp_part <= ADR_temp(111 downto 104);
									BS_temp(111 downto 104) <= BS_temp_part;
								when "1110" =>
									ADR_temp_part <= ADR_temp(119 downto 112);
									BS_temp(119 downto 112) <= BS_temp_part;
								when "1111" =>
									ADR_temp_part <= ADR_temp(127 downto 120);
									BS_temp(127 downto 120) <= BS_temp_part;
									part_c <= "0000";
									state <= SR_state;
								when others =>
									ADR_temp_part <= "00000000";
									BS_temp(127 downto 0) <= (others => '0');
							end case;
			
							part_c <= part_c + 1;
							
						when SR_state =>
							state <= MC_state;
						
						when MC_state =>
							RC <= RC + 1;
							state <= ADR_state;
							
						when others =>
							--do nothing
						
					end case;
				end if;
			end if;
	end process;

	


end Behavioral;

