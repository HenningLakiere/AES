library ieee;
use ieee.std_logic_1164.all;

entity DataPathMux is
	port(SEL: in std_logic;
		text_in: in std_logic_vector(127 downto 0);
		MC_in: in std_logic_vector(127 downto 0);
		SR_in: in std_logic_vector(127 downto 0);
		DPM_out: out std_logic_vector(127 downto 0)
	);
end DataPathMux;

architecture Behavioral of DataPathMux is
begin

	begin
		case SEL is
			when "0000" =>
				DPM_out <= text_in;
			when "1001" =>
				DPM_out <= SR_in;
			when others =>
				DPM_out <= MC_in;
		end case;
	end process;

end Behavioral;
