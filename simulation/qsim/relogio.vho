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

-- DATE "04/18/2022 18:30:13"

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
	SAIDA_AND_LED8 : OUT std_logic;
	SAIDA_AND_LED9 : OUT std_logic;
	SAIDA_AND_SW0_7 : OUT std_logic;
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
SIGNAL ww_SAIDA_AND_LED8 : std_logic;
SIGNAL ww_SAIDA_AND_LED9 : std_logic;
SIGNAL ww_SAIDA_AND_SW0_7 : std_logic;
SIGNAL ww_ACUMULADOR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_INSTRUCAO : std_logic_vector(12 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~5_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~3_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~11_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~12_combout\ : std_logic;
SIGNAL \Processador|decoder|saida~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~4_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~10_combout\ : std_logic;
SIGNAL \Data_IN[0]~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~6_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~7_combout\ : std_logic;
SIGNAL \KEY3~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~1_combout\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~2_combout\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \KEY2~input_o\ : std_logic;
SIGNAL \Data_IN[0]~3_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~2_combout\ : std_logic;
SIGNAL \AndLedR|saida~1_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \FPGA_RESET~input_o\ : std_logic;
SIGNAL \Data_IN[0]~4_combout\ : std_logic;
SIGNAL \Data_IN[0]~5_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~0_combout\ : std_logic;
SIGNAL \AndLedR|saida~0_combout\ : std_logic;
SIGNAL \AndLedR|saida~3_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~2\ : std_logic;
SIGNAL \Processador|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~6\ : std_logic;
SIGNAL \Processador|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \AndSW0_7|saida~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \Processador|ULA1|Add1~10\ : std_logic;
SIGNAL \Processador|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \Processador|ULA1|Add1~14\ : std_logic;
SIGNAL \Processador|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \Processador|ULA1|Add1~18\ : std_logic;
SIGNAL \Processador|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \Processador|ULA1|Add1~22\ : std_logic;
SIGNAL \Processador|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \Processador|ULA1|Add1~26\ : std_logic;
SIGNAL \Processador|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~8_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~9_combout\ : std_logic;
SIGNAL \flipFlopLed8|DOUT~0_combout\ : std_logic;
SIGNAL \flipFlopLed8|DOUT~q\ : std_logic;
SIGNAL \flipFlopLed9|DOUT~0_combout\ : std_logic;
SIGNAL \flipFlopLed9|DOUT~q\ : std_logic;
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
SIGNAL \AndHEX3|saida~0_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AndLedR|saida~2_combout\ : std_logic;
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
SIGNAL \RegistradorLedR|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegistradorHEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RegistradorHEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Processador|decoder|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \AndSW0_7|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~0_combout\ : std_logic;
SIGNAL \AndLedR|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \AndLedR|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \AndLedR|ALT_INV_saida~0_combout\ : std_logic;
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
SIGNAL \RegistradorHEX0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \flipFlopLed9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \flipFlopLed8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Processador|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \Processador|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY2~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY0~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY1~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY3~input_o\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;

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
SAIDA_AND_LED8 <= ww_SAIDA_AND_LED8;
SAIDA_AND_LED9 <= ww_SAIDA_AND_LED9;
SAIDA_AND_SW0_7 <= ww_SAIDA_AND_SW0_7;
ACUMULADOR <= ww_ACUMULADOR;
INSTRUCAO <= ww_INSTRUCAO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Processador|decoder|ALT_INV_saida~0_combout\ <= NOT \Processador|decoder|saida~0_combout\;
\ROM_instrucao|ALT_INV_memROM~12_combout\ <= NOT \ROM_instrucao|memROM~12_combout\;
\ROM_instrucao|ALT_INV_memROM~11_combout\ <= NOT \ROM_instrucao|memROM~11_combout\;
\AndSW0_7|ALT_INV_saida~0_combout\ <= NOT \AndSW0_7|saida~0_combout\;
\ALT_INV_Data_IN[0]~0_combout\ <= NOT \Data_IN[0]~0_combout\;
\AndLedR|ALT_INV_saida~2_combout\ <= NOT \AndLedR|saida~2_combout\;
\ROM_instrucao|ALT_INV_memROM~10_combout\ <= NOT \ROM_instrucao|memROM~10_combout\;
\ROM_instrucao|ALT_INV_memROM~9_combout\ <= NOT \ROM_instrucao|memROM~9_combout\;
\ROM_instrucao|ALT_INV_memROM~8_combout\ <= NOT \ROM_instrucao|memROM~8_combout\;
\AndLedR|ALT_INV_saida~1_combout\ <= NOT \AndLedR|saida~1_combout\;
\ROM_instrucao|ALT_INV_memROM~7_combout\ <= NOT \ROM_instrucao|memROM~7_combout\;
\ROM_instrucao|ALT_INV_memROM~6_combout\ <= NOT \ROM_instrucao|memROM~6_combout\;
\AndLedR|ALT_INV_saida~0_combout\ <= NOT \AndLedR|saida~0_combout\;
\ROM_instrucao|ALT_INV_memROM~5_combout\ <= NOT \ROM_instrucao|memROM~5_combout\;
\ROM_instrucao|ALT_INV_memROM~4_combout\ <= NOT \ROM_instrucao|memROM~4_combout\;
\ROM_instrucao|ALT_INV_memROM~3_combout\ <= NOT \ROM_instrucao|memROM~3_combout\;
\ROM_instrucao|ALT_INV_memROM~2_combout\ <= NOT \ROM_instrucao|memROM~2_combout\;
\ROM_instrucao|ALT_INV_memROM~1_combout\ <= NOT \ROM_instrucao|memROM~1_combout\;
\ROM_instrucao|ALT_INV_memROM~0_combout\ <= NOT \ROM_instrucao|memROM~0_combout\;
\RegistradorHEX5|ALT_INV_DOUT\(1) <= NOT \RegistradorHEX5|DOUT\(1);
\RegistradorHEX5|ALT_INV_DOUT\(2) <= NOT \RegistradorHEX5|DOUT\(2);
\RegistradorHEX5|ALT_INV_DOUT\(3) <= NOT \RegistradorHEX5|DOUT\(3);
\RegistradorHEX5|ALT_INV_DOUT\(0) <= NOT \RegistradorHEX5|DOUT\(0);
\RegistradorHEX4|ALT_INV_DOUT\(1) <= NOT \RegistradorHEX4|DOUT\(1);
\RegistradorHEX4|ALT_INV_DOUT\(2) <= NOT \RegistradorHEX4|DOUT\(2);
\RegistradorHEX4|ALT_INV_DOUT\(3) <= NOT \RegistradorHEX4|DOUT\(3);
\RegistradorHEX4|ALT_INV_DOUT\(0) <= NOT \RegistradorHEX4|DOUT\(0);
\RegistradorHEX3|ALT_INV_DOUT\(1) <= NOT \RegistradorHEX3|DOUT\(1);
\RegistradorHEX3|ALT_INV_DOUT\(2) <= NOT \RegistradorHEX3|DOUT\(2);
\RegistradorHEX3|ALT_INV_DOUT\(3) <= NOT \RegistradorHEX3|DOUT\(3);
\RegistradorHEX3|ALT_INV_DOUT\(0) <= NOT \RegistradorHEX3|DOUT\(0);
\RegistradorHEX2|ALT_INV_DOUT\(1) <= NOT \RegistradorHEX2|DOUT\(1);
\RegistradorHEX2|ALT_INV_DOUT\(2) <= NOT \RegistradorHEX2|DOUT\(2);
\RegistradorHEX2|ALT_INV_DOUT\(3) <= NOT \RegistradorHEX2|DOUT\(3);
\RegistradorHEX2|ALT_INV_DOUT\(0) <= NOT \RegistradorHEX2|DOUT\(0);
\RegistradorHEX1|ALT_INV_DOUT\(1) <= NOT \RegistradorHEX1|DOUT\(1);
\RegistradorHEX1|ALT_INV_DOUT\(2) <= NOT \RegistradorHEX1|DOUT\(2);
\RegistradorHEX1|ALT_INV_DOUT\(3) <= NOT \RegistradorHEX1|DOUT\(3);
\RegistradorHEX1|ALT_INV_DOUT\(0) <= NOT \RegistradorHEX1|DOUT\(0);
\RegistradorHEX0|ALT_INV_DOUT\(1) <= NOT \RegistradorHEX0|DOUT\(1);
\RegistradorHEX0|ALT_INV_DOUT\(2) <= NOT \RegistradorHEX0|DOUT\(2);
\RegistradorHEX0|ALT_INV_DOUT\(3) <= NOT \RegistradorHEX0|DOUT\(3);
\RegistradorHEX0|ALT_INV_DOUT\(0) <= NOT \RegistradorHEX0|DOUT\(0);
\flipFlopLed9|ALT_INV_DOUT~q\ <= NOT \flipFlopLed9|DOUT~q\;
\flipFlopLed8|ALT_INV_DOUT~q\ <= NOT \flipFlopLed8|DOUT~q\;
\Processador|PC|ALT_INV_DOUT\(8) <= NOT \Processador|PC|DOUT\(8);
\Processador|PC|ALT_INV_DOUT\(7) <= NOT \Processador|PC|DOUT\(7);
\Processador|PC|ALT_INV_DOUT\(6) <= NOT \Processador|PC|DOUT\(6);
\Processador|PC|ALT_INV_DOUT\(5) <= NOT \Processador|PC|DOUT\(5);
\Processador|PC|ALT_INV_DOUT\(4) <= NOT \Processador|PC|DOUT\(4);
\Processador|PC|ALT_INV_DOUT\(3) <= NOT \Processador|PC|DOUT\(3);
\Processador|PC|ALT_INV_DOUT\(2) <= NOT \Processador|PC|DOUT\(2);
\Processador|PC|ALT_INV_DOUT\(1) <= NOT \Processador|PC|DOUT\(1);
\Processador|PC|ALT_INV_DOUT\(0) <= NOT \Processador|PC|DOUT\(0);
\Processador|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \Processador|ULA1|Add1~29_sumout\;
\Processador|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \Processador|ULA1|Add1~25_sumout\;
\Processador|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \Processador|ULA1|Add1~21_sumout\;
\Processador|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \Processador|ULA1|Add1~17_sumout\;
\Processador|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \Processador|ULA1|Add1~13_sumout\;
\Processador|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \Processador|ULA1|Add1~9_sumout\;
\Processador|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \Processador|ULA1|Add1~5_sumout\;
\Processador|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \Processador|ULA1|Add1~1_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \Processador|incrementaPC|Add0~21_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \Processador|incrementaPC|Add0~17_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \Processador|incrementaPC|Add0~9_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \Processador|incrementaPC|Add0~5_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \Processador|incrementaPC|Add0~1_sumout\;
\Processador|REGA|ALT_INV_DOUT\(7) <= NOT \Processador|REGA|DOUT\(7);
\Processador|REGA|ALT_INV_DOUT\(6) <= NOT \Processador|REGA|DOUT\(6);
\Processador|REGA|ALT_INV_DOUT\(5) <= NOT \Processador|REGA|DOUT\(5);
\Processador|REGA|ALT_INV_DOUT\(4) <= NOT \Processador|REGA|DOUT\(4);
\Processador|REGA|ALT_INV_DOUT\(3) <= NOT \Processador|REGA|DOUT\(3);
\Processador|REGA|ALT_INV_DOUT\(2) <= NOT \Processador|REGA|DOUT\(2);
\Processador|REGA|ALT_INV_DOUT\(1) <= NOT \Processador|REGA|DOUT\(1);
\Processador|REGA|ALT_INV_DOUT\(0) <= NOT \Processador|REGA|DOUT\(0);
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_FPGA_RESET~input_o\ <= NOT \FPGA_RESET~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY2~input_o\ <= NOT \KEY2~input_o\;
\ALT_INV_KEY0~input_o\ <= NOT \KEY0~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY1~input_o\ <= NOT \KEY1~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY3~input_o\ <= NOT \KEY3~input_o\;
\Processador|MUX1|ALT_INV_saida_MUX[2]~1_combout\ <= NOT \Processador|MUX1|saida_MUX[2]~1_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[1]~0_combout\ <= NOT \Processador|MUX1|saida_MUX[1]~0_combout\;
\ALT_INV_Data_IN[0]~5_combout\ <= NOT \Data_IN[0]~5_combout\;
\ALT_INV_Data_IN[0]~4_combout\ <= NOT \Data_IN[0]~4_combout\;
\ALT_INV_Data_IN[0]~3_combout\ <= NOT \Data_IN[0]~3_combout\;
\ALT_INV_Data_IN[0]~2_combout\ <= NOT \Data_IN[0]~2_combout\;
\ALT_INV_Data_IN[0]~1_combout\ <= NOT \Data_IN[0]~1_combout\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;

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
	i => \AndSW0_7|saida~0_combout\,
	devoe => ww_devoe,
	o => \SAIDA_AND_SW0_7~output_o\);

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
	i => \ROM_instrucao|memROM~8_combout\,
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
	i => \ROM_instrucao|memROM~9_combout\,
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
	i => \ROM_instrucao|memROM~10_combout\,
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
	i => GND,
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
	i => GND,
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
	i => \ROM_instrucao|memROM~2_combout\,
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
	i => \Data_IN[0]~0_combout\,
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
	i => \ROM_instrucao|memROM~1_combout\,
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
	i => \ROM_instrucao|memROM~1_combout\,
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
	i => \ROM_instrucao|memROM~11_combout\,
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
	i => \ROM_instrucao|memROM~12_combout\,
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
	i => GND,
	devoe => ww_devoe,
	o => \INSTRUCAO[12]~output_o\);

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

