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
  
tmp(0) := "0100000000000";	-- LDI $0	            	#Carrega o acumulador com o valor 0
tmp(1) := "0101100100000";	-- STA @288		                	#Armazena o valor do acumulador em HEX0
tmp(2) := "0101100100001";	-- STA @289		                	#Armazena o valor do acumulador em HEX1
tmp(3) := "0101100100010";	-- STA @290		                	#Armazena o valor do acumulador em HEX2
tmp(4) := "0101100100011";	-- STA @291		                	#Armazena o valor do acumulador em HEX3
tmp(5) := "0101100100100";	-- STA @292		                	#Armazena o valor do acumulador em HEX4
tmp(6) := "0101100100101";	-- STA @293		                	#Armazena o valor do acumulador em HEX5
tmp(7) := "0101100000000";	-- STA @256	                    	#Armazena o valor do bit0 do acumulador no LDR0 ~ LEDR7
tmp(8) := "0101100000001";	-- STA @257	                    	#Armazena o valor do bit0 do acumulador no LDR8
tmp(9) := "0101100000010";	-- STA @258	                    	#Armazena o valor do bit0 do acumulador no LDR9
tmp(10) := "0101000000000";	-- STA @0		                	#Armazena o valor do acumulador em @0 (MEM[0])
tmp(11) := "0101000000001";	-- STA @1		                	#Armazena o valor do acumulador em @1 (MEM[1])
tmp(12) := "0101000000010";	-- STA @2		                	#Armazena o valor do acumulador em @2 (MEM[2])
tmp(13) := "0101000001001";	-- STA @9
tmp(14) := "0101000001010";	-- STA @10
tmp(15) := "0100000001001";	-- LDI $9                          	#Carrega o acumulador com o valor 9
tmp(16) := "0101000000011";	-- STA @3                 	#Armazena o valor do acumulador em @3 (MEM[3])
tmp(17) := "0101000000100";	-- STA @4                  	#Armazena o valor do acumulador em @4  (MEM[4])
tmp(18) := "0101000000101";	-- STA @5                 	#Armazena o valor do acumulador em @5 (MEM[5])
tmp(19) := "0100000000000";	-- LDI $0                          	#Carrega o acumulador com o valor 0
tmp(20) := "0101000000110";	-- STA @6                  	#Armazena o valor do acumulador em @6 (MEM[6])
tmp(21) := "0100000000001";	-- LDI $1                          	#Carrega o acumulador com o valor 1
tmp(22) := "0101000000111";	-- STA @7                    	#Armazena o valor do acumulador em @7 (MEM[7])
tmp(23) := "0100000001010";	-- LDI $10                         	#Carrega o acumulador com o valor 10
tmp(24) := "0101000001000";	-- STA @8                   	#Armazena o valor do acumulador em @8 (MEM[8])
tmp(25) := "0001101100000";	-- LDA @352
tmp(26) := "1000000000110";	-- CEQ @6
tmp(27) := "0111000011101";	-- JEQ FUNC_VERIFICA_RESET
tmp(28) := "1001000101100";	-- JSR FUNC_INC_UNID
tmp(29) := "0001101100100";	-- LDA @356
tmp(30) := "1000000000110";	-- CEQ @6
tmp(31) := "0111000100001";	-- JEQ FUNC_ATUALIZA_DISPLAY
tmp(32) := "0110000000000";	-- JMP @0
tmp(33) := "0001000000000";	-- LDA @0                
tmp(34) := "0101100100000";	-- STA @288                  
tmp(35) := "0001000000001";	-- LDA @1                
tmp(36) := "0101100100001";	-- STA @289 
tmp(37) := "0001000000010";	-- LDA @2                
tmp(38) := "0101100100010";	-- STA @290
tmp(39) := "0001000001001";	-- LDA @9
tmp(40) := "0101100100011";	-- STA @291
tmp(41) := "0001000001010";	-- LDA @10
tmp(42) := "0101100100100";	-- STA @292
tmp(43) := "0110000011001";	-- JMP FUNC_VERIFICA_KEY0
tmp(44) := "0101111111111";	-- STA @511
tmp(45) := "0001000000000";	-- LDA @0      	#Armazena o valor @0 no acumulador     
tmp(46) := "0010000000111";	-- SOMA @7                   	#Soma o valor do acumulador com @7 e joga no acumulador                 
tmp(47) := "1000000001000";	-- CEQ @8		            	#Compara o valor do acumulador com @8
tmp(48) := "0111000110011";	-- JEQ FUNC_INC_DEZENA             	#Se for 0 incrementa DEZENA e zera a @0, se não icrementa a @0 e retorna
tmp(49) := "0101000000000";	-- STA @0 
tmp(50) := "1010000000000";	-- RET             
tmp(51) := "0100000000000";	-- LDI $0         	#Armazena o valor 0 no acumulador
tmp(52) := "0101000000000";	-- STA @0                     	#Armazena o valor do acumulador em @0
tmp(53) := "0001000000001";	-- LDA @1                      	#Armazena o valor @1 no acumulador 
tmp(54) := "0010000000111";	-- SOMA @7                   	#Soma o valor do acumulador com @7 e joga no acumulador
tmp(55) := "1000000001000";	-- CEQ @8		            	#Compara o valor do acumulador com @8
tmp(56) := "0111000111011";	-- JEQ FUNC_INC_CENTENA            	#Se for 0 incrementa CENTENA e zera a @0, se não icrementa a @1 e retorna
tmp(57) := "0101000000001";	-- STA @1
tmp(58) := "1010000000000";	-- RET
tmp(59) := "0100000000000";	-- LDI $0        	#Armazena o valor 0 no acumulador
tmp(60) := "0101000000001";	-- STA @1                      	#Armazena o valor do acumulador em @1 
tmp(61) := "0001000000010";	-- LDA @2                     	#Armazena o valor @2 no acumulador 
tmp(62) := "0010000000111";	-- SOMA @7                   	#Soma o valor do acumulador com @7 e joga no acumulador     
tmp(63) := "1000000001000";	-- CEQ @8		            	#Compara o valor do acumulador com @8
tmp(64) := "0111001000011";	-- JEQ FUNC_INC_UNIDMILHAR            	#Se for 0 incrementa UNIDMILHAR e zera a @0, se não icrementa a @2 e retorna
tmp(65) := "0101000000010";	-- STA @2
tmp(66) := "1010000000000";	-- RET
tmp(67) := "0100000000000";	-- LDI $0        	#Armazena o valor 0 no acumulador
tmp(68) := "0101000000010";	-- STA @2                      	#Armazena o valor do acumulador em @2 
tmp(69) := "0001000001001";	-- LDA @9                     	#Armazena o valor @2 no acumulador 
tmp(70) := "0010000000111";	-- SOMA @7                   	#Soma o valor do acumulador com @7 e joga no acumulador   
tmp(71) := "1000000001000";	-- CEQ @8		            	#Compara o valor do acumulador com @8
tmp(72) := "0111001001011";	-- JEQ FUNC_INC_DEZMILHAR            	#Se for 0 incrementa UNIDMILHAR e zera a @0, se não icrementa a @2 e retorna
tmp(73) := "0101000001001";	-- STA @9
tmp(74) := "1010000000000";	-- RET
tmp(75) := "0100000000000";	-- LDI $0        	#Armazena o valor 0 no acumulador
tmp(76) := "0101000001001";	-- STA @9                      	#Armazena o valor do acumulador em @2 
tmp(77) := "0001000001010";	-- LDA @10                     	#Armazena o valor @2 no acumulador 
tmp(78) := "0010000000111";	-- SOMA @7                   	#Soma o valor do acumulador com @7 e joga no acumulador                              
tmp(79) := "0101000001010";	-- STA @10
tmp(80) := "1010000000000";	-- RET
tmp(81) := "0100000000000";	-- LDI $0        	#Armazena o valor 0 no acumulador
tmp(82) := "0101000001010";	-- STA @10                      	#Armazena o valor do acumulador em @2 
tmp(83) := "0001000001011";	-- LDA @11                     	#Armazena o valor @2 no acumulador 
tmp(84) := "0010000000111";	-- SOMA @7                   	#Soma o valor do acumulador com @7 e joga no acumulador                              
tmp(85) := "0101000001011";	-- STA @11
tmp(86) := "1010000000000";	-- RET
        
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;