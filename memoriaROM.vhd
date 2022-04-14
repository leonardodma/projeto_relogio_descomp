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
        -- Inicializa os endereços:
		tmp(0)  := LDI 	& "000000001"; 
		tmp(1)  := STA 	& "000000000"; 
		tmp(2)  := SOMA   & "000000000"; 
		tmp(3)  := STA 	& "100100000";  -- STA @288
		tmp(4)  := SOMA   & "000000000";
		tmp(5)  := STA 	& "100100001";  -- STA @289
		tmp(6)  := SOMA   & "000000000"; 
		tmp(7)  := STA 	& "100100010";  -- STA @290
		tmp(8)  := SOMA   & "000000000"; 
		tmp(9)  := STA 	& "100100011";  -- STA @291
		tmp(10) := SOMA   & "000000000"; 
		tmp(11) := STA 	& "100100100";  -- STA @292
		tmp(12) := SOMA   & "000000000"; 
		tmp(13) := STA 	& "100100101";  -- STA @294  
		tmp(14) := JMP 	& "000000010";  -- JMP @2 
		
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;