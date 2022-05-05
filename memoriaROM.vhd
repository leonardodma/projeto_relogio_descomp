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
  
tmp(0) := "010000000000000";	-- LDI $0                             	#Carrega o acumulador com o valor 0
tmp(1) := "010100100100000";	-- STA @288		                                	#Armazena o valor do acumulador em @288
tmp(2) := "010100100100001";	-- STA @289		                                	#Armazena o valor do acumulador em @289
tmp(3) := "010100100100010";	-- STA @290		                                	#Armazena o valor do acumulador em @290
tmp(4) := "010100100100011";	-- STA @291		                                	#Armazena o valor do acumulador em @291
tmp(5) := "010100100100100";	-- STA @292		                                	#Armazena o valor do acumulador em @292
tmp(6) := "010100100100101";	-- STA @293		                                	#Armazena o valor do acumulador em @293
tmp(7) := "010100101000000";	-- STA @320	                                    	#Armazena o valor do bit0 do acumulador no SW0 ~ 7
tmp(8) := "010100101000001";	-- STA @321	                                        	#Armazena o valor do bit0 do acumulador no @321
tmp(9) := "010100101000010";	-- STA @322	                                        	#Armazena o valor do bit0 do acumulador no @322
tmp(10) := "010100100000000";	-- STA @256
tmp(11) := "010100100000001";	-- STA @257
tmp(12) := "010100100000010";	-- STA @258
tmp(13) := "010100000000000";	-- STA @0                            	#Armazena o valor do acumulador em (MEM[0])
tmp(14) := "010100000000001";	-- STA @1		                        	#Armazena o valor do acumulador em (MEM[1])
tmp(15) := "010100000000010";	-- STA @2		                        	#Armazena o valor do acumulador em (MEM[2])
tmp(16) := "010100000000011";	-- STA @3                              	#Armazena o valor do acumulador em (MEM[3])
tmp(17) := "010100000000100";	-- STA @4                               	#Armazena o valor do acumulador em (MEM[4])
tmp(18) := "010100000000101";	-- STA @5                                	#Armazena o valor do acumulador em (MEM[5])
tmp(19) := "010100000000110";	-- STA @6                                  	#Armazena o valor do acumulador em (MEM[6])
tmp(20) := "010000000000001";	-- LDI $1                                          	#Carrega o acumulador com o valor 1
tmp(21) := "010100000000111";	-- STA @7                                    	#Armazena o valor do acumulador em (MEM[7])
tmp(22) := "010000000000010";	-- LDI $2                                          	#Carrega o acumulador com o valor 2
tmp(23) := "010100000001000";	-- STA @8                                  	#Armazena o valor do acumulador em (MEM[8])
tmp(24) := "010000000000011";	-- LDI $3                                          	#Carrega o acumulador com o valor 3
tmp(25) := "010100000001001";	-- STA @9                                  	#Armazena o valor do acumulador em (MEM[9])
tmp(26) := "010000000000110";	-- LDI $6                                          	#Carrega o acumulador com o valor 6
tmp(27) := "010100000001010";	-- STA @10                                  	#Armazena o valor do acumulador em (MEM[10])
tmp(28) := "010000000001010";	-- LDI $10                                         	#Carrega o acumulador com o valor 10
tmp(29) := "010100000001011";	-- STA @11                                   	#Armazena o valor do acumulador em (MEM[11])
tmp(30) := "010000000000000";	-- LDI $0                                          	#Carrega o acumulador com o valor 0
tmp(31) := "010100000001100";	-- STA @12                                 	#Armazena o valor do acumulador em (MEM[12])
tmp(32) := "010100000001101";	-- STA @13                                 	#Armazena o valor do acumulador em (MEM[13])
tmp(33) := "010100000001110";	-- STA @14                                 	#Armazena o valor do acumulador em (MEM[14])
tmp(34) := "010100000001111";	-- STA @15                                 	#Armazena o valor do acumulador em (MEM[15])
tmp(35) := "010100000010000";	-- STA @16                                 	#Armazena o valor do acumulador em (MEM[16])
tmp(36) := "010100000010001";	-- STA @17                                 	#Armazena o valor do acumulador em (MEM[17])
tmp(37) := "000100101100000";	-- LDA @352                   	#Carrega o acumulador com o valor de key0
tmp(38) := "100000000000110";	-- CEQ @6                                  	#Verifica se foi apertado
tmp(39) := "011100000101001";	-- JEQ LABEL_VERIFICA_KEY1                         	#Se não foi apertado, verifica KEY1
tmp(40) := "100100000111111";	-- JSR LABEL_INC_SU                                	#Se foi, vai pra sub-rotina de configurar o horário
tmp(41) := "000100101100001";	-- LDA @353                   	#Carrega o acumulador com o valor de key1
tmp(42) := "100000000000110";	-- CEQ @6                                  	#Verifica se foi apertado
tmp(43) := "011100000101110";	-- JEQ LABEL_VERIFICA_RESET                        	#Se não foi apertado, verifica RESET
tmp(44) := "010100111111110";	-- STA @510
tmp(45) := "100100001111101";	-- JSR LABEL_CONFIGURA_SU                          	#Se foi, vai pra sub-rotina de incrementar os segundos
tmp(46) := "000100101100100";	-- LDA @356            	#Armazena o valor do botão reset no acumulador
tmp(47) := "100000000000110";	-- CEQ @6                                  	#Verifica se o RESET foi apertado
tmp(48) := "011100000110010";	-- JEQ LABEL_ATUALIZA_DISPLAY                      	#Se o botão reset não foi apertado, atualiza os displays
tmp(49) := "011000000000000";	-- JMP LABEL_SETUP                                 	#Se foi apertado, volta pro inívio do código
tmp(50) := "000100000000000";	-- LDA @0    	#Coloca o valor da @0 no acumulador
tmp(51) := "010100100100000";	-- STA @288                                        	#Armazena no @288
tmp(52) := "000100000000001";	-- LDA @1                             	#Coloca o valor da @1 no acumulador
tmp(53) := "010100100100001";	-- STA @289                                        	#Armazena no @289
tmp(54) := "000100000000010";	-- LDA @2                             	#Coloca o valor da @2 no acumulador
tmp(55) := "010100100100010";	-- STA @290                                        	#Armazena no @290
tmp(56) := "000100000000011";	-- LDA @3                              	#Coloca o valor de @3 no acumulador
tmp(57) := "010100100100011";	-- STA @291                                        	#Armazena no @291
tmp(58) := "000100000000100";	-- LDA @4                               	#Coloca o valor de @4 no acumulador
tmp(59) := "010100100100100";	-- STA @292                                        	#Armazena no @292
tmp(60) := "000100000000101";	-- LDA @5                                	#Coloca o valor de @5 no acumulador
tmp(61) := "010100100100101";	-- STA @293                                        	#Armazena no @293
tmp(62) := "011000000100101";	-- JMP LABEL_VERIFICA_KEY0                         	#Volta a verificar se @352 está sendo apertado
tmp(63) := "010000000000000";	-- LDI $0                            	#Armazena o valor 0 no acumulador
tmp(64) := "010100111111111";	-- STA @511                                        	#Armazena o valor do acumulador no endereço 511 (Utilizado para limpar o flipflop do debounce)
tmp(65) := "000100000000000";	-- LDA @0                            	#Armazena o valor @0 no acumulador
tmp(66) := "001000000000111";	-- SOMA @7                                   	#Soma o valor do acumulador com @7 e joga no acumulador
tmp(67) := "100000000001011";	-- CEQ @11		                            	#Compara o valor do acumulador com @11
tmp(68) := "011100001000111";	-- JEQ LABEL_INC_SD                                	#Se for 0 incrementa @1 e zera @0, se não icrementa @0 e retorna
tmp(69) := "010100000000000";	-- STA @0                            	#Armazena o valor do acumulador em @0
tmp(70) := "101000000000000";	-- RET                                             	#Retorna sub-rotina
tmp(71) := "010000000000000";	-- LDI $0                            	#Armazena o valor 0 no acumulador
tmp(72) := "010100000000000";	-- STA @0                            	#Armazena o valor do acumulador em @0
tmp(73) := "000100000000001";	-- LDA @1                             	#Armazena o valor @1 no acumulador
tmp(74) := "001000000000111";	-- SOMA @7                                   	#Soma o valor do acumulador com @7 e joga no acumulador
tmp(75) := "100000000001010";	-- CEQ @10		                            	#Compara o valor do acumulador com @10
tmp(76) := "011100001001111";	-- JEQ LABEL_INC_MU                                	#Se for 0 incrementa @2 e zera @1, se não icrementa @1 e retorna
tmp(77) := "010100000000001";	-- STA @1                             	#Armazena o valor do acumulador em @1
tmp(78) := "101000000000000";	-- RET                                             	#Retorna sub-rotina
tmp(79) := "010000000000000";	-- LDI $0                            	#Armazena o valor 0 no acumulador
tmp(80) := "010100000000001";	-- STA @1                             	#Armazena o valor do acumulador em @1
tmp(81) := "000100000000010";	-- LDA @2                             	#Armazena o valor @2 no acumulador
tmp(82) := "001000000000111";	-- SOMA @7                                   	#Soma o valor do acumulador com @7 e joga no acumulador
tmp(83) := "100000000001011";	-- CEQ @11		                            	#Compara o valor do acumulador com @11
tmp(84) := "011100001010111";	-- JEQ LABEL_INC_MD                                	#Se for 0 incrementa @3 e zera @2, se não icrementa @2 e retorna
tmp(85) := "010100000000010";	-- STA @2                             	#Armazena o valor do acumulador em @2
tmp(86) := "101000000000000";	-- RET                                             	#Retorna sub-rotina
tmp(87) := "010000000000000";	-- LDI $0                            	#Armazena o valor 0 no acumulador
tmp(88) := "010100000000010";	-- STA @2                             	#Armazena o valor do acumulador em @2
tmp(89) := "000100000000011";	-- LDA @3                              	#Armazena o valor @3 no acumulador
tmp(90) := "001000000000111";	-- SOMA @7                                   	#Soma o valor do acumulador com @7 e joga no acumulador
tmp(91) := "100000000001010";	-- CEQ @10		                            	#Compara o valor do acumulador com @10
tmp(92) := "011100001011111";	-- JEQ LABEL_INC_HU                                	#Se for 0 incrementa @4 e zera @3, se não icrementa @3 e retorna
tmp(93) := "010100000000011";	-- STA @3                              	#Armazena o valor do acumulador em @3
tmp(94) := "101000000000000";	-- RET                                             	#Retorna sub-rotina
tmp(95) := "010000000000000";	-- LDI $0                            	#Armazena o valor 0 no acumulador
tmp(96) := "010100000000011";	-- STA @3                              	#Armazena o valor do acumulador em @3
tmp(97) := "000100000010001";	-- LDA @17                                 	#Armazena o valor @17 no acumulador
tmp(98) := "100000000000110";	-- CEQ @6                                  	#Compara @17 com o valor zero
tmp(99) := "011100001100111";	-- JEQ LABEL_INCREMENTA_HU                         	#Se for @17 for zero, continua incrementando
tmp(100) := "000100000000100";	-- LDA @4                               	#Se não for zero, verifica overflow da @4
tmp(101) := "100000000001001";	-- CEQ @9
tmp(102) := "011100000000000";	-- JEQ LABEL_SETUP
tmp(103) := "000100000000100";	-- LDA @4          	#Armazena o valor @4 no acumulador
tmp(104) := "001000000000111";	-- SOMA @7                                   	#Soma o valor do acumulador com @7 e joga no acumulador
tmp(105) := "100000000001011";	-- CEQ @11		                            	#Compara o valor do acumulador com @11
tmp(106) := "011100001101101";	-- JEQ LABEL_INC_HD                                	#Se for 0 incrementa @3 e zera @4, se não icrementa a @2 e retorna
tmp(107) := "010100000000100";	-- STA @4                               	#Armazena o valor do acumulador em @4
tmp(108) := "101000000000000";	-- RET                                             	#Retorna sub-rotina
tmp(109) := "010000000000000";	-- LDI $0                            	#Armazena o valor 0 no acumulador
tmp(110) := "010100000000100";	-- STA @4                               	#Armazena o valor do acumulador em @2
tmp(111) := "000100000010001";	-- LDA @17
tmp(112) := "100000000000111";	-- CEQ @7
tmp(113) := "011100010110110";	-- JEQ LABEL_RETORNO                               	#Se a flag @17 estiver 1, já faz o retorno
tmp(114) := "000100000000101";	-- LDA @5                                	#Armazena o valor @2 no acumulador
tmp(115) := "001000000000111";	-- SOMA @7                                   	#Soma o valor do acumulador com @7 e joga no acumulador
tmp(116) := "100000000001000";	-- CEQ @8		                            	#Compara o valor do acumulador com @8
tmp(117) := "011100001111000";	-- JEQ LABEL_OF_HD                                 	#Se for 0 incrementa @3 e zera @0, se não icrementa a @2 e retorna
tmp(118) := "010100000000101";	-- STA @5                                	#Armazena o valor do acumulador em @5
tmp(119) := "101000000000000";	-- RET                                             	#Retorna sub-rotina
tmp(120) := "010000000000001";	-- LDI $1                             	#Armazena o valor 1 no acumulador
tmp(121) := "010100000010001";	-- STA @17                                 	#Deixa 1 na flaga @17
tmp(122) := "010000000000010";	-- LDI $2
tmp(123) := "010100000000101";	-- STA @5
tmp(124) := "101000000000000";	-- RET
tmp(125) := "010000000000001";	-- LDI $1
tmp(126) := "010100100000000";	-- STA @256
tmp(127) := "000100101000000";	-- LDA @320
tmp(128) := "010100000000000";	-- STA @0
tmp(129) := "010100100100000";	-- STA @288
tmp(130) := "000100101100001";	-- LDA @353
tmp(131) := "100000000000110";	-- CEQ @6
tmp(132) := "011100001111101";	-- JEQ LABEL_CONFIGURA_SU
tmp(133) := "010100111111110";	-- STA @510
tmp(134) := "010000000000010";	-- LDI $2
tmp(135) := "010100100000000";	-- STA @256
tmp(136) := "000100101000000";	-- LDA @320
tmp(137) := "010100000000001";	-- STA @1
tmp(138) := "010100100100001";	-- STA @289
tmp(139) := "000100101100001";	-- LDA @353
tmp(140) := "100000000000110";	-- CEQ @6
tmp(141) := "011100010000110";	-- JEQ LABEL_CONFIGURA_SD
tmp(142) := "010100111111110";	-- STA @510
tmp(143) := "010000000000100";	-- LDI $4
tmp(144) := "010100100000000";	-- STA @256
tmp(145) := "000100101000000";	-- LDA @320
tmp(146) := "010100000000010";	-- STA @2
tmp(147) := "010100100100010";	-- STA @290
tmp(148) := "000100101100001";	-- LDA @353
tmp(149) := "100000000000110";	-- CEQ @6
tmp(150) := "011100010001111";	-- JEQ LABEL_CONFIGURA_MU
tmp(151) := "010100111111110";	-- STA @510
tmp(152) := "010000000001000";	-- LDI $8
tmp(153) := "010100100000000";	-- STA @256
tmp(154) := "000100101000000";	-- LDA @320
tmp(155) := "010100000000011";	-- STA @3
tmp(156) := "010100100100011";	-- STA @291
tmp(157) := "000100101100001";	-- LDA @353
tmp(158) := "100000000000110";	-- CEQ @6
tmp(159) := "011100010011000";	-- JEQ LABEL_CONFIGURA_MD
tmp(160) := "010100111111110";	-- STA @510
tmp(161) := "010000000010000";	-- LDI $16
tmp(162) := "010100100000000";	-- STA @256
tmp(163) := "000100101000000";	-- LDA @320
tmp(164) := "010100000000100";	-- STA @4
tmp(165) := "010100100100100";	-- STA @292
tmp(166) := "000100101100001";	-- LDA @353
tmp(167) := "100000000000110";	-- CEQ @6
tmp(168) := "011100010100001";	-- JEQ LABEL_CONFIGURA_HU
tmp(169) := "010100111111110";	-- STA @510
tmp(170) := "010000000100000";	-- LDI $32
tmp(171) := "010100100000000";	-- STA @256
tmp(172) := "000100101000000";	-- LDA @320
tmp(173) := "010100000000101";	-- STA @5
tmp(174) := "010100100100101";	-- STA @293
tmp(175) := "000100101100001";	-- LDA @353
tmp(176) := "100000000000110";	-- CEQ @6
tmp(177) := "011100010101010";	-- JEQ LABEL_CONFIGURA_HD
tmp(178) := "010000000000000";	-- LDI $0
tmp(179) := "010100100000000";	-- STA @256
tmp(180) := "011000000101110";	-- JMP LABEL_VERIFICA_RESET
tmp(181) := "101000000000000";	-- RET
tmp(182) := "101000000000000";	-- RET

                        
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;