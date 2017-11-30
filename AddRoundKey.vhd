library ieee;
use ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity AddRoundKey is
	port(ADR_in: in std_logic_vector(127 downto 0);
		key_in: in std_logic_vector(127 downto 0);
		ADR_out: out std_logic_vector(127 downto 0)
		);
end entity;

architecture AddRoundKey_arch of AddRoundKey is

begin
	ADR_out(127 downto 96) <= key_in(127 downto 96) + ADR_in(127 downto 96);
	ADR_out(95 downto 64) <= key_in(95 downto 64) + ADR_in(95 downto 64);
	ADR_out(63 downto 32) <= key_in(63 downto 32) + ADR_in(63 downto 32);
	ADR_out(31 downto 0) <= key_in(31 downto 0) + ADR_in(31 downto 0);
end architecture ; -- arch