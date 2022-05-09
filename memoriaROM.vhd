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
  
-- #LABEL_SETUP:
tmp(0) := "010000000000000";	-- LDI R1, $0 	#Carrega o R1 com o valor 0
tmp(1) := "010100100100000";	-- STA R1, @288 	#Armazena o valor do R1 em @288
tmp(2) := "010100100100001";	-- STA R1, @289 	#Armazena o valor do R1 em @289
tmp(3) := "010100100100010";	-- STA R1, @290 	#Armazena o valor do R1 em @290
tmp(4) := "010100100100011";	-- STA R1, @291 	#Armazena o valor do R1 em @291
tmp(5) := "010100100100100";	-- STA R1, @292 	#Armazena o valor do R1 em @292
tmp(6) := "010100100100101";	-- STA R1, @293 	#Armazena o valor do R1 em @293
tmp(7) := "010100101000000";	-- STA R1, @320 	#Armazena o valor em SW0 ~ 7
tmp(8) := "010100101000001";	-- STA R1, @321 	#Armazena o valor do bit0 do R1 no @321
tmp(9) := "010100101000010";	-- STA R1, @322 	#Armazena o valor do bit0 do R1 no @322
tmp(10) := "010100100000000";	-- STA R1, @256
tmp(11) := "010100100000001";	-- STA R1, @257
tmp(12) := "010100100000010";	-- STA R1, @258
tmp(13) := "010100000000000";	-- STA R1, @0 	#Armazena o valor do R1 em (MEM[0])
tmp(14) := "010100000000001";	-- STA R1, @1 	#Armazena o valor do R1 em (MEM[1])
tmp(15) := "010100000000010";	-- STA R1, @2 	#Armazena o valor do R1 em (MEM[2])
tmp(16) := "010100000000011";	-- STA R1, @3 	#Armazena o valor do R1 em (MEM[3])
tmp(17) := "010100000000100";	-- STA R1, @4 	#Armazena o valor do R1 em (MEM[4])
tmp(18) := "010100000000101";	-- STA R1, @5 	#Armazena o valor do R1 em (MEM[5])
tmp(19) := "010100000000110";	-- STA R1, @6 	#Armazena o valor do R1 em (MEM[6])
tmp(20) := "010000000000001";	-- LDI R1, $1 	#Carrega o R1 com o valor 1
tmp(21) := "010100000000111";	-- STA R1, @7 	#Armazena o valor do R1 em (MEM[7])
tmp(22) := "010000000000010";	-- LDI R1, $2 	#Carrega o R1 com o valor 2
tmp(23) := "010100000001000";	-- STA R1, @8 	#Armazena o valor do R1 em (MEM[8])
tmp(24) := "010000000000011";	-- LDI R1, $3 	#Carrega o R1 com o valor 3
tmp(25) := "010100000001001";	-- STA R1, @9 	#Armazena o valor do R1 em (MEM[9])
tmp(26) := "010000000000110";	-- LDI R1, $6 	#Carrega o R1 com o valor 6
tmp(27) := "010100000001010";	-- STA R1, @10 	#Armazena o valor do R1 em (MEM[10])
tmp(28) := "010000000001010";	-- LDI R1, $10 	#Carrega o R1 com o valor 10
tmp(29) := "010100000001011";	-- STA R1, @11 	#Armazena o valor do R1 em (MEM[11])
tmp(30) := "010000000000000";	-- LDI R1, $0 	#Carrega o R1 com o valor 0
tmp(31) := "010100000001100";	-- STA R1, @12 	#Armazena o valor do R1 em (MEM[12])
-- #LABEL_VERIFICA_KEY0:
tmp(32) := "000100101100000";	-- LDA R1, @352 	#Carrega o R1 com o valor de key0
tmp(33) := "100000000000110";	-- CEQ R1, @6 	#Verifica se foi apertado
tmp(34) := "011100000100100";	-- JEQ @36 	#Se não foi apertado, verifica @353
tmp(35) := "100100000111010";	-- JSR @58 	#Se foi, vai pra sub-rotina de configurar o horário
-- #LABEL_VERIFICA_KEY1:
tmp(36) := "000100101100001";	-- LDA R1, @353 	#Carrega o R1 com o valor de key1
tmp(37) := "100000000000110";	-- CEQ R1, @6 	#Verifica se foi apertado
tmp(38) := "011100000101001";	-- JEQ @41 	#Se não foi apertado, verifica RESET
tmp(39) := "010100111111110";	-- STA R1, @510
tmp(40) := "100100001111000";	-- JSR @120 	#Se foi, vai pra sub-rotina de incrementar os segundos
-- #LABEL_VERIFICA_RESET:
tmp(41) := "000100101100100";	-- LDA R1, @356 	#Armazena o valor do botão reset no R1
tmp(42) := "100000000000110";	-- CEQ R1, @6 	#Verifica se o RESET foi apertado
tmp(43) := "011100000101101";	-- JEQ @45 	#Se o botão reset não foi apertado, atualiza os displays
tmp(44) := "011000000000000";	-- JMP @0 	#Se foi apertado, volta pro inívio do código
-- #LABEL_ATUALIZA_DISPLAY:
tmp(45) := "000101000000000";	-- LDA R2, @0 	#Coloca o valor da @0 no R2
tmp(46) := "010101100100000";	-- STA R2, @288 	#Armazena no @288
tmp(47) := "000101000000001";	-- LDA R2, @1 	#Coloca o valor da @1 no R2
tmp(48) := "010101100100001";	-- STA R2, @289 	#Armazena no @289
tmp(49) := "000101000000010";	-- LDA R2, @2 	#Coloca o valor da @2 no R2
tmp(50) := "010101100100010";	-- STA R2, @290 	#Armazena no @290
tmp(51) := "000101000000011";	-- LDA R2, @3 	#Coloca o valor de @3 no R2
tmp(52) := "010101100100011";	-- STA R2, @291 	#Armazena no @291
tmp(53) := "000101000000100";	-- LDA R2, @4 	#Coloca o valor de @4 no R2
tmp(54) := "010101100100100";	-- STA R2, @292 	#Armazena no @292
tmp(55) := "000101000000101";	-- LDA R2, @5 	#Coloca o valor de @5 no R2
tmp(56) := "010101100100101";	-- STA R2, @293 	#Armazena no @293
tmp(57) := "011000000100000";	-- JMP @32 	#Volta a verificar se @352 está sendo apertado
-- #LABEL_INC_SU:
tmp(58) := "010000000000000";	-- LDI R1, $0 	#Armazena o valor 0 no R1
tmp(59) := "010100111111111";	-- STA R1, @511 	#Armazena o valor do R1 no endereço 511 (Utilizado para limpar o flipflop do debounce)
tmp(60) := "000100000000000";	-- LDA R1, @0 	#Armazena o valor @0 no R1
tmp(61) := "001000000000111";	-- SOMA R1, @7 	#Soma o valor do R1 com @7 e joga no R1
tmp(62) := "100000000001011";	-- CEQ R1, @11 	#Compara o valor do R1 com @11
tmp(63) := "011100001000010";	-- JEQ R1, @66 	#Se for 0 incrementa @1 e zera SEGUNDOS_UNIDADE, se não icrementa @0 e retorna
tmp(64) := "010100000000000";	-- STA R1, @0 	#Armazena o valor do R1 em @0
tmp(65) := "101000000000000";	-- RET 	#Retorna sub-rotina
-- #LABEL_INC_SD:
tmp(66) := "010000000000000";	-- LDI R1, $0 	#Armazena o valor 0 no R1
tmp(67) := "010100000000000";	-- STA R1, @0 	#Armazena o valor do R1 em @0
tmp(68) := "000100000000001";	-- LDA R1, @1 	#Armazena o valor @1 no R1
tmp(69) := "001000000000111";	-- SOMA R1, @7 	#Soma o valor do R1 com @7 e joga no R1
tmp(70) := "100000000001010";	-- CEQ R1, @10 	#Compara o valor do R1 com @10
tmp(71) := "011100001001010";	-- JEQ @74 	#Se for 0 incrementa @2 e zera SEGUNDOS_DEZENA, se não icrementa @1 e retorna
tmp(72) := "010100000000001";	-- STA R1, @1 	#Armazena o valor do R1 em @1
tmp(73) := "101000000000000";	-- RET 	#Retorna sub-rotina
-- #LABEL_INC_MU:
tmp(74) := "010000000000000";	-- LDI R1, $0 	#Armazena o valor 0 no R1
tmp(75) := "010100000000001";	-- STA R1, @1 	#Armazena o valor do R1 em @1
tmp(76) := "000100000000010";	-- LDA R1, @2 	#Armazena o valor @2 no R1
tmp(77) := "001000000000111";	-- SOMA R1, @7 	#Soma o valor do R1 com @7 e joga no R1
tmp(78) := "100000000001011";	-- CEQ R1, @11 	#Compara o valor do R1 com @11
tmp(79) := "011100001010010";	-- JEQ @82 	#Se for 0 incrementa @3 e zera MINUTOS_UNIDADE, se não icrementa @2 e retorna
tmp(80) := "010100000000010";	-- STA R1, @2 	#Armazena o valor do R1 em @2
tmp(81) := "101000000000000";	-- RET 	#Retorna sub-rotina
-- #LABEL_INC_MD:
tmp(82) := "010000000000000";	-- LDI R1, $0 	#Armazena o valor 0 no R1
tmp(83) := "010100000000010";	-- STA R1, @2 	#Armazena o valor do R1 em @2
tmp(84) := "000100000000011";	-- LDA R1, @3 	#Armazena o valor @3 no R1
tmp(85) := "001000000000111";	-- SOMA R1, @7 	#Soma o valor do R1 com @7 e joga no R1
tmp(86) := "100000000001010";	-- CEQ R1, @10 	#Compara o valor do R1 com @10
tmp(87) := "011100001011010";	-- JEQ @90 	#Se for 0 incrementa @4 e zera MINUTOS_DEZENA, se não icrementa @3 e retorna
tmp(88) := "010100000000011";	-- STA R1, @3 	#Armazena o valor do R1 em @3
tmp(89) := "101000000000000";	-- RET 	#Retorna sub-rotina
-- #LABEL_INC_HU:
tmp(90) := "010000000000000";	-- LDI R1, $0 	#Armazena o valor 0 no R1
tmp(91) := "010100000000011";	-- STA R1, @3 	#Armazena o valor do R1 em @3
tmp(92) := "000100000001100";	-- LDA R1, @12 	#Armazena o valor @12 no R1
tmp(93) := "100000000000110";	-- CEQ R1, @6 	#Compara @12 com o valor zero
tmp(94) := "011100001100010";	-- JEQ @98 	#Se for @12 for zero, continua incrementando
tmp(95) := "000100000000100";	-- LDA R1, @4 	#Se não for zero, verifica overflow da @4
tmp(96) := "100000000001001";	-- CEQ R1, @9
tmp(97) := "011100000000000";	-- JEQ @0
-- #LABEL_INCREMENTA_HU:
tmp(98) := "000100000000100";	-- LDA R1, @4 	#Armazena o valor @4 no R1
tmp(99) := "001000000000111";	-- SOMA R1, @7 	#Soma o valor do R1 com @7 e joga no R1
tmp(100) := "100000000001011";	-- CEQ R1, @11 	#Compara o valor do R1 com @11
tmp(101) := "011100001101000";	-- JEQ @104 	#Se for 0 incrementa @3 e zera HORAS_UNIDADE, se não icrementa a @2 e retorna
tmp(102) := "010100000000100";	-- STA R1, @4 	#Armazena o valor do R1 em @4
tmp(103) := "101000000000000";	-- RET 	#Retorna sub-rotina
-- #LABEL_INC_HD:
tmp(104) := "010000000000000";	-- LDI R1, $0 	#Armazena o valor 0 no R1
tmp(105) := "010100000000100";	-- STA R1, @4 	#Armazena o valor do R1 em @2
tmp(106) := "000100000001100";	-- LDA R1, @12
tmp(107) := "100000000000111";	-- CEQ R1, @7
tmp(108) := "011100010110000";	-- JEQ @176 	#Se a flag @12 estiver 1, já faz o retorno
tmp(109) := "000100000000101";	-- LDA R1, @5 	#Armazena o valor @2 no R1
tmp(110) := "001000000000111";	-- SOMA R1, @7 	#Soma o valor do R1 com @7 e joga no R1
tmp(111) := "100000000001000";	-- CEQ R1, @8 	#Compara o valor do R1 com @8
tmp(112) := "011100001110011";	-- JEQ @115 	#Se for 0 incrementa @3 e zera SEGUNDOS_UNIDADE, se não icrementa a @2 e retorna
tmp(113) := "010100000000101";	-- STA R1, @5 	#Armazena o valor do R1 em @5
tmp(114) := "101000000000000";	-- RET 	#Retorna sub-rotina
-- #LABEL_OF_HD:
tmp(115) := "010000000000001";	-- LDI R1, $1 	#Armazena o valor 1 no R1
tmp(116) := "010100000001100";	-- STA R1, @12 	#Deixa 1 na flaga @12
tmp(117) := "010000000000010";	-- LDI R1, $2
tmp(118) := "010100000000101";	-- STA R1, @5
tmp(119) := "101000000000000";	-- RET
-- #LABEL_CONFIGURA_SU:
tmp(120) := "010000000000001";	-- LDI R1, $1
tmp(121) := "010100100000000";	-- STA R1, @256
tmp(122) := "000100101000000";	-- LDA R1, @320
tmp(123) := "010100000000000";	-- STA R1, @0
tmp(124) := "010100100100000";	-- STA R1, @288
tmp(125) := "000100101100001";	-- LDA R1, @353
tmp(126) := "100000000000110";	-- CEQ R1, @6
tmp(127) := "011100001111000";	-- JEQ @120
tmp(128) := "010100111111110";	-- STA R1, @510
-- #LABEL_CONFIGURA_SD:
tmp(129) := "010000000000010";	-- LDI R1, $2
tmp(130) := "010100100000000";	-- STA R1, @256
tmp(131) := "000100101000000";	-- LDA R1, @320
tmp(132) := "010100000000001";	-- STA R1, @1
tmp(133) := "010100100100001";	-- STA R1, @289
tmp(134) := "000100101100001";	-- LDA R1, @353
tmp(135) := "100000000000110";	-- CEQ R1, @6
tmp(136) := "011100010000001";	-- JEQ @129
tmp(137) := "010100111111110";	-- STA R1, @510
-- #LABEL_CONFIGURA_MU:
tmp(138) := "010000000000100";	-- LDI R1, $4
tmp(139) := "010100100000000";	-- STA R1, @256
tmp(140) := "000100101000000";	-- LDA R1, @320
tmp(141) := "010100000000010";	-- STA R1, @2
tmp(142) := "010100100100010";	-- STA R1, @290
tmp(143) := "000100101100001";	-- LDA R1, @353
tmp(144) := "100000000000110";	-- CEQ R1, @6
tmp(145) := "011100010001010";	-- JEQ @138
tmp(146) := "010100111111110";	-- STA R1, @510
-- #LABEL_CONFIGURA_MD:
tmp(147) := "010000000001000";	-- LDI R1, $8
tmp(148) := "010100100000000";	-- STA R1, @256
tmp(149) := "000100101000000";	-- LDA R1, @320
tmp(150) := "010100000000011";	-- STA R1, @3
tmp(151) := "010100100100011";	-- STA R1, @291
tmp(152) := "000100101100001";	-- LDA R1, @353
tmp(153) := "100000000000110";	-- CEQ R1, @6
tmp(154) := "011100010010011";	-- JEQ @147
tmp(155) := "010100111111110";	-- STA R1, @510
-- #LABEL_CONFIGURA_HU:
tmp(156) := "010000000010000";	-- LDI R1, $16
tmp(157) := "010100100000000";	-- STA R1, @256
tmp(158) := "000100101000000";	-- LDA R1, @320
tmp(159) := "010100000000100";	-- STA R1, @4
tmp(160) := "010100100100100";	-- STA R1, @292
tmp(161) := "000100101100001";	-- LDA R1, @353
tmp(162) := "100000000000110";	-- CEQ R1, @6
tmp(163) := "011100010011100";	-- JEQ @156
tmp(164) := "010100111111110";	-- STA R1, @510
-- #LABEL_CONFIGURA_HD:
tmp(165) := "010000000100000";	-- LDI R1, $32
tmp(166) := "010100100000000";	-- STA R1, @256
tmp(167) := "000100101000000";	-- LDA R1, @320
tmp(168) := "010100000000101";	-- STA R1, @5
tmp(169) := "010100100100101";	-- STA R1, @293
tmp(170) := "000100101100001";	-- LDA R1, @353
tmp(171) := "100000000000110";	-- CEQ R1, @6
tmp(172) := "011100010100101";	-- JEQ @165
tmp(173) := "010000000000000";	-- LDI R1, $0
tmp(174) := "010100100000000";	-- STA R1, @256
tmp(175) := "011000000101001";	-- JMP @41
-- #LABEL_RETORNO:
tmp(176) := "101000000000000";	-- RET



                        
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;