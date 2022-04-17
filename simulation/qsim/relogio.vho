-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "04/17/2022 14:51:07"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	relogio IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	KEY0 : IN std_logic;
	KEY1 : IN std_logic;
	KEY2 : IN std_logic;
	KEY3 : IN std_logic;
	FPGA_RESET : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	SAIDA_AND_HEX0 : OUT std_logic;
	DIN_HEX : OUT std_logic_vector(3 DOWNTO 0);
	SAIDA_AND_HEX1 : OUT std_logic;
	SAIDA_AND_HEX2 : OUT std_logic;
	SAIDA_AND_HEX3 : OUT std_logic;
	SAIDA_AND_HEX4 : OUT std_logic;
	SAIDA_AND_HEX5 : OUT std_logic;
	ACUMULADOR : OUT std_logic_vector(7 DOWNTO 0);
	INSTRUCAO : OUT std_logic_vector(12 DOWNTO 0)
	);
END relogio;

ARCHITECTURE structure OF relogio IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_KEY0 : std_logic;
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_KEY2 : std_logic;
SIGNAL ww_KEY3 : std_logic;
SIGNAL ww_FPGA_RESET : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SAIDA_AND_HEX0 : std_logic;
SIGNAL ww_DIN_HEX : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SAIDA_AND_HEX1 : std_logic;
SIGNAL ww_SAIDA_AND_HEX2 : std_logic;
SIGNAL ww_SAIDA_AND_HEX3 : std_logic;
SIGNAL ww_SAIDA_AND_HEX4 : std_logic;
SIGNAL ww_SAIDA_AND_HEX5 : std_logic;
SIGNAL ww_ACUMULADOR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_INSTRUCAO : std_logic_vector(12 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \KEY2~input_o\ : std_logic;
SIGNAL \KEY3~input_o\ : std_logic;
SIGNAL \FPGA_RESET~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~3_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~4_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~9_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~14_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~8_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~11_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~12_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~13_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~0_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~5_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~6_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~7_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~10_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~2_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~15_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~559_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~560_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~15_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~561_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~23_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~562_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~47_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~563_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~55_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~527_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~564_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~31_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~565_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~39_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~566_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~63_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~567_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~71_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~528_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~529_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|decoder|saida~0_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~2_combout\ : std_logic;
SIGNAL \Processador|decoder|saida~1_combout\ : std_logic;
SIGNAL \AndHEX2|saida~0_combout\ : std_logic;
SIGNAL \DecoderSelEnd|Equal0~0_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~18_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~34_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~538_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~50_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~66_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~539_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~26_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~42_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~540_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~58_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~74_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~541_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~542_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~17_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~16_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~2\ : std_logic;
SIGNAL \Processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~2\ : std_logic;
SIGNAL \Processador|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~16_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~32_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~530_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~48_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~64_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~531_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~24_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~40_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~532_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~56_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~72_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~533_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~534_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~6\ : std_logic;
SIGNAL \Processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~6\ : std_logic;
SIGNAL \Processador|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~17_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~25_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~49_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~57_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~535_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~33_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~41_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~65_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~73_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~536_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~537_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~10\ : std_logic;
SIGNAL \Processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~10\ : std_logic;
SIGNAL \Processador|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DecoderSelEnd|Equal0~1_combout\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AndHEX2|saida~1_combout\ : std_logic;
SIGNAL \decoderHEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoderHEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoderHEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoderHEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoderHEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoderHEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoderHEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DecoderSelEnd|Equal0~2_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DecoderSelEnd|Equal0~3_combout\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DecoderSelEnd|Equal0~4_combout\ : std_logic;
SIGNAL \decoderHEX5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoderHEX5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoderHEX5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoderHEX5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoderHEX5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoderHEX5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoderHEX5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~19_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~27_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~51_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~59_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~543_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~35_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~43_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~67_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~75_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~544_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~545_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~14\ : std_logic;
SIGNAL \Processador|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~14\ : std_logic;
SIGNAL \Processador|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~18_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~20_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~36_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~546_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~52_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~68_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~547_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~28_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~44_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~548_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~60_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~76_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~549_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~550_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~18\ : std_logic;
SIGNAL \Processador|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~18\ : std_logic;
SIGNAL \Processador|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~21_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~29_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~53_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~61_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~551_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~37_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~45_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~69_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~77_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~552_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~553_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~22\ : std_logic;
SIGNAL \Processador|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~22\ : std_logic;
SIGNAL \Processador|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~22_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~38_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~554_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~54_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~70_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~555_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~30_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~46_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~556_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~62_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~78_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~557_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~558_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~26\ : std_logic;
SIGNAL \Processador|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~26\ : std_logic;
SIGNAL \Processador|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RegistradorHEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Processador|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegistradorHEX5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ROM_instrucao|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \RegistradorHEX5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Processador|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \Processador|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MemoriaRAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \AndHEX2|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~558_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_KEY0 <= KEY0;
ww_KEY1 <= KEY1;
ww_KEY2 <= KEY2;
ww_KEY3 <= KEY3;
ww_FPGA_RESET <= FPGA_RESET;
ww_SW <= SW;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
SAIDA_AND_HEX0 <= ww_SAIDA_AND_HEX0;
DIN_HEX <= ww_DIN_HEX;
SAIDA_AND_HEX1 <= ww_SAIDA_AND_HEX1;
SAIDA_AND_HEX2 <= ww_SAIDA_AND_HEX2;
SAIDA_AND_HEX3 <= ww_SAIDA_AND_HEX3;
SAIDA_AND_HEX4 <= ww_SAIDA_AND_HEX4;
SAIDA_AND_HEX5 <= ww_SAIDA_AND_HEX5;
ACUMULADOR <= ww_ACUMULADOR;
INSTRUCAO <= ww_INSTRUCAO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ROM_instrucao|ALT_INV_memROM~1_combout\ <= NOT \ROM_instrucao|memROM~1_combout\;
\ROM_instrucao|ALT_INV_memROM~0_combout\ <= NOT \ROM_instrucao|memROM~0_combout\;
\RegistradorHEX5|ALT_INV_DOUT\(2) <= NOT \RegistradorHEX5|DOUT\(2);
\RegistradorHEX5|ALT_INV_DOUT\(1) <= NOT \RegistradorHEX5|DOUT\(1);
\RegistradorHEX5|ALT_INV_DOUT\(3) <= NOT \RegistradorHEX5|DOUT\(3);
\RegistradorHEX5|ALT_INV_DOUT\(0) <= NOT \RegistradorHEX5|DOUT\(0);
\RegistradorHEX4|ALT_INV_DOUT\(2) <= NOT \RegistradorHEX4|DOUT\(2);
\RegistradorHEX4|ALT_INV_DOUT\(1) <= NOT \RegistradorHEX4|DOUT\(1);
\RegistradorHEX4|ALT_INV_DOUT\(3) <= NOT \RegistradorHEX4|DOUT\(3);
\RegistradorHEX4|ALT_INV_DOUT\(0) <= NOT \RegistradorHEX4|DOUT\(0);
\RegistradorHEX3|ALT_INV_DOUT\(2) <= NOT \RegistradorHEX3|DOUT\(2);
\RegistradorHEX3|ALT_INV_DOUT\(1) <= NOT \RegistradorHEX3|DOUT\(1);
\RegistradorHEX3|ALT_INV_DOUT\(3) <= NOT \RegistradorHEX3|DOUT\(3);
\RegistradorHEX3|ALT_INV_DOUT\(0) <= NOT \RegistradorHEX3|DOUT\(0);
\RegistradorHEX2|ALT_INV_DOUT\(2) <= NOT \RegistradorHEX2|DOUT\(2);
\RegistradorHEX2|ALT_INV_DOUT\(1) <= NOT \RegistradorHEX2|DOUT\(1);
\RegistradorHEX2|ALT_INV_DOUT\(3) <= NOT \RegistradorHEX2|DOUT\(3);
\RegistradorHEX2|ALT_INV_DOUT\(0) <= NOT \RegistradorHEX2|DOUT\(0);
\RegistradorHEX1|ALT_INV_DOUT\(2) <= NOT \RegistradorHEX1|DOUT\(2);
\RegistradorHEX1|ALT_INV_DOUT\(1) <= NOT \RegistradorHEX1|DOUT\(1);
\RegistradorHEX1|ALT_INV_DOUT\(3) <= NOT \RegistradorHEX1|DOUT\(3);
\RegistradorHEX1|ALT_INV_DOUT\(0) <= NOT \RegistradorHEX1|DOUT\(0);
\RegistradorHEX0|ALT_INV_DOUT\(2) <= NOT \RegistradorHEX0|DOUT\(2);
\RegistradorHEX0|ALT_INV_DOUT\(1) <= NOT \RegistradorHEX0|DOUT\(1);
\RegistradorHEX0|ALT_INV_DOUT\(3) <= NOT \RegistradorHEX0|DOUT\(3);
\RegistradorHEX0|ALT_INV_DOUT\(0) <= NOT \RegistradorHEX0|DOUT\(0);
\Processador|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \Processador|ULA1|Add1~29_sumout\;
\Processador|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \Processador|ULA1|Add1~25_sumout\;
\Processador|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \Processador|ULA1|Add1~21_sumout\;
\Processador|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \Processador|ULA1|Add1~17_sumout\;
\Processador|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \Processador|ULA1|Add1~13_sumout\;
\Processador|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \Processador|ULA1|Add1~9_sumout\;
\Processador|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \Processador|ULA1|Add1~5_sumout\;
\Processador|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \Processador|ULA1|Add1~1_sumout\;
\Processador|REGA|ALT_INV_DOUT\(7) <= NOT \Processador|REGA|DOUT\(7);
\Processador|REGA|ALT_INV_DOUT\(6) <= NOT \Processador|REGA|DOUT\(6);
\Processador|REGA|ALT_INV_DOUT\(5) <= NOT \Processador|REGA|DOUT\(5);
\Processador|REGA|ALT_INV_DOUT\(4) <= NOT \Processador|REGA|DOUT\(4);
\Processador|REGA|ALT_INV_DOUT\(3) <= NOT \Processador|REGA|DOUT\(3);
\Processador|REGA|ALT_INV_DOUT\(2) <= NOT \Processador|REGA|DOUT\(2);
\Processador|REGA|ALT_INV_DOUT\(1) <= NOT \Processador|REGA|DOUT\(1);
\Processador|REGA|ALT_INV_DOUT\(0) <= NOT \Processador|REGA|DOUT\(0);
\Processador|PC|ALT_INV_DOUT\(8) <= NOT \Processador|PC|DOUT\(8);
\Processador|PC|ALT_INV_DOUT\(7) <= NOT \Processador|PC|DOUT\(7);
\Processador|PC|ALT_INV_DOUT\(6) <= NOT \Processador|PC|DOUT\(6);
\Processador|PC|ALT_INV_DOUT\(5) <= NOT \Processador|PC|DOUT\(5);
\Processador|PC|ALT_INV_DOUT\(4) <= NOT \Processador|PC|DOUT\(4);
\Processador|PC|ALT_INV_DOUT\(3) <= NOT \Processador|PC|DOUT\(3);
\Processador|PC|ALT_INV_DOUT\(2) <= NOT \Processador|PC|DOUT\(2);
\Processador|PC|ALT_INV_DOUT\(1) <= NOT \Processador|PC|DOUT\(1);
\Processador|PC|ALT_INV_DOUT\(0) <= NOT \Processador|PC|DOUT\(0);
\MemoriaRAM|ALT_INV_ram~557_combout\ <= NOT \MemoriaRAM|ram~557_combout\;
\MemoriaRAM|ALT_INV_ram~78_q\ <= NOT \MemoriaRAM|ram~78_q\;
\MemoriaRAM|ALT_INV_ram~62_q\ <= NOT \MemoriaRAM|ram~62_q\;
\MemoriaRAM|ALT_INV_ram~556_combout\ <= NOT \MemoriaRAM|ram~556_combout\;
\MemoriaRAM|ALT_INV_ram~46_q\ <= NOT \MemoriaRAM|ram~46_q\;
\MemoriaRAM|ALT_INV_ram~30_q\ <= NOT \MemoriaRAM|ram~30_q\;
\MemoriaRAM|ALT_INV_ram~555_combout\ <= NOT \MemoriaRAM|ram~555_combout\;
\MemoriaRAM|ALT_INV_ram~70_q\ <= NOT \MemoriaRAM|ram~70_q\;
\MemoriaRAM|ALT_INV_ram~54_q\ <= NOT \MemoriaRAM|ram~54_q\;
\MemoriaRAM|ALT_INV_ram~554_combout\ <= NOT \MemoriaRAM|ram~554_combout\;
\MemoriaRAM|ALT_INV_ram~38_q\ <= NOT \MemoriaRAM|ram~38_q\;
\MemoriaRAM|ALT_INV_ram~22_q\ <= NOT \MemoriaRAM|ram~22_q\;
\MemoriaRAM|ALT_INV_ram~553_combout\ <= NOT \MemoriaRAM|ram~553_combout\;
\MemoriaRAM|ALT_INV_ram~552_combout\ <= NOT \MemoriaRAM|ram~552_combout\;
\MemoriaRAM|ALT_INV_ram~77_q\ <= NOT \MemoriaRAM|ram~77_q\;
\MemoriaRAM|ALT_INV_ram~69_q\ <= NOT \MemoriaRAM|ram~69_q\;
\MemoriaRAM|ALT_INV_ram~45_q\ <= NOT \MemoriaRAM|ram~45_q\;
\MemoriaRAM|ALT_INV_ram~37_q\ <= NOT \MemoriaRAM|ram~37_q\;
\MemoriaRAM|ALT_INV_ram~551_combout\ <= NOT \MemoriaRAM|ram~551_combout\;
\MemoriaRAM|ALT_INV_ram~61_q\ <= NOT \MemoriaRAM|ram~61_q\;
\MemoriaRAM|ALT_INV_ram~53_q\ <= NOT \MemoriaRAM|ram~53_q\;
\MemoriaRAM|ALT_INV_ram~29_q\ <= NOT \MemoriaRAM|ram~29_q\;
\MemoriaRAM|ALT_INV_ram~21_q\ <= NOT \MemoriaRAM|ram~21_q\;
\MemoriaRAM|ALT_INV_ram~550_combout\ <= NOT \MemoriaRAM|ram~550_combout\;
\MemoriaRAM|ALT_INV_ram~549_combout\ <= NOT \MemoriaRAM|ram~549_combout\;
\MemoriaRAM|ALT_INV_ram~76_q\ <= NOT \MemoriaRAM|ram~76_q\;
\MemoriaRAM|ALT_INV_ram~60_q\ <= NOT \MemoriaRAM|ram~60_q\;
\MemoriaRAM|ALT_INV_ram~548_combout\ <= NOT \MemoriaRAM|ram~548_combout\;
\MemoriaRAM|ALT_INV_ram~44_q\ <= NOT \MemoriaRAM|ram~44_q\;
\MemoriaRAM|ALT_INV_ram~28_q\ <= NOT \MemoriaRAM|ram~28_q\;
\MemoriaRAM|ALT_INV_ram~547_combout\ <= NOT \MemoriaRAM|ram~547_combout\;
\MemoriaRAM|ALT_INV_ram~68_q\ <= NOT \MemoriaRAM|ram~68_q\;
\MemoriaRAM|ALT_INV_ram~52_q\ <= NOT \MemoriaRAM|ram~52_q\;
\MemoriaRAM|ALT_INV_ram~546_combout\ <= NOT \MemoriaRAM|ram~546_combout\;
\MemoriaRAM|ALT_INV_ram~36_q\ <= NOT \MemoriaRAM|ram~36_q\;
\MemoriaRAM|ALT_INV_ram~20_q\ <= NOT \MemoriaRAM|ram~20_q\;
\MemoriaRAM|ALT_INV_ram~545_combout\ <= NOT \MemoriaRAM|ram~545_combout\;
\MemoriaRAM|ALT_INV_ram~544_combout\ <= NOT \MemoriaRAM|ram~544_combout\;
\MemoriaRAM|ALT_INV_ram~75_q\ <= NOT \MemoriaRAM|ram~75_q\;
\MemoriaRAM|ALT_INV_ram~67_q\ <= NOT \MemoriaRAM|ram~67_q\;
\MemoriaRAM|ALT_INV_ram~43_q\ <= NOT \MemoriaRAM|ram~43_q\;
\MemoriaRAM|ALT_INV_ram~35_q\ <= NOT \MemoriaRAM|ram~35_q\;
\MemoriaRAM|ALT_INV_ram~543_combout\ <= NOT \MemoriaRAM|ram~543_combout\;
\MemoriaRAM|ALT_INV_ram~59_q\ <= NOT \MemoriaRAM|ram~59_q\;
\MemoriaRAM|ALT_INV_ram~51_q\ <= NOT \MemoriaRAM|ram~51_q\;
\MemoriaRAM|ALT_INV_ram~27_q\ <= NOT \MemoriaRAM|ram~27_q\;
\MemoriaRAM|ALT_INV_ram~19_q\ <= NOT \MemoriaRAM|ram~19_q\;
\MemoriaRAM|ALT_INV_ram~542_combout\ <= NOT \MemoriaRAM|ram~542_combout\;
\MemoriaRAM|ALT_INV_ram~541_combout\ <= NOT \MemoriaRAM|ram~541_combout\;
\MemoriaRAM|ALT_INV_ram~74_q\ <= NOT \MemoriaRAM|ram~74_q\;
\MemoriaRAM|ALT_INV_ram~58_q\ <= NOT \MemoriaRAM|ram~58_q\;
\MemoriaRAM|ALT_INV_ram~540_combout\ <= NOT \MemoriaRAM|ram~540_combout\;
\MemoriaRAM|ALT_INV_ram~42_q\ <= NOT \MemoriaRAM|ram~42_q\;
\MemoriaRAM|ALT_INV_ram~26_q\ <= NOT \MemoriaRAM|ram~26_q\;
\MemoriaRAM|ALT_INV_ram~539_combout\ <= NOT \MemoriaRAM|ram~539_combout\;
\MemoriaRAM|ALT_INV_ram~66_q\ <= NOT \MemoriaRAM|ram~66_q\;
\MemoriaRAM|ALT_INV_ram~50_q\ <= NOT \MemoriaRAM|ram~50_q\;
\MemoriaRAM|ALT_INV_ram~538_combout\ <= NOT \MemoriaRAM|ram~538_combout\;
\MemoriaRAM|ALT_INV_ram~34_q\ <= NOT \MemoriaRAM|ram~34_q\;
\MemoriaRAM|ALT_INV_ram~18_q\ <= NOT \MemoriaRAM|ram~18_q\;
\MemoriaRAM|ALT_INV_ram~537_combout\ <= NOT \MemoriaRAM|ram~537_combout\;
\MemoriaRAM|ALT_INV_ram~536_combout\ <= NOT \MemoriaRAM|ram~536_combout\;
\MemoriaRAM|ALT_INV_ram~73_q\ <= NOT \MemoriaRAM|ram~73_q\;
\MemoriaRAM|ALT_INV_ram~65_q\ <= NOT \MemoriaRAM|ram~65_q\;
\MemoriaRAM|ALT_INV_ram~41_q\ <= NOT \MemoriaRAM|ram~41_q\;
\MemoriaRAM|ALT_INV_ram~33_q\ <= NOT \MemoriaRAM|ram~33_q\;
\MemoriaRAM|ALT_INV_ram~535_combout\ <= NOT \MemoriaRAM|ram~535_combout\;
\MemoriaRAM|ALT_INV_ram~57_q\ <= NOT \MemoriaRAM|ram~57_q\;
\MemoriaRAM|ALT_INV_ram~49_q\ <= NOT \MemoriaRAM|ram~49_q\;
\MemoriaRAM|ALT_INV_ram~25_q\ <= NOT \MemoriaRAM|ram~25_q\;
\MemoriaRAM|ALT_INV_ram~17_q\ <= NOT \MemoriaRAM|ram~17_q\;
\MemoriaRAM|ALT_INV_ram~534_combout\ <= NOT \MemoriaRAM|ram~534_combout\;
\MemoriaRAM|ALT_INV_ram~533_combout\ <= NOT \MemoriaRAM|ram~533_combout\;
\MemoriaRAM|ALT_INV_ram~72_q\ <= NOT \MemoriaRAM|ram~72_q\;
\MemoriaRAM|ALT_INV_ram~56_q\ <= NOT \MemoriaRAM|ram~56_q\;
\MemoriaRAM|ALT_INV_ram~532_combout\ <= NOT \MemoriaRAM|ram~532_combout\;
\MemoriaRAM|ALT_INV_ram~40_q\ <= NOT \MemoriaRAM|ram~40_q\;
\MemoriaRAM|ALT_INV_ram~24_q\ <= NOT \MemoriaRAM|ram~24_q\;
\MemoriaRAM|ALT_INV_ram~531_combout\ <= NOT \MemoriaRAM|ram~531_combout\;
\MemoriaRAM|ALT_INV_ram~64_q\ <= NOT \MemoriaRAM|ram~64_q\;
\MemoriaRAM|ALT_INV_ram~48_q\ <= NOT \MemoriaRAM|ram~48_q\;
\MemoriaRAM|ALT_INV_ram~530_combout\ <= NOT \MemoriaRAM|ram~530_combout\;
\MemoriaRAM|ALT_INV_ram~32_q\ <= NOT \MemoriaRAM|ram~32_q\;
\MemoriaRAM|ALT_INV_ram~16_q\ <= NOT \MemoriaRAM|ram~16_q\;
\Processador|decoder|ALT_INV_saida~0_combout\ <= NOT \Processador|decoder|saida~0_combout\;
\MemoriaRAM|ALT_INV_ram~529_combout\ <= NOT \MemoriaRAM|ram~529_combout\;
\MemoriaRAM|ALT_INV_ram~528_combout\ <= NOT \MemoriaRAM|ram~528_combout\;
\MemoriaRAM|ALT_INV_ram~71_q\ <= NOT \MemoriaRAM|ram~71_q\;
\MemoriaRAM|ALT_INV_ram~63_q\ <= NOT \MemoriaRAM|ram~63_q\;
\MemoriaRAM|ALT_INV_ram~39_q\ <= NOT \MemoriaRAM|ram~39_q\;
\MemoriaRAM|ALT_INV_ram~31_q\ <= NOT \MemoriaRAM|ram~31_q\;
\MemoriaRAM|ALT_INV_ram~527_combout\ <= NOT \MemoriaRAM|ram~527_combout\;
\MemoriaRAM|ALT_INV_ram~55_q\ <= NOT \MemoriaRAM|ram~55_q\;
\MemoriaRAM|ALT_INV_ram~47_q\ <= NOT \MemoriaRAM|ram~47_q\;
\MemoriaRAM|ALT_INV_ram~23_q\ <= NOT \MemoriaRAM|ram~23_q\;
\MemoriaRAM|ALT_INV_ram~15_q\ <= NOT \MemoriaRAM|ram~15_q\;
\Processador|decoder|ALT_INV_Equal10~1_combout\ <= NOT \Processador|decoder|Equal10~1_combout\;
\ROM_instrucao|ALT_INV_memROM~14_combout\ <= NOT \ROM_instrucao|memROM~14_combout\;
\ROM_instrucao|ALT_INV_memROM~13_combout\ <= NOT \ROM_instrucao|memROM~13_combout\;
\ROM_instrucao|ALT_INV_memROM~12_combout\ <= NOT \ROM_instrucao|memROM~12_combout\;
\ROM_instrucao|ALT_INV_memROM~11_combout\ <= NOT \ROM_instrucao|memROM~11_combout\;
\ROM_instrucao|ALT_INV_memROM~10_combout\ <= NOT \ROM_instrucao|memROM~10_combout\;
\AndHEX2|ALT_INV_saida~0_combout\ <= NOT \AndHEX2|saida~0_combout\;
\ROM_instrucao|ALT_INV_memROM~9_combout\ <= NOT \ROM_instrucao|memROM~9_combout\;
\ROM_instrucao|ALT_INV_memROM~8_combout\ <= NOT \ROM_instrucao|memROM~8_combout\;
\ROM_instrucao|ALT_INV_memROM~7_combout\ <= NOT \ROM_instrucao|memROM~7_combout\;
\ROM_instrucao|ALT_INV_memROM~6_combout\ <= NOT \ROM_instrucao|memROM~6_combout\;
\ROM_instrucao|ALT_INV_memROM~5_combout\ <= NOT \ROM_instrucao|memROM~5_combout\;
\ROM_instrucao|ALT_INV_memROM~4_combout\ <= NOT \ROM_instrucao|memROM~4_combout\;
\ROM_instrucao|ALT_INV_memROM~3_combout\ <= NOT \ROM_instrucao|memROM~3_combout\;
\ROM_instrucao|ALT_INV_memROM~2_combout\ <= NOT \ROM_instrucao|memROM~2_combout\;
\ROM_instrucao|ALT_INV_memROM~18_combout\ <= NOT \ROM_instrucao|memROM~18_combout\;
\ROM_instrucao|ALT_INV_memROM~17_combout\ <= NOT \ROM_instrucao|memROM~17_combout\;
\ROM_instrucao|ALT_INV_memROM~16_combout\ <= NOT \ROM_instrucao|memROM~16_combout\;
\MemoriaRAM|ALT_INV_ram~559_combout\ <= NOT \MemoriaRAM|ram~559_combout\;
\ROM_instrucao|ALT_INV_memROM~15_combout\ <= NOT \ROM_instrucao|memROM~15_combout\;
\MemoriaRAM|ALT_INV_ram~558_combout\ <= NOT \MemoriaRAM|ram~558_combout\;

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT\(0),
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT\(1),
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT\(2),
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT\(3),
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT\(4),
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT\(5),
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT\(6),
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT\(7),
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT\(8),
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX0|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(0));

