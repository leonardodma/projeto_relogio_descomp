library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;    -- Biblioteca IEEE para funções aritméticas

entity AND_logic is
    generic
    (
        larguraDados : natural := 1
    );
    port
    (
      entradaA, entradaB, entradaC, entradaD:  in std_logic;
		saida:    out std_logic
    );
end entity;

architecture comportamento of AND_logic is

   signal op_and : std_logic;

    begin
      op_and    <= entradaA and entradaB and entradaC and entradaD;

      saida <= op_and;

end architecture;