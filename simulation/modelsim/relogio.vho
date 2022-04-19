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

-- DATE "04/18/2022 18:35:11"

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

-- Design Ports Information
-- PC_OUT[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_HEX0	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_HEX[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_HEX[1]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_HEX[2]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_HEX[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_HEX1	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_HEX2	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_HEX3	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_HEX4	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_HEX5	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_LED8	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_LED9	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_SW0_7	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[1]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[2]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[4]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[5]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[6]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[7]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[0]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[2]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[4]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[6]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[7]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[8]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[9]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[10]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[11]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[12]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
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
SIGNAL \Processador|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~3_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~5_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~4_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~10_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \ROM_instrucao|memROM~7_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~6_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~0_combout\ : std_logic;
SIGNAL \Data_IN[0]~3_combout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~1_combout\ : std_logic;
SIGNAL \Data_IN[0]~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~2_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \FPGA_RESET~input_o\ : std_logic;
SIGNAL \ROM_instrucao|memROM~2_combout\ : std_logic;
SIGNAL \AndLedR|saida~1_combout\ : std_logic;
SIGNAL \Data_IN[0]~4_combout\ : std_logic;
SIGNAL \Data_IN[0]~5_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~11_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~12_combout\ : std_logic;
SIGNAL \Processador|decoder|saida~0_combout\ : std_logic;
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
SIGNAL \ROM_instrucao|memROM~9_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~8_combout\ : std_logic;
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
SIGNAL \RegistradorHEX1|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \RegistradorHEX1|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \RegistradorHEX1|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoderHEX1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \AndHEX2|saida~0_combout\ : std_logic;
SIGNAL \RegistradorHEX2|DOUT[3]~feeder_combout\ : std_logic;
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
SIGNAL \RegistradorHEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Processador|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegistradorHEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RegistradorLedR|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegistradorHEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \Processador|REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \RegistradorHEX1|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~3_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~1_combout\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \AndSW0_7|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~0_combout\ : std_logic;
SIGNAL \AndLedR|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~10_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
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
\RegistradorHEX1|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \RegistradorHEX1|DOUT[0]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[8]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[5]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[3]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[2]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[1]~DUPLICATE_q\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_FPGA_RESET~input_o\ <= NOT \FPGA_RESET~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_KEY[1]~input_o\ <= NOT \KEY[1]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\Processador|MUX1|ALT_INV_saida_MUX[2]~1_combout\ <= NOT \Processador|MUX1|saida_MUX[2]~1_combout\;
\Processador|MUX1|ALT_INV_saida_MUX[1]~0_combout\ <= NOT \Processador|MUX1|saida_MUX[1]~0_combout\;
\ALT_INV_Data_IN[0]~5_combout\ <= NOT \Data_IN[0]~5_combout\;
\ALT_INV_Data_IN[0]~4_combout\ <= NOT \Data_IN[0]~4_combout\;
\ALT_INV_Data_IN[0]~3_combout\ <= NOT \Data_IN[0]~3_combout\;
\ALT_INV_Data_IN[0]~2_combout\ <= NOT \Data_IN[0]~2_combout\;
\ALT_INV_Data_IN[0]~1_combout\ <= NOT \Data_IN[0]~1_combout\;
\Processador|decoder|ALT_INV_saida~0_combout\ <= NOT \Processador|decoder|saida~0_combout\;
\ROM_instrucao|ALT_INV_memROM~12_combout\ <= NOT \ROM_instrucao|memROM~12_combout\;
\ROM_instrucao|ALT_INV_memROM~11_combout\ <= NOT \ROM_instrucao|memROM~11_combout\;
\AndSW0_7|ALT_INV_saida~0_combout\ <= NOT \AndSW0_7|saida~0_combout\;
\ALT_INV_Data_IN[0]~0_combout\ <= NOT \Data_IN[0]~0_combout\;
\AndLedR|ALT_INV_saida~2_combout\ <= NOT \AndLedR|saida~2_combout\;
\ROM_instrucao|ALT_INV_memROM~10_combout\ <= NOT \ROM_instrucao|memROM~10_combout\;

-- Location: IOOBUF_X16_Y0_N76
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

-- Location: IOOBUF_X19_Y0_N53
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X19_Y0_N36
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

-- Location: IOOBUF_X23_Y0_N76
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X18_Y0_N53
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

-- Location: IOOBUF_X25_Y0_N2
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X23_Y0_N59
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

-- Location: IOOBUF_X22_Y0_N36
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

-- Location: IOOBUF_X19_Y0_N2
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT[8]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X0_Y18_N79
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
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
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
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
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
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
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
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
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
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
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
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
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
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
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
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y20_N39
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
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N56
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
	o => ww_LEDR(9));

-- Location: IOOBUF_X52_Y0_N53
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

-- Location: IOOBUF_X51_Y0_N36
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

-- Location: IOOBUF_X48_Y0_N76
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

-- Location: IOOBUF_X50_Y0_N36
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

-- Location: IOOBUF_X48_Y0_N93
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

-- Location: IOOBUF_X50_Y0_N53
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

-- Location: IOOBUF_X46_Y0_N36
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

-- Location: IOOBUF_X44_Y0_N36
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

-- Location: IOOBUF_X40_Y0_N93
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

-- Location: IOOBUF_X44_Y0_N53
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

-- Location: IOOBUF_X43_Y0_N36
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

-- Location: IOOBUF_X38_Y0_N36
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

-- Location: IOOBUF_X43_Y0_N53
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

-- Location: IOOBUF_X51_Y0_N53
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

-- Location: IOOBUF_X48_Y0_N42
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

-- Location: IOOBUF_X38_Y0_N53
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

-- Location: IOOBUF_X22_Y0_N53
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

-- Location: IOOBUF_X36_Y0_N19
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

-- Location: IOOBUF_X38_Y0_N19
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

-- Location: IOOBUF_X46_Y0_N53
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

-- Location: IOOBUF_X40_Y0_N76
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

-- Location: IOOBUF_X40_Y0_N59
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

-- Location: IOOBUF_X46_Y0_N2
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

-- Location: IOOBUF_X40_Y0_N42
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

-- Location: IOOBUF_X46_Y0_N19
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X51_Y0_N2
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

-- Location: IOOBUF_X51_Y0_N19
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

-- Location: IOOBUF_X52_Y0_N36
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

-- Location: IOOBUF_X48_Y0_N59
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

-- Location: IOOBUF_X44_Y0_N19
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

-- Location: IOOBUF_X52_Y0_N19
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

-- Location: IOOBUF_X43_Y0_N2
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N19
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X22_Y0_N19
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

-- Location: IOOBUF_X43_Y0_N19
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

-- Location: IOOBUF_X50_Y0_N19
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

-- Location: IOOBUF_X0_Y21_N56
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

-- Location: IOOBUF_X0_Y21_N39
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

-- Location: IOOBUF_X44_Y0_N2
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

-- Location: IOOBUF_X18_Y0_N19
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
	o => ww_SAIDA_AND_HEX0);

-- Location: IOOBUF_X12_Y45_N36
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

-- Location: IOOBUF_X12_Y0_N19
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

-- Location: IOOBUF_X10_Y0_N59
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

-- Location: IOOBUF_X11_Y0_N2
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

-- Location: IOOBUF_X24_Y0_N19
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
	o => ww_SAIDA_AND_HEX1);

-- Location: IOOBUF_X19_Y0_N19
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
	o => ww_SAIDA_AND_HEX2);

-- Location: IOOBUF_X14_Y45_N53
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
	o => ww_SAIDA_AND_HEX3);

-- Location: IOOBUF_X24_Y0_N2
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
	o => ww_SAIDA_AND_HEX4);

-- Location: IOOBUF_X12_Y45_N53
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
	o => ww_SAIDA_AND_HEX5);

-- Location: IOOBUF_X0_Y20_N5
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
	o => ww_SAIDA_AND_LED8);

-- Location: IOOBUF_X0_Y20_N22
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
	o => ww_SAIDA_AND_LED9);

-- Location: IOOBUF_X18_Y0_N36
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
	o => ww_SAIDA_AND_SW0_7);

-- Location: IOOBUF_X12_Y45_N19
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

-- Location: IOOBUF_X12_Y0_N53
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

-- Location: IOOBUF_X10_Y0_N42
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

-- Location: IOOBUF_X11_Y0_N53
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

-- Location: IOOBUF_X12_Y0_N36
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

-- Location: IOOBUF_X10_Y0_N76
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

-- Location: IOOBUF_X11_Y0_N19
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

-- Location: IOOBUF_X12_Y45_N2
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

-- Location: IOOBUF_X16_Y0_N93
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
	o => ww_INSTRUCAO(0));

-- Location: IOOBUF_X14_Y0_N53
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
	o => ww_INSTRUCAO(1));

-- Location: IOOBUF_X14_Y0_N36
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
	o => ww_INSTRUCAO(2));

-- Location: IOOBUF_X54_Y18_N96
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

-- Location: IOOBUF_X44_Y45_N36
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

-- Location: IOOBUF_X12_Y0_N2
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
	o => ww_INSTRUCAO(5));

-- Location: IOOBUF_X16_Y0_N42
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
	o => ww_INSTRUCAO(6));

-- Location: IOOBUF_X0_Y21_N5
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

-- Location: IOOBUF_X23_Y0_N42
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
	o => ww_INSTRUCAO(8));

-- Location: IOOBUF_X23_Y0_N93
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
	o => ww_INSTRUCAO(9));

-- Location: IOOBUF_X18_Y0_N2
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
	o => ww_INSTRUCAO(10));

-- Location: IOOBUF_X16_Y0_N59
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
	o => ww_INSTRUCAO(11));

-- Location: IOOBUF_X36_Y45_N2
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

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LABCELL_X10_Y1_N30
\gravar:detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saidaQ~0_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \gravar:detectorSub0|saidaQ~0_combout\);

-- Location: FF_X10_Y1_N31
\gravar:detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \gravar:detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gravar:detectorSub0|saidaQ~q\);