\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(1));

\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(2));

\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(3));

\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(4));

\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(5));

\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX2(6));

\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(0));

\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(1));

\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX3|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(2));

\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(3));

\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(4));

\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(5));

\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX3(6));

\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(0));

\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(1));

\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX4|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(2));

\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(3));

\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(4));

\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(5));

\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX4(6));

\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX5|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoderHEX5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

\SAIDA_AND_HEX0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderSelEnd|Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA_AND_HEX0);

\DIN_HEX[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT\(0),
	devoe => ww_devoe,
	o => ww_DIN_HEX(0));

\DIN_HEX[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT\(1),
	devoe => ww_devoe,
	o => ww_DIN_HEX(1));

\DIN_HEX[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT\(2),
	devoe => ww_devoe,
	o => ww_DIN_HEX(2));

\DIN_HEX[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT\(3),
	devoe => ww_devoe,
	o => ww_DIN_HEX(3));

\SAIDA_AND_HEX1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderSelEnd|Equal0~1_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA_AND_HEX1);

\SAIDA_AND_HEX2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AndHEX2|saida~1_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA_AND_HEX2);

\SAIDA_AND_HEX3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderSelEnd|Equal0~2_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA_AND_HEX3);

\SAIDA_AND_HEX4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderSelEnd|Equal0~3_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA_AND_HEX4);

