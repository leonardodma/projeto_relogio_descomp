library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;

entity memoriaROM is
   generic (
          dataWidth: natural := 8;
          addrWidth: natural := 3
    );
   port (
          Endereco : in std_logic_vector (addrWidth-1 DOWNTO 0);
          Dado : out std_logic_vector (dataWidth-1 DOWNTO 0)
    );
end entity;

architecture assincrona of memoriaROM is

  type blocoMemoria is array(0 TO 2**addrWidth - 1) of std_logic_vector(dataWidth-1 DOWNTO 0);

  	constant NOP  : std_logic_vector(3 downto 0) := "0000";
	constant LDA  : std_logic_vector(3 downto 0) := "0001";
	constant SOMA : std_logic_vector(3 downto 0) := "0010";
	constant SUB  : std_logic_vector(3 downto 0) := "0011";
	constant LDI  : std_logic_vector(3 downto 0) := "0100";
	constant STA  : std_logic_vector(3 downto 0) := "0101";
	constant JMP  : std_logic_vector(3 downto 0) := "0110";
	constant JEQ  : std_logic_vector(3 downto 0) := "0111";
	constant CEQ  : std_logic_vector(3 downto 0) := "1000";
	constant JSR  : std_logic_vector(3 downto 0) := "1001";
	constant RET  : std_logic_vector(3 downto 0) := "1010";
  
  function initMemory
        return blocoMemoria is variable tmp : blocoMemoria := (others => (others => '0'));
  begin
  
tmp(0) := "1001000001110";	-- JSR @14				#Deve desviar para a posição 14
tmp(1) := "0110000000101";	-- JMP @5				#Deve desviar para a posição 5
tmp(2) := "0111000001001";	-- JEQ @9				#Deve desviar para a posição 9
tmp(3) := "0000000000000";	-- NOP			    	#
tmp(4) := "0000000000000";	-- NOP			    	#
tmp(5) := "0100000000101";	-- LDI $5				#Carrega acumulador com valor 5
tmp(6) := "0101100000000";	-- STA @256			#Armazena 5 na posição 256 da memória
tmp(7) := "1000100000000";	-- CEQ @256			#A comparação deve fazer o flagIgual ser 1
tmp(8) := "0110000000010";	-- JMP @2				#Vai testar o flagIgual depois do jump
tmp(9) := "0000000000000";	-- NOP			    	#
tmp(10) := "0100000000100";	-- LDI $4				#Carrega acumulador com valor 4
tmp(11) := "1000100000000";	-- CEQ @256			#Compara com valor 5, deve fazer o flagIgual ser 0
tmp(12) := "0111000000011";	-- JEQ @3				#Não deve ocorrer o desvio
tmp(13) := "0110000001101";	-- JMP @13				#Fim. Deve ficar neste laço
tmp(14) := "0000000000000";	-- NOP			    	#
tmp(15) := "1010000000000";	-- RET			    	#Retorna para a posição 1


        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;