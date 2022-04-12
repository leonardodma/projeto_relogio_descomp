
library ieee;
use ieee.std_logic_1164.all;

entity DecoderAddress is
  port ( entrada : in std_logic_vector(2 downto 0);
         saida : out std_logic_vector(7 downto 0)
  );
end entity;

architecture comportamento of DecoderAddress is
  begin
    saida(7) <= '10000000' when (entrada = "111") else '00000000';
    saida(6) <= '01000000' when (entrada = "110") else '00000000';
    saida(5) <= '00100000' when (entrada = "101") else '00000000';
    saida(4) <= '00010000' when (entrada = "100") else '00000000';
    saida(3) <= '00001000' when (entrada = "011") else '00000000';
    saida(2) <= '00000100' when (entrada = "010") else '00000000';
    saida(1) <= '00000010' when (entrada = "001") else '00000000';
    saida(0) <= '00000001' when (entrada = "000") else '00000000';
end architecture;