\SAIDA_AND_HEX5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DecoderSelEnd|Equal0~4_combout\,
	devoe => ww_devoe,
	o => ww_SAIDA_AND_HEX5);

\ACUMULADOR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT\(0),
	devoe => ww_devoe,
	o => ww_ACUMULADOR(0));

\ACUMULADOR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT\(1),
	devoe => ww_devoe,
	o => ww_ACUMULADOR(1));

\ACUMULADOR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT\(2),
	devoe => ww_devoe,
	o => ww_ACUMULADOR(2));

\ACUMULADOR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT\(3),
	devoe => ww_devoe,
	o => ww_ACUMULADOR(3));

\ACUMULADOR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT\(4),
	devoe => ww_devoe,
	o => ww_ACUMULADOR(4));

\ACUMULADOR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT\(5),
	devoe => ww_devoe,
	o => ww_ACUMULADOR(5));

\ACUMULADOR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT\(6),
	devoe => ww_devoe,
	o => ww_ACUMULADOR(6));

\ACUMULADOR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT\(7),
	devoe => ww_devoe,
	o => ww_ACUMULADOR(7));

\INSTRUCAO[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(0));

\INSTRUCAO[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~4_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(1));

\INSTRUCAO[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~6_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(2));

\INSTRUCAO[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(3));

\INSTRUCAO[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(4));

\INSTRUCAO[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(5));

\INSTRUCAO[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(6));

\INSTRUCAO[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(7));

\INSTRUCAO[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~10_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(8));

\INSTRUCAO[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~11_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(9));

\INSTRUCAO[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~13_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(10));

\INSTRUCAO[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~14_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(11));

