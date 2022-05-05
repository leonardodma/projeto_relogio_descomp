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
tmp(7) := "0101101000000";	-- STA @320	                                    	#Armazena o valor do bit0 do acumulador no SW0 ~ 7
tmp(8) := "0101101000001";	-- STA @321	                                        	#Armazena o valor do bit0 do acumulador no @321
tmp(9) := "0101101000010";	-- STA @322	                                        	#Armazena o valor do bit0 do acumulador no @322
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
tmp(34) := "0101000010010";	-- STA @18                                	#Armazena o valor do acumulador em (MEM[18])
tmp(35) := "0001101100000";	-- LDA @352                   	#Carrega o acumulador com o valor de key0
tmp(36) := "1000000000110";	-- CEQ @6                                  	#Verifica se foi apertado
tmp(37) := "0111000100111";	-- JEQ LABEL_VERIFICA_KEY1                         	#Se não foi apertado, verifica KEY1
tmp(38) := "1001000111100";	-- JSR LABEL_INC_SU                                	#Se foi, vai pra sub-rotina de configurar o horário
tmp(39) := "0001101100001";	-- LDA @353                   	#Carrega o acumulador com o valor de key1
tmp(40) := "1000000000110";	-- CEQ @6                                  	#Verifica se foi apertado
tmp(41) := "0111000101011";	-- JEQ LABEL_VERIFICA_RESET                        	#Se não foi apertado, verifica RESET
tmp(42) := "1001001111010";	-- JSR LABEL_CONFIGURA_SU                     	#Se foi, vai pra sub-rotina de incrementar os segundos
tmp(43) := "0001101100100";	-- LDA @356            	#Armazena o valor do botão reset no acumulador
tmp(44) := "1000000000110";	-- CEQ @6                                  	#Verifica se o RESET foi apertado
tmp(45) := "0111000101111";	-- JEQ LABEL_ATUALIZA_DISPLAY                      	#Se o botão reset não foi apertado, atualiza os displays
tmp(46) := "0110000000000";	-- JMP LABEL_SETUP                                 	#Se foi apertado, volta pro inívio do código
tmp(47) := "0001000000000";	-- LDA @0    	#Coloca o valor da @0 no acumulador
tmp(48) := "0101100100000";	-- STA @288                                        	#Armazena no @288
tmp(49) := "0001000000001";	-- LDA @1                             	#Coloca o valor da @1 no acumulador
tmp(50) := "0101100100001";	-- STA @289                                        	#Armazena no @289
tmp(51) := "0001000000010";	-- LDA @2                             	#Coloca o valor da @2 no acumulador
tmp(52) := "0101100100010";	-- STA @290                                        	#Armazena no @290
tmp(53) := "0001000000011";	-- LDA @3                              	#Coloca o valor de @3 no acumulador
tmp(54) := "0101100100011";	-- STA @291                                        	#Armazena no @291
tmp(55) := "0001000000100";	-- LDA @4                               	#Coloca o valor de @4 no acumulador
tmp(56) := "0101100100100";	-- STA @292                                        	#Armazena no @292
tmp(57) := "0001000000101";	-- LDA @5                                	#Coloca o valor de @5 no acumulador
tmp(58) := "0101100100101";	-- STA @293                                        	#Armazena no @293
tmp(59) := "0110000100011";	-- JMP LABEL_VERIFICA_KEY0                         	#Volta a verificar se @352 está sendo apertado
tmp(60) := "0100000000000";	-- LDI $0                            	#Armazena o valor 0 no acumulador
tmp(61) := "0101111111111";	-- STA @511                                        	#Armazena o valor do acumulador no endereço 511 (Utilizado para limpar o flipflop do debounce)
tmp(62) := "0001000000000";	-- LDA @0                            	#Armazena o valor @0 no acumulador
tmp(63) := "0010000000111";	-- SOMA @7                                   	#Soma o valor do acumulador com @7 e joga no acumulador
tmp(64) := "1000000001011";	-- CEQ @11		                            	#Compara o valor do acumulador com @11
tmp(65) := "0111001000100";	-- JEQ LABEL_INC_SD                                	#Se for 0 incrementa @1 e zera @0, se não icrementa @0 e retorna
tmp(66) := "0101000000000";	-- STA @0                            	#Armazena o valor do acumulador em @0
tmp(67) := "1010000000000";	-- RET                                             	#Retorna sub-rotina
tmp(68) := "0100000000000";	-- LDI $0                            	#Armazena o valor 0 no acumulador
tmp(69) := "0101000000000";	-- STA @0                            	#Armazena o valor do acumulador em @0
tmp(70) := "0001000000001";	-- LDA @1                             	#Armazena o valor @1 no acumulador
tmp(71) := "0010000000111";	-- SOMA @7                                   	#Soma o valor do acumulador com @7 e joga no acumulador
tmp(72) := "1000000001010";	-- CEQ @10		                            	#Compara o valor do acumulador com @10
tmp(73) := "0111001001100";	-- JEQ LABEL_INC_MU                                	#Se for 0 incrementa @2 e zera @1, se não icrementa @1 e retorna
tmp(74) := "0101000000001";	-- STA @1                             	#Armazena o valor do acumulador em @1
tmp(75) := "1010000000000";	-- RET                                             	#Retorna sub-rotina
tmp(76) := "0100000000000";	-- LDI $0                            	#Armazena o valor 0 no acumulador
tmp(77) := "0101000000001";	-- STA @1                             	#Armazena o valor do acumulador em @1
tmp(78) := "0001000000010";	-- LDA @2                             	#Armazena o valor @2 no acumulador
tmp(79) := "0010000000111";	-- SOMA @7                                   	#Soma o valor do acumulador com @7 e joga no acumulador
tmp(80) := "1000000001011";	-- CEQ @11		                            	#Compara o valor do acumulador com @11
tmp(81) := "0111001010100";	-- JEQ LABEL_INC_MD                                	#Se for 0 incrementa @3 e zera @2, se não icrementa @2 e retorna
tmp(82) := "0101000000010";	-- STA @2                             	#Armazena o valor do acumulador em @2
tmp(83) := "1010000000000";	-- RET                                             	#Retorna sub-rotina
tmp(84) := "0100000000000";	-- LDI $0                            	#Armazena o valor 0 no acumulador
tmp(85) := "0101000000010";	-- STA @2                             	#Armazena o valor do acumulador em @2
tmp(86) := "0001000000011";	-- LDA @3                              	#Armazena o valor @3 no acumulador
tmp(87) := "0010000000111";	-- SOMA @7                                   	#Soma o valor do acumulador com @7 e joga no acumulador
tmp(88) := "1000000001010";	-- CEQ @10		                            	#Compara o valor do acumulador com @10
tmp(89) := "0111001011100";	-- JEQ LABEL_INC_HU                                	#Se for 0 incrementa @4 e zera @3, se não icrementa @3 e retorna
tmp(90) := "0101000000011";	-- STA @3                              	#Armazena o valor do acumulador em @3
tmp(91) := "1010000000000";	-- RET                                             	#Retorna sub-rotina
tmp(92) := "0100000000000";	-- LDI $0                            	#Armazena o valor 0 no acumulador
tmp(93) := "0101000000011";	-- STA @3                              	#Armazena o valor do acumulador em @3
tmp(94) := "0001000010001";	-- LDA @17                                 	#Armazena o valor @17 no acumulador
tmp(95) := "1000000000110";	-- CEQ @6                                  	#Compara @17 com o valor zero
tmp(96) := "0111001100100";	-- JEQ LABEL_INCREMENTA_HU                         	#Se for @17 for zero, continua incrementando
tmp(97) := "0001000000100";	-- LDA @4                               	#Se não for zero, verifica overflow da @4
tmp(98) := "1000000001001";	-- CEQ @9
tmp(99) := "0111000000000";	-- JEQ LABEL_SETUP
tmp(100) := "0001000000100";	-- LDA @4          	#Armazena o valor @4 no acumulador
tmp(101) := "0010000000111";	-- SOMA @7                                   	#Soma o valor do acumulador com @7 e joga no acumulador
tmp(102) := "1000000001011";	-- CEQ @11		                            	#Compara o valor do acumulador com @11
tmp(103) := "0111001101010";	-- JEQ LABEL_INC_HD                                	#Se for 0 incrementa @3 e zera @4, se não icrementa a @2 e retorna
tmp(104) := "0101000000100";	-- STA @4                               	#Armazena o valor do acumulador em @4
tmp(105) := "1010000000000";	-- RET                                             	#Retorna sub-rotina
tmp(106) := "0100000000000";	-- LDI $0                            	#Armazena o valor 0 no acumulador
tmp(107) := "0101000000100";	-- STA @4                               	#Armazena o valor do acumulador em @2
tmp(108) := "0001000010001";	-- LDA @17
tmp(109) := "1000000000111";	-- CEQ @7
tmp(110) := "0111010001100";	-- JEQ LABEL_RETORNO                               	#Se a flag @17 estiver 1, já faz o retorno
tmp(111) := "0001000000101";	-- LDA @5                                	#Armazena o valor @2 no acumulador
tmp(112) := "0010000000111";	-- SOMA @7                                   	#Soma o valor do acumulador com @7 e joga no acumulador
tmp(113) := "1000000001000";	-- CEQ @8		                            	#Compara o valor do acumulador com @8
tmp(114) := "0111001110101";	-- JEQ LABEL_OF_HD                                 	#Se for 0 incrementa @3 e zera @0, se não icrementa a @2 e retorna
tmp(115) := "0101000000101";	-- STA @5                                	#Armazena o valor do acumulador em @5
tmp(116) := "1010000000000";	-- RET                                             	#Retorna sub-rotina
tmp(117) := "0100000000001";	-- LDI $1                             	#Armazena o valor 1 no acumulador
tmp(118) := "0101000010001";	-- STA @17                                 	#Deixa 1 na flaga @17
tmp(119) := "0100000000010";	-- LDI $2
tmp(120) := "0101000000101";	-- STA @5
tmp(121) := "1010000000000";	-- RET
tmp(122) := "0001101100010";	-- LDA @354                    	#Carrega o acumulador com o valor de key2
tmp(123) := "1000000000110";	-- CEQ @6                                  	#Verifica se foi apertado
tmp(124) := "0111010000111";	-- JEQ LABEL_VERIFICA_SAIDA_SU                     	#Se não foi, verifica se o key1 foi apartado para configurar a dezena dos segundos
tmp(125) := "0001000000000";	-- LDA @0                            	#Armazena o valor @0 no acumulador
tmp(126) := "0010000000111";	-- SOMA @7
tmp(127) := "1000000001011";	-- CEQ @11
tmp(128) := "0111010000011";	-- JEQ LABEL_ZERA_SU
tmp(129) := "0101000000000";	-- STA @0
tmp(130) := "0110010000101";	-- JMP LABEL_ATUALIZA_HEX_SU
tmp(131) := "0100000000000";	-- LDI $0
tmp(132) := "0101000000000";	-- STA @0
tmp(133) := "0001000000000";	-- LDA @0
tmp(134) := "0101100100000";	-- STA @288
tmp(135) := "0001101100001";	-- LDA @353               	#Carrega o acumulador com o valor de key1
tmp(136) := "1000000000111";	-- CEQ @7
tmp(137) := "0111010001011";	-- JEQ LABEL_CONFIGURA_SD
tmp(138) := "0110001111010";	-- JMP LABEL_CONFIGURA_SU
tmp(139) := "1010000000000";	-- RET
tmp(140) := "1010000000000";	-- RET


            
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;