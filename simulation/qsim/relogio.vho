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

-- DATE "04/25/2022 15:54:55"

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
	FPGA_RESET_N : IN std_logic;
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
	SAIDA_AND_LED8 : OUT std_logic;
	SAIDA_AND_LED9 : OUT std_logic;
	SAIDA_AND_SW0_7 : OUT std_logic;
	CONTROLES : OUT std_logic_vector(3 DOWNTO 0);
	ACUMULADOR : OUT std_logic_vector(7 DOWNTO 0);
	INSTRUCAO : OUT std_logic_vector(12 DOWNTO 0);
	ED_KEY0 : OUT std_logic;
	ED_KEY1 : OUT std_logic;
	DB_MEM_KEY0 : OUT std_logic;
	DB_MEM_KEY1 : OUT std_logic
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
SIGNAL ww_FPGA_RESET_N : std_logic;
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
SIGNAL ww_SAIDA_AND_LED8 : std_logic;
SIGNAL ww_SAIDA_AND_LED9 : std_logic;
SIGNAL ww_SAIDA_AND_SW0_7 : std_logic;
SIGNAL ww_CONTROLES : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_ACUMULADOR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_INSTRUCAO : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_ED_KEY0 : std_logic;
SIGNAL ww_ED_KEY1 : std_logic;
SIGNAL ww_DB_MEM_KEY0 : std_logic;
SIGNAL ww_DB_MEM_KEY1 : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \SAIDA_AND_HEX0~output_o\ : std_logic;
SIGNAL \DIN_HEX[0]~output_o\ : std_logic;
SIGNAL \DIN_HEX[1]~output_o\ : std_logic;
SIGNAL \DIN_HEX[2]~output_o\ : std_logic;
SIGNAL \DIN_HEX[3]~output_o\ : std_logic;
SIGNAL \SAIDA_AND_HEX1~output_o\ : std_logic;
SIGNAL \SAIDA_AND_HEX2~output_o\ : std_logic;
SIGNAL \SAIDA_AND_HEX3~output_o\ : std_logic;
SIGNAL \SAIDA_AND_HEX4~output_o\ : std_logic;
SIGNAL \SAIDA_AND_HEX5~output_o\ : std_logic;
SIGNAL \SAIDA_AND_LED8~output_o\ : std_logic;
SIGNAL \SAIDA_AND_LED9~output_o\ : std_logic;
SIGNAL \SAIDA_AND_SW0_7~output_o\ : std_logic;
SIGNAL \CONTROLES[0]~output_o\ : std_logic;
SIGNAL \CONTROLES[1]~output_o\ : std_logic;
SIGNAL \CONTROLES[2]~output_o\ : std_logic;
SIGNAL \CONTROLES[3]~output_o\ : std_logic;
SIGNAL \ACUMULADOR[0]~output_o\ : std_logic;
SIGNAL \ACUMULADOR[1]~output_o\ : std_logic;
SIGNAL \ACUMULADOR[2]~output_o\ : std_logic;
SIGNAL \ACUMULADOR[3]~output_o\ : std_logic;
SIGNAL \ACUMULADOR[4]~output_o\ : std_logic;
SIGNAL \ACUMULADOR[5]~output_o\ : std_logic;
SIGNAL \ACUMULADOR[6]~output_o\ : std_logic;
SIGNAL \ACUMULADOR[7]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[0]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[1]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[2]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[3]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[4]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[5]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[6]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[7]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[8]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[9]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[10]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[11]~output_o\ : std_logic;
SIGNAL \INSTRUCAO[12]~output_o\ : std_logic;
SIGNAL \ED_KEY0~output_o\ : std_logic;
SIGNAL \ED_KEY1~output_o\ : std_logic;
SIGNAL \DB_MEM_KEY0~output_o\ : std_logic;
SIGNAL \DB_MEM_KEY1~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \divisor|Add0~1_sumout\ : std_logic;
SIGNAL \divisor|Add0~2\ : std_logic;
SIGNAL \divisor|Add0~37_sumout\ : std_logic;
SIGNAL \divisor|Add0~38\ : std_logic;
SIGNAL \divisor|Add0~25_sumout\ : std_logic;
SIGNAL \divisor|Add0~26\ : std_logic;
SIGNAL \divisor|Add0~41_sumout\ : std_logic;
SIGNAL \divisor|Add0~42\ : std_logic;
SIGNAL \divisor|Add0~45_sumout\ : std_logic;
SIGNAL \divisor|Add0~46\ : std_logic;
SIGNAL \divisor|Add0~49_sumout\ : std_logic;
SIGNAL \divisor|Add0~50\ : std_logic;
SIGNAL \divisor|Add0~53_sumout\ : std_logic;
SIGNAL \divisor|Add0~54\ : std_logic;
SIGNAL \divisor|Add0~57_sumout\ : std_logic;
SIGNAL \divisor|Add0~58\ : std_logic;
SIGNAL \divisor|Add0~5_sumout\ : std_logic;
SIGNAL \divisor|Add0~6\ : std_logic;
SIGNAL \divisor|Add0~9_sumout\ : std_logic;
SIGNAL \divisor|Add0~10\ : std_logic;
SIGNAL \divisor|Add0~61_sumout\ : std_logic;
SIGNAL \divisor|Add0~62\ : std_logic;
SIGNAL \divisor|Add0~13_sumout\ : std_logic;
SIGNAL \divisor|Add0~14\ : std_logic;
SIGNAL \divisor|Add0~17_sumout\ : std_logic;
SIGNAL \divisor|Add0~18\ : std_logic;
SIGNAL \divisor|Add0~21_sumout\ : std_logic;
SIGNAL \divisor|Equal0~0_combout\ : std_logic;
SIGNAL \divisor|Add0~22\ : std_logic;
SIGNAL \divisor|Add0~33_sumout\ : std_logic;
SIGNAL \divisor|Add0~34\ : std_logic;
SIGNAL \divisor|Add0~29_sumout\ : std_logic;
SIGNAL \divisor|Equal0~1_combout\ : std_logic;
SIGNAL \divisor|Equal0~2_combout\ : std_logic;
SIGNAL \divisor|Equal0~3_combout\ : std_logic;
SIGNAL \divisor|tick~0_combout\ : std_logic;
SIGNAL \divisor|tick~q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~29_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~30_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~31_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~32_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~33_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~34_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~11_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~12_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~13_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~14_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~9_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~10_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~2_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~5_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~6_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~7_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~25_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal14~0_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~8_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~5_combout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~1_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~22_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~24_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~15_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~17_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~18_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~19_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~3_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~4_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~2_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~3_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~40_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~26_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~27_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~20_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~23_combout\ : std_logic;
SIGNAL \AndSW0_7|saida~0_combout\ : std_logic;
SIGNAL \AndSW0_7|saida~1_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \ROM_instrucao|memROM~35_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~39_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \ROM_instrucao|memROM~37_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~38_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \ROM_instrucao|memROM~43_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \ROM_instrucao|memROM~42_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \ROM_instrucao|memROM~41_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \Processador|decoder|saida~1_combout\ : std_logic;
SIGNAL \Processador|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~4_combout\ : std_logic;
SIGNAL \Processador|decoder|saida[5]~2_combout\ : std_logic;
SIGNAL \DecoderHabBloc|Equal0~0_combout\ : std_logic;
SIGNAL \MemoriaRAM|process_0~0_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~695_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~696_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~15_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~697_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~698_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~271_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~699_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~700_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~23_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~701_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~702_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~279_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~527_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~703_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~704_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~143_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~705_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~706_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~399_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~707_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~708_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~151_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~709_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~710_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~407_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~528_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~711_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~712_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~79_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~713_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~714_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~335_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~715_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~716_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~87_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~717_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~718_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~343_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~529_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~719_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~720_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~207_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~721_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~722_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~463_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~723_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~724_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~215_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~725_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~726_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~471_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~530_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~531_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~727_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~728_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~47_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~729_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~730_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~303_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~731_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~732_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~55_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~733_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~734_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~311_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~532_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~735_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~736_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~175_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~737_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~738_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~431_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~739_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~740_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~183_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~741_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~742_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~439_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~533_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~743_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~744_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~111_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~745_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~746_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~367_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~747_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~748_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~119_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~749_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~750_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~375_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~534_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~751_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~752_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~239_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~753_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~754_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~495_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~755_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~756_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~247_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~757_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~758_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~503_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~535_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~536_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~759_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~760_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~31_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~761_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~762_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~287_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~763_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~764_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~39_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~765_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~766_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~295_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~537_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~767_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~768_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~159_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~769_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~770_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~415_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~771_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~772_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~167_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~773_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~774_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~423_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~538_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~775_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~776_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~95_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~777_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~778_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~351_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~779_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~780_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~103_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~781_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~782_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~359_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~539_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~783_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~784_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~223_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~785_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~786_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~479_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~787_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~788_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~231_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~789_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~790_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~487_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~540_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~541_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~791_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~792_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~63_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~793_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~794_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~319_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~795_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~796_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~191_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~797_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~798_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~447_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~542_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~799_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~800_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~71_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~801_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~802_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~327_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~803_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~804_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~199_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~805_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~806_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~455_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~543_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~807_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~808_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~127_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~809_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~810_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~383_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~811_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~812_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~255_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~813_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~814_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~511_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~544_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~815_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~816_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~135_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~817_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~818_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~391_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~819_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~820_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~263_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~821_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~822_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~519_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~545_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~546_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~547_combout\ : std_logic;
SIGNAL \Data_IN[0]~2_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \AndSW0_7|saida~2_combout\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \Data_IN[0]~3_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~4_combout\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~5_combout\ : std_logic;
SIGNAL \Data_IN[0]~6_combout\ : std_logic;
SIGNAL \Data_IN[0]~7_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~2\ : std_logic;
SIGNAL \Processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~22\ : std_logic;
SIGNAL \Processador|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~16_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~272_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~32_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~288_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~548_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~48_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~304_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~64_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~320_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~549_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~80_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~336_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~96_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~352_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~550_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~112_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~368_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~128_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~384_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~551_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~552_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~24_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~280_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~88_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~344_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~553_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~56_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~312_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~120_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~376_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~554_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~40_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~296_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~104_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~360_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~555_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~72_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~328_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~136_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~392_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~556_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~557_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~144_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~400_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~176_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~432_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~558_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~160_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~416_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~192_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~448_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~559_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~208_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~464_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~240_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~496_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~560_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~224_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~480_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~256_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~512_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~561_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~562_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~152_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~408_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~168_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~424_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~563_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~184_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~440_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~200_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~456_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~564_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~216_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~472_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~232_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~488_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~565_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~248_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~504_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~264_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~520_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~566_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~567_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~568_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~6\ : std_logic;
SIGNAL \Processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~26\ : std_logic;
SIGNAL \Processador|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~17_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~49_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~81_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~113_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~569_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~145_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~177_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~209_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~241_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~570_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~33_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~65_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~97_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~129_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~571_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~161_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~193_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~225_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~257_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~572_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~573_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~273_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~305_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~401_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~433_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~574_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~289_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~321_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~417_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~449_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~575_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~337_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~369_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~465_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~497_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~576_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~353_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~385_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~481_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~513_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~577_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~578_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~25_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~57_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~41_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~73_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~579_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~153_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~185_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~169_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~201_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~580_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~89_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~121_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~105_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~137_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~581_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~217_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~249_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~233_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~265_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~582_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~583_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~281_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~409_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~345_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~473_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~584_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~313_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~441_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~377_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~505_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~585_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~297_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~425_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~361_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~489_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~586_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~329_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~457_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~393_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~521_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~587_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~588_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~589_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~10\ : std_logic;
SIGNAL \Processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~30\ : std_logic;
SIGNAL \Processador|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~18_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~26_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~34_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~42_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~590_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~146_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~154_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~162_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~170_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~591_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~82_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~90_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~98_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~106_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~592_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~210_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~218_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~226_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~234_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~593_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~594_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~274_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~402_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~290_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~418_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~595_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~282_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~410_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~298_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~426_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~596_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~338_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~466_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~354_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~482_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~597_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~346_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~474_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~362_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~490_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~598_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~599_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~50_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~66_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~114_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~130_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~600_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~58_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~74_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~122_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~138_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~601_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~178_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~194_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~242_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~258_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~602_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~186_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~202_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~250_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~266_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~603_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~604_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~306_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~314_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~322_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~330_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~605_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~434_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~442_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~450_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~458_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~606_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~370_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~378_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~386_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~394_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~607_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~498_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~506_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~514_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~522_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~608_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~609_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~610_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~14\ : std_logic;
SIGNAL \Processador|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~2\ : std_logic;
SIGNAL \Processador|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~19_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~27_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~51_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~59_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~611_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~147_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~155_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~179_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~187_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~612_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~83_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~91_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~115_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~123_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~613_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~211_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~219_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~243_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~251_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~614_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~615_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~275_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~283_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~339_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~347_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~616_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~307_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~315_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~371_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~379_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~617_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~403_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~411_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~467_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~475_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~618_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~435_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~443_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~499_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~507_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~619_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~620_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~35_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~43_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~163_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~171_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~621_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~67_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~75_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~195_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~203_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~622_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~99_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~107_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~227_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~235_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~623_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~131_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~139_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~259_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~267_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~624_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~625_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~291_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~299_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~323_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~331_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~626_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~419_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~427_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~451_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~459_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~627_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~355_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~363_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~387_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~395_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~628_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~483_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~491_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~515_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~523_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~629_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~630_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~631_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~18\ : std_logic;
SIGNAL \Processador|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~20_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~52_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~36_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~68_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~632_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~148_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~180_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~164_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~196_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~633_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~84_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~116_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~100_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~132_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~634_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~212_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~244_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~228_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~260_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~635_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~636_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~276_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~308_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~404_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~436_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~637_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~292_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~324_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~420_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~452_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~638_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~340_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~372_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~468_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~500_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~639_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~356_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~388_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~484_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~516_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~640_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~641_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~28_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~60_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~44_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~76_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~642_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~156_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~188_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~172_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~204_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~643_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~92_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~124_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~108_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~140_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~644_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~220_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~252_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~236_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~268_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~645_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~646_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~284_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~316_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~348_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~380_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~647_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~412_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~444_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~476_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~508_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~648_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~300_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~332_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~364_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~396_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~649_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~428_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~460_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~492_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~524_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~650_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~651_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~652_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~6\ : std_logic;
SIGNAL \Processador|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \Processador|ULA1|Add0~22\ : std_logic;
SIGNAL \Processador|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~21_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~37_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~85_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~101_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~653_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~29_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~45_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~93_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~109_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~654_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~149_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~165_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~213_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~229_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~655_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~157_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~173_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~221_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~237_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~656_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~657_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~277_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~405_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~293_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~421_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~658_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~285_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~413_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~301_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~429_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~659_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~341_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~469_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~357_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~485_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~660_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~349_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~477_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~365_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~493_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~661_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~662_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~53_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~61_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~69_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~77_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~663_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~181_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~189_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~197_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~205_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~664_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~117_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~125_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~133_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~141_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~665_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~245_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~253_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~261_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~269_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~666_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~667_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~309_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~325_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~373_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~389_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~668_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~317_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~333_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~381_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~397_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~669_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~437_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~453_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~501_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~517_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~670_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~445_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~461_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~509_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~525_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~671_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~672_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~673_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~10\ : std_logic;
SIGNAL \Processador|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \Data_IN[7]~8_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~26\ : std_logic;
SIGNAL \Processador|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~22_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~54_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~150_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~182_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~674_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~30_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~62_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~158_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~190_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~675_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~86_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~118_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~214_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~246_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~676_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~94_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~126_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~222_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~254_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~677_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~678_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~38_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~46_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~166_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~174_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~679_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~70_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~78_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~198_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~206_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~680_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~102_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~110_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~230_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~238_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~681_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~134_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~142_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~262_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~270_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~682_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~683_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~278_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~310_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~342_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~374_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~684_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~286_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~318_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~350_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~382_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~685_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~406_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~438_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~470_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~502_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~686_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~414_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~446_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~478_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~510_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~687_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~688_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~294_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~302_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~422_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~430_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~689_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~326_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~334_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~454_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~462_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~690_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~358_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~366_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~486_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~494_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~691_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~390_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~398_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~518_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~526_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~692_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~693_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~694_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~14\ : std_logic;
SIGNAL \Processador|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \Processador|ULA1|WideOr0~1_combout\ : std_logic;
SIGNAL \Processador|flagIgual|DOUT~0_combout\ : std_logic;
SIGNAL \Processador|flagIgual|DOUT~q\ : std_logic;
SIGNAL \Processador|decoder|saidaMux~0_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~28_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~36_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~16_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~21_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~0_combout\ : std_logic;
SIGNAL \AndLedR|saida~0_combout\ : std_logic;
SIGNAL \AndLedR|saida~1_combout\ : std_logic;
SIGNAL \Data_IN[0]~0_combout\ : std_logic;
SIGNAL \AndLed8|saida~0_combout\ : std_logic;
SIGNAL \flipFlopLed8|DOUT~0_combout\ : std_logic;
SIGNAL \flipFlopLed8|DOUT~q\ : std_logic;
SIGNAL \AndLed9|saida~0_combout\ : std_logic;
SIGNAL \AndLed9|saida~1_combout\ : std_logic;
SIGNAL \flipFlopLed9|DOUT~0_combout\ : std_logic;
SIGNAL \flipFlopLed9|DOUT~q\ : std_logic;
SIGNAL \AndHEX5|saida~0_combout\ : std_logic;
SIGNAL \AndHEX0|saida~0_combout\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AndHEX1|saida~0_combout\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AndHEX2|saida~0_combout\ : std_logic;
SIGNAL \decoderHEX2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoderHEX2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoderHEX2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoderHEX2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoderHEX2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoderHEX2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoderHEX2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \Data_IN[0]~1_combout\ : std_logic;
SIGNAL \AndHEX3|saida~0_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AndHEX4|saida~0_combout\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AndHEX5|saida~combout\ : std_logic;
SIGNAL \decoderHEX5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoderHEX5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoderHEX5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoderHEX5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoderHEX5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoderHEX5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoderHEX5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \Processador|decoder|saida[1]~0_combout\ : std_logic;
SIGNAL \Processador|ULA1|WideOr0~0_combout\ : std_logic;
SIGNAL \Processador|ULA1|WideOr0~combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \DebouceMem_key0|saidaQ~0_combout\ : std_logic;
SIGNAL \DebouceMem_key0|saidaQ~q\ : std_logic;
SIGNAL \DebouceMem_key0|saida~combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \DebouceMem_key1|saidaQ~0_combout\ : std_logic;
SIGNAL \DebouceMem_key1|saidaQ~q\ : std_logic;
SIGNAL \DebouceMem_key1|saida~combout\ : std_logic;
SIGNAL \RegistradorHEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RegistradorHEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Processador|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegistradorHEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \divisor|contador\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \RegistradorLedR|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegistradorHEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Processador|reg_endretorno|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RegistradorHEX0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \flipFlopLed9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \flipFlopLed8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \divisor|ALT_INV_contador\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \Processador|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \Processador|reg_endretorno|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Processador|decoder|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_saidaMux~0_combout\ : std_logic;
SIGNAL \Processador|flagIgual|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \divisor|ALT_INV_tick~q\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~36_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~35_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~34_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~33_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~32_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~31_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~30_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~29_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_Equal10~2_combout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_WideOr0~combout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \AndSW0_7|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \AndSW0_7|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~1_combout\ : std_logic;
SIGNAL \AndLed9|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \AndHEX5|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \RegistradorHEX5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MemoriaRAM|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~7_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~6_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~3_combout\ : std_logic;
SIGNAL \AndSW0_7|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~2_combout\ : std_logic;
SIGNAL \DecoderHabBloc|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~263_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~391_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~511_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~255_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~383_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~455_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~199_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~447_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~191_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~487_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~479_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~223_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~359_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~351_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~423_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~167_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~415_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~159_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~503_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~247_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~495_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~239_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~375_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~367_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~439_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~183_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~431_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~175_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~471_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~215_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~463_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~207_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~343_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~407_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~151_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~399_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_Equal10~3_combout\ : std_logic;
SIGNAL \AndLed9|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \AndLed8|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \AndLedR|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~185_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~153_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~513_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~481_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~385_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~353_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~497_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~465_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~369_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~337_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~449_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~417_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~433_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~401_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~257_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~193_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~161_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~241_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~209_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~177_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~145_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~264_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~504_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~248_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~488_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~472_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~216_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~456_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~200_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~440_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~184_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~424_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~168_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~408_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~152_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~512_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~256_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~480_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~224_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~496_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~240_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~464_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~208_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~448_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~192_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~416_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~160_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~432_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~176_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~400_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~144_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~392_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~360_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~376_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~344_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~384_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~368_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~352_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~38_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~37_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~610_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~609_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~608_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~514_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~506_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~498_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~607_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~394_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~386_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~378_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~370_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~606_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~458_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~450_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~442_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~434_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~605_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~604_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~266_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~250_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~202_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~186_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~602_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~258_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~242_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~194_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~178_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~601_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~600_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~598_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~490_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~362_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~474_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~346_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~597_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~482_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~354_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~466_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~338_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~596_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~426_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~410_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~418_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~402_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~593_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~234_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~218_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~210_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~592_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~591_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~170_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~162_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~154_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~146_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~393_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~457_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~489_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~361_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~425_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~505_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~377_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~441_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~473_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~345_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~409_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~265_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~233_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~249_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~217_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~201_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~169_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~484_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~388_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~356_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~639_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~500_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~468_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~372_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~340_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~638_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~452_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~420_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~324_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~637_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~436_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~404_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~308_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~636_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~635_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~260_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~244_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~212_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~634_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~633_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~196_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~164_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~180_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~148_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~632_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~40_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~631_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~630_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~629_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~515_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~491_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~483_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~628_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~395_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~387_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~363_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~355_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~627_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~459_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~451_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~427_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~419_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~626_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~331_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~323_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~625_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~624_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~267_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~259_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~623_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~235_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~622_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~203_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~195_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~621_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~171_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~163_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~620_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~619_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~507_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~499_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~443_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~435_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~618_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~475_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~467_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~411_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~403_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~617_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~379_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~371_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~307_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~616_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~347_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~339_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~615_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~614_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~251_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~243_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~219_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~211_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~613_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~612_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~187_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~179_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~155_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~147_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~611_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~39_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~461_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~445_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~670_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~517_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~501_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~453_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~437_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~669_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~397_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~381_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~333_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~668_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~389_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~373_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~325_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~309_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~667_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~666_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~269_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~261_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~253_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~245_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~665_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~664_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~205_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~197_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~189_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~181_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~663_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~662_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~661_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~493_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~365_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~477_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~349_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~660_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~485_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~357_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~469_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~341_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~659_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~429_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~413_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~658_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~421_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~405_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~657_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~656_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~237_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~221_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~173_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~157_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~655_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~213_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~165_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~149_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~654_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~653_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~652_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~651_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~650_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~492_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~460_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~428_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~649_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~396_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~364_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~332_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~648_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~508_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~476_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~444_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~412_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~647_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~380_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~348_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~646_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~645_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~268_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~236_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~252_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~220_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~644_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~643_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~204_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~172_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~188_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~156_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~642_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~641_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~640_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~516_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~709_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~707_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~705_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~703_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~701_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~699_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~697_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~695_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_WideOr0~1_combout\ : std_logic;
SIGNAL \divisor|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \divisor|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \divisor|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \DebouceMem_key1|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \DebouceMem_key0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[7]~8_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~43_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~42_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~41_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~694_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~693_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~692_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~518_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~398_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~390_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~691_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~494_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~486_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~366_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~358_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~690_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~462_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~454_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~334_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~326_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~689_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~430_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~422_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~688_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~687_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~510_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~478_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~446_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~414_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~686_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~502_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~470_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~438_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~406_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~685_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~382_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~350_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~684_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~374_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~342_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~310_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~683_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~682_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~270_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~262_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~681_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~238_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~680_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~206_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~198_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~679_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~174_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~166_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~678_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~677_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~254_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~222_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~676_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~246_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~214_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~675_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~190_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~158_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~674_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~182_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~150_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~673_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~672_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~671_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~509_q\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_Equal14~0_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~821_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~819_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~817_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~815_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~813_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~811_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~809_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~807_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~805_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~803_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~801_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~799_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~797_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~795_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~793_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~791_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~789_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~787_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~785_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~783_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~781_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~779_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~777_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~775_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~773_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~771_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~769_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~767_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~765_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~763_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~761_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~759_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~757_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~755_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~753_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~751_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~749_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~747_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~745_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~743_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~741_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~739_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~737_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~735_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~733_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~731_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~729_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~727_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~725_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~723_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~721_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~719_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~717_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~715_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~713_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~711_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET_N~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_FPGA_RESET_N <= FPGA_RESET_N;
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
SAIDA_AND_LED8 <= ww_SAIDA_AND_LED8;
SAIDA_AND_LED9 <= ww_SAIDA_AND_LED9;
SAIDA_AND_SW0_7 <= ww_SAIDA_AND_SW0_7;
CONTROLES <= ww_CONTROLES;
ACUMULADOR <= ww_ACUMULADOR;
INSTRUCAO <= ww_INSTRUCAO;
ED_KEY0 <= ww_ED_KEY0;
ED_KEY1 <= ww_ED_KEY1;
DB_MEM_KEY0 <= ww_DB_MEM_KEY0;
DB_MEM_KEY1 <= ww_DB_MEM_KEY1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Processador|PC|ALT_INV_DOUT\(5) <= NOT \Processador|PC|DOUT\(5);
\Processador|PC|ALT_INV_DOUT\(4) <= NOT \Processador|PC|DOUT\(4);
\Processador|PC|ALT_INV_DOUT\(3) <= NOT \Processador|PC|DOUT\(3);
\Processador|PC|ALT_INV_DOUT\(2) <= NOT \Processador|PC|DOUT\(2);
\Processador|PC|ALT_INV_DOUT\(1) <= NOT \Processador|PC|DOUT\(1);
\Processador|PC|ALT_INV_DOUT\(0) <= NOT \Processador|PC|DOUT\(0);
\RegistradorHEX0|ALT_INV_DOUT\(2) <= NOT \RegistradorHEX0|DOUT\(2);
\RegistradorHEX0|ALT_INV_DOUT\(1) <= NOT \RegistradorHEX0|DOUT\(1);
\RegistradorHEX0|ALT_INV_DOUT\(3) <= NOT \RegistradorHEX0|DOUT\(3);
\RegistradorHEX0|ALT_INV_DOUT\(0) <= NOT \RegistradorHEX0|DOUT\(0);
\flipFlopLed9|ALT_INV_DOUT~q\ <= NOT \flipFlopLed9|DOUT~q\;
\flipFlopLed8|ALT_INV_DOUT~q\ <= NOT \flipFlopLed8|DOUT~q\;
\Processador|PC|ALT_INV_DOUT\(7) <= NOT \Processador|PC|DOUT\(7);
\divisor|ALT_INV_contador\(10) <= NOT \divisor|contador\(10);
\divisor|ALT_INV_contador\(7) <= NOT \divisor|contador\(7);
\divisor|ALT_INV_contador\(6) <= NOT \divisor|contador\(6);
\divisor|ALT_INV_contador\(5) <= NOT \divisor|contador\(5);
\divisor|ALT_INV_contador\(4) <= NOT \divisor|contador\(4);
\divisor|ALT_INV_contador\(3) <= NOT \divisor|contador\(3);
\divisor|ALT_INV_contador\(1) <= NOT \divisor|contador\(1);
\divisor|ALT_INV_contador\(14) <= NOT \divisor|contador\(14);
\divisor|ALT_INV_contador\(15) <= NOT \divisor|contador\(15);
\divisor|ALT_INV_contador\(2) <= NOT \divisor|contador\(2);
\divisor|ALT_INV_contador\(13) <= NOT \divisor|contador\(13);
\divisor|ALT_INV_contador\(12) <= NOT \divisor|contador\(12);
\divisor|ALT_INV_contador\(11) <= NOT \divisor|contador\(11);
\divisor|ALT_INV_contador\(9) <= NOT \divisor|contador\(9);
\divisor|ALT_INV_contador\(8) <= NOT \divisor|contador\(8);
\divisor|ALT_INV_contador\(0) <= NOT \divisor|contador\(0);
\Processador|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \Processador|incrementaPC|Add0~33_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \Processador|incrementaPC|Add0~29_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \Processador|incrementaPC|Add0~25_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \Processador|incrementaPC|Add0~21_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \Processador|incrementaPC|Add0~17_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \Processador|incrementaPC|Add0~13_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \Processador|incrementaPC|Add0~9_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \Processador|incrementaPC|Add0~5_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \Processador|incrementaPC|Add0~1_sumout\;
\Processador|REGA|ALT_INV_DOUT\(7) <= NOT \Processador|REGA|DOUT\(7);
\Processador|REGA|ALT_INV_DOUT\(6) <= NOT \Processador|REGA|DOUT\(6);
\Processador|REGA|ALT_INV_DOUT\(5) <= NOT \Processador|REGA|DOUT\(5);
\Processador|REGA|ALT_INV_DOUT\(4) <= NOT \Processador|REGA|DOUT\(4);
\Processador|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \Processador|ULA1|Add1~29_sumout\;
\Processador|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \Processador|ULA1|Add1~25_sumout\;
\Processador|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \Processador|ULA1|Add1~21_sumout\;
\Processador|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \Processador|ULA1|Add1~17_sumout\;
\Processador|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \Processador|ULA1|Add1~13_sumout\;
\Processador|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \Processador|ULA1|Add1~9_sumout\;
\Processador|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \Processador|ULA1|Add1~5_sumout\;
\Processador|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \Processador|ULA1|Add1~1_sumout\;
\Processador|REGA|ALT_INV_DOUT\(3) <= NOT \Processador|REGA|DOUT\(3);
\Processador|REGA|ALT_INV_DOUT\(2) <= NOT \Processador|REGA|DOUT\(2);
\Processador|REGA|ALT_INV_DOUT\(1) <= NOT \Processador|REGA|DOUT\(1);
\Processador|REGA|ALT_INV_DOUT\(0) <= NOT \Processador|REGA|DOUT\(0);
\Processador|PC|ALT_INV_DOUT\(8) <= NOT \Processador|PC|DOUT\(8);
\Processador|PC|ALT_INV_DOUT\(6) <= NOT \Processador|PC|DOUT\(6);
\Processador|reg_endretorno|ALT_INV_DOUT\(1) <= NOT \Processador|reg_endretorno|DOUT\(1);
\Processador|decoder|ALT_INV_saida~1_combout\ <= NOT \Processador|decoder|saida~1_combout\;
\Processador|reg_endretorno|ALT_INV_DOUT\(0) <= NOT \Processador|reg_endretorno|DOUT\(0);
\Processador|decoder|ALT_INV_saidaMux~0_combout\ <= NOT \Processador|decoder|saidaMux~0_combout\;
\Processador|flagIgual|ALT_INV_DOUT~q\ <= NOT \Processador|flagIgual|DOUT~q\;
\divisor|ALT_INV_tick~q\ <= NOT \divisor|tick~q\;
\ROM_instrucao|ALT_INV_memROM~36_combout\ <= NOT \ROM_instrucao|memROM~36_combout\;
\ROM_instrucao|ALT_INV_memROM~35_combout\ <= NOT \ROM_instrucao|memROM~35_combout\;
\ROM_instrucao|ALT_INV_memROM~34_combout\ <= NOT \ROM_instrucao|memROM~34_combout\;
\ROM_instrucao|ALT_INV_memROM~33_combout\ <= NOT \ROM_instrucao|memROM~33_combout\;
\ROM_instrucao|ALT_INV_memROM~32_combout\ <= NOT \ROM_instrucao|memROM~32_combout\;
\ROM_instrucao|ALT_INV_memROM~31_combout\ <= NOT \ROM_instrucao|memROM~31_combout\;
\ROM_instrucao|ALT_INV_memROM~30_combout\ <= NOT \ROM_instrucao|memROM~30_combout\;
\ROM_instrucao|ALT_INV_memROM~29_combout\ <= NOT \ROM_instrucao|memROM~29_combout\;
\ROM_instrucao|ALT_INV_memROM~28_combout\ <= NOT \ROM_instrucao|memROM~28_combout\;
\Processador|decoder|ALT_INV_Equal10~2_combout\ <= NOT \Processador|decoder|Equal10~2_combout\;
\Processador|ULA1|ALT_INV_WideOr0~combout\ <= NOT \Processador|ULA1|WideOr0~combout\;
\Processador|ULA1|ALT_INV_WideOr0~0_combout\ <= NOT \Processador|ULA1|WideOr0~0_combout\;
\AndSW0_7|ALT_INV_saida~1_combout\ <= NOT \AndSW0_7|saida~1_combout\;
\AndSW0_7|ALT_INV_saida~0_combout\ <= NOT \AndSW0_7|saida~0_combout\;
\ROM_instrucao|ALT_INV_memROM~27_combout\ <= NOT \ROM_instrucao|memROM~27_combout\;
\Processador|decoder|ALT_INV_Equal10~1_combout\ <= NOT \Processador|decoder|Equal10~1_combout\;
\ROM_instrucao|ALT_INV_memROM~26_combout\ <= NOT \ROM_instrucao|memROM~26_combout\;
\ROM_instrucao|ALT_INV_memROM~25_combout\ <= NOT \ROM_instrucao|memROM~25_combout\;
\ALT_INV_Data_IN[0]~1_combout\ <= NOT \Data_IN[0]~1_combout\;
\AndLed9|ALT_INV_saida~0_combout\ <= NOT \AndLed9|saida~0_combout\;
\ALT_INV_Data_IN[0]~0_combout\ <= NOT \Data_IN[0]~0_combout\;
\ROM_instrucao|ALT_INV_memROM~24_combout\ <= NOT \ROM_instrucao|memROM~24_combout\;
\AndHEX5|ALT_INV_saida~0_combout\ <= NOT \AndHEX5|saida~0_combout\;
\ROM_instrucao|ALT_INV_memROM~23_combout\ <= NOT \ROM_instrucao|memROM~23_combout\;
\ROM_instrucao|ALT_INV_memROM~22_combout\ <= NOT \ROM_instrucao|memROM~22_combout\;
\ROM_instrucao|ALT_INV_memROM~21_combout\ <= NOT \ROM_instrucao|memROM~21_combout\;
\ROM_instrucao|ALT_INV_memROM~20_combout\ <= NOT \ROM_instrucao|memROM~20_combout\;
\ROM_instrucao|ALT_INV_memROM~19_combout\ <= NOT \ROM_instrucao|memROM~19_combout\;
\ROM_instrucao|ALT_INV_memROM~18_combout\ <= NOT \ROM_instrucao|memROM~18_combout\;
\ROM_instrucao|ALT_INV_memROM~17_combout\ <= NOT \ROM_instrucao|memROM~17_combout\;
\ROM_instrucao|ALT_INV_memROM~16_combout\ <= NOT \ROM_instrucao|memROM~16_combout\;
\ROM_instrucao|ALT_INV_memROM~15_combout\ <= NOT \ROM_instrucao|memROM~15_combout\;
\Processador|decoder|ALT_INV_Equal10~0_combout\ <= NOT \Processador|decoder|Equal10~0_combout\;
\ROM_instrucao|ALT_INV_memROM~14_combout\ <= NOT \ROM_instrucao|memROM~14_combout\;
\ROM_instrucao|ALT_INV_memROM~13_combout\ <= NOT \ROM_instrucao|memROM~13_combout\;
\ROM_instrucao|ALT_INV_memROM~12_combout\ <= NOT \ROM_instrucao|memROM~12_combout\;
\ROM_instrucao|ALT_INV_memROM~11_combout\ <= NOT \ROM_instrucao|memROM~11_combout\;
\ROM_instrucao|ALT_INV_memROM~10_combout\ <= NOT \ROM_instrucao|memROM~10_combout\;
\ROM_instrucao|ALT_INV_memROM~9_combout\ <= NOT \ROM_instrucao|memROM~9_combout\;
\ROM_instrucao|ALT_INV_memROM~8_combout\ <= NOT \ROM_instrucao|memROM~8_combout\;
\ROM_instrucao|ALT_INV_memROM~7_combout\ <= NOT \ROM_instrucao|memROM~7_combout\;
\ROM_instrucao|ALT_INV_memROM~6_combout\ <= NOT \ROM_instrucao|memROM~6_combout\;
\ROM_instrucao|ALT_INV_memROM~5_combout\ <= NOT \ROM_instrucao|memROM~5_combout\;
\ROM_instrucao|ALT_INV_memROM~4_combout\ <= NOT \ROM_instrucao|memROM~4_combout\;
\ROM_instrucao|ALT_INV_memROM~3_combout\ <= NOT \ROM_instrucao|memROM~3_combout\;
\ROM_instrucao|ALT_INV_memROM~2_combout\ <= NOT \ROM_instrucao|memROM~2_combout\;
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
\MemoriaRAM|ALT_INV_ram~320_q\ <= NOT \MemoriaRAM|ram~320_q\;
\MemoriaRAM|ALT_INV_ram~64_q\ <= NOT \MemoriaRAM|ram~64_q\;
\MemoriaRAM|ALT_INV_ram~304_q\ <= NOT \MemoriaRAM|ram~304_q\;
\MemoriaRAM|ALT_INV_ram~48_q\ <= NOT \MemoriaRAM|ram~48_q\;
\MemoriaRAM|ALT_INV_ram~548_combout\ <= NOT \MemoriaRAM|ram~548_combout\;
\MemoriaRAM|ALT_INV_ram~288_q\ <= NOT \MemoriaRAM|ram~288_q\;
\MemoriaRAM|ALT_INV_ram~32_q\ <= NOT \MemoriaRAM|ram~32_q\;
\MemoriaRAM|ALT_INV_ram~272_q\ <= NOT \MemoriaRAM|ram~272_q\;
\MemoriaRAM|ALT_INV_ram~16_q\ <= NOT \MemoriaRAM|ram~16_q\;
\ALT_INV_Data_IN[0]~7_combout\ <= NOT \Data_IN[0]~7_combout\;
\ALT_INV_Data_IN[0]~6_combout\ <= NOT \Data_IN[0]~6_combout\;
\ALT_INV_Data_IN[0]~5_combout\ <= NOT \Data_IN[0]~5_combout\;
\ALT_INV_Data_IN[0]~4_combout\ <= NOT \Data_IN[0]~4_combout\;
\ALT_INV_Data_IN[0]~3_combout\ <= NOT \Data_IN[0]~3_combout\;
\AndSW0_7|ALT_INV_saida~2_combout\ <= NOT \AndSW0_7|saida~2_combout\;
\ALT_INV_Data_IN[0]~2_combout\ <= NOT \Data_IN[0]~2_combout\;
\DecoderHabBloc|ALT_INV_Equal0~0_combout\ <= NOT \DecoderHabBloc|Equal0~0_combout\;
\MemoriaRAM|ALT_INV_ram~547_combout\ <= NOT \MemoriaRAM|ram~547_combout\;
\MemoriaRAM|ALT_INV_ram~546_combout\ <= NOT \MemoriaRAM|ram~546_combout\;
\MemoriaRAM|ALT_INV_ram~545_combout\ <= NOT \MemoriaRAM|ram~545_combout\;
\MemoriaRAM|ALT_INV_ram~519_q\ <= NOT \MemoriaRAM|ram~519_q\;
\MemoriaRAM|ALT_INV_ram~263_q\ <= NOT \MemoriaRAM|ram~263_q\;
\MemoriaRAM|ALT_INV_ram~391_q\ <= NOT \MemoriaRAM|ram~391_q\;
\MemoriaRAM|ALT_INV_ram~135_q\ <= NOT \MemoriaRAM|ram~135_q\;
\MemoriaRAM|ALT_INV_ram~544_combout\ <= NOT \MemoriaRAM|ram~544_combout\;
\MemoriaRAM|ALT_INV_ram~511_q\ <= NOT \MemoriaRAM|ram~511_q\;
\MemoriaRAM|ALT_INV_ram~255_q\ <= NOT \MemoriaRAM|ram~255_q\;
\MemoriaRAM|ALT_INV_ram~383_q\ <= NOT \MemoriaRAM|ram~383_q\;
\MemoriaRAM|ALT_INV_ram~127_q\ <= NOT \MemoriaRAM|ram~127_q\;
\MemoriaRAM|ALT_INV_ram~543_combout\ <= NOT \MemoriaRAM|ram~543_combout\;
\MemoriaRAM|ALT_INV_ram~455_q\ <= NOT \MemoriaRAM|ram~455_q\;
\MemoriaRAM|ALT_INV_ram~199_q\ <= NOT \MemoriaRAM|ram~199_q\;
\MemoriaRAM|ALT_INV_ram~327_q\ <= NOT \MemoriaRAM|ram~327_q\;
\MemoriaRAM|ALT_INV_ram~71_q\ <= NOT \MemoriaRAM|ram~71_q\;
\MemoriaRAM|ALT_INV_ram~542_combout\ <= NOT \MemoriaRAM|ram~542_combout\;
\MemoriaRAM|ALT_INV_ram~447_q\ <= NOT \MemoriaRAM|ram~447_q\;
\MemoriaRAM|ALT_INV_ram~191_q\ <= NOT \MemoriaRAM|ram~191_q\;
\MemoriaRAM|ALT_INV_ram~319_q\ <= NOT \MemoriaRAM|ram~319_q\;
\MemoriaRAM|ALT_INV_ram~63_q\ <= NOT \MemoriaRAM|ram~63_q\;
\MemoriaRAM|ALT_INV_ram~541_combout\ <= NOT \MemoriaRAM|ram~541_combout\;
\MemoriaRAM|ALT_INV_ram~540_combout\ <= NOT \MemoriaRAM|ram~540_combout\;
\MemoriaRAM|ALT_INV_ram~487_q\ <= NOT \MemoriaRAM|ram~487_q\;
\MemoriaRAM|ALT_INV_ram~231_q\ <= NOT \MemoriaRAM|ram~231_q\;
\MemoriaRAM|ALT_INV_ram~479_q\ <= NOT \MemoriaRAM|ram~479_q\;
\MemoriaRAM|ALT_INV_ram~223_q\ <= NOT \MemoriaRAM|ram~223_q\;
\MemoriaRAM|ALT_INV_ram~539_combout\ <= NOT \MemoriaRAM|ram~539_combout\;
\MemoriaRAM|ALT_INV_ram~359_q\ <= NOT \MemoriaRAM|ram~359_q\;
\MemoriaRAM|ALT_INV_ram~103_q\ <= NOT \MemoriaRAM|ram~103_q\;
\MemoriaRAM|ALT_INV_ram~351_q\ <= NOT \MemoriaRAM|ram~351_q\;
\MemoriaRAM|ALT_INV_ram~95_q\ <= NOT \MemoriaRAM|ram~95_q\;
\MemoriaRAM|ALT_INV_ram~538_combout\ <= NOT \MemoriaRAM|ram~538_combout\;
\MemoriaRAM|ALT_INV_ram~423_q\ <= NOT \MemoriaRAM|ram~423_q\;
\MemoriaRAM|ALT_INV_ram~167_q\ <= NOT \MemoriaRAM|ram~167_q\;
\MemoriaRAM|ALT_INV_ram~415_q\ <= NOT \MemoriaRAM|ram~415_q\;
\MemoriaRAM|ALT_INV_ram~159_q\ <= NOT \MemoriaRAM|ram~159_q\;
\MemoriaRAM|ALT_INV_ram~537_combout\ <= NOT \MemoriaRAM|ram~537_combout\;
\MemoriaRAM|ALT_INV_ram~295_q\ <= NOT \MemoriaRAM|ram~295_q\;
\MemoriaRAM|ALT_INV_ram~39_q\ <= NOT \MemoriaRAM|ram~39_q\;
\MemoriaRAM|ALT_INV_ram~287_q\ <= NOT \MemoriaRAM|ram~287_q\;
\MemoriaRAM|ALT_INV_ram~31_q\ <= NOT \MemoriaRAM|ram~31_q\;
\MemoriaRAM|ALT_INV_ram~536_combout\ <= NOT \MemoriaRAM|ram~536_combout\;
\MemoriaRAM|ALT_INV_ram~535_combout\ <= NOT \MemoriaRAM|ram~535_combout\;
\MemoriaRAM|ALT_INV_ram~503_q\ <= NOT \MemoriaRAM|ram~503_q\;
\MemoriaRAM|ALT_INV_ram~247_q\ <= NOT \MemoriaRAM|ram~247_q\;
\MemoriaRAM|ALT_INV_ram~495_q\ <= NOT \MemoriaRAM|ram~495_q\;
\MemoriaRAM|ALT_INV_ram~239_q\ <= NOT \MemoriaRAM|ram~239_q\;
\MemoriaRAM|ALT_INV_ram~534_combout\ <= NOT \MemoriaRAM|ram~534_combout\;
\MemoriaRAM|ALT_INV_ram~375_q\ <= NOT \MemoriaRAM|ram~375_q\;
\MemoriaRAM|ALT_INV_ram~119_q\ <= NOT \MemoriaRAM|ram~119_q\;
\MemoriaRAM|ALT_INV_ram~367_q\ <= NOT \MemoriaRAM|ram~367_q\;
\MemoriaRAM|ALT_INV_ram~111_q\ <= NOT \MemoriaRAM|ram~111_q\;
\MemoriaRAM|ALT_INV_ram~533_combout\ <= NOT \MemoriaRAM|ram~533_combout\;
\MemoriaRAM|ALT_INV_ram~439_q\ <= NOT \MemoriaRAM|ram~439_q\;
\MemoriaRAM|ALT_INV_ram~183_q\ <= NOT \MemoriaRAM|ram~183_q\;
\MemoriaRAM|ALT_INV_ram~431_q\ <= NOT \MemoriaRAM|ram~431_q\;
\MemoriaRAM|ALT_INV_ram~175_q\ <= NOT \MemoriaRAM|ram~175_q\;
\MemoriaRAM|ALT_INV_ram~532_combout\ <= NOT \MemoriaRAM|ram~532_combout\;
\MemoriaRAM|ALT_INV_ram~311_q\ <= NOT \MemoriaRAM|ram~311_q\;
\MemoriaRAM|ALT_INV_ram~55_q\ <= NOT \MemoriaRAM|ram~55_q\;
\MemoriaRAM|ALT_INV_ram~303_q\ <= NOT \MemoriaRAM|ram~303_q\;
\MemoriaRAM|ALT_INV_ram~47_q\ <= NOT \MemoriaRAM|ram~47_q\;
\MemoriaRAM|ALT_INV_ram~531_combout\ <= NOT \MemoriaRAM|ram~531_combout\;
\MemoriaRAM|ALT_INV_ram~530_combout\ <= NOT \MemoriaRAM|ram~530_combout\;
\MemoriaRAM|ALT_INV_ram~471_q\ <= NOT \MemoriaRAM|ram~471_q\;
\MemoriaRAM|ALT_INV_ram~215_q\ <= NOT \MemoriaRAM|ram~215_q\;
\MemoriaRAM|ALT_INV_ram~463_q\ <= NOT \MemoriaRAM|ram~463_q\;
\MemoriaRAM|ALT_INV_ram~207_q\ <= NOT \MemoriaRAM|ram~207_q\;
\MemoriaRAM|ALT_INV_ram~529_combout\ <= NOT \MemoriaRAM|ram~529_combout\;
\MemoriaRAM|ALT_INV_ram~343_q\ <= NOT \MemoriaRAM|ram~343_q\;
\MemoriaRAM|ALT_INV_ram~87_q\ <= NOT \MemoriaRAM|ram~87_q\;
\MemoriaRAM|ALT_INV_ram~335_q\ <= NOT \MemoriaRAM|ram~335_q\;
\MemoriaRAM|ALT_INV_ram~79_q\ <= NOT \MemoriaRAM|ram~79_q\;
\MemoriaRAM|ALT_INV_ram~528_combout\ <= NOT \MemoriaRAM|ram~528_combout\;
\MemoriaRAM|ALT_INV_ram~407_q\ <= NOT \MemoriaRAM|ram~407_q\;
\MemoriaRAM|ALT_INV_ram~151_q\ <= NOT \MemoriaRAM|ram~151_q\;
\MemoriaRAM|ALT_INV_ram~399_q\ <= NOT \MemoriaRAM|ram~399_q\;
\MemoriaRAM|ALT_INV_ram~143_q\ <= NOT \MemoriaRAM|ram~143_q\;
\MemoriaRAM|ALT_INV_ram~527_combout\ <= NOT \MemoriaRAM|ram~527_combout\;
\MemoriaRAM|ALT_INV_ram~279_q\ <= NOT \MemoriaRAM|ram~279_q\;
\MemoriaRAM|ALT_INV_ram~23_q\ <= NOT \MemoriaRAM|ram~23_q\;
\MemoriaRAM|ALT_INV_ram~271_q\ <= NOT \MemoriaRAM|ram~271_q\;
\MemoriaRAM|ALT_INV_ram~15_q\ <= NOT \MemoriaRAM|ram~15_q\;
\Processador|decoder|ALT_INV_Equal10~3_combout\ <= NOT \Processador|decoder|Equal10~3_combout\;
\AndLed9|ALT_INV_saida~1_combout\ <= NOT \AndLed9|saida~1_combout\;
\AndLed8|ALT_INV_saida~0_combout\ <= NOT \AndLed8|saida~0_combout\;
\AndLedR|ALT_INV_saida~0_combout\ <= NOT \AndLedR|saida~0_combout\;
\Processador|reg_endretorno|ALT_INV_DOUT\(8) <= NOT \Processador|reg_endretorno|DOUT\(8);
\Processador|reg_endretorno|ALT_INV_DOUT\(7) <= NOT \Processador|reg_endretorno|DOUT\(7);
\Processador|reg_endretorno|ALT_INV_DOUT\(6) <= NOT \Processador|reg_endretorno|DOUT\(6);
\Processador|reg_endretorno|ALT_INV_DOUT\(5) <= NOT \Processador|reg_endretorno|DOUT\(5);
\Processador|reg_endretorno|ALT_INV_DOUT\(4) <= NOT \Processador|reg_endretorno|DOUT\(4);
\Processador|reg_endretorno|ALT_INV_DOUT\(3) <= NOT \Processador|reg_endretorno|DOUT\(3);
\Processador|reg_endretorno|ALT_INV_DOUT\(2) <= NOT \Processador|reg_endretorno|DOUT\(2);
\MemoriaRAM|ALT_INV_ram~185_q\ <= NOT \MemoriaRAM|ram~185_q\;
\MemoriaRAM|ALT_INV_ram~153_q\ <= NOT \MemoriaRAM|ram~153_q\;
\MemoriaRAM|ALT_INV_ram~579_combout\ <= NOT \MemoriaRAM|ram~579_combout\;
\MemoriaRAM|ALT_INV_ram~73_q\ <= NOT \MemoriaRAM|ram~73_q\;
\MemoriaRAM|ALT_INV_ram~41_q\ <= NOT \MemoriaRAM|ram~41_q\;
\MemoriaRAM|ALT_INV_ram~57_q\ <= NOT \MemoriaRAM|ram~57_q\;
\MemoriaRAM|ALT_INV_ram~25_q\ <= NOT \MemoriaRAM|ram~25_q\;
\MemoriaRAM|ALT_INV_ram~578_combout\ <= NOT \MemoriaRAM|ram~578_combout\;
\MemoriaRAM|ALT_INV_ram~577_combout\ <= NOT \MemoriaRAM|ram~577_combout\;
\MemoriaRAM|ALT_INV_ram~513_q\ <= NOT \MemoriaRAM|ram~513_q\;
\MemoriaRAM|ALT_INV_ram~481_q\ <= NOT \MemoriaRAM|ram~481_q\;
\MemoriaRAM|ALT_INV_ram~385_q\ <= NOT \MemoriaRAM|ram~385_q\;
\MemoriaRAM|ALT_INV_ram~353_q\ <= NOT \MemoriaRAM|ram~353_q\;
\MemoriaRAM|ALT_INV_ram~576_combout\ <= NOT \MemoriaRAM|ram~576_combout\;
\MemoriaRAM|ALT_INV_ram~497_q\ <= NOT \MemoriaRAM|ram~497_q\;
\MemoriaRAM|ALT_INV_ram~465_q\ <= NOT \MemoriaRAM|ram~465_q\;
\MemoriaRAM|ALT_INV_ram~369_q\ <= NOT \MemoriaRAM|ram~369_q\;
\MemoriaRAM|ALT_INV_ram~337_q\ <= NOT \MemoriaRAM|ram~337_q\;
\MemoriaRAM|ALT_INV_ram~575_combout\ <= NOT \MemoriaRAM|ram~575_combout\;
\MemoriaRAM|ALT_INV_ram~449_q\ <= NOT \MemoriaRAM|ram~449_q\;
\MemoriaRAM|ALT_INV_ram~417_q\ <= NOT \MemoriaRAM|ram~417_q\;
\MemoriaRAM|ALT_INV_ram~321_q\ <= NOT \MemoriaRAM|ram~321_q\;
\MemoriaRAM|ALT_INV_ram~289_q\ <= NOT \MemoriaRAM|ram~289_q\;
\MemoriaRAM|ALT_INV_ram~574_combout\ <= NOT \MemoriaRAM|ram~574_combout\;
\MemoriaRAM|ALT_INV_ram~433_q\ <= NOT \MemoriaRAM|ram~433_q\;
\MemoriaRAM|ALT_INV_ram~401_q\ <= NOT \MemoriaRAM|ram~401_q\;
\MemoriaRAM|ALT_INV_ram~305_q\ <= NOT \MemoriaRAM|ram~305_q\;
\MemoriaRAM|ALT_INV_ram~273_q\ <= NOT \MemoriaRAM|ram~273_q\;
\MemoriaRAM|ALT_INV_ram~573_combout\ <= NOT \MemoriaRAM|ram~573_combout\;
\MemoriaRAM|ALT_INV_ram~572_combout\ <= NOT \MemoriaRAM|ram~572_combout\;
\MemoriaRAM|ALT_INV_ram~257_q\ <= NOT \MemoriaRAM|ram~257_q\;
\MemoriaRAM|ALT_INV_ram~225_q\ <= NOT \MemoriaRAM|ram~225_q\;
\MemoriaRAM|ALT_INV_ram~193_q\ <= NOT \MemoriaRAM|ram~193_q\;
\MemoriaRAM|ALT_INV_ram~161_q\ <= NOT \MemoriaRAM|ram~161_q\;
\MemoriaRAM|ALT_INV_ram~571_combout\ <= NOT \MemoriaRAM|ram~571_combout\;
\MemoriaRAM|ALT_INV_ram~129_q\ <= NOT \MemoriaRAM|ram~129_q\;
\MemoriaRAM|ALT_INV_ram~97_q\ <= NOT \MemoriaRAM|ram~97_q\;
\MemoriaRAM|ALT_INV_ram~65_q\ <= NOT \MemoriaRAM|ram~65_q\;
\MemoriaRAM|ALT_INV_ram~33_q\ <= NOT \MemoriaRAM|ram~33_q\;
\MemoriaRAM|ALT_INV_ram~570_combout\ <= NOT \MemoriaRAM|ram~570_combout\;
\MemoriaRAM|ALT_INV_ram~241_q\ <= NOT \MemoriaRAM|ram~241_q\;
\MemoriaRAM|ALT_INV_ram~209_q\ <= NOT \MemoriaRAM|ram~209_q\;
\MemoriaRAM|ALT_INV_ram~177_q\ <= NOT \MemoriaRAM|ram~177_q\;
\MemoriaRAM|ALT_INV_ram~145_q\ <= NOT \MemoriaRAM|ram~145_q\;
\MemoriaRAM|ALT_INV_ram~569_combout\ <= NOT \MemoriaRAM|ram~569_combout\;
\MemoriaRAM|ALT_INV_ram~113_q\ <= NOT \MemoriaRAM|ram~113_q\;
\MemoriaRAM|ALT_INV_ram~81_q\ <= NOT \MemoriaRAM|ram~81_q\;
\MemoriaRAM|ALT_INV_ram~49_q\ <= NOT \MemoriaRAM|ram~49_q\;
\MemoriaRAM|ALT_INV_ram~17_q\ <= NOT \MemoriaRAM|ram~17_q\;
\Processador|MUX1|ALT_INV_saida_MUX[1]~0_combout\ <= NOT \Processador|MUX1|saida_MUX[1]~0_combout\;
\MemoriaRAM|ALT_INV_ram~568_combout\ <= NOT \MemoriaRAM|ram~568_combout\;
\MemoriaRAM|ALT_INV_ram~567_combout\ <= NOT \MemoriaRAM|ram~567_combout\;
\MemoriaRAM|ALT_INV_ram~566_combout\ <= NOT \MemoriaRAM|ram~566_combout\;
\MemoriaRAM|ALT_INV_ram~520_q\ <= NOT \MemoriaRAM|ram~520_q\;
\MemoriaRAM|ALT_INV_ram~264_q\ <= NOT \MemoriaRAM|ram~264_q\;
\MemoriaRAM|ALT_INV_ram~504_q\ <= NOT \MemoriaRAM|ram~504_q\;
\MemoriaRAM|ALT_INV_ram~248_q\ <= NOT \MemoriaRAM|ram~248_q\;
\MemoriaRAM|ALT_INV_ram~565_combout\ <= NOT \MemoriaRAM|ram~565_combout\;
\MemoriaRAM|ALT_INV_ram~488_q\ <= NOT \MemoriaRAM|ram~488_q\;
\MemoriaRAM|ALT_INV_ram~232_q\ <= NOT \MemoriaRAM|ram~232_q\;
\MemoriaRAM|ALT_INV_ram~472_q\ <= NOT \MemoriaRAM|ram~472_q\;
\MemoriaRAM|ALT_INV_ram~216_q\ <= NOT \MemoriaRAM|ram~216_q\;
\MemoriaRAM|ALT_INV_ram~564_combout\ <= NOT \MemoriaRAM|ram~564_combout\;
\MemoriaRAM|ALT_INV_ram~456_q\ <= NOT \MemoriaRAM|ram~456_q\;
\MemoriaRAM|ALT_INV_ram~200_q\ <= NOT \MemoriaRAM|ram~200_q\;
\MemoriaRAM|ALT_INV_ram~440_q\ <= NOT \MemoriaRAM|ram~440_q\;
\MemoriaRAM|ALT_INV_ram~184_q\ <= NOT \MemoriaRAM|ram~184_q\;
\MemoriaRAM|ALT_INV_ram~563_combout\ <= NOT \MemoriaRAM|ram~563_combout\;
\MemoriaRAM|ALT_INV_ram~424_q\ <= NOT \MemoriaRAM|ram~424_q\;
\MemoriaRAM|ALT_INV_ram~168_q\ <= NOT \MemoriaRAM|ram~168_q\;
\MemoriaRAM|ALT_INV_ram~408_q\ <= NOT \MemoriaRAM|ram~408_q\;
\MemoriaRAM|ALT_INV_ram~152_q\ <= NOT \MemoriaRAM|ram~152_q\;
\MemoriaRAM|ALT_INV_ram~562_combout\ <= NOT \MemoriaRAM|ram~562_combout\;
\MemoriaRAM|ALT_INV_ram~561_combout\ <= NOT \MemoriaRAM|ram~561_combout\;
\MemoriaRAM|ALT_INV_ram~512_q\ <= NOT \MemoriaRAM|ram~512_q\;
\MemoriaRAM|ALT_INV_ram~256_q\ <= NOT \MemoriaRAM|ram~256_q\;
\MemoriaRAM|ALT_INV_ram~480_q\ <= NOT \MemoriaRAM|ram~480_q\;
\MemoriaRAM|ALT_INV_ram~224_q\ <= NOT \MemoriaRAM|ram~224_q\;
\MemoriaRAM|ALT_INV_ram~560_combout\ <= NOT \MemoriaRAM|ram~560_combout\;
\MemoriaRAM|ALT_INV_ram~496_q\ <= NOT \MemoriaRAM|ram~496_q\;
\MemoriaRAM|ALT_INV_ram~240_q\ <= NOT \MemoriaRAM|ram~240_q\;
\MemoriaRAM|ALT_INV_ram~464_q\ <= NOT \MemoriaRAM|ram~464_q\;
\MemoriaRAM|ALT_INV_ram~208_q\ <= NOT \MemoriaRAM|ram~208_q\;
\MemoriaRAM|ALT_INV_ram~559_combout\ <= NOT \MemoriaRAM|ram~559_combout\;
\MemoriaRAM|ALT_INV_ram~448_q\ <= NOT \MemoriaRAM|ram~448_q\;
\MemoriaRAM|ALT_INV_ram~192_q\ <= NOT \MemoriaRAM|ram~192_q\;
\MemoriaRAM|ALT_INV_ram~416_q\ <= NOT \MemoriaRAM|ram~416_q\;
\MemoriaRAM|ALT_INV_ram~160_q\ <= NOT \MemoriaRAM|ram~160_q\;
\MemoriaRAM|ALT_INV_ram~558_combout\ <= NOT \MemoriaRAM|ram~558_combout\;
\MemoriaRAM|ALT_INV_ram~432_q\ <= NOT \MemoriaRAM|ram~432_q\;
\MemoriaRAM|ALT_INV_ram~176_q\ <= NOT \MemoriaRAM|ram~176_q\;
\MemoriaRAM|ALT_INV_ram~400_q\ <= NOT \MemoriaRAM|ram~400_q\;
\MemoriaRAM|ALT_INV_ram~144_q\ <= NOT \MemoriaRAM|ram~144_q\;
\MemoriaRAM|ALT_INV_ram~557_combout\ <= NOT \MemoriaRAM|ram~557_combout\;
\MemoriaRAM|ALT_INV_ram~556_combout\ <= NOT \MemoriaRAM|ram~556_combout\;
\MemoriaRAM|ALT_INV_ram~392_q\ <= NOT \MemoriaRAM|ram~392_q\;
\MemoriaRAM|ALT_INV_ram~136_q\ <= NOT \MemoriaRAM|ram~136_q\;
\MemoriaRAM|ALT_INV_ram~328_q\ <= NOT \MemoriaRAM|ram~328_q\;
\MemoriaRAM|ALT_INV_ram~72_q\ <= NOT \MemoriaRAM|ram~72_q\;
\MemoriaRAM|ALT_INV_ram~555_combout\ <= NOT \MemoriaRAM|ram~555_combout\;
\MemoriaRAM|ALT_INV_ram~360_q\ <= NOT \MemoriaRAM|ram~360_q\;
\MemoriaRAM|ALT_INV_ram~104_q\ <= NOT \MemoriaRAM|ram~104_q\;
\MemoriaRAM|ALT_INV_ram~296_q\ <= NOT \MemoriaRAM|ram~296_q\;
\MemoriaRAM|ALT_INV_ram~40_q\ <= NOT \MemoriaRAM|ram~40_q\;
\MemoriaRAM|ALT_INV_ram~554_combout\ <= NOT \MemoriaRAM|ram~554_combout\;
\MemoriaRAM|ALT_INV_ram~376_q\ <= NOT \MemoriaRAM|ram~376_q\;
\MemoriaRAM|ALT_INV_ram~120_q\ <= NOT \MemoriaRAM|ram~120_q\;
\MemoriaRAM|ALT_INV_ram~312_q\ <= NOT \MemoriaRAM|ram~312_q\;
\MemoriaRAM|ALT_INV_ram~56_q\ <= NOT \MemoriaRAM|ram~56_q\;
\MemoriaRAM|ALT_INV_ram~553_combout\ <= NOT \MemoriaRAM|ram~553_combout\;
\MemoriaRAM|ALT_INV_ram~344_q\ <= NOT \MemoriaRAM|ram~344_q\;
\MemoriaRAM|ALT_INV_ram~88_q\ <= NOT \MemoriaRAM|ram~88_q\;
\MemoriaRAM|ALT_INV_ram~280_q\ <= NOT \MemoriaRAM|ram~280_q\;
\MemoriaRAM|ALT_INV_ram~24_q\ <= NOT \MemoriaRAM|ram~24_q\;
\MemoriaRAM|ALT_INV_ram~552_combout\ <= NOT \MemoriaRAM|ram~552_combout\;
\MemoriaRAM|ALT_INV_ram~551_combout\ <= NOT \MemoriaRAM|ram~551_combout\;
\MemoriaRAM|ALT_INV_ram~384_q\ <= NOT \MemoriaRAM|ram~384_q\;
\MemoriaRAM|ALT_INV_ram~128_q\ <= NOT \MemoriaRAM|ram~128_q\;
\MemoriaRAM|ALT_INV_ram~368_q\ <= NOT \MemoriaRAM|ram~368_q\;
\MemoriaRAM|ALT_INV_ram~112_q\ <= NOT \MemoriaRAM|ram~112_q\;
\MemoriaRAM|ALT_INV_ram~550_combout\ <= NOT \MemoriaRAM|ram~550_combout\;
\MemoriaRAM|ALT_INV_ram~352_q\ <= NOT \MemoriaRAM|ram~352_q\;
\MemoriaRAM|ALT_INV_ram~96_q\ <= NOT \MemoriaRAM|ram~96_q\;
\MemoriaRAM|ALT_INV_ram~336_q\ <= NOT \MemoriaRAM|ram~336_q\;
\MemoriaRAM|ALT_INV_ram~80_q\ <= NOT \MemoriaRAM|ram~80_q\;
\MemoriaRAM|ALT_INV_ram~549_combout\ <= NOT \MemoriaRAM|ram~549_combout\;
\ROM_instrucao|ALT_INV_memROM~38_combout\ <= NOT \ROM_instrucao|memROM~38_combout\;
\ROM_instrucao|ALT_INV_memROM~37_combout\ <= NOT \ROM_instrucao|memROM~37_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[3]~2_combout\ <= NOT \Processador|MUX1|saida_MUX[3]~2_combout\;
\MemoriaRAM|ALT_INV_ram~610_combout\ <= NOT \MemoriaRAM|ram~610_combout\;
\MemoriaRAM|ALT_INV_ram~609_combout\ <= NOT \MemoriaRAM|ram~609_combout\;
\MemoriaRAM|ALT_INV_ram~608_combout\ <= NOT \MemoriaRAM|ram~608_combout\;
\MemoriaRAM|ALT_INV_ram~522_q\ <= NOT \MemoriaRAM|ram~522_q\;
\MemoriaRAM|ALT_INV_ram~514_q\ <= NOT \MemoriaRAM|ram~514_q\;
\MemoriaRAM|ALT_INV_ram~506_q\ <= NOT \MemoriaRAM|ram~506_q\;
\MemoriaRAM|ALT_INV_ram~498_q\ <= NOT \MemoriaRAM|ram~498_q\;
\MemoriaRAM|ALT_INV_ram~607_combout\ <= NOT \MemoriaRAM|ram~607_combout\;
\MemoriaRAM|ALT_INV_ram~394_q\ <= NOT \MemoriaRAM|ram~394_q\;
\MemoriaRAM|ALT_INV_ram~386_q\ <= NOT \MemoriaRAM|ram~386_q\;
\MemoriaRAM|ALT_INV_ram~378_q\ <= NOT \MemoriaRAM|ram~378_q\;
\MemoriaRAM|ALT_INV_ram~370_q\ <= NOT \MemoriaRAM|ram~370_q\;
\MemoriaRAM|ALT_INV_ram~606_combout\ <= NOT \MemoriaRAM|ram~606_combout\;
\MemoriaRAM|ALT_INV_ram~458_q\ <= NOT \MemoriaRAM|ram~458_q\;
\MemoriaRAM|ALT_INV_ram~450_q\ <= NOT \MemoriaRAM|ram~450_q\;
\MemoriaRAM|ALT_INV_ram~442_q\ <= NOT \MemoriaRAM|ram~442_q\;
\MemoriaRAM|ALT_INV_ram~434_q\ <= NOT \MemoriaRAM|ram~434_q\;
\MemoriaRAM|ALT_INV_ram~605_combout\ <= NOT \MemoriaRAM|ram~605_combout\;
\MemoriaRAM|ALT_INV_ram~330_q\ <= NOT \MemoriaRAM|ram~330_q\;
\MemoriaRAM|ALT_INV_ram~322_q\ <= NOT \MemoriaRAM|ram~322_q\;
\MemoriaRAM|ALT_INV_ram~314_q\ <= NOT \MemoriaRAM|ram~314_q\;
\MemoriaRAM|ALT_INV_ram~306_q\ <= NOT \MemoriaRAM|ram~306_q\;
\MemoriaRAM|ALT_INV_ram~604_combout\ <= NOT \MemoriaRAM|ram~604_combout\;
\MemoriaRAM|ALT_INV_ram~603_combout\ <= NOT \MemoriaRAM|ram~603_combout\;
\MemoriaRAM|ALT_INV_ram~266_q\ <= NOT \MemoriaRAM|ram~266_q\;
\MemoriaRAM|ALT_INV_ram~250_q\ <= NOT \MemoriaRAM|ram~250_q\;
\MemoriaRAM|ALT_INV_ram~202_q\ <= NOT \MemoriaRAM|ram~202_q\;
\MemoriaRAM|ALT_INV_ram~186_q\ <= NOT \MemoriaRAM|ram~186_q\;
\MemoriaRAM|ALT_INV_ram~602_combout\ <= NOT \MemoriaRAM|ram~602_combout\;
\MemoriaRAM|ALT_INV_ram~258_q\ <= NOT \MemoriaRAM|ram~258_q\;
\MemoriaRAM|ALT_INV_ram~242_q\ <= NOT \MemoriaRAM|ram~242_q\;
\MemoriaRAM|ALT_INV_ram~194_q\ <= NOT \MemoriaRAM|ram~194_q\;
\MemoriaRAM|ALT_INV_ram~178_q\ <= NOT \MemoriaRAM|ram~178_q\;
\MemoriaRAM|ALT_INV_ram~601_combout\ <= NOT \MemoriaRAM|ram~601_combout\;
\MemoriaRAM|ALT_INV_ram~138_q\ <= NOT \MemoriaRAM|ram~138_q\;
\MemoriaRAM|ALT_INV_ram~122_q\ <= NOT \MemoriaRAM|ram~122_q\;
\MemoriaRAM|ALT_INV_ram~74_q\ <= NOT \MemoriaRAM|ram~74_q\;
\MemoriaRAM|ALT_INV_ram~58_q\ <= NOT \MemoriaRAM|ram~58_q\;
\MemoriaRAM|ALT_INV_ram~600_combout\ <= NOT \MemoriaRAM|ram~600_combout\;
\MemoriaRAM|ALT_INV_ram~130_q\ <= NOT \MemoriaRAM|ram~130_q\;
\MemoriaRAM|ALT_INV_ram~114_q\ <= NOT \MemoriaRAM|ram~114_q\;
\MemoriaRAM|ALT_INV_ram~66_q\ <= NOT \MemoriaRAM|ram~66_q\;
\MemoriaRAM|ALT_INV_ram~50_q\ <= NOT \MemoriaRAM|ram~50_q\;
\MemoriaRAM|ALT_INV_ram~599_combout\ <= NOT \MemoriaRAM|ram~599_combout\;
\MemoriaRAM|ALT_INV_ram~598_combout\ <= NOT \MemoriaRAM|ram~598_combout\;
\MemoriaRAM|ALT_INV_ram~490_q\ <= NOT \MemoriaRAM|ram~490_q\;
\MemoriaRAM|ALT_INV_ram~362_q\ <= NOT \MemoriaRAM|ram~362_q\;
\MemoriaRAM|ALT_INV_ram~474_q\ <= NOT \MemoriaRAM|ram~474_q\;
\MemoriaRAM|ALT_INV_ram~346_q\ <= NOT \MemoriaRAM|ram~346_q\;
\MemoriaRAM|ALT_INV_ram~597_combout\ <= NOT \MemoriaRAM|ram~597_combout\;
\MemoriaRAM|ALT_INV_ram~482_q\ <= NOT \MemoriaRAM|ram~482_q\;
\MemoriaRAM|ALT_INV_ram~354_q\ <= NOT \MemoriaRAM|ram~354_q\;
\MemoriaRAM|ALT_INV_ram~466_q\ <= NOT \MemoriaRAM|ram~466_q\;
\MemoriaRAM|ALT_INV_ram~338_q\ <= NOT \MemoriaRAM|ram~338_q\;
\MemoriaRAM|ALT_INV_ram~596_combout\ <= NOT \MemoriaRAM|ram~596_combout\;
\MemoriaRAM|ALT_INV_ram~426_q\ <= NOT \MemoriaRAM|ram~426_q\;
\MemoriaRAM|ALT_INV_ram~298_q\ <= NOT \MemoriaRAM|ram~298_q\;
\MemoriaRAM|ALT_INV_ram~410_q\ <= NOT \MemoriaRAM|ram~410_q\;
\MemoriaRAM|ALT_INV_ram~282_q\ <= NOT \MemoriaRAM|ram~282_q\;
\MemoriaRAM|ALT_INV_ram~595_combout\ <= NOT \MemoriaRAM|ram~595_combout\;
\MemoriaRAM|ALT_INV_ram~418_q\ <= NOT \MemoriaRAM|ram~418_q\;
\MemoriaRAM|ALT_INV_ram~290_q\ <= NOT \MemoriaRAM|ram~290_q\;
\MemoriaRAM|ALT_INV_ram~402_q\ <= NOT \MemoriaRAM|ram~402_q\;
\MemoriaRAM|ALT_INV_ram~274_q\ <= NOT \MemoriaRAM|ram~274_q\;
\MemoriaRAM|ALT_INV_ram~594_combout\ <= NOT \MemoriaRAM|ram~594_combout\;
\MemoriaRAM|ALT_INV_ram~593_combout\ <= NOT \MemoriaRAM|ram~593_combout\;
\MemoriaRAM|ALT_INV_ram~234_q\ <= NOT \MemoriaRAM|ram~234_q\;
\MemoriaRAM|ALT_INV_ram~226_q\ <= NOT \MemoriaRAM|ram~226_q\;
\MemoriaRAM|ALT_INV_ram~218_q\ <= NOT \MemoriaRAM|ram~218_q\;
\MemoriaRAM|ALT_INV_ram~210_q\ <= NOT \MemoriaRAM|ram~210_q\;
\MemoriaRAM|ALT_INV_ram~592_combout\ <= NOT \MemoriaRAM|ram~592_combout\;
\MemoriaRAM|ALT_INV_ram~106_q\ <= NOT \MemoriaRAM|ram~106_q\;
\MemoriaRAM|ALT_INV_ram~98_q\ <= NOT \MemoriaRAM|ram~98_q\;
\MemoriaRAM|ALT_INV_ram~90_q\ <= NOT \MemoriaRAM|ram~90_q\;
\MemoriaRAM|ALT_INV_ram~82_q\ <= NOT \MemoriaRAM|ram~82_q\;
\MemoriaRAM|ALT_INV_ram~591_combout\ <= NOT \MemoriaRAM|ram~591_combout\;
\MemoriaRAM|ALT_INV_ram~170_q\ <= NOT \MemoriaRAM|ram~170_q\;
\MemoriaRAM|ALT_INV_ram~162_q\ <= NOT \MemoriaRAM|ram~162_q\;
\MemoriaRAM|ALT_INV_ram~154_q\ <= NOT \MemoriaRAM|ram~154_q\;
\MemoriaRAM|ALT_INV_ram~146_q\ <= NOT \MemoriaRAM|ram~146_q\;
\MemoriaRAM|ALT_INV_ram~590_combout\ <= NOT \MemoriaRAM|ram~590_combout\;
\MemoriaRAM|ALT_INV_ram~42_q\ <= NOT \MemoriaRAM|ram~42_q\;
\MemoriaRAM|ALT_INV_ram~34_q\ <= NOT \MemoriaRAM|ram~34_q\;
\MemoriaRAM|ALT_INV_ram~26_q\ <= NOT \MemoriaRAM|ram~26_q\;
\MemoriaRAM|ALT_INV_ram~18_q\ <= NOT \MemoriaRAM|ram~18_q\;
\Processador|MUX1|ALT_INV_saida_MUX[2]~1_combout\ <= NOT \Processador|MUX1|saida_MUX[2]~1_combout\;
\MemoriaRAM|ALT_INV_ram~589_combout\ <= NOT \MemoriaRAM|ram~589_combout\;
\MemoriaRAM|ALT_INV_ram~588_combout\ <= NOT \MemoriaRAM|ram~588_combout\;
\MemoriaRAM|ALT_INV_ram~587_combout\ <= NOT \MemoriaRAM|ram~587_combout\;
\MemoriaRAM|ALT_INV_ram~521_q\ <= NOT \MemoriaRAM|ram~521_q\;
\MemoriaRAM|ALT_INV_ram~393_q\ <= NOT \MemoriaRAM|ram~393_q\;
\MemoriaRAM|ALT_INV_ram~457_q\ <= NOT \MemoriaRAM|ram~457_q\;
\MemoriaRAM|ALT_INV_ram~329_q\ <= NOT \MemoriaRAM|ram~329_q\;
\MemoriaRAM|ALT_INV_ram~586_combout\ <= NOT \MemoriaRAM|ram~586_combout\;
\MemoriaRAM|ALT_INV_ram~489_q\ <= NOT \MemoriaRAM|ram~489_q\;
\MemoriaRAM|ALT_INV_ram~361_q\ <= NOT \MemoriaRAM|ram~361_q\;
\MemoriaRAM|ALT_INV_ram~425_q\ <= NOT \MemoriaRAM|ram~425_q\;
\MemoriaRAM|ALT_INV_ram~297_q\ <= NOT \MemoriaRAM|ram~297_q\;
\MemoriaRAM|ALT_INV_ram~585_combout\ <= NOT \MemoriaRAM|ram~585_combout\;
\MemoriaRAM|ALT_INV_ram~505_q\ <= NOT \MemoriaRAM|ram~505_q\;
\MemoriaRAM|ALT_INV_ram~377_q\ <= NOT \MemoriaRAM|ram~377_q\;
\MemoriaRAM|ALT_INV_ram~441_q\ <= NOT \MemoriaRAM|ram~441_q\;
\MemoriaRAM|ALT_INV_ram~313_q\ <= NOT \MemoriaRAM|ram~313_q\;
\MemoriaRAM|ALT_INV_ram~584_combout\ <= NOT \MemoriaRAM|ram~584_combout\;
\MemoriaRAM|ALT_INV_ram~473_q\ <= NOT \MemoriaRAM|ram~473_q\;
\MemoriaRAM|ALT_INV_ram~345_q\ <= NOT \MemoriaRAM|ram~345_q\;
\MemoriaRAM|ALT_INV_ram~409_q\ <= NOT \MemoriaRAM|ram~409_q\;
\MemoriaRAM|ALT_INV_ram~281_q\ <= NOT \MemoriaRAM|ram~281_q\;
\MemoriaRAM|ALT_INV_ram~583_combout\ <= NOT \MemoriaRAM|ram~583_combout\;
\MemoriaRAM|ALT_INV_ram~582_combout\ <= NOT \MemoriaRAM|ram~582_combout\;
\MemoriaRAM|ALT_INV_ram~265_q\ <= NOT \MemoriaRAM|ram~265_q\;
\MemoriaRAM|ALT_INV_ram~233_q\ <= NOT \MemoriaRAM|ram~233_q\;
\MemoriaRAM|ALT_INV_ram~249_q\ <= NOT \MemoriaRAM|ram~249_q\;
\MemoriaRAM|ALT_INV_ram~217_q\ <= NOT \MemoriaRAM|ram~217_q\;
\MemoriaRAM|ALT_INV_ram~581_combout\ <= NOT \MemoriaRAM|ram~581_combout\;
\MemoriaRAM|ALT_INV_ram~137_q\ <= NOT \MemoriaRAM|ram~137_q\;
\MemoriaRAM|ALT_INV_ram~105_q\ <= NOT \MemoriaRAM|ram~105_q\;
\MemoriaRAM|ALT_INV_ram~121_q\ <= NOT \MemoriaRAM|ram~121_q\;
\MemoriaRAM|ALT_INV_ram~89_q\ <= NOT \MemoriaRAM|ram~89_q\;
\MemoriaRAM|ALT_INV_ram~580_combout\ <= NOT \MemoriaRAM|ram~580_combout\;
\MemoriaRAM|ALT_INV_ram~201_q\ <= NOT \MemoriaRAM|ram~201_q\;
\MemoriaRAM|ALT_INV_ram~169_q\ <= NOT \MemoriaRAM|ram~169_q\;
\MemoriaRAM|ALT_INV_ram~484_q\ <= NOT \MemoriaRAM|ram~484_q\;
\MemoriaRAM|ALT_INV_ram~388_q\ <= NOT \MemoriaRAM|ram~388_q\;
\MemoriaRAM|ALT_INV_ram~356_q\ <= NOT \MemoriaRAM|ram~356_q\;
\MemoriaRAM|ALT_INV_ram~639_combout\ <= NOT \MemoriaRAM|ram~639_combout\;
\MemoriaRAM|ALT_INV_ram~500_q\ <= NOT \MemoriaRAM|ram~500_q\;
\MemoriaRAM|ALT_INV_ram~468_q\ <= NOT \MemoriaRAM|ram~468_q\;
\MemoriaRAM|ALT_INV_ram~372_q\ <= NOT \MemoriaRAM|ram~372_q\;
\MemoriaRAM|ALT_INV_ram~340_q\ <= NOT \MemoriaRAM|ram~340_q\;
\MemoriaRAM|ALT_INV_ram~638_combout\ <= NOT \MemoriaRAM|ram~638_combout\;
\MemoriaRAM|ALT_INV_ram~452_q\ <= NOT \MemoriaRAM|ram~452_q\;
\MemoriaRAM|ALT_INV_ram~420_q\ <= NOT \MemoriaRAM|ram~420_q\;
\MemoriaRAM|ALT_INV_ram~324_q\ <= NOT \MemoriaRAM|ram~324_q\;
\MemoriaRAM|ALT_INV_ram~292_q\ <= NOT \MemoriaRAM|ram~292_q\;
\MemoriaRAM|ALT_INV_ram~637_combout\ <= NOT \MemoriaRAM|ram~637_combout\;
\MemoriaRAM|ALT_INV_ram~436_q\ <= NOT \MemoriaRAM|ram~436_q\;
\MemoriaRAM|ALT_INV_ram~404_q\ <= NOT \MemoriaRAM|ram~404_q\;
\MemoriaRAM|ALT_INV_ram~308_q\ <= NOT \MemoriaRAM|ram~308_q\;
\MemoriaRAM|ALT_INV_ram~276_q\ <= NOT \MemoriaRAM|ram~276_q\;
\MemoriaRAM|ALT_INV_ram~636_combout\ <= NOT \MemoriaRAM|ram~636_combout\;
\MemoriaRAM|ALT_INV_ram~635_combout\ <= NOT \MemoriaRAM|ram~635_combout\;
\MemoriaRAM|ALT_INV_ram~260_q\ <= NOT \MemoriaRAM|ram~260_q\;
\MemoriaRAM|ALT_INV_ram~228_q\ <= NOT \MemoriaRAM|ram~228_q\;
\MemoriaRAM|ALT_INV_ram~244_q\ <= NOT \MemoriaRAM|ram~244_q\;
\MemoriaRAM|ALT_INV_ram~212_q\ <= NOT \MemoriaRAM|ram~212_q\;
\MemoriaRAM|ALT_INV_ram~634_combout\ <= NOT \MemoriaRAM|ram~634_combout\;
\MemoriaRAM|ALT_INV_ram~132_q\ <= NOT \MemoriaRAM|ram~132_q\;
\MemoriaRAM|ALT_INV_ram~100_q\ <= NOT \MemoriaRAM|ram~100_q\;
\MemoriaRAM|ALT_INV_ram~116_q\ <= NOT \MemoriaRAM|ram~116_q\;
\MemoriaRAM|ALT_INV_ram~84_q\ <= NOT \MemoriaRAM|ram~84_q\;
\MemoriaRAM|ALT_INV_ram~633_combout\ <= NOT \MemoriaRAM|ram~633_combout\;
\MemoriaRAM|ALT_INV_ram~196_q\ <= NOT \MemoriaRAM|ram~196_q\;
\MemoriaRAM|ALT_INV_ram~164_q\ <= NOT \MemoriaRAM|ram~164_q\;
\MemoriaRAM|ALT_INV_ram~180_q\ <= NOT \MemoriaRAM|ram~180_q\;
\MemoriaRAM|ALT_INV_ram~148_q\ <= NOT \MemoriaRAM|ram~148_q\;
\MemoriaRAM|ALT_INV_ram~632_combout\ <= NOT \MemoriaRAM|ram~632_combout\;
\MemoriaRAM|ALT_INV_ram~68_q\ <= NOT \MemoriaRAM|ram~68_q\;
\MemoriaRAM|ALT_INV_ram~36_q\ <= NOT \MemoriaRAM|ram~36_q\;
\MemoriaRAM|ALT_INV_ram~52_q\ <= NOT \MemoriaRAM|ram~52_q\;
\MemoriaRAM|ALT_INV_ram~20_q\ <= NOT \MemoriaRAM|ram~20_q\;
\ROM_instrucao|ALT_INV_memROM~40_combout\ <= NOT \ROM_instrucao|memROM~40_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[4]~3_combout\ <= NOT \Processador|MUX1|saida_MUX[4]~3_combout\;
\MemoriaRAM|ALT_INV_ram~631_combout\ <= NOT \MemoriaRAM|ram~631_combout\;
\MemoriaRAM|ALT_INV_ram~630_combout\ <= NOT \MemoriaRAM|ram~630_combout\;
\MemoriaRAM|ALT_INV_ram~629_combout\ <= NOT \MemoriaRAM|ram~629_combout\;
\MemoriaRAM|ALT_INV_ram~523_q\ <= NOT \MemoriaRAM|ram~523_q\;
\MemoriaRAM|ALT_INV_ram~515_q\ <= NOT \MemoriaRAM|ram~515_q\;
\MemoriaRAM|ALT_INV_ram~491_q\ <= NOT \MemoriaRAM|ram~491_q\;
\MemoriaRAM|ALT_INV_ram~483_q\ <= NOT \MemoriaRAM|ram~483_q\;
\MemoriaRAM|ALT_INV_ram~628_combout\ <= NOT \MemoriaRAM|ram~628_combout\;
\MemoriaRAM|ALT_INV_ram~395_q\ <= NOT \MemoriaRAM|ram~395_q\;
\MemoriaRAM|ALT_INV_ram~387_q\ <= NOT \MemoriaRAM|ram~387_q\;
\MemoriaRAM|ALT_INV_ram~363_q\ <= NOT \MemoriaRAM|ram~363_q\;
\MemoriaRAM|ALT_INV_ram~355_q\ <= NOT \MemoriaRAM|ram~355_q\;
\MemoriaRAM|ALT_INV_ram~627_combout\ <= NOT \MemoriaRAM|ram~627_combout\;
\MemoriaRAM|ALT_INV_ram~459_q\ <= NOT \MemoriaRAM|ram~459_q\;
\MemoriaRAM|ALT_INV_ram~451_q\ <= NOT \MemoriaRAM|ram~451_q\;
\MemoriaRAM|ALT_INV_ram~427_q\ <= NOT \MemoriaRAM|ram~427_q\;
\MemoriaRAM|ALT_INV_ram~419_q\ <= NOT \MemoriaRAM|ram~419_q\;
\MemoriaRAM|ALT_INV_ram~626_combout\ <= NOT \MemoriaRAM|ram~626_combout\;
\MemoriaRAM|ALT_INV_ram~331_q\ <= NOT \MemoriaRAM|ram~331_q\;
\MemoriaRAM|ALT_INV_ram~323_q\ <= NOT \MemoriaRAM|ram~323_q\;
\MemoriaRAM|ALT_INV_ram~299_q\ <= NOT \MemoriaRAM|ram~299_q\;
\MemoriaRAM|ALT_INV_ram~291_q\ <= NOT \MemoriaRAM|ram~291_q\;
\MemoriaRAM|ALT_INV_ram~625_combout\ <= NOT \MemoriaRAM|ram~625_combout\;
\MemoriaRAM|ALT_INV_ram~624_combout\ <= NOT \MemoriaRAM|ram~624_combout\;
\MemoriaRAM|ALT_INV_ram~267_q\ <= NOT \MemoriaRAM|ram~267_q\;
\MemoriaRAM|ALT_INV_ram~259_q\ <= NOT \MemoriaRAM|ram~259_q\;
\MemoriaRAM|ALT_INV_ram~139_q\ <= NOT \MemoriaRAM|ram~139_q\;
\MemoriaRAM|ALT_INV_ram~131_q\ <= NOT \MemoriaRAM|ram~131_q\;
\MemoriaRAM|ALT_INV_ram~623_combout\ <= NOT \MemoriaRAM|ram~623_combout\;
\MemoriaRAM|ALT_INV_ram~235_q\ <= NOT \MemoriaRAM|ram~235_q\;
\MemoriaRAM|ALT_INV_ram~227_q\ <= NOT \MemoriaRAM|ram~227_q\;
\MemoriaRAM|ALT_INV_ram~107_q\ <= NOT \MemoriaRAM|ram~107_q\;
\MemoriaRAM|ALT_INV_ram~99_q\ <= NOT \MemoriaRAM|ram~99_q\;
\MemoriaRAM|ALT_INV_ram~622_combout\ <= NOT \MemoriaRAM|ram~622_combout\;
\MemoriaRAM|ALT_INV_ram~203_q\ <= NOT \MemoriaRAM|ram~203_q\;
\MemoriaRAM|ALT_INV_ram~195_q\ <= NOT \MemoriaRAM|ram~195_q\;
\MemoriaRAM|ALT_INV_ram~75_q\ <= NOT \MemoriaRAM|ram~75_q\;
\MemoriaRAM|ALT_INV_ram~67_q\ <= NOT \MemoriaRAM|ram~67_q\;
\MemoriaRAM|ALT_INV_ram~621_combout\ <= NOT \MemoriaRAM|ram~621_combout\;
\MemoriaRAM|ALT_INV_ram~171_q\ <= NOT \MemoriaRAM|ram~171_q\;
\MemoriaRAM|ALT_INV_ram~163_q\ <= NOT \MemoriaRAM|ram~163_q\;
\MemoriaRAM|ALT_INV_ram~43_q\ <= NOT \MemoriaRAM|ram~43_q\;
\MemoriaRAM|ALT_INV_ram~35_q\ <= NOT \MemoriaRAM|ram~35_q\;
\MemoriaRAM|ALT_INV_ram~620_combout\ <= NOT \MemoriaRAM|ram~620_combout\;
\MemoriaRAM|ALT_INV_ram~619_combout\ <= NOT \MemoriaRAM|ram~619_combout\;
\MemoriaRAM|ALT_INV_ram~507_q\ <= NOT \MemoriaRAM|ram~507_q\;
\MemoriaRAM|ALT_INV_ram~499_q\ <= NOT \MemoriaRAM|ram~499_q\;
\MemoriaRAM|ALT_INV_ram~443_q\ <= NOT \MemoriaRAM|ram~443_q\;
\MemoriaRAM|ALT_INV_ram~435_q\ <= NOT \MemoriaRAM|ram~435_q\;
\MemoriaRAM|ALT_INV_ram~618_combout\ <= NOT \MemoriaRAM|ram~618_combout\;
\MemoriaRAM|ALT_INV_ram~475_q\ <= NOT \MemoriaRAM|ram~475_q\;
\MemoriaRAM|ALT_INV_ram~467_q\ <= NOT \MemoriaRAM|ram~467_q\;
\MemoriaRAM|ALT_INV_ram~411_q\ <= NOT \MemoriaRAM|ram~411_q\;
\MemoriaRAM|ALT_INV_ram~403_q\ <= NOT \MemoriaRAM|ram~403_q\;
\MemoriaRAM|ALT_INV_ram~617_combout\ <= NOT \MemoriaRAM|ram~617_combout\;
\MemoriaRAM|ALT_INV_ram~379_q\ <= NOT \MemoriaRAM|ram~379_q\;
\MemoriaRAM|ALT_INV_ram~371_q\ <= NOT \MemoriaRAM|ram~371_q\;
\MemoriaRAM|ALT_INV_ram~315_q\ <= NOT \MemoriaRAM|ram~315_q\;
\MemoriaRAM|ALT_INV_ram~307_q\ <= NOT \MemoriaRAM|ram~307_q\;
\MemoriaRAM|ALT_INV_ram~616_combout\ <= NOT \MemoriaRAM|ram~616_combout\;
\MemoriaRAM|ALT_INV_ram~347_q\ <= NOT \MemoriaRAM|ram~347_q\;
\MemoriaRAM|ALT_INV_ram~339_q\ <= NOT \MemoriaRAM|ram~339_q\;
\MemoriaRAM|ALT_INV_ram~283_q\ <= NOT \MemoriaRAM|ram~283_q\;
\MemoriaRAM|ALT_INV_ram~275_q\ <= NOT \MemoriaRAM|ram~275_q\;
\MemoriaRAM|ALT_INV_ram~615_combout\ <= NOT \MemoriaRAM|ram~615_combout\;
\MemoriaRAM|ALT_INV_ram~614_combout\ <= NOT \MemoriaRAM|ram~614_combout\;
\MemoriaRAM|ALT_INV_ram~251_q\ <= NOT \MemoriaRAM|ram~251_q\;
\MemoriaRAM|ALT_INV_ram~243_q\ <= NOT \MemoriaRAM|ram~243_q\;
\MemoriaRAM|ALT_INV_ram~219_q\ <= NOT \MemoriaRAM|ram~219_q\;
\MemoriaRAM|ALT_INV_ram~211_q\ <= NOT \MemoriaRAM|ram~211_q\;
\MemoriaRAM|ALT_INV_ram~613_combout\ <= NOT \MemoriaRAM|ram~613_combout\;
\MemoriaRAM|ALT_INV_ram~123_q\ <= NOT \MemoriaRAM|ram~123_q\;
\MemoriaRAM|ALT_INV_ram~115_q\ <= NOT \MemoriaRAM|ram~115_q\;
\MemoriaRAM|ALT_INV_ram~91_q\ <= NOT \MemoriaRAM|ram~91_q\;
\MemoriaRAM|ALT_INV_ram~83_q\ <= NOT \MemoriaRAM|ram~83_q\;
\MemoriaRAM|ALT_INV_ram~612_combout\ <= NOT \MemoriaRAM|ram~612_combout\;
\MemoriaRAM|ALT_INV_ram~187_q\ <= NOT \MemoriaRAM|ram~187_q\;
\MemoriaRAM|ALT_INV_ram~179_q\ <= NOT \MemoriaRAM|ram~179_q\;
\MemoriaRAM|ALT_INV_ram~155_q\ <= NOT \MemoriaRAM|ram~155_q\;
\MemoriaRAM|ALT_INV_ram~147_q\ <= NOT \MemoriaRAM|ram~147_q\;
\MemoriaRAM|ALT_INV_ram~611_combout\ <= NOT \MemoriaRAM|ram~611_combout\;
\MemoriaRAM|ALT_INV_ram~59_q\ <= NOT \MemoriaRAM|ram~59_q\;
\MemoriaRAM|ALT_INV_ram~51_q\ <= NOT \MemoriaRAM|ram~51_q\;
\MemoriaRAM|ALT_INV_ram~27_q\ <= NOT \MemoriaRAM|ram~27_q\;
\MemoriaRAM|ALT_INV_ram~19_q\ <= NOT \MemoriaRAM|ram~19_q\;
\ROM_instrucao|ALT_INV_memROM~39_combout\ <= NOT \ROM_instrucao|memROM~39_combout\;
\MemoriaRAM|ALT_INV_ram~461_q\ <= NOT \MemoriaRAM|ram~461_q\;
\MemoriaRAM|ALT_INV_ram~445_q\ <= NOT \MemoriaRAM|ram~445_q\;
\MemoriaRAM|ALT_INV_ram~670_combout\ <= NOT \MemoriaRAM|ram~670_combout\;
\MemoriaRAM|ALT_INV_ram~517_q\ <= NOT \MemoriaRAM|ram~517_q\;
\MemoriaRAM|ALT_INV_ram~501_q\ <= NOT \MemoriaRAM|ram~501_q\;
\MemoriaRAM|ALT_INV_ram~453_q\ <= NOT \MemoriaRAM|ram~453_q\;
\MemoriaRAM|ALT_INV_ram~437_q\ <= NOT \MemoriaRAM|ram~437_q\;
\MemoriaRAM|ALT_INV_ram~669_combout\ <= NOT \MemoriaRAM|ram~669_combout\;
\MemoriaRAM|ALT_INV_ram~397_q\ <= NOT \MemoriaRAM|ram~397_q\;
\MemoriaRAM|ALT_INV_ram~381_q\ <= NOT \MemoriaRAM|ram~381_q\;
\MemoriaRAM|ALT_INV_ram~333_q\ <= NOT \MemoriaRAM|ram~333_q\;
\MemoriaRAM|ALT_INV_ram~317_q\ <= NOT \MemoriaRAM|ram~317_q\;
\MemoriaRAM|ALT_INV_ram~668_combout\ <= NOT \MemoriaRAM|ram~668_combout\;
\MemoriaRAM|ALT_INV_ram~389_q\ <= NOT \MemoriaRAM|ram~389_q\;
\MemoriaRAM|ALT_INV_ram~373_q\ <= NOT \MemoriaRAM|ram~373_q\;
\MemoriaRAM|ALT_INV_ram~325_q\ <= NOT \MemoriaRAM|ram~325_q\;
\MemoriaRAM|ALT_INV_ram~309_q\ <= NOT \MemoriaRAM|ram~309_q\;
\MemoriaRAM|ALT_INV_ram~667_combout\ <= NOT \MemoriaRAM|ram~667_combout\;
\MemoriaRAM|ALT_INV_ram~666_combout\ <= NOT \MemoriaRAM|ram~666_combout\;
\MemoriaRAM|ALT_INV_ram~269_q\ <= NOT \MemoriaRAM|ram~269_q\;
\MemoriaRAM|ALT_INV_ram~261_q\ <= NOT \MemoriaRAM|ram~261_q\;
\MemoriaRAM|ALT_INV_ram~253_q\ <= NOT \MemoriaRAM|ram~253_q\;
\MemoriaRAM|ALT_INV_ram~245_q\ <= NOT \MemoriaRAM|ram~245_q\;
\MemoriaRAM|ALT_INV_ram~665_combout\ <= NOT \MemoriaRAM|ram~665_combout\;
\MemoriaRAM|ALT_INV_ram~141_q\ <= NOT \MemoriaRAM|ram~141_q\;
\MemoriaRAM|ALT_INV_ram~133_q\ <= NOT \MemoriaRAM|ram~133_q\;
\MemoriaRAM|ALT_INV_ram~125_q\ <= NOT \MemoriaRAM|ram~125_q\;
\MemoriaRAM|ALT_INV_ram~117_q\ <= NOT \MemoriaRAM|ram~117_q\;
\MemoriaRAM|ALT_INV_ram~664_combout\ <= NOT \MemoriaRAM|ram~664_combout\;
\MemoriaRAM|ALT_INV_ram~205_q\ <= NOT \MemoriaRAM|ram~205_q\;
\MemoriaRAM|ALT_INV_ram~197_q\ <= NOT \MemoriaRAM|ram~197_q\;
\MemoriaRAM|ALT_INV_ram~189_q\ <= NOT \MemoriaRAM|ram~189_q\;
\MemoriaRAM|ALT_INV_ram~181_q\ <= NOT \MemoriaRAM|ram~181_q\;
\MemoriaRAM|ALT_INV_ram~663_combout\ <= NOT \MemoriaRAM|ram~663_combout\;
\MemoriaRAM|ALT_INV_ram~77_q\ <= NOT \MemoriaRAM|ram~77_q\;
\MemoriaRAM|ALT_INV_ram~69_q\ <= NOT \MemoriaRAM|ram~69_q\;
\MemoriaRAM|ALT_INV_ram~61_q\ <= NOT \MemoriaRAM|ram~61_q\;
\MemoriaRAM|ALT_INV_ram~53_q\ <= NOT \MemoriaRAM|ram~53_q\;
\MemoriaRAM|ALT_INV_ram~662_combout\ <= NOT \MemoriaRAM|ram~662_combout\;
\MemoriaRAM|ALT_INV_ram~661_combout\ <= NOT \MemoriaRAM|ram~661_combout\;
\MemoriaRAM|ALT_INV_ram~493_q\ <= NOT \MemoriaRAM|ram~493_q\;
\MemoriaRAM|ALT_INV_ram~365_q\ <= NOT \MemoriaRAM|ram~365_q\;
\MemoriaRAM|ALT_INV_ram~477_q\ <= NOT \MemoriaRAM|ram~477_q\;
\MemoriaRAM|ALT_INV_ram~349_q\ <= NOT \MemoriaRAM|ram~349_q\;
\MemoriaRAM|ALT_INV_ram~660_combout\ <= NOT \MemoriaRAM|ram~660_combout\;
\MemoriaRAM|ALT_INV_ram~485_q\ <= NOT \MemoriaRAM|ram~485_q\;
\MemoriaRAM|ALT_INV_ram~357_q\ <= NOT \MemoriaRAM|ram~357_q\;
\MemoriaRAM|ALT_INV_ram~469_q\ <= NOT \MemoriaRAM|ram~469_q\;
\MemoriaRAM|ALT_INV_ram~341_q\ <= NOT \MemoriaRAM|ram~341_q\;
\MemoriaRAM|ALT_INV_ram~659_combout\ <= NOT \MemoriaRAM|ram~659_combout\;
\MemoriaRAM|ALT_INV_ram~429_q\ <= NOT \MemoriaRAM|ram~429_q\;
\MemoriaRAM|ALT_INV_ram~301_q\ <= NOT \MemoriaRAM|ram~301_q\;
\MemoriaRAM|ALT_INV_ram~413_q\ <= NOT \MemoriaRAM|ram~413_q\;
\MemoriaRAM|ALT_INV_ram~285_q\ <= NOT \MemoriaRAM|ram~285_q\;
\MemoriaRAM|ALT_INV_ram~658_combout\ <= NOT \MemoriaRAM|ram~658_combout\;
\MemoriaRAM|ALT_INV_ram~421_q\ <= NOT \MemoriaRAM|ram~421_q\;
\MemoriaRAM|ALT_INV_ram~293_q\ <= NOT \MemoriaRAM|ram~293_q\;
\MemoriaRAM|ALT_INV_ram~405_q\ <= NOT \MemoriaRAM|ram~405_q\;
\MemoriaRAM|ALT_INV_ram~277_q\ <= NOT \MemoriaRAM|ram~277_q\;
\MemoriaRAM|ALT_INV_ram~657_combout\ <= NOT \MemoriaRAM|ram~657_combout\;
\MemoriaRAM|ALT_INV_ram~656_combout\ <= NOT \MemoriaRAM|ram~656_combout\;
\MemoriaRAM|ALT_INV_ram~237_q\ <= NOT \MemoriaRAM|ram~237_q\;
\MemoriaRAM|ALT_INV_ram~221_q\ <= NOT \MemoriaRAM|ram~221_q\;
\MemoriaRAM|ALT_INV_ram~173_q\ <= NOT \MemoriaRAM|ram~173_q\;
\MemoriaRAM|ALT_INV_ram~157_q\ <= NOT \MemoriaRAM|ram~157_q\;
\MemoriaRAM|ALT_INV_ram~655_combout\ <= NOT \MemoriaRAM|ram~655_combout\;
\MemoriaRAM|ALT_INV_ram~229_q\ <= NOT \MemoriaRAM|ram~229_q\;
\MemoriaRAM|ALT_INV_ram~213_q\ <= NOT \MemoriaRAM|ram~213_q\;
\MemoriaRAM|ALT_INV_ram~165_q\ <= NOT \MemoriaRAM|ram~165_q\;
\MemoriaRAM|ALT_INV_ram~149_q\ <= NOT \MemoriaRAM|ram~149_q\;
\MemoriaRAM|ALT_INV_ram~654_combout\ <= NOT \MemoriaRAM|ram~654_combout\;
\MemoriaRAM|ALT_INV_ram~109_q\ <= NOT \MemoriaRAM|ram~109_q\;
\MemoriaRAM|ALT_INV_ram~93_q\ <= NOT \MemoriaRAM|ram~93_q\;
\MemoriaRAM|ALT_INV_ram~45_q\ <= NOT \MemoriaRAM|ram~45_q\;
\MemoriaRAM|ALT_INV_ram~29_q\ <= NOT \MemoriaRAM|ram~29_q\;
\MemoriaRAM|ALT_INV_ram~653_combout\ <= NOT \MemoriaRAM|ram~653_combout\;
\MemoriaRAM|ALT_INV_ram~101_q\ <= NOT \MemoriaRAM|ram~101_q\;
\MemoriaRAM|ALT_INV_ram~85_q\ <= NOT \MemoriaRAM|ram~85_q\;
\MemoriaRAM|ALT_INV_ram~37_q\ <= NOT \MemoriaRAM|ram~37_q\;
\MemoriaRAM|ALT_INV_ram~21_q\ <= NOT \MemoriaRAM|ram~21_q\;
\Processador|MUX1|ALT_INV_saida_MUX[5]~4_combout\ <= NOT \Processador|MUX1|saida_MUX[5]~4_combout\;
\MemoriaRAM|ALT_INV_ram~652_combout\ <= NOT \MemoriaRAM|ram~652_combout\;
\MemoriaRAM|ALT_INV_ram~651_combout\ <= NOT \MemoriaRAM|ram~651_combout\;
\MemoriaRAM|ALT_INV_ram~650_combout\ <= NOT \MemoriaRAM|ram~650_combout\;
\MemoriaRAM|ALT_INV_ram~524_q\ <= NOT \MemoriaRAM|ram~524_q\;
\MemoriaRAM|ALT_INV_ram~492_q\ <= NOT \MemoriaRAM|ram~492_q\;
\MemoriaRAM|ALT_INV_ram~460_q\ <= NOT \MemoriaRAM|ram~460_q\;
\MemoriaRAM|ALT_INV_ram~428_q\ <= NOT \MemoriaRAM|ram~428_q\;
\MemoriaRAM|ALT_INV_ram~649_combout\ <= NOT \MemoriaRAM|ram~649_combout\;
\MemoriaRAM|ALT_INV_ram~396_q\ <= NOT \MemoriaRAM|ram~396_q\;
\MemoriaRAM|ALT_INV_ram~364_q\ <= NOT \MemoriaRAM|ram~364_q\;
\MemoriaRAM|ALT_INV_ram~332_q\ <= NOT \MemoriaRAM|ram~332_q\;
\MemoriaRAM|ALT_INV_ram~300_q\ <= NOT \MemoriaRAM|ram~300_q\;
\MemoriaRAM|ALT_INV_ram~648_combout\ <= NOT \MemoriaRAM|ram~648_combout\;
\MemoriaRAM|ALT_INV_ram~508_q\ <= NOT \MemoriaRAM|ram~508_q\;
\MemoriaRAM|ALT_INV_ram~476_q\ <= NOT \MemoriaRAM|ram~476_q\;
\MemoriaRAM|ALT_INV_ram~444_q\ <= NOT \MemoriaRAM|ram~444_q\;
\MemoriaRAM|ALT_INV_ram~412_q\ <= NOT \MemoriaRAM|ram~412_q\;
\MemoriaRAM|ALT_INV_ram~647_combout\ <= NOT \MemoriaRAM|ram~647_combout\;
\MemoriaRAM|ALT_INV_ram~380_q\ <= NOT \MemoriaRAM|ram~380_q\;
\MemoriaRAM|ALT_INV_ram~348_q\ <= NOT \MemoriaRAM|ram~348_q\;
\MemoriaRAM|ALT_INV_ram~316_q\ <= NOT \MemoriaRAM|ram~316_q\;
\MemoriaRAM|ALT_INV_ram~284_q\ <= NOT \MemoriaRAM|ram~284_q\;
\MemoriaRAM|ALT_INV_ram~646_combout\ <= NOT \MemoriaRAM|ram~646_combout\;
\MemoriaRAM|ALT_INV_ram~645_combout\ <= NOT \MemoriaRAM|ram~645_combout\;
\MemoriaRAM|ALT_INV_ram~268_q\ <= NOT \MemoriaRAM|ram~268_q\;
\MemoriaRAM|ALT_INV_ram~236_q\ <= NOT \MemoriaRAM|ram~236_q\;
\MemoriaRAM|ALT_INV_ram~252_q\ <= NOT \MemoriaRAM|ram~252_q\;
\MemoriaRAM|ALT_INV_ram~220_q\ <= NOT \MemoriaRAM|ram~220_q\;
\MemoriaRAM|ALT_INV_ram~644_combout\ <= NOT \MemoriaRAM|ram~644_combout\;
\MemoriaRAM|ALT_INV_ram~140_q\ <= NOT \MemoriaRAM|ram~140_q\;
\MemoriaRAM|ALT_INV_ram~108_q\ <= NOT \MemoriaRAM|ram~108_q\;
\MemoriaRAM|ALT_INV_ram~124_q\ <= NOT \MemoriaRAM|ram~124_q\;
\MemoriaRAM|ALT_INV_ram~92_q\ <= NOT \MemoriaRAM|ram~92_q\;
\MemoriaRAM|ALT_INV_ram~643_combout\ <= NOT \MemoriaRAM|ram~643_combout\;
\MemoriaRAM|ALT_INV_ram~204_q\ <= NOT \MemoriaRAM|ram~204_q\;
\MemoriaRAM|ALT_INV_ram~172_q\ <= NOT \MemoriaRAM|ram~172_q\;
\MemoriaRAM|ALT_INV_ram~188_q\ <= NOT \MemoriaRAM|ram~188_q\;
\MemoriaRAM|ALT_INV_ram~156_q\ <= NOT \MemoriaRAM|ram~156_q\;
\MemoriaRAM|ALT_INV_ram~642_combout\ <= NOT \MemoriaRAM|ram~642_combout\;
\MemoriaRAM|ALT_INV_ram~76_q\ <= NOT \MemoriaRAM|ram~76_q\;
\MemoriaRAM|ALT_INV_ram~44_q\ <= NOT \MemoriaRAM|ram~44_q\;
\MemoriaRAM|ALT_INV_ram~60_q\ <= NOT \MemoriaRAM|ram~60_q\;
\MemoriaRAM|ALT_INV_ram~28_q\ <= NOT \MemoriaRAM|ram~28_q\;
\MemoriaRAM|ALT_INV_ram~641_combout\ <= NOT \MemoriaRAM|ram~641_combout\;
\MemoriaRAM|ALT_INV_ram~640_combout\ <= NOT \MemoriaRAM|ram~640_combout\;
\MemoriaRAM|ALT_INV_ram~516_q\ <= NOT \MemoriaRAM|ram~516_q\;
\MemoriaRAM|ALT_INV_ram~709_combout\ <= NOT \MemoriaRAM|ram~709_combout\;
\MemoriaRAM|ALT_INV_ram~707_combout\ <= NOT \MemoriaRAM|ram~707_combout\;
\MemoriaRAM|ALT_INV_ram~705_combout\ <= NOT \MemoriaRAM|ram~705_combout\;
\MemoriaRAM|ALT_INV_ram~703_combout\ <= NOT \MemoriaRAM|ram~703_combout\;
\MemoriaRAM|ALT_INV_ram~701_combout\ <= NOT \MemoriaRAM|ram~701_combout\;
\MemoriaRAM|ALT_INV_ram~699_combout\ <= NOT \MemoriaRAM|ram~699_combout\;
\MemoriaRAM|ALT_INV_ram~697_combout\ <= NOT \MemoriaRAM|ram~697_combout\;
\MemoriaRAM|ALT_INV_ram~695_combout\ <= NOT \MemoriaRAM|ram~695_combout\;
\MemoriaRAM|ALT_INV_process_0~0_combout\ <= NOT \MemoriaRAM|process_0~0_combout\;
\Processador|ULA1|ALT_INV_WideOr0~1_combout\ <= NOT \Processador|ULA1|WideOr0~1_combout\;
\divisor|ALT_INV_Equal0~2_combout\ <= NOT \divisor|Equal0~2_combout\;
\divisor|ALT_INV_Equal0~1_combout\ <= NOT \divisor|Equal0~1_combout\;
\divisor|ALT_INV_Equal0~0_combout\ <= NOT \divisor|Equal0~0_combout\;
\DebouceMem_key1|ALT_INV_saidaQ~q\ <= NOT \DebouceMem_key1|saidaQ~q\;
\DebouceMem_key0|ALT_INV_saidaQ~q\ <= NOT \DebouceMem_key0|saidaQ~q\;
\ALT_INV_Data_IN[7]~8_combout\ <= NOT \Data_IN[7]~8_combout\;
\ROM_instrucao|ALT_INV_memROM~43_combout\ <= NOT \ROM_instrucao|memROM~43_combout\;
\ROM_instrucao|ALT_INV_memROM~42_combout\ <= NOT \ROM_instrucao|memROM~42_combout\;
\ROM_instrucao|ALT_INV_memROM~41_combout\ <= NOT \ROM_instrucao|memROM~41_combout\;
\MemoriaRAM|ALT_INV_ram~694_combout\ <= NOT \MemoriaRAM|ram~694_combout\;
\MemoriaRAM|ALT_INV_ram~693_combout\ <= NOT \MemoriaRAM|ram~693_combout\;
\MemoriaRAM|ALT_INV_ram~692_combout\ <= NOT \MemoriaRAM|ram~692_combout\;
\MemoriaRAM|ALT_INV_ram~526_q\ <= NOT \MemoriaRAM|ram~526_q\;
\MemoriaRAM|ALT_INV_ram~518_q\ <= NOT \MemoriaRAM|ram~518_q\;
\MemoriaRAM|ALT_INV_ram~398_q\ <= NOT \MemoriaRAM|ram~398_q\;
\MemoriaRAM|ALT_INV_ram~390_q\ <= NOT \MemoriaRAM|ram~390_q\;
\MemoriaRAM|ALT_INV_ram~691_combout\ <= NOT \MemoriaRAM|ram~691_combout\;
\MemoriaRAM|ALT_INV_ram~494_q\ <= NOT \MemoriaRAM|ram~494_q\;
\MemoriaRAM|ALT_INV_ram~486_q\ <= NOT \MemoriaRAM|ram~486_q\;
\MemoriaRAM|ALT_INV_ram~366_q\ <= NOT \MemoriaRAM|ram~366_q\;
\MemoriaRAM|ALT_INV_ram~358_q\ <= NOT \MemoriaRAM|ram~358_q\;
\MemoriaRAM|ALT_INV_ram~690_combout\ <= NOT \MemoriaRAM|ram~690_combout\;
\MemoriaRAM|ALT_INV_ram~462_q\ <= NOT \MemoriaRAM|ram~462_q\;
\MemoriaRAM|ALT_INV_ram~454_q\ <= NOT \MemoriaRAM|ram~454_q\;
\MemoriaRAM|ALT_INV_ram~334_q\ <= NOT \MemoriaRAM|ram~334_q\;
\MemoriaRAM|ALT_INV_ram~326_q\ <= NOT \MemoriaRAM|ram~326_q\;
\MemoriaRAM|ALT_INV_ram~689_combout\ <= NOT \MemoriaRAM|ram~689_combout\;
\MemoriaRAM|ALT_INV_ram~430_q\ <= NOT \MemoriaRAM|ram~430_q\;
\MemoriaRAM|ALT_INV_ram~422_q\ <= NOT \MemoriaRAM|ram~422_q\;
\MemoriaRAM|ALT_INV_ram~302_q\ <= NOT \MemoriaRAM|ram~302_q\;
\MemoriaRAM|ALT_INV_ram~294_q\ <= NOT \MemoriaRAM|ram~294_q\;
\MemoriaRAM|ALT_INV_ram~688_combout\ <= NOT \MemoriaRAM|ram~688_combout\;
\MemoriaRAM|ALT_INV_ram~687_combout\ <= NOT \MemoriaRAM|ram~687_combout\;
\MemoriaRAM|ALT_INV_ram~510_q\ <= NOT \MemoriaRAM|ram~510_q\;
\MemoriaRAM|ALT_INV_ram~478_q\ <= NOT \MemoriaRAM|ram~478_q\;
\MemoriaRAM|ALT_INV_ram~446_q\ <= NOT \MemoriaRAM|ram~446_q\;
\MemoriaRAM|ALT_INV_ram~414_q\ <= NOT \MemoriaRAM|ram~414_q\;
\MemoriaRAM|ALT_INV_ram~686_combout\ <= NOT \MemoriaRAM|ram~686_combout\;
\MemoriaRAM|ALT_INV_ram~502_q\ <= NOT \MemoriaRAM|ram~502_q\;
\MemoriaRAM|ALT_INV_ram~470_q\ <= NOT \MemoriaRAM|ram~470_q\;
\MemoriaRAM|ALT_INV_ram~438_q\ <= NOT \MemoriaRAM|ram~438_q\;
\MemoriaRAM|ALT_INV_ram~406_q\ <= NOT \MemoriaRAM|ram~406_q\;
\MemoriaRAM|ALT_INV_ram~685_combout\ <= NOT \MemoriaRAM|ram~685_combout\;
\MemoriaRAM|ALT_INV_ram~382_q\ <= NOT \MemoriaRAM|ram~382_q\;
\MemoriaRAM|ALT_INV_ram~350_q\ <= NOT \MemoriaRAM|ram~350_q\;
\MemoriaRAM|ALT_INV_ram~318_q\ <= NOT \MemoriaRAM|ram~318_q\;
\MemoriaRAM|ALT_INV_ram~286_q\ <= NOT \MemoriaRAM|ram~286_q\;
\MemoriaRAM|ALT_INV_ram~684_combout\ <= NOT \MemoriaRAM|ram~684_combout\;
\MemoriaRAM|ALT_INV_ram~374_q\ <= NOT \MemoriaRAM|ram~374_q\;
\MemoriaRAM|ALT_INV_ram~342_q\ <= NOT \MemoriaRAM|ram~342_q\;
\MemoriaRAM|ALT_INV_ram~310_q\ <= NOT \MemoriaRAM|ram~310_q\;
\MemoriaRAM|ALT_INV_ram~278_q\ <= NOT \MemoriaRAM|ram~278_q\;
\MemoriaRAM|ALT_INV_ram~683_combout\ <= NOT \MemoriaRAM|ram~683_combout\;
\MemoriaRAM|ALT_INV_ram~682_combout\ <= NOT \MemoriaRAM|ram~682_combout\;
\MemoriaRAM|ALT_INV_ram~270_q\ <= NOT \MemoriaRAM|ram~270_q\;
\MemoriaRAM|ALT_INV_ram~262_q\ <= NOT \MemoriaRAM|ram~262_q\;
\MemoriaRAM|ALT_INV_ram~142_q\ <= NOT \MemoriaRAM|ram~142_q\;
\MemoriaRAM|ALT_INV_ram~134_q\ <= NOT \MemoriaRAM|ram~134_q\;
\MemoriaRAM|ALT_INV_ram~681_combout\ <= NOT \MemoriaRAM|ram~681_combout\;
\MemoriaRAM|ALT_INV_ram~238_q\ <= NOT \MemoriaRAM|ram~238_q\;
\MemoriaRAM|ALT_INV_ram~230_q\ <= NOT \MemoriaRAM|ram~230_q\;
\MemoriaRAM|ALT_INV_ram~110_q\ <= NOT \MemoriaRAM|ram~110_q\;
\MemoriaRAM|ALT_INV_ram~102_q\ <= NOT \MemoriaRAM|ram~102_q\;
\MemoriaRAM|ALT_INV_ram~680_combout\ <= NOT \MemoriaRAM|ram~680_combout\;
\MemoriaRAM|ALT_INV_ram~206_q\ <= NOT \MemoriaRAM|ram~206_q\;
\MemoriaRAM|ALT_INV_ram~198_q\ <= NOT \MemoriaRAM|ram~198_q\;
\MemoriaRAM|ALT_INV_ram~78_q\ <= NOT \MemoriaRAM|ram~78_q\;
\MemoriaRAM|ALT_INV_ram~70_q\ <= NOT \MemoriaRAM|ram~70_q\;
\MemoriaRAM|ALT_INV_ram~679_combout\ <= NOT \MemoriaRAM|ram~679_combout\;
\MemoriaRAM|ALT_INV_ram~174_q\ <= NOT \MemoriaRAM|ram~174_q\;
\MemoriaRAM|ALT_INV_ram~166_q\ <= NOT \MemoriaRAM|ram~166_q\;
\MemoriaRAM|ALT_INV_ram~46_q\ <= NOT \MemoriaRAM|ram~46_q\;
\MemoriaRAM|ALT_INV_ram~38_q\ <= NOT \MemoriaRAM|ram~38_q\;
\MemoriaRAM|ALT_INV_ram~678_combout\ <= NOT \MemoriaRAM|ram~678_combout\;
\MemoriaRAM|ALT_INV_ram~677_combout\ <= NOT \MemoriaRAM|ram~677_combout\;
\MemoriaRAM|ALT_INV_ram~254_q\ <= NOT \MemoriaRAM|ram~254_q\;
\MemoriaRAM|ALT_INV_ram~222_q\ <= NOT \MemoriaRAM|ram~222_q\;
\MemoriaRAM|ALT_INV_ram~126_q\ <= NOT \MemoriaRAM|ram~126_q\;
\MemoriaRAM|ALT_INV_ram~94_q\ <= NOT \MemoriaRAM|ram~94_q\;
\MemoriaRAM|ALT_INV_ram~676_combout\ <= NOT \MemoriaRAM|ram~676_combout\;
\MemoriaRAM|ALT_INV_ram~246_q\ <= NOT \MemoriaRAM|ram~246_q\;
\MemoriaRAM|ALT_INV_ram~214_q\ <= NOT \MemoriaRAM|ram~214_q\;
\MemoriaRAM|ALT_INV_ram~118_q\ <= NOT \MemoriaRAM|ram~118_q\;
\MemoriaRAM|ALT_INV_ram~86_q\ <= NOT \MemoriaRAM|ram~86_q\;
\MemoriaRAM|ALT_INV_ram~675_combout\ <= NOT \MemoriaRAM|ram~675_combout\;
\MemoriaRAM|ALT_INV_ram~190_q\ <= NOT \MemoriaRAM|ram~190_q\;
\MemoriaRAM|ALT_INV_ram~158_q\ <= NOT \MemoriaRAM|ram~158_q\;
\MemoriaRAM|ALT_INV_ram~62_q\ <= NOT \MemoriaRAM|ram~62_q\;
\MemoriaRAM|ALT_INV_ram~30_q\ <= NOT \MemoriaRAM|ram~30_q\;
\MemoriaRAM|ALT_INV_ram~674_combout\ <= NOT \MemoriaRAM|ram~674_combout\;
\MemoriaRAM|ALT_INV_ram~182_q\ <= NOT \MemoriaRAM|ram~182_q\;
\MemoriaRAM|ALT_INV_ram~150_q\ <= NOT \MemoriaRAM|ram~150_q\;
\MemoriaRAM|ALT_INV_ram~54_q\ <= NOT \MemoriaRAM|ram~54_q\;
\MemoriaRAM|ALT_INV_ram~22_q\ <= NOT \MemoriaRAM|ram~22_q\;
\Processador|MUX1|ALT_INV_saida_MUX[6]~5_combout\ <= NOT \Processador|MUX1|saida_MUX[6]~5_combout\;
\MemoriaRAM|ALT_INV_ram~673_combout\ <= NOT \MemoriaRAM|ram~673_combout\;
\MemoriaRAM|ALT_INV_ram~672_combout\ <= NOT \MemoriaRAM|ram~672_combout\;
\MemoriaRAM|ALT_INV_ram~671_combout\ <= NOT \MemoriaRAM|ram~671_combout\;
\MemoriaRAM|ALT_INV_ram~525_q\ <= NOT \MemoriaRAM|ram~525_q\;
\MemoriaRAM|ALT_INV_ram~509_q\ <= NOT \MemoriaRAM|ram~509_q\;
\Processador|decoder|ALT_INV_Equal14~0_combout\ <= NOT \Processador|decoder|Equal14~0_combout\;
\MemoriaRAM|ALT_INV_ram~821_combout\ <= NOT \MemoriaRAM|ram~821_combout\;
\MemoriaRAM|ALT_INV_ram~819_combout\ <= NOT \MemoriaRAM|ram~819_combout\;
\MemoriaRAM|ALT_INV_ram~817_combout\ <= NOT \MemoriaRAM|ram~817_combout\;
\MemoriaRAM|ALT_INV_ram~815_combout\ <= NOT \MemoriaRAM|ram~815_combout\;
\MemoriaRAM|ALT_INV_ram~813_combout\ <= NOT \MemoriaRAM|ram~813_combout\;
\MemoriaRAM|ALT_INV_ram~811_combout\ <= NOT \MemoriaRAM|ram~811_combout\;
\MemoriaRAM|ALT_INV_ram~809_combout\ <= NOT \MemoriaRAM|ram~809_combout\;
\MemoriaRAM|ALT_INV_ram~807_combout\ <= NOT \MemoriaRAM|ram~807_combout\;
\MemoriaRAM|ALT_INV_ram~805_combout\ <= NOT \MemoriaRAM|ram~805_combout\;
\MemoriaRAM|ALT_INV_ram~803_combout\ <= NOT \MemoriaRAM|ram~803_combout\;
\MemoriaRAM|ALT_INV_ram~801_combout\ <= NOT \MemoriaRAM|ram~801_combout\;
\MemoriaRAM|ALT_INV_ram~799_combout\ <= NOT \MemoriaRAM|ram~799_combout\;
\MemoriaRAM|ALT_INV_ram~797_combout\ <= NOT \MemoriaRAM|ram~797_combout\;
\MemoriaRAM|ALT_INV_ram~795_combout\ <= NOT \MemoriaRAM|ram~795_combout\;
\MemoriaRAM|ALT_INV_ram~793_combout\ <= NOT \MemoriaRAM|ram~793_combout\;
\MemoriaRAM|ALT_INV_ram~791_combout\ <= NOT \MemoriaRAM|ram~791_combout\;
\MemoriaRAM|ALT_INV_ram~789_combout\ <= NOT \MemoriaRAM|ram~789_combout\;
\MemoriaRAM|ALT_INV_ram~787_combout\ <= NOT \MemoriaRAM|ram~787_combout\;
\MemoriaRAM|ALT_INV_ram~785_combout\ <= NOT \MemoriaRAM|ram~785_combout\;
\MemoriaRAM|ALT_INV_ram~783_combout\ <= NOT \MemoriaRAM|ram~783_combout\;
\MemoriaRAM|ALT_INV_ram~781_combout\ <= NOT \MemoriaRAM|ram~781_combout\;
\MemoriaRAM|ALT_INV_ram~779_combout\ <= NOT \MemoriaRAM|ram~779_combout\;
\MemoriaRAM|ALT_INV_ram~777_combout\ <= NOT \MemoriaRAM|ram~777_combout\;
\MemoriaRAM|ALT_INV_ram~775_combout\ <= NOT \MemoriaRAM|ram~775_combout\;
\MemoriaRAM|ALT_INV_ram~773_combout\ <= NOT \MemoriaRAM|ram~773_combout\;
\MemoriaRAM|ALT_INV_ram~771_combout\ <= NOT \MemoriaRAM|ram~771_combout\;
\MemoriaRAM|ALT_INV_ram~769_combout\ <= NOT \MemoriaRAM|ram~769_combout\;
\MemoriaRAM|ALT_INV_ram~767_combout\ <= NOT \MemoriaRAM|ram~767_combout\;
\MemoriaRAM|ALT_INV_ram~765_combout\ <= NOT \MemoriaRAM|ram~765_combout\;
\MemoriaRAM|ALT_INV_ram~763_combout\ <= NOT \MemoriaRAM|ram~763_combout\;
\MemoriaRAM|ALT_INV_ram~761_combout\ <= NOT \MemoriaRAM|ram~761_combout\;
\MemoriaRAM|ALT_INV_ram~759_combout\ <= NOT \MemoriaRAM|ram~759_combout\;
\MemoriaRAM|ALT_INV_ram~757_combout\ <= NOT \MemoriaRAM|ram~757_combout\;
\MemoriaRAM|ALT_INV_ram~755_combout\ <= NOT \MemoriaRAM|ram~755_combout\;
\MemoriaRAM|ALT_INV_ram~753_combout\ <= NOT \MemoriaRAM|ram~753_combout\;
\MemoriaRAM|ALT_INV_ram~751_combout\ <= NOT \MemoriaRAM|ram~751_combout\;
\MemoriaRAM|ALT_INV_ram~749_combout\ <= NOT \MemoriaRAM|ram~749_combout\;
\MemoriaRAM|ALT_INV_ram~747_combout\ <= NOT \MemoriaRAM|ram~747_combout\;
\MemoriaRAM|ALT_INV_ram~745_combout\ <= NOT \MemoriaRAM|ram~745_combout\;
\MemoriaRAM|ALT_INV_ram~743_combout\ <= NOT \MemoriaRAM|ram~743_combout\;
\MemoriaRAM|ALT_INV_ram~741_combout\ <= NOT \MemoriaRAM|ram~741_combout\;
\MemoriaRAM|ALT_INV_ram~739_combout\ <= NOT \MemoriaRAM|ram~739_combout\;
\MemoriaRAM|ALT_INV_ram~737_combout\ <= NOT \MemoriaRAM|ram~737_combout\;
\MemoriaRAM|ALT_INV_ram~735_combout\ <= NOT \MemoriaRAM|ram~735_combout\;
\MemoriaRAM|ALT_INV_ram~733_combout\ <= NOT \MemoriaRAM|ram~733_combout\;
\MemoriaRAM|ALT_INV_ram~731_combout\ <= NOT \MemoriaRAM|ram~731_combout\;
\MemoriaRAM|ALT_INV_ram~729_combout\ <= NOT \MemoriaRAM|ram~729_combout\;
\MemoriaRAM|ALT_INV_ram~727_combout\ <= NOT \MemoriaRAM|ram~727_combout\;
\MemoriaRAM|ALT_INV_ram~725_combout\ <= NOT \MemoriaRAM|ram~725_combout\;
\MemoriaRAM|ALT_INV_ram~723_combout\ <= NOT \MemoriaRAM|ram~723_combout\;
\MemoriaRAM|ALT_INV_ram~721_combout\ <= NOT \MemoriaRAM|ram~721_combout\;
\MemoriaRAM|ALT_INV_ram~719_combout\ <= NOT \MemoriaRAM|ram~719_combout\;
\MemoriaRAM|ALT_INV_ram~717_combout\ <= NOT \MemoriaRAM|ram~717_combout\;
\MemoriaRAM|ALT_INV_ram~715_combout\ <= NOT \MemoriaRAM|ram~715_combout\;
\MemoriaRAM|ALT_INV_ram~713_combout\ <= NOT \MemoriaRAM|ram~713_combout\;
\MemoriaRAM|ALT_INV_ram~711_combout\ <= NOT \MemoriaRAM|ram~711_combout\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_FPGA_RESET_N~input_o\ <= NOT \FPGA_RESET_N~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;

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
	o => \PC_OUT[0]~output_o\);

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
	o => \PC_OUT[1]~output_o\);

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
	o => \PC_OUT[2]~output_o\);

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
	o => \PC_OUT[3]~output_o\);

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
	o => \PC_OUT[4]~output_o\);

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
	o => \PC_OUT[5]~output_o\);

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
	o => \PC_OUT[6]~output_o\);

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
	o => \PC_OUT[7]~output_o\);

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
	o => \PC_OUT[8]~output_o\);

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistradorLedR|DOUT\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistradorLedR|DOUT\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistradorLedR|DOUT\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistradorLedR|DOUT\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistradorLedR|DOUT\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistradorLedR|DOUT\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistradorLedR|DOUT\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \RegistradorLedR|DOUT\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlopLed8|DOUT~q\,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlopLed9|DOUT~q\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

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
	o => \HEX0[0]~output_o\);

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
	o => \HEX0[1]~output_o\);

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
	o => \HEX0[2]~output_o\);

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
	o => \HEX0[3]~output_o\);

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
	o => \HEX0[4]~output_o\);

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
	o => \HEX0[5]~output_o\);

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
	o => \HEX0[6]~output_o\);

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
	o => \HEX1[0]~output_o\);

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
	o => \HEX1[1]~output_o\);

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
	o => \HEX1[2]~output_o\);

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
	o => \HEX1[3]~output_o\);

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
	o => \HEX1[4]~output_o\);

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
	o => \HEX1[5]~output_o\);

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
	o => \HEX1[6]~output_o\);

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
	o => \HEX2[0]~output_o\);

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
	o => \HEX2[1]~output_o\);

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
	o => \HEX2[2]~output_o\);

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
	o => \HEX2[3]~output_o\);

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
	o => \HEX2[4]~output_o\);

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
	o => \HEX2[5]~output_o\);

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
	o => \HEX2[6]~output_o\);

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
	o => \HEX3[0]~output_o\);

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
	o => \HEX3[1]~output_o\);

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
	o => \HEX3[2]~output_o\);

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
	o => \HEX3[3]~output_o\);

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
	o => \HEX3[4]~output_o\);

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
	o => \HEX3[5]~output_o\);

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
	o => \HEX3[6]~output_o\);

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
	o => \HEX4[0]~output_o\);

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
	o => \HEX4[1]~output_o\);

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
	o => \HEX4[2]~output_o\);

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
	o => \HEX4[3]~output_o\);

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
	o => \HEX4[4]~output_o\);

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
	o => \HEX4[5]~output_o\);

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
	o => \HEX4[6]~output_o\);

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
	o => \HEX5[0]~output_o\);

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
	o => \HEX5[1]~output_o\);

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
	o => \HEX5[2]~output_o\);

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
	o => \HEX5[3]~output_o\);

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
	o => \HEX5[4]~output_o\);

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
	o => \HEX5[5]~output_o\);

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
	o => \HEX5[6]~output_o\);

\SAIDA_AND_HEX0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AndHEX0|saida~0_combout\,
	devoe => ww_devoe,
	o => \SAIDA_AND_HEX0~output_o\);

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
	o => \DIN_HEX[0]~output_o\);

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
	o => \DIN_HEX[1]~output_o\);

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
	o => \DIN_HEX[2]~output_o\);

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
	o => \DIN_HEX[3]~output_o\);

\SAIDA_AND_HEX1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AndHEX1|saida~0_combout\,
	devoe => ww_devoe,
	o => \SAIDA_AND_HEX1~output_o\);

\SAIDA_AND_HEX2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AndHEX2|saida~0_combout\,
	devoe => ww_devoe,
	o => \SAIDA_AND_HEX2~output_o\);

\SAIDA_AND_HEX3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AndHEX3|saida~0_combout\,
	devoe => ww_devoe,
	o => \SAIDA_AND_HEX3~output_o\);

\SAIDA_AND_HEX4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AndHEX4|saida~0_combout\,
	devoe => ww_devoe,
	o => \SAIDA_AND_HEX4~output_o\);

\SAIDA_AND_HEX5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AndHEX5|saida~combout\,
	devoe => ww_devoe,
	o => \SAIDA_AND_HEX5~output_o\);

\SAIDA_AND_LED8~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlopLed8|DOUT~q\,
	devoe => ww_devoe,
	o => \SAIDA_AND_LED8~output_o\);

\SAIDA_AND_LED9~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlopLed9|DOUT~q\,
	devoe => ww_devoe,
	o => \SAIDA_AND_LED9~output_o\);

\SAIDA_AND_SW0_7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AndSW0_7|saida~1_combout\,
	devoe => ww_devoe,
	o => \SAIDA_AND_SW0_7~output_o\);

\CONTROLES[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|decoder|Equal10~0_combout\,
	devoe => ww_devoe,
	o => \CONTROLES[0]~output_o\);

\CONTROLES[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|decoder|saida[1]~0_combout\,
	devoe => ww_devoe,
	o => \CONTROLES[1]~output_o\);

\CONTROLES[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|ULA1|ALT_INV_WideOr0~combout\,
	devoe => ww_devoe,
	o => \CONTROLES[2]~output_o\);

\CONTROLES[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|decoder|Equal10~2_combout\,
	devoe => ww_devoe,
	o => \CONTROLES[3]~output_o\);

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
	o => \ACUMULADOR[0]~output_o\);

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
	o => \ACUMULADOR[1]~output_o\);

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
	o => \ACUMULADOR[2]~output_o\);

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
	o => \ACUMULADOR[3]~output_o\);

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
	o => \ACUMULADOR[4]~output_o\);

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
	o => \ACUMULADOR[5]~output_o\);

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
	o => \ACUMULADOR[6]~output_o\);

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
	o => \ACUMULADOR[7]~output_o\);

\INSTRUCAO[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~21_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[0]~output_o\);

\INSTRUCAO[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~28_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[1]~output_o\);

\INSTRUCAO[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~1_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[2]~output_o\);

\INSTRUCAO[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~34_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[3]~output_o\);

\INSTRUCAO[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~36_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[4]~output_o\);

\INSTRUCAO[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~24_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[5]~output_o\);

\INSTRUCAO[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~16_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[6]~output_o\);

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
	o => \INSTRUCAO[7]~output_o\);

\INSTRUCAO[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~19_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[8]~output_o\);

\INSTRUCAO[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~10_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[9]~output_o\);

\INSTRUCAO[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~14_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[10]~output_o\);

\INSTRUCAO[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~4_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[11]~output_o\);

\INSTRUCAO[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~25_combout\,
	devoe => ww_devoe,
	o => \INSTRUCAO[12]~output_o\);

\ED_KEY0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DebouceMem_key0|saida~combout\,
	devoe => ww_devoe,
	o => \ED_KEY0~output_o\);

\ED_KEY1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DebouceMem_key1|saida~combout\,
	devoe => ww_devoe,
	o => \ED_KEY1~output_o\);

\DB_MEM_KEY0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DB_MEM_KEY0~output_o\);

\DB_MEM_KEY1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DB_MEM_KEY1~output_o\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\divisor|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|Add0~1_sumout\ = SUM(( \divisor|contador\(0) ) + ( VCC ) + ( !VCC ))
-- \divisor|Add0~2\ = CARRY(( \divisor|contador\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divisor|ALT_INV_contador\(0),
	cin => GND,
	sumout => \divisor|Add0~1_sumout\,
	cout => \divisor|Add0~2\);

\divisor|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|Add0~37_sumout\ = SUM(( \divisor|contador\(1) ) + ( GND ) + ( \divisor|Add0~2\ ))
-- \divisor|Add0~38\ = CARRY(( \divisor|contador\(1) ) + ( GND ) + ( \divisor|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divisor|ALT_INV_contador\(1),
	cin => \divisor|Add0~2\,
	sumout => \divisor|Add0~37_sumout\,
	cout => \divisor|Add0~38\);

\divisor|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \divisor|Add0~37_sumout\,
	sclr => \divisor|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(1));

\divisor|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|Add0~25_sumout\ = SUM(( \divisor|contador\(2) ) + ( GND ) + ( \divisor|Add0~38\ ))
-- \divisor|Add0~26\ = CARRY(( \divisor|contador\(2) ) + ( GND ) + ( \divisor|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divisor|ALT_INV_contador\(2),
	cin => \divisor|Add0~38\,
	sumout => \divisor|Add0~25_sumout\,
	cout => \divisor|Add0~26\);

\divisor|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \divisor|Add0~25_sumout\,
	sclr => \divisor|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(2));

\divisor|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|Add0~41_sumout\ = SUM(( \divisor|contador\(3) ) + ( GND ) + ( \divisor|Add0~26\ ))
-- \divisor|Add0~42\ = CARRY(( \divisor|contador\(3) ) + ( GND ) + ( \divisor|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divisor|ALT_INV_contador\(3),
	cin => \divisor|Add0~26\,
	sumout => \divisor|Add0~41_sumout\,
	cout => \divisor|Add0~42\);

\divisor|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \divisor|Add0~41_sumout\,
	sclr => \divisor|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(3));

\divisor|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|Add0~45_sumout\ = SUM(( \divisor|contador\(4) ) + ( GND ) + ( \divisor|Add0~42\ ))
-- \divisor|Add0~46\ = CARRY(( \divisor|contador\(4) ) + ( GND ) + ( \divisor|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divisor|ALT_INV_contador\(4),
	cin => \divisor|Add0~42\,
	sumout => \divisor|Add0~45_sumout\,
	cout => \divisor|Add0~46\);

\divisor|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \divisor|Add0~45_sumout\,
	sclr => \divisor|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(4));

\divisor|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|Add0~49_sumout\ = SUM(( \divisor|contador\(5) ) + ( GND ) + ( \divisor|Add0~46\ ))
-- \divisor|Add0~50\ = CARRY(( \divisor|contador\(5) ) + ( GND ) + ( \divisor|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divisor|ALT_INV_contador\(5),
	cin => \divisor|Add0~46\,
	sumout => \divisor|Add0~49_sumout\,
	cout => \divisor|Add0~50\);

\divisor|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \divisor|Add0~49_sumout\,
	sclr => \divisor|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(5));

\divisor|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|Add0~53_sumout\ = SUM(( \divisor|contador\(6) ) + ( GND ) + ( \divisor|Add0~50\ ))
-- \divisor|Add0~54\ = CARRY(( \divisor|contador\(6) ) + ( GND ) + ( \divisor|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divisor|ALT_INV_contador\(6),
	cin => \divisor|Add0~50\,
	sumout => \divisor|Add0~53_sumout\,
	cout => \divisor|Add0~54\);

\divisor|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \divisor|Add0~53_sumout\,
	sclr => \divisor|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(6));

\divisor|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|Add0~57_sumout\ = SUM(( \divisor|contador\(7) ) + ( GND ) + ( \divisor|Add0~54\ ))
-- \divisor|Add0~58\ = CARRY(( \divisor|contador\(7) ) + ( GND ) + ( \divisor|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divisor|ALT_INV_contador\(7),
	cin => \divisor|Add0~54\,
	sumout => \divisor|Add0~57_sumout\,
	cout => \divisor|Add0~58\);

\divisor|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \divisor|Add0~57_sumout\,
	sclr => \divisor|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(7));

\divisor|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|Add0~5_sumout\ = SUM(( \divisor|contador\(8) ) + ( GND ) + ( \divisor|Add0~58\ ))
-- \divisor|Add0~6\ = CARRY(( \divisor|contador\(8) ) + ( GND ) + ( \divisor|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divisor|ALT_INV_contador\(8),
	cin => \divisor|Add0~58\,
	sumout => \divisor|Add0~5_sumout\,
	cout => \divisor|Add0~6\);

\divisor|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \divisor|Add0~5_sumout\,
	sclr => \divisor|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(8));

\divisor|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|Add0~9_sumout\ = SUM(( \divisor|contador\(9) ) + ( GND ) + ( \divisor|Add0~6\ ))
-- \divisor|Add0~10\ = CARRY(( \divisor|contador\(9) ) + ( GND ) + ( \divisor|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divisor|ALT_INV_contador\(9),
	cin => \divisor|Add0~6\,
	sumout => \divisor|Add0~9_sumout\,
	cout => \divisor|Add0~10\);

\divisor|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \divisor|Add0~9_sumout\,
	sclr => \divisor|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(9));

\divisor|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|Add0~61_sumout\ = SUM(( \divisor|contador\(10) ) + ( GND ) + ( \divisor|Add0~10\ ))
-- \divisor|Add0~62\ = CARRY(( \divisor|contador\(10) ) + ( GND ) + ( \divisor|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divisor|ALT_INV_contador\(10),
	cin => \divisor|Add0~10\,
	sumout => \divisor|Add0~61_sumout\,
	cout => \divisor|Add0~62\);

\divisor|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \divisor|Add0~61_sumout\,
	sclr => \divisor|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(10));

\divisor|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|Add0~13_sumout\ = SUM(( \divisor|contador\(11) ) + ( GND ) + ( \divisor|Add0~62\ ))
-- \divisor|Add0~14\ = CARRY(( \divisor|contador\(11) ) + ( GND ) + ( \divisor|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divisor|ALT_INV_contador\(11),
	cin => \divisor|Add0~62\,
	sumout => \divisor|Add0~13_sumout\,
	cout => \divisor|Add0~14\);

\divisor|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \divisor|Add0~13_sumout\,
	sclr => \divisor|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(11));

\divisor|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|Add0~17_sumout\ = SUM(( \divisor|contador\(12) ) + ( GND ) + ( \divisor|Add0~14\ ))
-- \divisor|Add0~18\ = CARRY(( \divisor|contador\(12) ) + ( GND ) + ( \divisor|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divisor|ALT_INV_contador\(12),
	cin => \divisor|Add0~14\,
	sumout => \divisor|Add0~17_sumout\,
	cout => \divisor|Add0~18\);

\divisor|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \divisor|Add0~17_sumout\,
	sclr => \divisor|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(12));

\divisor|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|Add0~21_sumout\ = SUM(( \divisor|contador\(13) ) + ( GND ) + ( \divisor|Add0~18\ ))
-- \divisor|Add0~22\ = CARRY(( \divisor|contador\(13) ) + ( GND ) + ( \divisor|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divisor|ALT_INV_contador\(13),
	cin => \divisor|Add0~18\,
	sumout => \divisor|Add0~21_sumout\,
	cout => \divisor|Add0~22\);

\divisor|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \divisor|Add0~21_sumout\,
	sclr => \divisor|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(13));

\divisor|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|Equal0~0_combout\ = (\divisor|contador\(9) & (!\divisor|contador\(11) & (!\divisor|contador\(12) & !\divisor|contador\(13))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|ALT_INV_contador\(9),
	datab => \divisor|ALT_INV_contador\(11),
	datac => \divisor|ALT_INV_contador\(12),
	datad => \divisor|ALT_INV_contador\(13),
	combout => \divisor|Equal0~0_combout\);

\divisor|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|Add0~33_sumout\ = SUM(( \divisor|contador\(14) ) + ( GND ) + ( \divisor|Add0~22\ ))
-- \divisor|Add0~34\ = CARRY(( \divisor|contador\(14) ) + ( GND ) + ( \divisor|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divisor|ALT_INV_contador\(14),
	cin => \divisor|Add0~22\,
	sumout => \divisor|Add0~33_sumout\,
	cout => \divisor|Add0~34\);

\divisor|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \divisor|Add0~33_sumout\,
	sclr => \divisor|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(14));

\divisor|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|Add0~29_sumout\ = SUM(( \divisor|contador\(15) ) + ( GND ) + ( \divisor|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \divisor|ALT_INV_contador\(15),
	cin => \divisor|Add0~34\,
	sumout => \divisor|Add0~29_sumout\);

\divisor|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \divisor|Add0~29_sumout\,
	sclr => \divisor|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(15));

\divisor|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|Equal0~1_combout\ = ( !\divisor|contador\(3) & ( (!\divisor|contador\(2) & (\divisor|contador\(15) & (\divisor|contador\(14) & !\divisor|contador\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|ALT_INV_contador\(2),
	datab => \divisor|ALT_INV_contador\(15),
	datac => \divisor|ALT_INV_contador\(14),
	datad => \divisor|ALT_INV_contador\(1),
	datae => \divisor|ALT_INV_contador\(3),
	combout => \divisor|Equal0~1_combout\);

\divisor|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|Equal0~2_combout\ = ( !\divisor|contador\(10) & ( (\divisor|contador\(4) & (!\divisor|contador\(5) & (\divisor|contador\(6) & !\divisor|contador\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|ALT_INV_contador\(4),
	datab => \divisor|ALT_INV_contador\(5),
	datac => \divisor|ALT_INV_contador\(6),
	datad => \divisor|ALT_INV_contador\(7),
	datae => \divisor|ALT_INV_contador\(10),
	combout => \divisor|Equal0~2_combout\);

\divisor|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|Equal0~3_combout\ = ( \divisor|Equal0~2_combout\ & ( (!\divisor|contador\(0) & (\divisor|contador\(8) & (\divisor|Equal0~0_combout\ & \divisor|Equal0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|ALT_INV_contador\(0),
	datab => \divisor|ALT_INV_contador\(8),
	datac => \divisor|ALT_INV_Equal0~0_combout\,
	datad => \divisor|ALT_INV_Equal0~1_combout\,
	datae => \divisor|ALT_INV_Equal0~2_combout\,
	combout => \divisor|Equal0~3_combout\);

\divisor|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \divisor|Add0~1_sumout\,
	sclr => \divisor|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|contador\(0));

\divisor|tick~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \divisor|tick~0_combout\ = ( \divisor|Equal0~1_combout\ & ( \divisor|Equal0~2_combout\ & ( !\divisor|tick~q\ $ ((((!\divisor|contador\(8)) # (!\divisor|Equal0~0_combout\)) # (\divisor|contador\(0)))) ) ) ) # ( !\divisor|Equal0~1_combout\ & ( 
-- \divisor|Equal0~2_combout\ & ( \divisor|tick~q\ ) ) ) # ( \divisor|Equal0~1_combout\ & ( !\divisor|Equal0~2_combout\ & ( \divisor|tick~q\ ) ) ) # ( !\divisor|Equal0~1_combout\ & ( !\divisor|Equal0~2_combout\ & ( \divisor|tick~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \divisor|ALT_INV_tick~q\,
	datab => \divisor|ALT_INV_contador\(0),
	datac => \divisor|ALT_INV_contador\(8),
	datad => \divisor|ALT_INV_Equal0~0_combout\,
	datae => \divisor|ALT_INV_Equal0~1_combout\,
	dataf => \divisor|ALT_INV_Equal0~2_combout\,
	combout => \divisor|tick~0_combout\);

\divisor|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \divisor|tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \divisor|tick~q\);

\ROM_instrucao|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~29_combout\ = (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(6) & !\Processador|PC|DOUT\(7)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|PC|ALT_INV_DOUT\(6),
	datac => \Processador|PC|ALT_INV_DOUT\(7),
	combout => \ROM_instrucao|memROM~29_combout\);

\ROM_instrucao|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~30_combout\ = (!\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(3)))) # (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(5) & ((\Processador|PC|DOUT\(3)) # 
-- (\Processador|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010001000100001001000100010000100100010001000010010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~30_combout\);

\ROM_instrucao|memROM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~31_combout\ = (\Processador|PC|DOUT\(3) & ((!\Processador|PC|DOUT\(5) & (\Processador|PC|DOUT\(0) & \Processador|PC|DOUT\(2))) # (\Processador|PC|DOUT\(5) & ((!\Processador|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110100000000000011010000000000001101000000000000110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~31_combout\);

\ROM_instrucao|memROM~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~32_combout\ = (!\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000000000000010000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~32_combout\);

\ROM_instrucao|memROM~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~33_combout\ = ( \ROM_instrucao|memROM~32_combout\ & ( (\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(6) & !\Processador|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(4),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \Processador|PC|ALT_INV_DOUT\(6),
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	datae => \ROM_instrucao|ALT_INV_memROM~32_combout\,
	combout => \ROM_instrucao|memROM~33_combout\);

\ROM_instrucao|memROM~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~34_combout\ = ( \ROM_instrucao|memROM~31_combout\ & ( \ROM_instrucao|memROM~33_combout\ & ( !\Processador|PC|DOUT\(8) ) ) ) # ( !\ROM_instrucao|memROM~31_combout\ & ( \ROM_instrucao|memROM~33_combout\ & ( !\Processador|PC|DOUT\(8) ) 
-- ) ) # ( \ROM_instrucao|memROM~31_combout\ & ( !\ROM_instrucao|memROM~33_combout\ & ( (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~29_combout\ & ((!\Processador|PC|DOUT\(4)) # (\ROM_instrucao|memROM~30_combout\)))) ) ) ) # ( 
-- !\ROM_instrucao|memROM~31_combout\ & ( !\ROM_instrucao|memROM~33_combout\ & ( (\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~29_combout\ & \ROM_instrucao|memROM~30_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000010000000110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(4),
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~29_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~30_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~31_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~33_combout\,
	combout => \ROM_instrucao|memROM~34_combout\);

\ROM_instrucao|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~11_combout\ = (!\Processador|PC|DOUT\(4) & ((!\Processador|PC|DOUT\(2) & ((!\Processador|PC|DOUT\(3)))) # (\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(1) & \Processador|PC|DOUT\(3))))) # (\Processador|PC|DOUT\(4) & 
-- ((!\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(2))) # (\Processador|PC|DOUT\(1) & ((\Processador|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010000011101101001000001110110100100000111011010010000011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(4),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~11_combout\);

\ROM_instrucao|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~12_combout\ = ( \Processador|PC|DOUT\(4) & ( !\Processador|PC|DOUT\(5) & ( (\Processador|PC|DOUT\(3) & ((!\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(1) & \Processador|PC|DOUT\(2))) # (\Processador|PC|DOUT\(0) & 
-- (!\Processador|PC|DOUT\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100011000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	datae => \Processador|PC|ALT_INV_DOUT\(4),
	dataf => \Processador|PC|ALT_INV_DOUT\(5),
	combout => \ROM_instrucao|memROM~12_combout\);

\ROM_instrucao|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~13_combout\ = (\Processador|PC|DOUT\(0) & \Processador|PC|DOUT\(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	combout => \ROM_instrucao|memROM~13_combout\);

\ROM_instrucao|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~14_combout\ = ( \ROM_instrucao|memROM~12_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & !\Processador|PC|DOUT\(8))) ) ) ) # ( !\ROM_instrucao|memROM~12_combout\ & ( 
-- \ROM_instrucao|memROM~13_combout\ & ( (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & (!\Processador|PC|DOUT\(8) & !\ROM_instrucao|memROM~11_combout\))) ) ) ) # ( \ROM_instrucao|memROM~12_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( 
-- (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & !\Processador|PC|DOUT\(8))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000001000000010000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(6),
	datab => \Processador|PC|ALT_INV_DOUT\(7),
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \ROM_instrucao|memROM~14_combout\);

\ROM_instrucao|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~9_combout\ = ( \Processador|PC|DOUT\(4) & ( \Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(0) $ ((\Processador|PC|DOUT\(1))))) # (\Processador|PC|DOUT\(3) & (((\Processador|PC|DOUT\(2)) # 
-- (\Processador|PC|DOUT\(1))) # (\Processador|PC|DOUT\(0)))) ) ) ) # ( !\Processador|PC|DOUT\(4) & ( \Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(3) & (\Processador|PC|DOUT\(0) & ((\Processador|PC|DOUT\(2))))) # (\Processador|PC|DOUT\(3) & 
-- (!\Processador|PC|DOUT\(0) $ ((\Processador|PC|DOUT\(1))))) ) ) ) # ( \Processador|PC|DOUT\(4) & ( !\Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(3) & ((!\Processador|PC|DOUT\(1)) # (\Processador|PC|DOUT\(2))))) # 
-- (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(3) & ((!\Processador|PC|DOUT\(1)) # (!\Processador|PC|DOUT\(2))))) ) ) ) # ( !\Processador|PC|DOUT\(4) & ( !\Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(1) & ((!\Processador|PC|DOUT\(0) & 
-- (!\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(3))) # (\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000100010101001000101000000101100110011001100101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	datae => \Processador|PC|ALT_INV_DOUT\(4),
	dataf => \Processador|PC|ALT_INV_DOUT\(5),
	combout => \ROM_instrucao|memROM~9_combout\);

\ROM_instrucao|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~10_combout\ = (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & (!\Processador|PC|DOUT\(8) & !\ROM_instrucao|memROM~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(6),
	datab => \Processador|PC|ALT_INV_DOUT\(7),
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \ROM_instrucao|memROM~10_combout\);

\ROM_instrucao|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~2_combout\ = (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & !\Processador|PC|DOUT\(8)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(6),
	datab => \Processador|PC|ALT_INV_DOUT\(7),
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	combout => \ROM_instrucao|memROM~2_combout\);

\ROM_instrucao|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~5_combout\ = (\Processador|PC|DOUT\(5) & (\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(0) $ (\Processador|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001001000000000000100100000000000010010000000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(5),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~5_combout\);

\ROM_instrucao|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~6_combout\ = (!\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(5) & ((\Processador|PC|DOUT\(3)))) # (\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(1) & !\Processador|PC|DOUT\(3))))) # (\Processador|PC|DOUT\(0) & 
-- (\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(1) $ (!\Processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100110100100000010011010010000001001101001000000100110100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(5),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~6_combout\);

\ROM_instrucao|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~7_combout\ = ( \Processador|PC|DOUT\(4) & ( !\Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	datae => \Processador|PC|ALT_INV_DOUT\(4),
	dataf => \Processador|PC|ALT_INV_DOUT\(5),
	combout => \ROM_instrucao|memROM~7_combout\);

\ROM_instrucao|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~25_combout\ = ( \ROM_instrucao|memROM~6_combout\ & ( \ROM_instrucao|memROM~7_combout\ & ( \ROM_instrucao|memROM~2_combout\ ) ) ) # ( !\ROM_instrucao|memROM~6_combout\ & ( \ROM_instrucao|memROM~7_combout\ & ( 
-- \ROM_instrucao|memROM~2_combout\ ) ) ) # ( \ROM_instrucao|memROM~6_combout\ & ( !\ROM_instrucao|memROM~7_combout\ & ( (!\Processador|PC|DOUT\(2) & (\ROM_instrucao|memROM~2_combout\ & ((\ROM_instrucao|memROM~5_combout\) # (\Processador|PC|DOUT\(4))))) ) ) 
-- ) # ( !\ROM_instrucao|memROM~6_combout\ & ( !\ROM_instrucao|memROM~7_combout\ & ( (!\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(4) & (\ROM_instrucao|memROM~2_combout\ & \ROM_instrucao|memROM~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000100000101000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	combout => \ROM_instrucao|memROM~25_combout\);

\Processador|decoder|Equal14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal14~0_combout\ = (\ROM_instrucao|memROM~14_combout\ & (!\ROM_instrucao|memROM~10_combout\ & (\ROM_instrucao|memROM~25_combout\ & !\ROM_instrucao|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~25_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \Processador|decoder|Equal14~0_combout\);

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

\ROM_instrucao|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~8_combout\ = ( !\ROM_instrucao|memROM~7_combout\ & ( ((!\Processador|PC|DOUT\(4) & (!\ROM_instrucao|memROM~5_combout\)) # (\Processador|PC|DOUT\(4) & ((!\ROM_instrucao|memROM~6_combout\)))) # (\Processador|PC|DOUT\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111011111010101000000000000000011110111110101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	combout => \ROM_instrucao|memROM~8_combout\);

\Processador|decoder|Equal10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~5_combout\ = ( !\ROM_instrucao|memROM~14_combout\ & ( (\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~8_combout\ & \ROM_instrucao|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	combout => \Processador|decoder|Equal10~5_combout\);

\Processador|reg_endretorno|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|incrementaPC|Add0~13_sumout\,
	ena => \Processador|decoder|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|reg_endretorno|DOUT\(3));

\Processador|MUX4x1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[3]~3_combout\ = ( \Processador|incrementaPC|Add0~13_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & (((!\Processador|decoder|Equal14~0_combout\) # (\Processador|reg_endretorno|DOUT\(3))))) # 
-- (\Processador|decoder|saidaMux~0_combout\ & (\ROM_instrucao|memROM~34_combout\)) ) ) # ( !\Processador|incrementaPC|Add0~13_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & (((\Processador|decoder|Equal14~0_combout\ & 
-- \Processador|reg_endretorno|DOUT\(3))))) # (\Processador|decoder|saidaMux~0_combout\ & (\ROM_instrucao|memROM~34_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datab => \Processador|decoder|ALT_INV_saidaMux~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	datad => \Processador|reg_endretorno|ALT_INV_DOUT\(3),
	datae => \Processador|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[3]~3_combout\);

\Processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|MUX4x1|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(3));

\ROM_instrucao|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~0_combout\ = ( \Processador|PC|DOUT\(4) & ( \Processador|PC|DOUT\(5) & ( (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(1) $ (\Processador|PC|DOUT\(2))))) ) ) ) # ( !\Processador|PC|DOUT\(4) & ( 
-- \Processador|PC|DOUT\(5) & ( (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) $ (((!\Processador|PC|DOUT\(3)) # (\Processador|PC|DOUT\(1)))))) ) ) ) # ( \Processador|PC|DOUT\(4) & ( !\Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(0) & 
-- ((!\Processador|PC|DOUT\(1)) # ((!\Processador|PC|DOUT\(2))))) # (\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(1) $ (!\Processador|PC|DOUT\(2))))) ) ) ) # ( !\Processador|PC|DOUT\(4) & ( !\Processador|PC|DOUT\(5) & ( 
-- (\Processador|PC|DOUT\(2) & ((!\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(1) & !\Processador|PC|DOUT\(3))) # (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) $ (\Processador|PC|DOUT\(3)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000001101010001011110000000101010000010100000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	datae => \Processador|PC|ALT_INV_DOUT\(4),
	dataf => \Processador|PC|ALT_INV_DOUT\(5),
	combout => \ROM_instrucao|memROM~0_combout\);

\ROM_instrucao|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~1_combout\ = (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & (!\Processador|PC|DOUT\(8) & \ROM_instrucao|memROM~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(6),
	datab => \Processador|PC|ALT_INV_DOUT\(7),
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	combout => \ROM_instrucao|memROM~1_combout\);

\Processador|reg_endretorno|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|incrementaPC|Add0~9_sumout\,
	ena => \Processador|decoder|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|reg_endretorno|DOUT\(2));

\Processador|MUX4x1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[2]~2_combout\ = ( \Processador|incrementaPC|Add0~9_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & (((!\Processador|decoder|Equal14~0_combout\) # (\Processador|reg_endretorno|DOUT\(2))))) # 
-- (\Processador|decoder|saidaMux~0_combout\ & (\ROM_instrucao|memROM~1_combout\)) ) ) # ( !\Processador|incrementaPC|Add0~9_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & (((\Processador|decoder|Equal14~0_combout\ & 
-- \Processador|reg_endretorno|DOUT\(2))))) # (\Processador|decoder|saidaMux~0_combout\ & (\ROM_instrucao|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \Processador|decoder|ALT_INV_saidaMux~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	datad => \Processador|reg_endretorno|ALT_INV_DOUT\(2),
	datae => \Processador|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[2]~2_combout\);

\Processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|MUX4x1|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(2));

\ROM_instrucao|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~22_combout\ = ( \Processador|PC|DOUT\(4) & ( \Processador|PC|DOUT\(5) & ( (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(3)))) ) ) ) # ( !\Processador|PC|DOUT\(4) & ( 
-- \Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(3) & ((!\Processador|PC|DOUT\(1)) # (!\Processador|PC|DOUT\(2))))) # (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) & 
-- \Processador|PC|DOUT\(3)))) ) ) ) # ( \Processador|PC|DOUT\(4) & ( !\Processador|PC|DOUT\(5) & ( (\Processador|PC|DOUT\(1) & ((!\Processador|PC|DOUT\(2) & ((\Processador|PC|DOUT\(3)))) # (\Processador|PC|DOUT\(2) & (\Processador|PC|DOUT\(0) & 
-- !\Processador|PC|DOUT\(3))))) ) ) ) # ( !\Processador|PC|DOUT\(4) & ( !\Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(3) & ((!\Processador|PC|DOUT\(0) & ((\Processador|PC|DOUT\(2)) # (\Processador|PC|DOUT\(1)))) # (\Processador|PC|DOUT\(0) & 
-- ((!\Processador|PC|DOUT\(1)) # (!\Processador|PC|DOUT\(2)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111000000000000000010011000010101000010000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	datae => \Processador|PC|ALT_INV_DOUT\(4),
	dataf => \Processador|PC|ALT_INV_DOUT\(5),
	combout => \ROM_instrucao|memROM~22_combout\);

\ROM_instrucao|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~24_combout\ = (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & (!\Processador|PC|DOUT\(8) & \ROM_instrucao|memROM~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(6),
	datab => \Processador|PC|ALT_INV_DOUT\(7),
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM_instrucao|ALT_INV_memROM~22_combout\,
	combout => \ROM_instrucao|memROM~24_combout\);

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

\Processador|reg_endretorno|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|incrementaPC|Add0~21_sumout\,
	ena => \Processador|decoder|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|reg_endretorno|DOUT\(5));

\Processador|MUX4x1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[5]~5_combout\ = ( \Processador|incrementaPC|Add0~21_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & (((!\Processador|decoder|Equal14~0_combout\) # (\Processador|reg_endretorno|DOUT\(5))))) # 
-- (\Processador|decoder|saidaMux~0_combout\ & (\ROM_instrucao|memROM~24_combout\)) ) ) # ( !\Processador|incrementaPC|Add0~21_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & (((\Processador|decoder|Equal14~0_combout\ & 
-- \Processador|reg_endretorno|DOUT\(5))))) # (\Processador|decoder|saidaMux~0_combout\ & (\ROM_instrucao|memROM~24_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	datab => \Processador|decoder|ALT_INV_saidaMux~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	datad => \Processador|reg_endretorno|ALT_INV_DOUT\(5),
	datae => \Processador|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[5]~5_combout\);

\Processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|MUX4x1|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(5));

\ROM_instrucao|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~15_combout\ = (\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) $ (!\Processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100010000000000010001000000000001000100000000000100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~15_combout\);

\ROM_instrucao|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~17_combout\ = (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(3) & ((!\Processador|PC|DOUT\(1)) # (!\Processador|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000000101010000000000010101000000000001010100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~17_combout\);

\ROM_instrucao|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~18_combout\ = (!\Processador|PC|DOUT\(1) & ((!\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(0) & !\Processador|PC|DOUT\(3))) # (\Processador|PC|DOUT\(2) & ((\Processador|PC|DOUT\(3)))))) # (\Processador|PC|DOUT\(1) & 
-- (((\Processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000111111100000000011111110000000001111111000000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~18_combout\);

\ROM_instrucao|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~19_combout\ = ( \ROM_instrucao|memROM~17_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( (\ROM_instrucao|memROM~2_combout\ & ((!\Processador|PC|DOUT\(4) & (\Processador|PC|DOUT\(5))) # (\Processador|PC|DOUT\(4) & 
-- (!\Processador|PC|DOUT\(5) & \ROM_instrucao|memROM~15_combout\)))) ) ) ) # ( !\ROM_instrucao|memROM~17_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( (\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(5) & (\ROM_instrucao|memROM~2_combout\ & 
-- \ROM_instrucao|memROM~15_combout\))) ) ) ) # ( \ROM_instrucao|memROM~17_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (\ROM_instrucao|memROM~2_combout\ & ((!\Processador|PC|DOUT\(4)) # ((!\Processador|PC|DOUT\(5) & 
-- \ROM_instrucao|memROM~15_combout\)))) ) ) ) # ( !\ROM_instrucao|memROM~17_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (!\Processador|PC|DOUT\(5) & (\ROM_instrucao|memROM~2_combout\ & ((!\Processador|PC|DOUT\(4)) # 
-- (\ROM_instrucao|memROM~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001100000010100000111000000000000001000000001000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(4),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \ROM_instrucao|memROM~19_combout\);

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

\Processador|reg_endretorno|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|incrementaPC|Add0~33_sumout\,
	ena => \Processador|decoder|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|reg_endretorno|DOUT\(8));

\Processador|MUX4x1|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[8]~8_combout\ = ( \Processador|incrementaPC|Add0~33_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & (((!\Processador|decoder|Equal14~0_combout\) # (\Processador|reg_endretorno|DOUT\(8))))) # 
-- (\Processador|decoder|saidaMux~0_combout\ & (\ROM_instrucao|memROM~19_combout\)) ) ) # ( !\Processador|incrementaPC|Add0~33_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & (((\Processador|decoder|Equal14~0_combout\ & 
-- \Processador|reg_endretorno|DOUT\(8))))) # (\Processador|decoder|saidaMux~0_combout\ & (\ROM_instrucao|memROM~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datab => \Processador|decoder|ALT_INV_saidaMux~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	datad => \Processador|reg_endretorno|ALT_INV_DOUT\(8),
	datae => \Processador|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[8]~8_combout\);

\Processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|MUX4x1|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(8));

\ROM_instrucao|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~3_combout\ = ( \Processador|PC|DOUT\(4) & ( \Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(3) $ (((\Processador|PC|DOUT\(2)) # (\Processador|PC|DOUT\(0)))))) # (\Processador|PC|DOUT\(1) & 
-- (((\Processador|PC|DOUT\(3)) # (\Processador|PC|DOUT\(2))) # (\Processador|PC|DOUT\(0)))) ) ) ) # ( !\Processador|PC|DOUT\(4) & ( \Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(0) $ (((!\Processador|PC|DOUT\(3)) # 
-- (\Processador|PC|DOUT\(1)))))) # (\Processador|PC|DOUT\(2) & (((\Processador|PC|DOUT\(1))))) ) ) ) # ( \Processador|PC|DOUT\(4) & ( !\Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(0) & ((\Processador|PC|DOUT\(3))))) # 
-- (\Processador|PC|DOUT\(1) & ((!\Processador|PC|DOUT\(2) & ((\Processador|PC|DOUT\(3)))) # (\Processador|PC|DOUT\(2) & (\Processador|PC|DOUT\(0))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000011011100101010011100100111001001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	datae => \Processador|PC|ALT_INV_DOUT\(4),
	dataf => \Processador|PC|ALT_INV_DOUT\(5),
	combout => \ROM_instrucao|memROM~3_combout\);

\ROM_instrucao|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~4_combout\ = (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & (!\Processador|PC|DOUT\(8) & !\ROM_instrucao|memROM~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(6),
	datab => \Processador|PC|ALT_INV_DOUT\(7),
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	combout => \ROM_instrucao|memROM~4_combout\);

\Processador|decoder|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~2_combout\ = ( !\ROM_instrucao|memROM~14_combout\ & ( (\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~8_combout\ & !\ROM_instrucao|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	combout => \Processador|decoder|Equal10~2_combout\);

\Processador|decoder|Equal10~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~3_combout\ = (\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~25_combout\ & (!\ROM_instrucao|memROM~10_combout\ & !\ROM_instrucao|memROM~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~25_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	combout => \Processador|decoder|Equal10~3_combout\);

\ROM_instrucao|memROM~40\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~40_combout\ = (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & \ROM_instrucao|memROM~22_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(6),
	datab => \Processador|PC|ALT_INV_DOUT\(7),
	datac => \ROM_instrucao|ALT_INV_memROM~22_combout\,
	combout => \ROM_instrucao|memROM~40_combout\);

\ROM_instrucao|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~26_combout\ = ( \ROM_instrucao|memROM~15_combout\ & ( (\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(6) & !\Processador|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(4),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \Processador|PC|ALT_INV_DOUT\(6),
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	datae => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	combout => \ROM_instrucao|memROM~26_combout\);

\Processador|decoder|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~1_combout\ = ( \ROM_instrucao|memROM~12_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( \ROM_instrucao|memROM~2_combout\ ) ) ) # ( !\ROM_instrucao|memROM~12_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( 
-- (\ROM_instrucao|memROM~2_combout\ & ((!\ROM_instrucao|memROM~3_combout\) # ((!\ROM_instrucao|memROM~9_combout\) # (!\ROM_instrucao|memROM~11_combout\)))) ) ) ) # ( \ROM_instrucao|memROM~12_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( 
-- \ROM_instrucao|memROM~2_combout\ ) ) ) # ( !\ROM_instrucao|memROM~12_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (\ROM_instrucao|memROM~2_combout\ & ((!\ROM_instrucao|memROM~3_combout\) # (!\ROM_instrucao|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110010001100110011001100110011001100100011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \Processador|decoder|Equal10~1_combout\);

\ROM_instrucao|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~27_combout\ = (!\Processador|PC|DOUT\(6) & !\Processador|PC|DOUT\(7))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(6),
	datab => \Processador|PC|ALT_INV_DOUT\(7),
	combout => \ROM_instrucao|memROM~27_combout\);

\ROM_instrucao|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~20_combout\ = ( \Processador|PC|DOUT\(4) & ( \Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(3) & ((!\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(1) & !\Processador|PC|DOUT\(2))) # (\Processador|PC|DOUT\(0) & 
-- ((\Processador|PC|DOUT\(2)))))) ) ) ) # ( !\Processador|PC|DOUT\(4) & ( \Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(3))))) # (\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) $ 
-- (((\Processador|PC|DOUT\(3)) # (\Processador|PC|DOUT\(0)))))) ) ) ) # ( \Processador|PC|DOUT\(4) & ( !\Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(0) $ (((\Processador|PC|DOUT\(3)))))) # (\Processador|PC|DOUT\(1) & 
-- (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(3)))) ) ) ) # ( !\Processador|PC|DOUT\(4) & ( !\Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(0) & ((\Processador|PC|DOUT\(2)) # 
-- (\Processador|PC|DOUT\(1))))) # (\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(0) $ (!\Processador|PC|DOUT\(1) $ (!\Processador|PC|DOUT\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010101010010110100110000100010001100101000000110010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	datae => \Processador|PC|ALT_INV_DOUT\(4),
	dataf => \Processador|PC|ALT_INV_DOUT\(5),
	combout => \ROM_instrucao|memROM~20_combout\);

\ROM_instrucao|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~23_combout\ = ( \Processador|PC|DOUT\(4) & ( \Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(3)))) # (\Processador|PC|DOUT\(1) & 
-- (((\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(3))))) ) ) ) # ( !\Processador|PC|DOUT\(4) & ( \Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(1) & (((\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(3))))) # (\Processador|PC|DOUT\(1) & 
-- (\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(3)) # (\Processador|PC|DOUT\(2))))) ) ) ) # ( \Processador|PC|DOUT\(4) & ( !\Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(1) & (((\Processador|PC|DOUT\(3)) # (\Processador|PC|DOUT\(2))))) # 
-- (\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2)))) ) ) ) # ( !\Processador|PC|DOUT\(4) & ( !\Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(2) & ((!\Processador|PC|DOUT\(1)) # 
-- (\Processador|PC|DOUT\(3))))) # (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(1) $ (!\Processador|PC|DOUT\(3))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100001001010001011001110110000011101000000010000001110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	datae => \Processador|PC|ALT_INV_DOUT\(4),
	dataf => \Processador|PC|ALT_INV_DOUT\(5),
	combout => \ROM_instrucao|memROM~23_combout\);

\AndSW0_7|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndSW0_7|saida~0_combout\ = ( \ROM_instrucao|memROM~22_combout\ & ( \ROM_instrucao|memROM~23_combout\ & ( (!\Processador|PC|DOUT\(8) & \ROM_instrucao|memROM~27_combout\) ) ) ) # ( !\ROM_instrucao|memROM~22_combout\ & ( \ROM_instrucao|memROM~23_combout\ & 
-- ( (!\Processador|PC|DOUT\(8) & \ROM_instrucao|memROM~27_combout\) ) ) ) # ( \ROM_instrucao|memROM~22_combout\ & ( !\ROM_instrucao|memROM~23_combout\ & ( (!\Processador|PC|DOUT\(8) & \ROM_instrucao|memROM~27_combout\) ) ) ) # ( 
-- !\ROM_instrucao|memROM~22_combout\ & ( !\ROM_instrucao|memROM~23_combout\ & ( (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~27_combout\ & ((\ROM_instrucao|memROM~20_combout\) # (\ROM_instrucao|memROM~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000001010000010100000101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~27_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~22_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~23_combout\,
	combout => \AndSW0_7|saida~0_combout\);

\AndSW0_7|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndSW0_7|saida~1_combout\ = ( \Processador|decoder|Equal10~1_combout\ & ( !\AndSW0_7|saida~0_combout\ & ( (!\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~25_combout\ & (\ROM_instrucao|memROM~26_combout\ & \ROM_instrucao|memROM~19_combout\))) 
-- ) ) ) # ( !\Processador|decoder|Equal10~1_combout\ & ( !\AndSW0_7|saida~0_combout\ & ( (\ROM_instrucao|memROM~25_combout\ & (\ROM_instrucao|memROM~26_combout\ & \ROM_instrucao|memROM~19_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~25_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~26_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	dataf => \AndSW0_7|ALT_INV_saida~0_combout\,
	combout => \AndSW0_7|saida~1_combout\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\ROM_instrucao|memROM~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~35_combout\ = (!\Processador|PC|DOUT\(5) & (\Processador|PC|DOUT\(4) & ((\Processador|PC|DOUT\(3))))) # (\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(4) $ (!\Processador|PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001000100000100100100010000010010010001000001001001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(4),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~35_combout\);

\ROM_instrucao|memROM~39\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~39_combout\ = ( \ROM_instrucao|memROM~35_combout\ & ( (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(6) & !\Processador|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(6),
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	datae => \ROM_instrucao|ALT_INV_memROM~35_combout\,
	combout => \ROM_instrucao|memROM~39_combout\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\ROM_instrucao|memROM~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~37_combout\ = (\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(6) & !\Processador|PC|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000010000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(4),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \Processador|PC|ALT_INV_DOUT\(6),
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	combout => \ROM_instrucao|memROM~37_combout\);

\ROM_instrucao|memROM~38\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~38_combout\ = ( \ROM_instrucao|memROM~31_combout\ & ( \ROM_instrucao|memROM~32_combout\ & ( ((\ROM_instrucao|memROM~29_combout\ & ((!\Processador|PC|DOUT\(4)) # (\ROM_instrucao|memROM~30_combout\)))) # 
-- (\ROM_instrucao|memROM~37_combout\) ) ) ) # ( !\ROM_instrucao|memROM~31_combout\ & ( \ROM_instrucao|memROM~32_combout\ & ( ((\Processador|PC|DOUT\(4) & (\ROM_instrucao|memROM~29_combout\ & \ROM_instrucao|memROM~30_combout\))) # 
-- (\ROM_instrucao|memROM~37_combout\) ) ) ) # ( \ROM_instrucao|memROM~31_combout\ & ( !\ROM_instrucao|memROM~32_combout\ & ( (\ROM_instrucao|memROM~29_combout\ & ((!\Processador|PC|DOUT\(4)) # (\ROM_instrucao|memROM~30_combout\))) ) ) ) # ( 
-- !\ROM_instrucao|memROM~31_combout\ & ( !\ROM_instrucao|memROM~32_combout\ & ( (\Processador|PC|DOUT\(4) & (\ROM_instrucao|memROM~29_combout\ & \ROM_instrucao|memROM~30_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000010100000111100110011001101110011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(4),
	datab => \ROM_instrucao|ALT_INV_memROM~37_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~29_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~30_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~31_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~32_combout\,
	combout => \ROM_instrucao|memROM~38_combout\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\ROM_instrucao|memROM~43\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~43_combout\ = (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & \ROM_instrucao|memROM~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(6),
	datab => \Processador|PC|ALT_INV_DOUT\(7),
	datac => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	combout => \ROM_instrucao|memROM~43_combout\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\ROM_instrucao|memROM~42\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~42_combout\ = (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & \ROM_instrucao|memROM~23_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(6),
	datab => \Processador|PC|ALT_INV_DOUT\(7),
	datac => \ROM_instrucao|ALT_INV_memROM~23_combout\,
	combout => \ROM_instrucao|memROM~42_combout\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\ROM_instrucao|memROM~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~41_combout\ = (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & \ROM_instrucao|memROM~20_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(6),
	datab => \Processador|PC|ALT_INV_DOUT\(7),
	datac => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \ROM_instrucao|memROM~41_combout\);

\Processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~1_sumout\ = SUM(( (!\Processador|decoder|Equal10~3_combout\ & (((\Data_IN[0]~7_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~41_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(0) ) + ( !VCC ))
-- \Processador|ULA1|Add0~2\ = CARRY(( (!\Processador|decoder|Equal10~3_combout\ & (((\Data_IN[0]~7_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~41_combout\))) ) + ( \Processador|REGA|DOUT\(0) 
-- ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~41_combout\,
	datad => \ALT_INV_Data_IN[0]~7_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \Processador|ULA1|Add0~1_sumout\,
	cout => \Processador|ULA1|Add0~2\);

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

\Processador|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~21_sumout\ = SUM(( (!\Processador|decoder|Equal10~3_combout\ & (((!\Data_IN[0]~7_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (((!\ROM_instrucao|memROM~41_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(0) ) + ( \Processador|ULA1|Add1~34_cout\ ))
-- \Processador|ULA1|Add1~22\ = CARRY(( (!\Processador|decoder|Equal10~3_combout\ & (((!\Data_IN[0]~7_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (((!\ROM_instrucao|memROM~41_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(0) ) + ( \Processador|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~41_combout\,
	datad => \ALT_INV_Data_IN[0]~7_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	cin => \Processador|ULA1|Add1~34_cout\,
	sumout => \Processador|ULA1|Add1~21_sumout\,
	cout => \Processador|ULA1|Add1~22\);

\Processador|decoder|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida~1_combout\ = (!\ROM_instrucao|memROM~25_combout\ & (!\ROM_instrucao|memROM~14_combout\ & (!\ROM_instrucao|memROM~4_combout\ $ (!\ROM_instrucao|memROM~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000000001000001000000000100000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~25_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	combout => \Processador|decoder|saida~1_combout\);

\Processador|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[0]~0_combout\ = ( \Processador|decoder|saida~1_combout\ & ( (!\Processador|decoder|Equal10~3_combout\ & ((\Data_IN[0]~7_combout\))) # (\Processador|decoder|Equal10~3_combout\ & (\ROM_instrucao|memROM~21_combout\)) ) ) # ( 
-- !\Processador|decoder|saida~1_combout\ & ( \Processador|ULA1|Add1~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000111010001110100000000111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datac => \ALT_INV_Data_IN[0]~7_combout\,
	datad => \Processador|ULA1|ALT_INV_Add1~21_sumout\,
	datae => \Processador|decoder|ALT_INV_saida~1_combout\,
	combout => \Processador|ULA1|saida[0]~0_combout\);

\Processador|decoder|Equal10~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~4_combout\ = ( \ROM_instrucao|memROM~14_combout\ & ( (((\ROM_instrucao|memROM~2_combout\ & !\ROM_instrucao|memROM~8_combout\)) # (\ROM_instrucao|memROM~10_combout\)) # (\ROM_instrucao|memROM~4_combout\) ) ) # ( 
-- !\ROM_instrucao|memROM~14_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111011100111111111111111111111111110111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	combout => \Processador|decoder|Equal10~4_combout\);

\Processador|decoder|saida[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida[5]~2_combout\ = ( \ROM_instrucao|memROM~14_combout\ & ( (!\ROM_instrucao|memROM~4_combout\ & ((!\ROM_instrucao|memROM~2_combout\) # (\ROM_instrucao|memROM~8_combout\))) ) ) # ( !\ROM_instrucao|memROM~14_combout\ & ( 
-- (!\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~4_combout\ $ (((!\ROM_instrucao|memROM~10_combout\))))) # (\ROM_instrucao|memROM~2_combout\ & (\ROM_instrucao|memROM~8_combout\ & (!\ROM_instrucao|memROM~4_combout\ $ 
-- (!\ROM_instrucao|memROM~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001110001100100011001000110000100011100011001000110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	combout => \Processador|decoder|saida[5]~2_combout\);

\Processador|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|ULA1|Add0~1_sumout\,
	asdata => \Processador|ULA1|saida[0]~0_combout\,
	sload => \Processador|decoder|Equal10~4_combout\,
	ena => \Processador|decoder|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(0));

\DecoderHabBloc|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHabBloc|Equal0~0_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( (!\Processador|PC|DOUT\(4) & (\Processador|PC|DOUT\(5) & ((\ROM_instrucao|memROM~17_combout\)))) # (\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(5) & 
-- (\ROM_instrucao|memROM~15_combout\))) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( (!\Processador|PC|DOUT\(4) & ((!\Processador|PC|DOUT\(5)) # ((\ROM_instrucao|memROM~17_combout\)))) # (\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(5) & 
-- (\ROM_instrucao|memROM~15_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010101110000001000010011010001100101011100000010000100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(4),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \DecoderHabBloc|Equal0~0_combout\);

\MemoriaRAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|process_0~0_combout\ = ( !\ROM_instrucao|memROM~14_combout\ & ( \DecoderHabBloc|Equal0~0_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & (\ROM_instrucao|memROM~4_combout\ & \ROM_instrucao|memROM~10_combout\)) ) ) ) # ( 
-- !\ROM_instrucao|memROM~14_combout\ & ( !\DecoderHabBloc|Equal0~0_combout\ & ( (\ROM_instrucao|memROM~4_combout\ & (\ROM_instrucao|memROM~10_combout\ & ((!\ROM_instrucao|memROM~2_combout\) # (\ROM_instrucao|memROM~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100011000000000000000000000000001000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	dataf => \DecoderHabBloc|ALT_INV_Equal0~0_combout\,
	combout => \MemoriaRAM|process_0~0_combout\);

\MemoriaRAM|ram~695\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~695_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~695_combout\);

\MemoriaRAM|ram~696\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~696_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~695_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~695_combout\,
	combout => \MemoriaRAM|ram~696_combout\);

\MemoriaRAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~15_q\);

\MemoriaRAM|ram~697\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~697_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~697_combout\);

\MemoriaRAM|ram~698\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~698_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~697_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~697_combout\,
	combout => \MemoriaRAM|ram~698_combout\);

\MemoriaRAM|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~271_q\);

\MemoriaRAM|ram~699\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~699_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~699_combout\);

\MemoriaRAM|ram~700\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~700_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~699_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~699_combout\,
	combout => \MemoriaRAM|ram~700_combout\);

\MemoriaRAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~23_q\);

\MemoriaRAM|ram~701\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~701_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~701_combout\);

\MemoriaRAM|ram~702\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~702_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~701_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~701_combout\,
	combout => \MemoriaRAM|ram~702_combout\);

\MemoriaRAM|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~279_q\);

\MemoriaRAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~527_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~279_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~23_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~271_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~15_q\,
	datab => \MemoriaRAM|ALT_INV_ram~271_q\,
	datac => \MemoriaRAM|ALT_INV_ram~23_q\,
	datad => \MemoriaRAM|ALT_INV_ram~279_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	combout => \MemoriaRAM|ram~527_combout\);

\MemoriaRAM|ram~703\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~703_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~703_combout\);

\MemoriaRAM|ram~704\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~704_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~703_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~703_combout\,
	combout => \MemoriaRAM|ram~704_combout\);

\MemoriaRAM|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~143_q\);

\MemoriaRAM|ram~705\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~705_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~705_combout\);

\MemoriaRAM|ram~706\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~706_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~705_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~705_combout\,
	combout => \MemoriaRAM|ram~706_combout\);

\MemoriaRAM|ram~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~399_q\);

\MemoriaRAM|ram~707\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~707_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~707_combout\);

\MemoriaRAM|ram~708\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~708_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~707_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~707_combout\,
	combout => \MemoriaRAM|ram~708_combout\);

\MemoriaRAM|ram~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~151_q\);

\MemoriaRAM|ram~709\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~709_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~709_combout\);

\MemoriaRAM|ram~710\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~710_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~709_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~709_combout\,
	combout => \MemoriaRAM|ram~710_combout\);

\MemoriaRAM|ram~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~407_q\);

\MemoriaRAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~528_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~407_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~151_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~399_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~143_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~143_q\,
	datab => \MemoriaRAM|ALT_INV_ram~399_q\,
	datac => \MemoriaRAM|ALT_INV_ram~151_q\,
	datad => \MemoriaRAM|ALT_INV_ram~407_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	combout => \MemoriaRAM|ram~528_combout\);

\MemoriaRAM|ram~711\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~711_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~711_combout\);

\MemoriaRAM|ram~712\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~712_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~711_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~711_combout\,
	combout => \MemoriaRAM|ram~712_combout\);

\MemoriaRAM|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~79_q\);

\MemoriaRAM|ram~713\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~713_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~713_combout\);

\MemoriaRAM|ram~714\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~714_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~713_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~713_combout\,
	combout => \MemoriaRAM|ram~714_combout\);

\MemoriaRAM|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~335_q\);

\MemoriaRAM|ram~715\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~715_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~715_combout\);

\MemoriaRAM|ram~716\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~716_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~715_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~715_combout\,
	combout => \MemoriaRAM|ram~716_combout\);

\MemoriaRAM|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~87_q\);

\MemoriaRAM|ram~717\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~717_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~717_combout\);

\MemoriaRAM|ram~718\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~718_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~717_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~717_combout\,
	combout => \MemoriaRAM|ram~718_combout\);

\MemoriaRAM|ram~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~343_q\);

\MemoriaRAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~529_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~343_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~87_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~335_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~79_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~79_q\,
	datab => \MemoriaRAM|ALT_INV_ram~335_q\,
	datac => \MemoriaRAM|ALT_INV_ram~87_q\,
	datad => \MemoriaRAM|ALT_INV_ram~343_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	combout => \MemoriaRAM|ram~529_combout\);

\MemoriaRAM|ram~719\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~719_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~719_combout\);

\MemoriaRAM|ram~720\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~720_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~719_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~719_combout\,
	combout => \MemoriaRAM|ram~720_combout\);

\MemoriaRAM|ram~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~207_q\);

\MemoriaRAM|ram~721\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~721_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~721_combout\);

\MemoriaRAM|ram~722\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~722_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~721_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~721_combout\,
	combout => \MemoriaRAM|ram~722_combout\);

\MemoriaRAM|ram~463\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~463_q\);

\MemoriaRAM|ram~723\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~723_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~723_combout\);

\MemoriaRAM|ram~724\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~724_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~723_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~723_combout\,
	combout => \MemoriaRAM|ram~724_combout\);

\MemoriaRAM|ram~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~215_q\);

\MemoriaRAM|ram~725\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~725_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~725_combout\);

\MemoriaRAM|ram~726\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~726_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~725_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~725_combout\,
	combout => \MemoriaRAM|ram~726_combout\);

\MemoriaRAM|ram~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~471_q\);

\MemoriaRAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~530_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~471_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~215_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~463_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~207_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~207_q\,
	datab => \MemoriaRAM|ALT_INV_ram~463_q\,
	datac => \MemoriaRAM|ALT_INV_ram~215_q\,
	datad => \MemoriaRAM|ALT_INV_ram~471_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	combout => \MemoriaRAM|ram~530_combout\);

\MemoriaRAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~531_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~530_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~529_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~528_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~527_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~527_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~528_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~529_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~530_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~531_combout\);

\MemoriaRAM|ram~727\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~727_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~727_combout\);

\MemoriaRAM|ram~728\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~728_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~727_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~727_combout\,
	combout => \MemoriaRAM|ram~728_combout\);

\MemoriaRAM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~47_q\);

\MemoriaRAM|ram~729\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~729_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~729_combout\);

\MemoriaRAM|ram~730\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~730_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~729_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~729_combout\,
	combout => \MemoriaRAM|ram~730_combout\);

\MemoriaRAM|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~303_q\);

\MemoriaRAM|ram~731\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~731_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~731_combout\);

\MemoriaRAM|ram~732\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~732_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~731_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~731_combout\,
	combout => \MemoriaRAM|ram~732_combout\);

\MemoriaRAM|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~55_q\);

\MemoriaRAM|ram~733\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~733_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~733_combout\);

\MemoriaRAM|ram~734\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~734_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~733_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~733_combout\,
	combout => \MemoriaRAM|ram~734_combout\);

\MemoriaRAM|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~311_q\);

\MemoriaRAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~532_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~311_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~55_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~303_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~47_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~47_q\,
	datab => \MemoriaRAM|ALT_INV_ram~303_q\,
	datac => \MemoriaRAM|ALT_INV_ram~55_q\,
	datad => \MemoriaRAM|ALT_INV_ram~311_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	combout => \MemoriaRAM|ram~532_combout\);

\MemoriaRAM|ram~735\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~735_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~735_combout\);

\MemoriaRAM|ram~736\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~736_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~735_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~735_combout\,
	combout => \MemoriaRAM|ram~736_combout\);

\MemoriaRAM|ram~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~175_q\);

\MemoriaRAM|ram~737\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~737_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~737_combout\);

\MemoriaRAM|ram~738\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~738_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~737_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~737_combout\,
	combout => \MemoriaRAM|ram~738_combout\);

\MemoriaRAM|ram~431\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~431_q\);

\MemoriaRAM|ram~739\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~739_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~739_combout\);

\MemoriaRAM|ram~740\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~740_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~739_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~739_combout\,
	combout => \MemoriaRAM|ram~740_combout\);

\MemoriaRAM|ram~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~183_q\);

\MemoriaRAM|ram~741\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~741_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~741_combout\);

\MemoriaRAM|ram~742\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~742_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~741_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~741_combout\,
	combout => \MemoriaRAM|ram~742_combout\);

\MemoriaRAM|ram~439\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~439_q\);

\MemoriaRAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~533_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~439_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~183_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~431_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~175_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~175_q\,
	datab => \MemoriaRAM|ALT_INV_ram~431_q\,
	datac => \MemoriaRAM|ALT_INV_ram~183_q\,
	datad => \MemoriaRAM|ALT_INV_ram~439_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	combout => \MemoriaRAM|ram~533_combout\);

\MemoriaRAM|ram~743\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~743_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~743_combout\);

\MemoriaRAM|ram~744\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~744_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~743_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~743_combout\,
	combout => \MemoriaRAM|ram~744_combout\);

\MemoriaRAM|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~111_q\);

\MemoriaRAM|ram~745\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~745_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~745_combout\);

\MemoriaRAM|ram~746\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~746_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~745_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~745_combout\,
	combout => \MemoriaRAM|ram~746_combout\);

\MemoriaRAM|ram~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~367_q\);

\MemoriaRAM|ram~747\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~747_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~747_combout\);

\MemoriaRAM|ram~748\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~748_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~747_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~747_combout\,
	combout => \MemoriaRAM|ram~748_combout\);

\MemoriaRAM|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~119_q\);

\MemoriaRAM|ram~749\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~749_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~749_combout\);

\MemoriaRAM|ram~750\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~750_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~749_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~749_combout\,
	combout => \MemoriaRAM|ram~750_combout\);

\MemoriaRAM|ram~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~375_q\);

\MemoriaRAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~534_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~375_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~119_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~367_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~111_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~111_q\,
	datab => \MemoriaRAM|ALT_INV_ram~367_q\,
	datac => \MemoriaRAM|ALT_INV_ram~119_q\,
	datad => \MemoriaRAM|ALT_INV_ram~375_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	combout => \MemoriaRAM|ram~534_combout\);

\MemoriaRAM|ram~751\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~751_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~751_combout\);

\MemoriaRAM|ram~752\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~752_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~751_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~751_combout\,
	combout => \MemoriaRAM|ram~752_combout\);

\MemoriaRAM|ram~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~239_q\);

\MemoriaRAM|ram~753\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~753_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~753_combout\);

\MemoriaRAM|ram~754\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~754_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~753_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~753_combout\,
	combout => \MemoriaRAM|ram~754_combout\);

\MemoriaRAM|ram~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~495_q\);

\MemoriaRAM|ram~755\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~755_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~755_combout\);

\MemoriaRAM|ram~756\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~756_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~755_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~755_combout\,
	combout => \MemoriaRAM|ram~756_combout\);

\MemoriaRAM|ram~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~247_q\);

\MemoriaRAM|ram~757\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~757_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (!\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~757_combout\);

\MemoriaRAM|ram~758\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~758_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~757_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~757_combout\,
	combout => \MemoriaRAM|ram~758_combout\);

\MemoriaRAM|ram~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~503_q\);

\MemoriaRAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~535_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~503_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~247_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~495_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~239_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~239_q\,
	datab => \MemoriaRAM|ALT_INV_ram~495_q\,
	datac => \MemoriaRAM|ALT_INV_ram~247_q\,
	datad => \MemoriaRAM|ALT_INV_ram~503_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	combout => \MemoriaRAM|ram~535_combout\);

\MemoriaRAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~536_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~535_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~534_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~533_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~532_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~532_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~533_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~534_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~535_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~536_combout\);

\MemoriaRAM|ram~759\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~759_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~759_combout\);

\MemoriaRAM|ram~760\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~760_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~759_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~759_combout\,
	combout => \MemoriaRAM|ram~760_combout\);

\MemoriaRAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~31_q\);

\MemoriaRAM|ram~761\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~761_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~761_combout\);

\MemoriaRAM|ram~762\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~762_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~761_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~761_combout\,
	combout => \MemoriaRAM|ram~762_combout\);

\MemoriaRAM|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~287_q\);

\MemoriaRAM|ram~763\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~763_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~763_combout\);

\MemoriaRAM|ram~764\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~764_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~763_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~763_combout\,
	combout => \MemoriaRAM|ram~764_combout\);

\MemoriaRAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~39_q\);

\MemoriaRAM|ram~765\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~765_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~765_combout\);

\MemoriaRAM|ram~766\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~766_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~765_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~765_combout\,
	combout => \MemoriaRAM|ram~766_combout\);

\MemoriaRAM|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~295_q\);

\MemoriaRAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~537_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~295_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~39_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~287_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~31_q\,
	datab => \MemoriaRAM|ALT_INV_ram~287_q\,
	datac => \MemoriaRAM|ALT_INV_ram~39_q\,
	datad => \MemoriaRAM|ALT_INV_ram~295_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	combout => \MemoriaRAM|ram~537_combout\);

\MemoriaRAM|ram~767\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~767_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~767_combout\);

\MemoriaRAM|ram~768\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~768_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~767_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~767_combout\,
	combout => \MemoriaRAM|ram~768_combout\);

\MemoriaRAM|ram~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~159_q\);

\MemoriaRAM|ram~769\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~769_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~769_combout\);

\MemoriaRAM|ram~770\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~770_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~769_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~769_combout\,
	combout => \MemoriaRAM|ram~770_combout\);

\MemoriaRAM|ram~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~415_q\);

\MemoriaRAM|ram~771\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~771_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~771_combout\);

\MemoriaRAM|ram~772\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~772_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~771_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~771_combout\,
	combout => \MemoriaRAM|ram~772_combout\);

\MemoriaRAM|ram~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~167_q\);

\MemoriaRAM|ram~773\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~773_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~773_combout\);

\MemoriaRAM|ram~774\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~774_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~773_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~773_combout\,
	combout => \MemoriaRAM|ram~774_combout\);

\MemoriaRAM|ram~423\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~423_q\);

\MemoriaRAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~538_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~423_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~167_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~415_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~159_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~159_q\,
	datab => \MemoriaRAM|ALT_INV_ram~415_q\,
	datac => \MemoriaRAM|ALT_INV_ram~167_q\,
	datad => \MemoriaRAM|ALT_INV_ram~423_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	combout => \MemoriaRAM|ram~538_combout\);

\MemoriaRAM|ram~775\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~775_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~775_combout\);

\MemoriaRAM|ram~776\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~776_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~775_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~775_combout\,
	combout => \MemoriaRAM|ram~776_combout\);

\MemoriaRAM|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~95_q\);

\MemoriaRAM|ram~777\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~777_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~777_combout\);

\MemoriaRAM|ram~778\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~778_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~777_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~777_combout\,
	combout => \MemoriaRAM|ram~778_combout\);

\MemoriaRAM|ram~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~351_q\);

\MemoriaRAM|ram~779\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~779_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~779_combout\);

\MemoriaRAM|ram~780\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~780_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~779_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~779_combout\,
	combout => \MemoriaRAM|ram~780_combout\);

\MemoriaRAM|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~103_q\);

\MemoriaRAM|ram~781\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~781_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~781_combout\);

\MemoriaRAM|ram~782\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~782_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~781_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~781_combout\,
	combout => \MemoriaRAM|ram~782_combout\);

\MemoriaRAM|ram~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~359_q\);

\MemoriaRAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~539_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~359_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~103_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~351_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~95_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~95_q\,
	datab => \MemoriaRAM|ALT_INV_ram~351_q\,
	datac => \MemoriaRAM|ALT_INV_ram~103_q\,
	datad => \MemoriaRAM|ALT_INV_ram~359_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	combout => \MemoriaRAM|ram~539_combout\);

\MemoriaRAM|ram~783\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~783_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~783_combout\);

\MemoriaRAM|ram~784\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~784_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~783_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~783_combout\,
	combout => \MemoriaRAM|ram~784_combout\);

\MemoriaRAM|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~223_q\);

\MemoriaRAM|ram~785\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~785_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~785_combout\);

\MemoriaRAM|ram~786\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~786_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~785_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~785_combout\,
	combout => \MemoriaRAM|ram~786_combout\);

\MemoriaRAM|ram~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~479_q\);

\MemoriaRAM|ram~787\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~787_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~787_combout\);

\MemoriaRAM|ram~788\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~788_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~787_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~787_combout\,
	combout => \MemoriaRAM|ram~788_combout\);

\MemoriaRAM|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~231_q\);

\MemoriaRAM|ram~789\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~789_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (!\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~789_combout\);

\MemoriaRAM|ram~790\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~790_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~789_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~789_combout\,
	combout => \MemoriaRAM|ram~790_combout\);

\MemoriaRAM|ram~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~487_q\);

\MemoriaRAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~540_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~487_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~231_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~479_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~223_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~223_q\,
	datab => \MemoriaRAM|ALT_INV_ram~479_q\,
	datac => \MemoriaRAM|ALT_INV_ram~231_q\,
	datad => \MemoriaRAM|ALT_INV_ram~487_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	combout => \MemoriaRAM|ram~540_combout\);

\MemoriaRAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~541_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~540_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~539_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~538_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~537_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~537_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~538_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~539_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~540_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~541_combout\);

\MemoriaRAM|ram~791\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~791_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~791_combout\);

\MemoriaRAM|ram~792\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~792_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~791_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~791_combout\,
	combout => \MemoriaRAM|ram~792_combout\);

\MemoriaRAM|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~63_q\);

\MemoriaRAM|ram~793\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~793_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~793_combout\);

\MemoriaRAM|ram~794\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~794_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~793_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~793_combout\,
	combout => \MemoriaRAM|ram~794_combout\);

\MemoriaRAM|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~319_q\);

\MemoriaRAM|ram~795\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~795_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~795_combout\);

\MemoriaRAM|ram~796\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~796_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~795_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~795_combout\,
	combout => \MemoriaRAM|ram~796_combout\);

\MemoriaRAM|ram~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~191_q\);

\MemoriaRAM|ram~797\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~797_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~797_combout\);

\MemoriaRAM|ram~798\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~798_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~797_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~797_combout\,
	combout => \MemoriaRAM|ram~798_combout\);

\MemoriaRAM|ram~447\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~447_q\);

\MemoriaRAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~542_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~447_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~191_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~319_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~63_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~63_q\,
	datab => \MemoriaRAM|ALT_INV_ram~319_q\,
	datac => \MemoriaRAM|ALT_INV_ram~191_q\,
	datad => \MemoriaRAM|ALT_INV_ram~447_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~542_combout\);

\MemoriaRAM|ram~799\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~799_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~799_combout\);

\MemoriaRAM|ram~800\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~800_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~799_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~799_combout\,
	combout => \MemoriaRAM|ram~800_combout\);

\MemoriaRAM|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~71_q\);

\MemoriaRAM|ram~801\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~801_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~801_combout\);

\MemoriaRAM|ram~802\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~802_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~801_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~801_combout\,
	combout => \MemoriaRAM|ram~802_combout\);

\MemoriaRAM|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~327_q\);

\MemoriaRAM|ram~803\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~803_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~803_combout\);

\MemoriaRAM|ram~804\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~804_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~803_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~803_combout\,
	combout => \MemoriaRAM|ram~804_combout\);

\MemoriaRAM|ram~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~199_q\);

\MemoriaRAM|ram~805\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~805_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~805_combout\);

\MemoriaRAM|ram~806\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~806_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~805_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~805_combout\,
	combout => \MemoriaRAM|ram~806_combout\);

\MemoriaRAM|ram~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~455_q\);

\MemoriaRAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~543_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~455_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~199_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~327_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~71_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~71_q\,
	datab => \MemoriaRAM|ALT_INV_ram~327_q\,
	datac => \MemoriaRAM|ALT_INV_ram~199_q\,
	datad => \MemoriaRAM|ALT_INV_ram~455_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~543_combout\);

\MemoriaRAM|ram~807\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~807_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~807_combout\);

\MemoriaRAM|ram~808\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~808_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~807_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~807_combout\,
	combout => \MemoriaRAM|ram~808_combout\);

\MemoriaRAM|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~127_q\);

\MemoriaRAM|ram~809\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~809_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~809_combout\);

\MemoriaRAM|ram~810\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~810_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~809_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~809_combout\,
	combout => \MemoriaRAM|ram~810_combout\);

\MemoriaRAM|ram~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~383_q\);

\MemoriaRAM|ram~811\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~811_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~811_combout\);

\MemoriaRAM|ram~812\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~812_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~811_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~811_combout\,
	combout => \MemoriaRAM|ram~812_combout\);

\MemoriaRAM|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~255_q\);

\MemoriaRAM|ram~813\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~813_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~813_combout\);

\MemoriaRAM|ram~814\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~814_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~813_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~813_combout\,
	combout => \MemoriaRAM|ram~814_combout\);

\MemoriaRAM|ram~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~511_q\);

\MemoriaRAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~544_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~511_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~255_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~383_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~127_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~127_q\,
	datab => \MemoriaRAM|ALT_INV_ram~383_q\,
	datac => \MemoriaRAM|ALT_INV_ram~255_q\,
	datad => \MemoriaRAM|ALT_INV_ram~511_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~544_combout\);

\MemoriaRAM|ram~815\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~815_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~815_combout\);

\MemoriaRAM|ram~816\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~816_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~815_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~815_combout\,
	combout => \MemoriaRAM|ram~816_combout\);

\MemoriaRAM|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~135_q\);

\MemoriaRAM|ram~817\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~817_combout\ = ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~817_combout\);

\MemoriaRAM|ram~818\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~818_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~817_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~817_combout\,
	combout => \MemoriaRAM|ram~818_combout\);

\MemoriaRAM|ram~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~391_q\);

\MemoriaRAM|ram~819\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~819_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & 
-- \ROM_instrucao|memROM~34_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~819_combout\);

\MemoriaRAM|ram~820\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~820_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~819_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~819_combout\,
	combout => \MemoriaRAM|ram~820_combout\);

\MemoriaRAM|ram~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~263_q\);

\MemoriaRAM|ram~821\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~821_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( (\ROM_instrucao|memROM~21_combout\ & (\ROM_instrucao|memROM~28_combout\ & (\ROM_instrucao|memROM~1_combout\ & \ROM_instrucao|memROM~34_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~821_combout\);

\MemoriaRAM|ram~822\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~822_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~821_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~821_combout\,
	combout => \MemoriaRAM|ram~822_combout\);

\MemoriaRAM|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \MemoriaRAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~519_q\);

\MemoriaRAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~545_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~519_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~263_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~391_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~135_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~135_q\,
	datab => \MemoriaRAM|ALT_INV_ram~391_q\,
	datac => \MemoriaRAM|ALT_INV_ram~263_q\,
	datad => \MemoriaRAM|ALT_INV_ram~519_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~545_combout\);

\MemoriaRAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~546_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~545_combout\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~544_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~543_combout\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~542_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~542_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~543_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~544_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~545_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~546_combout\);

\MemoriaRAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~547_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~546_combout\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~541_combout\ ) ) 
-- ) # ( \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~536_combout\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~531_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~531_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~536_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~541_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~546_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~547_combout\);

\Data_IN[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~2_combout\ = ( \DecoderHabBloc|Equal0~0_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & ((!\ROM_instrucao|memROM~25_combout\ & (!\ROM_instrucao|memROM~4_combout\ & \Processador|decoder|Equal10~1_combout\)) # 
-- (\ROM_instrucao|memROM~25_combout\ & ((!\Processador|decoder|Equal10~1_combout\))))) ) ) # ( !\DecoderHabBloc|Equal0~0_combout\ & ( (!\ROM_instrucao|memROM~25_combout\ & (!\ROM_instrucao|memROM~4_combout\ & \Processador|decoder|Equal10~1_combout\)) # 
-- (\ROM_instrucao|memROM~25_combout\ & ((!\Processador|decoder|Equal10~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111000000000010101000000000001111110000000000101010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~25_combout\,
	datad => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datae => \DecoderHabBloc|ALT_INV_Equal0~0_combout\,
	combout => \Data_IN[0]~2_combout\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\AndSW0_7|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndSW0_7|saida~2_combout\ = ( \Processador|decoder|Equal10~1_combout\ & ( (!\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~25_combout\ & (\ROM_instrucao|memROM~26_combout\ & \ROM_instrucao|memROM~19_combout\))) ) ) # ( 
-- !\Processador|decoder|Equal10~1_combout\ & ( (\ROM_instrucao|memROM~25_combout\ & (\ROM_instrucao|memROM~26_combout\ & \ROM_instrucao|memROM~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000100000000000000000110000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~25_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~26_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	combout => \AndSW0_7|saida~2_combout\);

\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

\Data_IN[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~3_combout\ = ( !\ROM_instrucao|memROM~23_combout\ & ( !\FPGA_RESET_N~input_o\ & ( (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~27_combout\ & (!\ROM_instrucao|memROM~20_combout\ & \ROM_instrucao|memROM~22_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM_instrucao|ALT_INV_memROM~27_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~22_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~23_combout\,
	dataf => \ALT_INV_FPGA_RESET_N~input_o\,
	combout => \Data_IN[0]~3_combout\);

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

\Data_IN[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~4_combout\ = ( \SW[8]~input_o\ & ( \SW[9]~input_o\ & ( (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~27_combout\ & (!\ROM_instrucao|memROM~20_combout\ $ (!\ROM_instrucao|memROM~23_combout\)))) ) ) ) # ( !\SW[8]~input_o\ & ( 
-- \SW[9]~input_o\ & ( (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~27_combout\ & (!\ROM_instrucao|memROM~20_combout\ & \ROM_instrucao|memROM~23_combout\))) ) ) ) # ( \SW[8]~input_o\ & ( !\SW[9]~input_o\ & ( (!\Processador|PC|DOUT\(8) & 
-- (\ROM_instrucao|memROM~27_combout\ & (\ROM_instrucao|memROM~20_combout\ & !\ROM_instrucao|memROM~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000001000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM_instrucao|ALT_INV_memROM~27_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~23_combout\,
	datae => \ALT_INV_SW[8]~input_o\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \Data_IN[0]~4_combout\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\Data_IN[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~5_combout\ = ( \KEY[3]~input_o\ & ( \KEY[2]~input_o\ & ( (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~27_combout\ & ((\ROM_instrucao|memROM~23_combout\) # (\ROM_instrucao|memROM~20_combout\)))) ) ) ) # ( !\KEY[3]~input_o\ & ( 
-- \KEY[2]~input_o\ & ( (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~27_combout\ & (!\ROM_instrucao|memROM~20_combout\ $ (!\ROM_instrucao|memROM~23_combout\)))) ) ) ) # ( \KEY[3]~input_o\ & ( !\KEY[2]~input_o\ & ( (!\Processador|PC|DOUT\(8) & 
-- (\ROM_instrucao|memROM~27_combout\ & \ROM_instrucao|memROM~20_combout\)) ) ) ) # ( !\KEY[3]~input_o\ & ( !\KEY[2]~input_o\ & ( (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~27_combout\ & (\ROM_instrucao|memROM~20_combout\ & 
-- !\ROM_instrucao|memROM~23_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000100000001000000010001000000000001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM_instrucao|ALT_INV_memROM~27_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~23_combout\,
	datae => \ALT_INV_KEY[3]~input_o\,
	dataf => \ALT_INV_KEY[2]~input_o\,
	combout => \Data_IN[0]~5_combout\);

\Data_IN[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~6_combout\ = ( \Data_IN[0]~5_combout\ & ( (!\Data_IN[0]~3_combout\ & (((!\Data_IN[0]~4_combout\) # (\ROM_instrucao|memROM~24_combout\)) # (\ROM_instrucao|memROM~1_combout\))) ) ) # ( !\Data_IN[0]~5_combout\ & ( (!\Data_IN[0]~3_combout\ & 
-- (((!\ROM_instrucao|memROM~24_combout\ & !\Data_IN[0]~4_combout\)) # (\ROM_instrucao|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000001010000111100000111000011010000010100001111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	datac => \ALT_INV_Data_IN[0]~3_combout\,
	datad => \ALT_INV_Data_IN[0]~4_combout\,
	datae => \ALT_INV_Data_IN[0]~5_combout\,
	combout => \Data_IN[0]~6_combout\);

\Data_IN[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~7_combout\ = ( \AndSW0_7|saida~1_combout\ & ( \Data_IN[0]~6_combout\ & ( ((\MemoriaRAM|ram~547_combout\ & \Data_IN[0]~2_combout\)) # (\SW[0]~input_o\) ) ) ) # ( !\AndSW0_7|saida~1_combout\ & ( \Data_IN[0]~6_combout\ & ( 
-- (\MemoriaRAM|ram~547_combout\ & \Data_IN[0]~2_combout\) ) ) ) # ( \AndSW0_7|saida~1_combout\ & ( !\Data_IN[0]~6_combout\ & ( (((\MemoriaRAM|ram~547_combout\ & \Data_IN[0]~2_combout\)) # (\AndSW0_7|saida~2_combout\)) # (\SW[0]~input_o\) ) ) ) # ( 
-- !\AndSW0_7|saida~1_combout\ & ( !\Data_IN[0]~6_combout\ & ( ((\MemoriaRAM|ram~547_combout\ & \Data_IN[0]~2_combout\)) # (\AndSW0_7|saida~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111111111000111111111111100010001000100010001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~547_combout\,
	datab => \ALT_INV_Data_IN[0]~2_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	datad => \AndSW0_7|ALT_INV_saida~2_combout\,
	datae => \AndSW0_7|ALT_INV_saida~1_combout\,
	dataf => \ALT_INV_Data_IN[0]~6_combout\,
	combout => \Data_IN[0]~7_combout\);

\Processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~5_sumout\ = SUM(( (!\Processador|decoder|Equal10~3_combout\ & (((\Processador|MUX1|saida_MUX[1]~0_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~42_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add0~2\ ))
-- \Processador|ULA1|Add0~6\ = CARRY(( (!\Processador|decoder|Equal10~3_combout\ & (((\Processador|MUX1|saida_MUX[1]~0_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~42_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~42_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(1),
	cin => \Processador|ULA1|Add0~2\,
	sumout => \Processador|ULA1|Add0~5_sumout\,
	cout => \Processador|ULA1|Add0~6\);

\Processador|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~25_sumout\ = SUM(( (!\Processador|decoder|Equal10~3_combout\ & (((!\Processador|MUX1|saida_MUX[1]~0_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (((!\ROM_instrucao|memROM~42_combout\)) # (\Processador|PC|DOUT\(8)))) ) + 
-- ( \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add1~22\ ))
-- \Processador|ULA1|Add1~26\ = CARRY(( (!\Processador|decoder|Equal10~3_combout\ & (((!\Processador|MUX1|saida_MUX[1]~0_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (((!\ROM_instrucao|memROM~42_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~42_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(1),
	cin => \Processador|ULA1|Add1~22\,
	sumout => \Processador|ULA1|Add1~25_sumout\,
	cout => \Processador|ULA1|Add1~26\);

\Processador|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[1]~1_combout\ = ( \Processador|decoder|saida~1_combout\ & ( (!\Processador|decoder|Equal10~3_combout\ & ((\Processador|MUX1|saida_MUX[1]~0_combout\))) # (\Processador|decoder|Equal10~3_combout\ & 
-- (\ROM_instrucao|memROM~28_combout\)) ) ) # ( !\Processador|decoder|saida~1_combout\ & ( \Processador|ULA1|Add1~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000111010001110100000000111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	datad => \Processador|ULA1|ALT_INV_Add1~25_sumout\,
	datae => \Processador|decoder|ALT_INV_saida~1_combout\,
	combout => \Processador|ULA1|saida[1]~1_combout\);

\Processador|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|ULA1|Add0~5_sumout\,
	asdata => \Processador|ULA1|saida[1]~1_combout\,
	sload => \Processador|decoder|Equal10~4_combout\,
	ena => \Processador|decoder|saida[5]~2_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~16_q\);

\MemoriaRAM|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~272_q\);

\MemoriaRAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~32_q\);

\MemoriaRAM|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~288_q\);

\MemoriaRAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~548_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~288_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~32_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~272_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~16_q\,
	datab => \MemoriaRAM|ALT_INV_ram~272_q\,
	datac => \MemoriaRAM|ALT_INV_ram~32_q\,
	datad => \MemoriaRAM|ALT_INV_ram~288_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~548_combout\);

\MemoriaRAM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~48_q\);

\MemoriaRAM|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~304_q\);

\MemoriaRAM|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~64_q\);

\MemoriaRAM|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~320_q\);

\MemoriaRAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~549_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~320_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~64_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~304_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~48_q\,
	datab => \MemoriaRAM|ALT_INV_ram~304_q\,
	datac => \MemoriaRAM|ALT_INV_ram~64_q\,
	datad => \MemoriaRAM|ALT_INV_ram~320_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~549_combout\);

\MemoriaRAM|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~80_q\);

\MemoriaRAM|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~336_q\);

\MemoriaRAM|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~96_q\);

\MemoriaRAM|ram~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~352_q\);

\MemoriaRAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~550_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~352_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~96_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~336_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~80_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~80_q\,
	datab => \MemoriaRAM|ALT_INV_ram~336_q\,
	datac => \MemoriaRAM|ALT_INV_ram~96_q\,
	datad => \MemoriaRAM|ALT_INV_ram~352_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~550_combout\);

\MemoriaRAM|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~112_q\);

\MemoriaRAM|ram~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~368_q\);

\MemoriaRAM|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~128_q\);

\MemoriaRAM|ram~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~384_q\);

\MemoriaRAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~551_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~384_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~128_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~368_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~112_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~112_q\,
	datab => \MemoriaRAM|ALT_INV_ram~368_q\,
	datac => \MemoriaRAM|ALT_INV_ram~128_q\,
	datad => \MemoriaRAM|ALT_INV_ram~384_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~551_combout\);

\MemoriaRAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~552_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~551_combout\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~550_combout\ ) ) 
-- ) # ( \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~549_combout\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~548_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~548_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~549_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~550_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~551_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~552_combout\);

\MemoriaRAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~24_q\);

\MemoriaRAM|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~280_q\);

\MemoriaRAM|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~88_q\);

\MemoriaRAM|ram~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~344_q\);

\MemoriaRAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~553_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~344_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~88_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~280_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~24_q\,
	datab => \MemoriaRAM|ALT_INV_ram~280_q\,
	datac => \MemoriaRAM|ALT_INV_ram~88_q\,
	datad => \MemoriaRAM|ALT_INV_ram~344_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~553_combout\);

\MemoriaRAM|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~56_q\);

\MemoriaRAM|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~312_q\);

\MemoriaRAM|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~120_q\);

\MemoriaRAM|ram~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~376_q\);

\MemoriaRAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~554_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~376_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~120_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~312_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~56_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~56_q\,
	datab => \MemoriaRAM|ALT_INV_ram~312_q\,
	datac => \MemoriaRAM|ALT_INV_ram~120_q\,
	datad => \MemoriaRAM|ALT_INV_ram~376_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~554_combout\);

\MemoriaRAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~40_q\);

\MemoriaRAM|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~296_q\);

\MemoriaRAM|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~104_q\);

\MemoriaRAM|ram~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~360_q\);

\MemoriaRAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~555_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~360_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~104_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~296_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~40_q\,
	datab => \MemoriaRAM|ALT_INV_ram~296_q\,
	datac => \MemoriaRAM|ALT_INV_ram~104_q\,
	datad => \MemoriaRAM|ALT_INV_ram~360_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~555_combout\);

\MemoriaRAM|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~72_q\);

\MemoriaRAM|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~328_q\);

\MemoriaRAM|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~136_q\);

\MemoriaRAM|ram~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~392_q\);

\MemoriaRAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~556_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~392_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~136_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~328_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~72_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~72_q\,
	datab => \MemoriaRAM|ALT_INV_ram~328_q\,
	datac => \MemoriaRAM|ALT_INV_ram~136_q\,
	datad => \MemoriaRAM|ALT_INV_ram~392_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~556_combout\);

\MemoriaRAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~557_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~556_combout\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~555_combout\ ) ) 
-- ) # ( \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~554_combout\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~553_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~553_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~554_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~555_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~556_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~557_combout\);

\MemoriaRAM|ram~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~144_q\);

\MemoriaRAM|ram~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~400_q\);

\MemoriaRAM|ram~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~176_q\);

\MemoriaRAM|ram~432\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~432_q\);

\MemoriaRAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~558_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~432_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~176_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~400_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~144_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~144_q\,
	datab => \MemoriaRAM|ALT_INV_ram~400_q\,
	datac => \MemoriaRAM|ALT_INV_ram~176_q\,
	datad => \MemoriaRAM|ALT_INV_ram~432_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~558_combout\);

\MemoriaRAM|ram~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~160_q\);

\MemoriaRAM|ram~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~416_q\);

\MemoriaRAM|ram~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~192_q\);

\MemoriaRAM|ram~448\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~448_q\);

\MemoriaRAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~559_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~448_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~192_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~416_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~160_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~160_q\,
	datab => \MemoriaRAM|ALT_INV_ram~416_q\,
	datac => \MemoriaRAM|ALT_INV_ram~192_q\,
	datad => \MemoriaRAM|ALT_INV_ram~448_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~559_combout\);

\MemoriaRAM|ram~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~208_q\);

\MemoriaRAM|ram~464\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~464_q\);

\MemoriaRAM|ram~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~240_q\);

\MemoriaRAM|ram~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~496_q\);

\MemoriaRAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~560_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~496_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~240_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~464_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~208_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~208_q\,
	datab => \MemoriaRAM|ALT_INV_ram~464_q\,
	datac => \MemoriaRAM|ALT_INV_ram~240_q\,
	datad => \MemoriaRAM|ALT_INV_ram~496_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~560_combout\);

\MemoriaRAM|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~224_q\);

\MemoriaRAM|ram~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~480_q\);

\MemoriaRAM|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~256_q\);

\MemoriaRAM|ram~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~512_q\);

\MemoriaRAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~561_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~512_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~256_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~480_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~224_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~224_q\,
	datab => \MemoriaRAM|ALT_INV_ram~480_q\,
	datac => \MemoriaRAM|ALT_INV_ram~256_q\,
	datad => \MemoriaRAM|ALT_INV_ram~512_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~561_combout\);

\MemoriaRAM|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~562_combout\ = ( \ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~561_combout\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~560_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~559_combout\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~558_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~558_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~559_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~560_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~561_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~562_combout\);

\MemoriaRAM|ram~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~152_q\);

\MemoriaRAM|ram~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~408_q\);

\MemoriaRAM|ram~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~168_q\);

\MemoriaRAM|ram~424\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~424_q\);

\MemoriaRAM|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~563_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~424_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~168_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~408_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~152_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~152_q\,
	datab => \MemoriaRAM|ALT_INV_ram~408_q\,
	datac => \MemoriaRAM|ALT_INV_ram~168_q\,
	datad => \MemoriaRAM|ALT_INV_ram~424_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~563_combout\);

\MemoriaRAM|ram~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~184_q\);

\MemoriaRAM|ram~440\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~440_q\);

\MemoriaRAM|ram~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~200_q\);

\MemoriaRAM|ram~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~456_q\);

\MemoriaRAM|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~564_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~456_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~200_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~440_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~184_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~184_q\,
	datab => \MemoriaRAM|ALT_INV_ram~440_q\,
	datac => \MemoriaRAM|ALT_INV_ram~200_q\,
	datad => \MemoriaRAM|ALT_INV_ram~456_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~564_combout\);

\MemoriaRAM|ram~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~216_q\);

\MemoriaRAM|ram~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~472_q\);

\MemoriaRAM|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~232_q\);

\MemoriaRAM|ram~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~488_q\);

\MemoriaRAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~565_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~488_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~232_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~472_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~216_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~216_q\,
	datab => \MemoriaRAM|ALT_INV_ram~472_q\,
	datac => \MemoriaRAM|ALT_INV_ram~232_q\,
	datad => \MemoriaRAM|ALT_INV_ram~488_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~565_combout\);

\MemoriaRAM|ram~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~248_q\);

\MemoriaRAM|ram~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~504_q\);

\MemoriaRAM|ram~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~264_q\);

\MemoriaRAM|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \MemoriaRAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~520_q\);

\MemoriaRAM|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~566_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~520_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~264_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~504_q\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~248_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~248_q\,
	datab => \MemoriaRAM|ALT_INV_ram~504_q\,
	datac => \MemoriaRAM|ALT_INV_ram~264_q\,
	datad => \MemoriaRAM|ALT_INV_ram~520_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~566_combout\);

\MemoriaRAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~567_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~566_combout\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~565_combout\ ) ) 
-- ) # ( \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~564_combout\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~563_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~563_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~564_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~565_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~566_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~567_combout\);

\MemoriaRAM|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~568_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~567_combout\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~562_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~557_combout\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~552_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~552_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~557_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~562_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~567_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~568_combout\);

\Processador|MUX1|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[1]~0_combout\ = (!\AndSW0_7|saida~1_combout\ & ((\MemoriaRAM|ram~568_combout\))) # (\AndSW0_7|saida~1_combout\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndSW0_7|ALT_INV_saida~1_combout\,
	datab => \ALT_INV_SW[1]~input_o\,
	datac => \MemoriaRAM|ALT_INV_ram~568_combout\,
	combout => \Processador|MUX1|saida_MUX[1]~0_combout\);

\Processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~9_sumout\ = SUM(( (!\Processador|decoder|Equal10~3_combout\ & (((\Processador|MUX1|saida_MUX[2]~1_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~43_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(2) ) + ( \Processador|ULA1|Add0~6\ ))
-- \Processador|ULA1|Add0~10\ = CARRY(( (!\Processador|decoder|Equal10~3_combout\ & (((\Processador|MUX1|saida_MUX[2]~1_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~43_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(2) ) + ( \Processador|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~43_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	cin => \Processador|ULA1|Add0~6\,
	sumout => \Processador|ULA1|Add0~9_sumout\,
	cout => \Processador|ULA1|Add0~10\);

\Processador|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~29_sumout\ = SUM(( (!\Processador|decoder|Equal10~3_combout\ & (((!\Processador|MUX1|saida_MUX[2]~1_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (((!\ROM_instrucao|memROM~43_combout\)) # (\Processador|PC|DOUT\(8)))) ) + 
-- ( \Processador|REGA|DOUT\(2) ) + ( \Processador|ULA1|Add1~26\ ))
-- \Processador|ULA1|Add1~30\ = CARRY(( (!\Processador|decoder|Equal10~3_combout\ & (((!\Processador|MUX1|saida_MUX[2]~1_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (((!\ROM_instrucao|memROM~43_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(2) ) + ( \Processador|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~43_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	cin => \Processador|ULA1|Add1~26\,
	sumout => \Processador|ULA1|Add1~29_sumout\,
	cout => \Processador|ULA1|Add1~30\);

\Processador|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[2]~2_combout\ = ( \Processador|decoder|saida~1_combout\ & ( (!\Processador|decoder|Equal10~3_combout\ & ((\Processador|MUX1|saida_MUX[2]~1_combout\))) # (\Processador|decoder|Equal10~3_combout\ & (\ROM_instrucao|memROM~1_combout\)) 
-- ) ) # ( !\Processador|decoder|saida~1_combout\ & ( \Processador|ULA1|Add1~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000111010001110100000000111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	datad => \Processador|ULA1|ALT_INV_Add1~29_sumout\,
	datae => \Processador|decoder|ALT_INV_saida~1_combout\,
	combout => \Processador|ULA1|saida[2]~2_combout\);

\Processador|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|ULA1|Add0~9_sumout\,
	asdata => \Processador|ULA1|saida[2]~2_combout\,
	sload => \Processador|decoder|Equal10~4_combout\,
	ena => \Processador|decoder|saida[5]~2_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~17_q\);

\MemoriaRAM|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~49_q\);

\MemoriaRAM|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~81_q\);

\MemoriaRAM|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~113_q\);

\MemoriaRAM|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~569_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~113_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~81_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~49_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~17_q\,
	datab => \MemoriaRAM|ALT_INV_ram~49_q\,
	datac => \MemoriaRAM|ALT_INV_ram~81_q\,
	datad => \MemoriaRAM|ALT_INV_ram~113_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~569_combout\);

\MemoriaRAM|ram~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~145_q\);

\MemoriaRAM|ram~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~177_q\);

\MemoriaRAM|ram~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~209_q\);

\MemoriaRAM|ram~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~241_q\);

\MemoriaRAM|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~570_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~241_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~209_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~177_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~145_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~145_q\,
	datab => \MemoriaRAM|ALT_INV_ram~177_q\,
	datac => \MemoriaRAM|ALT_INV_ram~209_q\,
	datad => \MemoriaRAM|ALT_INV_ram~241_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~570_combout\);

\MemoriaRAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~33_q\);

\MemoriaRAM|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~65_q\);

\MemoriaRAM|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~97_q\);

\MemoriaRAM|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~129_q\);

\MemoriaRAM|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~571_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~129_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~97_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~65_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~33_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~33_q\,
	datab => \MemoriaRAM|ALT_INV_ram~65_q\,
	datac => \MemoriaRAM|ALT_INV_ram~97_q\,
	datad => \MemoriaRAM|ALT_INV_ram~129_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~571_combout\);

\MemoriaRAM|ram~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~161_q\);

\MemoriaRAM|ram~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~193_q\);

\MemoriaRAM|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~225_q\);

\MemoriaRAM|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~257_q\);

\MemoriaRAM|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~572_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~257_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~225_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~193_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~161_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~161_q\,
	datab => \MemoriaRAM|ALT_INV_ram~193_q\,
	datac => \MemoriaRAM|ALT_INV_ram~225_q\,
	datad => \MemoriaRAM|ALT_INV_ram~257_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~572_combout\);

\MemoriaRAM|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~573_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~572_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~571_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~570_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~569_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~569_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~570_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~571_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~572_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~573_combout\);

\MemoriaRAM|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~273_q\);

\MemoriaRAM|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~305_q\);

\MemoriaRAM|ram~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~401_q\);

\MemoriaRAM|ram~433\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~433_q\);

\MemoriaRAM|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~574_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~433_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~401_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~305_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~273_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~273_q\,
	datab => \MemoriaRAM|ALT_INV_ram~305_q\,
	datac => \MemoriaRAM|ALT_INV_ram~401_q\,
	datad => \MemoriaRAM|ALT_INV_ram~433_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~574_combout\);

\MemoriaRAM|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~289_q\);

\MemoriaRAM|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~321_q\);

\MemoriaRAM|ram~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~417_q\);

\MemoriaRAM|ram~449\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~449_q\);

\MemoriaRAM|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~575_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~449_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~417_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~321_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~289_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~289_q\,
	datab => \MemoriaRAM|ALT_INV_ram~321_q\,
	datac => \MemoriaRAM|ALT_INV_ram~417_q\,
	datad => \MemoriaRAM|ALT_INV_ram~449_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~575_combout\);

\MemoriaRAM|ram~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~337_q\);

\MemoriaRAM|ram~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~369_q\);

\MemoriaRAM|ram~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~465_q\);

\MemoriaRAM|ram~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~497_q\);

\MemoriaRAM|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~576_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~497_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~465_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~369_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~337_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~337_q\,
	datab => \MemoriaRAM|ALT_INV_ram~369_q\,
	datac => \MemoriaRAM|ALT_INV_ram~465_q\,
	datad => \MemoriaRAM|ALT_INV_ram~497_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~576_combout\);

\MemoriaRAM|ram~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~353_q\);

\MemoriaRAM|ram~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~385_q\);

\MemoriaRAM|ram~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~481_q\);

\MemoriaRAM|ram~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~513_q\);

\MemoriaRAM|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~577_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~513_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~481_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~385_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~353_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~353_q\,
	datab => \MemoriaRAM|ALT_INV_ram~385_q\,
	datac => \MemoriaRAM|ALT_INV_ram~481_q\,
	datad => \MemoriaRAM|ALT_INV_ram~513_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~577_combout\);

\MemoriaRAM|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~578_combout\ = ( \ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~577_combout\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~576_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~575_combout\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~574_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~574_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~575_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~576_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~577_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~578_combout\);

\MemoriaRAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~25_q\);

\MemoriaRAM|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~57_q\);

\MemoriaRAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~41_q\);

\MemoriaRAM|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~73_q\);

\MemoriaRAM|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~579_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~73_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~41_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~57_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~25_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~25_q\,
	datab => \MemoriaRAM|ALT_INV_ram~57_q\,
	datac => \MemoriaRAM|ALT_INV_ram~41_q\,
	datad => \MemoriaRAM|ALT_INV_ram~73_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~579_combout\);

\MemoriaRAM|ram~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~153_q\);

\MemoriaRAM|ram~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~185_q\);

\MemoriaRAM|ram~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~169_q\);

\MemoriaRAM|ram~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~201_q\);

\MemoriaRAM|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~580_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~201_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~169_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~185_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~153_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~153_q\,
	datab => \MemoriaRAM|ALT_INV_ram~185_q\,
	datac => \MemoriaRAM|ALT_INV_ram~169_q\,
	datad => \MemoriaRAM|ALT_INV_ram~201_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~580_combout\);

\MemoriaRAM|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~89_q\);

\MemoriaRAM|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~121_q\);

\MemoriaRAM|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~105_q\);

\MemoriaRAM|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~137_q\);

\MemoriaRAM|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~581_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~137_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~105_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~121_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~89_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~89_q\,
	datab => \MemoriaRAM|ALT_INV_ram~121_q\,
	datac => \MemoriaRAM|ALT_INV_ram~105_q\,
	datad => \MemoriaRAM|ALT_INV_ram~137_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~581_combout\);

\MemoriaRAM|ram~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~217_q\);

\MemoriaRAM|ram~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~249_q\);

\MemoriaRAM|ram~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~233_q\);

\MemoriaRAM|ram~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~265_q\);

\MemoriaRAM|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~582_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~265_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~233_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~249_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~217_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~217_q\,
	datab => \MemoriaRAM|ALT_INV_ram~249_q\,
	datac => \MemoriaRAM|ALT_INV_ram~233_q\,
	datad => \MemoriaRAM|ALT_INV_ram~265_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~582_combout\);

\MemoriaRAM|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~583_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~582_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~581_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~580_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~579_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~579_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~580_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~581_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~582_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~583_combout\);

\MemoriaRAM|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~281_q\);

\MemoriaRAM|ram~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~409_q\);

\MemoriaRAM|ram~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~345_q\);

\MemoriaRAM|ram~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~473_q\);

\MemoriaRAM|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~584_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~473_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~345_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~409_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~281_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~281_q\,
	datab => \MemoriaRAM|ALT_INV_ram~409_q\,
	datac => \MemoriaRAM|ALT_INV_ram~345_q\,
	datad => \MemoriaRAM|ALT_INV_ram~473_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~584_combout\);

\MemoriaRAM|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~313_q\);

\MemoriaRAM|ram~441\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~441_q\);

\MemoriaRAM|ram~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~377_q\);

\MemoriaRAM|ram~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~505_q\);

\MemoriaRAM|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~585_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~505_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~377_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~441_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~313_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~313_q\,
	datab => \MemoriaRAM|ALT_INV_ram~441_q\,
	datac => \MemoriaRAM|ALT_INV_ram~377_q\,
	datad => \MemoriaRAM|ALT_INV_ram~505_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~585_combout\);

\MemoriaRAM|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~297_q\);

\MemoriaRAM|ram~425\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~425_q\);

\MemoriaRAM|ram~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~361_q\);

\MemoriaRAM|ram~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~489_q\);

\MemoriaRAM|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~586_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~489_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~361_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~425_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~297_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~297_q\,
	datab => \MemoriaRAM|ALT_INV_ram~425_q\,
	datac => \MemoriaRAM|ALT_INV_ram~361_q\,
	datad => \MemoriaRAM|ALT_INV_ram~489_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~586_combout\);

\MemoriaRAM|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~329_q\);

\MemoriaRAM|ram~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~457_q\);

\MemoriaRAM|ram~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~393_q\);

\MemoriaRAM|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \MemoriaRAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~521_q\);

\MemoriaRAM|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~587_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~521_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~393_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~457_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~329_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~329_q\,
	datab => \MemoriaRAM|ALT_INV_ram~457_q\,
	datac => \MemoriaRAM|ALT_INV_ram~393_q\,
	datad => \MemoriaRAM|ALT_INV_ram~521_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~587_combout\);

\MemoriaRAM|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~588_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~587_combout\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~586_combout\ ) ) 
-- ) # ( \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~585_combout\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~584_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~584_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~585_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~586_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~587_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~588_combout\);

\MemoriaRAM|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~589_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~588_combout\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~583_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~578_combout\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~573_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~573_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~578_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~583_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~588_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	combout => \MemoriaRAM|ram~589_combout\);

\Processador|MUX1|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[2]~1_combout\ = (!\AndSW0_7|saida~1_combout\ & ((\MemoriaRAM|ram~589_combout\))) # (\AndSW0_7|saida~1_combout\ & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndSW0_7|ALT_INV_saida~1_combout\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \MemoriaRAM|ALT_INV_ram~589_combout\,
	combout => \Processador|MUX1|saida_MUX[2]~1_combout\);

\Processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~13_sumout\ = SUM(( (!\Processador|decoder|Equal10~3_combout\ & (((\Processador|MUX1|saida_MUX[3]~2_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~38_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(3) ) + ( \Processador|ULA1|Add0~10\ ))
-- \Processador|ULA1|Add0~14\ = CARRY(( (!\Processador|decoder|Equal10~3_combout\ & (((\Processador|MUX1|saida_MUX[3]~2_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~38_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(3) ) + ( \Processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~38_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[3]~2_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(3),
	cin => \Processador|ULA1|Add0~10\,
	sumout => \Processador|ULA1|Add0~13_sumout\,
	cout => \Processador|ULA1|Add0~14\);

\Processador|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~1_sumout\ = SUM(( (!\Processador|decoder|Equal10~3_combout\ & (((!\Processador|MUX1|saida_MUX[3]~2_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (((!\ROM_instrucao|memROM~38_combout\)) # (\Processador|PC|DOUT\(8)))) ) + 
-- ( \Processador|REGA|DOUT\(3) ) + ( \Processador|ULA1|Add1~30\ ))
-- \Processador|ULA1|Add1~2\ = CARRY(( (!\Processador|decoder|Equal10~3_combout\ & (((!\Processador|MUX1|saida_MUX[3]~2_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (((!\ROM_instrucao|memROM~38_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(3) ) + ( \Processador|ULA1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~38_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[3]~2_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(3),
	cin => \Processador|ULA1|Add1~30\,
	sumout => \Processador|ULA1|Add1~1_sumout\,
	cout => \Processador|ULA1|Add1~2\);

\Processador|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[3]~3_combout\ = ( \Processador|decoder|saida~1_combout\ & ( (!\Processador|decoder|Equal10~3_combout\ & ((\Processador|MUX1|saida_MUX[3]~2_combout\))) # (\Processador|decoder|Equal10~3_combout\ & 
-- (\ROM_instrucao|memROM~34_combout\)) ) ) # ( !\Processador|decoder|saida~1_combout\ & ( \Processador|ULA1|Add1~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000110110001101100000000111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[3]~2_combout\,
	datad => \Processador|ULA1|ALT_INV_Add1~1_sumout\,
	datae => \Processador|decoder|ALT_INV_saida~1_combout\,
	combout => \Processador|ULA1|saida[3]~3_combout\);

\Processador|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|ULA1|Add0~13_sumout\,
	asdata => \Processador|ULA1|saida[3]~3_combout\,
	sload => \Processador|decoder|Equal10~4_combout\,
	ena => \Processador|decoder|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(3));

\MemoriaRAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~18_q\);

\MemoriaRAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~26_q\);

\MemoriaRAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~34_q\);

\MemoriaRAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~42_q\);

\MemoriaRAM|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~590_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~42_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~34_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~26_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~18_q\,
	datab => \MemoriaRAM|ALT_INV_ram~26_q\,
	datac => \MemoriaRAM|ALT_INV_ram~34_q\,
	datad => \MemoriaRAM|ALT_INV_ram~42_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~590_combout\);

\MemoriaRAM|ram~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~146_q\);

\MemoriaRAM|ram~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~154_q\);

\MemoriaRAM|ram~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~162_q\);

\MemoriaRAM|ram~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~170_q\);

\MemoriaRAM|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~591_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~170_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~162_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~154_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~146_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~146_q\,
	datab => \MemoriaRAM|ALT_INV_ram~154_q\,
	datac => \MemoriaRAM|ALT_INV_ram~162_q\,
	datad => \MemoriaRAM|ALT_INV_ram~170_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~591_combout\);

\MemoriaRAM|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~82_q\);

\MemoriaRAM|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~90_q\);

\MemoriaRAM|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~98_q\);

\MemoriaRAM|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~106_q\);

\MemoriaRAM|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~592_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~106_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~98_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~90_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~82_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~82_q\,
	datab => \MemoriaRAM|ALT_INV_ram~90_q\,
	datac => \MemoriaRAM|ALT_INV_ram~98_q\,
	datad => \MemoriaRAM|ALT_INV_ram~106_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~592_combout\);

\MemoriaRAM|ram~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~210_q\);

\MemoriaRAM|ram~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~218_q\);

\MemoriaRAM|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~226_q\);

\MemoriaRAM|ram~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~234_q\);

\MemoriaRAM|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~593_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~234_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~226_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~218_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~210_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~210_q\,
	datab => \MemoriaRAM|ALT_INV_ram~218_q\,
	datac => \MemoriaRAM|ALT_INV_ram~226_q\,
	datad => \MemoriaRAM|ALT_INV_ram~234_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~593_combout\);

\MemoriaRAM|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~594_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~593_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~592_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~591_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~590_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~590_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~591_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~592_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~593_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~594_combout\);

\MemoriaRAM|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~274_q\);

\MemoriaRAM|ram~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~402_q\);

\MemoriaRAM|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~290_q\);

\MemoriaRAM|ram~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~418_q\);

\MemoriaRAM|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~595_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~418_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~290_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~402_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~274_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~274_q\,
	datab => \MemoriaRAM|ALT_INV_ram~402_q\,
	datac => \MemoriaRAM|ALT_INV_ram~290_q\,
	datad => \MemoriaRAM|ALT_INV_ram~418_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~595_combout\);

\MemoriaRAM|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~282_q\);

\MemoriaRAM|ram~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~410_q\);

\MemoriaRAM|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~298_q\);

\MemoriaRAM|ram~426\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~426_q\);

\MemoriaRAM|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~596_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~426_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~298_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~410_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~282_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~282_q\,
	datab => \MemoriaRAM|ALT_INV_ram~410_q\,
	datac => \MemoriaRAM|ALT_INV_ram~298_q\,
	datad => \MemoriaRAM|ALT_INV_ram~426_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~596_combout\);

\MemoriaRAM|ram~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~338_q\);

\MemoriaRAM|ram~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~466_q\);

\MemoriaRAM|ram~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~354_q\);

\MemoriaRAM|ram~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~482_q\);

\MemoriaRAM|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~597_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~482_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~354_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~466_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~338_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~338_q\,
	datab => \MemoriaRAM|ALT_INV_ram~466_q\,
	datac => \MemoriaRAM|ALT_INV_ram~354_q\,
	datad => \MemoriaRAM|ALT_INV_ram~482_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~597_combout\);

\MemoriaRAM|ram~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~346_q\);

\MemoriaRAM|ram~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~474_q\);

\MemoriaRAM|ram~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~362_q\);

\MemoriaRAM|ram~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~490_q\);

\MemoriaRAM|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~598_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~490_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~362_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~474_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~346_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~346_q\,
	datab => \MemoriaRAM|ALT_INV_ram~474_q\,
	datac => \MemoriaRAM|ALT_INV_ram~362_q\,
	datad => \MemoriaRAM|ALT_INV_ram~490_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~598_combout\);

\MemoriaRAM|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~599_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~598_combout\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~597_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~596_combout\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~595_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~595_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~596_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~597_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~598_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~599_combout\);

\MemoriaRAM|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~728_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~66_q\);

\MemoriaRAM|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~114_q\);

\MemoriaRAM|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~130_q\);

\MemoriaRAM|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~600_combout\ = ( \ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~130_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~114_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~66_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~50_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~50_q\,
	datab => \MemoriaRAM|ALT_INV_ram~66_q\,
	datac => \MemoriaRAM|ALT_INV_ram~114_q\,
	datad => \MemoriaRAM|ALT_INV_ram~130_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~600_combout\);

\MemoriaRAM|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~732_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~74_q\);

\MemoriaRAM|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~122_q\);

\MemoriaRAM|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~138_q\);

\MemoriaRAM|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~601_combout\ = ( \ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~138_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~122_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~74_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~58_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~58_q\,
	datab => \MemoriaRAM|ALT_INV_ram~74_q\,
	datac => \MemoriaRAM|ALT_INV_ram~122_q\,
	datad => \MemoriaRAM|ALT_INV_ram~138_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~601_combout\);

\MemoriaRAM|ram~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~178_q\);

\MemoriaRAM|ram~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~194_q\);

\MemoriaRAM|ram~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~242_q\);

\MemoriaRAM|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~258_q\);

\MemoriaRAM|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~602_combout\ = ( \ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~258_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~242_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~194_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~178_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~178_q\,
	datab => \MemoriaRAM|ALT_INV_ram~194_q\,
	datac => \MemoriaRAM|ALT_INV_ram~242_q\,
	datad => \MemoriaRAM|ALT_INV_ram~258_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~602_combout\);

\MemoriaRAM|ram~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~186_q\);

\MemoriaRAM|ram~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~202_q\);

\MemoriaRAM|ram~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~250_q\);

\MemoriaRAM|ram~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~266_q\);

\MemoriaRAM|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~603_combout\ = ( \ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~266_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~250_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~202_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~186_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~186_q\,
	datab => \MemoriaRAM|ALT_INV_ram~202_q\,
	datac => \MemoriaRAM|ALT_INV_ram~250_q\,
	datad => \MemoriaRAM|ALT_INV_ram~266_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~603_combout\);

\MemoriaRAM|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~604_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~603_combout\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~602_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~601_combout\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~600_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~600_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~601_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~602_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~603_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~604_combout\);

\MemoriaRAM|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~306_q\);

\MemoriaRAM|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~314_q\);

\MemoriaRAM|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~322_q\);

\MemoriaRAM|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~330_q\);

\MemoriaRAM|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~605_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~330_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~322_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~314_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~306_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~306_q\,
	datab => \MemoriaRAM|ALT_INV_ram~314_q\,
	datac => \MemoriaRAM|ALT_INV_ram~322_q\,
	datad => \MemoriaRAM|ALT_INV_ram~330_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~605_combout\);

\MemoriaRAM|ram~434\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~434_q\);

\MemoriaRAM|ram~442\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~442_q\);

\MemoriaRAM|ram~450\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~450_q\);

\MemoriaRAM|ram~458\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~458_q\);

\MemoriaRAM|ram~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~606_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~458_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~450_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~442_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~434_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~434_q\,
	datab => \MemoriaRAM|ALT_INV_ram~442_q\,
	datac => \MemoriaRAM|ALT_INV_ram~450_q\,
	datad => \MemoriaRAM|ALT_INV_ram~458_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~606_combout\);

\MemoriaRAM|ram~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~370_q\);

\MemoriaRAM|ram~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~378_q\);

\MemoriaRAM|ram~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~386_q\);

\MemoriaRAM|ram~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~394_q\);

\MemoriaRAM|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~607_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~394_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~386_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~378_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~370_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~370_q\,
	datab => \MemoriaRAM|ALT_INV_ram~378_q\,
	datac => \MemoriaRAM|ALT_INV_ram~386_q\,
	datad => \MemoriaRAM|ALT_INV_ram~394_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~607_combout\);

\MemoriaRAM|ram~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~498_q\);

\MemoriaRAM|ram~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~506_q\);

\MemoriaRAM|ram~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~514_q\);

\MemoriaRAM|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \MemoriaRAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~522_q\);

\MemoriaRAM|ram~608\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~608_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~522_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~514_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~506_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~498_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~498_q\,
	datab => \MemoriaRAM|ALT_INV_ram~506_q\,
	datac => \MemoriaRAM|ALT_INV_ram~514_q\,
	datad => \MemoriaRAM|ALT_INV_ram~522_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~608_combout\);

\MemoriaRAM|ram~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~609_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~608_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~607_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~606_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~605_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~605_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~606_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~607_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~608_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~609_combout\);

\MemoriaRAM|ram~610\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~610_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~609_combout\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~604_combout\ ) ) 
-- ) # ( \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~599_combout\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~594_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~594_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~599_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~604_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~609_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~610_combout\);

\Processador|MUX1|saida_MUX[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[3]~2_combout\ = (!\AndSW0_7|saida~1_combout\ & ((\MemoriaRAM|ram~610_combout\))) # (\AndSW0_7|saida~1_combout\ & (\SW[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndSW0_7|ALT_INV_saida~1_combout\,
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \MemoriaRAM|ALT_INV_ram~610_combout\,
	combout => \Processador|MUX1|saida_MUX[3]~2_combout\);

\Processador|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~17_sumout\ = SUM(( (!\Processador|decoder|Equal10~3_combout\ & (((\Processador|MUX1|saida_MUX[4]~3_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~39_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(4) ) + ( \Processador|ULA1|Add0~14\ ))
-- \Processador|ULA1|Add0~18\ = CARRY(( (!\Processador|decoder|Equal10~3_combout\ & (((\Processador|MUX1|saida_MUX[4]~3_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~39_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(4) ) + ( \Processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~39_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(4),
	cin => \Processador|ULA1|Add0~14\,
	sumout => \Processador|ULA1|Add0~17_sumout\,
	cout => \Processador|ULA1|Add0~18\);

\Processador|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~5_sumout\ = SUM(( (!\Processador|decoder|Equal10~3_combout\ & (((!\Processador|MUX1|saida_MUX[4]~3_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (((!\ROM_instrucao|memROM~39_combout\)) # (\Processador|PC|DOUT\(8)))) ) + 
-- ( \Processador|REGA|DOUT\(4) ) + ( \Processador|ULA1|Add1~2\ ))
-- \Processador|ULA1|Add1~6\ = CARRY(( (!\Processador|decoder|Equal10~3_combout\ & (((!\Processador|MUX1|saida_MUX[4]~3_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (((!\ROM_instrucao|memROM~39_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(4) ) + ( \Processador|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~39_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(4),
	cin => \Processador|ULA1|Add1~2\,
	sumout => \Processador|ULA1|Add1~5_sumout\,
	cout => \Processador|ULA1|Add1~6\);

\Processador|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[4]~4_combout\ = ( \Processador|decoder|saida~1_combout\ & ( (!\Processador|decoder|Equal10~3_combout\ & ((\Processador|MUX1|saida_MUX[4]~3_combout\))) # (\Processador|decoder|Equal10~3_combout\ & 
-- (\ROM_instrucao|memROM~36_combout\)) ) ) # ( !\Processador|decoder|saida~1_combout\ & ( \Processador|ULA1|Add1~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000110110001101100000000111111110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	datad => \Processador|ULA1|ALT_INV_Add1~5_sumout\,
	datae => \Processador|decoder|ALT_INV_saida~1_combout\,
	combout => \Processador|ULA1|saida[4]~4_combout\);

\Processador|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|ULA1|Add0~17_sumout\,
	asdata => \Processador|ULA1|saida[4]~4_combout\,
	sload => \Processador|decoder|Equal10~4_combout\,
	ena => \Processador|decoder|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(4));

\MemoriaRAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~696_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~700_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~728_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~59_q\);

\MemoriaRAM|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~611_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~59_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~51_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~27_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~19_q\ ) ) )

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
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~611_combout\);

\MemoriaRAM|ram~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~147_q\);

\MemoriaRAM|ram~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~155_q\);

\MemoriaRAM|ram~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~179_q\);

\MemoriaRAM|ram~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~187_q\);

\MemoriaRAM|ram~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~612_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~187_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~179_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~155_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~147_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~147_q\,
	datab => \MemoriaRAM|ALT_INV_ram~155_q\,
	datac => \MemoriaRAM|ALT_INV_ram~179_q\,
	datad => \MemoriaRAM|ALT_INV_ram~187_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~612_combout\);

\MemoriaRAM|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~83_q\);

\MemoriaRAM|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~91_q\);

\MemoriaRAM|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~115_q\);

\MemoriaRAM|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~123_q\);

\MemoriaRAM|ram~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~613_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~123_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~115_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~91_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~83_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~83_q\,
	datab => \MemoriaRAM|ALT_INV_ram~91_q\,
	datac => \MemoriaRAM|ALT_INV_ram~115_q\,
	datad => \MemoriaRAM|ALT_INV_ram~123_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~613_combout\);

\MemoriaRAM|ram~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~211_q\);

\MemoriaRAM|ram~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~219_q\);

\MemoriaRAM|ram~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~243_q\);

\MemoriaRAM|ram~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~251_q\);

\MemoriaRAM|ram~614\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~614_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~251_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~243_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~219_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~211_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~211_q\,
	datab => \MemoriaRAM|ALT_INV_ram~219_q\,
	datac => \MemoriaRAM|ALT_INV_ram~243_q\,
	datad => \MemoriaRAM|ALT_INV_ram~251_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~614_combout\);

\MemoriaRAM|ram~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~615_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~614_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~613_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~612_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~611_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~611_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~612_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~613_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~614_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~615_combout\);

\MemoriaRAM|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~275_q\);

\MemoriaRAM|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~283_q\);

\MemoriaRAM|ram~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~339_q\);

\MemoriaRAM|ram~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~347_q\);

\MemoriaRAM|ram~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~616_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~347_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~339_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~283_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~275_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~275_q\,
	datab => \MemoriaRAM|ALT_INV_ram~283_q\,
	datac => \MemoriaRAM|ALT_INV_ram~339_q\,
	datad => \MemoriaRAM|ALT_INV_ram~347_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~616_combout\);

\MemoriaRAM|ram~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~307_q\);

\MemoriaRAM|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~315_q\);

\MemoriaRAM|ram~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~371_q\);

\MemoriaRAM|ram~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~379_q\);

\MemoriaRAM|ram~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~617_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~379_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~371_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~315_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~307_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~307_q\,
	datab => \MemoriaRAM|ALT_INV_ram~315_q\,
	datac => \MemoriaRAM|ALT_INV_ram~371_q\,
	datad => \MemoriaRAM|ALT_INV_ram~379_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~617_combout\);

\MemoriaRAM|ram~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~403_q\);

\MemoriaRAM|ram~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~411_q\);

\MemoriaRAM|ram~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~467_q\);

\MemoriaRAM|ram~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~475_q\);

\MemoriaRAM|ram~618\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~618_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~475_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~467_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~411_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~403_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~403_q\,
	datab => \MemoriaRAM|ALT_INV_ram~411_q\,
	datac => \MemoriaRAM|ALT_INV_ram~467_q\,
	datad => \MemoriaRAM|ALT_INV_ram~475_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~618_combout\);

\MemoriaRAM|ram~435\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~435_q\);

\MemoriaRAM|ram~443\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~443_q\);

\MemoriaRAM|ram~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~499_q\);

\MemoriaRAM|ram~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~507_q\);

\MemoriaRAM|ram~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~619_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~507_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~499_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~443_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~435_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~435_q\,
	datab => \MemoriaRAM|ALT_INV_ram~443_q\,
	datac => \MemoriaRAM|ALT_INV_ram~499_q\,
	datad => \MemoriaRAM|ALT_INV_ram~507_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~619_combout\);

\MemoriaRAM|ram~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~620_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~619_combout\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~618_combout\ ) ) 
-- ) # ( \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~617_combout\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~616_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~616_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~617_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~618_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~619_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~620_combout\);

\MemoriaRAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~760_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~43_q\);

\MemoriaRAM|ram~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~163_q\);

\MemoriaRAM|ram~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~171_q\);

\MemoriaRAM|ram~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~621_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~171_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~163_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~43_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~35_q\,
	datab => \MemoriaRAM|ALT_INV_ram~43_q\,
	datac => \MemoriaRAM|ALT_INV_ram~163_q\,
	datad => \MemoriaRAM|ALT_INV_ram~171_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~621_combout\);

\MemoriaRAM|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~792_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~75_q\);

\MemoriaRAM|ram~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~195_q\);

\MemoriaRAM|ram~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~203_q\);

\MemoriaRAM|ram~622\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~622_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~203_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~195_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~75_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~67_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~67_q\,
	datab => \MemoriaRAM|ALT_INV_ram~75_q\,
	datac => \MemoriaRAM|ALT_INV_ram~195_q\,
	datad => \MemoriaRAM|ALT_INV_ram~203_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~622_combout\);

\MemoriaRAM|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~99_q\);

\MemoriaRAM|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~107_q\);

\MemoriaRAM|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~227_q\);

\MemoriaRAM|ram~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~235_q\);

\MemoriaRAM|ram~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~623_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~235_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~227_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~107_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~99_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~99_q\,
	datab => \MemoriaRAM|ALT_INV_ram~107_q\,
	datac => \MemoriaRAM|ALT_INV_ram~227_q\,
	datad => \MemoriaRAM|ALT_INV_ram~235_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~623_combout\);

\MemoriaRAM|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~131_q\);

\MemoriaRAM|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~139_q\);

\MemoriaRAM|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~259_q\);

\MemoriaRAM|ram~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~267_q\);

\MemoriaRAM|ram~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~624_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~267_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~259_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~139_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~131_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~131_q\,
	datab => \MemoriaRAM|ALT_INV_ram~139_q\,
	datac => \MemoriaRAM|ALT_INV_ram~259_q\,
	datad => \MemoriaRAM|ALT_INV_ram~267_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~624_combout\);

\MemoriaRAM|ram~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~625_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~624_combout\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~623_combout\ ) ) 
-- ) # ( \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~622_combout\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~621_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~621_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~622_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~623_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~624_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~625_combout\);

\MemoriaRAM|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~291_q\);

\MemoriaRAM|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~299_q\);

\MemoriaRAM|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~323_q\);

\MemoriaRAM|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~331_q\);

\MemoriaRAM|ram~626\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~626_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~331_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~323_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~299_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~291_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~291_q\,
	datab => \MemoriaRAM|ALT_INV_ram~299_q\,
	datac => \MemoriaRAM|ALT_INV_ram~323_q\,
	datad => \MemoriaRAM|ALT_INV_ram~331_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~626_combout\);

\MemoriaRAM|ram~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~419_q\);

\MemoriaRAM|ram~427\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~427_q\);

\MemoriaRAM|ram~451\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~451_q\);

\MemoriaRAM|ram~459\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~459_q\);

\MemoriaRAM|ram~627\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~627_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~459_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~451_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~427_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~419_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~419_q\,
	datab => \MemoriaRAM|ALT_INV_ram~427_q\,
	datac => \MemoriaRAM|ALT_INV_ram~451_q\,
	datad => \MemoriaRAM|ALT_INV_ram~459_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~627_combout\);

\MemoriaRAM|ram~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~355_q\);

\MemoriaRAM|ram~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~363_q\);

\MemoriaRAM|ram~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~387_q\);

\MemoriaRAM|ram~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~395_q\);

\MemoriaRAM|ram~628\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~628_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~395_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~387_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~363_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~355_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~355_q\,
	datab => \MemoriaRAM|ALT_INV_ram~363_q\,
	datac => \MemoriaRAM|ALT_INV_ram~387_q\,
	datad => \MemoriaRAM|ALT_INV_ram~395_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~628_combout\);

\MemoriaRAM|ram~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~483_q\);

\MemoriaRAM|ram~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~491_q\);

\MemoriaRAM|ram~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~515_q\);

\MemoriaRAM|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \MemoriaRAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~523_q\);

\MemoriaRAM|ram~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~629_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~523_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~515_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~491_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~483_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~483_q\,
	datab => \MemoriaRAM|ALT_INV_ram~491_q\,
	datac => \MemoriaRAM|ALT_INV_ram~515_q\,
	datad => \MemoriaRAM|ALT_INV_ram~523_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~629_combout\);

\MemoriaRAM|ram~630\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~630_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~629_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~628_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~627_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~626_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~626_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~627_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~628_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~629_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~630_combout\);

\MemoriaRAM|ram~631\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~631_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~630_combout\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~625_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~620_combout\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~615_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~615_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~620_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~625_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~630_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~631_combout\);

\Processador|MUX1|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[4]~3_combout\ = (!\AndSW0_7|saida~1_combout\ & ((\MemoriaRAM|ram~631_combout\))) # (\AndSW0_7|saida~1_combout\ & (\SW[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndSW0_7|ALT_INV_saida~1_combout\,
	datab => \ALT_INV_SW[4]~input_o\,
	datac => \MemoriaRAM|ALT_INV_ram~631_combout\,
	combout => \Processador|MUX1|saida_MUX[4]~3_combout\);

\Processador|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~21_sumout\ = SUM(( (!\Processador|decoder|Equal10~3_combout\ & (((\Processador|MUX1|saida_MUX[5]~4_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~40_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(5) ) + ( \Processador|ULA1|Add0~18\ ))
-- \Processador|ULA1|Add0~22\ = CARRY(( (!\Processador|decoder|Equal10~3_combout\ & (((\Processador|MUX1|saida_MUX[5]~4_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~40_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(5) ) + ( \Processador|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~40_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(5),
	cin => \Processador|ULA1|Add0~18\,
	sumout => \Processador|ULA1|Add0~21_sumout\,
	cout => \Processador|ULA1|Add0~22\);

\Processador|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[5]~5_combout\ = ( \Processador|decoder|saida~1_combout\ & ( (!\Processador|decoder|Equal10~3_combout\ & ((\Processador|MUX1|saida_MUX[5]~4_combout\))) # (\Processador|decoder|Equal10~3_combout\ & 
-- (\ROM_instrucao|memROM~24_combout\)) ) ) # ( !\Processador|decoder|saida~1_combout\ & ( \Processador|ULA1|Add1~9_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000111010001110100000000111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	datad => \Processador|ULA1|ALT_INV_Add1~9_sumout\,
	datae => \Processador|decoder|ALT_INV_saida~1_combout\,
	combout => \Processador|ULA1|saida[5]~5_combout\);

\Processador|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|ULA1|Add0~21_sumout\,
	asdata => \Processador|ULA1|saida[5]~5_combout\,
	sload => \Processador|decoder|Equal10~4_combout\,
	ena => \Processador|decoder|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(5));

\MemoriaRAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~20_q\);

\MemoriaRAM|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~52_q\);

\MemoriaRAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~36_q\);

\MemoriaRAM|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~68_q\);

\MemoriaRAM|ram~632\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~632_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~68_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~36_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~52_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~20_q\,
	datab => \MemoriaRAM|ALT_INV_ram~52_q\,
	datac => \MemoriaRAM|ALT_INV_ram~36_q\,
	datad => \MemoriaRAM|ALT_INV_ram~68_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~632_combout\);

\MemoriaRAM|ram~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~148_q\);

\MemoriaRAM|ram~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~180_q\);

\MemoriaRAM|ram~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~164_q\);

\MemoriaRAM|ram~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~196_q\);

\MemoriaRAM|ram~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~633_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~196_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~164_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~180_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~148_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~148_q\,
	datab => \MemoriaRAM|ALT_INV_ram~180_q\,
	datac => \MemoriaRAM|ALT_INV_ram~164_q\,
	datad => \MemoriaRAM|ALT_INV_ram~196_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~633_combout\);

\MemoriaRAM|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~84_q\);

\MemoriaRAM|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~116_q\);

\MemoriaRAM|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~100_q\);

\MemoriaRAM|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~132_q\);

\MemoriaRAM|ram~634\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~634_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~132_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~100_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~116_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~84_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~84_q\,
	datab => \MemoriaRAM|ALT_INV_ram~116_q\,
	datac => \MemoriaRAM|ALT_INV_ram~100_q\,
	datad => \MemoriaRAM|ALT_INV_ram~132_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~634_combout\);

\MemoriaRAM|ram~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~212_q\);

\MemoriaRAM|ram~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~244_q\);

\MemoriaRAM|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~228_q\);

\MemoriaRAM|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~260_q\);

\MemoriaRAM|ram~635\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~635_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~260_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~228_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~244_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~212_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~212_q\,
	datab => \MemoriaRAM|ALT_INV_ram~244_q\,
	datac => \MemoriaRAM|ALT_INV_ram~228_q\,
	datad => \MemoriaRAM|ALT_INV_ram~260_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~635_combout\);

\MemoriaRAM|ram~636\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~636_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~635_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~634_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~633_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~632_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~632_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~633_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~634_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~635_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~636_combout\);

\MemoriaRAM|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~276_q\);

\MemoriaRAM|ram~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~308_q\);

\MemoriaRAM|ram~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~404_q\);

\MemoriaRAM|ram~436\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~436_q\);

\MemoriaRAM|ram~637\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~637_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~436_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~404_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~308_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~276_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~276_q\,
	datab => \MemoriaRAM|ALT_INV_ram~308_q\,
	datac => \MemoriaRAM|ALT_INV_ram~404_q\,
	datad => \MemoriaRAM|ALT_INV_ram~436_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~637_combout\);

\MemoriaRAM|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~292_q\);

\MemoriaRAM|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~324_q\);

\MemoriaRAM|ram~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~420_q\);

\MemoriaRAM|ram~452\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~452_q\);

\MemoriaRAM|ram~638\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~638_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~452_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~420_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~324_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~292_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~292_q\,
	datab => \MemoriaRAM|ALT_INV_ram~324_q\,
	datac => \MemoriaRAM|ALT_INV_ram~420_q\,
	datad => \MemoriaRAM|ALT_INV_ram~452_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~638_combout\);

\MemoriaRAM|ram~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~340_q\);

\MemoriaRAM|ram~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~372_q\);

\MemoriaRAM|ram~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~468_q\);

\MemoriaRAM|ram~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~500_q\);

\MemoriaRAM|ram~639\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~639_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~500_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~468_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~372_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~340_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~340_q\,
	datab => \MemoriaRAM|ALT_INV_ram~372_q\,
	datac => \MemoriaRAM|ALT_INV_ram~468_q\,
	datad => \MemoriaRAM|ALT_INV_ram~500_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~639_combout\);

\MemoriaRAM|ram~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~356_q\);

\MemoriaRAM|ram~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~388_q\);

\MemoriaRAM|ram~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~484_q\);

\MemoriaRAM|ram~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~516_q\);

\MemoriaRAM|ram~640\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~640_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~516_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~484_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~388_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~356_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~356_q\,
	datab => \MemoriaRAM|ALT_INV_ram~388_q\,
	datac => \MemoriaRAM|ALT_INV_ram~484_q\,
	datad => \MemoriaRAM|ALT_INV_ram~516_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~640_combout\);

\MemoriaRAM|ram~641\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~641_combout\ = ( \ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~640_combout\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~639_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~638_combout\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~637_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~637_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~638_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~639_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~640_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~641_combout\);

\MemoriaRAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~28_q\);

\MemoriaRAM|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~60_q\);

\MemoriaRAM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~44_q\);

\MemoriaRAM|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~76_q\);

\MemoriaRAM|ram~642\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~642_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~76_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~44_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~60_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~28_q\,
	datab => \MemoriaRAM|ALT_INV_ram~60_q\,
	datac => \MemoriaRAM|ALT_INV_ram~44_q\,
	datad => \MemoriaRAM|ALT_INV_ram~76_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~642_combout\);

\MemoriaRAM|ram~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~156_q\);

\MemoriaRAM|ram~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~188_q\);

\MemoriaRAM|ram~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~172_q\);

\MemoriaRAM|ram~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~204_q\);

\MemoriaRAM|ram~643\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~643_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~204_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~172_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~188_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~156_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~156_q\,
	datab => \MemoriaRAM|ALT_INV_ram~188_q\,
	datac => \MemoriaRAM|ALT_INV_ram~172_q\,
	datad => \MemoriaRAM|ALT_INV_ram~204_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~643_combout\);

\MemoriaRAM|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~92_q\);

\MemoriaRAM|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~124_q\);

\MemoriaRAM|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~108_q\);

\MemoriaRAM|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~140_q\);

\MemoriaRAM|ram~644\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~644_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~140_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~108_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~124_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~92_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~92_q\,
	datab => \MemoriaRAM|ALT_INV_ram~124_q\,
	datac => \MemoriaRAM|ALT_INV_ram~108_q\,
	datad => \MemoriaRAM|ALT_INV_ram~140_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~644_combout\);

\MemoriaRAM|ram~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~220_q\);

\MemoriaRAM|ram~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~252_q\);

\MemoriaRAM|ram~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~236_q\);

\MemoriaRAM|ram~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~268_q\);

\MemoriaRAM|ram~645\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~645_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~268_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~236_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~252_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~220_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~220_q\,
	datab => \MemoriaRAM|ALT_INV_ram~252_q\,
	datac => \MemoriaRAM|ALT_INV_ram~236_q\,
	datad => \MemoriaRAM|ALT_INV_ram~268_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~645_combout\);

\MemoriaRAM|ram~646\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~646_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~645_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~644_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~643_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~642_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~642_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~643_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~644_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~645_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~646_combout\);

\MemoriaRAM|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~284_q\);

\MemoriaRAM|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~316_q\);

\MemoriaRAM|ram~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~348_q\);

\MemoriaRAM|ram~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~380_q\);

\MemoriaRAM|ram~647\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~647_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~380_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~348_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~316_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~284_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~284_q\,
	datab => \MemoriaRAM|ALT_INV_ram~316_q\,
	datac => \MemoriaRAM|ALT_INV_ram~348_q\,
	datad => \MemoriaRAM|ALT_INV_ram~380_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~647_combout\);

\MemoriaRAM|ram~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~412_q\);

\MemoriaRAM|ram~444\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~444_q\);

\MemoriaRAM|ram~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~476_q\);

\MemoriaRAM|ram~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~508_q\);

\MemoriaRAM|ram~648\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~648_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~508_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~476_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~444_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~412_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~412_q\,
	datab => \MemoriaRAM|ALT_INV_ram~444_q\,
	datac => \MemoriaRAM|ALT_INV_ram~476_q\,
	datad => \MemoriaRAM|ALT_INV_ram~508_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~648_combout\);

\MemoriaRAM|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~300_q\);

\MemoriaRAM|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~332_q\);

\MemoriaRAM|ram~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~364_q\);

\MemoriaRAM|ram~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~396_q\);

\MemoriaRAM|ram~649\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~649_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~396_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~364_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~332_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~300_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~300_q\,
	datab => \MemoriaRAM|ALT_INV_ram~332_q\,
	datac => \MemoriaRAM|ALT_INV_ram~364_q\,
	datad => \MemoriaRAM|ALT_INV_ram~396_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~649_combout\);

\MemoriaRAM|ram~428\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~428_q\);

\MemoriaRAM|ram~460\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~460_q\);

\MemoriaRAM|ram~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~492_q\);

\MemoriaRAM|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \MemoriaRAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~524_q\);

\MemoriaRAM|ram~650\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~650_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~524_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~492_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~460_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~428_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~428_q\,
	datab => \MemoriaRAM|ALT_INV_ram~460_q\,
	datac => \MemoriaRAM|ALT_INV_ram~492_q\,
	datad => \MemoriaRAM|ALT_INV_ram~524_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~650_combout\);

\MemoriaRAM|ram~651\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~651_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~650_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~649_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~648_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~647_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~647_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~648_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~649_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~650_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~651_combout\);

\MemoriaRAM|ram~652\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~652_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~651_combout\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~646_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~641_combout\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~21_combout\ & ( \MemoriaRAM|ram~636_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~636_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~641_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~646_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~651_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	combout => \MemoriaRAM|ram~652_combout\);

\Processador|MUX1|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[5]~4_combout\ = (!\AndSW0_7|saida~1_combout\ & ((\MemoriaRAM|ram~652_combout\))) # (\AndSW0_7|saida~1_combout\ & (\SW[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndSW0_7|ALT_INV_saida~1_combout\,
	datab => \ALT_INV_SW[5]~input_o\,
	datac => \MemoriaRAM|ALT_INV_ram~652_combout\,
	combout => \Processador|MUX1|saida_MUX[5]~4_combout\);

\Processador|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~9_sumout\ = SUM(( (!\Processador|decoder|Equal10~3_combout\ & (((!\Processador|MUX1|saida_MUX[5]~4_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (((!\ROM_instrucao|memROM~40_combout\)) # (\Processador|PC|DOUT\(8)))) ) + 
-- ( \Processador|REGA|DOUT\(5) ) + ( \Processador|ULA1|Add1~6\ ))
-- \Processador|ULA1|Add1~10\ = CARRY(( (!\Processador|decoder|Equal10~3_combout\ & (((!\Processador|MUX1|saida_MUX[5]~4_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (((!\ROM_instrucao|memROM~40_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(5) ) + ( \Processador|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~40_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(5),
	cin => \Processador|ULA1|Add1~6\,
	sumout => \Processador|ULA1|Add1~9_sumout\,
	cout => \Processador|ULA1|Add1~10\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\Processador|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~25_sumout\ = SUM(( (!\Processador|decoder|Equal10~3_combout\ & (((\Processador|MUX1|saida_MUX[6]~5_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~26_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add0~22\ ))
-- \Processador|ULA1|Add0~26\ = CARRY(( (!\Processador|decoder|Equal10~3_combout\ & (((\Processador|MUX1|saida_MUX[6]~5_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~26_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~26_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(6),
	cin => \Processador|ULA1|Add0~22\,
	sumout => \Processador|ULA1|Add0~25_sumout\,
	cout => \Processador|ULA1|Add0~26\);

\Processador|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[6]~6_combout\ = ( \Processador|decoder|saida~1_combout\ & ( (!\Processador|decoder|Equal10~3_combout\ & ((\Processador|MUX1|saida_MUX[6]~5_combout\))) # (\Processador|decoder|Equal10~3_combout\ & 
-- (\ROM_instrucao|memROM~16_combout\)) ) ) # ( !\Processador|decoder|saida~1_combout\ & ( \Processador|ULA1|Add1~13_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000111010001110100000000111111110001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	datad => \Processador|ULA1|ALT_INV_Add1~13_sumout\,
	datae => \Processador|decoder|ALT_INV_saida~1_combout\,
	combout => \Processador|ULA1|saida[6]~6_combout\);

\Processador|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|ULA1|Add0~25_sumout\,
	asdata => \Processador|ULA1|saida[6]~6_combout\,
	sload => \Processador|decoder|Equal10~4_combout\,
	ena => \Processador|decoder|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(6));

\MemoriaRAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~21_q\);

\MemoriaRAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~37_q\);

\MemoriaRAM|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~85_q\);

\MemoriaRAM|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~101_q\);

\MemoriaRAM|ram~653\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~653_combout\ = ( \ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~101_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~85_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~37_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~21_q\,
	datab => \MemoriaRAM|ALT_INV_ram~37_q\,
	datac => \MemoriaRAM|ALT_INV_ram~85_q\,
	datad => \MemoriaRAM|ALT_INV_ram~101_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~653_combout\);

\MemoriaRAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~29_q\);

\MemoriaRAM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~45_q\);

\MemoriaRAM|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~93_q\);

\MemoriaRAM|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~109_q\);

\MemoriaRAM|ram~654\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~654_combout\ = ( \ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~109_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~93_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~45_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~29_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~29_q\,
	datab => \MemoriaRAM|ALT_INV_ram~45_q\,
	datac => \MemoriaRAM|ALT_INV_ram~93_q\,
	datad => \MemoriaRAM|ALT_INV_ram~109_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~654_combout\);

\MemoriaRAM|ram~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~149_q\);

\MemoriaRAM|ram~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~165_q\);

\MemoriaRAM|ram~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~213_q\);

\MemoriaRAM|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~229_q\);

\MemoriaRAM|ram~655\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~655_combout\ = ( \ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~229_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~213_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~165_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~149_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~149_q\,
	datab => \MemoriaRAM|ALT_INV_ram~165_q\,
	datac => \MemoriaRAM|ALT_INV_ram~213_q\,
	datad => \MemoriaRAM|ALT_INV_ram~229_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~655_combout\);

\MemoriaRAM|ram~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~157_q\);

\MemoriaRAM|ram~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~173_q\);

\MemoriaRAM|ram~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~221_q\);

\MemoriaRAM|ram~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~237_q\);

\MemoriaRAM|ram~656\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~656_combout\ = ( \ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~237_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~221_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~173_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~157_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~157_q\,
	datab => \MemoriaRAM|ALT_INV_ram~173_q\,
	datac => \MemoriaRAM|ALT_INV_ram~221_q\,
	datad => \MemoriaRAM|ALT_INV_ram~237_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~656_combout\);

\MemoriaRAM|ram~657\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~657_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~656_combout\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~655_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~654_combout\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~653_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~653_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~654_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~655_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~656_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~657_combout\);

\MemoriaRAM|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~277_q\);

\MemoriaRAM|ram~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~405_q\);

\MemoriaRAM|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~293_q\);

\MemoriaRAM|ram~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~421_q\);

\MemoriaRAM|ram~658\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~658_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~421_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~293_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~405_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~277_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~277_q\,
	datab => \MemoriaRAM|ALT_INV_ram~405_q\,
	datac => \MemoriaRAM|ALT_INV_ram~293_q\,
	datad => \MemoriaRAM|ALT_INV_ram~421_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~658_combout\);

\MemoriaRAM|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~285_q\);

\MemoriaRAM|ram~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~413_q\);

\MemoriaRAM|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~301_q\);

\MemoriaRAM|ram~429\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~429_q\);

\MemoriaRAM|ram~659\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~659_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~429_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~301_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~413_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~285_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~285_q\,
	datab => \MemoriaRAM|ALT_INV_ram~413_q\,
	datac => \MemoriaRAM|ALT_INV_ram~301_q\,
	datad => \MemoriaRAM|ALT_INV_ram~429_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~659_combout\);

\MemoriaRAM|ram~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~341_q\);

\MemoriaRAM|ram~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~469_q\);

\MemoriaRAM|ram~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~357_q\);

\MemoriaRAM|ram~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~485_q\);

\MemoriaRAM|ram~660\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~660_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~485_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~357_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~469_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~341_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~341_q\,
	datab => \MemoriaRAM|ALT_INV_ram~469_q\,
	datac => \MemoriaRAM|ALT_INV_ram~357_q\,
	datad => \MemoriaRAM|ALT_INV_ram~485_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~660_combout\);

\MemoriaRAM|ram~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~349_q\);

\MemoriaRAM|ram~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~477_q\);

\MemoriaRAM|ram~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~365_q\);

\MemoriaRAM|ram~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~493_q\);

\MemoriaRAM|ram~661\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~661_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~493_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~365_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~477_q\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~349_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~349_q\,
	datab => \MemoriaRAM|ALT_INV_ram~477_q\,
	datac => \MemoriaRAM|ALT_INV_ram~365_q\,
	datad => \MemoriaRAM|ALT_INV_ram~493_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~661_combout\);

\MemoriaRAM|ram~662\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~662_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~661_combout\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~660_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~659_combout\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~658_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~658_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~659_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~660_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~661_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~662_combout\);

\MemoriaRAM|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~728_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~61_q\);

\MemoriaRAM|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~792_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~77_q\);

\MemoriaRAM|ram~663\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~663_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~77_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~69_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~61_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~53_q\,
	datab => \MemoriaRAM|ALT_INV_ram~61_q\,
	datac => \MemoriaRAM|ALT_INV_ram~69_q\,
	datad => \MemoriaRAM|ALT_INV_ram~77_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~663_combout\);

\MemoriaRAM|ram~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~181_q\);

\MemoriaRAM|ram~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~189_q\);

\MemoriaRAM|ram~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~197_q\);

\MemoriaRAM|ram~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~205_q\);

\MemoriaRAM|ram~664\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~664_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~205_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~197_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~189_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~181_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~181_q\,
	datab => \MemoriaRAM|ALT_INV_ram~189_q\,
	datac => \MemoriaRAM|ALT_INV_ram~197_q\,
	datad => \MemoriaRAM|ALT_INV_ram~205_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~664_combout\);

\MemoriaRAM|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~117_q\);

\MemoriaRAM|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~125_q\);

\MemoriaRAM|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~133_q\);

\MemoriaRAM|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~141_q\);

\MemoriaRAM|ram~665\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~665_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~141_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~133_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~125_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~117_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~117_q\,
	datab => \MemoriaRAM|ALT_INV_ram~125_q\,
	datac => \MemoriaRAM|ALT_INV_ram~133_q\,
	datad => \MemoriaRAM|ALT_INV_ram~141_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~665_combout\);

\MemoriaRAM|ram~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~245_q\);

\MemoriaRAM|ram~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~253_q\);

\MemoriaRAM|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~261_q\);

\MemoriaRAM|ram~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~269_q\);

\MemoriaRAM|ram~666\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~666_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~269_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~261_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~253_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~28_combout\ & ( \MemoriaRAM|ram~245_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~245_q\,
	datab => \MemoriaRAM|ALT_INV_ram~253_q\,
	datac => \MemoriaRAM|ALT_INV_ram~261_q\,
	datad => \MemoriaRAM|ALT_INV_ram~269_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	combout => \MemoriaRAM|ram~666_combout\);

\MemoriaRAM|ram~667\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~667_combout\ = ( \ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~666_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~665_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~664_combout\ ) ) ) # ( !\ROM_instrucao|memROM~36_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~663_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~663_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~664_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~665_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~666_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~667_combout\);

\MemoriaRAM|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~309_q\);

\MemoriaRAM|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~325_q\);

\MemoriaRAM|ram~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~373_q\);

\MemoriaRAM|ram~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~389_q\);

\MemoriaRAM|ram~668\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~668_combout\ = ( \ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~389_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~373_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~325_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~309_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~309_q\,
	datab => \MemoriaRAM|ALT_INV_ram~325_q\,
	datac => \MemoriaRAM|ALT_INV_ram~373_q\,
	datad => \MemoriaRAM|ALT_INV_ram~389_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~668_combout\);

\MemoriaRAM|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~317_q\);

\MemoriaRAM|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~333_q\);

\MemoriaRAM|ram~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~381_q\);

\MemoriaRAM|ram~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~397_q\);

\MemoriaRAM|ram~669\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~669_combout\ = ( \ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~397_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~381_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~333_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~317_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~317_q\,
	datab => \MemoriaRAM|ALT_INV_ram~333_q\,
	datac => \MemoriaRAM|ALT_INV_ram~381_q\,
	datad => \MemoriaRAM|ALT_INV_ram~397_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~669_combout\);

\MemoriaRAM|ram~437\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~437_q\);

\MemoriaRAM|ram~453\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~453_q\);

\MemoriaRAM|ram~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~501_q\);

\MemoriaRAM|ram~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~517_q\);

\MemoriaRAM|ram~670\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~670_combout\ = ( \ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~517_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~501_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~453_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~437_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~437_q\,
	datab => \MemoriaRAM|ALT_INV_ram~453_q\,
	datac => \MemoriaRAM|ALT_INV_ram~501_q\,
	datad => \MemoriaRAM|ALT_INV_ram~517_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~670_combout\);

\MemoriaRAM|ram~445\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~445_q\);

\MemoriaRAM|ram~461\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~461_q\);

\MemoriaRAM|ram~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~509_q\);

\MemoriaRAM|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \MemoriaRAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~525_q\);

\MemoriaRAM|ram~671\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~671_combout\ = ( \ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~525_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~509_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~461_q\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~445_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~445_q\,
	datab => \MemoriaRAM|ALT_INV_ram~461_q\,
	datac => \MemoriaRAM|ALT_INV_ram~509_q\,
	datad => \MemoriaRAM|ALT_INV_ram~525_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~671_combout\);

\MemoriaRAM|ram~672\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~672_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~671_combout\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~670_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~669_combout\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~668_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~668_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~669_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~670_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~671_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~672_combout\);

\MemoriaRAM|ram~673\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~673_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~672_combout\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~667_combout\ ) ) 
-- ) # ( \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~662_combout\ ) ) ) # ( !\ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~1_combout\ & ( \MemoriaRAM|ram~657_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~657_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~662_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~667_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~672_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~673_combout\);

\Processador|MUX1|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[6]~5_combout\ = (!\AndSW0_7|saida~1_combout\ & ((\MemoriaRAM|ram~673_combout\))) # (\AndSW0_7|saida~1_combout\ & (\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndSW0_7|ALT_INV_saida~1_combout\,
	datab => \ALT_INV_SW[6]~input_o\,
	datac => \MemoriaRAM|ALT_INV_ram~673_combout\,
	combout => \Processador|MUX1|saida_MUX[6]~5_combout\);

\Processador|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~13_sumout\ = SUM(( (!\Processador|decoder|Equal10~3_combout\ & (((!\Processador|MUX1|saida_MUX[6]~5_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (((!\ROM_instrucao|memROM~26_combout\)) # (\Processador|PC|DOUT\(8)))) ) + 
-- ( \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add1~10\ ))
-- \Processador|ULA1|Add1~14\ = CARRY(( (!\Processador|decoder|Equal10~3_combout\ & (((!\Processador|MUX1|saida_MUX[6]~5_combout\)))) # (\Processador|decoder|Equal10~3_combout\ & (((!\ROM_instrucao|memROM~26_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~26_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(6),
	cin => \Processador|ULA1|Add1~10\,
	sumout => \Processador|ULA1|Add1~13_sumout\,
	cout => \Processador|ULA1|Add1~14\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\Data_IN[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[7]~8_combout\ = (!\AndSW0_7|saida~1_combout\ & ((\MemoriaRAM|ram~694_combout\))) # (\AndSW0_7|saida~1_combout\ & (\SW[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndSW0_7|ALT_INV_saida~1_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \MemoriaRAM|ALT_INV_ram~694_combout\,
	combout => \Data_IN[7]~8_combout\);

\Processador|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~29_sumout\ = SUM(( (!\Processador|decoder|Equal10~3_combout\ & \Data_IN[7]~8_combout\) ) + ( \Processador|REGA|DOUT\(7) ) + ( \Processador|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datad => \ALT_INV_Data_IN[7]~8_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(7),
	cin => \Processador|ULA1|Add0~26\,
	sumout => \Processador|ULA1|Add0~29_sumout\);

\Processador|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[7]~7_combout\ = (!\Processador|decoder|saida~1_combout\ & (((\Processador|ULA1|Add1~17_sumout\)))) # (\Processador|decoder|saida~1_combout\ & (!\Processador|decoder|Equal10~3_combout\ & ((\Data_IN[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111010001100000011101000110000001110100011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datab => \Processador|ULA1|ALT_INV_Add1~17_sumout\,
	datac => \Processador|decoder|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_Data_IN[7]~8_combout\,
	combout => \Processador|ULA1|saida[7]~7_combout\);

\Processador|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|ULA1|Add0~29_sumout\,
	asdata => \Processador|ULA1|saida[7]~7_combout\,
	sload => \Processador|decoder|Equal10~4_combout\,
	ena => \Processador|decoder|saida[5]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(7));

\MemoriaRAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~22_q\);

\MemoriaRAM|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~54_q\);

\MemoriaRAM|ram~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~150_q\);

\MemoriaRAM|ram~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~182_q\);

\MemoriaRAM|ram~674\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~674_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~182_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~150_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~54_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~22_q\,
	datab => \MemoriaRAM|ALT_INV_ram~54_q\,
	datac => \MemoriaRAM|ALT_INV_ram~150_q\,
	datad => \MemoriaRAM|ALT_INV_ram~182_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~674_combout\);

\MemoriaRAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~30_q\);

\MemoriaRAM|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~62_q\);

\MemoriaRAM|ram~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~158_q\);

\MemoriaRAM|ram~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~190_q\);

\MemoriaRAM|ram~675\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~675_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~190_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~158_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~62_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~30_q\,
	datab => \MemoriaRAM|ALT_INV_ram~62_q\,
	datac => \MemoriaRAM|ALT_INV_ram~158_q\,
	datad => \MemoriaRAM|ALT_INV_ram~190_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~675_combout\);

\MemoriaRAM|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~86_q\);

\MemoriaRAM|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~118_q\);

\MemoriaRAM|ram~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~214_q\);

\MemoriaRAM|ram~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~246_q\);

\MemoriaRAM|ram~676\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~676_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~246_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~214_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~118_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~86_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~86_q\,
	datab => \MemoriaRAM|ALT_INV_ram~118_q\,
	datac => \MemoriaRAM|ALT_INV_ram~214_q\,
	datad => \MemoriaRAM|ALT_INV_ram~246_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~676_combout\);

\MemoriaRAM|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~94_q\);

\MemoriaRAM|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~126_q\);

\MemoriaRAM|ram~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~222_q\);

\MemoriaRAM|ram~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~254_q\);

\MemoriaRAM|ram~677\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~677_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~254_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~222_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~126_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~94_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~94_q\,
	datab => \MemoriaRAM|ALT_INV_ram~126_q\,
	datac => \MemoriaRAM|ALT_INV_ram~222_q\,
	datad => \MemoriaRAM|ALT_INV_ram~254_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~677_combout\);

\MemoriaRAM|ram~678\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~678_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~677_combout\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~676_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~675_combout\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~674_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~674_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~675_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~676_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~677_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~678_combout\);

\MemoriaRAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~38_q\);

\MemoriaRAM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~764_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~46_q\);

\MemoriaRAM|ram~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~768_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~166_q\);

\MemoriaRAM|ram~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~772_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~174_q\);

\MemoriaRAM|ram~679\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~679_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~174_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~166_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~46_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~38_q\,
	datab => \MemoriaRAM|ALT_INV_ram~46_q\,
	datac => \MemoriaRAM|ALT_INV_ram~166_q\,
	datad => \MemoriaRAM|ALT_INV_ram~174_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~679_combout\);

\MemoriaRAM|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~792_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~70_q\);

\MemoriaRAM|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~800_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~78_q\);

\MemoriaRAM|ram~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~796_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~198_q\);

\MemoriaRAM|ram~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~804_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~206_q\);

\MemoriaRAM|ram~680\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~680_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~206_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~198_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~78_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~70_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~70_q\,
	datab => \MemoriaRAM|ALT_INV_ram~78_q\,
	datac => \MemoriaRAM|ALT_INV_ram~198_q\,
	datad => \MemoriaRAM|ALT_INV_ram~206_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~680_combout\);

\MemoriaRAM|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~776_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~102_q\);

\MemoriaRAM|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~780_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~110_q\);

\MemoriaRAM|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~784_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~230_q\);

\MemoriaRAM|ram~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~788_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~238_q\);

\MemoriaRAM|ram~681\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~681_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~238_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~230_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~110_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~102_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~102_q\,
	datab => \MemoriaRAM|ALT_INV_ram~110_q\,
	datac => \MemoriaRAM|ALT_INV_ram~230_q\,
	datad => \MemoriaRAM|ALT_INV_ram~238_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~681_combout\);

\MemoriaRAM|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~808_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~134_q\);

\MemoriaRAM|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~816_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~142_q\);

\MemoriaRAM|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~812_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~262_q\);

\MemoriaRAM|ram~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~820_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~270_q\);

\MemoriaRAM|ram~682\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~682_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~270_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~262_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~142_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~134_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~134_q\,
	datab => \MemoriaRAM|ALT_INV_ram~142_q\,
	datac => \MemoriaRAM|ALT_INV_ram~262_q\,
	datad => \MemoriaRAM|ALT_INV_ram~270_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~682_combout\);

\MemoriaRAM|ram~683\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~683_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~682_combout\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~681_combout\ ) ) 
-- ) # ( \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~680_combout\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~679_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~679_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~680_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~681_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~682_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~683_combout\);

\MemoriaRAM|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~278_q\);

\MemoriaRAM|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~310_q\);

\MemoriaRAM|ram~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~342_q\);

\MemoriaRAM|ram~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~374_q\);

\MemoriaRAM|ram~684\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~684_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~374_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~342_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~310_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~278_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~278_q\,
	datab => \MemoriaRAM|ALT_INV_ram~310_q\,
	datac => \MemoriaRAM|ALT_INV_ram~342_q\,
	datad => \MemoriaRAM|ALT_INV_ram~374_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~684_combout\);

\MemoriaRAM|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~286_q\);

\MemoriaRAM|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~318_q\);

\MemoriaRAM|ram~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~350_q\);

\MemoriaRAM|ram~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~382_q\);

\MemoriaRAM|ram~685\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~685_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~382_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~350_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~318_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~286_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~286_q\,
	datab => \MemoriaRAM|ALT_INV_ram~318_q\,
	datac => \MemoriaRAM|ALT_INV_ram~350_q\,
	datad => \MemoriaRAM|ALT_INV_ram~382_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~685_combout\);

\MemoriaRAM|ram~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~406_q\);

\MemoriaRAM|ram~438\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~438_q\);

\MemoriaRAM|ram~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~470_q\);

\MemoriaRAM|ram~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~502_q\);

\MemoriaRAM|ram~686\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~686_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~502_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~470_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~438_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~406_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~406_q\,
	datab => \MemoriaRAM|ALT_INV_ram~438_q\,
	datac => \MemoriaRAM|ALT_INV_ram~470_q\,
	datad => \MemoriaRAM|ALT_INV_ram~502_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~686_combout\);

\MemoriaRAM|ram~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~414_q\);

\MemoriaRAM|ram~446\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~446_q\);

\MemoriaRAM|ram~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~478_q\);

\MemoriaRAM|ram~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~510_q\);

\MemoriaRAM|ram~687\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~687_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~510_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~478_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~446_q\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~414_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~414_q\,
	datab => \MemoriaRAM|ALT_INV_ram~446_q\,
	datac => \MemoriaRAM|ALT_INV_ram~478_q\,
	datad => \MemoriaRAM|ALT_INV_ram~510_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~687_combout\);

\MemoriaRAM|ram~688\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~688_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~687_combout\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~686_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~685_combout\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~684_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~684_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~685_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~686_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~687_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~688_combout\);

\MemoriaRAM|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~762_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~294_q\);

\MemoriaRAM|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~766_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~302_q\);

\MemoriaRAM|ram~422\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~770_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~422_q\);

\MemoriaRAM|ram~430\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~774_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~430_q\);

\MemoriaRAM|ram~689\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~689_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~430_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~422_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~302_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~294_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~294_q\,
	datab => \MemoriaRAM|ALT_INV_ram~302_q\,
	datac => \MemoriaRAM|ALT_INV_ram~422_q\,
	datad => \MemoriaRAM|ALT_INV_ram~430_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~689_combout\);

\MemoriaRAM|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~794_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~326_q\);

\MemoriaRAM|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~802_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~334_q\);

\MemoriaRAM|ram~454\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~798_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~454_q\);

\MemoriaRAM|ram~462\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~806_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~462_q\);

\MemoriaRAM|ram~690\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~690_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~462_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~454_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~334_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~326_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~326_q\,
	datab => \MemoriaRAM|ALT_INV_ram~334_q\,
	datac => \MemoriaRAM|ALT_INV_ram~454_q\,
	datad => \MemoriaRAM|ALT_INV_ram~462_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~690_combout\);

\MemoriaRAM|ram~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~778_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~358_q\);

\MemoriaRAM|ram~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~782_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~366_q\);

\MemoriaRAM|ram~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~786_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~486_q\);

\MemoriaRAM|ram~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~790_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~494_q\);

\MemoriaRAM|ram~691\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~691_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~494_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~486_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~366_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~358_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~358_q\,
	datab => \MemoriaRAM|ALT_INV_ram~366_q\,
	datac => \MemoriaRAM|ALT_INV_ram~486_q\,
	datad => \MemoriaRAM|ALT_INV_ram~494_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~691_combout\);

\MemoriaRAM|ram~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~810_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~390_q\);

\MemoriaRAM|ram~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~818_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~398_q\);

\MemoriaRAM|ram~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~814_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~518_q\);

\MemoriaRAM|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \MemoriaRAM|ram~822_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~526_q\);

\MemoriaRAM|ram~692\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~692_combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~526_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( \ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~518_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~398_q\ ) ) ) # ( !\ROM_instrucao|memROM~21_combout\ & ( !\ROM_instrucao|memROM~36_combout\ & ( \MemoriaRAM|ram~390_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~390_q\,
	datab => \MemoriaRAM|ALT_INV_ram~398_q\,
	datac => \MemoriaRAM|ALT_INV_ram~518_q\,
	datad => \MemoriaRAM|ALT_INV_ram~526_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	combout => \MemoriaRAM|ram~692_combout\);

\MemoriaRAM|ram~693\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~693_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~692_combout\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~691_combout\ ) ) 
-- ) # ( \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~690_combout\ ) ) ) # ( !\ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~34_combout\ & ( \MemoriaRAM|ram~689_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~689_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~690_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~691_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~692_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~34_combout\,
	combout => \MemoriaRAM|ram~693_combout\);

\MemoriaRAM|ram~694\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~694_combout\ = ( \ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( \MemoriaRAM|ram~693_combout\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( \MemoriaRAM|ram~688_combout\ ) 
-- ) ) # ( \ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( \MemoriaRAM|ram~683_combout\ ) ) ) # ( !\ROM_instrucao|memROM~28_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( \MemoriaRAM|ram~678_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~678_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~683_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~688_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~693_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \MemoriaRAM|ram~694_combout\);

\Processador|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~17_sumout\ = SUM(( ((!\AndSW0_7|saida~1_combout\ & ((!\MemoriaRAM|ram~694_combout\))) # (\AndSW0_7|saida~1_combout\ & (!\SW[7]~input_o\))) # (\Processador|decoder|Equal10~3_combout\) ) + ( \Processador|REGA|DOUT\(7) ) + ( 
-- \Processador|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndSW0_7|ALT_INV_saida~1_combout\,
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \Processador|decoder|ALT_INV_Equal10~3_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~694_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(7),
	cin => \Processador|ULA1|Add1~14\,
	sumout => \Processador|ULA1|Add1~17_sumout\);

\Processador|ULA1|WideOr0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|WideOr0~1_combout\ = ( !\Processador|ULA1|Add1~5_sumout\ & ( (!\Processador|ULA1|Add1~21_sumout\ & (!\Processador|ULA1|Add1~25_sumout\ & (!\Processador|ULA1|Add1~29_sumout\ & !\Processador|ULA1|Add1~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ULA1|ALT_INV_Add1~21_sumout\,
	datab => \Processador|ULA1|ALT_INV_Add1~25_sumout\,
	datac => \Processador|ULA1|ALT_INV_Add1~29_sumout\,
	datad => \Processador|ULA1|ALT_INV_Add1~1_sumout\,
	datae => \Processador|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \Processador|ULA1|WideOr0~1_combout\);

\Processador|flagIgual|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|flagIgual|DOUT~0_combout\ = ( \Processador|flagIgual|DOUT~q\ & ( \Processador|ULA1|WideOr0~1_combout\ & ( (!\Processador|decoder|Equal10~2_combout\) # ((!\Processador|ULA1|Add1~9_sumout\ & (!\Processador|ULA1|Add1~13_sumout\ & 
-- !\Processador|ULA1|Add1~17_sumout\))) ) ) ) # ( !\Processador|flagIgual|DOUT~q\ & ( \Processador|ULA1|WideOr0~1_combout\ & ( (\Processador|decoder|Equal10~2_combout\ & (!\Processador|ULA1|Add1~9_sumout\ & (!\Processador|ULA1|Add1~13_sumout\ & 
-- !\Processador|ULA1|Add1~17_sumout\))) ) ) ) # ( \Processador|flagIgual|DOUT~q\ & ( !\Processador|ULA1|WideOr0~1_combout\ & ( !\Processador|decoder|Equal10~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001000000000000001110101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~2_combout\,
	datab => \Processador|ULA1|ALT_INV_Add1~9_sumout\,
	datac => \Processador|ULA1|ALT_INV_Add1~13_sumout\,
	datad => \Processador|ULA1|ALT_INV_Add1~17_sumout\,
	datae => \Processador|flagIgual|ALT_INV_DOUT~q\,
	dataf => \Processador|ULA1|ALT_INV_WideOr0~1_combout\,
	combout => \Processador|flagIgual|DOUT~0_combout\);

\Processador|flagIgual|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|flagIgual|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|flagIgual|DOUT~q\);

\Processador|decoder|saidaMux~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saidaMux~0_combout\ = ( \Processador|flagIgual|DOUT~q\ & ( (!\ROM_instrucao|memROM~4_combout\ & (\ROM_instrucao|memROM~25_combout\ & (\ROM_instrucao|memROM~10_combout\ & !\ROM_instrucao|memROM~14_combout\))) # 
-- (\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~25_combout\ & ((\ROM_instrucao|memROM~14_combout\)))) ) ) # ( !\Processador|flagIgual|DOUT~q\ & ( (!\ROM_instrucao|memROM~4_combout\ & (\ROM_instrucao|memROM~25_combout\ & 
-- (\ROM_instrucao|memROM~10_combout\ & !\ROM_instrucao|memROM~14_combout\))) # (\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~25_combout\ & (!\ROM_instrucao|memROM~10_combout\ & \ROM_instrucao|memROM~14_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000000000000100100010000000010010000000000001001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~25_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datae => \Processador|flagIgual|ALT_INV_DOUT~q\,
	combout => \Processador|decoder|saidaMux~0_combout\);

\Processador|reg_endretorno|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|incrementaPC|Add0~29_sumout\,
	ena => \Processador|decoder|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|reg_endretorno|DOUT\(7));

\Processador|MUX4x1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[7]~7_combout\ = (!\Processador|decoder|Equal14~0_combout\ & (!\Processador|decoder|saidaMux~0_combout\ & ((\Processador|incrementaPC|Add0~29_sumout\)))) # (\Processador|decoder|Equal14~0_combout\ & 
-- (((\Processador|reg_endretorno|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001110001011000000111000101100000011100010110000001110001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saidaMux~0_combout\,
	datab => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	datac => \Processador|reg_endretorno|ALT_INV_DOUT\(7),
	datad => \Processador|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[7]~7_combout\);

\Processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|MUX4x1|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(7));

\ROM_instrucao|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~28_combout\ = (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & (!\Processador|PC|DOUT\(8) & \ROM_instrucao|memROM~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(6),
	datab => \Processador|PC|ALT_INV_DOUT\(7),
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM_instrucao|ALT_INV_memROM~23_combout\,
	combout => \ROM_instrucao|memROM~28_combout\);

\Processador|reg_endretorno|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|incrementaPC|Add0~5_sumout\,
	ena => \Processador|decoder|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|reg_endretorno|DOUT\(1));

\Processador|MUX4x1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[1]~1_combout\ = ( \Processador|incrementaPC|Add0~5_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & (((!\Processador|decoder|Equal14~0_combout\) # (\Processador|reg_endretorno|DOUT\(1))))) # 
-- (\Processador|decoder|saidaMux~0_combout\ & (\ROM_instrucao|memROM~28_combout\)) ) ) # ( !\Processador|incrementaPC|Add0~5_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & (((\Processador|decoder|Equal14~0_combout\ & 
-- \Processador|reg_endretorno|DOUT\(1))))) # (\Processador|decoder|saidaMux~0_combout\ & (\ROM_instrucao|memROM~28_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datab => \Processador|decoder|ALT_INV_saidaMux~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	datad => \Processador|reg_endretorno|ALT_INV_DOUT\(1),
	datae => \Processador|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[1]~1_combout\);

\Processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|MUX4x1|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(1));

\ROM_instrucao|memROM~36\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~36_combout\ = ( !\Processador|PC|DOUT\(8) & ( \ROM_instrucao|memROM~35_combout\ & ( (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(6) & !\Processador|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(6),
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	datae => \Processador|PC|ALT_INV_DOUT\(8),
	dataf => \ROM_instrucao|ALT_INV_memROM~35_combout\,
	combout => \ROM_instrucao|memROM~36_combout\);

\Processador|reg_endretorno|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|incrementaPC|Add0~17_sumout\,
	ena => \Processador|decoder|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|reg_endretorno|DOUT\(4));

\Processador|MUX4x1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[4]~4_combout\ = ( \Processador|incrementaPC|Add0~17_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & (((!\Processador|decoder|Equal14~0_combout\) # (\Processador|reg_endretorno|DOUT\(4))))) # 
-- (\Processador|decoder|saidaMux~0_combout\ & (\ROM_instrucao|memROM~36_combout\)) ) ) # ( !\Processador|incrementaPC|Add0~17_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & (((\Processador|decoder|Equal14~0_combout\ & 
-- \Processador|reg_endretorno|DOUT\(4))))) # (\Processador|decoder|saidaMux~0_combout\ & (\ROM_instrucao|memROM~36_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~36_combout\,
	datab => \Processador|decoder|ALT_INV_saidaMux~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	datad => \Processador|reg_endretorno|ALT_INV_DOUT\(4),
	datae => \Processador|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[4]~4_combout\);

\Processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|MUX4x1|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(4));

\ROM_instrucao|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~16_combout\ = ( !\Processador|PC|DOUT\(8) & ( \ROM_instrucao|memROM~15_combout\ & ( (\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(6) & !\Processador|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(4),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \Processador|PC|ALT_INV_DOUT\(6),
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	datae => \Processador|PC|ALT_INV_DOUT\(8),
	dataf => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	combout => \ROM_instrucao|memROM~16_combout\);

\Processador|reg_endretorno|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|incrementaPC|Add0~25_sumout\,
	ena => \Processador|decoder|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|reg_endretorno|DOUT\(6));

\Processador|MUX4x1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[6]~6_combout\ = ( \Processador|incrementaPC|Add0~25_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & (((!\Processador|decoder|Equal14~0_combout\) # (\Processador|reg_endretorno|DOUT\(6))))) # 
-- (\Processador|decoder|saidaMux~0_combout\ & (\ROM_instrucao|memROM~16_combout\)) ) ) # ( !\Processador|incrementaPC|Add0~25_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & (((\Processador|decoder|Equal14~0_combout\ & 
-- \Processador|reg_endretorno|DOUT\(6))))) # (\Processador|decoder|saidaMux~0_combout\ & (\ROM_instrucao|memROM~16_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110100011101110100010001000111011101000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datab => \Processador|decoder|ALT_INV_saidaMux~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	datad => \Processador|reg_endretorno|ALT_INV_DOUT\(6),
	datae => \Processador|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[6]~6_combout\);

\Processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|MUX4x1|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(6));

\ROM_instrucao|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~21_combout\ = (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & (!\Processador|PC|DOUT\(8) & \ROM_instrucao|memROM~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(6),
	datab => \Processador|PC|ALT_INV_DOUT\(7),
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \ROM_instrucao|memROM~21_combout\);

\Processador|reg_endretorno|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|incrementaPC|Add0~1_sumout\,
	ena => \Processador|decoder|Equal10~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|reg_endretorno|DOUT\(0));

\Processador|MUX4x1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[0]~0_combout\ = ( \Processador|incrementaPC|Add0~1_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & (((!\Processador|decoder|Equal14~0_combout\) # (\Processador|reg_endretorno|DOUT\(0))))) # 
-- (\Processador|decoder|saidaMux~0_combout\ & (\ROM_instrucao|memROM~21_combout\)) ) ) # ( !\Processador|incrementaPC|Add0~1_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & (((\Processador|reg_endretorno|DOUT\(0) & 
-- \Processador|decoder|Equal14~0_combout\)))) # (\Processador|decoder|saidaMux~0_combout\ & (\ROM_instrucao|memROM~21_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100011101110111010001110100010001000111011101110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \Processador|decoder|ALT_INV_saidaMux~0_combout\,
	datac => \Processador|reg_endretorno|ALT_INV_DOUT\(0),
	datad => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	datae => \Processador|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[0]~0_combout\);

\Processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|MUX4x1|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(0));

\Processador|decoder|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~0_combout\ = ( !\ROM_instrucao|memROM~14_combout\ & ( (\ROM_instrucao|memROM~4_combout\ & (\ROM_instrucao|memROM~10_combout\ & ((!\ROM_instrucao|memROM~2_combout\) # (\ROM_instrucao|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100011000000000000000000000000001000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	combout => \Processador|decoder|Equal10~0_combout\);

\AndLedR|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndLedR|saida~0_combout\ = ( \ROM_instrucao|memROM~22_combout\ & ( (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & !\Processador|PC|DOUT\(8))) ) ) # ( !\ROM_instrucao|memROM~22_combout\ & ( (!\Processador|PC|DOUT\(6) & 
-- (!\Processador|PC|DOUT\(7) & (!\Processador|PC|DOUT\(8) & \ROM_instrucao|memROM~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000100000001000000000000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(6),
	datab => \Processador|PC|ALT_INV_DOUT\(7),
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~22_combout\,
	combout => \AndLedR|saida~0_combout\);

\AndLedR|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndLedR|saida~1_combout\ = ( !\ROM_instrucao|memROM~28_combout\ & ( !\AndLedR|saida~0_combout\ & ( (!\ROM_instrucao|memROM~1_combout\ & (\Processador|decoder|Equal10~0_combout\ & (!\ROM_instrucao|memROM~16_combout\ & \ROM_instrucao|memROM~19_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	dataf => \AndLedR|ALT_INV_saida~0_combout\,
	combout => \AndLedR|saida~1_combout\);

\RegistradorLedR|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \AndLedR|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(0));

\RegistradorLedR|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \AndLedR|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(1));

\RegistradorLedR|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \AndLedR|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(2));

\RegistradorLedR|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \AndLedR|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(3));

\RegistradorLedR|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(4),
	ena => \AndLedR|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(4));

\RegistradorLedR|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(5),
	ena => \AndLedR|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(5));

\RegistradorLedR|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(6),
	ena => \AndLedR|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(6));

\RegistradorLedR|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(7),
	ena => \AndLedR|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(7));

\Data_IN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~0_combout\ = ( !\ROM_instrucao|memROM~23_combout\ & ( (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & (!\Processador|PC|DOUT\(8) & \ROM_instrucao|memROM~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(6),
	datab => \Processador|PC|ALT_INV_DOUT\(7),
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~23_combout\,
	combout => \Data_IN[0]~0_combout\);

\AndLed8|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndLed8|saida~0_combout\ = ( \Data_IN[0]~0_combout\ & ( (!\ROM_instrucao|memROM~1_combout\ & (\Processador|decoder|Equal10~0_combout\ & (!\ROM_instrucao|memROM~16_combout\ & \ROM_instrucao|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \ALT_INV_Data_IN[0]~0_combout\,
	combout => \AndLed8|saida~0_combout\);

\flipFlopLed8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flipFlopLed8|DOUT~0_combout\ = (!\ROM_instrucao|memROM~24_combout\ & ((!\AndLed8|saida~0_combout\ & (\flipFlopLed8|DOUT~q\)) # (\AndLed8|saida~0_combout\ & ((\Processador|REGA|DOUT\(0)))))) # (\ROM_instrucao|memROM~24_combout\ & (\flipFlopLed8|DOUT~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100011101010101010001110101010101000111010101010100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \flipFlopLed8|ALT_INV_DOUT~q\,
	datab => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	datac => \Processador|REGA|ALT_INV_DOUT\(0),
	datad => \AndLed8|ALT_INV_saida~0_combout\,
	combout => \flipFlopLed8|DOUT~0_combout\);

\flipFlopLed8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \flipFlopLed8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopLed8|DOUT~q\);

\AndLed9|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndLed9|saida~0_combout\ = ( \ROM_instrucao|memROM~23_combout\ & ( (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & (!\Processador|PC|DOUT\(8) & !\ROM_instrucao|memROM~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(6),
	datab => \Processador|PC|ALT_INV_DOUT\(7),
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~23_combout\,
	combout => \AndLed9|saida~0_combout\);

\AndLed9|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndLed9|saida~1_combout\ = ( \AndLed9|saida~0_combout\ & ( (!\ROM_instrucao|memROM~1_combout\ & (\Processador|decoder|Equal10~0_combout\ & (!\ROM_instrucao|memROM~16_combout\ & \ROM_instrucao|memROM~19_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \AndLed9|ALT_INV_saida~0_combout\,
	combout => \AndLed9|saida~1_combout\);

\flipFlopLed9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flipFlopLed9|DOUT~0_combout\ = (!\ROM_instrucao|memROM~24_combout\ & ((!\AndLed9|saida~1_combout\ & (\flipFlopLed9|DOUT~q\)) # (\AndLed9|saida~1_combout\ & ((\Processador|REGA|DOUT\(0)))))) # (\ROM_instrucao|memROM~24_combout\ & (\flipFlopLed9|DOUT~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100011101010101010001110101010101000111010101010100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \flipFlopLed9|ALT_INV_DOUT~q\,
	datab => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	datac => \Processador|REGA|ALT_INV_DOUT\(0),
	datad => \AndLed9|ALT_INV_saida~1_combout\,
	combout => \flipFlopLed9|DOUT~0_combout\);

\flipFlopLed9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \flipFlopLed9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopLed9|DOUT~q\);

\AndHEX5|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX5|saida~0_combout\ = ( !\ROM_instrucao|memROM~23_combout\ & ( (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & (!\Processador|PC|DOUT\(8) & \ROM_instrucao|memROM~22_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(6),
	datab => \Processador|PC|ALT_INV_DOUT\(7),
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM_instrucao|ALT_INV_memROM~22_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~23_combout\,
	combout => \AndHEX5|saida~0_combout\);

\AndHEX0|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX0|saida~0_combout\ = ( !\ROM_instrucao|memROM~21_combout\ & ( \AndHEX5|saida~0_combout\ & ( (!\ROM_instrucao|memROM~1_combout\ & (\Processador|decoder|Equal10~0_combout\ & (!\ROM_instrucao|memROM~16_combout\ & \ROM_instrucao|memROM~19_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \AndHEX5|ALT_INV_saida~0_combout\,
	combout => \AndHEX0|saida~0_combout\);

\RegistradorHEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \AndHEX0|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX0|DOUT\(0));

\RegistradorHEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \AndHEX0|saida~0_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \AndHEX0|saida~0_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \AndHEX0|saida~0_combout\,
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

\AndHEX1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX1|saida~0_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \Data_IN[0]~0_combout\ & ( (!\ROM_instrucao|memROM~1_combout\ & (\Processador|decoder|Equal10~0_combout\ & (!\ROM_instrucao|memROM~16_combout\ & \ROM_instrucao|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ALT_INV_Data_IN[0]~0_combout\,
	combout => \AndHEX1|saida~0_combout\);

\RegistradorHEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \AndHEX1|saida~0_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \AndHEX1|saida~0_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \AndHEX1|saida~0_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \AndHEX1|saida~0_combout\,
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

\AndHEX2|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX2|saida~0_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \AndLed9|saida~0_combout\ & ( (!\ROM_instrucao|memROM~1_combout\ & (\Processador|decoder|Equal10~0_combout\ & (!\ROM_instrucao|memROM~16_combout\ & \ROM_instrucao|memROM~19_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \AndLed9|ALT_INV_saida~0_combout\,
	combout => \AndHEX2|saida~0_combout\);

\RegistradorHEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \AndHEX2|saida~0_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \AndHEX2|saida~0_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \AndHEX2|saida~0_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \AndHEX2|saida~0_combout\,
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

\Data_IN[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~1_combout\ = ( \ROM_instrucao|memROM~23_combout\ & ( (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & (!\Processador|PC|DOUT\(8) & \ROM_instrucao|memROM~20_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(6),
	datab => \Processador|PC|ALT_INV_DOUT\(7),
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~23_combout\,
	combout => \Data_IN[0]~1_combout\);

\AndHEX3|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX3|saida~0_combout\ = ( \ROM_instrucao|memROM~24_combout\ & ( \Data_IN[0]~1_combout\ & ( (!\ROM_instrucao|memROM~1_combout\ & (\Processador|decoder|Equal10~0_combout\ & (!\ROM_instrucao|memROM~16_combout\ & \ROM_instrucao|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \ALT_INV_Data_IN[0]~1_combout\,
	combout => \AndHEX3|saida~0_combout\);

\RegistradorHEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \AndHEX3|saida~0_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \AndHEX3|saida~0_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \AndHEX3|saida~0_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \AndHEX3|saida~0_combout\,
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

\AndHEX4|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX4|saida~0_combout\ = ( !\ROM_instrucao|memROM~21_combout\ & ( \AndHEX5|saida~0_combout\ & ( (\ROM_instrucao|memROM~1_combout\ & (\Processador|decoder|Equal10~0_combout\ & (!\ROM_instrucao|memROM~16_combout\ & \ROM_instrucao|memROM~19_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \AndHEX5|ALT_INV_saida~0_combout\,
	combout => \AndHEX4|saida~0_combout\);

\RegistradorHEX4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \AndHEX4|saida~0_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \AndHEX4|saida~0_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \AndHEX4|saida~0_combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \AndHEX4|saida~0_combout\,
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

\AndHEX5|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX5|saida~combout\ = ( \ROM_instrucao|memROM~21_combout\ & ( \AndHEX5|saida~0_combout\ & ( (\ROM_instrucao|memROM~1_combout\ & (\Processador|decoder|Equal10~0_combout\ & (!\ROM_instrucao|memROM~16_combout\ & \ROM_instrucao|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	dataf => \AndHEX5|ALT_INV_saida~0_combout\,
	combout => \AndHEX5|saida~combout\);

\RegistradorHEX5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(0),
	ena => \AndHEX5|saida~combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(3),
	ena => \AndHEX5|saida~combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(1),
	ena => \AndHEX5|saida~combout\,
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
	clk => \divisor|tick~q\,
	d => \Processador|REGA|DOUT\(2),
	ena => \AndHEX5|saida~combout\,
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

\Processador|decoder|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida[1]~0_combout\ = (!\ROM_instrucao|memROM~25_combout\ & (!\ROM_instrucao|memROM~4_combout\ & \Processador|decoder|Equal10~1_combout\)) # (\ROM_instrucao|memROM~25_combout\ & ((!\Processador|decoder|Equal10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100000111000001110000011100000111000001110000011100000111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~25_combout\,
	datac => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	combout => \Processador|decoder|saida[1]~0_combout\);

\Processador|ULA1|WideOr0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|WideOr0~0_combout\ = (!\Processador|ULA1|Add1~21_sumout\ & (!\Processador|ULA1|Add1~25_sumout\ & !\Processador|ULA1|Add1~29_sumout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ULA1|ALT_INV_Add1~21_sumout\,
	datab => \Processador|ULA1|ALT_INV_Add1~25_sumout\,
	datac => \Processador|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \Processador|ULA1|WideOr0~0_combout\);

\Processador|ULA1|WideOr0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|WideOr0~combout\ = ( \Processador|ULA1|Add1~17_sumout\ & ( \Processador|ULA1|WideOr0~0_combout\ ) ) # ( !\Processador|ULA1|Add1~17_sumout\ & ( \Processador|ULA1|WideOr0~0_combout\ & ( (((\Processador|ULA1|Add1~13_sumout\) # 
-- (\Processador|ULA1|Add1~9_sumout\)) # (\Processador|ULA1|Add1~5_sumout\)) # (\Processador|ULA1|Add1~1_sumout\) ) ) ) # ( \Processador|ULA1|Add1~17_sumout\ & ( !\Processador|ULA1|WideOr0~0_combout\ ) ) # ( !\Processador|ULA1|Add1~17_sumout\ & ( 
-- !\Processador|ULA1|WideOr0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ULA1|ALT_INV_Add1~1_sumout\,
	datab => \Processador|ULA1|ALT_INV_Add1~5_sumout\,
	datac => \Processador|ULA1|ALT_INV_Add1~9_sumout\,
	datad => \Processador|ULA1|ALT_INV_Add1~13_sumout\,
	datae => \Processador|ULA1|ALT_INV_Add1~17_sumout\,
	dataf => \Processador|ULA1|ALT_INV_WideOr0~0_combout\,
	combout => \Processador|ULA1|WideOr0~combout\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\DebouceMem_key0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DebouceMem_key0|saidaQ~0_combout\ = !\KEY[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	combout => \DebouceMem_key0|saidaQ~0_combout\);

\DebouceMem_key0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \DebouceMem_key0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebouceMem_key0|saidaQ~q\);

\DebouceMem_key0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \DebouceMem_key0|saida~combout\ = LCELL((!\KEY[0]~input_o\ & !\DebouceMem_key0|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datab => \DebouceMem_key0|ALT_INV_saidaQ~q\,
	combout => \DebouceMem_key0|saida~combout\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\DebouceMem_key1|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DebouceMem_key1|saidaQ~0_combout\ = !\KEY[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	combout => \DebouceMem_key1|saidaQ~0_combout\);

\DebouceMem_key1|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \divisor|tick~q\,
	d => \DebouceMem_key1|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebouceMem_key1|saidaQ~q\);

\DebouceMem_key1|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \DebouceMem_key1|saida~combout\ = LCELL((!\KEY[1]~input_o\ & !\DebouceMem_key1|saidaQ~q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \DebouceMem_key1|ALT_INV_saidaQ~q\,
	combout => \DebouceMem_key1|saida~combout\);

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_SAIDA_AND_HEX0 <= \SAIDA_AND_HEX0~output_o\;

ww_DIN_HEX(0) <= \DIN_HEX[0]~output_o\;

ww_DIN_HEX(1) <= \DIN_HEX[1]~output_o\;

ww_DIN_HEX(2) <= \DIN_HEX[2]~output_o\;

ww_DIN_HEX(3) <= \DIN_HEX[3]~output_o\;

ww_SAIDA_AND_HEX1 <= \SAIDA_AND_HEX1~output_o\;

ww_SAIDA_AND_HEX2 <= \SAIDA_AND_HEX2~output_o\;

ww_SAIDA_AND_HEX3 <= \SAIDA_AND_HEX3~output_o\;

ww_SAIDA_AND_HEX4 <= \SAIDA_AND_HEX4~output_o\;

ww_SAIDA_AND_HEX5 <= \SAIDA_AND_HEX5~output_o\;

ww_SAIDA_AND_LED8 <= \SAIDA_AND_LED8~output_o\;

ww_SAIDA_AND_LED9 <= \SAIDA_AND_LED9~output_o\;

ww_SAIDA_AND_SW0_7 <= \SAIDA_AND_SW0_7~output_o\;

ww_CONTROLES(0) <= \CONTROLES[0]~output_o\;

ww_CONTROLES(1) <= \CONTROLES[1]~output_o\;

ww_CONTROLES(2) <= \CONTROLES[2]~output_o\;

ww_CONTROLES(3) <= \CONTROLES[3]~output_o\;

ww_ACUMULADOR(0) <= \ACUMULADOR[0]~output_o\;

ww_ACUMULADOR(1) <= \ACUMULADOR[1]~output_o\;

ww_ACUMULADOR(2) <= \ACUMULADOR[2]~output_o\;

ww_ACUMULADOR(3) <= \ACUMULADOR[3]~output_o\;

ww_ACUMULADOR(4) <= \ACUMULADOR[4]~output_o\;

ww_ACUMULADOR(5) <= \ACUMULADOR[5]~output_o\;

ww_ACUMULADOR(6) <= \ACUMULADOR[6]~output_o\;

ww_ACUMULADOR(7) <= \ACUMULADOR[7]~output_o\;

ww_INSTRUCAO(0) <= \INSTRUCAO[0]~output_o\;

ww_INSTRUCAO(1) <= \INSTRUCAO[1]~output_o\;

ww_INSTRUCAO(2) <= \INSTRUCAO[2]~output_o\;

ww_INSTRUCAO(3) <= \INSTRUCAO[3]~output_o\;

ww_INSTRUCAO(4) <= \INSTRUCAO[4]~output_o\;

ww_INSTRUCAO(5) <= \INSTRUCAO[5]~output_o\;

ww_INSTRUCAO(6) <= \INSTRUCAO[6]~output_o\;

ww_INSTRUCAO(7) <= \INSTRUCAO[7]~output_o\;

ww_INSTRUCAO(8) <= \INSTRUCAO[8]~output_o\;

ww_INSTRUCAO(9) <= \INSTRUCAO[9]~output_o\;

ww_INSTRUCAO(10) <= \INSTRUCAO[10]~output_o\;

ww_INSTRUCAO(11) <= \INSTRUCAO[11]~output_o\;

ww_INSTRUCAO(12) <= \INSTRUCAO[12]~output_o\;

ww_ED_KEY0 <= \ED_KEY0~output_o\;

ww_ED_KEY1 <= \ED_KEY1~output_o\;

ww_DB_MEM_KEY0 <= \DB_MEM_KEY0~output_o\;

ww_DB_MEM_KEY1 <= \DB_MEM_KEY1~output_o\;
END structure;