\INSTRUCAO[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(12));

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\Processador|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~1_sumout\ = SUM(( \Processador|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \Processador|incrementaPC|Add0~2\ = CARRY(( \Processador|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \Processador|incrementaPC|Add0~1_sumout\,
	cout => \Processador|incrementaPC|Add0~2\);

\Processador|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~5_sumout\ = SUM(( \Processador|PC|DOUT\(1) ) + ( GND ) + ( \Processador|incrementaPC|Add0~2\ ))
-- \Processador|incrementaPC|Add0~6\ = CARRY(( \Processador|PC|DOUT\(1) ) + ( GND ) + ( \Processador|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	cin => \Processador|incrementaPC|Add0~2\,
	sumout => \Processador|incrementaPC|Add0~5_sumout\,
	cout => \Processador|incrementaPC|Add0~6\);

\ROM_instrucao|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~1_combout\ = (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(6) & !\Processador|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(4),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \Processador|PC|ALT_INV_DOUT\(6),
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	combout => \ROM_instrucao|memROM~1_combout\);

\ROM_instrucao|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~3_combout\ = (!\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(3)))) # (\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(0) $ 
-- (!\Processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000010000000010100001000000001010000100000000101000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~3_combout\);

\ROM_instrucao|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~4_combout\ = (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~1_combout\ & \ROM_instrucao|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	combout => \ROM_instrucao|memROM~4_combout\);

\ROM_instrucao|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~9_combout\ = (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(0) & ((\Processador|PC|DOUT\(3)) # (\Processador|PC|DOUT\(2))))) # (\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(0) $ (((\Processador|PC|DOUT\(2) & 
-- \Processador|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101001001010101010100100101010101010010010101010101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~9_combout\);

\ROM_instrucao|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~14_combout\ = (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~1_combout\ & !\ROM_instrucao|memROM~9_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \ROM_instrucao|memROM~14_combout\);

\ROM_instrucao|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~8_combout\ = (\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(1)) # ((!\Processador|PC|DOUT\(2)) # (!\Processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010101010101010001010101010101000101010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~8_combout\);

\ROM_instrucao|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~11_combout\ = (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~1_combout\ & \ROM_instrucao|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	combout => \ROM_instrucao|memROM~11_combout\);

\ROM_instrucao|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~12_combout\ = (!\Processador|PC|DOUT\(0) & (((\Processador|PC|DOUT\(3)) # (\Processador|PC|DOUT\(2))) # (\Processador|PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010101010001010101010101000101010101010100010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~12_combout\);

\ROM_instrucao|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~13_combout\ = (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~1_combout\ & \ROM_instrucao|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	combout => \ROM_instrucao|memROM~13_combout\);

\Processador|decoder|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~0_combout\ = (\ROM_instrucao|memROM~14_combout\ & (!\ROM_instrucao|memROM~11_combout\ & \ROM_instrucao|memROM~13_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \Processador|decoder|Equal10~0_combout\);

\Processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|incrementaPC|Add0~5_sumout\,
	asdata => \ROM_instrucao|memROM~4_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(1));

\Processador|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~9_sumout\ = SUM(( \Processador|PC|DOUT\(2) ) + ( GND ) + ( \Processador|incrementaPC|Add0~6\ ))
-- \Processador|incrementaPC|Add0~10\ = CARRY(( \Processador|PC|DOUT\(2) ) + ( GND ) + ( \Processador|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	cin => \Processador|incrementaPC|Add0~6\,
	sumout => \Processador|incrementaPC|Add0~9_sumout\,
	cout => \Processador|incrementaPC|Add0~10\);

\ROM_instrucao|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~5_combout\ = (\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(1) $ (!\Processador|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010100000000000001010000000000000101000000000000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~5_combout\);

\ROM_instrucao|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~6_combout\ = (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~1_combout\ & \ROM_instrucao|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \ROM_instrucao|memROM~6_combout\);

\Processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|incrementaPC|Add0~9_sumout\,
	asdata => \ROM_instrucao|memROM~6_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(2));

\Processador|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~13_sumout\ = SUM(( \Processador|PC|DOUT\(3) ) + ( GND ) + ( \Processador|incrementaPC|Add0~10\ ))
-- \Processador|incrementaPC|Add0~14\ = CARRY(( \Processador|PC|DOUT\(3) ) + ( GND ) + ( \Processador|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	cin => \Processador|incrementaPC|Add0~10\,
	sumout => \Processador|incrementaPC|Add0~13_sumout\,
	cout => \Processador|incrementaPC|Add0~14\);

\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\Processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|incrementaPC|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(3));

\Processador|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~17_sumout\ = SUM(( \Processador|PC|DOUT\(4) ) + ( GND ) + ( \Processador|incrementaPC|Add0~14\ ))
-- \Processador|incrementaPC|Add0~18\ = CARRY(( \Processador|PC|DOUT\(4) ) + ( GND ) + ( \Processador|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	cin => \Processador|incrementaPC|Add0~14\,
	sumout => \Processador|incrementaPC|Add0~17_sumout\,
	cout => \Processador|incrementaPC|Add0~18\);

\Processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|incrementaPC|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(4));

\Processador|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~21_sumout\ = SUM(( \Processador|PC|DOUT\(5) ) + ( GND ) + ( \Processador|incrementaPC|Add0~18\ ))
-- \Processador|incrementaPC|Add0~22\ = CARRY(( \Processador|PC|DOUT\(5) ) + ( GND ) + ( \Processador|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(5),
	cin => \Processador|incrementaPC|Add0~18\,
	sumout => \Processador|incrementaPC|Add0~21_sumout\,
	cout => \Processador|incrementaPC|Add0~22\);

\ROM_instrucao|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~7_combout\ = (\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(1) & ((\Processador|PC|DOUT\(3)) # (\Processador|PC|DOUT\(2)))) # (\Processador|PC|DOUT\(1) & ((!\Processador|PC|DOUT\(2)) # (!\Processador|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010100000101010101010000010101010101000001010101010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~7_combout\);

\ROM_instrucao|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~10_combout\ = (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~1_combout\ & \ROM_instrucao|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	combout => \ROM_instrucao|memROM~10_combout\);

\Processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|incrementaPC|Add0~21_sumout\,
	asdata => \ROM_instrucao|memROM~10_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(5));

\Processador|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~25_sumout\ = SUM(( \Processador|PC|DOUT\(6) ) + ( GND ) + ( \Processador|incrementaPC|Add0~22\ ))
-- \Processador|incrementaPC|Add0~26\ = CARRY(( \Processador|PC|DOUT\(6) ) + ( GND ) + ( \Processador|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(6),
	cin => \Processador|incrementaPC|Add0~22\,
	sumout => \Processador|incrementaPC|Add0~25_sumout\,
	cout => \Processador|incrementaPC|Add0~26\);

\Processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|incrementaPC|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(6));

\Processador|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~29_sumout\ = SUM(( \Processador|PC|DOUT\(7) ) + ( GND ) + ( \Processador|incrementaPC|Add0~26\ ))
-- \Processador|incrementaPC|Add0~30\ = CARRY(( \Processador|PC|DOUT\(7) ) + ( GND ) + ( \Processador|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	cin => \Processador|incrementaPC|Add0~26\,
	sumout => \Processador|incrementaPC|Add0~29_sumout\,
	cout => \Processador|incrementaPC|Add0~30\);

\Processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|incrementaPC|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(7));

\Processador|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~33_sumout\ = SUM(( \Processador|PC|DOUT\(8) ) + ( GND ) + ( \Processador|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(8),
	cin => \Processador|incrementaPC|Add0~30\,
	sumout => \Processador|incrementaPC|Add0~33_sumout\);

\Processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|incrementaPC|Add0~33_sumout\,
	asdata => \ROM_instrucao|memROM~10_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(8));

\ROM_instrucao|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~0_combout\ = (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(0) $ (((\Processador|PC|DOUT\(3)) # (\Processador|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010001000100100001000100010010000100010001001000010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~0_combout\);

\ROM_instrucao|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~2_combout\ = (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~0_combout\ & \ROM_instrucao|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~2_combout\);

\Processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|incrementaPC|Add0~1_sumout\,
	asdata => \ROM_instrucao|memROM~2_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(0));

\Processador|decoder|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~1_combout\ = ( !\ROM_instrucao|memROM~12_combout\ & ( (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~1_combout\ & (!\ROM_instrucao|memROM~8_combout\ & !\ROM_instrucao|memROM~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	combout => \Processador|decoder|Equal10~1_combout\);

\ROM_instrucao|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~15_combout\ = (\ROM_instrucao|memROM~0_combout\ & \ROM_instrucao|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~15_combout\);

\MemoriaRAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~559_combout\ = ( !\ROM_instrucao|memROM~9_combout\ & ( (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~1_combout\ & (!\ROM_instrucao|memROM~7_combout\ & \ROM_instrucao|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \MemoriaRAM|ram~559_combout\);

\MemoriaRAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~560_combout\ = (!\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~6_combout\ & \MemoriaRAM|ram~559_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~559_combout\,
	combout => \MemoriaRAM|ram~560_combout\);

\MemoriaRAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~15_q\);

\MemoriaRAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~561_combout\ = (\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~6_combout\ & \MemoriaRAM|ram~559_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~559_combout\,
	combout => \MemoriaRAM|ram~561_combout\);

\MemoriaRAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~23_q\);

\MemoriaRAM|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~562_combout\ = (!\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~4_combout\ & (\ROM_instrucao|memROM~6_combout\ & \MemoriaRAM|ram~559_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~559_combout\,
	combout => \MemoriaRAM|ram~562_combout\);

\MemoriaRAM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~47_q\);

\MemoriaRAM|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~563_combout\ = (\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~4_combout\ & (\ROM_instrucao|memROM~6_combout\ & \MemoriaRAM|ram~559_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~559_combout\,
	combout => \MemoriaRAM|ram~563_combout\);

\MemoriaRAM|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~55_q\);

\MemoriaRAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~527_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~55_q\ ) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~47_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~2_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~23_q\ ) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~15_q\,
	datab => \MemoriaRAM|ALT_INV_ram~23_q\,
	datac => \MemoriaRAM|ALT_INV_ram~47_q\,
	datad => \MemoriaRAM|ALT_INV_ram~55_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~527_combout\);

\MemoriaRAM|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~564_combout\ = (!\ROM_instrucao|memROM~2_combout\ & (\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~6_combout\ & \MemoriaRAM|ram~559_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~559_combout\,
	combout => \MemoriaRAM|ram~564_combout\);

\MemoriaRAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~31_q\);

\MemoriaRAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~565_combout\ = (\ROM_instrucao|memROM~2_combout\ & (\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~6_combout\ & \MemoriaRAM|ram~559_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~559_combout\,
	combout => \MemoriaRAM|ram~565_combout\);

\MemoriaRAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~39_q\);

\MemoriaRAM|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~566_combout\ = (!\ROM_instrucao|memROM~2_combout\ & (\ROM_instrucao|memROM~4_combout\ & (\ROM_instrucao|memROM~6_combout\ & \MemoriaRAM|ram~559_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~559_combout\,
	combout => \MemoriaRAM|ram~566_combout\);

\MemoriaRAM|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~63_q\);

\MemoriaRAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~567_combout\ = (\ROM_instrucao|memROM~2_combout\ & (\ROM_instrucao|memROM~4_combout\ & (\ROM_instrucao|memROM~6_combout\ & \MemoriaRAM|ram~559_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~559_combout\,
	combout => \MemoriaRAM|ram~567_combout\);

\MemoriaRAM|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~71_q\);

\MemoriaRAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~528_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~71_q\ ) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~63_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~2_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~39_q\ ) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~31_q\,
	datab => \MemoriaRAM|ALT_INV_ram~39_q\,
	datac => \MemoriaRAM|ALT_INV_ram~63_q\,
	datad => \MemoriaRAM|ALT_INV_ram~71_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~528_combout\);

\MemoriaRAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~529_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~528_combout\ ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~527_combout\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~527_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~528_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~529_combout\);

\Processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~1_sumout\ = SUM(( (!\Processador|decoder|Equal10~1_combout\ & (((\MemoriaRAM|ram~529_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~15_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(0) ) + ( !VCC ))
-- \Processador|ULA1|Add0~2\ = CARRY(( (!\Processador|decoder|Equal10~1_combout\ & (((\MemoriaRAM|ram~529_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~15_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~529_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \Processador|ULA1|Add0~1_sumout\,
	cout => \Processador|ULA1|Add0~2\);

\Processador|decoder|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida~0_combout\ = (!\ROM_instrucao|memROM~13_combout\ & (!\ROM_instrucao|memROM~14_combout\ $ (!\ROM_instrucao|memROM~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000001100000011000000110000001100000011000000110000001100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \Processador|decoder|saida~0_combout\);

\Processador|ULA1|Add1~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Processador|ULA1|Add1~34_cout\);

\Processador|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~1_sumout\ = SUM(( (!\Processador|decoder|Equal10~1_combout\ & (((!\MemoriaRAM|ram~529_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & ((!\ROM_instrucao|memROM~15_combout\) # ((\Processador|PC|DOUT\(8))))) ) + ( 
-- \Processador|REGA|DOUT\(0) ) + ( \Processador|ULA1|Add1~34_cout\ ))
-- \Processador|ULA1|Add1~2\ = CARRY(( (!\Processador|decoder|Equal10~1_combout\ & (((!\MemoriaRAM|ram~529_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & ((!\ROM_instrucao|memROM~15_combout\) # ((\Processador|PC|DOUT\(8))))) ) + ( 
-- \Processador|REGA|DOUT\(0) ) + ( \Processador|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \MemoriaRAM|ALT_INV_ram~529_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	cin => \Processador|ULA1|Add1~34_cout\,
	sumout => \Processador|ULA1|Add1~1_sumout\,
	cout => \Processador|ULA1|Add1~2\);

\Processador|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[0]~0_combout\ = ( \Processador|ULA1|Add1~1_sumout\ & ( (!\Processador|decoder|saida~0_combout\) # ((!\Processador|decoder|Equal10~1_combout\ & ((\MemoriaRAM|ram~529_combout\))) # (\Processador|decoder|Equal10~1_combout\ & 
-- (\ROM_instrucao|memROM~2_combout\))) ) ) # ( !\Processador|ULA1|Add1~1_sumout\ & ( (\Processador|decoder|saida~0_combout\ & ((!\Processador|decoder|Equal10~1_combout\ & ((\MemoriaRAM|ram~529_combout\))) # (\Processador|decoder|Equal10~1_combout\ & 
-- (\ROM_instrucao|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011101111111110001110100000000000111011111111100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~529_combout\,
	datad => \Processador|decoder|ALT_INV_saida~0_combout\,
	datae => \Processador|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \Processador|ULA1|saida[0]~0_combout\);

\Processador|decoder|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~2_combout\ = ((!\ROM_instrucao|memROM~13_combout\) # (\ROM_instrucao|memROM~11_combout\)) # (\ROM_instrucao|memROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111110111111101111111011111110111111101111111011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \Processador|decoder|Equal10~2_combout\);

\Processador|decoder|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida~1_combout\ = !\ROM_instrucao|memROM~14_combout\ $ (((!\ROM_instrucao|memROM~11_combout\ & !\ROM_instrucao|memROM~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110101001101010011010100110101001101010011010100110101001101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \Processador|decoder|saida~1_combout\);

\Processador|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|ULA1|Add0~1_sumout\,
	asdata => \Processador|ULA1|saida[0]~0_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(0));

\AndHEX2|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX2|saida~0_combout\ = ( !\ROM_instrucao|memROM~9_combout\ & ( (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~1_combout\ & (\ROM_instrucao|memROM~7_combout\ & \ROM_instrucao|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \AndHEX2|saida~0_combout\);

\DecoderSelEnd|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderSelEnd|Equal0~0_combout\ = (!\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~6_combout\ & \AndHEX2|saida~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \AndHEX2|ALT_INV_saida~0_combout\,
	combout => \DecoderSelEnd|Equal0~0_combout\);

\RegistradorHEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(0),
	ena => \DecoderSelEnd|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX0|DOUT\(0));

\MemoriaRAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~18_q\);

\MemoriaRAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~34_q\);

\MemoriaRAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~538_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~34_q\ ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~18_q\,
	datac => \MemoriaRAM|ALT_INV_ram~34_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~538_combout\);

\MemoriaRAM|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~50_q\);

\MemoriaRAM|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~66_q\);

\MemoriaRAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~539_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~66_q\ ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~50_q\,
	datac => \MemoriaRAM|ALT_INV_ram~66_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~539_combout\);

\MemoriaRAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~26_q\);

\MemoriaRAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~42_q\);

\MemoriaRAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~540_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~42_q\ ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~26_q\,
	datac => \MemoriaRAM|ALT_INV_ram~42_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~540_combout\);

\MemoriaRAM|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~58_q\);

\MemoriaRAM|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~74_q\);

\MemoriaRAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~541_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~74_q\ ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~58_q\,
	datac => \MemoriaRAM|ALT_INV_ram~74_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~541_combout\);

\MemoriaRAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~542_combout\ = ( \ROM_instrucao|memROM~6_combout\ & ( \ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~541_combout\ ) ) ) # ( !\ROM_instrucao|memROM~6_combout\ & ( \ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~540_combout\ ) ) ) 
-- # ( \ROM_instrucao|memROM~6_combout\ & ( !\ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~539_combout\ ) ) ) # ( !\ROM_instrucao|memROM~6_combout\ & ( !\ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~538_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~538_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~539_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~540_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~541_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~542_combout\);

\ROM_instrucao|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~17_combout\ = (\ROM_instrucao|memROM~1_combout\ & \ROM_instrucao|memROM~5_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \ROM_instrucao|memROM~17_combout\);

\ROM_instrucao|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~16_combout\ = (\ROM_instrucao|memROM~1_combout\ & \ROM_instrucao|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	combout => \ROM_instrucao|memROM~16_combout\);

\Processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~5_sumout\ = SUM(( (!\Processador|decoder|Equal10~1_combout\ & (((\MemoriaRAM|ram~534_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~16_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add0~2\ ))
-- \Processador|ULA1|Add0~6\ = CARRY(( (!\Processador|decoder|Equal10~1_combout\ & (((\MemoriaRAM|ram~534_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~16_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~534_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(1),
	cin => \Processador|ULA1|Add0~2\,
	sumout => \Processador|ULA1|Add0~5_sumout\,
	cout => \Processador|ULA1|Add0~6\);

\Processador|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~5_sumout\ = SUM(( (!\Processador|decoder|Equal10~1_combout\ & (((!\MemoriaRAM|ram~534_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (((!\ROM_instrucao|memROM~16_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add1~2\ ))
-- \Processador|ULA1|Add1~6\ = CARRY(( (!\Processador|decoder|Equal10~1_combout\ & (((!\MemoriaRAM|ram~534_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (((!\ROM_instrucao|memROM~16_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~534_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(1),
	cin => \Processador|ULA1|Add1~2\,
	sumout => \Processador|ULA1|Add1~5_sumout\,
	cout => \Processador|ULA1|Add1~6\);

\Processador|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[1]~1_combout\ = ( \Processador|ULA1|Add1~5_sumout\ & ( (!\Processador|decoder|saida~0_combout\) # ((!\Processador|decoder|Equal10~1_combout\ & ((\MemoriaRAM|ram~534_combout\))) # (\Processador|decoder|Equal10~1_combout\ & 
-- (\ROM_instrucao|memROM~4_combout\))) ) ) # ( !\Processador|ULA1|Add1~5_sumout\ & ( (\Processador|decoder|saida~0_combout\ & ((!\Processador|decoder|Equal10~1_combout\ & ((\MemoriaRAM|ram~534_combout\))) # (\Processador|decoder|Equal10~1_combout\ & 
-- (\ROM_instrucao|memROM~4_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \Processador|decoder|ALT_INV_saida~0_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~534_combout\,
	datae => \Processador|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \Processador|ULA1|saida[1]~1_combout\);

\Processador|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|ULA1|Add0~5_sumout\,
	asdata => \Processador|ULA1|saida[1]~1_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(1));

\MemoriaRAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~16_q\);

\MemoriaRAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~32_q\);

\MemoriaRAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~530_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~32_q\ ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~16_q\,
	datac => \MemoriaRAM|ALT_INV_ram~32_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~530_combout\);

\MemoriaRAM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~48_q\);

\MemoriaRAM|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~64_q\);

\MemoriaRAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~531_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~64_q\ ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~48_q\,
	datac => \MemoriaRAM|ALT_INV_ram~64_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~531_combout\);

\MemoriaRAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~24_q\);

\MemoriaRAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~40_q\);

\MemoriaRAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~532_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~40_q\ ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~24_q\,
	datac => \MemoriaRAM|ALT_INV_ram~40_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~532_combout\);

\MemoriaRAM|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~56_q\);

\MemoriaRAM|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~72_q\);

\MemoriaRAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~533_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~72_q\ ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~56_q\,
	datac => \MemoriaRAM|ALT_INV_ram~72_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~533_combout\);

\MemoriaRAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~534_combout\ = ( \ROM_instrucao|memROM~6_combout\ & ( \ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~533_combout\ ) ) ) # ( !\ROM_instrucao|memROM~6_combout\ & ( \ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~532_combout\ ) ) ) 
-- # ( \ROM_instrucao|memROM~6_combout\ & ( !\ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~531_combout\ ) ) ) # ( !\ROM_instrucao|memROM~6_combout\ & ( !\ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~530_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~530_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~531_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~532_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~533_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~534_combout\);

\Processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~9_sumout\ = SUM(( (!\Processador|decoder|Equal10~1_combout\ & (((\MemoriaRAM|ram~537_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (\ROM_instrucao|memROM~17_combout\ & (!\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(2) ) + ( \Processador|ULA1|Add0~6\ ))
-- \Processador|ULA1|Add0~10\ = CARRY(( (!\Processador|decoder|Equal10~1_combout\ & (((\MemoriaRAM|ram~537_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (\ROM_instrucao|memROM~17_combout\ & (!\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(2) ) + ( \Processador|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \MemoriaRAM|ALT_INV_ram~537_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	cin => \Processador|ULA1|Add0~6\,
	sumout => \Processador|ULA1|Add0~9_sumout\,
	cout => \Processador|ULA1|Add0~10\);

\Processador|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~9_sumout\ = SUM(( (!\Processador|decoder|Equal10~1_combout\ & (((!\MemoriaRAM|ram~537_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (((!\ROM_instrucao|memROM~17_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(2) ) + ( \Processador|ULA1|Add1~6\ ))
-- \Processador|ULA1|Add1~10\ = CARRY(( (!\Processador|decoder|Equal10~1_combout\ & (((!\MemoriaRAM|ram~537_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (((!\ROM_instrucao|memROM~17_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(2) ) + ( \Processador|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~537_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	cin => \Processador|ULA1|Add1~6\,
	sumout => \Processador|ULA1|Add1~9_sumout\,
	cout => \Processador|ULA1|Add1~10\);

\Processador|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[2]~2_combout\ = ( \Processador|ULA1|Add1~9_sumout\ & ( (!\Processador|decoder|saida~0_combout\) # ((!\Processador|decoder|Equal10~1_combout\ & ((\MemoriaRAM|ram~537_combout\))) # (\Processador|decoder|Equal10~1_combout\ & 
-- (\ROM_instrucao|memROM~6_combout\))) ) ) # ( !\Processador|ULA1|Add1~9_sumout\ & ( (\Processador|decoder|saida~0_combout\ & ((!\Processador|decoder|Equal10~1_combout\ & ((\MemoriaRAM|ram~537_combout\))) # (\Processador|decoder|Equal10~1_combout\ & 
-- (\ROM_instrucao|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \Processador|decoder|ALT_INV_saida~0_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~537_combout\,
	datae => \Processador|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \Processador|ULA1|saida[2]~2_combout\);

\Processador|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|ULA1|Add0~9_sumout\,
	asdata => \Processador|ULA1|saida[2]~2_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(2));

\MemoriaRAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~17_q\);

\MemoriaRAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~25_q\);

\MemoriaRAM|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~49_q\);

\MemoriaRAM|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~57_q\);

\MemoriaRAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~535_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~57_q\ ) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~49_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~2_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~25_q\ ) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~17_q\,
	datab => \MemoriaRAM|ALT_INV_ram~25_q\,
	datac => \MemoriaRAM|ALT_INV_ram~49_q\,
	datad => \MemoriaRAM|ALT_INV_ram~57_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~535_combout\);

\MemoriaRAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~33_q\);

\MemoriaRAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~41_q\);

\MemoriaRAM|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~65_q\);

\MemoriaRAM|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~73_q\);

\MemoriaRAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~536_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~73_q\ ) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~65_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~2_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~41_q\ ) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~33_q\,
	datab => \MemoriaRAM|ALT_INV_ram~41_q\,
	datac => \MemoriaRAM|ALT_INV_ram~65_q\,
	datad => \MemoriaRAM|ALT_INV_ram~73_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~536_combout\);

\MemoriaRAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~537_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~536_combout\ ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~535_combout\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~535_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~536_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~537_combout\);

\Processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~13_sumout\ = SUM(( (!\Processador|decoder|Equal10~1_combout\ & \MemoriaRAM|ram~542_combout\) ) + ( \Processador|REGA|DOUT\(3) ) + ( \Processador|ULA1|Add0~10\ ))
-- \Processador|ULA1|Add0~14\ = CARRY(( (!\Processador|decoder|Equal10~1_combout\ & \MemoriaRAM|ram~542_combout\) ) + ( \Processador|REGA|DOUT\(3) ) + ( \Processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~542_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(3),
	cin => \Processador|ULA1|Add0~10\,
	sumout => \Processador|ULA1|Add0~13_sumout\,
	cout => \Processador|ULA1|Add0~14\);

\Processador|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~13_sumout\ = SUM(( (!\MemoriaRAM|ram~542_combout\) # (\Processador|decoder|Equal10~1_combout\) ) + ( \Processador|REGA|DOUT\(3) ) + ( \Processador|ULA1|Add1~10\ ))
-- \Processador|ULA1|Add1~14\ = CARRY(( (!\MemoriaRAM|ram~542_combout\) # (\Processador|decoder|Equal10~1_combout\) ) + ( \Processador|REGA|DOUT\(3) ) + ( \Processador|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~542_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(3),
	cin => \Processador|ULA1|Add1~10\,
	sumout => \Processador|ULA1|Add1~13_sumout\,
	cout => \Processador|ULA1|Add1~14\);

\Processador|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[3]~3_combout\ = (!\Processador|decoder|saida~0_combout\ & (((\Processador|ULA1|Add1~13_sumout\)))) # (\Processador|decoder|saida~0_combout\ & (!\Processador|decoder|Equal10~1_combout\ & (\MemoriaRAM|ram~542_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datab => \Processador|decoder|ALT_INV_saida~0_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~542_combout\,
	datad => \Processador|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \Processador|ULA1|saida[3]~3_combout\);

\Processador|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|ULA1|Add0~13_sumout\,
	asdata => \Processador|ULA1|saida[3]~3_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(3));

\RegistradorHEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \DecoderSelEnd|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX0|DOUT\(3));

\RegistradorHEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \DecoderSelEnd|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX0|DOUT\(1));

\RegistradorHEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \DecoderSelEnd|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX0|DOUT\(2));

\decoderHEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[0]~0_combout\ = (!\RegistradorHEX0|DOUT\(3) & (!\RegistradorHEX0|DOUT\(1) & (!\RegistradorHEX0|DOUT\(0) $ (!\RegistradorHEX0|DOUT\(2))))) # (\RegistradorHEX0|DOUT\(3) & (\RegistradorHEX0|DOUT\(0) & (!\RegistradorHEX0|DOUT\(1) $ 
-- (!\RegistradorHEX0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(2),
	combout => \decoderHEX0|rascSaida7seg[0]~0_combout\);

\decoderHEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[1]~1_combout\ = (!\RegistradorHEX0|DOUT\(3) & (\RegistradorHEX0|DOUT\(2) & (!\RegistradorHEX0|DOUT\(0) $ (!\RegistradorHEX0|DOUT\(1))))) # (\RegistradorHEX0|DOUT\(3) & ((!\RegistradorHEX0|DOUT\(0) & 
-- ((\RegistradorHEX0|DOUT\(2)))) # (\RegistradorHEX0|DOUT\(0) & (\RegistradorHEX0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(2),
	combout => \decoderHEX0|rascSaida7seg[1]~1_combout\);

\decoderHEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[2]~2_combout\ = (!\RegistradorHEX0|DOUT\(3) & (!\RegistradorHEX0|DOUT\(0) & (\RegistradorHEX0|DOUT\(1) & !\RegistradorHEX0|DOUT\(2)))) # (\RegistradorHEX0|DOUT\(3) & (\RegistradorHEX0|DOUT\(2) & ((!\RegistradorHEX0|DOUT\(0)) # 
-- (\RegistradorHEX0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(2),
	combout => \decoderHEX0|rascSaida7seg[2]~2_combout\);

\decoderHEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[3]~3_combout\ = (!\RegistradorHEX0|DOUT\(1) & (!\RegistradorHEX0|DOUT\(3) & (!\RegistradorHEX0|DOUT\(0) $ (!\RegistradorHEX0|DOUT\(2))))) # (\RegistradorHEX0|DOUT\(1) & ((!\RegistradorHEX0|DOUT\(0) & (!\RegistradorHEX0|DOUT\(2) 
-- & \RegistradorHEX0|DOUT\(3))) # (\RegistradorHEX0|DOUT\(0) & (\RegistradorHEX0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX0|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(3),
	combout => \decoderHEX0|rascSaida7seg[3]~3_combout\);

\decoderHEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[4]~4_combout\ = (!\RegistradorHEX0|DOUT\(1) & ((!\RegistradorHEX0|DOUT\(2) & ((\RegistradorHEX0|DOUT\(0)))) # (\RegistradorHEX0|DOUT\(2) & (!\RegistradorHEX0|DOUT\(3))))) # (\RegistradorHEX0|DOUT\(1) & 
-- (!\RegistradorHEX0|DOUT\(3) & ((\RegistradorHEX0|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX0|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(0),
	combout => \decoderHEX0|rascSaida7seg[4]~4_combout\);

\decoderHEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[5]~5_combout\ = (!\RegistradorHEX0|DOUT\(0) & (\RegistradorHEX0|DOUT\(1) & (!\RegistradorHEX0|DOUT\(2) & !\RegistradorHEX0|DOUT\(3)))) # (\RegistradorHEX0|DOUT\(0) & (!\RegistradorHEX0|DOUT\(3) $ (((!\RegistradorHEX0|DOUT\(1) & 
-- \RegistradorHEX0|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX0|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(3),
	combout => \decoderHEX0|rascSaida7seg[5]~5_combout\);

\decoderHEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[6]~6_combout\ = (!\RegistradorHEX0|DOUT\(0) & (!\RegistradorHEX0|DOUT\(1) & (!\RegistradorHEX0|DOUT\(3) $ (\RegistradorHEX0|DOUT\(2))))) # (\RegistradorHEX0|DOUT\(0) & (!\RegistradorHEX0|DOUT\(3) & (!\RegistradorHEX0|DOUT\(1) $ 
-- (\RegistradorHEX0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(2),
	combout => \decoderHEX0|rascSaida7seg[6]~6_combout\);

\DecoderSelEnd|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderSelEnd|Equal0~1_combout\ = (\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~6_combout\ & \AndHEX2|saida~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \AndHEX2|ALT_INV_saida~0_combout\,
	combout => \DecoderSelEnd|Equal0~1_combout\);

\RegistradorHEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(0),
	ena => \DecoderSelEnd|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(0));

\RegistradorHEX1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \DecoderSelEnd|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(3));

\RegistradorHEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \DecoderSelEnd|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(1));

\RegistradorHEX1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \DecoderSelEnd|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(2));

\decoderHEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[0]~0_combout\ = (!\RegistradorHEX1|DOUT\(3) & (!\RegistradorHEX1|DOUT\(1) & (!\RegistradorHEX1|DOUT\(0) $ (!\RegistradorHEX1|DOUT\(2))))) # (\RegistradorHEX1|DOUT\(3) & (\RegistradorHEX1|DOUT\(0) & (!\RegistradorHEX1|DOUT\(1) $ 
-- (!\RegistradorHEX1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(2),
	combout => \decoderHEX1|rascSaida7seg[0]~0_combout\);

\decoderHEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[1]~1_combout\ = (!\RegistradorHEX1|DOUT\(3) & (\RegistradorHEX1|DOUT\(2) & (!\RegistradorHEX1|DOUT\(0) $ (!\RegistradorHEX1|DOUT\(1))))) # (\RegistradorHEX1|DOUT\(3) & ((!\RegistradorHEX1|DOUT\(0) & 
-- ((\RegistradorHEX1|DOUT\(2)))) # (\RegistradorHEX1|DOUT\(0) & (\RegistradorHEX1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(2),
	combout => \decoderHEX1|rascSaida7seg[1]~1_combout\);

\decoderHEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[2]~2_combout\ = (!\RegistradorHEX1|DOUT\(3) & (!\RegistradorHEX1|DOUT\(0) & (\RegistradorHEX1|DOUT\(1) & !\RegistradorHEX1|DOUT\(2)))) # (\RegistradorHEX1|DOUT\(3) & (\RegistradorHEX1|DOUT\(2) & ((!\RegistradorHEX1|DOUT\(0)) # 
-- (\RegistradorHEX1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(2),
	combout => \decoderHEX1|rascSaida7seg[2]~2_combout\);

\decoderHEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[3]~3_combout\ = (!\RegistradorHEX1|DOUT\(1) & (!\RegistradorHEX1|DOUT\(3) & (!\RegistradorHEX1|DOUT\(0) $ (!\RegistradorHEX1|DOUT\(2))))) # (\RegistradorHEX1|DOUT\(1) & ((!\RegistradorHEX1|DOUT\(0) & (!\RegistradorHEX1|DOUT\(2) 
-- & \RegistradorHEX1|DOUT\(3))) # (\RegistradorHEX1|DOUT\(0) & (\RegistradorHEX1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(3),
	combout => \decoderHEX1|rascSaida7seg[3]~3_combout\);

\decoderHEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[4]~4_combout\ = (!\RegistradorHEX1|DOUT\(1) & ((!\RegistradorHEX1|DOUT\(2) & ((\RegistradorHEX1|DOUT\(0)))) # (\RegistradorHEX1|DOUT\(2) & (!\RegistradorHEX1|DOUT\(3))))) # (\RegistradorHEX1|DOUT\(1) & 
-- (!\RegistradorHEX1|DOUT\(3) & ((\RegistradorHEX1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(0),
	combout => \decoderHEX1|rascSaida7seg[4]~4_combout\);

\decoderHEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[5]~5_combout\ = (!\RegistradorHEX1|DOUT\(0) & (\RegistradorHEX1|DOUT\(1) & (!\RegistradorHEX1|DOUT\(2) & !\RegistradorHEX1|DOUT\(3)))) # (\RegistradorHEX1|DOUT\(0) & (!\RegistradorHEX1|DOUT\(3) $ (((!\RegistradorHEX1|DOUT\(1) & 
-- \RegistradorHEX1|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(3),
	combout => \decoderHEX1|rascSaida7seg[5]~5_combout\);

\decoderHEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[6]~6_combout\ = (!\RegistradorHEX1|DOUT\(0) & (!\RegistradorHEX1|DOUT\(1) & (!\RegistradorHEX1|DOUT\(3) $ (\RegistradorHEX1|DOUT\(2))))) # (\RegistradorHEX1|DOUT\(0) & (!\RegistradorHEX1|DOUT\(3) & (!\RegistradorHEX1|DOUT\(1) $ 
-- (\RegistradorHEX1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(2),
	combout => \decoderHEX1|rascSaida7seg[6]~6_combout\);

\AndHEX2|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX2|saida~1_combout\ = (!\ROM_instrucao|memROM~2_combout\ & (\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~6_combout\ & \AndHEX2|saida~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \AndHEX2|ALT_INV_saida~0_combout\,
	combout => \AndHEX2|saida~1_combout\);

\RegistradorHEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(0),
	ena => \AndHEX2|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX2|DOUT\(0));

\RegistradorHEX2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \AndHEX2|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX2|DOUT\(3));

\RegistradorHEX2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \AndHEX2|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX2|DOUT\(1));

\RegistradorHEX2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \AndHEX2|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX2|DOUT\(2));

\decoderHEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[0]~0_combout\ = (!\RegistradorHEX2|DOUT\(3) & (!\RegistradorHEX2|DOUT\(1) & (!\RegistradorHEX2|DOUT\(0) $ (!\RegistradorHEX2|DOUT\(2))))) # (\RegistradorHEX2|DOUT\(3) & (\RegistradorHEX2|DOUT\(0) & (!\RegistradorHEX2|DOUT\(1) $ 
-- (!\RegistradorHEX2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(2),
	combout => \decoderHEX2|rascSaida7seg[0]~0_combout\);

\decoderHEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[1]~1_combout\ = (!\RegistradorHEX2|DOUT\(3) & (\RegistradorHEX2|DOUT\(2) & (!\RegistradorHEX2|DOUT\(0) $ (!\RegistradorHEX2|DOUT\(1))))) # (\RegistradorHEX2|DOUT\(3) & ((!\RegistradorHEX2|DOUT\(0) & 
-- ((\RegistradorHEX2|DOUT\(2)))) # (\RegistradorHEX2|DOUT\(0) & (\RegistradorHEX2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(2),
	combout => \decoderHEX2|rascSaida7seg[1]~1_combout\);

\decoderHEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[2]~2_combout\ = (!\RegistradorHEX2|DOUT\(3) & (!\RegistradorHEX2|DOUT\(0) & (\RegistradorHEX2|DOUT\(1) & !\RegistradorHEX2|DOUT\(2)))) # (\RegistradorHEX2|DOUT\(3) & (\RegistradorHEX2|DOUT\(2) & ((!\RegistradorHEX2|DOUT\(0)) # 
-- (\RegistradorHEX2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(2),
	combout => \decoderHEX2|rascSaida7seg[2]~2_combout\);

\decoderHEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[3]~3_combout\ = (!\RegistradorHEX2|DOUT\(1) & (!\RegistradorHEX2|DOUT\(3) & (!\RegistradorHEX2|DOUT\(0) $ (!\RegistradorHEX2|DOUT\(2))))) # (\RegistradorHEX2|DOUT\(1) & ((!\RegistradorHEX2|DOUT\(0) & (!\RegistradorHEX2|DOUT\(2) 
-- & \RegistradorHEX2|DOUT\(3))) # (\RegistradorHEX2|DOUT\(0) & (\RegistradorHEX2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX2|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(3),
	combout => \decoderHEX2|rascSaida7seg[3]~3_combout\);

\decoderHEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[4]~4_combout\ = (!\RegistradorHEX2|DOUT\(1) & ((!\RegistradorHEX2|DOUT\(2) & ((\RegistradorHEX2|DOUT\(0)))) # (\RegistradorHEX2|DOUT\(2) & (!\RegistradorHEX2|DOUT\(3))))) # (\RegistradorHEX2|DOUT\(1) & 
-- (!\RegistradorHEX2|DOUT\(3) & ((\RegistradorHEX2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX2|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(0),
	combout => \decoderHEX2|rascSaida7seg[4]~4_combout\);

\decoderHEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[5]~5_combout\ = (!\RegistradorHEX2|DOUT\(0) & (\RegistradorHEX2|DOUT\(1) & (!\RegistradorHEX2|DOUT\(2) & !\RegistradorHEX2|DOUT\(3)))) # (\RegistradorHEX2|DOUT\(0) & (!\RegistradorHEX2|DOUT\(3) $ (((!\RegistradorHEX2|DOUT\(1) & 
-- \RegistradorHEX2|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX2|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(3),
	combout => \decoderHEX2|rascSaida7seg[5]~5_combout\);

\decoderHEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[6]~6_combout\ = (!\RegistradorHEX2|DOUT\(0) & (!\RegistradorHEX2|DOUT\(1) & (!\RegistradorHEX2|DOUT\(3) $ (\RegistradorHEX2|DOUT\(2))))) # (\RegistradorHEX2|DOUT\(0) & (!\RegistradorHEX2|DOUT\(3) & (!\RegistradorHEX2|DOUT\(1) $ 
-- (\RegistradorHEX2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(2),
	combout => \decoderHEX2|rascSaida7seg[6]~6_combout\);

\DecoderSelEnd|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderSelEnd|Equal0~2_combout\ = (\ROM_instrucao|memROM~2_combout\ & (\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~6_combout\ & \AndHEX2|saida~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \AndHEX2|ALT_INV_saida~0_combout\,
	combout => \DecoderSelEnd|Equal0~2_combout\);

\RegistradorHEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(0),
	ena => \DecoderSelEnd|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT\(0));

\RegistradorHEX3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \DecoderSelEnd|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT\(3));

\RegistradorHEX3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \DecoderSelEnd|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT\(1));

\RegistradorHEX3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \DecoderSelEnd|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT\(2));

\decoderHEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[0]~0_combout\ = (!\RegistradorHEX3|DOUT\(3) & (!\RegistradorHEX3|DOUT\(1) & (!\RegistradorHEX3|DOUT\(0) $ (!\RegistradorHEX3|DOUT\(2))))) # (\RegistradorHEX3|DOUT\(3) & (\RegistradorHEX3|DOUT\(0) & (!\RegistradorHEX3|DOUT\(1) $ 
-- (!\RegistradorHEX3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(2),
	combout => \decoderHEX3|rascSaida7seg[0]~0_combout\);

\decoderHEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[1]~1_combout\ = (!\RegistradorHEX3|DOUT\(3) & (\RegistradorHEX3|DOUT\(2) & (!\RegistradorHEX3|DOUT\(0) $ (!\RegistradorHEX3|DOUT\(1))))) # (\RegistradorHEX3|DOUT\(3) & ((!\RegistradorHEX3|DOUT\(0) & 
-- ((\RegistradorHEX3|DOUT\(2)))) # (\RegistradorHEX3|DOUT\(0) & (\RegistradorHEX3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(2),
	combout => \decoderHEX3|rascSaida7seg[1]~1_combout\);

\decoderHEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[2]~2_combout\ = (!\RegistradorHEX3|DOUT\(3) & (!\RegistradorHEX3|DOUT\(0) & (\RegistradorHEX3|DOUT\(1) & !\RegistradorHEX3|DOUT\(2)))) # (\RegistradorHEX3|DOUT\(3) & (\RegistradorHEX3|DOUT\(2) & ((!\RegistradorHEX3|DOUT\(0)) # 
-- (\RegistradorHEX3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(2),
	combout => \decoderHEX3|rascSaida7seg[2]~2_combout\);

\decoderHEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[3]~3_combout\ = (!\RegistradorHEX3|DOUT\(1) & (!\RegistradorHEX3|DOUT\(3) & (!\RegistradorHEX3|DOUT\(0) $ (!\RegistradorHEX3|DOUT\(2))))) # (\RegistradorHEX3|DOUT\(1) & ((!\RegistradorHEX3|DOUT\(0) & (!\RegistradorHEX3|DOUT\(2) 
-- & \RegistradorHEX3|DOUT\(3))) # (\RegistradorHEX3|DOUT\(0) & (\RegistradorHEX3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(3),
	combout => \decoderHEX3|rascSaida7seg[3]~3_combout\);

\decoderHEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[4]~4_combout\ = (!\RegistradorHEX3|DOUT\(1) & ((!\RegistradorHEX3|DOUT\(2) & ((\RegistradorHEX3|DOUT\(0)))) # (\RegistradorHEX3|DOUT\(2) & (!\RegistradorHEX3|DOUT\(3))))) # (\RegistradorHEX3|DOUT\(1) & 
-- (!\RegistradorHEX3|DOUT\(3) & ((\RegistradorHEX3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(0),
	combout => \decoderHEX3|rascSaida7seg[4]~4_combout\);

\decoderHEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[5]~5_combout\ = (!\RegistradorHEX3|DOUT\(0) & (\RegistradorHEX3|DOUT\(1) & (!\RegistradorHEX3|DOUT\(2) & !\RegistradorHEX3|DOUT\(3)))) # (\RegistradorHEX3|DOUT\(0) & (!\RegistradorHEX3|DOUT\(3) $ (((!\RegistradorHEX3|DOUT\(1) & 
-- \RegistradorHEX3|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(3),
	combout => \decoderHEX3|rascSaida7seg[5]~5_combout\);

\decoderHEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[6]~6_combout\ = (!\RegistradorHEX3|DOUT\(0) & (!\RegistradorHEX3|DOUT\(1) & (!\RegistradorHEX3|DOUT\(3) $ (\RegistradorHEX3|DOUT\(2))))) # (\RegistradorHEX3|DOUT\(0) & (!\RegistradorHEX3|DOUT\(3) & (!\RegistradorHEX3|DOUT\(1) $ 
-- (\RegistradorHEX3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(2),
	combout => \decoderHEX3|rascSaida7seg[6]~6_combout\);

\DecoderSelEnd|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderSelEnd|Equal0~3_combout\ = (!\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~4_combout\ & (\ROM_instrucao|memROM~6_combout\ & \AndHEX2|saida~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \AndHEX2|ALT_INV_saida~0_combout\,
	combout => \DecoderSelEnd|Equal0~3_combout\);

\RegistradorHEX4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(0),
	ena => \DecoderSelEnd|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT\(0));

\RegistradorHEX4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \DecoderSelEnd|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT\(3));

\RegistradorHEX4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \DecoderSelEnd|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT\(1));

\RegistradorHEX4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \DecoderSelEnd|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT\(2));

\decoderHEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[0]~0_combout\ = (!\RegistradorHEX4|DOUT\(3) & (!\RegistradorHEX4|DOUT\(1) & (!\RegistradorHEX4|DOUT\(0) $ (!\RegistradorHEX4|DOUT\(2))))) # (\RegistradorHEX4|DOUT\(3) & (\RegistradorHEX4|DOUT\(0) & (!\RegistradorHEX4|DOUT\(1) $ 
-- (!\RegistradorHEX4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(2),
	combout => \decoderHEX4|rascSaida7seg[0]~0_combout\);

\decoderHEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[1]~1_combout\ = (!\RegistradorHEX4|DOUT\(3) & (\RegistradorHEX4|DOUT\(2) & (!\RegistradorHEX4|DOUT\(0) $ (!\RegistradorHEX4|DOUT\(1))))) # (\RegistradorHEX4|DOUT\(3) & ((!\RegistradorHEX4|DOUT\(0) & 
-- ((\RegistradorHEX4|DOUT\(2)))) # (\RegistradorHEX4|DOUT\(0) & (\RegistradorHEX4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(2),
	combout => \decoderHEX4|rascSaida7seg[1]~1_combout\);

\decoderHEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[2]~2_combout\ = (!\RegistradorHEX4|DOUT\(3) & (!\RegistradorHEX4|DOUT\(0) & (\RegistradorHEX4|DOUT\(1) & !\RegistradorHEX4|DOUT\(2)))) # (\RegistradorHEX4|DOUT\(3) & (\RegistradorHEX4|DOUT\(2) & ((!\RegistradorHEX4|DOUT\(0)) # 
-- (\RegistradorHEX4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(2),
	combout => \decoderHEX4|rascSaida7seg[2]~2_combout\);

\decoderHEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[3]~3_combout\ = (!\RegistradorHEX4|DOUT\(1) & (!\RegistradorHEX4|DOUT\(3) & (!\RegistradorHEX4|DOUT\(0) $ (!\RegistradorHEX4|DOUT\(2))))) # (\RegistradorHEX4|DOUT\(1) & ((!\RegistradorHEX4|DOUT\(0) & (!\RegistradorHEX4|DOUT\(2) 
-- & \RegistradorHEX4|DOUT\(3))) # (\RegistradorHEX4|DOUT\(0) & (\RegistradorHEX4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(3),
	combout => \decoderHEX4|rascSaida7seg[3]~3_combout\);

\decoderHEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[4]~4_combout\ = (!\RegistradorHEX4|DOUT\(1) & ((!\RegistradorHEX4|DOUT\(2) & ((\RegistradorHEX4|DOUT\(0)))) # (\RegistradorHEX4|DOUT\(2) & (!\RegistradorHEX4|DOUT\(3))))) # (\RegistradorHEX4|DOUT\(1) & 
-- (!\RegistradorHEX4|DOUT\(3) & ((\RegistradorHEX4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(0),
	combout => \decoderHEX4|rascSaida7seg[4]~4_combout\);

\decoderHEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[5]~5_combout\ = (!\RegistradorHEX4|DOUT\(0) & (\RegistradorHEX4|DOUT\(1) & (!\RegistradorHEX4|DOUT\(2) & !\RegistradorHEX4|DOUT\(3)))) # (\RegistradorHEX4|DOUT\(0) & (!\RegistradorHEX4|DOUT\(3) $ (((!\RegistradorHEX4|DOUT\(1) & 
-- \RegistradorHEX4|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(3),
	combout => \decoderHEX4|rascSaida7seg[5]~5_combout\);

\decoderHEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[6]~6_combout\ = (!\RegistradorHEX4|DOUT\(0) & (!\RegistradorHEX4|DOUT\(1) & (!\RegistradorHEX4|DOUT\(3) $ (\RegistradorHEX4|DOUT\(2))))) # (\RegistradorHEX4|DOUT\(0) & (!\RegistradorHEX4|DOUT\(3) & (!\RegistradorHEX4|DOUT\(1) $ 
-- (\RegistradorHEX4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(2),
	combout => \decoderHEX4|rascSaida7seg[6]~6_combout\);

\DecoderSelEnd|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderSelEnd|Equal0~4_combout\ = (\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~4_combout\ & (\ROM_instrucao|memROM~6_combout\ & \AndHEX2|saida~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \AndHEX2|ALT_INV_saida~0_combout\,
	combout => \DecoderSelEnd|Equal0~4_combout\);

\RegistradorHEX5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(0),
	ena => \DecoderSelEnd|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX5|DOUT\(0));

\RegistradorHEX5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \DecoderSelEnd|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX5|DOUT\(3));

\RegistradorHEX5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \DecoderSelEnd|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX5|DOUT\(1));

\RegistradorHEX5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \DecoderSelEnd|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX5|DOUT\(2));

\decoderHEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[0]~0_combout\ = (!\RegistradorHEX5|DOUT\(3) & (!\RegistradorHEX5|DOUT\(1) & (!\RegistradorHEX5|DOUT\(0) $ (!\RegistradorHEX5|DOUT\(2))))) # (\RegistradorHEX5|DOUT\(3) & (\RegistradorHEX5|DOUT\(0) & (!\RegistradorHEX5|DOUT\(1) $ 
-- (!\RegistradorHEX5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000110010000010000011001000001000001100100000100000110010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(2),
	combout => \decoderHEX5|rascSaida7seg[0]~0_combout\);

\decoderHEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[1]~1_combout\ = (!\RegistradorHEX5|DOUT\(3) & (\RegistradorHEX5|DOUT\(2) & (!\RegistradorHEX5|DOUT\(0) $ (!\RegistradorHEX5|DOUT\(1))))) # (\RegistradorHEX5|DOUT\(3) & ((!\RegistradorHEX5|DOUT\(0) & 
-- ((\RegistradorHEX5|DOUT\(2)))) # (\RegistradorHEX5|DOUT\(0) & (\RegistradorHEX5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101101011000000010110101100000001011010110000000101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(2),
	combout => \decoderHEX5|rascSaida7seg[1]~1_combout\);

\decoderHEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[2]~2_combout\ = (!\RegistradorHEX5|DOUT\(3) & (!\RegistradorHEX5|DOUT\(0) & (\RegistradorHEX5|DOUT\(1) & !\RegistradorHEX5|DOUT\(2)))) # (\RegistradorHEX5|DOUT\(3) & (\RegistradorHEX5|DOUT\(2) & ((!\RegistradorHEX5|DOUT\(0)) # 
-- (\RegistradorHEX5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000100011000010000010001100001000001000110000100000100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(2),
	combout => \decoderHEX5|rascSaida7seg[2]~2_combout\);

\decoderHEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[3]~3_combout\ = (!\RegistradorHEX5|DOUT\(1) & (!\RegistradorHEX5|DOUT\(3) & (!\RegistradorHEX5|DOUT\(0) $ (!\RegistradorHEX5|DOUT\(2))))) # (\RegistradorHEX5|DOUT\(1) & ((!\RegistradorHEX5|DOUT\(0) & (!\RegistradorHEX5|DOUT\(2) 
-- & \RegistradorHEX5|DOUT\(3))) # (\RegistradorHEX5|DOUT\(0) & (\RegistradorHEX5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(3),
	combout => \decoderHEX5|rascSaida7seg[3]~3_combout\);

\decoderHEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[4]~4_combout\ = (!\RegistradorHEX5|DOUT\(1) & ((!\RegistradorHEX5|DOUT\(2) & ((\RegistradorHEX5|DOUT\(0)))) # (\RegistradorHEX5|DOUT\(2) & (!\RegistradorHEX5|DOUT\(3))))) # (\RegistradorHEX5|DOUT\(1) & 
-- (!\RegistradorHEX5|DOUT\(3) & ((\RegistradorHEX5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011101010000010001110101000001000111010100000100011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(0),
	combout => \decoderHEX5|rascSaida7seg[4]~4_combout\);

\decoderHEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[5]~5_combout\ = (!\RegistradorHEX5|DOUT\(0) & (\RegistradorHEX5|DOUT\(1) & (!\RegistradorHEX5|DOUT\(2) & !\RegistradorHEX5|DOUT\(3)))) # (\RegistradorHEX5|DOUT\(0) & (!\RegistradorHEX5|DOUT\(3) $ (((!\RegistradorHEX5|DOUT\(1) & 
-- \RegistradorHEX5|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000100000100011100010000010001110001000001000111000100000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(3),
	combout => \decoderHEX5|rascSaida7seg[5]~5_combout\);

\decoderHEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[6]~6_combout\ = (!\RegistradorHEX5|DOUT\(0) & (!\RegistradorHEX5|DOUT\(1) & (!\RegistradorHEX5|DOUT\(3) $ (\RegistradorHEX5|DOUT\(2))))) # (\RegistradorHEX5|DOUT\(0) & (!\RegistradorHEX5|DOUT\(3) & (!\RegistradorHEX5|DOUT\(1) $ 
-- (\RegistradorHEX5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000100100110000000010010011000000001001001100000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(2),
	combout => \decoderHEX5|rascSaida7seg[6]~6_combout\);

\MemoriaRAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~19_q\);

\MemoriaRAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~27_q\);

\MemoriaRAM|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~51_q\);

\MemoriaRAM|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~59_q\);

\MemoriaRAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~543_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~59_q\ ) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~51_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~2_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~27_q\ ) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~19_q\,
	datab => \MemoriaRAM|ALT_INV_ram~27_q\,
	datac => \MemoriaRAM|ALT_INV_ram~51_q\,
	datad => \MemoriaRAM|ALT_INV_ram~59_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~543_combout\);

\MemoriaRAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~35_q\);

\MemoriaRAM|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~43_q\);

