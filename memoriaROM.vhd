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
  
tmp(0) := "0100000000000";	-- LDI $0                             	#Carrega o acumulador com o valor 0
tmp(1) := "0101100100000";	-- STA @288		                                	#Armazena o valor do acumulador em @288
tmp(2) := "0101100100001";	-- STA @289		                                	#Armazena o valor do acumulador em @289
tmp(3) := "0101100100010";	-- STA @290		                                	#Armazena o valor do acumulador em @290
tmp(4) := "0101100100011";	-- STA @291		                                	#Armazena o valor do acumulador em @291
tmp(5) := "0101100100100";	-- STA @292		                                	#Armazena o valor do acumulador em @292
tmp(6) := "0101100100101";	-- STA @293		                                	#Armazena o valor do acumulador em @293
tmp(7) := "0101101000000";	-- STA @320	                                    	#Armazena o valor do bit0 do acumulador no LDR0 ~ LEDR7
tmp(8) := "0101101000001";	-- STA @321	                                    	#Armazena o valor do bit0 do acumulador no LDR8
tmp(9) := "0101101000010";	-- STA @322	                                    	#Armazena o valor do bit0 do acumulador no LDR9
tmp(10) := "0101000000000";	-- STA @0                            	#Armazena o valor do acumulador em (MEM[0])
tmp(11) := "0101000000001";	-- STA @1		                        	#Armazena o valor do acumulador em (MEM[1])
tmp(12) := "0101000000010";	-- STA @2		                        	#Armazena o valor do acumulador em (MEM[2])
tmp(13) := "0101000000011";	-- STA @3                              	#Armazena o valor do acumulador em (MEM[3])
tmp(14) := "0101000000100";	-- STA @4                               	#Armazena o valor do acumulador em (MEM[4])
tmp(15) := "0101000000101";	-- STA @5                                	#Armazena o valor do acumulador em (MEM[5])
tmp(16) := "0101000000110";	-- STA @6                                  	#Armazena o valor do acumulador em (MEM[6])
tmp(17) := "0100000000001";	-- LDI $1                                          	#Carrega o acumulador com o valor 1
tmp(18) := "0101000000111";	-- STA @7                                    	#Armazena o valor do acumulador em (MEM[7])
tmp(19) := "0100000000010";	-- LDI $2                                          	#Carrega o acumulador com o valor 2
tmp(20) := "0101000001000";	-- STA @8                                  	#Armazena o valor do acumulador em (MEM[8])
tmp(21) := "0100000000011";	-- LDI $3                                          	#Carrega o acumulador com o valor 3
tmp(22) := "0101000001001";	-- STA @9                                  	#Armazena o valor do acumulador em (MEM[9])
tmp(23) := "0100000000110";	-- LDI $6                                          	#Carrega o acumulador com o valor 6
tmp(24) := "0101000001010";	-- STA @10                                  	#Armazena o valor do acumulador em (MEM[10])
tmp(25) := "0100000001010";	-- LDI $10                                         	#Carrega o acumulador com o valor 10
tmp(26) := "0101000001011";	-- STA @11                                   	#Armazena o valor do acumulador em (MEM[11])
tmp(27) := "0100000000000";	-- LDI $0                                          	#Carrega o acumulador com o valor 0
tmp(28) := "0101000001100";	-- STA @12                                 	#Armazena o valor do acumulador em (MEM[12])
tmp(29) := "0101000001101";	-- STA @13                                 	#Armazena o valor do acumulador em (MEM[13])
tmp(30) := "0101000001110";	-- STA @14                                 	#Armazena o valor do acumulador em (MEM[14])
tmp(31) := "0101000001111";	-- STA @15                                 	#Armazena o valor do acumulador em (MEM[15])
tmp(32) := "0101000010000";	-- STA @16                                 	#Armazena o valor do acumulador em (MEM[16])
tmp(33) := "0101000010001";	-- STA @17                                 	#Armazena o valor do acumulador em (MEM[17])
tmp(34) := "0001101100000";	-- LDA @352                   	#Carrega o acumulador com o valor de key0
tmp(35) := "1000000000110";	-- CEQ @6                                  	#Verifica se foi apertado
tmp(36) := "0111000100110";	-- JEQ LABEL_VERIFICA_RESET                        	#Se não foi apertado, verifica RESET
tmp(37) := "1001000110111";	-- JSR LABEL_INC_SU                                	#Se foi, vai pra sub-rotina de incrementar os segundos
tmp(38) := "0001101100100";	-- LDA @356            	#Armazena o valor do botão reset no acumulador
tmp(39) := "1000000000110";	-- CEQ @6                                  	#Verifica se o RESET foi apertado
tmp(40) := "0111000101010";	-- JEQ LABEL_ATUALIZA_DISPLAY                      	#Se o botão reset não foi apertado, atualiza os displays
tmp(41) := "0110000000000";	-- JMP LABEL_SETUP                                 	#Se foi apertado, volta pro inívio do código
tmp(42) := "0001000000000";	-- LDA @0    	#Coloca o valor da @0 no acumulador
tmp(43) := "0101100100000";	-- STA @288                                        	#Armazena no @288
tmp(44) := "0001000000001";	-- LDA @1                             	#Coloca o valor da @1 no acumulador
tmp(45) := "0101100100001";	-- STA @289                                        	#Armazena no @289
tmp(46) := "0001000000010";	-- LDA @2                             	#Coloca o valor da @2 no acumulador
tmp(47) := "0101100100010";	-- STA @290                                        	#Armazena no @290
tmp(48) := "0001000000011";	-- LDA @3                              	#Coloca o valor de @3 no acumulador
tmp(49) := "0101100100011";	-- STA @291                                        	#Armazena no @291
tmp(50) := "0001000000100";	-- LDA @4                               	#Coloca o valor de @4 no acumulador
tmp(51) := "0101100100100";	-- STA @292                                        	#Armazena no @292
tmp(52) := "0001000000101";	-- LDA @5                                	#Coloca o valor de @5 no acumulador
tmp(53) := "0101100100101";	-- STA @293                                        	#Armazena no @293
tmp(54) := "0110000100010";	-- JMP LABEL_VERIFICA_KEY0                         	#Volta a verificar se @352 está sendo apertado
tmp(55) := "0100000000000";	-- LDI $0                            	#Armazena o valor 0 no acumulador
tmp(56) := "0101111111111";	-- STA @511                                        	#Armazena o valor do acumulador no endereço 511 (Utilizado para limpar o flipflop do debounce)
tmp(57) := "0001000000000";	-- LDA @0                            	#Armazena o valor @0 no acumulador
tmp(58) := "0010000000111";	-- SOMA @7                                   	#Soma o valor do acumulador com @7 e joga no acumulador
tmp(59) := "1000000001011";	-- CEQ @11		                            	#Compara o valor do acumulador com @11
tmp(60) := "0111000111111";	-- JEQ LABEL_INC_SD                                	#Se for 0 incrementa @1 e zera @0, se não icrementa @0 e retorna
tmp(61) := "0101000000000";	-- STA @0                            	#Armazena o valor do acumulador em @0
tmp(62) := "1010000000000";	-- RET                                             	#Retorna sub-rotina
tmp(63) := "0100000000000";	-- LDI $0                            	#Armazena o valor 0 no acumulador
tmp(64) := "0101000000000";	-- STA @0                            	#Armazena o valor do acumulador em @0
tmp(65) := "0001000000001";	-- LDA @1                             	#Armazena o valor @1 no acumulador
tmp(66) := "0010000000111";	-- SOMA @7                                   	#Soma o valor do acumulador com @7 e joga no acumulador
tmp(67) := "1000000001010";	-- CEQ @10		                            	#Compara o valor do acumulador com @10
tmp(68) := "0111001000111";	-- JEQ LABEL_INC_MU                                	#Se for 0 incrementa @2 e zera @1, se não icrementa @1 e retorna
tmp(69) := "0101000000001";	-- STA @1                             	#Armazena o valor do acumulador em @1
tmp(70) := "1010000000000";	-- RET                                             	#Retorna sub-rotina
tmp(71) := "0100000000000";	-- LDI $0                            	#Armazena o valor 0 no acumulador
tmp(72) := "0101000000001";	-- STA @1                             	#Armazena o valor do acumulador em @1
tmp(73) := "0001000000010";	-- LDA @2                             	#Armazena o valor @2 no acumulador
tmp(74) := "0010000000111";	-- SOMA @7                                   	#Soma o valor do acumulador com @7 e joga no acumulador
tmp(75) := "1000000001011";	-- CEQ @11		                            	#Compara o valor do acumulador com @11
tmp(76) := "0111001001111";	-- JEQ LABEL_INC_MD                                	#Se for 0 incrementa @3 e zera @2, se não icrementa @2 e retorna
tmp(77) := "0101000000010";	-- STA @2                             	#Armazena o valor do acumulador em @2
tmp(78) := "1010000000000";	-- RET                                             	#Retorna sub-rotina
tmp(79) := "0100000000000";	-- LDI $0                            	#Armazena o valor 0 no acumulador
tmp(80) := "0101000000010";	-- STA @2                             	#Armazena o valor do acumulador em @2
tmp(81) := "0001000000011";	-- LDA @3                              	#Armazena o valor @3 no acumulador
tmp(82) := "0010000000111";	-- SOMA @7                                   	#Soma o valor do acumulador com @7 e joga no acumulador
tmp(83) := "1000000001010";	-- CEQ @10		                            	#Compara o valor do acumulador com @10
tmp(84) := "0111001010111";	-- JEQ LABEL_INC_HU                                	#Se for 0 incrementa @4 e zera @3, se não icrementa @3 e retorna
tmp(85) := "0101000000011";	-- STA @3                              	#Armazena o valor do acumulador em @3
tmp(86) := "1010000000000";	-- RET                                             	#Retorna sub-rotina
tmp(87) := "0100000000000";	-- LDI $0                            	#Armazena o valor 0 no acumulador
tmp(88) := "0101000000011";	-- STA @3                              	#Armazena o valor do acumulador em @3
tmp(89) := "0001000010001";	-- LDA @17                                 	#Armazena o valor @17 no acumulador
tmp(90) := "1000000000110";	-- CEQ @6                                  	#Compara @17 com o valor zero
tmp(91) := "0111001011111";	-- JEQ LABEL_INCREMENTA_HU                         	#Se for @17 for zero, continua incrementando
tmp(92) := "0001000000100";	-- LDA @4                               	#Se não for zero, verifica overflow da @4
tmp(93) := "1000000001001";	-- CEQ @9
tmp(94) := "0111000000000";	-- JEQ LABEL_SETUP
tmp(95) := "0001000000100";	-- LDA @4          	#Armazena o valor @4 no acumulador
tmp(96) := "0010000000111";	-- SOMA @7                                   	#Soma o valor do acumulador com @7 e joga no acumulador
tmp(97) := "1000000001011";	-- CEQ @11		                            	#Compara o valor do acumulador com @11
tmp(98) := "0111001100101";	-- JEQ LABEL_INC_HD                                	#Se for 0 incrementa @3 e zera @4, se não icrementa a @2 e retorna
tmp(99) := "0101000000100";	-- STA @4                               	#Armazena o valor do acumulador em @4
tmp(100) := "1010000000000";	-- RET                                             	#Retorna sub-rotina
tmp(101) := "0100000000000";	-- LDI $0                            	#Armazena o valor 0 no acumulador
tmp(102) := "0101000000100";	-- STA @4                               	#Armazena o valor do acumulador em @2
tmp(103) := "0001000010001";	-- LDA @17
tmp(104) := "1000000000111";	-- CEQ @7
tmp(105) := "0111001110101";	-- JEQ LABEL_RETORNO                               	#Se a flag @17 estiver 1, já faz o retorno
tmp(106) := "0001000000101";	-- LDA @5                                	#Armazena o valor @2 no acumulador
tmp(107) := "0010000000111";	-- SOMA @7                                   	#Soma o valor do acumulador com @7 e joga no acumulador
tmp(108) := "1000000001000";	-- CEQ @8		                            	#Compara o valor do acumulador com @8
tmp(109) := "0111001110000";	-- JEQ LABEL_OF_HD                                 	#Se for 0 incrementa @3 e zera @0, se não icrementa a @2 e retorna
tmp(110) := "0101000000101";	-- STA @5                                	#Armazena o valor do acumulador em @5
tmp(111) := "1010000000000";	-- RET                                             	#Retorna sub-rotina
tmp(112) := "0100000000001";	-- LDI $1                             	#Armazena o valor 1 no acumulador
tmp(113) := "0101000010001";	-- STA @17                                 	#Deixa 1 na flaga @17
tmp(114) := "0100000000010";	-- LDI $2
tmp(115) := "0101000000101";	-- STA @5
tmp(116) := "1010000000000";	-- RET
tmp(117) := "1010000000000";	-- RET

            
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;