-- Location: MLABCELL_X13_Y3_N15
\gravar:detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saida~combout\ = LCELL(( !\gravar:detectorSub0|saidaQ~q\ & ( !\KEY[0]~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_KEY[0]~input_o\,
	dataf => \gravar:detectorSub0|ALT_INV_saidaQ~q\,
	combout => \gravar:detectorSub0|saida~combout\);

-- Location: FF_X14_Y3_N25
\Processador|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX4x1|saida_MUX[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X14_Y3_N1
\Processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|MUX4x1|saida_MUX[2]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(2));

-- Location: LABCELL_X16_Y3_N30
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

-- Location: LABCELL_X16_Y3_N33
\Processador|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~5_sumout\ = SUM(( \Processador|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~2\ ))
-- \Processador|incrementaPC|Add0~6\ = CARRY(( \Processador|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \Processador|incrementaPC|Add0~2\,
	sumout => \Processador|incrementaPC|Add0~5_sumout\,
	cout => \Processador|incrementaPC|Add0~6\);

-- Location: LABCELL_X14_Y3_N27
\Processador|MUX4x1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[1]~1_combout\ = ( \Processador|PC|DOUT\(4) & ( (\Processador|incrementaPC|Add0~5_sumout\ & (((!\ROM_instrucao|memROM~3_combout\) # (!\ROM_instrucao|memROM~5_combout\)) # (\Processador|PC|DOUT\(0)))) ) ) # ( 
-- !\Processador|PC|DOUT\(4) & ( \Processador|incrementaPC|Add0~5_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111010000000011111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datad => \Processador|incrementaPC|ALT_INV_Add0~5_sumout\,
	dataf => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \Processador|MUX4x1|saida_MUX[1]~1_combout\);

-- Location: FF_X14_Y3_N28
\Processador|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX4x1|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y3_N36
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

-- Location: LABCELL_X16_Y3_N39
\Processador|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~13_sumout\ = SUM(( \Processador|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~10\ ))
-- \Processador|incrementaPC|Add0~14\ = CARRY(( \Processador|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \Processador|incrementaPC|Add0~10\,
	sumout => \Processador|incrementaPC|Add0~13_sumout\,
	cout => \Processador|incrementaPC|Add0~14\);

-- Location: FF_X14_Y3_N56
\Processador|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|incrementaPC|Add0~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y3_N42
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

-- Location: LABCELL_X16_Y3_N45
\Processador|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~21_sumout\ = SUM(( \Processador|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~18\ ))
-- \Processador|incrementaPC|Add0~22\ = CARRY(( \Processador|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \Processador|incrementaPC|Add0~18\,
	sumout => \Processador|incrementaPC|Add0~21_sumout\,
	cout => \Processador|incrementaPC|Add0~22\);

-- Location: LABCELL_X14_Y3_N24
\Processador|MUX4x1|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[5]~4_combout\ = ( \Processador|PC|DOUT\(4) & ( (\Processador|incrementaPC|Add0~21_sumout\ & (((!\ROM_instrucao|memROM~3_combout\) # (!\ROM_instrucao|memROM~5_combout\)) # (\Processador|PC|DOUT\(0)))) ) ) # ( 
-- !\Processador|PC|DOUT\(4) & ( \Processador|incrementaPC|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011010000111100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datac => \Processador|incrementaPC|ALT_INV_Add0~21_sumout\,
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \Processador|MUX4x1|saida_MUX[5]~4_combout\);

-- Location: FF_X14_Y3_N26
\Processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX4x1|saida_MUX[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(5));

-- Location: LABCELL_X16_Y3_N48
\Processador|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~25_sumout\ = SUM(( \Processador|PC|DOUT\(6) ) + ( GND ) + ( \Processador|incrementaPC|Add0~22\ ))
-- \Processador|incrementaPC|Add0~26\ = CARRY(( \Processador|PC|DOUT\(6) ) + ( GND ) + ( \Processador|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(6),
	cin => \Processador|incrementaPC|Add0~22\,
	sumout => \Processador|incrementaPC|Add0~25_sumout\,
	cout => \Processador|incrementaPC|Add0~26\);

-- Location: FF_X14_Y3_N23
\Processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|incrementaPC|Add0~25_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(6));

-- Location: LABCELL_X16_Y3_N51
\Processador|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~29_sumout\ = SUM(( \Processador|PC|DOUT\(7) ) + ( GND ) + ( \Processador|incrementaPC|Add0~26\ ))
-- \Processador|incrementaPC|Add0~30\ = CARRY(( \Processador|PC|DOUT\(7) ) + ( GND ) + ( \Processador|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(7),
	cin => \Processador|incrementaPC|Add0~26\,
	sumout => \Processador|incrementaPC|Add0~29_sumout\,
	cout => \Processador|incrementaPC|Add0~30\);

-- Location: FF_X14_Y3_N53
\Processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|incrementaPC|Add0~29_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(7));

-- Location: LABCELL_X16_Y3_N54
\Processador|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~33_sumout\ = SUM(( \Processador|PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \Processador|incrementaPC|Add0~30\,
	sumout => \Processador|incrementaPC|Add0~33_sumout\);

-- Location: FF_X14_Y3_N10
\Processador|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|incrementaPC|Add0~33_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y3_N21
\ROM_instrucao|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~3_combout\ = ( !\Processador|PC|DOUT\(7) & ( (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & !\Processador|PC|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(5),
	datac => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT\(6),
	dataf => \Processador|PC|ALT_INV_DOUT\(7),
	combout => \ROM_instrucao|memROM~3_combout\);

-- Location: LABCELL_X16_Y3_N18
\Processador|MUX4x1|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[4]~3_combout\ = ( \Processador|PC|DOUT\(4) & ( \Processador|incrementaPC|Add0~17_sumout\ & ( (!\ROM_instrucao|memROM~5_combout\) # ((!\ROM_instrucao|memROM~3_combout\) # (\Processador|PC|DOUT\(0))) ) ) ) # ( 
-- !\Processador|PC|DOUT\(4) & ( \Processador|incrementaPC|Add0~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(0),
	datad => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datae => \Processador|PC|ALT_INV_DOUT\(4),
	dataf => \Processador|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[4]~3_combout\);

-- Location: FF_X14_Y3_N44
\Processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|MUX4x1|saida_MUX[4]~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(4));

-- Location: LABCELL_X16_Y3_N12
\Processador|MUX4x1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[2]~2_combout\ = ( \Processador|incrementaPC|Add0~9_sumout\ & ( \ROM_instrucao|memROM~3_combout\ & ( (!\ROM_instrucao|memROM~5_combout\) # ((!\Processador|PC|DOUT\(4)) # (\Processador|PC|DOUT\(0))) ) ) ) # ( 
-- \Processador|incrementaPC|Add0~9_sumout\ & ( !\ROM_instrucao|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(0),
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	datae => \Processador|incrementaPC|ALT_INV_Add0~9_sumout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	combout => \Processador|MUX4x1|saida_MUX[2]~2_combout\);

-- Location: FF_X14_Y3_N2
\Processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|MUX4x1|saida_MUX[2]~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y3_N51
\ROM_instrucao|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~5_combout\ = ( !\Processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\Processador|PC|DOUT[2]~DUPLICATE_q\ & !\Processador|PC|DOUT[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~5_combout\);

-- Location: LABCELL_X16_Y3_N6
\Processador|MUX4x1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[0]~0_combout\ = ( \Processador|PC|DOUT\(4) & ( \Processador|incrementaPC|Add0~1_sumout\ & ( (!\ROM_instrucao|memROM~5_combout\) # ((!\ROM_instrucao|memROM~3_combout\) # (\Processador|PC|DOUT\(0))) ) ) ) # ( 
-- !\Processador|PC|DOUT\(4) & ( \Processador|incrementaPC|Add0~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(0),
	datad => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datae => \Processador|PC|ALT_INV_DOUT\(4),
	dataf => \Processador|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[0]~0_combout\);

-- Location: FF_X14_Y3_N20
\Processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|MUX4x1|saida_MUX[0]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(0));

-- Location: FF_X14_Y3_N11
\Processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|incrementaPC|Add0~33_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(8));

-- Location: LABCELL_X14_Y3_N33
\ROM_instrucao|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~1_combout\ = ( !\Processador|PC|DOUT\(7) & ( (!\Processador|PC|DOUT\(5) & (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(8) & !\Processador|PC|DOUT\(6)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(5),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \Processador|PC|ALT_INV_DOUT\(6),
	dataf => \Processador|PC|ALT_INV_DOUT\(7),
	combout => \ROM_instrucao|memROM~1_combout\);

-- Location: FF_X14_Y3_N29
\Processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX4x1|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(1));

-- Location: LABCELL_X14_Y3_N48
\ROM_instrucao|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~4_combout\ = ( \Processador|PC|DOUT\(0) & ( (\Processador|PC|DOUT[3]~DUPLICATE_q\ & !\Processador|PC|DOUT[2]~DUPLICATE_q\) ) ) # ( !\Processador|PC|DOUT\(0) & ( (\Processador|PC|DOUT[3]~DUPLICATE_q\ & 
-- (\Processador|PC|DOUT[2]~DUPLICATE_q\ & \Processador|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	dataf => \Processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM_instrucao|memROM~4_combout\);

-- Location: LABCELL_X14_Y3_N30
\ROM_instrucao|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~10_combout\ = (\ROM_instrucao|memROM~1_combout\ & \ROM_instrucao|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \ROM_instrucao|memROM~10_combout\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: LABCELL_X14_Y3_N36
\ROM_instrucao|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~7_combout\ = ( \Processador|PC|DOUT\(0) & ( (\Processador|PC|DOUT[2]~DUPLICATE_q\ & ((!\Processador|PC|DOUT[3]~DUPLICATE_q\) # (\Processador|PC|DOUT\(1)))) ) ) # ( !\Processador|PC|DOUT\(0) & ( (\Processador|PC|DOUT[3]~DUPLICATE_q\ & 
-- (!\Processador|PC|DOUT[2]~DUPLICATE_q\ $ (!\Processador|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	dataf => \Processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM_instrucao|memROM~7_combout\);

-- Location: FF_X14_Y3_N55
\Processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|incrementaPC|Add0~13_sumout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(3));

-- Location: LABCELL_X14_Y3_N39
\ROM_instrucao|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~6_combout\ = ( \Processador|PC|DOUT\(0) & ( !\Processador|PC|DOUT\(1) $ (((!\Processador|PC|DOUT[2]~DUPLICATE_q\) # (!\Processador|PC|DOUT\(3)))) ) ) # ( !\Processador|PC|DOUT\(0) & ( !\Processador|PC|DOUT\(1) $ 
-- (((!\Processador|PC|DOUT[2]~DUPLICATE_q\ & !\Processador|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111110100000010111111010000000000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT\(3),
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	dataf => \Processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM_instrucao|memROM~6_combout\);

-- Location: LABCELL_X14_Y3_N15
\ROM_instrucao|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~0_combout\ = ( \Processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(3) & !\Processador|PC|DOUT[2]~DUPLICATE_q\)) # (\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(3) & 
-- \Processador|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\Processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(3))) # (\Processador|PC|DOUT\(0) & (\Processador|PC|DOUT\(3) & \Processador|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100101101000001010010110100000000001011010000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datac => \Processador|PC|ALT_INV_DOUT\(3),
	datad => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~0_combout\);

-- Location: MLABCELL_X13_Y3_N30
\Data_IN[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~3_combout\ = ( !\ROM_instrucao|memROM~0_combout\ & ( \KEY[0]~input_o\ & ( (!\ROM_instrucao|memROM~6_combout\ & (\ROM_instrucao|memROM~1_combout\ & ((!\ROM_instrucao|memROM~7_combout\) # (\KEY[2]~input_o\)))) ) ) ) # ( 
-- !\ROM_instrucao|memROM~0_combout\ & ( !\KEY[0]~input_o\ & ( (\KEY[2]~input_o\ & (\ROM_instrucao|memROM~7_combout\ & (!\ROM_instrucao|memROM~6_combout\ & \ROM_instrucao|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000110100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \Data_IN[0]~3_combout\);

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X14_Y3_N6
\Data_IN[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~1_combout\ = ( \ROM_instrucao|memROM~7_combout\ & ( \ROM_instrucao|memROM~0_combout\ & ( (\SW[9]~input_o\ & (\ROM_instrucao|memROM~1_combout\ & !\ROM_instrucao|memROM~6_combout\)) ) ) ) # ( \ROM_instrucao|memROM~7_combout\ & ( 
-- !\ROM_instrucao|memROM~0_combout\ & ( (\KEY[3]~input_o\ & (\ROM_instrucao|memROM~1_combout\ & \ROM_instrucao|memROM~6_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001100000000000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[9]~input_o\,
	datab => \ALT_INV_KEY[3]~input_o\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	combout => \Data_IN[0]~1_combout\);

-- Location: LABCELL_X14_Y3_N57
\Data_IN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~0_combout\ = ( !\Processador|PC|DOUT\(6) & ( !\Processador|PC|DOUT[5]~DUPLICATE_q\ & ( (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(8) & !\Processador|PC|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	datae => \Processador|PC|ALT_INV_DOUT\(6),
	dataf => \Processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	combout => \Data_IN[0]~0_combout\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X14_Y3_N3
\Data_IN[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~2_combout\ = ( !\ROM_instrucao|memROM~7_combout\ & ( \ROM_instrucao|memROM~0_combout\ & ( (\SW[8]~input_o\ & (\ROM_instrucao|memROM~6_combout\ & \ROM_instrucao|memROM~1_combout\)) ) ) ) # ( !\ROM_instrucao|memROM~7_combout\ & ( 
-- !\ROM_instrucao|memROM~0_combout\ & ( (\KEY[1]~input_o\ & (\ROM_instrucao|memROM~6_combout\ & \ROM_instrucao|memROM~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000000000000000000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[1]~input_o\,
	datab => \ALT_INV_SW[8]~input_o\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	combout => \Data_IN[0]~2_combout\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X24_Y0_N52
\FPGA_RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET,
	o => \FPGA_RESET~input_o\);

-- Location: LABCELL_X14_Y3_N45
\ROM_instrucao|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~2_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( !\ROM_instrucao|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~2_combout\);

-- Location: MLABCELL_X13_Y3_N39
\AndLedR|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndLedR|saida~1_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (\ROM_instrucao|memROM~7_combout\) # (\ROM_instrucao|memROM~6_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \AndLedR|saida~1_combout\);

-- Location: MLABCELL_X13_Y3_N42
\Data_IN[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~4_combout\ = ( \ROM_instrucao|memROM~10_combout\ & ( !\AndLedR|saida~1_combout\ & ( (\FPGA_RESET~input_o\ & (\ROM_instrucao|memROM~2_combout\ & \Data_IN[0]~0_combout\)) ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( 
-- !\AndLedR|saida~1_combout\ & ( (\SW[0]~input_o\ & (!\ROM_instrucao|memROM~2_combout\ & \Data_IN[0]~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000000001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[0]~input_o\,
	datab => \ALT_INV_FPGA_RESET~input_o\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \ALT_INV_Data_IN[0]~0_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \AndLedR|ALT_INV_saida~1_combout\,
	combout => \Data_IN[0]~4_combout\);

-- Location: MLABCELL_X13_Y3_N48
\Data_IN[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~5_combout\ = ( \Data_IN[0]~2_combout\ & ( \Data_IN[0]~4_combout\ ) ) # ( !\Data_IN[0]~2_combout\ & ( \Data_IN[0]~4_combout\ ) ) # ( \Data_IN[0]~2_combout\ & ( !\Data_IN[0]~4_combout\ & ( (!\ROM_instrucao|memROM~10_combout\ & 
-- \Data_IN[0]~0_combout\) ) ) ) # ( !\Data_IN[0]~2_combout\ & ( !\Data_IN[0]~4_combout\ & ( (!\ROM_instrucao|memROM~10_combout\ & (\Data_IN[0]~0_combout\ & ((\Data_IN[0]~1_combout\) # (\Data_IN[0]~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000101010000000001010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datab => \ALT_INV_Data_IN[0]~3_combout\,
	datac => \ALT_INV_Data_IN[0]~1_combout\,
	datad => \ALT_INV_Data_IN[0]~0_combout\,
	datae => \ALT_INV_Data_IN[0]~2_combout\,
	dataf => \ALT_INV_Data_IN[0]~4_combout\,
	combout => \Data_IN[0]~5_combout\);

-- Location: LABCELL_X14_Y3_N42
\ROM_instrucao|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~11_combout\ = ( !\Processador|PC|DOUT\(0) & ( (\ROM_instrucao|memROM~5_combout\ & (\ROM_instrucao|memROM~3_combout\ & \Processador|PC|DOUT\(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datad => \Processador|PC|ALT_INV_DOUT\(4),
	dataf => \Processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM_instrucao|memROM~11_combout\);

-- Location: LABCELL_X14_Y3_N12
\ROM_instrucao|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~12_combout\ = ( \Processador|PC|DOUT\(4) & ( (!\Processador|PC|DOUT\(0) & (\ROM_instrucao|memROM~3_combout\ & \ROM_instrucao|memROM~5_combout\)) ) ) # ( !\Processador|PC|DOUT\(4) & ( (\Processador|PC|DOUT\(0) & 
-- \ROM_instrucao|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datab => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \ROM_instrucao|memROM~12_combout\);

-- Location: MLABCELL_X13_Y3_N3
\Processador|decoder|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida~0_combout\ = ( \ROM_instrucao|memROM~12_combout\ & ( (!\ROM_instrucao|memROM~1_combout\ & !\ROM_instrucao|memROM~11_combout\) ) ) # ( !\ROM_instrucao|memROM~12_combout\ & ( (\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	combout => \Processador|decoder|saida~0_combout\);

-- Location: LABCELL_X12_Y3_N30
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

-- Location: LABCELL_X12_Y3_N33
\Processador|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~1_sumout\ = SUM(( \Processador|REGA|DOUT\(0) ) + ( !\Data_IN[0]~5_combout\ ) + ( \Processador|ULA1|Add1~34_cout\ ))
-- \Processador|ULA1|Add1~2\ = CARRY(( \Processador|REGA|DOUT\(0) ) + ( !\Data_IN[0]~5_combout\ ) + ( \Processador|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110011001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Data_IN[0]~5_combout\,
	datad => \Processador|REGA|ALT_INV_DOUT\(0),
	cin => \Processador|ULA1|Add1~34_cout\,
	sumout => \Processador|ULA1|Add1~1_sumout\,
	cout => \Processador|ULA1|Add1~2\);

-- Location: LABCELL_X12_Y3_N27
\Processador|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[0]~0_combout\ = ( \Processador|ULA1|Add1~1_sumout\ & ( (!\Processador|decoder|saida~0_combout\) # (\Data_IN[0]~5_combout\) ) ) # ( !\Processador|ULA1|Add1~1_sumout\ & ( (\Data_IN[0]~5_combout\ & 
-- \Processador|decoder|saida~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Data_IN[0]~5_combout\,
	datad => \Processador|decoder|ALT_INV_saida~0_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \Processador|ULA1|saida[0]~0_combout\);

-- Location: MLABCELL_X13_Y3_N12
\Processador|decoder|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~0_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (!\ROM_instrucao|memROM~12_combout\ & !\ROM_instrucao|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \Processador|decoder|Equal10~0_combout\);

-- Location: FF_X12_Y3_N29
\Processador|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|saida[0]~0_combout\,
	ena => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(0));

-- Location: LABCELL_X14_Y3_N18
\AndLedR|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndLedR|saida~0_combout\ = ( !\ROM_instrucao|memROM~4_combout\ & ( (!\Processador|PC|DOUT\(4) & (\ROM_instrucao|memROM~3_combout\ & \Processador|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \AndLedR|saida~0_combout\);

-- Location: MLABCELL_X13_Y3_N24
\AndLedR|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndLedR|saida~3_combout\ = ( \AndLedR|saida~0_combout\ & ( (!\AndLedR|saida~1_combout\ & !\ROM_instrucao|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AndLedR|ALT_INV_saida~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \AndLedR|ALT_INV_saida~0_combout\,
	combout => \AndLedR|saida~3_combout\);

-- Location: FF_X13_Y3_N17
\RegistradorLedR|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \AndLedR|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(0));

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: MLABCELL_X13_Y3_N54
\Processador|MUX1|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[1]~0_combout\ = ( \Data_IN[0]~0_combout\ & ( !\ROM_instrucao|memROM~10_combout\ & ( (\SW[1]~input_o\ & (!\ROM_instrucao|memROM~2_combout\ & !\AndLedR|saida~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \AndLedR|ALT_INV_saida~1_combout\,
	datae => \ALT_INV_Data_IN[0]~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	combout => \Processador|MUX1|saida_MUX[1]~0_combout\);

-- Location: LABCELL_X12_Y3_N36
\Processador|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~5_sumout\ = SUM(( !\Processador|MUX1|saida_MUX[1]~0_combout\ ) + ( \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add1~2\ ))
-- \Processador|ULA1|Add1~6\ = CARRY(( !\Processador|MUX1|saida_MUX[1]~0_combout\ ) + ( \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|REGA|ALT_INV_DOUT\(1),
	datad => \Processador|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	cin => \Processador|ULA1|Add1~2\,
	sumout => \Processador|ULA1|Add1~5_sumout\,
	cout => \Processador|ULA1|Add1~6\);

-- Location: LABCELL_X12_Y3_N3
\Processador|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[1]~1_combout\ = ( \Processador|ULA1|Add1~5_sumout\ & ( (!\Processador|decoder|saida~0_combout\) # (\Processador|MUX1|saida_MUX[1]~0_combout\) ) ) # ( !\Processador|ULA1|Add1~5_sumout\ & ( (\Processador|MUX1|saida_MUX[1]~0_combout\ 
-- & \Processador|decoder|saida~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	datad => \Processador|decoder|ALT_INV_saida~0_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \Processador|ULA1|saida[1]~1_combout\);

-- Location: FF_X12_Y3_N5
\Processador|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|saida[1]~1_combout\,
	ena => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(1));

-- Location: FF_X13_Y3_N8
\RegistradorLedR|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \AndLedR|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(1));

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: MLABCELL_X13_Y3_N21
\Processador|MUX1|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[2]~1_combout\ = ( \Data_IN[0]~0_combout\ & ( !\ROM_instrucao|memROM~10_combout\ & ( (\SW[2]~input_o\ & (!\AndLedR|saida~1_combout\ & !\ROM_instrucao|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[2]~input_o\,
	datac => \AndLedR|ALT_INV_saida~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datae => \ALT_INV_Data_IN[0]~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	combout => \Processador|MUX1|saida_MUX[2]~1_combout\);

-- Location: LABCELL_X12_Y3_N39
\Processador|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~9_sumout\ = SUM(( !\Processador|MUX1|saida_MUX[2]~1_combout\ ) + ( \Processador|REGA|DOUT\(2) ) + ( \Processador|ULA1|Add1~6\ ))
-- \Processador|ULA1|Add1~10\ = CARRY(( !\Processador|MUX1|saida_MUX[2]~1_combout\ ) + ( \Processador|REGA|DOUT\(2) ) + ( \Processador|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	datac => \Processador|REGA|ALT_INV_DOUT\(2),
	cin => \Processador|ULA1|Add1~6\,
	sumout => \Processador|ULA1|Add1~9_sumout\,
	cout => \Processador|ULA1|Add1~10\);

-- Location: LABCELL_X12_Y3_N9
\Processador|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[2]~2_combout\ = ( \Processador|MUX1|saida_MUX[2]~1_combout\ & ( (\Processador|decoder|saida~0_combout\) # (\Processador|ULA1|Add1~9_sumout\) ) ) # ( !\Processador|MUX1|saida_MUX[2]~1_combout\ & ( (\Processador|ULA1|Add1~9_sumout\ & 
-- !\Processador|decoder|saida~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ULA1|ALT_INV_Add1~9_sumout\,
	datad => \Processador|decoder|ALT_INV_saida~0_combout\,
	dataf => \Processador|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	combout => \Processador|ULA1|saida[2]~2_combout\);

-- Location: FF_X12_Y3_N11
\Processador|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|saida[2]~2_combout\,
	ena => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(2));

-- Location: FF_X13_Y3_N34
\RegistradorLedR|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \AndLedR|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(2));

-- Location: LABCELL_X12_Y3_N21
\AndSW0_7|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndSW0_7|saida~0_combout\ = ( !\ROM_instrucao|memROM~2_combout\ & ( (\Data_IN[0]~0_combout\ & (!\ROM_instrucao|memROM~10_combout\ & !\AndLedR|saida~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000000000001100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Data_IN[0]~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datad => \AndLedR|ALT_INV_saida~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \AndSW0_7|saida~0_combout\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LABCELL_X12_Y3_N42
\Processador|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~13_sumout\ = SUM(( \Processador|REGA|DOUT\(3) ) + ( (!\SW[3]~input_o\) # (!\AndSW0_7|saida~0_combout\) ) + ( \Processador|ULA1|Add1~10\ ))
-- \Processador|ULA1|Add1~14\ = CARRY(( \Processador|REGA|DOUT\(3) ) + ( (!\SW[3]~input_o\) # (!\AndSW0_7|saida~0_combout\) ) + ( \Processador|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[3]~input_o\,
	datac => \AndSW0_7|ALT_INV_saida~0_combout\,
	datad => \Processador|REGA|ALT_INV_DOUT\(3),
	cin => \Processador|ULA1|Add1~10\,
	sumout => \Processador|ULA1|Add1~13_sumout\,
	cout => \Processador|ULA1|Add1~14\);

-- Location: LABCELL_X12_Y3_N0
\Processador|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[3]~3_combout\ = (!\Processador|decoder|saida~0_combout\ & (((\Processador|ULA1|Add1~13_sumout\)))) # (\Processador|decoder|saida~0_combout\ & (\AndSW0_7|saida~0_combout\ & ((\SW[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000101001100110000010100110011000001010011001100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndSW0_7|ALT_INV_saida~0_combout\,
	datab => \Processador|ULA1|ALT_INV_Add1~13_sumout\,
	datac => \ALT_INV_SW[3]~input_o\,
	datad => \Processador|decoder|ALT_INV_saida~0_combout\,
	combout => \Processador|ULA1|saida[3]~3_combout\);

-- Location: FF_X12_Y3_N2
\Processador|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|saida[3]~3_combout\,
	ena => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(3));

-- Location: FF_X13_Y3_N29
\RegistradorLedR|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \AndLedR|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(3));

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LABCELL_X12_Y3_N45
\Processador|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~17_sumout\ = SUM(( (!\AndSW0_7|saida~0_combout\) # (!\SW[4]~input_o\) ) + ( \Processador|REGA|DOUT\(4) ) + ( \Processador|ULA1|Add1~14\ ))
-- \Processador|ULA1|Add1~18\ = CARRY(( (!\AndSW0_7|saida~0_combout\) # (!\SW[4]~input_o\) ) + ( \Processador|REGA|DOUT\(4) ) + ( \Processador|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndSW0_7|ALT_INV_saida~0_combout\,
	datac => \Processador|REGA|ALT_INV_DOUT\(4),
	datad => \ALT_INV_SW[4]~input_o\,
	cin => \Processador|ULA1|Add1~14\,
	sumout => \Processador|ULA1|Add1~17_sumout\,
	cout => \Processador|ULA1|Add1~18\);

-- Location: LABCELL_X12_Y3_N6
\Processador|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[4]~4_combout\ = ( \Processador|decoder|saida~0_combout\ & ( (\AndSW0_7|saida~0_combout\ & \SW[4]~input_o\) ) ) # ( !\Processador|decoder|saida~0_combout\ & ( \Processador|ULA1|Add1~17_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AndSW0_7|ALT_INV_saida~0_combout\,
	datac => \Processador|ULA1|ALT_INV_Add1~17_sumout\,
	datad => \ALT_INV_SW[4]~input_o\,
	dataf => \Processador|decoder|ALT_INV_saida~0_combout\,
	combout => \Processador|ULA1|saida[4]~4_combout\);

-- Location: FF_X12_Y3_N8
\Processador|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|saida[4]~4_combout\,
	ena => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(4));

-- Location: FF_X13_Y3_N53
\RegistradorLedR|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \AndLedR|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(4));

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LABCELL_X12_Y3_N48
\Processador|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~21_sumout\ = SUM(( \Processador|REGA|DOUT\(5) ) + ( (!\AndSW0_7|saida~0_combout\) # (!\SW[5]~input_o\) ) + ( \Processador|ULA1|Add1~18\ ))
-- \Processador|ULA1|Add1~22\ = CARRY(( \Processador|REGA|DOUT\(5) ) + ( (!\AndSW0_7|saida~0_combout\) # (!\SW[5]~input_o\) ) + ( \Processador|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndSW0_7|ALT_INV_saida~0_combout\,
	datac => \Processador|REGA|ALT_INV_DOUT\(5),
	dataf => \ALT_INV_SW[5]~input_o\,
	cin => \Processador|ULA1|Add1~18\,
	sumout => \Processador|ULA1|Add1~21_sumout\,
	cout => \Processador|ULA1|Add1~22\);

-- Location: LABCELL_X12_Y3_N24
\Processador|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[5]~5_combout\ = ( \Processador|ULA1|Add1~21_sumout\ & ( (!\Processador|decoder|saida~0_combout\) # ((\AndSW0_7|saida~0_combout\ & \SW[5]~input_o\)) ) ) # ( !\Processador|ULA1|Add1~21_sumout\ & ( (\AndSW0_7|saida~0_combout\ & 
-- (\SW[5]~input_o\ & \Processador|decoder|saida~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010111111111000001011111111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndSW0_7|ALT_INV_saida~0_combout\,
	datac => \ALT_INV_SW[5]~input_o\,
	datad => \Processador|decoder|ALT_INV_saida~0_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \Processador|ULA1|saida[5]~5_combout\);

-- Location: FF_X12_Y3_N26
\Processador|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|saida[5]~5_combout\,
	ena => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(5));

-- Location: FF_X13_Y3_N25
\RegistradorLedR|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \AndLedR|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(5));

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LABCELL_X12_Y3_N51
\Processador|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~25_sumout\ = SUM(( (!\AndSW0_7|saida~0_combout\) # (!\SW[6]~input_o\) ) + ( \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add1~22\ ))
-- \Processador|ULA1|Add1~26\ = CARRY(( (!\AndSW0_7|saida~0_combout\) # (!\SW[6]~input_o\) ) + ( \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndSW0_7|ALT_INV_saida~0_combout\,
	datac => \Processador|REGA|ALT_INV_DOUT\(6),
	datad => \ALT_INV_SW[6]~input_o\,
	cin => \Processador|ULA1|Add1~22\,
	sumout => \Processador|ULA1|Add1~25_sumout\,
	cout => \Processador|ULA1|Add1~26\);

-- Location: LABCELL_X12_Y3_N12
\Processador|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[6]~6_combout\ = ( \Processador|decoder|saida~0_combout\ & ( (\AndSW0_7|saida~0_combout\ & \SW[6]~input_o\) ) ) # ( !\Processador|decoder|saida~0_combout\ & ( \Processador|ULA1|Add1~25_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000001010000010100110011001100110000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndSW0_7|ALT_INV_saida~0_combout\,
	datab => \Processador|ULA1|ALT_INV_Add1~25_sumout\,
	datac => \ALT_INV_SW[6]~input_o\,
	datae => \Processador|decoder|ALT_INV_saida~0_combout\,
	combout => \Processador|ULA1|saida[6]~6_combout\);

-- Location: FF_X12_Y3_N14
\Processador|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|saida[6]~6_combout\,
	ena => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(6));

-- Location: FF_X13_Y3_N32
\RegistradorLedR|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \AndLedR|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(6));

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LABCELL_X12_Y3_N54
\Processador|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~29_sumout\ = SUM(( (!\SW[7]~input_o\) # (!\AndSW0_7|saida~0_combout\) ) + ( \Processador|REGA|DOUT\(7) ) + ( \Processador|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[7]~input_o\,
	datac => \AndSW0_7|ALT_INV_saida~0_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(7),
	cin => \Processador|ULA1|Add1~26\,
	sumout => \Processador|ULA1|Add1~29_sumout\);

-- Location: LABCELL_X12_Y3_N18
\Processador|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[7]~7_combout\ = ( \Processador|decoder|saida~0_combout\ & ( (\AndSW0_7|saida~0_combout\ & \SW[7]~input_o\) ) ) # ( !\Processador|decoder|saida~0_combout\ & ( \Processador|ULA1|Add1~29_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndSW0_7|ALT_INV_saida~0_combout\,
	datac => \Processador|ULA1|ALT_INV_Add1~29_sumout\,
	datad => \ALT_INV_SW[7]~input_o\,
	dataf => \Processador|decoder|ALT_INV_saida~0_combout\,
	combout => \Processador|ULA1|saida[7]~7_combout\);

-- Location: FF_X12_Y3_N20
\Processador|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|ULA1|saida[7]~7_combout\,
	ena => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(7));

-- Location: FF_X13_Y3_N49
\RegistradorLedR|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \AndLedR|saida~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(7));

-- Location: MLABCELL_X13_Y3_N6
\ROM_instrucao|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~9_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~9_combout\);

-- Location: MLABCELL_X13_Y3_N27
\ROM_instrucao|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~8_combout\ = ( \ROM_instrucao|memROM~6_combout\ & ( \ROM_instrucao|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \ROM_instrucao|memROM~8_combout\);

-- Location: MLABCELL_X13_Y4_N48
\flipFlopLed8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flipFlopLed8|DOUT~0_combout\ = ( \ROM_instrucao|memROM~8_combout\ & ( \AndLedR|saida~0_combout\ & ( (!\ROM_instrucao|memROM~9_combout\ & ((!\ROM_instrucao|memROM~2_combout\ & ((\Processador|REGA|DOUT\(0)))) # (\ROM_instrucao|memROM~2_combout\ & 
-- (\flipFlopLed8|DOUT~q\)))) # (\ROM_instrucao|memROM~9_combout\ & (\flipFlopLed8|DOUT~q\)) ) ) ) # ( !\ROM_instrucao|memROM~8_combout\ & ( \AndLedR|saida~0_combout\ & ( \flipFlopLed8|DOUT~q\ ) ) ) # ( \ROM_instrucao|memROM~8_combout\ & ( 
-- !\AndLedR|saida~0_combout\ & ( \flipFlopLed8|DOUT~q\ ) ) ) # ( !\ROM_instrucao|memROM~8_combout\ & ( !\AndLedR|saida~0_combout\ & ( \flipFlopLed8|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010011010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \flipFlopLed8|ALT_INV_DOUT~q\,
	datab => \Processador|REGA|ALT_INV_DOUT\(0),
	datac => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	dataf => \AndLedR|ALT_INV_saida~0_combout\,
	combout => \flipFlopLed8|DOUT~0_combout\);

-- Location: FF_X13_Y4_N53
\flipFlopLed8|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \flipFlopLed8|DOUT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopLed8|DOUT~q\);

-- Location: MLABCELL_X13_Y4_N54
\flipFlopLed9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flipFlopLed9|DOUT~0_combout\ = ( \Processador|REGA|DOUT\(0) & ( \AndLedR|saida~0_combout\ & ( ((\ROM_instrucao|memROM~9_combout\ & (!\ROM_instrucao|memROM~8_combout\ & !\ROM_instrucao|memROM~2_combout\))) # (\flipFlopLed9|DOUT~q\) ) ) ) # ( 
-- !\Processador|REGA|DOUT\(0) & ( \AndLedR|saida~0_combout\ & ( (\flipFlopLed9|DOUT~q\ & ((!\ROM_instrucao|memROM~9_combout\) # ((\ROM_instrucao|memROM~2_combout\) # (\ROM_instrucao|memROM~8_combout\)))) ) ) ) # ( \Processador|REGA|DOUT\(0) & ( 
-- !\AndLedR|saida~0_combout\ & ( \flipFlopLed9|DOUT~q\ ) ) ) # ( !\Processador|REGA|DOUT\(0) & ( !\AndLedR|saida~0_combout\ & ( \flipFlopLed9|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001011000011110100111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \flipFlopLed9|ALT_INV_DOUT~q\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datae => \Processador|REGA|ALT_INV_DOUT\(0),
	dataf => \AndLedR|ALT_INV_saida~0_combout\,
	combout => \flipFlopLed9|DOUT~0_combout\);

-- Location: FF_X13_Y4_N58
\flipFlopLed9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \flipFlopLed9|DOUT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopLed9|DOUT~q\);

-- Location: MLABCELL_X13_Y3_N36
\AndHEX0|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX0|saida~0_combout\ = ( \AndLedR|saida~0_combout\ & ( (!\AndLedR|saida~1_combout\ & \ROM_instrucao|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \AndLedR|ALT_INV_saida~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \AndLedR|ALT_INV_saida~0_combout\,
	combout => \AndHEX0|saida~0_combout\);

-- Location: FF_X13_Y3_N44
\RegistradorHEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \AndHEX0|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX0|DOUT\(1));

-- Location: FF_X13_Y3_N47
\RegistradorHEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \AndHEX0|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX0|DOUT\(2));

-- Location: FF_X13_Y3_N38
\RegistradorHEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \AndHEX0|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX0|DOUT\(0));

-- Location: FF_X13_Y3_N41
\RegistradorHEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \AndHEX0|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX0|DOUT\(3));

-- Location: LABCELL_X19_Y2_N48
\decoderHEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX0|DOUT\(3) & ( (\RegistradorHEX0|DOUT\(0) & (!\RegistradorHEX0|DOUT\(1) $ (!\RegistradorHEX0|DOUT\(2)))) ) ) # ( !\RegistradorHEX0|DOUT\(3) & ( (!\RegistradorHEX0|DOUT\(1) & 
-- (!\RegistradorHEX0|DOUT\(2) $ (!\RegistradorHEX0|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000000000010110100000000001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(3),
	combout => \decoderHEX0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X19_Y2_N54
\decoderHEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX0|DOUT\(3) & ( (!\RegistradorHEX0|DOUT\(0) & ((\RegistradorHEX0|DOUT\(2)))) # (\RegistradorHEX0|DOUT\(0) & (\RegistradorHEX0|DOUT\(1))) ) ) # ( !\RegistradorHEX0|DOUT\(3) & ( 
-- (\RegistradorHEX0|DOUT\(2) & (!\RegistradorHEX0|DOUT\(1) $ (!\RegistradorHEX0|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101000001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(3),
	combout => \decoderHEX0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X19_Y2_N15
\decoderHEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX0|DOUT\(1) & ( (!\RegistradorHEX0|DOUT\(3) & (!\RegistradorHEX0|DOUT\(0) & !\RegistradorHEX0|DOUT\(2))) # (\RegistradorHEX0|DOUT\(3) & ((\RegistradorHEX0|DOUT\(2)))) ) ) # ( 
-- !\RegistradorHEX0|DOUT\(1) & ( (\RegistradorHEX0|DOUT\(3) & (!\RegistradorHEX0|DOUT\(0) & \RegistradorHEX0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(1),
	combout => \decoderHEX0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X19_Y2_N9
\decoderHEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX0|DOUT\(1) & ( (!\RegistradorHEX0|DOUT\(0) & (\RegistradorHEX0|DOUT\(3) & !\RegistradorHEX0|DOUT\(2))) # (\RegistradorHEX0|DOUT\(0) & ((\RegistradorHEX0|DOUT\(2)))) ) ) # ( 
-- !\RegistradorHEX0|DOUT\(1) & ( (!\RegistradorHEX0|DOUT\(3) & (!\RegistradorHEX0|DOUT\(0) $ (!\RegistradorHEX0|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000001010000000011110101000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(1),
	combout => \decoderHEX0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X19_Y2_N27
\decoderHEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX0|DOUT\(1) & ( (!\RegistradorHEX0|DOUT\(3) & \RegistradorHEX0|DOUT\(0)) ) ) # ( !\RegistradorHEX0|DOUT\(1) & ( (!\RegistradorHEX0|DOUT\(2) & ((\RegistradorHEX0|DOUT\(0)))) # 
-- (\RegistradorHEX0|DOUT\(2) & (!\RegistradorHEX0|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101010000011111010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(1),
	combout => \decoderHEX0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X19_Y2_N30
\decoderHEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[5]~5_combout\ = ( \RegistradorHEX0|DOUT\(3) & ( (!\RegistradorHEX0|DOUT\(1) & (\RegistradorHEX0|DOUT\(2) & \RegistradorHEX0|DOUT\(0))) ) ) # ( !\RegistradorHEX0|DOUT\(3) & ( (!\RegistradorHEX0|DOUT\(1) & 
-- (!\RegistradorHEX0|DOUT\(2) & \RegistradorHEX0|DOUT\(0))) # (\RegistradorHEX0|DOUT\(1) & ((!\RegistradorHEX0|DOUT\(2)) # (\RegistradorHEX0|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110101010100001111010100000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(3),
	combout => \decoderHEX0|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X19_Y2_N39
\decoderHEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX0|DOUT\(1) & ( (!\RegistradorHEX0|DOUT\(3) & (\RegistradorHEX0|DOUT\(0) & \RegistradorHEX0|DOUT\(2))) ) ) # ( !\RegistradorHEX0|DOUT\(1) & ( (!\RegistradorHEX0|DOUT\(3) & 
-- ((!\RegistradorHEX0|DOUT\(2)))) # (\RegistradorHEX0|DOUT\(3) & (!\RegistradorHEX0|DOUT\(0) & \RegistradorHEX0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001010000101010100101000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(1),
	combout => \decoderHEX0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X14_Y2_N3
\AndHEX1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX1|saida~0_combout\ = ( \AndLedR|saida~0_combout\ & ( \ROM_instrucao|memROM~8_combout\ & ( (\ROM_instrucao|memROM~2_combout\ & !\ROM_instrucao|memROM~9_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datae => \AndLedR|ALT_INV_saida~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	combout => \AndHEX1|saida~0_combout\);

-- Location: FF_X14_Y2_N5
\RegistradorHEX1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \AndHEX1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(2));

-- Location: LABCELL_X14_Y2_N42
\RegistradorHEX1|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistradorHEX1|DOUT[3]~feeder_combout\ = \Processador|REGA|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|REGA|ALT_INV_DOUT\(3),
	combout => \RegistradorHEX1|DOUT[3]~feeder_combout\);

-- Location: FF_X14_Y2_N43
\RegistradorHEX1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RegistradorHEX1|DOUT[3]~feeder_combout\,
	ena => \AndHEX1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(3));

-- Location: FF_X14_Y2_N2
\RegistradorHEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \AndHEX1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(0));

-- Location: LABCELL_X14_Y2_N45
\RegistradorHEX1|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistradorHEX1|DOUT[1]~feeder_combout\ = ( \Processador|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(1),
	combout => \RegistradorHEX1|DOUT[1]~feeder_combout\);

-- Location: FF_X14_Y2_N47
\RegistradorHEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RegistradorHEX1|DOUT[1]~feeder_combout\,
	ena => \AndHEX1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(1));

-- Location: LABCELL_X14_Y2_N24
\decoderHEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[0]~0_combout\ = (!\RegistradorHEX1|DOUT\(2) & (\RegistradorHEX1|DOUT\(0) & (!\RegistradorHEX1|DOUT\(3) $ (\RegistradorHEX1|DOUT\(1))))) # (\RegistradorHEX1|DOUT\(2) & (!\RegistradorHEX1|DOUT\(1) & (!\RegistradorHEX1|DOUT\(3) $ 
-- (\RegistradorHEX1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100000010010010010000001001001001000000100100100100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(2),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(1),
	combout => \decoderHEX1|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X14_Y2_N27
\decoderHEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[1]~1_combout\ = (!\RegistradorHEX1|DOUT\(3) & (\RegistradorHEX1|DOUT\(2) & (!\RegistradorHEX1|DOUT\(1) $ (!\RegistradorHEX1|DOUT\(0))))) # (\RegistradorHEX1|DOUT\(3) & ((!\RegistradorHEX1|DOUT\(0) & (\RegistradorHEX1|DOUT\(2))) 
-- # (\RegistradorHEX1|DOUT\(0) & ((\RegistradorHEX1|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101000011000101010100001100010101010000110001010101000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(2),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(0),
	combout => \decoderHEX1|rascSaida7seg[1]~1_combout\);

-- Location: FF_X14_Y2_N1
\RegistradorHEX1|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \AndHEX1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X14_Y4_N24
\decoderHEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX1|DOUT\(1) & ( (!\RegistradorHEX1|DOUT\(3) & (!\RegistradorHEX1|DOUT[0]~DUPLICATE_q\ & !\RegistradorHEX1|DOUT\(2))) # (\RegistradorHEX1|DOUT\(3) & ((\RegistradorHEX1|DOUT\(2)))) ) ) # ( 
-- !\RegistradorHEX1|DOUT\(1) & ( (\RegistradorHEX1|DOUT\(3) & (!\RegistradorHEX1|DOUT[0]~DUPLICATE_q\ & \RegistradorHEX1|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX1|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \RegistradorHEX1|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(1),
	combout => \decoderHEX1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X14_Y2_N18
\decoderHEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX1|DOUT\(2) & ( (!\RegistradorHEX1|DOUT\(0) & (!\RegistradorHEX1|DOUT\(3) & !\RegistradorHEX1|DOUT\(1))) # (\RegistradorHEX1|DOUT\(0) & ((\RegistradorHEX1|DOUT\(1)))) ) ) # ( 
-- !\RegistradorHEX1|DOUT\(2) & ( (!\RegistradorHEX1|DOUT\(3) & (\RegistradorHEX1|DOUT\(0) & !\RegistradorHEX1|DOUT\(1))) # (\RegistradorHEX1|DOUT\(3) & (!\RegistradorHEX1|DOUT\(0) & \RegistradorHEX1|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000000011000011000011000000000011111100000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(2),
	combout => \decoderHEX1|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X14_Y2_N51
\decoderHEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX1|DOUT\(2) & ( (!\RegistradorHEX1|DOUT\(3) & ((!\RegistradorHEX1|DOUT\(1)) # (\RegistradorHEX1|DOUT\(0)))) ) ) # ( !\RegistradorHEX1|DOUT\(2) & ( (\RegistradorHEX1|DOUT\(0) & 
-- ((!\RegistradorHEX1|DOUT\(1)) # (!\RegistradorHEX1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111100000000001111110011000000111100001100000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(2),
	combout => \decoderHEX1|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X14_Y2_N33
\decoderHEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[5]~5_combout\ = ( \RegistradorHEX1|DOUT\(2) & ( (\RegistradorHEX1|DOUT\(0) & (!\RegistradorHEX1|DOUT\(1) $ (!\RegistradorHEX1|DOUT\(3)))) ) ) # ( !\RegistradorHEX1|DOUT\(2) & ( (!\RegistradorHEX1|DOUT\(3) & 
-- ((\RegistradorHEX1|DOUT\(0)) # (\RegistradorHEX1|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110000001100001111000000000000001111000000000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(2),
	combout => \decoderHEX1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X14_Y2_N39
\decoderHEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX1|DOUT\(2) & ( (!\RegistradorHEX1|DOUT\(1) & (\RegistradorHEX1|DOUT\(3) & !\RegistradorHEX1|DOUT\(0))) # (\RegistradorHEX1|DOUT\(1) & (!\RegistradorHEX1|DOUT\(3) & \RegistradorHEX1|DOUT\(0))) ) ) 
-- # ( !\RegistradorHEX1|DOUT\(2) & ( (!\RegistradorHEX1|DOUT\(1) & !\RegistradorHEX1|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000001100001100000000110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(2),
	combout => \decoderHEX1|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X13_Y3_N0
\AndHEX2|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX2|saida~0_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( (\AndLedR|saida~0_combout\ & (\ROM_instrucao|memROM~9_combout\ & !\ROM_instrucao|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndLedR|ALT_INV_saida~0_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \AndHEX2|saida~0_combout\);

-- Location: FF_X14_Y3_N35
\RegistradorHEX2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \AndHEX2|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX2|DOUT\(2));

-- Location: LABCELL_X14_Y2_N57
\RegistradorHEX2|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistradorHEX2|DOUT[3]~feeder_combout\ = \Processador|REGA|DOUT\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|REGA|ALT_INV_DOUT\(3),
	combout => \RegistradorHEX2|DOUT[3]~feeder_combout\);

-- Location: FF_X14_Y2_N59
\RegistradorHEX2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RegistradorHEX2|DOUT[3]~feeder_combout\,
	ena => \AndHEX2|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX2|DOUT\(3));

-- Location: FF_X14_Y2_N56
\RegistradorHEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \AndHEX2|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX2|DOUT\(0));

-- Location: FF_X14_Y2_N17
\RegistradorHEX2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \AndHEX2|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX2|DOUT\(1));

-- Location: LABCELL_X14_Y2_N6
\decoderHEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX2|DOUT\(1) & ( (!\RegistradorHEX2|DOUT\(2) & (\RegistradorHEX2|DOUT\(3) & \RegistradorHEX2|DOUT\(0))) ) ) # ( !\RegistradorHEX2|DOUT\(1) & ( (!\RegistradorHEX2|DOUT\(2) & 
-- (!\RegistradorHEX2|DOUT\(3) & \RegistradorHEX2|DOUT\(0))) # (\RegistradorHEX2|DOUT\(2) & (!\RegistradorHEX2|DOUT\(3) $ (\RegistradorHEX2|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100101001001010010010100100100000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datab => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(1),
	combout => \decoderHEX2|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X14_Y2_N9
\decoderHEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX2|DOUT\(1) & ( (!\RegistradorHEX2|DOUT\(0) & (\RegistradorHEX2|DOUT\(2))) # (\RegistradorHEX2|DOUT\(0) & ((\RegistradorHEX2|DOUT\(3)))) ) ) # ( !\RegistradorHEX2|DOUT\(1) & ( 
-- (\RegistradorHEX2|DOUT\(2) & (!\RegistradorHEX2|DOUT\(3) $ (!\RegistradorHEX2|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010000000001010101000001010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(1),
	combout => \decoderHEX2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X14_Y2_N48
\decoderHEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX2|DOUT\(1) & ( (!\RegistradorHEX2|DOUT\(2) & (!\RegistradorHEX2|DOUT\(0) & !\RegistradorHEX2|DOUT\(3))) # (\RegistradorHEX2|DOUT\(2) & ((\RegistradorHEX2|DOUT\(3)))) ) ) # ( 
-- !\RegistradorHEX2|DOUT\(1) & ( (!\RegistradorHEX2|DOUT\(0) & (\RegistradorHEX2|DOUT\(2) & \RegistradorHEX2|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(1),
	combout => \decoderHEX2|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X14_Y2_N21
\decoderHEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX2|DOUT\(1) & ( (!\RegistradorHEX2|DOUT\(2) & (\RegistradorHEX2|DOUT\(3) & !\RegistradorHEX2|DOUT\(0))) # (\RegistradorHEX2|DOUT\(2) & ((\RegistradorHEX2|DOUT\(0)))) ) ) # ( 
-- !\RegistradorHEX2|DOUT\(1) & ( (!\RegistradorHEX2|DOUT\(3) & (!\RegistradorHEX2|DOUT\(2) $ (!\RegistradorHEX2|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000010100000010100001010000000001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(1),
	combout => \decoderHEX2|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X14_Y2_N30
\decoderHEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX2|DOUT\(1) & ( (\RegistradorHEX2|DOUT\(0) & !\RegistradorHEX2|DOUT\(3)) ) ) # ( !\RegistradorHEX2|DOUT\(1) & ( (!\RegistradorHEX2|DOUT\(2) & (\RegistradorHEX2|DOUT\(0))) # 
-- (\RegistradorHEX2|DOUT\(2) & ((!\RegistradorHEX2|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010000010111110101000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(1),
	combout => \decoderHEX2|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X14_Y2_N12
\decoderHEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[5]~5_combout\ = ( \RegistradorHEX2|DOUT\(3) & ( (\RegistradorHEX2|DOUT\(0) & (!\RegistradorHEX2|DOUT\(1) & \RegistradorHEX2|DOUT\(2))) ) ) # ( !\RegistradorHEX2|DOUT\(3) & ( (!\RegistradorHEX2|DOUT\(0) & 
-- (\RegistradorHEX2|DOUT\(1) & !\RegistradorHEX2|DOUT\(2))) # (\RegistradorHEX2|DOUT\(0) & ((!\RegistradorHEX2|DOUT\(2)) # (\RegistradorHEX2|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000101110001000001000000010001110001011100010000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX2|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datae => \RegistradorHEX2|ALT_INV_DOUT\(3),
	combout => \decoderHEX2|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X14_Y2_N36
\decoderHEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX2|DOUT\(1) & ( (\RegistradorHEX2|DOUT\(0) & (\RegistradorHEX2|DOUT\(2) & !\RegistradorHEX2|DOUT\(3))) ) ) # ( !\RegistradorHEX2|DOUT\(1) & ( (!\RegistradorHEX2|DOUT\(2) & 
-- ((!\RegistradorHEX2|DOUT\(3)))) # (\RegistradorHEX2|DOUT\(2) & (!\RegistradorHEX2|DOUT\(0) & \RegistradorHEX2|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001010111100000000101000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(1),
	combout => \decoderHEX2|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X14_Y4_N6
\AndHEX3|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX3|saida~0_combout\ = ( \AndLedR|saida~0_combout\ & ( (\ROM_instrucao|memROM~2_combout\ & (\ROM_instrucao|memROM~8_combout\ & \ROM_instrucao|memROM~9_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	dataf => \AndLedR|ALT_INV_saida~0_combout\,
	combout => \AndHEX3|saida~0_combout\);

-- Location: FF_X14_Y4_N8
\RegistradorHEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \AndHEX3|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT\(0));

-- Location: FF_X14_Y4_N56
\RegistradorHEX3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \AndHEX3|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT\(1));

-- Location: FF_X14_Y4_N5
\RegistradorHEX3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \AndHEX3|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT\(2));

-- Location: FF_X14_Y4_N2
\RegistradorHEX3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \AndHEX3|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT\(3));

-- Location: MLABCELL_X13_Y4_N24
\decoderHEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX3|DOUT\(3) & ( (\RegistradorHEX3|DOUT\(0) & (!\RegistradorHEX3|DOUT\(1) $ (!\RegistradorHEX3|DOUT\(2)))) ) ) # ( !\RegistradorHEX3|DOUT\(3) & ( (!\RegistradorHEX3|DOUT\(1) & 
-- (!\RegistradorHEX3|DOUT\(0) $ (!\RegistradorHEX3|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000000101000001010001001000010010000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datae => \RegistradorHEX3|ALT_INV_DOUT\(3),
	combout => \decoderHEX3|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X13_Y4_N21
\decoderHEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX3|DOUT\(0) & ( (!\RegistradorHEX3|DOUT\(3) & (!\RegistradorHEX3|DOUT\(1) & \RegistradorHEX3|DOUT\(2))) # (\RegistradorHEX3|DOUT\(3) & (\RegistradorHEX3|DOUT\(1))) ) ) # ( 
-- !\RegistradorHEX3|DOUT\(0) & ( (\RegistradorHEX3|DOUT\(2) & ((\RegistradorHEX3|DOUT\(1)) # (\RegistradorHEX3|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000001011010010100000000010111110000010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datae => \RegistradorHEX3|ALT_INV_DOUT\(0),
	combout => \decoderHEX3|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X14_Y4_N0
\decoderHEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX3|DOUT\(3) & ( \RegistradorHEX3|DOUT\(0) & ( (\RegistradorHEX3|DOUT\(2) & \RegistradorHEX3|DOUT\(1)) ) ) ) # ( \RegistradorHEX3|DOUT\(3) & ( !\RegistradorHEX3|DOUT\(0) & ( 
-- \RegistradorHEX3|DOUT\(2) ) ) ) # ( !\RegistradorHEX3|DOUT\(3) & ( !\RegistradorHEX3|DOUT\(0) & ( (!\RegistradorHEX3|DOUT\(2) & \RegistradorHEX3|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010010101010101010100000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(1),
	datae => \RegistradorHEX3|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(0),
	combout => \decoderHEX3|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X14_Y4_N48
\decoderHEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX3|DOUT\(0) & ( (!\RegistradorHEX3|DOUT\(2) & (!\RegistradorHEX3|DOUT\(3) & !\RegistradorHEX3|DOUT\(1))) # (\RegistradorHEX3|DOUT\(2) & ((\RegistradorHEX3|DOUT\(1)))) ) ) # ( 
-- !\RegistradorHEX3|DOUT\(0) & ( (!\RegistradorHEX3|DOUT\(3) & (\RegistradorHEX3|DOUT\(2) & !\RegistradorHEX3|DOUT\(1))) # (\RegistradorHEX3|DOUT\(3) & (!\RegistradorHEX3|DOUT\(2) & \RegistradorHEX3|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001010000000010100101000010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(0),
	combout => \decoderHEX3|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X14_Y4_N42
\decoderHEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX3|DOUT\(0) & ( (!\RegistradorHEX3|DOUT\(3)) # ((!\RegistradorHEX3|DOUT\(2) & !\RegistradorHEX3|DOUT\(1))) ) ) # ( !\RegistradorHEX3|DOUT\(0) & ( (\RegistradorHEX3|DOUT\(2) & 
-- (!\RegistradorHEX3|DOUT\(3) & !\RegistradorHEX3|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000011111010111100001111101011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(0),
	combout => \decoderHEX3|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X14_Y4_N39
\decoderHEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[5]~5_combout\ = ( \RegistradorHEX3|DOUT\(3) & ( (!\RegistradorHEX3|DOUT\(1) & (\RegistradorHEX3|DOUT\(0) & \RegistradorHEX3|DOUT\(2))) ) ) # ( !\RegistradorHEX3|DOUT\(3) & ( (!\RegistradorHEX3|DOUT\(1) & 
-- (\RegistradorHEX3|DOUT\(0) & !\RegistradorHEX3|DOUT\(2))) # (\RegistradorHEX3|DOUT\(1) & ((!\RegistradorHEX3|DOUT\(2)) # (\RegistradorHEX3|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011100010001011101110001000100000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(1),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(3),
	combout => \decoderHEX3|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X14_Y4_N36
\decoderHEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX3|DOUT\(3) & ( (!\RegistradorHEX3|DOUT\(0) & (!\RegistradorHEX3|DOUT\(1) & \RegistradorHEX3|DOUT\(2))) ) ) # ( !\RegistradorHEX3|DOUT\(3) & ( (!\RegistradorHEX3|DOUT\(1) & 
-- ((!\RegistradorHEX3|DOUT\(2)))) # (\RegistradorHEX3|DOUT\(1) & (\RegistradorHEX3|DOUT\(0) & \RegistradorHEX3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000011111100000000001100000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(3),
	combout => \decoderHEX3|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X16_Y3_N27
\AndLedR|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndLedR|saida~2_combout\ = ( !\Processador|PC|DOUT\(4) & ( \ROM_instrucao|memROM~3_combout\ & ( \Processador|PC|DOUT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	datae => \Processador|PC|ALT_INV_DOUT\(4),
	dataf => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	combout => \AndLedR|saida~2_combout\);

-- Location: LABCELL_X14_Y4_N9
\AndHEX4|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX4|saida~0_combout\ = ( \AndLedR|saida~2_combout\ & ( (\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~8_combout\ & (\ROM_instrucao|memROM~10_combout\ & !\ROM_instrucao|memROM~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	dataf => \AndLedR|ALT_INV_saida~2_combout\,
	combout => \AndHEX4|saida~0_combout\);

-- Location: FF_X14_Y4_N29
\RegistradorHEX4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \AndHEX4|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT\(3));

-- Location: FF_X14_Y4_N14
\RegistradorHEX4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \AndHEX4|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT\(1));

-- Location: FF_X14_Y4_N17
\RegistradorHEX4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \AndHEX4|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT\(2));

-- Location: FF_X14_Y4_N20
\RegistradorHEX4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \AndHEX4|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT\(0));

-- Location: LABCELL_X14_Y4_N57
\decoderHEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX4|DOUT\(0) & ( (!\RegistradorHEX4|DOUT\(3) & (!\RegistradorHEX4|DOUT\(1) & !\RegistradorHEX4|DOUT\(2))) # (\RegistradorHEX4|DOUT\(3) & (!\RegistradorHEX4|DOUT\(1) $ (!\RegistradorHEX4|DOUT\(2)))) 
-- ) ) # ( !\RegistradorHEX4|DOUT\(0) & ( (!\RegistradorHEX4|DOUT\(3) & (!\RegistradorHEX4|DOUT\(1) & \RegistradorHEX4|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010010100100101001001010010010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX4|ALT_INV_DOUT\(0),
	combout => \decoderHEX4|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X14_Y4_N54
\decoderHEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX4|DOUT\(2) & ( (!\RegistradorHEX4|DOUT\(3) & (!\RegistradorHEX4|DOUT\(1) $ (!\RegistradorHEX4|DOUT\(0)))) # (\RegistradorHEX4|DOUT\(3) & ((!\RegistradorHEX4|DOUT\(0)) # 
-- (\RegistradorHEX4|DOUT\(1)))) ) ) # ( !\RegistradorHEX4|DOUT\(2) & ( (\RegistradorHEX4|DOUT\(3) & (\RegistradorHEX4|DOUT\(1) & \RegistradorHEX4|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101111001011110010111100101111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX4|ALT_INV_DOUT\(2),
	combout => \decoderHEX4|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X14_Y4_N30
\decoderHEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX4|DOUT\(1) & ( (!\RegistradorHEX4|DOUT\(2) & (!\RegistradorHEX4|DOUT\(0) & !\RegistradorHEX4|DOUT\(3))) # (\RegistradorHEX4|DOUT\(2) & ((\RegistradorHEX4|DOUT\(3)))) ) ) # ( 
-- !\RegistradorHEX4|DOUT\(1) & ( (\RegistradorHEX4|DOUT\(2) & (!\RegistradorHEX4|DOUT\(0) & \RegistradorHEX4|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011000000001100111100000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX4|ALT_INV_DOUT\(1),
	combout => \decoderHEX4|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X14_Y4_N45
\decoderHEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX4|DOUT\(0) & ( (!\RegistradorHEX4|DOUT\(1) & (!\RegistradorHEX4|DOUT\(2) & !\RegistradorHEX4|DOUT\(3))) # (\RegistradorHEX4|DOUT\(1) & (\RegistradorHEX4|DOUT\(2))) ) ) # ( 
-- !\RegistradorHEX4|DOUT\(0) & ( (!\RegistradorHEX4|DOUT\(1) & (\RegistradorHEX4|DOUT\(2) & !\RegistradorHEX4|DOUT\(3))) # (\RegistradorHEX4|DOUT\(1) & (!\RegistradorHEX4|DOUT\(2) & \RegistradorHEX4|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000000011000011000011000011000000111100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX4|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX4|ALT_INV_DOUT\(0),
	combout => \decoderHEX4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X14_Y4_N27
\decoderHEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX4|DOUT\(1) & ( (\RegistradorHEX4|DOUT\(0) & !\RegistradorHEX4|DOUT\(3)) ) ) # ( !\RegistradorHEX4|DOUT\(1) & ( (!\RegistradorHEX4|DOUT\(2) & (\RegistradorHEX4|DOUT\(0))) # 
-- (\RegistradorHEX4|DOUT\(2) & ((!\RegistradorHEX4|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010000010111110101000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX4|ALT_INV_DOUT\(1),
	combout => \decoderHEX4|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X14_Y4_N15
\decoderHEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[5]~5_combout\ = ( \RegistradorHEX4|DOUT\(0) & ( !\RegistradorHEX4|DOUT\(3) $ (((!\RegistradorHEX4|DOUT\(1) & \RegistradorHEX4|DOUT\(2)))) ) ) # ( !\RegistradorHEX4|DOUT\(0) & ( (!\RegistradorHEX4|DOUT\(3) & 
-- (\RegistradorHEX4|DOUT\(1) & !\RegistradorHEX4|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010101010010110101010101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX4|ALT_INV_DOUT\(0),
	combout => \decoderHEX4|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X14_Y4_N12
\decoderHEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX4|DOUT\(0) & ( (!\RegistradorHEX4|DOUT\(3) & (!\RegistradorHEX4|DOUT\(2) $ (\RegistradorHEX4|DOUT\(1)))) ) ) # ( !\RegistradorHEX4|DOUT\(0) & ( (!\RegistradorHEX4|DOUT\(1) & 
-- (!\RegistradorHEX4|DOUT\(2) $ (\RegistradorHEX4|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000011000000001100001100000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX4|ALT_INV_DOUT\(0),
	combout => \decoderHEX4|rascSaida7seg[6]~6_combout\);

-- Location: MLABCELL_X13_Y3_N9
\AndHEX5|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX5|saida~combout\ = ( \ROM_instrucao|memROM~8_combout\ & ( (\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~9_combout\ & (\AndLedR|saida~2_combout\ & \ROM_instrucao|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datac => \AndLedR|ALT_INV_saida~2_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	combout => \AndHEX5|saida~combout\);

-- Location: FF_X13_Y3_N23
\RegistradorHEX5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \AndHEX5|saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX5|DOUT\(0));

-- Location: FF_X13_Y3_N58
\RegistradorHEX5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \AndHEX5|saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX5|DOUT\(3));

-- Location: FF_X13_Y3_N19
\RegistradorHEX5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \AndHEX5|saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX5|DOUT\(1));

-- Location: FF_X13_Y3_N2
\RegistradorHEX5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \AndHEX5|saida~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX5|DOUT\(2));

-- Location: MLABCELL_X13_Y4_N15
\decoderHEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[0]~0_combout\ = ( !\RegistradorHEX5|DOUT\(1) & ( \RegistradorHEX5|DOUT\(2) & ( !\RegistradorHEX5|DOUT\(0) $ (\RegistradorHEX5|DOUT\(3)) ) ) ) # ( \RegistradorHEX5|DOUT\(1) & ( !\RegistradorHEX5|DOUT\(2) & ( 
-- (\RegistradorHEX5|DOUT\(0) & \RegistradorHEX5|DOUT\(3)) ) ) ) # ( !\RegistradorHEX5|DOUT\(1) & ( !\RegistradorHEX5|DOUT\(2) & ( (\RegistradorHEX5|DOUT\(0) & !\RegistradorHEX5|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000001010000010110100101101001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datae => \RegistradorHEX5|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(2),
	combout => \decoderHEX5|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X14_Y4_N21
\decoderHEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX5|DOUT\(2) & ( \RegistradorHEX5|DOUT\(1) & ( (!\RegistradorHEX5|DOUT\(0)) # (\RegistradorHEX5|DOUT\(3)) ) ) ) # ( !\RegistradorHEX5|DOUT\(2) & ( \RegistradorHEX5|DOUT\(1) & ( 
-- (\RegistradorHEX5|DOUT\(0) & \RegistradorHEX5|DOUT\(3)) ) ) ) # ( \RegistradorHEX5|DOUT\(2) & ( !\RegistradorHEX5|DOUT\(1) & ( !\RegistradorHEX5|DOUT\(0) $ (!\RegistradorHEX5|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datae => \RegistradorHEX5|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(1),
	combout => \decoderHEX5|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X14_Y4_N33
\decoderHEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX5|DOUT\(1) & ( (!\RegistradorHEX5|DOUT\(3) & (!\RegistradorHEX5|DOUT\(0) & !\RegistradorHEX5|DOUT\(2))) # (\RegistradorHEX5|DOUT\(3) & ((\RegistradorHEX5|DOUT\(2)))) ) ) # ( 
-- !\RegistradorHEX5|DOUT\(1) & ( (!\RegistradorHEX5|DOUT\(0) & (\RegistradorHEX5|DOUT\(3) & \RegistradorHEX5|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010100000000011111010000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(1),
	combout => \decoderHEX5|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X14_Y4_N51
\decoderHEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX5|DOUT\(1) & ( (!\RegistradorHEX5|DOUT\(2) & (\RegistradorHEX5|DOUT\(3) & !\RegistradorHEX5|DOUT\(0))) # (\RegistradorHEX5|DOUT\(2) & ((\RegistradorHEX5|DOUT\(0)))) ) ) # ( 
-- !\RegistradorHEX5|DOUT\(1) & ( (!\RegistradorHEX5|DOUT\(3) & (!\RegistradorHEX5|DOUT\(2) $ (!\RegistradorHEX5|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000001100001100110000110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(1),
	combout => \decoderHEX5|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X13_Y4_N42
\decoderHEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX5|DOUT\(1) & ( \RegistradorHEX5|DOUT\(2) & ( (!\RegistradorHEX5|DOUT\(3) & \RegistradorHEX5|DOUT\(0)) ) ) ) # ( !\RegistradorHEX5|DOUT\(1) & ( \RegistradorHEX5|DOUT\(2) & ( 
-- !\RegistradorHEX5|DOUT\(3) ) ) ) # ( \RegistradorHEX5|DOUT\(1) & ( !\RegistradorHEX5|DOUT\(2) & ( (!\RegistradorHEX5|DOUT\(3) & \RegistradorHEX5|DOUT\(0)) ) ) ) # ( !\RegistradorHEX5|DOUT\(1) & ( !\RegistradorHEX5|DOUT\(2) & ( \RegistradorHEX5|DOUT\(0) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011000000110011001100110011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datae => \RegistradorHEX5|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(2),
	combout => \decoderHEX5|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X13_Y4_N36
\decoderHEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[5]~5_combout\ = ( \RegistradorHEX5|DOUT\(2) & ( (\RegistradorHEX5|DOUT\(0) & (!\RegistradorHEX5|DOUT\(3) $ (!\RegistradorHEX5|DOUT\(1)))) ) ) # ( !\RegistradorHEX5|DOUT\(2) & ( (!\RegistradorHEX5|DOUT\(3) & 
-- ((\RegistradorHEX5|DOUT\(1)) # (\RegistradorHEX5|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010011000100110000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(2),
	combout => \decoderHEX5|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X13_Y4_N39
\decoderHEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX5|DOUT\(2) & ( (!\RegistradorHEX5|DOUT\(0) & (\RegistradorHEX5|DOUT\(3) & !\RegistradorHEX5|DOUT\(1))) # (\RegistradorHEX5|DOUT\(0) & (!\RegistradorHEX5|DOUT\(3) & \RegistradorHEX5|DOUT\(1))) ) ) 
-- # ( !\RegistradorHEX5|DOUT\(2) & ( (!\RegistradorHEX5|DOUT\(3) & !\RegistradorHEX5|DOUT\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000100010010001000010001001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(2),
	combout => \decoderHEX5|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X43_Y24_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