\MemoriaRAM|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~67_q\);

\MemoriaRAM|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~75_q\);

\MemoriaRAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~544_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~75_q\ ) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~67_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~2_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~43_q\ ) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~35_q\,
	datab => \MemoriaRAM|ALT_INV_ram~43_q\,
	datac => \MemoriaRAM|ALT_INV_ram~67_q\,
	datad => \MemoriaRAM|ALT_INV_ram~75_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~544_combout\);

\MemoriaRAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~545_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~544_combout\ ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~543_combout\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~543_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~544_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~545_combout\);

\Processador|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~17_sumout\ = SUM(( (!\Processador|decoder|Equal10~1_combout\ & \MemoriaRAM|ram~545_combout\) ) + ( \Processador|REGA|DOUT\(4) ) + ( \Processador|ULA1|Add0~14\ ))
-- \Processador|ULA1|Add0~18\ = CARRY(( (!\Processador|decoder|Equal10~1_combout\ & \MemoriaRAM|ram~545_combout\) ) + ( \Processador|REGA|DOUT\(4) ) + ( \Processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~545_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(4),
	cin => \Processador|ULA1|Add0~14\,
	sumout => \Processador|ULA1|Add0~17_sumout\,
	cout => \Processador|ULA1|Add0~18\);

\Processador|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~17_sumout\ = SUM(( (!\MemoriaRAM|ram~545_combout\) # (\Processador|decoder|Equal10~1_combout\) ) + ( \Processador|REGA|DOUT\(4) ) + ( \Processador|ULA1|Add1~14\ ))
-- \Processador|ULA1|Add1~18\ = CARRY(( (!\MemoriaRAM|ram~545_combout\) # (\Processador|decoder|Equal10~1_combout\) ) + ( \Processador|REGA|DOUT\(4) ) + ( \Processador|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~545_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(4),
	cin => \Processador|ULA1|Add1~14\,
	sumout => \Processador|ULA1|Add1~17_sumout\,
	cout => \Processador|ULA1|Add1~18\);

\Processador|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[4]~4_combout\ = (!\Processador|decoder|saida~0_combout\ & (((\Processador|ULA1|Add1~17_sumout\)))) # (\Processador|decoder|saida~0_combout\ & (!\Processador|decoder|Equal10~1_combout\ & (\MemoriaRAM|ram~545_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datab => \Processador|decoder|ALT_INV_saida~0_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~545_combout\,
	datad => \Processador|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \Processador|ULA1|saida[4]~4_combout\);

\Processador|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|ULA1|Add0~17_sumout\,
	asdata => \Processador|ULA1|saida[4]~4_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(4));

\ROM_instrucao|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~18_combout\ = (\ROM_instrucao|memROM~1_combout\ & \ROM_instrucao|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	combout => \ROM_instrucao|memROM~18_combout\);

\MemoriaRAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~20_q\);

\MemoriaRAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~36_q\);

\MemoriaRAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~546_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~36_q\ ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~20_q\,
	datac => \MemoriaRAM|ALT_INV_ram~36_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~546_combout\);

\MemoriaRAM|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~52_q\);

\MemoriaRAM|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~68_q\);

\MemoriaRAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~547_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~68_q\ ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~52_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~52_q\,
	datac => \MemoriaRAM|ALT_INV_ram~68_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~547_combout\);

\MemoriaRAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~28_q\);

\MemoriaRAM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~44_q\);

\MemoriaRAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~548_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~44_q\ ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~28_q\,
	datac => \MemoriaRAM|ALT_INV_ram~44_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~548_combout\);

\MemoriaRAM|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~60_q\);

\MemoriaRAM|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~76_q\);

\MemoriaRAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~549_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~76_q\ ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~60_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~60_q\,
	datac => \MemoriaRAM|ALT_INV_ram~76_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~549_combout\);

\MemoriaRAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~550_combout\ = ( \ROM_instrucao|memROM~6_combout\ & ( \ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~549_combout\ ) ) ) # ( !\ROM_instrucao|memROM~6_combout\ & ( \ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~548_combout\ ) ) ) 
-- # ( \ROM_instrucao|memROM~6_combout\ & ( !\ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~547_combout\ ) ) ) # ( !\ROM_instrucao|memROM~6_combout\ & ( !\ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~546_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~546_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~547_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~548_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~549_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~550_combout\);

