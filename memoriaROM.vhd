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
tmp(7) := "010100100000000";	-- STA R1, @256
tmp(8) := "010100100000001";	-- STA R1, @257
tmp(9) := "010100100000010";	-- STA R1, @258
tmp(10) := "010100101000000";	-- STA R1, @320
tmp(11) := "010100101000001";	-- STA R1, @321
tmp(12) := "010100101000010";	-- STA R1, @322
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
tmp(32) := "010100000001101";	-- STA R1, @13 	#Armazena o valor do R1 em (MEM[13])
tmp(33) := "010100000001110";	-- STA R1, @14
tmp(34) := "010000010000000";	-- LDI R1, $128
tmp(35) := "010100000001111";	-- STA R1, @15
-- #LABEL_VERIFICA_KEY0:
tmp(36) := "000100101100000";	-- LDA R1, @352 	#Carrega o R1 com o valor de key0
tmp(37) := "100000000000110";	-- CEQ R1, @6 	#Verifica se foi apertado
tmp(38) := "011100000101000";	-- JEQ @40 	#Se não foi apertado, verifica @353
tmp(39) := "100100001010000";	-- JSR @80 	#Se foi, vai pra sub-rotina de configurar o horário
-- #LABEL_VERIFICA_KEY1:
tmp(40) := "000100101100001";	-- LDA R1, @353 	#Carrega o R1 com o valor de key1
tmp(41) := "100000000000110";	-- CEQ R1, @6 	#Verifica se foi apertado
tmp(42) := "011100000101101";	-- JEQ @45 	#Se não foi apertado, verifica RESET
tmp(43) := "010100111111110";	-- STA R1, @510
tmp(44) := "100100010001110";	-- JSR @142 	#Se foi, vai pra sub-rotina de incrementar os segundos
-- #LABEL_VERIFICA_PM:
tmp(45) := "000100000001101";	-- LDA R1, @13
tmp(46) := "100000000000111";	-- CEQ R1, @7
tmp(47) := "011100000110001";	-- JEQ @49
tmp(48) := "100100011000110";	-- JSR @198
-- #LABEL_VERIFICA_SW0_7:
tmp(49) := "000100101000000";	-- LDA R1, @320
tmp(50) := "010100100000000";	-- STA R1, @256
tmp(51) := "100000000001111";	-- CEQ R1, @15
tmp(52) := "011100011010001";	-- JEQ @209
tmp(53) := "010000000000000";	-- LDI R1, $0
tmp(54) := "010100000001110";	-- STA R1, @14
tmp(55) := "010100100000010";	-- STA R1, @258
-- #LABEL_VERIFICA_RESET:
tmp(56) := "000100101100100";	-- LDA R1, @356 	#Armazena o valor do botão reset no R1
tmp(57) := "100000000000110";	-- CEQ R1, @6 	#Verifica se o RESET foi apertado
tmp(58) := "011100000111100";	-- JEQ @60 	#Se o botão reset não foi apertado, atualiza os displays
tmp(59) := "011000000000000";	-- JMP @0 	#Se foi apertado, volta pro inívio do código
-- #LABEL_ATUALIZA_DISPLAY:
tmp(60) := "000100000000000";	-- LDA R1, @0 	#Coloca o valor da @0 no R1
tmp(61) := "010100100100000";	-- STA R1, @288 	#Armazena no @288
tmp(62) := "000100000000001";	-- LDA R1, @1 	#Coloca o valor da @1 no R1
tmp(63) := "010100100100001";	-- STA R1, @289 	#Armazena no @289
tmp(64) := "000100000000010";	-- LDA R1, @2 	#Coloca o valor da @2 no R1
tmp(65) := "010100100100010";	-- STA R1, @290 	#Armazena no @290
tmp(66) := "000100000000011";	-- LDA R1, @3 	#Coloca o valor de @3 no R1
tmp(67) := "010100100100011";	-- STA R1, @291 	#Armazena no @291
tmp(68) := "000100000000100";	-- LDA R1, @4 	#Coloca o valor de @4 no R1
tmp(69) := "000101000001110";	-- LDA R2, @14
tmp(70) := "100001000000110";	-- CEQ R2, @6
tmp(71) := "011101001001001";	-- JEQ R2, @73
tmp(72) := "001100000001000";	-- SUB R1, @8
-- #LABEL_ATUALIZA_HEX4:
tmp(73) := "010100100100100";	-- STA R1, @292 	#Armazena no @292
tmp(74) := "000100000000101";	-- LDA R1, @5 	#Coloca o valor de @5 no R1
tmp(75) := "100001000000110";	-- CEQ R2, @6
tmp(76) := "011101001001110";	-- JEQ R2, @78
tmp(77) := "001100000000111";	-- SUB R1, @7
-- #LABEL_ATUALIZA_HEX5:
tmp(78) := "010100100100101";	-- STA R1, @293 	#Armazena no @293
tmp(79) := "011000000100100";	-- JMP @36 	#Volta a verificar se @352 está sendo apertado
-- #LABEL_INC_SU:
tmp(80) := "010000000000000";	-- LDI R1, $0 	#Armazena o valor 0 no R1
tmp(81) := "010100111111110";	-- STA R1, @510 	#Armazena o valor do R1 no endereço 511 (Utilizado para limpar o flipflop do debounce)
tmp(82) := "000100000000000";	-- LDA R1, @0 	#Armazena o valor @0 no R1
tmp(83) := "001000000000111";	-- SOMA R1, @7 	#Soma o valor do R1 com @7 e joga no R1
tmp(84) := "100000000001011";	-- CEQ R1, @11 	#Compara o valor do R1 com @11
tmp(85) := "011100001011000";	-- JEQ R1, @88 	#Se for 0 incrementa @1 e zera SEGUNDOS_UNIDADE, se não icrementa @0 e retorna
tmp(86) := "010100000000000";	-- STA R1, @0 	#Armazena o valor do R1 em @0
tmp(87) := "101000000000000";	-- RET 	#Retorna sub-rotina
-- #LABEL_INC_SD:
tmp(88) := "010000000000000";	-- LDI R1, $0 	#Armazena o valor 0 no R1
tmp(89) := "010100000000000";	-- STA R1, @0 	#Armazena o valor do R1 em @0
tmp(90) := "000100000000001";	-- LDA R1, @1 	#Armazena o valor @1 no R1
tmp(91) := "001000000000111";	-- SOMA R1, @7 	#Soma o valor do R1 com @7 e joga no R1
tmp(92) := "100000000001010";	-- CEQ R1, @10 	#Compara o valor do R1 com @10
tmp(93) := "011100001100000";	-- JEQ @96 	#Se for 0 incrementa @2 e zera SEGUNDOS_DEZENA, se não icrementa @1 e retorna
tmp(94) := "010100000000001";	-- STA R1, @1 	#Armazena o valor do R1 em @1
tmp(95) := "101000000000000";	-- RET 	#Retorna sub-rotina
-- #LABEL_INC_MU:
tmp(96) := "010000000000000";	-- LDI R1, $0 	#Armazena o valor 0 no R1
tmp(97) := "010100000000001";	-- STA R1, @1 	#Armazena o valor do R1 em @1
tmp(98) := "000100000000010";	-- LDA R1, @2 	#Armazena o valor @2 no R1
tmp(99) := "001000000000111";	-- SOMA R1, @7 	#Soma o valor do R1 com @7 e joga no R1
tmp(100) := "100000000001011";	-- CEQ R1, @11 	#Compara o valor do R1 com @11
tmp(101) := "011100001101000";	-- JEQ @104 	#Se for 0 incrementa @3 e zera MINUTOS_UNIDADE, se não icrementa @2 e retorna
tmp(102) := "010100000000010";	-- STA R1, @2 	#Armazena o valor do R1 em @2
tmp(103) := "101000000000000";	-- RET 	#Retorna sub-rotina
-- #LABEL_INC_MD:
tmp(104) := "010000000000000";	-- LDI R1, $0 	#Armazena o valor 0 no R1
tmp(105) := "010100000000010";	-- STA R1, @2 	#Armazena o valor do R1 em @2
tmp(106) := "000100000000011";	-- LDA R1, @3 	#Armazena o valor @3 no R1
tmp(107) := "001000000000111";	-- SOMA R1, @7 	#Soma o valor do R1 com @7 e joga no R1
tmp(108) := "100000000001010";	-- CEQ R1, @10 	#Compara o valor do R1 com @10
tmp(109) := "011100001110000";	-- JEQ @112 	#Se for 0 incrementa @4 e zera MINUTOS_DEZENA, se não icrementa @3 e retorna
tmp(110) := "010100000000011";	-- STA R1, @3 	#Armazena o valor do R1 em @3
tmp(111) := "101000000000000";	-- RET 	#Retorna sub-rotina
-- #LABEL_INC_HU:
tmp(112) := "010000000000000";	-- LDI R1, $0 	#Armazena o valor 0 no R1
tmp(113) := "010100000000011";	-- STA R1, @3 	#Armazena o valor do R1 em @3
tmp(114) := "000100000001100";	-- LDA R1, @12 	#Armazena o valor @12 no R1
tmp(115) := "100000000000110";	-- CEQ R1, @6 	#Compara @12 com o valor zero
tmp(116) := "011100001111000";	-- JEQ @120 	#Se for @12 for zero, continua incrementando
tmp(117) := "000100000000100";	-- LDA R1, @4 	#Se não for zero, verifica overflow da @4
tmp(118) := "100000000001001";	-- CEQ R1, @9
tmp(119) := "011100000000000";	-- JEQ @0
-- #LABEL_INCREMENTA_HU:
tmp(120) := "000100000000100";	-- LDA R1, @4 	#Armazena o valor @4 no R1
tmp(121) := "001000000000111";	-- SOMA R1, @7 	#Soma o valor do R1 com @7 e joga no R1
tmp(122) := "100000000001011";	-- CEQ R1, @11 	#Compara o valor do R1 com @11
tmp(123) := "011100001111110";	-- JEQ @126 	#Se for 0 incrementa @3 e zera HORAS_UNIDADE, se não icrementa a @2 e retorna
tmp(124) := "010100000000100";	-- STA R1, @4 	#Armazena o valor do R1 em @4
tmp(125) := "101000000000000";	-- RET 	#Retorna sub-rotina
-- #LABEL_INC_HD:
tmp(126) := "010000000000000";	-- LDI R1, $0 	#Armazena o valor 0 no R1
tmp(127) := "010100000000100";	-- STA R1, @4 	#Armazena o valor do R1 em @2
tmp(128) := "000100000001100";	-- LDA R1, @12
tmp(129) := "100000000000111";	-- CEQ R1, @7
tmp(130) := "011100011011000";	-- JEQ @216 	#Se a flag @12 estiver 1, já faz o retorno
tmp(131) := "000100000000101";	-- LDA R1, @5 	#Armazena o valor @2 no R1
tmp(132) := "001000000000111";	-- SOMA R1, @7 	#Soma o valor do R1 com @7 e joga no R1
tmp(133) := "100000000001000";	-- CEQ R1, @8 	#Compara o valor do R1 com @8
tmp(134) := "011100010001001";	-- JEQ @137 	#Se for 0 incrementa @3 e zera SEGUNDOS_UNIDADE, se não icrementa a @2 e retorna
tmp(135) := "010100000000101";	-- STA R1, @5 	#Armazena o valor do R1 em @5
tmp(136) := "101000000000000";	-- RET 	#Retorna sub-rotina
-- #LABEL_OF_HD:
tmp(137) := "010000000000001";	-- LDI R1, $1 	#Armazena o valor 1 no R1
tmp(138) := "010100000001100";	-- STA R1, @12 	#Deixa 1 na flaga @12
tmp(139) := "010000000000010";	-- LDI R1, $2
tmp(140) := "010100000000101";	-- STA R1, @5
tmp(141) := "101000000000000";	-- RET
-- #LABEL_CONFIGURA_SU:
tmp(142) := "010000000000001";	-- LDI R1, $1
tmp(143) := "010100100000000";	-- STA R1, @256
tmp(144) := "000100101000000";	-- LDA R1, @320
tmp(145) := "010100000000000";	-- STA R1, @0
tmp(146) := "010100100100000";	-- STA R1, @288
tmp(147) := "000100101100001";	-- LDA R1, @353
tmp(148) := "100000000000110";	-- CEQ R1, @6
tmp(149) := "011100010001110";	-- JEQ @142
tmp(150) := "010100111111110";	-- STA R1, @510
-- #LABEL_CONFIGURA_SD:
tmp(151) := "010000000000010";	-- LDI R1, $2
tmp(152) := "010100100000000";	-- STA R1, @256
tmp(153) := "000100101000000";	-- LDA R1, @320
tmp(154) := "010100000000001";	-- STA R1, @1
tmp(155) := "010100100100001";	-- STA R1, @289
tmp(156) := "000100101100001";	-- LDA R1, @353
tmp(157) := "100000000000110";	-- CEQ R1, @6
tmp(158) := "011100010010111";	-- JEQ @151
tmp(159) := "010100111111110";	-- STA R1, @510
-- #LABEL_CONFIGURA_MU:
tmp(160) := "010000000000100";	-- LDI R1, $4
tmp(161) := "010100100000000";	-- STA R1, @256
tmp(162) := "000100101000000";	-- LDA R1, @320
tmp(163) := "010100000000010";	-- STA R1, @2
tmp(164) := "010100100100010";	-- STA R1, @290
tmp(165) := "000100101100001";	-- LDA R1, @353
tmp(166) := "100000000000110";	-- CEQ R1, @6
tmp(167) := "011100010100000";	-- JEQ @160
tmp(168) := "010100111111110";	-- STA R1, @510
-- #LABEL_CONFIGURA_MD:
tmp(169) := "010000000001000";	-- LDI R1, $8
tmp(170) := "010100100000000";	-- STA R1, @256
tmp(171) := "000100101000000";	-- LDA R1, @320
tmp(172) := "010100000000011";	-- STA R1, @3
tmp(173) := "010100100100011";	-- STA R1, @291
tmp(174) := "000100101100001";	-- LDA R1, @353
tmp(175) := "100000000000110";	-- CEQ R1, @6
tmp(176) := "011100010101001";	-- JEQ @169
tmp(177) := "010100111111110";	-- STA R1, @510
-- #LABEL_CONFIGURA_HU:
tmp(178) := "010000000010000";	-- LDI R1, $16
tmp(179) := "010100100000000";	-- STA R1, @256
tmp(180) := "000100101000000";	-- LDA R1, @320
tmp(181) := "010100000000100";	-- STA R1, @4
tmp(182) := "010100100100100";	-- STA R1, @292
tmp(183) := "000100101100001";	-- LDA R1, @353
tmp(184) := "100000000000110";	-- CEQ R1, @6
tmp(185) := "011100010110010";	-- JEQ @178
tmp(186) := "010100111111110";	-- STA R1, @510
-- #LABEL_CONFIGURA_HD:
tmp(187) := "010000000100000";	-- LDI R1, $32
tmp(188) := "010100100000000";	-- STA R1, @256
tmp(189) := "000100101000000";	-- LDA R1, @320
tmp(190) := "010100000000101";	-- STA R1, @5
tmp(191) := "010100100100101";	-- STA R1, @293
tmp(192) := "000100101100001";	-- LDA R1, @353
tmp(193) := "100000000000110";	-- CEQ R1, @6
tmp(194) := "011100010111011";	-- JEQ @187
tmp(195) := "010000000000000";	-- LDI R1, $0
tmp(196) := "010100100000000";	-- STA R1, @256
tmp(197) := "101000000000000";	-- RET
-- #LABEL_HAB_FLAG_PM:
tmp(198) := "000100000000100";	-- LDA R1, @4
tmp(199) := "100000000001001";	-- CEQ @9
tmp(200) := "011100011001010";	-- JEQ @202
tmp(201) := "101000000000000";	-- RET
-- #LABEL_CONFERE_HD_PM:
tmp(202) := "000100000000101";	-- LDA R1, @5
tmp(203) := "100000000000111";	-- CEQ @7
tmp(204) := "011100011001110";	-- JEQ @206
tmp(205) := "101000000000000";	-- RET
-- #LABEL_SAIDA_AM:
tmp(206) := "010000000000001";	-- LDI R1, $1
tmp(207) := "010100000001101";	-- STA R1, @13
tmp(208) := "101000000000000";	-- RET
-- #LABEL_HAB_CONVERSAO:
tmp(209) := "000100000001101";	-- LDA R1, @13
tmp(210) := "100000000000110";	-- CEQ R1, @6
tmp(211) := "011100000111000";	-- JEQ @56
tmp(212) := "010000000000001";	-- LDI R1, $1
tmp(213) := "010100000001110";	-- STA R1, @14
tmp(214) := "010100100000010";	-- STA R1, @258
tmp(215) := "011000000111000";	-- JMP @56
-- #LABEL_RETORNO:
tmp(216) := "101000000000000";	-- RET

                       
        return tmp;
    end initMemory;

    signal memROM : blocoMemoria := initMemory;

begin
    Dado <= memROM (to_integer(unsigned(Endereco)));
end architecture;