\Processador|MUX4x1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[1]~1_combout\ = ( \Processador|incrementaPC|Add0~5_sumout\ & ( ((!\Processador|PC|DOUT\(4)) # ((!\ROM_instrucao|memROM~3_combout\) # (!\ROM_instrucao|memROM~5_combout\))) # (\Processador|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datae => \Processador|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[1]~1_combout\);

\Processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|MUX4x1|saida_MUX[1]~1_combout\,
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

\Processador|MUX4x1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[2]~2_combout\ = ( \Processador|incrementaPC|Add0~9_sumout\ & ( ((!\Processador|PC|DOUT\(4)) # ((!\ROM_instrucao|memROM~3_combout\) # (!\ROM_instrucao|memROM~5_combout\))) # (\Processador|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datae => \Processador|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[2]~2_combout\);

\Processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|MUX4x1|saida_MUX[2]~2_combout\,
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

\Processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|incrementaPC|Add0~13_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(3));

\ROM_instrucao|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~5_combout\ = (!\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(3)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000100000001000000010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~5_combout\);

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

\Processador|MUX4x1|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[5]~4_combout\ = ( \Processador|incrementaPC|Add0~21_sumout\ & ( ((!\Processador|PC|DOUT\(4)) # ((!\ROM_instrucao|memROM~3_combout\) # (!\ROM_instrucao|memROM~5_combout\))) # (\Processador|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datae => \Processador|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[5]~4_combout\);

\Processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|MUX4x1|saida_MUX[5]~4_combout\,
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(8));

\ROM_instrucao|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~3_combout\ = (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(7) & !\Processador|PC|DOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(5),
	datab => \Processador|PC|ALT_INV_DOUT\(6),
	datac => \Processador|PC|ALT_INV_DOUT\(7),
	datad => \Processador|PC|ALT_INV_DOUT\(8),
	combout => \ROM_instrucao|memROM~3_combout\);

\Processador|MUX4x1|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[4]~3_combout\ = ( \Processador|incrementaPC|Add0~17_sumout\ & ( ((!\Processador|PC|DOUT\(4)) # ((!\ROM_instrucao|memROM~3_combout\) # (!\ROM_instrucao|memROM~5_combout\))) # (\Processador|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datae => \Processador|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[4]~3_combout\);

\Processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|MUX4x1|saida_MUX[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(4));

\Processador|MUX4x1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[0]~0_combout\ = ( \Processador|incrementaPC|Add0~1_sumout\ & ( ((!\Processador|PC|DOUT\(4)) # ((!\ROM_instrucao|memROM~3_combout\) # (!\ROM_instrucao|memROM~5_combout\))) # (\Processador|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111110100000000000000001111111111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datae => \Processador|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[0]~0_combout\);

\Processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|MUX4x1|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(0));

\ROM_instrucao|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~1_combout\ = ( !\Processador|PC|DOUT\(8) & ( (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(6) & !\Processador|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(4),
	datab => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \Processador|PC|ALT_INV_DOUT\(6),
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	datae => \Processador|PC|ALT_INV_DOUT\(8),
	combout => \ROM_instrucao|memROM~1_combout\);

\ROM_instrucao|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~11_combout\ = (!\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(4) & (\ROM_instrucao|memROM~3_combout\ & \ROM_instrucao|memROM~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \ROM_instrucao|memROM~11_combout\);

\ROM_instrucao|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~12_combout\ = (\ROM_instrucao|memROM~3_combout\ & ((!\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(4) & \ROM_instrucao|memROM~5_combout\)) # (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000110000001000000011000000100000001100000010000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \ROM_instrucao|memROM~12_combout\);

\Processador|decoder|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida~0_combout\ = (!\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~1_combout\ $ (!\ROM_instrucao|memROM~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100001001000010010000100100001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	combout => \Processador|decoder|saida~0_combout\);

\ROM_instrucao|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~4_combout\ = (\Processador|PC|DOUT\(3) & ((!\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(1) & \Processador|PC|DOUT\(2))) # (\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010010000000000101001000000000010100100000000001010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~4_combout\);

\ROM_instrucao|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~10_combout\ = (\ROM_instrucao|memROM~1_combout\ & \ROM_instrucao|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \ROM_instrucao|memROM~10_combout\);

\Data_IN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~0_combout\ = ( !\Processador|PC|DOUT\(7) & ( !\Processador|PC|DOUT\(8) & ( (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(5) & !\Processador|PC|DOUT\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(5),
	datad => \Processador|PC|ALT_INV_DOUT\(6),
	datae => \Processador|PC|ALT_INV_DOUT\(7),
	dataf => \Processador|PC|ALT_INV_DOUT\(8),
	combout => \Data_IN[0]~0_combout\);

\ROM_instrucao|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~0_combout\ = (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(3) & ((!\Processador|PC|DOUT\(1)) # (!\Processador|PC|DOUT\(2))))) # (\Processador|PC|DOUT\(0) & (((\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000101101010000000010110101000000001011010100000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~0_combout\);

\ROM_instrucao|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~6_combout\ = !\Processador|PC|DOUT\(1) $ (((!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(3))) # (\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(2)) # (!\Processador|PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011100110011100001110011001110000111001100111000011100110011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~6_combout\);

\ROM_instrucao|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~7_combout\ = (!\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(1) $ (!\Processador|PC|DOUT\(2))))) # (\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(2) & ((!\Processador|PC|DOUT\(3)) # 
-- (\Processador|PC|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100101001000001010010100100000101001010010000010100101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~7_combout\);

\KEY3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY3,
	o => \KEY3~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\Data_IN[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~1_combout\ = ( \KEY3~input_o\ & ( \SW[9]~input_o\ & ( (\ROM_instrucao|memROM~1_combout\ & (\ROM_instrucao|memROM~7_combout\ & (!\ROM_instrucao|memROM~0_combout\ $ (!\ROM_instrucao|memROM~6_combout\)))) ) ) ) # ( !\KEY3~input_o\ & ( 
-- \SW[9]~input_o\ & ( (\ROM_instrucao|memROM~0_combout\ & (\ROM_instrucao|memROM~1_combout\ & (!\ROM_instrucao|memROM~6_combout\ & \ROM_instrucao|memROM~7_combout\))) ) ) ) # ( \KEY3~input_o\ & ( !\SW[9]~input_o\ & ( (!\ROM_instrucao|memROM~0_combout\ & 
-- (\ROM_instrucao|memROM~1_combout\ & (\ROM_instrucao|memROM~6_combout\ & \ROM_instrucao|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000100000000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datae => \ALT_INV_KEY3~input_o\,
	dataf => \ALT_INV_SW[9]~input_o\,
	combout => \Data_IN[0]~1_combout\);

\KEY1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\Data_IN[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~2_combout\ = ( \KEY1~input_o\ & ( \SW[8]~input_o\ & ( (\ROM_instrucao|memROM~1_combout\ & (\ROM_instrucao|memROM~6_combout\ & !\ROM_instrucao|memROM~7_combout\)) ) ) ) # ( !\KEY1~input_o\ & ( \SW[8]~input_o\ & ( 
-- (\ROM_instrucao|memROM~0_combout\ & (\ROM_instrucao|memROM~1_combout\ & (\ROM_instrucao|memROM~6_combout\ & !\ROM_instrucao|memROM~7_combout\))) ) ) ) # ( \KEY1~input_o\ & ( !\SW[8]~input_o\ & ( (!\ROM_instrucao|memROM~0_combout\ & 
-- (\ROM_instrucao|memROM~1_combout\ & (\ROM_instrucao|memROM~6_combout\ & !\ROM_instrucao|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000001000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datae => \ALT_INV_KEY1~input_o\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \Data_IN[0]~2_combout\);

\KEY0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

\KEY2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY2,
	o => \KEY2~input_o\);

\Data_IN[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~3_combout\ = ( \KEY0~input_o\ & ( \KEY2~input_o\ & ( (!\ROM_instrucao|memROM~0_combout\ & (\ROM_instrucao|memROM~1_combout\ & !\ROM_instrucao|memROM~6_combout\)) ) ) ) # ( !\KEY0~input_o\ & ( \KEY2~input_o\ & ( 
-- (!\ROM_instrucao|memROM~0_combout\ & (\ROM_instrucao|memROM~1_combout\ & (!\ROM_instrucao|memROM~6_combout\ & \ROM_instrucao|memROM~7_combout\))) ) ) ) # ( \KEY0~input_o\ & ( !\KEY2~input_o\ & ( (!\ROM_instrucao|memROM~0_combout\ & 
-- (\ROM_instrucao|memROM~1_combout\ & (!\ROM_instrucao|memROM~6_combout\ & !\ROM_instrucao|memROM~7_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datae => \ALT_INV_KEY0~input_o\,
	dataf => \ALT_INV_KEY2~input_o\,
	combout => \Data_IN[0]~3_combout\);

\ROM_instrucao|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~2_combout\ = (!\ROM_instrucao|memROM~0_combout\ & \ROM_instrucao|memROM~1_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~2_combout\);

\AndLedR|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndLedR|saida~1_combout\ = (\ROM_instrucao|memROM~1_combout\ & ((\ROM_instrucao|memROM~7_combout\) # (\ROM_instrucao|memROM~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010100010101000101010001010100010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	combout => \AndLedR|saida~1_combout\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\FPGA_RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET,
	o => \FPGA_RESET~input_o\);

\Data_IN[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~4_combout\ = ( \SW[0]~input_o\ & ( \FPGA_RESET~input_o\ & ( (!\AndLedR|saida~1_combout\ & (\Data_IN[0]~0_combout\ & (!\ROM_instrucao|memROM~2_combout\ $ (\ROM_instrucao|memROM~10_combout\)))) ) ) ) # ( !\SW[0]~input_o\ & ( \FPGA_RESET~input_o\ 
-- & ( (\ROM_instrucao|memROM~2_combout\ & (\ROM_instrucao|memROM~10_combout\ & (!\AndLedR|saida~1_combout\ & \Data_IN[0]~0_combout\))) ) ) ) # ( \SW[0]~input_o\ & ( !\FPGA_RESET~input_o\ & ( (!\ROM_instrucao|memROM~2_combout\ & 
-- (!\ROM_instrucao|memROM~10_combout\ & (!\AndLedR|saida~1_combout\ & \Data_IN[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000100000000000010010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datac => \AndLedR|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_Data_IN[0]~0_combout\,
	datae => \ALT_INV_SW[0]~input_o\,
	dataf => \ALT_INV_FPGA_RESET~input_o\,
	combout => \Data_IN[0]~4_combout\);

\Data_IN[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~5_combout\ = ( \Data_IN[0]~3_combout\ & ( \Data_IN[0]~4_combout\ ) ) # ( !\Data_IN[0]~3_combout\ & ( \Data_IN[0]~4_combout\ ) ) # ( \Data_IN[0]~3_combout\ & ( !\Data_IN[0]~4_combout\ & ( (!\ROM_instrucao|memROM~10_combout\ & 
-- \Data_IN[0]~0_combout\) ) ) ) # ( !\Data_IN[0]~3_combout\ & ( !\Data_IN[0]~4_combout\ & ( (!\ROM_instrucao|memROM~10_combout\ & (\Data_IN[0]~0_combout\ & ((\Data_IN[0]~2_combout\) # (\Data_IN[0]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000100010001000100010001011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datab => \ALT_INV_Data_IN[0]~0_combout\,
	datac => \ALT_INV_Data_IN[0]~1_combout\,
	datad => \ALT_INV_Data_IN[0]~2_combout\,
	datae => \ALT_INV_Data_IN[0]~3_combout\,
	dataf => \ALT_INV_Data_IN[0]~4_combout\,
	combout => \Data_IN[0]~5_combout\);

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
-- \Processador|ULA1|Add1~1_sumout\ = SUM(( !\Data_IN[0]~5_combout\ ) + ( \Processador|REGA|DOUT\(0) ) + ( \Processador|ULA1|Add1~34_cout\ ))
-- \Processador|ULA1|Add1~2\ = CARRY(( !\Data_IN[0]~5_combout\ ) + ( \Processador|REGA|DOUT\(0) ) + ( \Processador|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Data_IN[0]~5_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	cin => \Processador|ULA1|Add1~34_cout\,
	sumout => \Processador|ULA1|Add1~1_sumout\,
	cout => \Processador|ULA1|Add1~2\);

\Processador|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[0]~0_combout\ = (!\Processador|decoder|saida~0_combout\ & ((\Processador|ULA1|Add1~1_sumout\))) # (\Processador|decoder|saida~0_combout\ & (\Data_IN[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~0_combout\,
	datab => \ALT_INV_Data_IN[0]~5_combout\,
	datac => \Processador|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \Processador|ULA1|saida[0]~0_combout\);

\Processador|decoder|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~0_combout\ = (\ROM_instrucao|memROM~1_combout\ & (!\ROM_instrucao|memROM~11_combout\ & !\ROM_instrucao|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	combout => \Processador|decoder|Equal10~0_combout\);

\Processador|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \Processador|ULA1|saida[0]~0_combout\,
	sload => VCC,
	ena => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(0));

\AndLedR|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndLedR|saida~0_combout\ = (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(4) & (\ROM_instrucao|memROM~3_combout\ & !\ROM_instrucao|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \AndLedR|saida~0_combout\);

\AndLedR|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndLedR|saida~3_combout\ = (!\ROM_instrucao|memROM~2_combout\ & (\AndLedR|saida~0_combout\ & !\AndLedR|saida~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \AndLedR|ALT_INV_saida~0_combout\,
	datac => \AndLedR|ALT_INV_saida~1_combout\,
	combout => \AndLedR|saida~3_combout\);

\RegistradorLedR|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(0),
	ena => \AndLedR|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(0));

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\Processador|MUX1|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[1]~0_combout\ = ( \SW[1]~input_o\ & ( (!\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~10_combout\ & (!\AndLedR|saida~1_combout\ & \Data_IN[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datac => \AndLedR|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_Data_IN[0]~0_combout\,
	datae => \ALT_INV_SW[1]~input_o\,
	combout => \Processador|MUX1|saida_MUX[1]~0_combout\);

\Processador|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~5_sumout\ = SUM(( !\Processador|MUX1|saida_MUX[1]~0_combout\ ) + ( \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add1~2\ ))
-- \Processador|ULA1|Add1~6\ = CARRY(( !\Processador|MUX1|saida_MUX[1]~0_combout\ ) + ( \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(1),
	cin => \Processador|ULA1|Add1~2\,
	sumout => \Processador|ULA1|Add1~5_sumout\,
	cout => \Processador|ULA1|Add1~6\);

\Processador|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[1]~1_combout\ = (!\Processador|decoder|saida~0_combout\ & ((\Processador|ULA1|Add1~5_sumout\))) # (\Processador|decoder|saida~0_combout\ & (\Processador|MUX1|saida_MUX[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~0_combout\,
	datab => \Processador|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	datac => \Processador|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \Processador|ULA1|saida[1]~1_combout\);

\Processador|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \Processador|ULA1|saida[1]~1_combout\,
	sload => VCC,
	ena => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(1));

\RegistradorLedR|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \AndLedR|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(1));

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\Processador|MUX1|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[2]~1_combout\ = ( \SW[2]~input_o\ & ( (!\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~10_combout\ & (!\AndLedR|saida~1_combout\ & \Data_IN[0]~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datac => \AndLedR|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_Data_IN[0]~0_combout\,
	datae => \ALT_INV_SW[2]~input_o\,
	combout => \Processador|MUX1|saida_MUX[2]~1_combout\);

\Processador|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~9_sumout\ = SUM(( !\Processador|MUX1|saida_MUX[2]~1_combout\ ) + ( \Processador|REGA|DOUT\(2) ) + ( \Processador|ULA1|Add1~6\ ))
-- \Processador|ULA1|Add1~10\ = CARRY(( !\Processador|MUX1|saida_MUX[2]~1_combout\ ) + ( \Processador|REGA|DOUT\(2) ) + ( \Processador|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	cin => \Processador|ULA1|Add1~6\,
	sumout => \Processador|ULA1|Add1~9_sumout\,
	cout => \Processador|ULA1|Add1~10\);

\Processador|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[2]~2_combout\ = (!\Processador|decoder|saida~0_combout\ & ((\Processador|ULA1|Add1~9_sumout\))) # (\Processador|decoder|saida~0_combout\ & (\Processador|MUX1|saida_MUX[2]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~0_combout\,
	datab => \Processador|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	datac => \Processador|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \Processador|ULA1|saida[2]~2_combout\);

\Processador|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \Processador|ULA1|saida[2]~2_combout\,
	sload => VCC,
	ena => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(2));

\RegistradorLedR|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \AndLedR|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(2));

\AndSW0_7|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndSW0_7|saida~0_combout\ = (!\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~10_combout\ & (!\AndLedR|saida~1_combout\ & \Data_IN[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datac => \AndLedR|ALT_INV_saida~1_combout\,
	datad => \ALT_INV_Data_IN[0]~0_combout\,
	combout => \AndSW0_7|saida~0_combout\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\Processador|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~13_sumout\ = SUM(( (!\AndSW0_7|saida~0_combout\) # (!\SW[3]~input_o\) ) + ( \Processador|REGA|DOUT\(3) ) + ( \Processador|ULA1|Add1~10\ ))
-- \Processador|ULA1|Add1~14\ = CARRY(( (!\AndSW0_7|saida~0_combout\) # (!\SW[3]~input_o\) ) + ( \Processador|REGA|DOUT\(3) ) + ( \Processador|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndSW0_7|ALT_INV_saida~0_combout\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(3),
	cin => \Processador|ULA1|Add1~10\,
	sumout => \Processador|ULA1|Add1~13_sumout\,
	cout => \Processador|ULA1|Add1~14\);

\Processador|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[3]~3_combout\ = (!\Processador|decoder|saida~0_combout\ & (((\Processador|ULA1|Add1~13_sumout\)))) # (\Processador|decoder|saida~0_combout\ & (\AndSW0_7|saida~0_combout\ & (\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~0_combout\,
	datab => \AndSW0_7|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_SW[3]~input_o\,
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
	d => VCC,
	asdata => \Processador|ULA1|saida[3]~3_combout\,
	sload => VCC,
	ena => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(3));

\RegistradorLedR|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \AndLedR|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(3));

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\Processador|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~17_sumout\ = SUM(( (!\AndSW0_7|saida~0_combout\) # (!\SW[4]~input_o\) ) + ( \Processador|REGA|DOUT\(4) ) + ( \Processador|ULA1|Add1~14\ ))
-- \Processador|ULA1|Add1~18\ = CARRY(( (!\AndSW0_7|saida~0_combout\) # (!\SW[4]~input_o\) ) + ( \Processador|REGA|DOUT\(4) ) + ( \Processador|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndSW0_7|ALT_INV_saida~0_combout\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(4),
	cin => \Processador|ULA1|Add1~14\,
	sumout => \Processador|ULA1|Add1~17_sumout\,
	cout => \Processador|ULA1|Add1~18\);

\Processador|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[4]~4_combout\ = (!\Processador|decoder|saida~0_combout\ & (((\Processador|ULA1|Add1~17_sumout\)))) # (\Processador|decoder|saida~0_combout\ & (\AndSW0_7|saida~0_combout\ & (\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~0_combout\,
	datab => \AndSW0_7|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_SW[4]~input_o\,
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
	d => VCC,
	asdata => \Processador|ULA1|saida[4]~4_combout\,
	sload => VCC,
	ena => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(4));

\RegistradorLedR|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(4),
	ena => \AndLedR|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(4));

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\Processador|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~21_sumout\ = SUM(( (!\AndSW0_7|saida~0_combout\) # (!\SW[5]~input_o\) ) + ( \Processador|REGA|DOUT\(5) ) + ( \Processador|ULA1|Add1~18\ ))
-- \Processador|ULA1|Add1~22\ = CARRY(( (!\AndSW0_7|saida~0_combout\) # (!\SW[5]~input_o\) ) + ( \Processador|REGA|DOUT\(5) ) + ( \Processador|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AndSW0_7|ALT_INV_saida~0_combout\,
	datad => \ALT_INV_SW[5]~input_o\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(5),
	cin => \Processador|ULA1|Add1~18\,
	sumout => \Processador|ULA1|Add1~21_sumout\,
	cout => \Processador|ULA1|Add1~22\);

\Processador|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[5]~5_combout\ = (!\Processador|decoder|saida~0_combout\ & (((\Processador|ULA1|Add1~21_sumout\)))) # (\Processador|decoder|saida~0_combout\ & (\AndSW0_7|saida~0_combout\ & (\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~0_combout\,
	datab => \AndSW0_7|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \Processador|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \Processador|ULA1|saida[5]~5_combout\);

\Processador|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => VCC,
	asdata => \Processador|ULA1|saida[5]~5_combout\,
	sload => VCC,
	ena => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(5));

\RegistradorLedR|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(5),
	ena => \AndLedR|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(5));

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\Processador|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~25_sumout\ = SUM(( (!\AndSW0_7|saida~0_combout\) # (!\SW[6]~input_o\) ) + ( \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add1~22\ ))
-- \Processador|ULA1|Add1~26\ = CARRY(( (!\AndSW0_7|saida~0_combout\) # (!\SW[6]~input_o\) ) + ( \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AndSW0_7|ALT_INV_saida~0_combout\,
	datad => \ALT_INV_SW[6]~input_o\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(6),
	cin => \Processador|ULA1|Add1~22\,
	sumout => \Processador|ULA1|Add1~25_sumout\,
	cout => \Processador|ULA1|Add1~26\);

\Processador|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[6]~6_combout\ = (!\Processador|decoder|saida~0_combout\ & (((\Processador|ULA1|Add1~25_sumout\)))) # (\Processador|decoder|saida~0_combout\ & (\AndSW0_7|saida~0_combout\ & (\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~0_combout\,
	datab => \AndSW0_7|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_SW[6]~input_o\,
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
	d => VCC,
	asdata => \Processador|ULA1|saida[6]~6_combout\,
	sload => VCC,
	ena => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(6));

\RegistradorLedR|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(6),
	ena => \AndLedR|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(6));

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

\Processador|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~29_sumout\ = SUM(( (!\AndSW0_7|saida~0_combout\) # (!\SW[7]~input_o\) ) + ( \Processador|REGA|DOUT\(7) ) + ( \Processador|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndSW0_7|ALT_INV_saida~0_combout\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(7),
	cin => \Processador|ULA1|Add1~26\,
	sumout => \Processador|ULA1|Add1~29_sumout\);

\Processador|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[7]~7_combout\ = (!\Processador|decoder|saida~0_combout\ & (((\Processador|ULA1|Add1~29_sumout\)))) # (\Processador|decoder|saida~0_combout\ & (\AndSW0_7|saida~0_combout\ & (\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110101011000000011010101100000001101010110000000110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~0_combout\,
	datab => \AndSW0_7|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_SW[7]~input_o\,
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
	d => VCC,
	asdata => \Processador|ULA1|saida[7]~7_combout\,
	sload => VCC,
	ena => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(7));

\RegistradorLedR|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(7),
	ena => \AndLedR|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(7));

\ROM_instrucao|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~8_combout\ = (\ROM_instrucao|memROM~1_combout\ & \ROM_instrucao|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \ROM_instrucao|memROM~8_combout\);

\ROM_instrucao|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~9_combout\ = (\ROM_instrucao|memROM~1_combout\ & \ROM_instrucao|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	combout => \ROM_instrucao|memROM~9_combout\);

\flipFlopLed8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flipFlopLed8|DOUT~0_combout\ = ( \ROM_instrucao|memROM~9_combout\ & ( \Processador|REGA|DOUT\(0) & ( \flipFlopLed8|DOUT~q\ ) ) ) # ( !\ROM_instrucao|memROM~9_combout\ & ( \Processador|REGA|DOUT\(0) & ( ((!\ROM_instrucao|memROM~2_combout\ & 
-- (\AndLedR|saida~0_combout\ & \ROM_instrucao|memROM~8_combout\))) # (\flipFlopLed8|DOUT~q\) ) ) ) # ( \ROM_instrucao|memROM~9_combout\ & ( !\Processador|REGA|DOUT\(0) & ( \flipFlopLed8|DOUT~q\ ) ) ) # ( !\ROM_instrucao|memROM~9_combout\ & ( 
-- !\Processador|REGA|DOUT\(0) & ( (\flipFlopLed8|DOUT~q\ & (((!\AndLedR|saida~0_combout\) # (!\ROM_instrucao|memROM~8_combout\)) # (\ROM_instrucao|memROM~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010001010101010101010101010101010111010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \flipFlopLed8|ALT_INV_DOUT~q\,
	datab => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datac => \AndLedR|ALT_INV_saida~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	combout => \flipFlopLed8|DOUT~0_combout\);

\flipFlopLed8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \flipFlopLed8|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopLed8|DOUT~q\);

\flipFlopLed9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flipFlopLed9|DOUT~0_combout\ = ( \ROM_instrucao|memROM~9_combout\ & ( \Processador|REGA|DOUT\(0) & ( ((!\ROM_instrucao|memROM~2_combout\ & (\AndLedR|saida~0_combout\ & !\ROM_instrucao|memROM~8_combout\))) # (\flipFlopLed9|DOUT~q\) ) ) ) # ( 
-- !\ROM_instrucao|memROM~9_combout\ & ( \Processador|REGA|DOUT\(0) & ( \flipFlopLed9|DOUT~q\ ) ) ) # ( \ROM_instrucao|memROM~9_combout\ & ( !\Processador|REGA|DOUT\(0) & ( (\flipFlopLed9|DOUT~q\ & (((!\AndLedR|saida~0_combout\) # 
-- (\ROM_instrucao|memROM~8_combout\)) # (\ROM_instrucao|memROM~2_combout\))) ) ) ) # ( !\ROM_instrucao|memROM~9_combout\ & ( !\Processador|REGA|DOUT\(0) & ( \flipFlopLed9|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100010101010101010101010101010101110101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \flipFlopLed9|ALT_INV_DOUT~q\,
	datab => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datac => \AndLedR|ALT_INV_saida~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	combout => \flipFlopLed9|DOUT~0_combout\);

\flipFlopLed9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \flipFlopLed9|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopLed9|DOUT~q\);

\AndHEX0|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX0|saida~0_combout\ = (\ROM_instrucao|memROM~2_combout\ & (\AndLedR|saida~0_combout\ & !\AndLedR|saida~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \AndLedR|ALT_INV_saida~0_combout\,
	datac => \AndLedR|ALT_INV_saida~1_combout\,
	combout => \AndHEX0|saida~0_combout\);

\RegistradorHEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
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
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \AndHEX0|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX0|DOUT\(3));

\RegistradorHEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \AndHEX0|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX0|DOUT\(2));

\RegistradorHEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \AndHEX0|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX0|DOUT\(1));

\decoderHEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[0]~0_combout\ = (!\RegistradorHEX0|DOUT\(3) & (!\RegistradorHEX0|DOUT\(1) & (!\RegistradorHEX0|DOUT\(0) $ (!\RegistradorHEX0|DOUT\(2))))) # (\RegistradorHEX0|DOUT\(3) & (\RegistradorHEX0|DOUT\(0) & (!\RegistradorHEX0|DOUT\(2) $ 
-- (!\RegistradorHEX0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(1),
	combout => \decoderHEX0|rascSaida7seg[0]~0_combout\);

\decoderHEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[1]~1_combout\ = (!\RegistradorHEX0|DOUT\(3) & (\RegistradorHEX0|DOUT\(2) & (!\RegistradorHEX0|DOUT\(0) $ (!\RegistradorHEX0|DOUT\(1))))) # (\RegistradorHEX0|DOUT\(3) & ((!\RegistradorHEX0|DOUT\(0) & (\RegistradorHEX0|DOUT\(2))) 
-- # (\RegistradorHEX0|DOUT\(0) & ((\RegistradorHEX0|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(1),
	combout => \decoderHEX0|rascSaida7seg[1]~1_combout\);

\decoderHEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[2]~2_combout\ = (!\RegistradorHEX0|DOUT\(3) & (!\RegistradorHEX0|DOUT\(0) & (!\RegistradorHEX0|DOUT\(2) & \RegistradorHEX0|DOUT\(1)))) # (\RegistradorHEX0|DOUT\(3) & (\RegistradorHEX0|DOUT\(2) & ((!\RegistradorHEX0|DOUT\(0)) # 
-- (\RegistradorHEX0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX0|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(0),
	combout => \decoderHEX0|rascSaida7seg[4]~4_combout\);

\decoderHEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[5]~5_combout\ = (!\RegistradorHEX0|DOUT\(0) & (!\RegistradorHEX0|DOUT\(2) & (\RegistradorHEX0|DOUT\(1) & !\RegistradorHEX0|DOUT\(3)))) # (\RegistradorHEX0|DOUT\(0) & (!\RegistradorHEX0|DOUT\(3) $ (((\RegistradorHEX0|DOUT\(2) & 
-- !\RegistradorHEX0|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX0|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(3),
	combout => \decoderHEX0|rascSaida7seg[5]~5_combout\);

\decoderHEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[6]~6_combout\ = (!\RegistradorHEX0|DOUT\(0) & (!\RegistradorHEX0|DOUT\(1) & (!\RegistradorHEX0|DOUT\(3) $ (\RegistradorHEX0|DOUT\(2))))) # (\RegistradorHEX0|DOUT\(0) & (!\RegistradorHEX0|DOUT\(3) & (!\RegistradorHEX0|DOUT\(2) $ 
-- (\RegistradorHEX0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(1),
	combout => \decoderHEX0|rascSaida7seg[6]~6_combout\);

\AndHEX1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX1|saida~0_combout\ = (\ROM_instrucao|memROM~2_combout\ & (\AndLedR|saida~0_combout\ & (\ROM_instrucao|memROM~8_combout\ & !\ROM_instrucao|memROM~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \AndLedR|ALT_INV_saida~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \AndHEX1|saida~0_combout\);

\RegistradorHEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
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
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \AndHEX1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(3));

\RegistradorHEX1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \AndHEX1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(2));

\RegistradorHEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \AndHEX1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(1));

\decoderHEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[0]~0_combout\ = (!\RegistradorHEX1|DOUT\(3) & (!\RegistradorHEX1|DOUT\(1) & (!\RegistradorHEX1|DOUT\(0) $ (!\RegistradorHEX1|DOUT\(2))))) # (\RegistradorHEX1|DOUT\(3) & (\RegistradorHEX1|DOUT\(0) & (!\RegistradorHEX1|DOUT\(2) $ 
-- (!\RegistradorHEX1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(1),
	combout => \decoderHEX1|rascSaida7seg[0]~0_combout\);

\decoderHEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[1]~1_combout\ = (!\RegistradorHEX1|DOUT\(3) & (\RegistradorHEX1|DOUT\(2) & (!\RegistradorHEX1|DOUT\(0) $ (!\RegistradorHEX1|DOUT\(1))))) # (\RegistradorHEX1|DOUT\(3) & ((!\RegistradorHEX1|DOUT\(0) & (\RegistradorHEX1|DOUT\(2))) 
-- # (\RegistradorHEX1|DOUT\(0) & ((\RegistradorHEX1|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(1),
	combout => \decoderHEX1|rascSaida7seg[1]~1_combout\);

\decoderHEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[2]~2_combout\ = (!\RegistradorHEX1|DOUT\(3) & (!\RegistradorHEX1|DOUT\(0) & (!\RegistradorHEX1|DOUT\(2) & \RegistradorHEX1|DOUT\(1)))) # (\RegistradorHEX1|DOUT\(3) & (\RegistradorHEX1|DOUT\(2) & ((!\RegistradorHEX1|DOUT\(0)) # 
-- (\RegistradorHEX1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(0),
	combout => \decoderHEX1|rascSaida7seg[4]~4_combout\);

\decoderHEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[5]~5_combout\ = (!\RegistradorHEX1|DOUT\(0) & (!\RegistradorHEX1|DOUT\(2) & (\RegistradorHEX1|DOUT\(1) & !\RegistradorHEX1|DOUT\(3)))) # (\RegistradorHEX1|DOUT\(0) & (!\RegistradorHEX1|DOUT\(3) $ (((\RegistradorHEX1|DOUT\(2) & 
-- !\RegistradorHEX1|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(3),
	combout => \decoderHEX1|rascSaida7seg[5]~5_combout\);

\decoderHEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[6]~6_combout\ = (!\RegistradorHEX1|DOUT\(0) & (!\RegistradorHEX1|DOUT\(1) & (!\RegistradorHEX1|DOUT\(3) $ (\RegistradorHEX1|DOUT\(2))))) # (\RegistradorHEX1|DOUT\(0) & (!\RegistradorHEX1|DOUT\(3) & (!\RegistradorHEX1|DOUT\(2) $ 
-- (\RegistradorHEX1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(1),
	combout => \decoderHEX1|rascSaida7seg[6]~6_combout\);

\AndHEX2|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX2|saida~0_combout\ = (\ROM_instrucao|memROM~2_combout\ & (\AndLedR|saida~0_combout\ & (!\ROM_instrucao|memROM~8_combout\ & \ROM_instrucao|memROM~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \AndLedR|ALT_INV_saida~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \AndHEX2|saida~0_combout\);

\RegistradorHEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
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
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \AndHEX2|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX2|DOUT\(3));

\RegistradorHEX2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \AndHEX2|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX2|DOUT\(2));

\RegistradorHEX2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \AndHEX2|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX2|DOUT\(1));

\decoderHEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[0]~0_combout\ = (!\RegistradorHEX2|DOUT\(3) & (!\RegistradorHEX2|DOUT\(1) & (!\RegistradorHEX2|DOUT\(0) $ (!\RegistradorHEX2|DOUT\(2))))) # (\RegistradorHEX2|DOUT\(3) & (\RegistradorHEX2|DOUT\(0) & (!\RegistradorHEX2|DOUT\(2) $ 
-- (!\RegistradorHEX2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(1),
	combout => \decoderHEX2|rascSaida7seg[0]~0_combout\);

\decoderHEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[1]~1_combout\ = (!\RegistradorHEX2|DOUT\(3) & (\RegistradorHEX2|DOUT\(2) & (!\RegistradorHEX2|DOUT\(0) $ (!\RegistradorHEX2|DOUT\(1))))) # (\RegistradorHEX2|DOUT\(3) & ((!\RegistradorHEX2|DOUT\(0) & (\RegistradorHEX2|DOUT\(2))) 
-- # (\RegistradorHEX2|DOUT\(0) & ((\RegistradorHEX2|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(1),
	combout => \decoderHEX2|rascSaida7seg[1]~1_combout\);

\decoderHEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[2]~2_combout\ = (!\RegistradorHEX2|DOUT\(3) & (!\RegistradorHEX2|DOUT\(0) & (!\RegistradorHEX2|DOUT\(2) & \RegistradorHEX2|DOUT\(1)))) # (\RegistradorHEX2|DOUT\(3) & (\RegistradorHEX2|DOUT\(2) & ((!\RegistradorHEX2|DOUT\(0)) # 
-- (\RegistradorHEX2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(0),
	combout => \decoderHEX2|rascSaida7seg[4]~4_combout\);

\decoderHEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[5]~5_combout\ = (!\RegistradorHEX2|DOUT\(0) & (!\RegistradorHEX2|DOUT\(2) & (\RegistradorHEX2|DOUT\(1) & !\RegistradorHEX2|DOUT\(3)))) # (\RegistradorHEX2|DOUT\(0) & (!\RegistradorHEX2|DOUT\(3) $ (((\RegistradorHEX2|DOUT\(2) & 
-- !\RegistradorHEX2|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(3),
	combout => \decoderHEX2|rascSaida7seg[5]~5_combout\);

\decoderHEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[6]~6_combout\ = (!\RegistradorHEX2|DOUT\(0) & (!\RegistradorHEX2|DOUT\(1) & (!\RegistradorHEX2|DOUT\(3) $ (\RegistradorHEX2|DOUT\(2))))) # (\RegistradorHEX2|DOUT\(0) & (!\RegistradorHEX2|DOUT\(3) & (!\RegistradorHEX2|DOUT\(2) $ 
-- (\RegistradorHEX2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(1),
	combout => \decoderHEX2|rascSaida7seg[6]~6_combout\);

\AndHEX3|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX3|saida~0_combout\ = (\ROM_instrucao|memROM~2_combout\ & (\AndLedR|saida~0_combout\ & (\ROM_instrucao|memROM~8_combout\ & \ROM_instrucao|memROM~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \AndLedR|ALT_INV_saida~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \AndHEX3|saida~0_combout\);

\RegistradorHEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
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
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \AndHEX3|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT\(3));

\RegistradorHEX3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \AndHEX3|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT\(2));

\RegistradorHEX3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \AndHEX3|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT\(1));

\decoderHEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[0]~0_combout\ = (!\RegistradorHEX3|DOUT\(3) & (!\RegistradorHEX3|DOUT\(1) & (!\RegistradorHEX3|DOUT\(0) $ (!\RegistradorHEX3|DOUT\(2))))) # (\RegistradorHEX3|DOUT\(3) & (\RegistradorHEX3|DOUT\(0) & (!\RegistradorHEX3|DOUT\(2) $ 
-- (!\RegistradorHEX3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(1),
	combout => \decoderHEX3|rascSaida7seg[0]~0_combout\);

\decoderHEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[1]~1_combout\ = (!\RegistradorHEX3|DOUT\(3) & (\RegistradorHEX3|DOUT\(2) & (!\RegistradorHEX3|DOUT\(0) $ (!\RegistradorHEX3|DOUT\(1))))) # (\RegistradorHEX3|DOUT\(3) & ((!\RegistradorHEX3|DOUT\(0) & (\RegistradorHEX3|DOUT\(2))) 
-- # (\RegistradorHEX3|DOUT\(0) & ((\RegistradorHEX3|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(1),
	combout => \decoderHEX3|rascSaida7seg[1]~1_combout\);

\decoderHEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[2]~2_combout\ = (!\RegistradorHEX3|DOUT\(3) & (!\RegistradorHEX3|DOUT\(0) & (!\RegistradorHEX3|DOUT\(2) & \RegistradorHEX3|DOUT\(1)))) # (\RegistradorHEX3|DOUT\(3) & (\RegistradorHEX3|DOUT\(2) & ((!\RegistradorHEX3|DOUT\(0)) # 
-- (\RegistradorHEX3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(0),
	combout => \decoderHEX3|rascSaida7seg[4]~4_combout\);

\decoderHEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[5]~5_combout\ = (!\RegistradorHEX3|DOUT\(0) & (!\RegistradorHEX3|DOUT\(2) & (\RegistradorHEX3|DOUT\(1) & !\RegistradorHEX3|DOUT\(3)))) # (\RegistradorHEX3|DOUT\(0) & (!\RegistradorHEX3|DOUT\(3) $ (((\RegistradorHEX3|DOUT\(2) & 
-- !\RegistradorHEX3|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(3),
	combout => \decoderHEX3|rascSaida7seg[5]~5_combout\);

\decoderHEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[6]~6_combout\ = (!\RegistradorHEX3|DOUT\(0) & (!\RegistradorHEX3|DOUT\(1) & (!\RegistradorHEX3|DOUT\(3) $ (\RegistradorHEX3|DOUT\(2))))) # (\RegistradorHEX3|DOUT\(0) & (!\RegistradorHEX3|DOUT\(3) & (!\RegistradorHEX3|DOUT\(2) $ 
-- (\RegistradorHEX3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(1),
	combout => \decoderHEX3|rascSaida7seg[6]~6_combout\);

\AndLedR|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndLedR|saida~2_combout\ = (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(4) & \ROM_instrucao|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	combout => \AndLedR|saida~2_combout\);

\AndHEX4|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX4|saida~0_combout\ = ( !\ROM_instrucao|memROM~9_combout\ & ( (\ROM_instrucao|memROM~2_combout\ & (\ROM_instrucao|memROM~10_combout\ & (\AndLedR|saida~2_combout\ & !\ROM_instrucao|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datac => \AndLedR|ALT_INV_saida~2_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \AndHEX4|saida~0_combout\);

\RegistradorHEX4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
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
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \AndHEX4|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT\(3));

\RegistradorHEX4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \AndHEX4|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT\(2));

\RegistradorHEX4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \AndHEX4|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT\(1));

\decoderHEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[0]~0_combout\ = (!\RegistradorHEX4|DOUT\(3) & (!\RegistradorHEX4|DOUT\(1) & (!\RegistradorHEX4|DOUT\(0) $ (!\RegistradorHEX4|DOUT\(2))))) # (\RegistradorHEX4|DOUT\(3) & (\RegistradorHEX4|DOUT\(0) & (!\RegistradorHEX4|DOUT\(2) $ 
-- (!\RegistradorHEX4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(1),
	combout => \decoderHEX4|rascSaida7seg[0]~0_combout\);

\decoderHEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[1]~1_combout\ = (!\RegistradorHEX4|DOUT\(3) & (\RegistradorHEX4|DOUT\(2) & (!\RegistradorHEX4|DOUT\(0) $ (!\RegistradorHEX4|DOUT\(1))))) # (\RegistradorHEX4|DOUT\(3) & ((!\RegistradorHEX4|DOUT\(0) & (\RegistradorHEX4|DOUT\(2))) 
-- # (\RegistradorHEX4|DOUT\(0) & ((\RegistradorHEX4|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(1),
	combout => \decoderHEX4|rascSaida7seg[1]~1_combout\);

\decoderHEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[2]~2_combout\ = (!\RegistradorHEX4|DOUT\(3) & (!\RegistradorHEX4|DOUT\(0) & (!\RegistradorHEX4|DOUT\(2) & \RegistradorHEX4|DOUT\(1)))) # (\RegistradorHEX4|DOUT\(3) & (\RegistradorHEX4|DOUT\(2) & ((!\RegistradorHEX4|DOUT\(0)) # 
-- (\RegistradorHEX4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(0),
	combout => \decoderHEX4|rascSaida7seg[4]~4_combout\);

\decoderHEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[5]~5_combout\ = (!\RegistradorHEX4|DOUT\(0) & (!\RegistradorHEX4|DOUT\(2) & (\RegistradorHEX4|DOUT\(1) & !\RegistradorHEX4|DOUT\(3)))) # (\RegistradorHEX4|DOUT\(0) & (!\RegistradorHEX4|DOUT\(3) $ (((\RegistradorHEX4|DOUT\(2) & 
-- !\RegistradorHEX4|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(3),
	combout => \decoderHEX4|rascSaida7seg[5]~5_combout\);

\decoderHEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[6]~6_combout\ = (!\RegistradorHEX4|DOUT\(0) & (!\RegistradorHEX4|DOUT\(1) & (!\RegistradorHEX4|DOUT\(3) $ (\RegistradorHEX4|DOUT\(2))))) # (\RegistradorHEX4|DOUT\(0) & (!\RegistradorHEX4|DOUT\(3) & (!\RegistradorHEX4|DOUT\(2) $ 
-- (\RegistradorHEX4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(1),
	combout => \decoderHEX4|rascSaida7seg[6]~6_combout\);

\AndHEX5|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX5|saida~combout\ = ( !\ROM_instrucao|memROM~9_combout\ & ( (\ROM_instrucao|memROM~2_combout\ & (\ROM_instrucao|memROM~10_combout\ & (\AndLedR|saida~2_combout\ & \ROM_instrucao|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datac => \AndLedR|ALT_INV_saida~2_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \AndHEX5|saida~combout\);

\RegistradorHEX5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
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
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(3),
	ena => \AndHEX5|saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX5|DOUT\(3));

\RegistradorHEX5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(2),
	ena => \AndHEX5|saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX5|DOUT\(2));

\RegistradorHEX5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \Processador|REGA|DOUT\(1),
	ena => \AndHEX5|saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX5|DOUT\(1));

\decoderHEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[0]~0_combout\ = (!\RegistradorHEX5|DOUT\(3) & (!\RegistradorHEX5|DOUT\(1) & (!\RegistradorHEX5|DOUT\(0) $ (!\RegistradorHEX5|DOUT\(2))))) # (\RegistradorHEX5|DOUT\(3) & (\RegistradorHEX5|DOUT\(0) & (!\RegistradorHEX5|DOUT\(2) $ 
-- (!\RegistradorHEX5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(1),
	combout => \decoderHEX5|rascSaida7seg[0]~0_combout\);

\decoderHEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[1]~1_combout\ = (!\RegistradorHEX5|DOUT\(3) & (\RegistradorHEX5|DOUT\(2) & (!\RegistradorHEX5|DOUT\(0) $ (!\RegistradorHEX5|DOUT\(1))))) # (\RegistradorHEX5|DOUT\(3) & ((!\RegistradorHEX5|DOUT\(0) & (\RegistradorHEX5|DOUT\(2))) 
-- # (\RegistradorHEX5|DOUT\(0) & ((\RegistradorHEX5|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(1),
	combout => \decoderHEX5|rascSaida7seg[1]~1_combout\);

\decoderHEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[2]~2_combout\ = (!\RegistradorHEX5|DOUT\(3) & (!\RegistradorHEX5|DOUT\(0) & (!\RegistradorHEX5|DOUT\(2) & \RegistradorHEX5|DOUT\(1)))) # (\RegistradorHEX5|DOUT\(3) & (\RegistradorHEX5|DOUT\(2) & ((!\RegistradorHEX5|DOUT\(0)) # 
-- (\RegistradorHEX5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(1),
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
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(0),
	combout => \decoderHEX5|rascSaida7seg[4]~4_combout\);

\decoderHEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[5]~5_combout\ = (!\RegistradorHEX5|DOUT\(0) & (!\RegistradorHEX5|DOUT\(2) & (\RegistradorHEX5|DOUT\(1) & !\RegistradorHEX5|DOUT\(3)))) # (\RegistradorHEX5|DOUT\(0) & (!\RegistradorHEX5|DOUT\(3) $ (((\RegistradorHEX5|DOUT\(2) & 
-- !\RegistradorHEX5|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(3),
	combout => \decoderHEX5|rascSaida7seg[5]~5_combout\);

\decoderHEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[6]~6_combout\ = (!\RegistradorHEX5|DOUT\(0) & (!\RegistradorHEX5|DOUT\(1) & (!\RegistradorHEX5|DOUT\(3) $ (\RegistradorHEX5|DOUT\(2))))) # (\RegistradorHEX5|DOUT\(0) & (!\RegistradorHEX5|DOUT\(3) & (!\RegistradorHEX5|DOUT\(2) $ 
-- (\RegistradorHEX5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(1),
	combout => \decoderHEX5|rascSaida7seg[6]~6_combout\);

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
END structure;