\Processador|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~21_sumout\ = SUM(( (!\Processador|decoder|Equal10~1_combout\ & (((\MemoriaRAM|ram~550_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (\ROM_instrucao|memROM~18_combout\ & (!\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(5) ) + ( \Processador|ULA1|Add0~18\ ))
-- \Processador|ULA1|Add0~22\ = CARRY(( (!\Processador|decoder|Equal10~1_combout\ & (((\MemoriaRAM|ram~550_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (\ROM_instrucao|memROM~18_combout\ & (!\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(5) ) + ( \Processador|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \MemoriaRAM|ALT_INV_ram~550_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(5),
	cin => \Processador|ULA1|Add0~18\,
	sumout => \Processador|ULA1|Add0~21_sumout\,
	cout => \Processador|ULA1|Add0~22\);

\Processador|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~21_sumout\ = SUM(( (!\Processador|decoder|Equal10~1_combout\ & (((!\MemoriaRAM|ram~550_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & ((!\ROM_instrucao|memROM~18_combout\) # ((\Processador|PC|DOUT\(8))))) ) + ( 
-- \Processador|REGA|DOUT\(5) ) + ( \Processador|ULA1|Add1~18\ ))
-- \Processador|ULA1|Add1~22\ = CARRY(( (!\Processador|decoder|Equal10~1_combout\ & (((!\MemoriaRAM|ram~550_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & ((!\ROM_instrucao|memROM~18_combout\) # ((\Processador|PC|DOUT\(8))))) ) + ( 
-- \Processador|REGA|DOUT\(5) ) + ( \Processador|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \MemoriaRAM|ALT_INV_ram~550_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(5),
	cin => \Processador|ULA1|Add1~18\,
	sumout => \Processador|ULA1|Add1~21_sumout\,
	cout => \Processador|ULA1|Add1~22\);

\Processador|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[5]~5_combout\ = ( \Processador|ULA1|Add1~21_sumout\ & ( (!\Processador|decoder|saida~0_combout\) # ((!\Processador|decoder|Equal10~1_combout\ & ((\MemoriaRAM|ram~550_combout\))) # (\Processador|decoder|Equal10~1_combout\ & 
-- (\ROM_instrucao|memROM~10_combout\))) ) ) # ( !\Processador|ULA1|Add1~21_sumout\ & ( (\Processador|decoder|saida~0_combout\ & ((!\Processador|decoder|Equal10~1_combout\ & ((\MemoriaRAM|ram~550_combout\))) # (\Processador|decoder|Equal10~1_combout\ & 
-- (\ROM_instrucao|memROM~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101111100011111110100000001000011011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \Processador|decoder|ALT_INV_saida~0_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~550_combout\,
	datae => \Processador|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \Processador|ULA1|saida[5]~5_combout\);

\Processador|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|ULA1|Add0~21_sumout\,
	asdata => \Processador|ULA1|saida[5]~5_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(5));

\MemoriaRAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~21_q\);

\MemoriaRAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~29_q\);

\MemoriaRAM|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~53_q\);

\MemoriaRAM|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~61_q\);

\MemoriaRAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~551_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~61_q\ ) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~53_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~2_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~29_q\ ) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~21_q\,
	datab => \MemoriaRAM|ALT_INV_ram~29_q\,
	datac => \MemoriaRAM|ALT_INV_ram~53_q\,
	datad => \MemoriaRAM|ALT_INV_ram~61_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~551_combout\);

\MemoriaRAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~37_q\);

\MemoriaRAM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~45_q\);

\MemoriaRAM|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~69_q\);

\MemoriaRAM|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~77_q\);

\MemoriaRAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~552_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~77_q\ ) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~69_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~2_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~45_q\ ) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~37_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~37_q\,
	datab => \MemoriaRAM|ALT_INV_ram~45_q\,
	datac => \MemoriaRAM|ALT_INV_ram~69_q\,
	datad => \MemoriaRAM|ALT_INV_ram~77_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~552_combout\);

\MemoriaRAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~553_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~552_combout\ ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~551_combout\ ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~551_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~552_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~553_combout\);

\Processador|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~25_sumout\ = SUM(( (!\Processador|decoder|Equal10~1_combout\ & \MemoriaRAM|ram~553_combout\) ) + ( \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add0~22\ ))
-- \Processador|ULA1|Add0~26\ = CARRY(( (!\Processador|decoder|Equal10~1_combout\ & \MemoriaRAM|ram~553_combout\) ) + ( \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~553_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(6),
	cin => \Processador|ULA1|Add0~22\,
	sumout => \Processador|ULA1|Add0~25_sumout\,
	cout => \Processador|ULA1|Add0~26\);

\Processador|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~25_sumout\ = SUM(( (!\MemoriaRAM|ram~553_combout\) # (\Processador|decoder|Equal10~1_combout\) ) + ( \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add1~22\ ))
-- \Processador|ULA1|Add1~26\ = CARRY(( (!\MemoriaRAM|ram~553_combout\) # (\Processador|decoder|Equal10~1_combout\) ) + ( \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~553_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(6),
	cin => \Processador|ULA1|Add1~22\,
	sumout => \Processador|ULA1|Add1~25_sumout\,
	cout => \Processador|ULA1|Add1~26\);

\Processador|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[6]~6_combout\ = (!\Processador|decoder|saida~0_combout\ & (((\Processador|ULA1|Add1~25_sumout\)))) # (\Processador|decoder|saida~0_combout\ & (!\Processador|decoder|Equal10~1_combout\ & (\MemoriaRAM|ram~553_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datab => \Processador|decoder|ALT_INV_saida~0_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~553_combout\,
	datad => \Processador|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \Processador|ULA1|saida[6]~6_combout\);

\Processador|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|ULA1|Add0~25_sumout\,
	asdata => \Processador|ULA1|saida[6]~6_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(6));

\MemoriaRAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~22_q\);

\MemoriaRAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~38_q\);

\MemoriaRAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~554_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~38_q\ ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~22_q\,
	datac => \MemoriaRAM|ALT_INV_ram~38_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~554_combout\);

\MemoriaRAM|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~54_q\);

\MemoriaRAM|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~70_q\);

\MemoriaRAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~555_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~70_q\ ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~54_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~54_q\,
	datac => \MemoriaRAM|ALT_INV_ram~70_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~555_combout\);

\MemoriaRAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~30_q\);

\MemoriaRAM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~46_q\);

\MemoriaRAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~556_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~46_q\ ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~30_q\,
	datac => \MemoriaRAM|ALT_INV_ram~46_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~556_combout\);

\MemoriaRAM|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~62_q\);

\MemoriaRAM|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~78_q\);

\MemoriaRAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~557_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~78_q\ ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~62_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~62_q\,
	datac => \MemoriaRAM|ALT_INV_ram~78_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~557_combout\);

\MemoriaRAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~558_combout\ = ( \ROM_instrucao|memROM~6_combout\ & ( \ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~557_combout\ ) ) ) # ( !\ROM_instrucao|memROM~6_combout\ & ( \ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~556_combout\ ) ) ) 
-- # ( \ROM_instrucao|memROM~6_combout\ & ( !\ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~555_combout\ ) ) ) # ( !\ROM_instrucao|memROM~6_combout\ & ( !\ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~554_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~554_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~555_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~556_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~557_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~558_combout\);

\Processador|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~29_sumout\ = SUM(( (!\Processador|decoder|Equal10~1_combout\ & \MemoriaRAM|ram~558_combout\) ) + ( \Processador|REGA|DOUT\(7) ) + ( \Processador|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~558_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(7),
	cin => \Processador|ULA1|Add0~26\,
	sumout => \Processador|ULA1|Add0~29_sumout\);

\Processador|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~29_sumout\ = SUM(( (!\MemoriaRAM|ram~558_combout\) # (\Processador|decoder|Equal10~1_combout\) ) + ( \Processador|REGA|DOUT\(7) ) + ( \Processador|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~558_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(7),
	cin => \Processador|ULA1|Add1~26\,
	sumout => \Processador|ULA1|Add1~29_sumout\);

\Processador|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[7]~7_combout\ = (!\Processador|decoder|saida~0_combout\ & (((\Processador|ULA1|Add1~29_sumout\)))) # (\Processador|decoder|saida~0_combout\ & (!\Processador|decoder|Equal10~1_combout\ & (\MemoriaRAM|ram~558_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001011001110000000101100111000000010110011100000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datab => \Processador|decoder|ALT_INV_saida~0_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~558_combout\,
	datad => \Processador|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \Processador|ULA1|saida[7]~7_combout\);

\Processador|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|ULA1|Add0~29_sumout\,
	asdata => \Processador|ULA1|saida[7]~7_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(7));

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\KEY0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

\KEY1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

\KEY2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY2,
	o => \KEY2~input_o\);

\KEY3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY3,
	o => \KEY3~input_o\);

\FPGA_RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET,
	o => \FPGA_RESET~input_o\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);
END structure;


