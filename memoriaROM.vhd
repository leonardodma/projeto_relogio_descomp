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
  
    tmp(0) := "0100000000000";	-- LDI $0	                 	#Carrega o acumulador com o valor 0
    tmp(1) := "0101100100000";	-- STA @288		                     	#Armazena o valor do acumulador em HEX0
    tmp(2) := "0101100100001";	-- STA @289		                     	#Armazena o valor do acumulador em HEX1
    tmp(3) := "0101100100010";	-- STA @290		                     	#Armazena o valor do acumulador em HEX2
    tmp(4) := "0101100100011";	-- STA @291		                     	#Armazena o valor do acumulador em HEX3
    tmp(5) := "0101100100100";	-- STA @292		                     	#Armazena o valor do acumulador em HEX4
    tmp(6) := "0101100100101";	-- STA @293		                     	#Armazena o valor do acumulador em HEX5
    tmp(7) := "0101100000000";	-- STA @256	                         	#Armazena o valor do bit0 do acumulador no LDR0 ~ LEDR7
    tmp(8) := "0101100000001";	-- STA @257	                         	#Armazena o valor do bit0 do acumulador no LDR8
    tmp(9) := "0101100000010";	-- STA @258	                         	#Armazena o valor do bit0 do acumulador no LDR9
    tmp(10) := "0101000000000";	-- STA @0		                     	#Armazena o valor do acumulador em @0 (MEM[0])
    tmp(11) := "0101000000001";	-- STA @1		                     	#Armazena o valor do acumulador em @1 (MEM[1])
    tmp(12) := "0101000000010";	-- STA @2		                     	#Armazena o valor do acumulador em @2 (MEM[2])
    tmp(13) := "0101000001001";	-- STA @9                           	#Armazena o valor do acumulador em milhar (MEM[9])
    tmp(14) := "0101000001010";	-- STA @10                        	#Armazena o valor do acumulador em @2 de  (MEM[10])
    tmp(15) := "0101000001011";	-- STA @11                       	#Armazena o valor do acumulador em @2 (MEM[11])
    tmp(16) := "0100000001001";	-- LDI $9                               	#Carrega o acumulador com o valor 9
    tmp(17) := "0101000000011";	-- STA @3                      	#Armazena o valor do acumulador em @3 (MEM[3])
    tmp(18) := "0101000000100";	-- STA @4                       	#Armazena o valor do acumulador em @4  (MEM[4])
    tmp(19) := "0101000000101";	-- STA @5                      	#Armazena o valor do acumulador em @5 (MEM[5])
    tmp(20) := "0100000000000";	-- LDI $0                               	#Carrega o acumulador com o valor 0
    tmp(21) := "0101000000110";	-- STA @6                       	#Armazena o valor do acumulador em @6 (MEM[6])
    tmp(22) := "0101000001100";	-- STA @12                    	#Armazena o valor do acumulador em @12 (MEM[12])
    tmp(23) := "0100000000001";	-- LDI $1                               	#Carrega o acumulador com o valor 1
    tmp(24) := "0101000000111";	-- STA @7                         	#Armazena o valor do acumulador em @7 (MEM[7])
    tmp(25) := "0100000001010";	-- LDI $10                              	#Carrega o acumulador com o valor 10
    tmp(26) := "0101000001000";	-- STA @8                        	#Armazena o valor do acumulador em @8 (MEM[8])
    tmp(27) := "0001101100000";	-- LDA @352         	#Carrega o acumulador com o valor de key0
    tmp(28) := "1000000000110";	-- CEQ @6                       	#Verifica se foi apertado
    tmp(29) := "0111000100010";	-- JEQ FUNC_VERIFICA_RESET              	#Se não foi apertado, verifica RESET
    tmp(30) := "0001000001100";	-- LDA @12                    	#Se foi apertado, verifica se ainda não houve overflow
    tmp(31) := "1000000000111";	-- CEQ @7                         	#Verifica se houve overflow
    tmp(32) := "0111000100010";	-- JEQ FUNC_VERIFICA_RESET              	#Se hove overflow, volta verifica o reset 
    tmp(33) := "1001000110011";	-- JSR FUNC_INC_UNID                    	#Se não houve, vai pra sub-rotina de incrementar a @0
    tmp(34) := "0001101100100";	-- LDA @356        	#Armazena o valor do botão reset no acumulador
    tmp(35) := "1000000000110";	-- CEQ @6                       	#Verifica se o RESET foi apertado
    tmp(36) := "0111000100110";	-- JEQ FUNC_ATUALIZA_DISPLAY            	#Se o botão reset não foi apertado, atualiza os displays 
    tmp(37) := "0110000000000";	-- JMP FUNC_SETUP                       	#Se foi apertado, volta pro inívio do código
    tmp(38) := "0001000000000";	-- LDA @0   	#Coloca o valor da @0 no acumulador              
    tmp(39) := "0101100100000";	-- STA @288                             	#Armazena no HEX0
    tmp(40) := "0001000000001";	-- LDA @1                           	#Coloca o valor da @1 no acumulador 
    tmp(41) := "0101100100001";	-- STA @289                             	#Armazena no HEX1
    tmp(42) := "0001000000010";	-- LDA @2                          	#Coloca o valor da @2 no acumulador 
    tmp(43) := "0101100100010";	-- STA @290                             	#Armazena no HEX2
    tmp(44) := "0001000001001";	-- LDA @9                           	#Coloca o valor de milh no acumulador
    tmp(45) := "0101100100011";	-- STA @291                             	#Armazena no HEX3
    tmp(46) := "0001000001010";	-- LDA @10                        	#Coloca o valor de dez de milhar no acumulador
    tmp(47) := "0101100100100";	-- STA @292                             	#Armazena no HEX4
    tmp(48) := "0001000001011";	-- LDA @11                       	#Coloca o valor de cent de milhar no acumulador
    tmp(49) := "0101100100101";	-- STA @293                             	#Armazena no HEX5
    tmp(50) := "0110000011011";	-- JMP FUNC_VERIFICA_KEY0               	#Volta a verificar se KEY0 está sendo apertado
    tmp(51) := "0101111111111";	-- STA @511              	#Armazena o valor do acumulador no endereço 511 (Utilizado para limpar o flipflop do debounce)
    tmp(52) := "0001000000000";	-- LDA @0                          	#Armazena o valor @0 no acumulador     
    tmp(53) := "0010000000111";	-- SOMA @7                        	#Soma o valor do acumulador com @7 e joga no acumulador                 
    tmp(54) := "1000000001000";	-- CEQ @8		                 	#Compara o valor do acumulador com @8
    tmp(55) := "0111000111010";	-- JEQ FUNC_INC_DEZENA                  	#Se for 0 incrementa DEZENA e zera a @0, se não icrementa a @0 e retorna
    tmp(56) := "0101000000000";	-- STA @0                          	#Armazena o valor do acumulador em @0 (MEM[0])
    tmp(57) := "1010000000000";	-- RET                                  	#Retorna sub-rotina
    tmp(58) := "0100000000000";	-- LDI $0              	#Armazena o valor 0 no acumulador
    tmp(59) := "0101000000000";	-- STA @0                          	#Armazena o valor do acumulador em @0
    tmp(60) := "0001000000001";	-- LDA @1                           	#Armazena o valor @1 no acumulador 
    tmp(61) := "0010000000111";	-- SOMA @7                        	#Soma o valor do acumulador com @7 e joga no acumulador
    tmp(62) := "1000000001000";	-- CEQ @8		                 	#Compara o valor do acumulador com @8
    tmp(63) := "0111001000010";	-- JEQ FUNC_INC_CENTENA                 	#Se for 0 incrementa CENTENA e zera a @0, se não icrementa a @1 e retorna
    tmp(64) := "0101000000001";	-- STA @1                           	#Armazena o valor do acumulador em @1 (MEM[1])
    tmp(65) := "1010000000000";	-- RET                                  	#Retorna sub-rotina
    tmp(66) := "0100000000000";	-- LDI $0             	#Armazena o valor 0 no acumulador
    tmp(67) := "0101000000001";	-- STA @1                           	#Armazena o valor do acumulador em @1 
    tmp(68) := "0001000000010";	-- LDA @2                          	#Armazena o valor @2 no acumulador 
    tmp(69) := "0010000000111";	-- SOMA @7                        	#Soma o valor do acumulador com @7 e joga no acumulador     
    tmp(70) := "1000000001000";	-- CEQ @8		                 	#Compara o valor do acumulador com @8
    tmp(71) := "0111001001010";	-- JEQ FUNC_INC_UNID_MI                 	#Se for 0 incrementa UNID@9 e zera a @0, se não icrementa a @2 e retorna
    tmp(72) := "0101000000010";	-- STA @2                          	#Armazena o valor do acumulador em @2 (MEM[2])
    tmp(73) := "1010000000000";	-- RET                                  	#Retorna sub-rotina
    tmp(74) := "0100000000000";	-- LDI $0             	#Armazena o valor 0 no acumulador
    tmp(75) := "0101000000010";	-- STA @2                          	#Armazena o valor do acumulador em @2 
    tmp(76) := "0001000001001";	-- LDA @9                           	#Armazena o valor @2 no acumulador 
    tmp(77) := "0010000000111";	-- SOMA @7                        	#Soma o valor do acumulador com @7 e joga no acumulador   
    tmp(78) := "1000000001000";	-- CEQ @8		                 	#Compara o valor do acumulador com @8
    tmp(79) := "0111001010010";	-- JEQ FUNC_INC_DEZ_MI                  	#Se for 0 incrementa UNID@9 e zera a @0, se não icrementa a @2 e retorna
    tmp(80) := "0101000001001";	-- STA @9                           	#Armazena o valor do acumulador em @2 de  (MEM[9])
    tmp(81) := "1010000000000";	-- RET                                  	#Retorna sub-rotina
    tmp(82) := "0100000000000";	-- LDI $0              	#Armazena o valor 0 no acumulador
    tmp(83) := "0101000001001";	-- STA @9                           	#Armazena o valor do acumulador em @2 
    tmp(84) := "0001000001010";	-- LDA @10                        	#Armazena o valor @2 no acumulador 
    tmp(85) := "0010000000111";	-- SOMA @7                        	#Soma o valor do acumulador com @7 e joga no acumulador     
    tmp(86) := "1000000001000";	-- CEQ @8		                 	#Compara o valor do acumulador com @8
    tmp(87) := "0111001011010";	-- JEQ FUNC_INC_CEN_MI                  	#Se for 0 incrementa UNID@9 e zera a @0, se não icrementa a @2 e retorna
    tmp(88) := "0101000001010";	-- STA @10                        	#Armazena o valor do acumulador em @2 (MEM[10])
    tmp(89) := "1010000000000";	-- RET                                  	#Retorna sub-rotina
    tmp(90) := "0100000000000";	-- LDI $0              	#Armazena o valor 0 no acumulador
    tmp(91) := "0101000001010";	-- STA @10                        	#Armazena o valor do acumulador em @2 
    tmp(92) := "0001000001011";	-- LDA @11                       	#Armazena o valor @2 no acumulador 
    tmp(93) := "0010000000111";	-- SOMA @7                        	#Soma o valor do acumulador com @7 e joga no acumulador   
    tmp(94) := "1000000001000";	-- CEQ @8		                 	#Compara o valor do acumulador com @8
    tmp(95) := "0111001100010";	-- JEQ FUNC_OVERFLOW                    	#Se for 0 incrementa UNID@9 e zera a @0, se não icrementa a @2 e retorna
    tmp(96) := "0101000001011";	-- STA @11                       	#Armazena o valor do acumulador em @2 (MEM[11])
    tmp(97) := "1010000000000";	-- RET                                  	#Retorna sub-rotina
    tmp(98) := "0100000000001";	-- LDI $1                	#Armazena o valor 1 no acumulador
    tmp(99) := "0101100000010";	-- STA @258                             	#Armazena o valor do bit0 do acumulador no LDR9 (ligar LED referente ao overflow)
    tmp(100) := "0101000001100";	-- STA @12                    	#Armazena o valor do acumulador na @12 MEM([12])
    tmp(101) := "0001000000101";	-- LDA @5                      	#Armazena o valor do limite no acumulador
    tmp(102) := "0101000000000";	-- STA @0                          	#Armazena o valor do acumulador em @0 (MEM[0])
    tmp(103) := "0101000000001";	-- STA @1                           	#Armazena o valor do acumulador em @1 (MEM[1])
    tmp(104) := "0101000000010";	-- STA @2                          	#Armazena o valor do acumulador em @2 (MEM[2])
    tmp(105) := "0101000001001";	-- STA @9                           	#Armazena o valor do acumulador em milhar (MEM[9])
    tmp(106) := "0101000001010";	-- STA @10                        	#Armazena o valor do acumulador em @2 de  (MEM[10])
    tmp(107) := "0101000001011";	-- STA @11                       	#Armazena o valor do acumulador em @2 (MEM[11])
    tmp(108) := "1010000000000";	-- RET                                  	#Retorna sub-rotina
            
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;