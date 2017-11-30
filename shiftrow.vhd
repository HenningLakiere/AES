library ieee;
use ieee.std_logic_1164.all;

entity ShiftRow is 
  port (  SR_in : in std_logic_vector(127 downto 0);
          SR_out : out std_logic_vector(127 downto 0));
end entity;

architecture ShiftRow_arch of ShiftRow is
begin

  process(SR_in)
  begin
      SR_out(127 downto 120) <= SR_in(127 downto 120); --0 <- 0
      SR_out(119 downto 112) <= SR_in(87 downto 80); --1 <- 5
      SR_out(111 downto 104) <= SR_in(47 downto 40); --2 <- 10
      SR_out(103 downto 96) <= SR_in(7 downto 0); --3 <- 15
      SR_out(95 downto 88) <= SR_in(95 downto 88); --4 <- 4
      SR_out(87 downto 80) <= SR_in(55 downto 48); --5 <- 9
      SR_out(79 downto 72) <= SR_in(15 downto 8); --6 <- 14
      SR_out(71 downto 64) <= SR_in(103 downto 96); --7 <- 3
      SR_out(63 downto 56) <= SR_in(63 downto 56); --8 <- 8
      SR_out(55 downto 48) <= SR_in(23 downto 16); --9 <- 13
      SR_out(47 downto 40) <= SR_in(111 downto 104); --10 <- 2
      SR_out(39 downto 32) <= SR_in(71 downto 64); --11 <- 7
      SR_out(31 downto 24) <= SR_in(31 downto 24); --12 <- 12
      SR_out(23 downto 16) <= SR_in(119 downto 112); --13 <- 1
      SR_out(15 downto 8) <= SR_in(79 downto 72); --14 <- 6
      SR_out(7 downto 0) <= SR_in(39 downto 32); --15 <- 11
  end process;
end;
