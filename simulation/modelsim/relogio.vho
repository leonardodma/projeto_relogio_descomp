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

-- DATE "04/17/2022 20:19:51"

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
	PC_OUT : BUFFER std_logic_vector(8 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0);
	SAIDA_AND_HEX0 : BUFFER std_logic;
	DIN_HEX : BUFFER std_logic_vector(3 DOWNTO 0);
	SAIDA_AND_HEX1 : BUFFER std_logic;
	SAIDA_AND_HEX2 : BUFFER std_logic;
	SAIDA_AND_HEX3 : BUFFER std_logic;
	SAIDA_AND_HEX4 : BUFFER std_logic;
	SAIDA_AND_HEX5 : BUFFER std_logic;
	ACUMULADOR : BUFFER std_logic_vector(7 DOWNTO 0);
	INSTRUCAO : BUFFER std_logic_vector(12 DOWNTO 0)
	);
END relogio;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_HEX0	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_HEX[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_HEX[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_HEX[2]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_HEX[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_HEX1	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_HEX2	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_HEX3	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_HEX4	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_HEX5	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[1]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[2]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[4]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[5]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[6]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[7]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[0]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[1]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[4]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[5]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[7]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[8]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[9]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[10]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[11]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[12]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY3	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY2	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY0	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY1	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~10_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~15_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~17_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~5_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~4_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~21_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~2_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~11_combout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~20_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~23_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~8_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~9_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~2_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~16_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~14_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~18_combout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~3_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~19_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~7_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~22_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~25_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~26_combout\ : std_logic;
SIGNAL \Processador|decoder|saida~1_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal14~0_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~6_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~24_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~30_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~12_combout\ : std_logic;
SIGNAL \AndSW0_7|saida~1_combout\ : std_logic;
SIGNAL \DecoderHabBloc|Equal0~1_combout\ : std_logic;
SIGNAL \Processador|decoder|saida~0_combout\ : std_logic;
SIGNAL \AndSW0_7|saida~3_combout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \ROM_instrucao|memROM~13_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \ROM_instrucao|memROM~29_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \ROM_instrucao|memROM~28_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \ROM_instrucao|memROM~27_combout\ : std_logic;
SIGNAL \DecoderHabBloc|Equal0~0_combout\ : std_logic;
SIGNAL \Data_IN[0]~2_combout\ : std_logic;
SIGNAL \FPGA_RESET~input_o\ : std_logic;
SIGNAL \Data_IN[0]~3_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~8_combout\ : std_logic;
SIGNAL \KEY3~input_o\ : std_logic;
SIGNAL \Data_IN[0]~4_combout\ : std_logic;
SIGNAL \Data_IN[0]~0_combout\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \DebouceMem_key1|saidaQ~0_combout\ : std_logic;
SIGNAL \DebouceMem_key1|saidaQ~q\ : std_logic;
SIGNAL \DebouceMem_key1|saida~combout\ : std_logic;
SIGNAL \FFDebouceMem_key1|DOUT~feeder_combout\ : std_logic;
SIGNAL \DecoderHabBloc|Equal0~2_combout\ : std_logic;
SIGNAL \FFDebouceMem_key1|DOUT~q\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \KEY2~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \Data_IN[0]~5_combout\ : std_logic;
SIGNAL \AndHEX5|saida~0_combout\ : std_logic;
SIGNAL \KEY0~input_o\ : std_logic;
SIGNAL \DebouceMem_key0|saidaQ~0_combout\ : std_logic;
SIGNAL \DebouceMem_key0|saidaQ~q\ : std_logic;
SIGNAL \DebouceMem_key0|saida~combout\ : std_logic;
SIGNAL \FFDebouceMem_key0|DOUT~feeder_combout\ : std_logic;
SIGNAL \FFDebouceMem_key0|DOUT~q\ : std_logic;
SIGNAL \Data_IN[0]~6_combout\ : std_logic;
SIGNAL \Data_IN[0]~7_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \Processador|decoder|saida~2_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~1_combout\ : std_logic;
SIGNAL \Processador|decoder|saida[5]~3_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~711_combout\ : std_logic;
SIGNAL \MemoriaRAM|process_0~0_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~712_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~343_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~709_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~710_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~87_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~715_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~716_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~375_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~713_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~714_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~119_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~533_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~39feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~717_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~39_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~720_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~327_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~719_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~71_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~718_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~295_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~534_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~708_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~311_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~707_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~55_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~705_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~23_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~706_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~279_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~532_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~725_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~726_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~135_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~727_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~728_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~391_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~721_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~722_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~103_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~723_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~724_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~359_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~535_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~536_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~733_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~734_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~239_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~743_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~744_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~511_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~741_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~742_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~255_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~735_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~736_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~495_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~762_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~739_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~740_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~479_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~737_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~738_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~223_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~207feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~729_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~730_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~207_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~731_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~732_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~463_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~761_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~537_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~749_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~750_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~231_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~745_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~746_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~215_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~747_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~748_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~471_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~751_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~752_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~487_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~538_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~263feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~757_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~758_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~263_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~755_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~756_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~503_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~247feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~753_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~754_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~247_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~519feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~759_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~760_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~519_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~539_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~540_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~63feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~687_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~63_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~688_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~319_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~685_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~47_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~686_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~303_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~528_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~684_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~287_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~683_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~31_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~681_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~15_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~682_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~271_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~527_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~689_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~690_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~79_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~335feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~691_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~692_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~335_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~95feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~693_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~694_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~95_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~695_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~696_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~351_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~529_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~367feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~699_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~700_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~367_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~701_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~702_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~127_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~697_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~698_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~111_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~703_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~704_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~383_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~530_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~531_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~541_combout\ : std_logic;
SIGNAL \Data_IN[0]~9_combout\ : std_logic;
SIGNAL \AndSW0_7|saida~2_combout\ : std_logic;
SIGNAL \FFDebouceMem_key0|DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \Data_IN[0]~11_combout\ : std_logic;
SIGNAL \Data_IN[0]~10_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~2\ : std_logic;
SIGNAL \Processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~2\ : std_logic;
SIGNAL \Processador|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~464_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~480_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~547_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~384_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~368_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~320_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~304_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~548_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~496_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~512_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~549_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~272_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~288_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~352_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~336_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~546_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~550_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~256_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~240_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~208feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~208_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~224_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~542_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~96_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~112feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~112_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~80feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~80_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~128_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~543_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~32_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~16_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~64_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~48_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~544_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~545_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~264_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~248_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~216_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~232_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~551_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~104_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~136_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~120feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~120_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~88feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~88_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~552_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~56_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~72_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~24_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~40_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~553_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~554_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~344_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~280_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~472_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~555_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~392_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~520_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~328_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~558_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~504_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~376_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~312_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~556_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~488_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~296feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~296_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~360_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~557_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~559_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~560_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~6\ : std_logic;
SIGNAL \Processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~6\ : std_logic;
SIGNAL \Processador|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~25_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~281_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~562_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~17_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~273_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~561_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~345_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~89feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~89_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~473_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~217feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~217_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~564_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~465_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~337_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~81feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~81_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~209_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~563_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~565_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~41feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~41_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~297_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~567_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~97feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~97_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~481_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~353_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~225feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~225_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~568_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~33feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~33_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~289_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~566_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~233feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~233_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~105_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~361_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~489_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~569_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~570_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~73_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~329_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~577_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~321_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~65feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~65_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~576_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~393_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~265_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~137_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~521_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~579_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~257_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~385_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~129feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~129_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~513_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~578_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~580_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~57_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~313_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~572_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~49_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~305_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~571_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~241_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~113_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~369feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~369_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~497_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~573_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~249_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~377_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~121feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~121_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~505_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~574_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~575_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~581_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~10\ : std_logic;
SIGNAL \Processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~10\ : std_logic;
SIGNAL \Processador|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~482_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~490_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~514_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~522_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~596_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~466_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~498_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~474_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~506_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~595_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~597_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~98feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~98_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~130_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~106_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~138_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~585_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~26_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~58_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~18_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~50_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~582_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~122feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~122_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~114_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~90feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~90_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~82_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~583_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~42_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~74_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~66_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~34_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~584_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~586_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~210_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~234_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~226_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~218_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~592_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~266_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~250_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~242_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~258_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~593_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~594_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~330_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~322_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~386_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~394_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~590_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~338_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~274_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~282_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~346_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~587_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~370_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~306_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~378feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~378_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~314_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~588_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~298_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~290_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~354_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~362_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~589_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~591_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~598_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~14\ : std_logic;
SIGNAL \Processador|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~14\ : std_logic;
SIGNAL \Processador|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~379_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~315_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~347_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~283_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~613_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~507_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~475_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~614_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~331feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~331_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~363_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~299_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~395_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~615_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~491_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~523_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~616_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~617_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~83_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~19_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~115_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~51_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~599_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~211_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~243feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~243_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~600_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~259_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~227_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~602_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~67_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~99_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~35_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~131_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~601_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~603_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~75_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~43_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~610_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~267_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~107_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~139feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~139_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~235_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~611_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~27_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~59_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~608_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~219_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~123_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~91feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~91_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~251_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~609_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~612_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~483_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~515_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~467feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~467_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~499_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~604_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~323feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~323_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~275_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~291_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~307_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~606_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~355feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~355_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~339feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~339_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~371feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~371_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~387_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~605_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~607_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~618_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~18\ : std_logic;
SIGNAL \Processador|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \Processador|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~100_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~212feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~212_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~84feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~84_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~228_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~621_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~28_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~44feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~44_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~620_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~20_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~36feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~36_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~619_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~108_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~220_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~92feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~92_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~236_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~622_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~623_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~284_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~300_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~625_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~484_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~356_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~468_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~340feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~340_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~626_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~476_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~348_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~492_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~364_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~627_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~292_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~276_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~624_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~628_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~524_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~500_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~516_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~508feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~508_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~634_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~372feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~372_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~380_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~388_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~396_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~635_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~316_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~308_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~324_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~332_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~636_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~637_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~52_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~116_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~68_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~132_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~629_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~268_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~252_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~632_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~60_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~76_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~124_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~140_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~630_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~244_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~260_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~631_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~633_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~638_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~18\ : std_logic;
SIGNAL \Processador|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \Processador|flagIgual|DOUT~1_combout\ : std_logic;
SIGNAL \Processador|flagIgual|DOUT~2_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~31_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \Processador|ULA1|Add0~22\ : std_logic;
SIGNAL \Processador|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \Processador|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~229_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~37_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~101_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~649_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~141_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~269_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~77_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~652_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~237_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~109_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~45feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~45_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~650_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~261_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~69_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~133_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~651_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~653_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~309_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~277_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~644_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~349_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~381_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~509feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~509_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~477_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~647_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~341feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~341_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~373feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~373_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~469_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~501_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~646_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~285_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~317_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~645_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~648_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~53_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~61_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~640_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~245_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~125_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~117_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~253_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~642_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~21feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~21_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~29_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~639_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~93_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~85feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~85_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~213_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~221_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~641_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~643_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~293_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~301_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~654_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~389_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~397_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~517feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~517_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~525_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~657_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~325_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~333_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~655_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~357_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~485feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~485_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~365feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~365_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~493_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~656_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~658_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~659_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~22\ : std_logic;
SIGNAL \Processador|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \MemoriaRAM|ram~470_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~502_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~675_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~486_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~518_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~677_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~494feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~494_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~526_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~678_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~478_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~510_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~676_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~679_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~382_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~398feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~398_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~374feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~374_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~390_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~673_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~318_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~334feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~334_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~326feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~326_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~310_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~671_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~358_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~342_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~350_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~366_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~672_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~278_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~302_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~294_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~286_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~670_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~674_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~214_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~246_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~665_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~238_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~270_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~668_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~230_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~262_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~667_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~222_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~254_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~666_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~669_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~78_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~54_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~70_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~62_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~661_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~46feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~46_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~38feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~38_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~22_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~30_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~660_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~94feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~94_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~102_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~86_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~110_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~662_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~118_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~126_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~134_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~142_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~663_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~664_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~680_combout\ : std_logic;
SIGNAL \Processador|MUX1|saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~26\ : std_logic;
SIGNAL \Processador|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \Processador|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~26\ : std_logic;
SIGNAL \Processador|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \Processador|flagIgual|DOUT~0_combout\ : std_logic;
SIGNAL \Processador|flagIgual|DOUT~q\ : std_logic;
SIGNAL \Processador|decoder|saidaMux~0_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \AndSW0_7|saida~0_combout\ : std_logic;
SIGNAL \AndLedR|saida~1_combout\ : std_logic;
SIGNAL \RegistradorLedR|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \RegistradorLedR|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \RegistradorLedR|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \RegistradorLedR|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \flipFlopLed1|DOUT~q\ : std_logic;
SIGNAL \AndLedR|saida~0_combout\ : std_logic;
SIGNAL \flipFlopLed1|DOUT~0_combout\ : std_logic;
SIGNAL \flipFlopLed1|DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \flipFlopLed2|DOUT~0_combout\ : std_logic;
SIGNAL \flipFlopLed2|DOUT~q\ : std_logic;
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
SIGNAL \RegistradorHEX3|DOUT[0]~feeder_combout\ : std_logic;
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
SIGNAL \RegistradorHEX5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RegistradorHEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Processador|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegistradorLedR|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegistradorHEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Processador|reg_endretorno|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Processador|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
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
SIGNAL \Processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM_instrucao|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \DecoderHabBloc|ALT_INV_Equal0~0_combout\ : std_logic;
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
SIGNAL \flipFlopLed2|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \flipFlopLed1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~11_combout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~29_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~25_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~21_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~17_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~8_combout\ : std_logic;
SIGNAL \AndSW0_7|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~7_combout\ : std_logic;
SIGNAL \FFDebouceMem_key1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~6_combout\ : std_logic;
SIGNAL \FFDebouceMem_key0|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~5_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~4_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~3_combout\ : std_logic;
SIGNAL \DecoderHabBloc|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~2_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~519_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~263_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~503_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~247_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~487_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~231_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~471_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~215_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~511_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~255_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~479_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~223_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~495_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~239_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~463_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~207_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~391_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~135_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~359_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~103_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~71_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~375_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~343_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~383_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~127_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~367_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~351_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~95_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~335_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \AndSW0_7|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \Processador|reg_endretorno|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Processador|decoder|ALT_INV_Equal14~0_combout\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_saidaMux~0_combout\ : std_logic;
SIGNAL \Processador|flagIgual|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~26_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~25_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~24_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \AndLedR|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \AndHEX5|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~574_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~505_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~249_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~377_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~121_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~573_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~497_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~241_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~369_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~572_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~570_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~569_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~489_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~233_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~361_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~568_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~481_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~225_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~353_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~97_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~566_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~565_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~564_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~473_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~217_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~345_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~465_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~209_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~337_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~562_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~561_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[1]~0_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~560_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~558_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~392_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~520_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~557_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~360_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~488_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~556_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~376_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~504_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~344_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~472_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~554_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~553_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~552_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~120_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~264_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~232_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~248_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~216_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~550_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~549_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~512_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~496_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~384_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~368_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~480_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~464_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~352_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~336_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~64_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~128_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~96_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~256_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~224_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~240_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~208_q\ : std_logic;
SIGNAL \AndSW0_7|ALT_INV_saida~3_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~10_combout\ : std_logic;
SIGNAL \ALT_INV_Data_IN[0]~9_combout\ : std_logic;
SIGNAL \AndSW0_7|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~251_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~123_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~219_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~608_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~607_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~606_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~323_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~291_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~307_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~275_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~605_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~387_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~355_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~371_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~339_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~604_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~515_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~483_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~499_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~467_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~603_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~602_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~259_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~227_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~601_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~131_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~99_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~67_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~600_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~243_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~211_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~599_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[3]~2_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~598_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~597_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~596_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~522_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~514_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~490_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~482_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~595_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~506_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~498_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~474_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~466_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~594_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~593_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~266_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~258_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~250_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~242_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~592_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~234_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~226_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~218_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~210_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~591_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~590_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~394_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~386_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~589_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~362_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~354_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~588_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~378_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~370_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~587_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~346_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~338_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~586_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~585_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~130_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~98_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~584_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~66_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~583_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~122_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~582_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~581_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~580_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~579_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~521_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~265_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~393_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~578_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~513_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~257_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~385_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~129_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~577_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~576_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~65_q\ : std_logic;
SIGNAL \FFDebouceMem_key0|ALT_INV_DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY1~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY0~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY2~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY3~input_o\ : std_logic;
SIGNAL \ALT_INV_FPGA_RESET~input_o\ : std_logic;
SIGNAL \Processador|flagIgual|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \Processador|flagIgual|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~762_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~761_combout\ : std_logic;
SIGNAL \DebouceMem_key1|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \DebouceMem_key0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~31_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~30_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~29_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~28_combout\ : std_logic;
SIGNAL \DecoderHabBloc|ALT_INV_Equal0~2_combout\ : std_logic;
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
SIGNAL \MemoriaRAM|ALT_INV_ram~715_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~713_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~711_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~709_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~703_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~701_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~699_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~697_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~695_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~693_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~691_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~689_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~27_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~680_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~679_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~678_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~526_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~494_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~677_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~518_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~486_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~676_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~510_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~478_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~675_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~502_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~470_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~674_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~673_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~398_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~390_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~382_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~374_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~672_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~366_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~358_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~350_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~342_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~671_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~334_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~326_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~318_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~310_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~670_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~302_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~294_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~286_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~278_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~669_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~668_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~270_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~238_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~667_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~262_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~230_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~666_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~254_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~222_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~665_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~246_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~214_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~664_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~663_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~134_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~126_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~662_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~102_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~661_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~70_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~660_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[6]~5_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~659_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~658_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~657_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~525_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~517_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~397_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~389_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~656_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~493_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~485_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~365_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~357_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~655_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~333_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~325_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~654_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~301_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~293_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~653_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~652_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~269_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~651_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~69_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~133_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~261_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~650_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~237_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~649_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~101_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~229_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~648_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~647_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~509_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~381_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~477_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~349_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~646_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~501_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~373_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~469_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~341_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~645_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~317_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~285_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~644_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~309_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~277_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~643_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~642_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~253_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~245_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~125_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~641_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~221_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~213_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~640_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~639_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~638_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~637_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~636_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~332_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~324_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~316_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~308_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~635_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~396_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~388_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~380_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~372_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~634_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~524_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~516_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~508_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~500_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~633_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~632_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~268_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~252_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~631_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~260_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~244_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~630_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~124_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~629_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~132_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~68_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~628_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~627_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~492_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~364_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~476_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~348_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~626_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~484_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~356_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~468_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~340_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~625_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~300_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~284_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~624_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~292_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~276_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~623_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~622_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~236_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~220_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~621_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~228_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~100_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~212_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~620_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~619_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \Processador|MUX1|ALT_INV_saida_MUX[4]~3_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~618_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~617_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~616_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~523_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~491_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~615_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~395_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~363_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~331_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~299_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~614_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~507_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~475_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~613_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~379_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~347_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~315_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~283_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~612_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~611_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~267_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~235_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~610_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~609_combout\ : std_logic;

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
\Processador|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \Processador|ULA1|Add1~1_sumout\;
\Processador|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \Processador|ULA1|Add0~1_sumout\;
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
\ROM_instrucao|ALT_INV_memROM~12_combout\ <= NOT \ROM_instrucao|memROM~12_combout\;
\ROM_instrucao|ALT_INV_memROM~11_combout\ <= NOT \ROM_instrucao|memROM~11_combout\;
\ROM_instrucao|ALT_INV_memROM~10_combout\ <= NOT \ROM_instrucao|memROM~10_combout\;
\Processador|decoder|ALT_INV_saida~0_combout\ <= NOT \Processador|decoder|saida~0_combout\;
\ROM_instrucao|ALT_INV_memROM~9_combout\ <= NOT \ROM_instrucao|memROM~9_combout\;
\ROM_instrucao|ALT_INV_memROM~8_combout\ <= NOT \ROM_instrucao|memROM~8_combout\;
\ROM_instrucao|ALT_INV_memROM~7_combout\ <= NOT \ROM_instrucao|memROM~7_combout\;
\ROM_instrucao|ALT_INV_memROM~6_combout\ <= NOT \ROM_instrucao|memROM~6_combout\;
\DecoderHabBloc|ALT_INV_Equal0~0_combout\ <= NOT \DecoderHabBloc|Equal0~0_combout\;
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
\RegistradorHEX0|ALT_INV_DOUT\(2) <= NOT \RegistradorHEX0|DOUT\(2);
\RegistradorHEX0|ALT_INV_DOUT\(1) <= NOT \RegistradorHEX0|DOUT\(1);
\RegistradorHEX0|ALT_INV_DOUT\(3) <= NOT \RegistradorHEX0|DOUT\(3);
\RegistradorHEX0|ALT_INV_DOUT\(0) <= NOT \RegistradorHEX0|DOUT\(0);
\flipFlopLed2|ALT_INV_DOUT~q\ <= NOT \flipFlopLed2|DOUT~q\;
\flipFlopLed1|ALT_INV_DOUT~q\ <= NOT \flipFlopLed1|DOUT~q\;
\ALT_INV_Data_IN[0]~11_combout\ <= NOT \Data_IN[0]~11_combout\;
\Processador|ULA1|ALT_INV_Add1~29_sumout\ <= NOT \Processador|ULA1|Add1~29_sumout\;
\Processador|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \Processador|ULA1|Add0~29_sumout\;
\Processador|ULA1|ALT_INV_Add1~25_sumout\ <= NOT \Processador|ULA1|Add1~25_sumout\;
\Processador|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \Processador|ULA1|Add0~25_sumout\;
\Processador|ULA1|ALT_INV_Add1~21_sumout\ <= NOT \Processador|ULA1|Add1~21_sumout\;
\Processador|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \Processador|ULA1|Add0~21_sumout\;
\Processador|ULA1|ALT_INV_Add1~17_sumout\ <= NOT \Processador|ULA1|Add1~17_sumout\;
\Processador|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \Processador|ULA1|Add0~17_sumout\;
\Processador|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \Processador|ULA1|Add1~13_sumout\;
\Processador|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \Processador|ULA1|Add0~13_sumout\;
\Processador|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \Processador|ULA1|Add1~9_sumout\;
\Processador|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \Processador|ULA1|Add0~9_sumout\;
\Processador|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \Processador|ULA1|Add1~5_sumout\;
\Processador|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \Processador|ULA1|Add0~5_sumout\;
\ALT_INV_Data_IN[0]~8_combout\ <= NOT \Data_IN[0]~8_combout\;
\AndSW0_7|ALT_INV_saida~1_combout\ <= NOT \AndSW0_7|saida~1_combout\;
\ALT_INV_Data_IN[0]~7_combout\ <= NOT \Data_IN[0]~7_combout\;
\FFDebouceMem_key1|ALT_INV_DOUT~q\ <= NOT \FFDebouceMem_key1|DOUT~q\;
\ALT_INV_Data_IN[0]~6_combout\ <= NOT \Data_IN[0]~6_combout\;
\FFDebouceMem_key0|ALT_INV_DOUT~q\ <= NOT \FFDebouceMem_key0|DOUT~q\;
\ALT_INV_Data_IN[0]~5_combout\ <= NOT \Data_IN[0]~5_combout\;
\ALT_INV_Data_IN[0]~4_combout\ <= NOT \Data_IN[0]~4_combout\;
\ALT_INV_Data_IN[0]~3_combout\ <= NOT \Data_IN[0]~3_combout\;
\DecoderHabBloc|ALT_INV_Equal0~1_combout\ <= NOT \DecoderHabBloc|Equal0~1_combout\;
\ALT_INV_Data_IN[0]~2_combout\ <= NOT \Data_IN[0]~2_combout\;
\MemoriaRAM|ALT_INV_ram~541_combout\ <= NOT \MemoriaRAM|ram~541_combout\;
\MemoriaRAM|ALT_INV_ram~540_combout\ <= NOT \MemoriaRAM|ram~540_combout\;
\MemoriaRAM|ALT_INV_ram~539_combout\ <= NOT \MemoriaRAM|ram~539_combout\;
\MemoriaRAM|ALT_INV_ram~519_q\ <= NOT \MemoriaRAM|ram~519_q\;
\MemoriaRAM|ALT_INV_ram~263_q\ <= NOT \MemoriaRAM|ram~263_q\;
\MemoriaRAM|ALT_INV_ram~503_q\ <= NOT \MemoriaRAM|ram~503_q\;
\MemoriaRAM|ALT_INV_ram~247_q\ <= NOT \MemoriaRAM|ram~247_q\;
\MemoriaRAM|ALT_INV_ram~538_combout\ <= NOT \MemoriaRAM|ram~538_combout\;
\MemoriaRAM|ALT_INV_ram~487_q\ <= NOT \MemoriaRAM|ram~487_q\;
\MemoriaRAM|ALT_INV_ram~231_q\ <= NOT \MemoriaRAM|ram~231_q\;
\MemoriaRAM|ALT_INV_ram~471_q\ <= NOT \MemoriaRAM|ram~471_q\;
\MemoriaRAM|ALT_INV_ram~215_q\ <= NOT \MemoriaRAM|ram~215_q\;
\MemoriaRAM|ALT_INV_ram~537_combout\ <= NOT \MemoriaRAM|ram~537_combout\;
\MemoriaRAM|ALT_INV_ram~511_q\ <= NOT \MemoriaRAM|ram~511_q\;
\MemoriaRAM|ALT_INV_ram~255_q\ <= NOT \MemoriaRAM|ram~255_q\;
\MemoriaRAM|ALT_INV_ram~479_q\ <= NOT \MemoriaRAM|ram~479_q\;
\MemoriaRAM|ALT_INV_ram~223_q\ <= NOT \MemoriaRAM|ram~223_q\;
\MemoriaRAM|ALT_INV_ram~495_q\ <= NOT \MemoriaRAM|ram~495_q\;
\MemoriaRAM|ALT_INV_ram~239_q\ <= NOT \MemoriaRAM|ram~239_q\;
\MemoriaRAM|ALT_INV_ram~463_q\ <= NOT \MemoriaRAM|ram~463_q\;
\MemoriaRAM|ALT_INV_ram~207_q\ <= NOT \MemoriaRAM|ram~207_q\;
\MemoriaRAM|ALT_INV_ram~536_combout\ <= NOT \MemoriaRAM|ram~536_combout\;
\MemoriaRAM|ALT_INV_ram~535_combout\ <= NOT \MemoriaRAM|ram~535_combout\;
\MemoriaRAM|ALT_INV_ram~391_q\ <= NOT \MemoriaRAM|ram~391_q\;
\MemoriaRAM|ALT_INV_ram~135_q\ <= NOT \MemoriaRAM|ram~135_q\;
\MemoriaRAM|ALT_INV_ram~359_q\ <= NOT \MemoriaRAM|ram~359_q\;
\MemoriaRAM|ALT_INV_ram~103_q\ <= NOT \MemoriaRAM|ram~103_q\;
\MemoriaRAM|ALT_INV_ram~534_combout\ <= NOT \MemoriaRAM|ram~534_combout\;
\MemoriaRAM|ALT_INV_ram~327_q\ <= NOT \MemoriaRAM|ram~327_q\;
\MemoriaRAM|ALT_INV_ram~71_q\ <= NOT \MemoriaRAM|ram~71_q\;
\MemoriaRAM|ALT_INV_ram~295_q\ <= NOT \MemoriaRAM|ram~295_q\;
\MemoriaRAM|ALT_INV_ram~39_q\ <= NOT \MemoriaRAM|ram~39_q\;
\MemoriaRAM|ALT_INV_ram~533_combout\ <= NOT \MemoriaRAM|ram~533_combout\;
\MemoriaRAM|ALT_INV_ram~375_q\ <= NOT \MemoriaRAM|ram~375_q\;
\MemoriaRAM|ALT_INV_ram~119_q\ <= NOT \MemoriaRAM|ram~119_q\;
\MemoriaRAM|ALT_INV_ram~343_q\ <= NOT \MemoriaRAM|ram~343_q\;
\MemoriaRAM|ALT_INV_ram~87_q\ <= NOT \MemoriaRAM|ram~87_q\;
\MemoriaRAM|ALT_INV_ram~532_combout\ <= NOT \MemoriaRAM|ram~532_combout\;
\MemoriaRAM|ALT_INV_ram~311_q\ <= NOT \MemoriaRAM|ram~311_q\;
\MemoriaRAM|ALT_INV_ram~55_q\ <= NOT \MemoriaRAM|ram~55_q\;
\MemoriaRAM|ALT_INV_ram~279_q\ <= NOT \MemoriaRAM|ram~279_q\;
\MemoriaRAM|ALT_INV_ram~23_q\ <= NOT \MemoriaRAM|ram~23_q\;
\MemoriaRAM|ALT_INV_ram~531_combout\ <= NOT \MemoriaRAM|ram~531_combout\;
\MemoriaRAM|ALT_INV_ram~530_combout\ <= NOT \MemoriaRAM|ram~530_combout\;
\MemoriaRAM|ALT_INV_ram~383_q\ <= NOT \MemoriaRAM|ram~383_q\;
\MemoriaRAM|ALT_INV_ram~127_q\ <= NOT \MemoriaRAM|ram~127_q\;
\MemoriaRAM|ALT_INV_ram~367_q\ <= NOT \MemoriaRAM|ram~367_q\;
\MemoriaRAM|ALT_INV_ram~111_q\ <= NOT \MemoriaRAM|ram~111_q\;
\MemoriaRAM|ALT_INV_ram~529_combout\ <= NOT \MemoriaRAM|ram~529_combout\;
\MemoriaRAM|ALT_INV_ram~351_q\ <= NOT \MemoriaRAM|ram~351_q\;
\MemoriaRAM|ALT_INV_ram~95_q\ <= NOT \MemoriaRAM|ram~95_q\;
\MemoriaRAM|ALT_INV_ram~335_q\ <= NOT \MemoriaRAM|ram~335_q\;
\MemoriaRAM|ALT_INV_ram~79_q\ <= NOT \MemoriaRAM|ram~79_q\;
\MemoriaRAM|ALT_INV_ram~528_combout\ <= NOT \MemoriaRAM|ram~528_combout\;
\MemoriaRAM|ALT_INV_ram~319_q\ <= NOT \MemoriaRAM|ram~319_q\;
\MemoriaRAM|ALT_INV_ram~63_q\ <= NOT \MemoriaRAM|ram~63_q\;
\MemoriaRAM|ALT_INV_ram~303_q\ <= NOT \MemoriaRAM|ram~303_q\;
\MemoriaRAM|ALT_INV_ram~47_q\ <= NOT \MemoriaRAM|ram~47_q\;
\MemoriaRAM|ALT_INV_ram~527_combout\ <= NOT \MemoriaRAM|ram~527_combout\;
\MemoriaRAM|ALT_INV_ram~287_q\ <= NOT \MemoriaRAM|ram~287_q\;
\MemoriaRAM|ALT_INV_ram~31_q\ <= NOT \MemoriaRAM|ram~31_q\;
\MemoriaRAM|ALT_INV_ram~271_q\ <= NOT \MemoriaRAM|ram~271_q\;
\MemoriaRAM|ALT_INV_ram~15_q\ <= NOT \MemoriaRAM|ram~15_q\;
\Processador|decoder|ALT_INV_Equal10~0_combout\ <= NOT \Processador|decoder|Equal10~0_combout\;
\Processador|decoder|ALT_INV_saida~2_combout\ <= NOT \Processador|decoder|saida~2_combout\;
\AndSW0_7|ALT_INV_saida~0_combout\ <= NOT \AndSW0_7|saida~0_combout\;
\Processador|reg_endretorno|ALT_INV_DOUT\(8) <= NOT \Processador|reg_endretorno|DOUT\(8);
\Processador|reg_endretorno|ALT_INV_DOUT\(7) <= NOT \Processador|reg_endretorno|DOUT\(7);
\Processador|reg_endretorno|ALT_INV_DOUT\(6) <= NOT \Processador|reg_endretorno|DOUT\(6);
\Processador|reg_endretorno|ALT_INV_DOUT\(5) <= NOT \Processador|reg_endretorno|DOUT\(5);
\Processador|reg_endretorno|ALT_INV_DOUT\(4) <= NOT \Processador|reg_endretorno|DOUT\(4);
\Processador|reg_endretorno|ALT_INV_DOUT\(3) <= NOT \Processador|reg_endretorno|DOUT\(3);
\Processador|reg_endretorno|ALT_INV_DOUT\(2) <= NOT \Processador|reg_endretorno|DOUT\(2);
\Processador|reg_endretorno|ALT_INV_DOUT\(1) <= NOT \Processador|reg_endretorno|DOUT\(1);
\Processador|decoder|ALT_INV_Equal14~0_combout\ <= NOT \Processador|decoder|Equal14~0_combout\;
\Processador|decoder|ALT_INV_saida~1_combout\ <= NOT \Processador|decoder|saida~1_combout\;
\Processador|reg_endretorno|ALT_INV_DOUT\(0) <= NOT \Processador|reg_endretorno|DOUT\(0);
\Processador|decoder|ALT_INV_saidaMux~0_combout\ <= NOT \Processador|decoder|saidaMux~0_combout\;
\Processador|flagIgual|ALT_INV_DOUT~q\ <= NOT \Processador|flagIgual|DOUT~q\;
\ROM_instrucao|ALT_INV_memROM~26_combout\ <= NOT \ROM_instrucao|memROM~26_combout\;
\ROM_instrucao|ALT_INV_memROM~25_combout\ <= NOT \ROM_instrucao|memROM~25_combout\;
\ROM_instrucao|ALT_INV_memROM~24_combout\ <= NOT \ROM_instrucao|memROM~24_combout\;
\ROM_instrucao|ALT_INV_memROM~23_combout\ <= NOT \ROM_instrucao|memROM~23_combout\;
\ROM_instrucao|ALT_INV_memROM~22_combout\ <= NOT \ROM_instrucao|memROM~22_combout\;
\ROM_instrucao|ALT_INV_memROM~21_combout\ <= NOT \ROM_instrucao|memROM~21_combout\;
\ROM_instrucao|ALT_INV_memROM~20_combout\ <= NOT \ROM_instrucao|memROM~20_combout\;
\ROM_instrucao|ALT_INV_memROM~19_combout\ <= NOT \ROM_instrucao|memROM~19_combout\;
\ALT_INV_Data_IN[0]~1_combout\ <= NOT \Data_IN[0]~1_combout\;
\ROM_instrucao|ALT_INV_memROM~18_combout\ <= NOT \ROM_instrucao|memROM~18_combout\;
\AndLedR|ALT_INV_saida~0_combout\ <= NOT \AndLedR|saida~0_combout\;
\ALT_INV_Data_IN[0]~0_combout\ <= NOT \Data_IN[0]~0_combout\;
\ROM_instrucao|ALT_INV_memROM~17_combout\ <= NOT \ROM_instrucao|memROM~17_combout\;
\AndHEX5|ALT_INV_saida~0_combout\ <= NOT \AndHEX5|saida~0_combout\;
\ROM_instrucao|ALT_INV_memROM~16_combout\ <= NOT \ROM_instrucao|memROM~16_combout\;
\ROM_instrucao|ALT_INV_memROM~15_combout\ <= NOT \ROM_instrucao|memROM~15_combout\;
\ROM_instrucao|ALT_INV_memROM~14_combout\ <= NOT \ROM_instrucao|memROM~14_combout\;
\ROM_instrucao|ALT_INV_memROM~13_combout\ <= NOT \ROM_instrucao|memROM~13_combout\;
\MemoriaRAM|ALT_INV_ram~575_combout\ <= NOT \MemoriaRAM|ram~575_combout\;
\MemoriaRAM|ALT_INV_ram~574_combout\ <= NOT \MemoriaRAM|ram~574_combout\;
\MemoriaRAM|ALT_INV_ram~505_q\ <= NOT \MemoriaRAM|ram~505_q\;
\MemoriaRAM|ALT_INV_ram~249_q\ <= NOT \MemoriaRAM|ram~249_q\;
\MemoriaRAM|ALT_INV_ram~377_q\ <= NOT \MemoriaRAM|ram~377_q\;
\MemoriaRAM|ALT_INV_ram~121_q\ <= NOT \MemoriaRAM|ram~121_q\;
\MemoriaRAM|ALT_INV_ram~573_combout\ <= NOT \MemoriaRAM|ram~573_combout\;
\MemoriaRAM|ALT_INV_ram~497_q\ <= NOT \MemoriaRAM|ram~497_q\;
\MemoriaRAM|ALT_INV_ram~241_q\ <= NOT \MemoriaRAM|ram~241_q\;
\MemoriaRAM|ALT_INV_ram~369_q\ <= NOT \MemoriaRAM|ram~369_q\;
\MemoriaRAM|ALT_INV_ram~113_q\ <= NOT \MemoriaRAM|ram~113_q\;
\MemoriaRAM|ALT_INV_ram~572_combout\ <= NOT \MemoriaRAM|ram~572_combout\;
\MemoriaRAM|ALT_INV_ram~313_q\ <= NOT \MemoriaRAM|ram~313_q\;
\MemoriaRAM|ALT_INV_ram~57_q\ <= NOT \MemoriaRAM|ram~57_q\;
\MemoriaRAM|ALT_INV_ram~571_combout\ <= NOT \MemoriaRAM|ram~571_combout\;
\MemoriaRAM|ALT_INV_ram~305_q\ <= NOT \MemoriaRAM|ram~305_q\;
\MemoriaRAM|ALT_INV_ram~49_q\ <= NOT \MemoriaRAM|ram~49_q\;
\MemoriaRAM|ALT_INV_ram~570_combout\ <= NOT \MemoriaRAM|ram~570_combout\;
\MemoriaRAM|ALT_INV_ram~569_combout\ <= NOT \MemoriaRAM|ram~569_combout\;
\MemoriaRAM|ALT_INV_ram~489_q\ <= NOT \MemoriaRAM|ram~489_q\;
\MemoriaRAM|ALT_INV_ram~233_q\ <= NOT \MemoriaRAM|ram~233_q\;
\MemoriaRAM|ALT_INV_ram~361_q\ <= NOT \MemoriaRAM|ram~361_q\;
\MemoriaRAM|ALT_INV_ram~105_q\ <= NOT \MemoriaRAM|ram~105_q\;
\MemoriaRAM|ALT_INV_ram~568_combout\ <= NOT \MemoriaRAM|ram~568_combout\;
\MemoriaRAM|ALT_INV_ram~481_q\ <= NOT \MemoriaRAM|ram~481_q\;
\MemoriaRAM|ALT_INV_ram~225_q\ <= NOT \MemoriaRAM|ram~225_q\;
\MemoriaRAM|ALT_INV_ram~353_q\ <= NOT \MemoriaRAM|ram~353_q\;
\MemoriaRAM|ALT_INV_ram~97_q\ <= NOT \MemoriaRAM|ram~97_q\;
\MemoriaRAM|ALT_INV_ram~567_combout\ <= NOT \MemoriaRAM|ram~567_combout\;
\MemoriaRAM|ALT_INV_ram~297_q\ <= NOT \MemoriaRAM|ram~297_q\;
\MemoriaRAM|ALT_INV_ram~41_q\ <= NOT \MemoriaRAM|ram~41_q\;
\MemoriaRAM|ALT_INV_ram~566_combout\ <= NOT \MemoriaRAM|ram~566_combout\;
\MemoriaRAM|ALT_INV_ram~289_q\ <= NOT \MemoriaRAM|ram~289_q\;
\MemoriaRAM|ALT_INV_ram~33_q\ <= NOT \MemoriaRAM|ram~33_q\;
\MemoriaRAM|ALT_INV_ram~565_combout\ <= NOT \MemoriaRAM|ram~565_combout\;
\MemoriaRAM|ALT_INV_ram~564_combout\ <= NOT \MemoriaRAM|ram~564_combout\;
\MemoriaRAM|ALT_INV_ram~473_q\ <= NOT \MemoriaRAM|ram~473_q\;
\MemoriaRAM|ALT_INV_ram~217_q\ <= NOT \MemoriaRAM|ram~217_q\;
\MemoriaRAM|ALT_INV_ram~345_q\ <= NOT \MemoriaRAM|ram~345_q\;
\MemoriaRAM|ALT_INV_ram~89_q\ <= NOT \MemoriaRAM|ram~89_q\;
\MemoriaRAM|ALT_INV_ram~563_combout\ <= NOT \MemoriaRAM|ram~563_combout\;
\MemoriaRAM|ALT_INV_ram~465_q\ <= NOT \MemoriaRAM|ram~465_q\;
\MemoriaRAM|ALT_INV_ram~209_q\ <= NOT \MemoriaRAM|ram~209_q\;
\MemoriaRAM|ALT_INV_ram~337_q\ <= NOT \MemoriaRAM|ram~337_q\;
\MemoriaRAM|ALT_INV_ram~81_q\ <= NOT \MemoriaRAM|ram~81_q\;
\MemoriaRAM|ALT_INV_ram~562_combout\ <= NOT \MemoriaRAM|ram~562_combout\;
\MemoriaRAM|ALT_INV_ram~281_q\ <= NOT \MemoriaRAM|ram~281_q\;
\MemoriaRAM|ALT_INV_ram~25_q\ <= NOT \MemoriaRAM|ram~25_q\;
\MemoriaRAM|ALT_INV_ram~561_combout\ <= NOT \MemoriaRAM|ram~561_combout\;
\MemoriaRAM|ALT_INV_ram~273_q\ <= NOT \MemoriaRAM|ram~273_q\;
\MemoriaRAM|ALT_INV_ram~17_q\ <= NOT \MemoriaRAM|ram~17_q\;
\Processador|MUX1|ALT_INV_saida_MUX[1]~0_combout\ <= NOT \Processador|MUX1|saida_MUX[1]~0_combout\;
\MemoriaRAM|ALT_INV_ram~560_combout\ <= NOT \MemoriaRAM|ram~560_combout\;
\MemoriaRAM|ALT_INV_ram~559_combout\ <= NOT \MemoriaRAM|ram~559_combout\;
\MemoriaRAM|ALT_INV_ram~558_combout\ <= NOT \MemoriaRAM|ram~558_combout\;
\MemoriaRAM|ALT_INV_ram~328_q\ <= NOT \MemoriaRAM|ram~328_q\;
\MemoriaRAM|ALT_INV_ram~392_q\ <= NOT \MemoriaRAM|ram~392_q\;
\MemoriaRAM|ALT_INV_ram~520_q\ <= NOT \MemoriaRAM|ram~520_q\;
\MemoriaRAM|ALT_INV_ram~557_combout\ <= NOT \MemoriaRAM|ram~557_combout\;
\MemoriaRAM|ALT_INV_ram~296_q\ <= NOT \MemoriaRAM|ram~296_q\;
\MemoriaRAM|ALT_INV_ram~360_q\ <= NOT \MemoriaRAM|ram~360_q\;
\MemoriaRAM|ALT_INV_ram~488_q\ <= NOT \MemoriaRAM|ram~488_q\;
\MemoriaRAM|ALT_INV_ram~556_combout\ <= NOT \MemoriaRAM|ram~556_combout\;
\MemoriaRAM|ALT_INV_ram~312_q\ <= NOT \MemoriaRAM|ram~312_q\;
\MemoriaRAM|ALT_INV_ram~376_q\ <= NOT \MemoriaRAM|ram~376_q\;
\MemoriaRAM|ALT_INV_ram~504_q\ <= NOT \MemoriaRAM|ram~504_q\;
\MemoriaRAM|ALT_INV_ram~555_combout\ <= NOT \MemoriaRAM|ram~555_combout\;
\MemoriaRAM|ALT_INV_ram~280_q\ <= NOT \MemoriaRAM|ram~280_q\;
\MemoriaRAM|ALT_INV_ram~344_q\ <= NOT \MemoriaRAM|ram~344_q\;
\MemoriaRAM|ALT_INV_ram~472_q\ <= NOT \MemoriaRAM|ram~472_q\;
\MemoriaRAM|ALT_INV_ram~554_combout\ <= NOT \MemoriaRAM|ram~554_combout\;
\MemoriaRAM|ALT_INV_ram~553_combout\ <= NOT \MemoriaRAM|ram~553_combout\;
\MemoriaRAM|ALT_INV_ram~72_q\ <= NOT \MemoriaRAM|ram~72_q\;
\MemoriaRAM|ALT_INV_ram~40_q\ <= NOT \MemoriaRAM|ram~40_q\;
\MemoriaRAM|ALT_INV_ram~56_q\ <= NOT \MemoriaRAM|ram~56_q\;
\MemoriaRAM|ALT_INV_ram~24_q\ <= NOT \MemoriaRAM|ram~24_q\;
\MemoriaRAM|ALT_INV_ram~552_combout\ <= NOT \MemoriaRAM|ram~552_combout\;
\MemoriaRAM|ALT_INV_ram~136_q\ <= NOT \MemoriaRAM|ram~136_q\;
\MemoriaRAM|ALT_INV_ram~104_q\ <= NOT \MemoriaRAM|ram~104_q\;
\MemoriaRAM|ALT_INV_ram~120_q\ <= NOT \MemoriaRAM|ram~120_q\;
\MemoriaRAM|ALT_INV_ram~88_q\ <= NOT \MemoriaRAM|ram~88_q\;
\MemoriaRAM|ALT_INV_ram~551_combout\ <= NOT \MemoriaRAM|ram~551_combout\;
\MemoriaRAM|ALT_INV_ram~264_q\ <= NOT \MemoriaRAM|ram~264_q\;
\MemoriaRAM|ALT_INV_ram~232_q\ <= NOT \MemoriaRAM|ram~232_q\;
\MemoriaRAM|ALT_INV_ram~248_q\ <= NOT \MemoriaRAM|ram~248_q\;
\MemoriaRAM|ALT_INV_ram~216_q\ <= NOT \MemoriaRAM|ram~216_q\;
\MemoriaRAM|ALT_INV_ram~550_combout\ <= NOT \MemoriaRAM|ram~550_combout\;
\MemoriaRAM|ALT_INV_ram~549_combout\ <= NOT \MemoriaRAM|ram~549_combout\;
\MemoriaRAM|ALT_INV_ram~512_q\ <= NOT \MemoriaRAM|ram~512_q\;
\MemoriaRAM|ALT_INV_ram~496_q\ <= NOT \MemoriaRAM|ram~496_q\;
\MemoriaRAM|ALT_INV_ram~548_combout\ <= NOT \MemoriaRAM|ram~548_combout\;
\MemoriaRAM|ALT_INV_ram~384_q\ <= NOT \MemoriaRAM|ram~384_q\;
\MemoriaRAM|ALT_INV_ram~320_q\ <= NOT \MemoriaRAM|ram~320_q\;
\MemoriaRAM|ALT_INV_ram~368_q\ <= NOT \MemoriaRAM|ram~368_q\;
\MemoriaRAM|ALT_INV_ram~304_q\ <= NOT \MemoriaRAM|ram~304_q\;
\MemoriaRAM|ALT_INV_ram~547_combout\ <= NOT \MemoriaRAM|ram~547_combout\;
\MemoriaRAM|ALT_INV_ram~480_q\ <= NOT \MemoriaRAM|ram~480_q\;
\MemoriaRAM|ALT_INV_ram~464_q\ <= NOT \MemoriaRAM|ram~464_q\;
\MemoriaRAM|ALT_INV_ram~546_combout\ <= NOT \MemoriaRAM|ram~546_combout\;
\MemoriaRAM|ALT_INV_ram~352_q\ <= NOT \MemoriaRAM|ram~352_q\;
\MemoriaRAM|ALT_INV_ram~288_q\ <= NOT \MemoriaRAM|ram~288_q\;
\MemoriaRAM|ALT_INV_ram~336_q\ <= NOT \MemoriaRAM|ram~336_q\;
\MemoriaRAM|ALT_INV_ram~272_q\ <= NOT \MemoriaRAM|ram~272_q\;
\MemoriaRAM|ALT_INV_ram~545_combout\ <= NOT \MemoriaRAM|ram~545_combout\;
\MemoriaRAM|ALT_INV_ram~544_combout\ <= NOT \MemoriaRAM|ram~544_combout\;
\MemoriaRAM|ALT_INV_ram~64_q\ <= NOT \MemoriaRAM|ram~64_q\;
\MemoriaRAM|ALT_INV_ram~32_q\ <= NOT \MemoriaRAM|ram~32_q\;
\MemoriaRAM|ALT_INV_ram~48_q\ <= NOT \MemoriaRAM|ram~48_q\;
\MemoriaRAM|ALT_INV_ram~16_q\ <= NOT \MemoriaRAM|ram~16_q\;
\MemoriaRAM|ALT_INV_ram~543_combout\ <= NOT \MemoriaRAM|ram~543_combout\;
\MemoriaRAM|ALT_INV_ram~128_q\ <= NOT \MemoriaRAM|ram~128_q\;
\MemoriaRAM|ALT_INV_ram~96_q\ <= NOT \MemoriaRAM|ram~96_q\;
\MemoriaRAM|ALT_INV_ram~112_q\ <= NOT \MemoriaRAM|ram~112_q\;
\MemoriaRAM|ALT_INV_ram~80_q\ <= NOT \MemoriaRAM|ram~80_q\;
\MemoriaRAM|ALT_INV_ram~542_combout\ <= NOT \MemoriaRAM|ram~542_combout\;
\MemoriaRAM|ALT_INV_ram~256_q\ <= NOT \MemoriaRAM|ram~256_q\;
\MemoriaRAM|ALT_INV_ram~224_q\ <= NOT \MemoriaRAM|ram~224_q\;
\MemoriaRAM|ALT_INV_ram~240_q\ <= NOT \MemoriaRAM|ram~240_q\;
\MemoriaRAM|ALT_INV_ram~208_q\ <= NOT \MemoriaRAM|ram~208_q\;
\AndSW0_7|ALT_INV_saida~3_combout\ <= NOT \AndSW0_7|saida~3_combout\;
\ALT_INV_Data_IN[0]~10_combout\ <= NOT \Data_IN[0]~10_combout\;
\ALT_INV_Data_IN[0]~9_combout\ <= NOT \Data_IN[0]~9_combout\;
\AndSW0_7|ALT_INV_saida~2_combout\ <= NOT \AndSW0_7|saida~2_combout\;
\MemoriaRAM|ALT_INV_ram~251_q\ <= NOT \MemoriaRAM|ram~251_q\;
\MemoriaRAM|ALT_INV_ram~123_q\ <= NOT \MemoriaRAM|ram~123_q\;
\MemoriaRAM|ALT_INV_ram~219_q\ <= NOT \MemoriaRAM|ram~219_q\;
\MemoriaRAM|ALT_INV_ram~91_q\ <= NOT \MemoriaRAM|ram~91_q\;
\MemoriaRAM|ALT_INV_ram~608_combout\ <= NOT \MemoriaRAM|ram~608_combout\;
\MemoriaRAM|ALT_INV_ram~59_q\ <= NOT \MemoriaRAM|ram~59_q\;
\MemoriaRAM|ALT_INV_ram~27_q\ <= NOT \MemoriaRAM|ram~27_q\;
\MemoriaRAM|ALT_INV_ram~607_combout\ <= NOT \MemoriaRAM|ram~607_combout\;
\MemoriaRAM|ALT_INV_ram~606_combout\ <= NOT \MemoriaRAM|ram~606_combout\;
\MemoriaRAM|ALT_INV_ram~323_q\ <= NOT \MemoriaRAM|ram~323_q\;
\MemoriaRAM|ALT_INV_ram~291_q\ <= NOT \MemoriaRAM|ram~291_q\;
\MemoriaRAM|ALT_INV_ram~307_q\ <= NOT \MemoriaRAM|ram~307_q\;
\MemoriaRAM|ALT_INV_ram~275_q\ <= NOT \MemoriaRAM|ram~275_q\;
\MemoriaRAM|ALT_INV_ram~605_combout\ <= NOT \MemoriaRAM|ram~605_combout\;
\MemoriaRAM|ALT_INV_ram~387_q\ <= NOT \MemoriaRAM|ram~387_q\;
\MemoriaRAM|ALT_INV_ram~355_q\ <= NOT \MemoriaRAM|ram~355_q\;
\MemoriaRAM|ALT_INV_ram~371_q\ <= NOT \MemoriaRAM|ram~371_q\;
\MemoriaRAM|ALT_INV_ram~339_q\ <= NOT \MemoriaRAM|ram~339_q\;
\MemoriaRAM|ALT_INV_ram~604_combout\ <= NOT \MemoriaRAM|ram~604_combout\;
\MemoriaRAM|ALT_INV_ram~515_q\ <= NOT \MemoriaRAM|ram~515_q\;
\MemoriaRAM|ALT_INV_ram~483_q\ <= NOT \MemoriaRAM|ram~483_q\;
\MemoriaRAM|ALT_INV_ram~499_q\ <= NOT \MemoriaRAM|ram~499_q\;
\MemoriaRAM|ALT_INV_ram~467_q\ <= NOT \MemoriaRAM|ram~467_q\;
\MemoriaRAM|ALT_INV_ram~603_combout\ <= NOT \MemoriaRAM|ram~603_combout\;
\MemoriaRAM|ALT_INV_ram~602_combout\ <= NOT \MemoriaRAM|ram~602_combout\;
\MemoriaRAM|ALT_INV_ram~259_q\ <= NOT \MemoriaRAM|ram~259_q\;
\MemoriaRAM|ALT_INV_ram~227_q\ <= NOT \MemoriaRAM|ram~227_q\;
\MemoriaRAM|ALT_INV_ram~601_combout\ <= NOT \MemoriaRAM|ram~601_combout\;
\MemoriaRAM|ALT_INV_ram~131_q\ <= NOT \MemoriaRAM|ram~131_q\;
\MemoriaRAM|ALT_INV_ram~99_q\ <= NOT \MemoriaRAM|ram~99_q\;
\MemoriaRAM|ALT_INV_ram~67_q\ <= NOT \MemoriaRAM|ram~67_q\;
\MemoriaRAM|ALT_INV_ram~35_q\ <= NOT \MemoriaRAM|ram~35_q\;
\MemoriaRAM|ALT_INV_ram~600_combout\ <= NOT \MemoriaRAM|ram~600_combout\;
\MemoriaRAM|ALT_INV_ram~243_q\ <= NOT \MemoriaRAM|ram~243_q\;
\MemoriaRAM|ALT_INV_ram~211_q\ <= NOT \MemoriaRAM|ram~211_q\;
\MemoriaRAM|ALT_INV_ram~599_combout\ <= NOT \MemoriaRAM|ram~599_combout\;
\MemoriaRAM|ALT_INV_ram~115_q\ <= NOT \MemoriaRAM|ram~115_q\;
\MemoriaRAM|ALT_INV_ram~83_q\ <= NOT \MemoriaRAM|ram~83_q\;
\MemoriaRAM|ALT_INV_ram~51_q\ <= NOT \MemoriaRAM|ram~51_q\;
\MemoriaRAM|ALT_INV_ram~19_q\ <= NOT \MemoriaRAM|ram~19_q\;
\Processador|MUX1|ALT_INV_saida_MUX[3]~2_combout\ <= NOT \Processador|MUX1|saida_MUX[3]~2_combout\;
\MemoriaRAM|ALT_INV_ram~598_combout\ <= NOT \MemoriaRAM|ram~598_combout\;
\MemoriaRAM|ALT_INV_ram~597_combout\ <= NOT \MemoriaRAM|ram~597_combout\;
\MemoriaRAM|ALT_INV_ram~596_combout\ <= NOT \MemoriaRAM|ram~596_combout\;
\MemoriaRAM|ALT_INV_ram~522_q\ <= NOT \MemoriaRAM|ram~522_q\;
\MemoriaRAM|ALT_INV_ram~514_q\ <= NOT \MemoriaRAM|ram~514_q\;
\MemoriaRAM|ALT_INV_ram~490_q\ <= NOT \MemoriaRAM|ram~490_q\;
\MemoriaRAM|ALT_INV_ram~482_q\ <= NOT \MemoriaRAM|ram~482_q\;
\MemoriaRAM|ALT_INV_ram~595_combout\ <= NOT \MemoriaRAM|ram~595_combout\;
\MemoriaRAM|ALT_INV_ram~506_q\ <= NOT \MemoriaRAM|ram~506_q\;
\MemoriaRAM|ALT_INV_ram~498_q\ <= NOT \MemoriaRAM|ram~498_q\;
\MemoriaRAM|ALT_INV_ram~474_q\ <= NOT \MemoriaRAM|ram~474_q\;
\MemoriaRAM|ALT_INV_ram~466_q\ <= NOT \MemoriaRAM|ram~466_q\;
\MemoriaRAM|ALT_INV_ram~594_combout\ <= NOT \MemoriaRAM|ram~594_combout\;
\MemoriaRAM|ALT_INV_ram~593_combout\ <= NOT \MemoriaRAM|ram~593_combout\;
\MemoriaRAM|ALT_INV_ram~266_q\ <= NOT \MemoriaRAM|ram~266_q\;
\MemoriaRAM|ALT_INV_ram~258_q\ <= NOT \MemoriaRAM|ram~258_q\;
\MemoriaRAM|ALT_INV_ram~250_q\ <= NOT \MemoriaRAM|ram~250_q\;
\MemoriaRAM|ALT_INV_ram~242_q\ <= NOT \MemoriaRAM|ram~242_q\;
\MemoriaRAM|ALT_INV_ram~592_combout\ <= NOT \MemoriaRAM|ram~592_combout\;
\MemoriaRAM|ALT_INV_ram~234_q\ <= NOT \MemoriaRAM|ram~234_q\;
\MemoriaRAM|ALT_INV_ram~226_q\ <= NOT \MemoriaRAM|ram~226_q\;
\MemoriaRAM|ALT_INV_ram~218_q\ <= NOT \MemoriaRAM|ram~218_q\;
\MemoriaRAM|ALT_INV_ram~210_q\ <= NOT \MemoriaRAM|ram~210_q\;
\MemoriaRAM|ALT_INV_ram~591_combout\ <= NOT \MemoriaRAM|ram~591_combout\;
\MemoriaRAM|ALT_INV_ram~590_combout\ <= NOT \MemoriaRAM|ram~590_combout\;
\MemoriaRAM|ALT_INV_ram~394_q\ <= NOT \MemoriaRAM|ram~394_q\;
\MemoriaRAM|ALT_INV_ram~386_q\ <= NOT \MemoriaRAM|ram~386_q\;
\MemoriaRAM|ALT_INV_ram~330_q\ <= NOT \MemoriaRAM|ram~330_q\;
\MemoriaRAM|ALT_INV_ram~322_q\ <= NOT \MemoriaRAM|ram~322_q\;
\MemoriaRAM|ALT_INV_ram~589_combout\ <= NOT \MemoriaRAM|ram~589_combout\;
\MemoriaRAM|ALT_INV_ram~362_q\ <= NOT \MemoriaRAM|ram~362_q\;
\MemoriaRAM|ALT_INV_ram~354_q\ <= NOT \MemoriaRAM|ram~354_q\;
\MemoriaRAM|ALT_INV_ram~298_q\ <= NOT \MemoriaRAM|ram~298_q\;
\MemoriaRAM|ALT_INV_ram~290_q\ <= NOT \MemoriaRAM|ram~290_q\;
\MemoriaRAM|ALT_INV_ram~588_combout\ <= NOT \MemoriaRAM|ram~588_combout\;
\MemoriaRAM|ALT_INV_ram~378_q\ <= NOT \MemoriaRAM|ram~378_q\;
\MemoriaRAM|ALT_INV_ram~370_q\ <= NOT \MemoriaRAM|ram~370_q\;
\MemoriaRAM|ALT_INV_ram~314_q\ <= NOT \MemoriaRAM|ram~314_q\;
\MemoriaRAM|ALT_INV_ram~306_q\ <= NOT \MemoriaRAM|ram~306_q\;
\MemoriaRAM|ALT_INV_ram~587_combout\ <= NOT \MemoriaRAM|ram~587_combout\;
\MemoriaRAM|ALT_INV_ram~346_q\ <= NOT \MemoriaRAM|ram~346_q\;
\MemoriaRAM|ALT_INV_ram~338_q\ <= NOT \MemoriaRAM|ram~338_q\;
\MemoriaRAM|ALT_INV_ram~282_q\ <= NOT \MemoriaRAM|ram~282_q\;
\MemoriaRAM|ALT_INV_ram~274_q\ <= NOT \MemoriaRAM|ram~274_q\;
\MemoriaRAM|ALT_INV_ram~586_combout\ <= NOT \MemoriaRAM|ram~586_combout\;
\MemoriaRAM|ALT_INV_ram~585_combout\ <= NOT \MemoriaRAM|ram~585_combout\;
\MemoriaRAM|ALT_INV_ram~138_q\ <= NOT \MemoriaRAM|ram~138_q\;
\MemoriaRAM|ALT_INV_ram~130_q\ <= NOT \MemoriaRAM|ram~130_q\;
\MemoriaRAM|ALT_INV_ram~106_q\ <= NOT \MemoriaRAM|ram~106_q\;
\MemoriaRAM|ALT_INV_ram~98_q\ <= NOT \MemoriaRAM|ram~98_q\;
\MemoriaRAM|ALT_INV_ram~584_combout\ <= NOT \MemoriaRAM|ram~584_combout\;
\MemoriaRAM|ALT_INV_ram~74_q\ <= NOT \MemoriaRAM|ram~74_q\;
\MemoriaRAM|ALT_INV_ram~66_q\ <= NOT \MemoriaRAM|ram~66_q\;
\MemoriaRAM|ALT_INV_ram~42_q\ <= NOT \MemoriaRAM|ram~42_q\;
\MemoriaRAM|ALT_INV_ram~34_q\ <= NOT \MemoriaRAM|ram~34_q\;
\MemoriaRAM|ALT_INV_ram~583_combout\ <= NOT \MemoriaRAM|ram~583_combout\;
\MemoriaRAM|ALT_INV_ram~122_q\ <= NOT \MemoriaRAM|ram~122_q\;
\MemoriaRAM|ALT_INV_ram~114_q\ <= NOT \MemoriaRAM|ram~114_q\;
\MemoriaRAM|ALT_INV_ram~90_q\ <= NOT \MemoriaRAM|ram~90_q\;
\MemoriaRAM|ALT_INV_ram~82_q\ <= NOT \MemoriaRAM|ram~82_q\;
\MemoriaRAM|ALT_INV_ram~582_combout\ <= NOT \MemoriaRAM|ram~582_combout\;
\MemoriaRAM|ALT_INV_ram~58_q\ <= NOT \MemoriaRAM|ram~58_q\;
\MemoriaRAM|ALT_INV_ram~50_q\ <= NOT \MemoriaRAM|ram~50_q\;
\MemoriaRAM|ALT_INV_ram~26_q\ <= NOT \MemoriaRAM|ram~26_q\;
\MemoriaRAM|ALT_INV_ram~18_q\ <= NOT \MemoriaRAM|ram~18_q\;
\Processador|MUX1|ALT_INV_saida_MUX[2]~1_combout\ <= NOT \Processador|MUX1|saida_MUX[2]~1_combout\;
\MemoriaRAM|ALT_INV_ram~581_combout\ <= NOT \MemoriaRAM|ram~581_combout\;
\MemoriaRAM|ALT_INV_ram~580_combout\ <= NOT \MemoriaRAM|ram~580_combout\;
\MemoriaRAM|ALT_INV_ram~579_combout\ <= NOT \MemoriaRAM|ram~579_combout\;
\MemoriaRAM|ALT_INV_ram~521_q\ <= NOT \MemoriaRAM|ram~521_q\;
\MemoriaRAM|ALT_INV_ram~265_q\ <= NOT \MemoriaRAM|ram~265_q\;
\MemoriaRAM|ALT_INV_ram~393_q\ <= NOT \MemoriaRAM|ram~393_q\;
\MemoriaRAM|ALT_INV_ram~137_q\ <= NOT \MemoriaRAM|ram~137_q\;
\MemoriaRAM|ALT_INV_ram~578_combout\ <= NOT \MemoriaRAM|ram~578_combout\;
\MemoriaRAM|ALT_INV_ram~513_q\ <= NOT \MemoriaRAM|ram~513_q\;
\MemoriaRAM|ALT_INV_ram~257_q\ <= NOT \MemoriaRAM|ram~257_q\;
\MemoriaRAM|ALT_INV_ram~385_q\ <= NOT \MemoriaRAM|ram~385_q\;
\MemoriaRAM|ALT_INV_ram~129_q\ <= NOT \MemoriaRAM|ram~129_q\;
\MemoriaRAM|ALT_INV_ram~577_combout\ <= NOT \MemoriaRAM|ram~577_combout\;
\MemoriaRAM|ALT_INV_ram~329_q\ <= NOT \MemoriaRAM|ram~329_q\;
\MemoriaRAM|ALT_INV_ram~73_q\ <= NOT \MemoriaRAM|ram~73_q\;
\MemoriaRAM|ALT_INV_ram~576_combout\ <= NOT \MemoriaRAM|ram~576_combout\;
\MemoriaRAM|ALT_INV_ram~321_q\ <= NOT \MemoriaRAM|ram~321_q\;
\MemoriaRAM|ALT_INV_ram~65_q\ <= NOT \MemoriaRAM|ram~65_q\;
\FFDebouceMem_key0|ALT_INV_DOUT~DUPLICATE_q\ <= NOT \FFDebouceMem_key0|DOUT~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[8]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[7]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[6]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[4]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[3]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[2]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[1]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_KEY1~input_o\ <= NOT \KEY1~input_o\;
\ALT_INV_KEY0~input_o\ <= NOT \KEY0~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY2~input_o\ <= NOT \KEY2~input_o\;
\ALT_INV_KEY3~input_o\ <= NOT \KEY3~input_o\;
\ALT_INV_FPGA_RESET~input_o\ <= NOT \FPGA_RESET~input_o\;
\Processador|flagIgual|ALT_INV_DOUT~2_combout\ <= NOT \Processador|flagIgual|DOUT~2_combout\;
\Processador|flagIgual|ALT_INV_DOUT~1_combout\ <= NOT \Processador|flagIgual|DOUT~1_combout\;
\MemoriaRAM|ALT_INV_ram~762_combout\ <= NOT \MemoriaRAM|ram~762_combout\;
\MemoriaRAM|ALT_INV_ram~761_combout\ <= NOT \MemoriaRAM|ram~761_combout\;
\DebouceMem_key1|ALT_INV_saidaQ~q\ <= NOT \DebouceMem_key1|saidaQ~q\;
\DebouceMem_key0|ALT_INV_saidaQ~q\ <= NOT \DebouceMem_key0|saidaQ~q\;
\ROM_instrucao|ALT_INV_memROM~31_combout\ <= NOT \ROM_instrucao|memROM~31_combout\;
\ROM_instrucao|ALT_INV_memROM~30_combout\ <= NOT \ROM_instrucao|memROM~30_combout\;
\ROM_instrucao|ALT_INV_memROM~29_combout\ <= NOT \ROM_instrucao|memROM~29_combout\;
\ROM_instrucao|ALT_INV_memROM~28_combout\ <= NOT \ROM_instrucao|memROM~28_combout\;
\DecoderHabBloc|ALT_INV_Equal0~2_combout\ <= NOT \DecoderHabBloc|Equal0~2_combout\;
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
\MemoriaRAM|ALT_INV_ram~715_combout\ <= NOT \MemoriaRAM|ram~715_combout\;
\MemoriaRAM|ALT_INV_ram~713_combout\ <= NOT \MemoriaRAM|ram~713_combout\;
\MemoriaRAM|ALT_INV_ram~711_combout\ <= NOT \MemoriaRAM|ram~711_combout\;
\MemoriaRAM|ALT_INV_ram~709_combout\ <= NOT \MemoriaRAM|ram~709_combout\;
\MemoriaRAM|ALT_INV_ram~703_combout\ <= NOT \MemoriaRAM|ram~703_combout\;
\MemoriaRAM|ALT_INV_ram~701_combout\ <= NOT \MemoriaRAM|ram~701_combout\;
\MemoriaRAM|ALT_INV_ram~699_combout\ <= NOT \MemoriaRAM|ram~699_combout\;
\MemoriaRAM|ALT_INV_ram~697_combout\ <= NOT \MemoriaRAM|ram~697_combout\;
\MemoriaRAM|ALT_INV_ram~695_combout\ <= NOT \MemoriaRAM|ram~695_combout\;
\MemoriaRAM|ALT_INV_ram~693_combout\ <= NOT \MemoriaRAM|ram~693_combout\;
\MemoriaRAM|ALT_INV_ram~691_combout\ <= NOT \MemoriaRAM|ram~691_combout\;
\MemoriaRAM|ALT_INV_ram~689_combout\ <= NOT \MemoriaRAM|ram~689_combout\;
\MemoriaRAM|ALT_INV_process_0~0_combout\ <= NOT \MemoriaRAM|process_0~0_combout\;
\ROM_instrucao|ALT_INV_memROM~27_combout\ <= NOT \ROM_instrucao|memROM~27_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\Processador|MUX1|ALT_INV_saida_MUX[7]~6_combout\ <= NOT \Processador|MUX1|saida_MUX[7]~6_combout\;
\MemoriaRAM|ALT_INV_ram~680_combout\ <= NOT \MemoriaRAM|ram~680_combout\;
\MemoriaRAM|ALT_INV_ram~679_combout\ <= NOT \MemoriaRAM|ram~679_combout\;
\MemoriaRAM|ALT_INV_ram~678_combout\ <= NOT \MemoriaRAM|ram~678_combout\;
\MemoriaRAM|ALT_INV_ram~526_q\ <= NOT \MemoriaRAM|ram~526_q\;
\MemoriaRAM|ALT_INV_ram~494_q\ <= NOT \MemoriaRAM|ram~494_q\;
\MemoriaRAM|ALT_INV_ram~677_combout\ <= NOT \MemoriaRAM|ram~677_combout\;
\MemoriaRAM|ALT_INV_ram~518_q\ <= NOT \MemoriaRAM|ram~518_q\;
\MemoriaRAM|ALT_INV_ram~486_q\ <= NOT \MemoriaRAM|ram~486_q\;
\MemoriaRAM|ALT_INV_ram~676_combout\ <= NOT \MemoriaRAM|ram~676_combout\;
\MemoriaRAM|ALT_INV_ram~510_q\ <= NOT \MemoriaRAM|ram~510_q\;
\MemoriaRAM|ALT_INV_ram~478_q\ <= NOT \MemoriaRAM|ram~478_q\;
\MemoriaRAM|ALT_INV_ram~675_combout\ <= NOT \MemoriaRAM|ram~675_combout\;
\MemoriaRAM|ALT_INV_ram~502_q\ <= NOT \MemoriaRAM|ram~502_q\;
\MemoriaRAM|ALT_INV_ram~470_q\ <= NOT \MemoriaRAM|ram~470_q\;
\MemoriaRAM|ALT_INV_ram~674_combout\ <= NOT \MemoriaRAM|ram~674_combout\;
\MemoriaRAM|ALT_INV_ram~673_combout\ <= NOT \MemoriaRAM|ram~673_combout\;
\MemoriaRAM|ALT_INV_ram~398_q\ <= NOT \MemoriaRAM|ram~398_q\;
\MemoriaRAM|ALT_INV_ram~390_q\ <= NOT \MemoriaRAM|ram~390_q\;
\MemoriaRAM|ALT_INV_ram~382_q\ <= NOT \MemoriaRAM|ram~382_q\;
\MemoriaRAM|ALT_INV_ram~374_q\ <= NOT \MemoriaRAM|ram~374_q\;
\MemoriaRAM|ALT_INV_ram~672_combout\ <= NOT \MemoriaRAM|ram~672_combout\;
\MemoriaRAM|ALT_INV_ram~366_q\ <= NOT \MemoriaRAM|ram~366_q\;
\MemoriaRAM|ALT_INV_ram~358_q\ <= NOT \MemoriaRAM|ram~358_q\;
\MemoriaRAM|ALT_INV_ram~350_q\ <= NOT \MemoriaRAM|ram~350_q\;
\MemoriaRAM|ALT_INV_ram~342_q\ <= NOT \MemoriaRAM|ram~342_q\;
\MemoriaRAM|ALT_INV_ram~671_combout\ <= NOT \MemoriaRAM|ram~671_combout\;
\MemoriaRAM|ALT_INV_ram~334_q\ <= NOT \MemoriaRAM|ram~334_q\;
\MemoriaRAM|ALT_INV_ram~326_q\ <= NOT \MemoriaRAM|ram~326_q\;
\MemoriaRAM|ALT_INV_ram~318_q\ <= NOT \MemoriaRAM|ram~318_q\;
\MemoriaRAM|ALT_INV_ram~310_q\ <= NOT \MemoriaRAM|ram~310_q\;
\MemoriaRAM|ALT_INV_ram~670_combout\ <= NOT \MemoriaRAM|ram~670_combout\;
\MemoriaRAM|ALT_INV_ram~302_q\ <= NOT \MemoriaRAM|ram~302_q\;
\MemoriaRAM|ALT_INV_ram~294_q\ <= NOT \MemoriaRAM|ram~294_q\;
\MemoriaRAM|ALT_INV_ram~286_q\ <= NOT \MemoriaRAM|ram~286_q\;
\MemoriaRAM|ALT_INV_ram~278_q\ <= NOT \MemoriaRAM|ram~278_q\;
\MemoriaRAM|ALT_INV_ram~669_combout\ <= NOT \MemoriaRAM|ram~669_combout\;
\MemoriaRAM|ALT_INV_ram~668_combout\ <= NOT \MemoriaRAM|ram~668_combout\;
\MemoriaRAM|ALT_INV_ram~270_q\ <= NOT \MemoriaRAM|ram~270_q\;
\MemoriaRAM|ALT_INV_ram~238_q\ <= NOT \MemoriaRAM|ram~238_q\;
\MemoriaRAM|ALT_INV_ram~667_combout\ <= NOT \MemoriaRAM|ram~667_combout\;
\MemoriaRAM|ALT_INV_ram~262_q\ <= NOT \MemoriaRAM|ram~262_q\;
\MemoriaRAM|ALT_INV_ram~230_q\ <= NOT \MemoriaRAM|ram~230_q\;
\MemoriaRAM|ALT_INV_ram~666_combout\ <= NOT \MemoriaRAM|ram~666_combout\;
\MemoriaRAM|ALT_INV_ram~254_q\ <= NOT \MemoriaRAM|ram~254_q\;
\MemoriaRAM|ALT_INV_ram~222_q\ <= NOT \MemoriaRAM|ram~222_q\;
\MemoriaRAM|ALT_INV_ram~665_combout\ <= NOT \MemoriaRAM|ram~665_combout\;
\MemoriaRAM|ALT_INV_ram~246_q\ <= NOT \MemoriaRAM|ram~246_q\;
\MemoriaRAM|ALT_INV_ram~214_q\ <= NOT \MemoriaRAM|ram~214_q\;
\MemoriaRAM|ALT_INV_ram~664_combout\ <= NOT \MemoriaRAM|ram~664_combout\;
\MemoriaRAM|ALT_INV_ram~663_combout\ <= NOT \MemoriaRAM|ram~663_combout\;
\MemoriaRAM|ALT_INV_ram~142_q\ <= NOT \MemoriaRAM|ram~142_q\;
\MemoriaRAM|ALT_INV_ram~134_q\ <= NOT \MemoriaRAM|ram~134_q\;
\MemoriaRAM|ALT_INV_ram~126_q\ <= NOT \MemoriaRAM|ram~126_q\;
\MemoriaRAM|ALT_INV_ram~118_q\ <= NOT \MemoriaRAM|ram~118_q\;
\MemoriaRAM|ALT_INV_ram~662_combout\ <= NOT \MemoriaRAM|ram~662_combout\;
\MemoriaRAM|ALT_INV_ram~110_q\ <= NOT \MemoriaRAM|ram~110_q\;
\MemoriaRAM|ALT_INV_ram~102_q\ <= NOT \MemoriaRAM|ram~102_q\;
\MemoriaRAM|ALT_INV_ram~94_q\ <= NOT \MemoriaRAM|ram~94_q\;
\MemoriaRAM|ALT_INV_ram~86_q\ <= NOT \MemoriaRAM|ram~86_q\;
\MemoriaRAM|ALT_INV_ram~661_combout\ <= NOT \MemoriaRAM|ram~661_combout\;
\MemoriaRAM|ALT_INV_ram~78_q\ <= NOT \MemoriaRAM|ram~78_q\;
\MemoriaRAM|ALT_INV_ram~70_q\ <= NOT \MemoriaRAM|ram~70_q\;
\MemoriaRAM|ALT_INV_ram~62_q\ <= NOT \MemoriaRAM|ram~62_q\;
\MemoriaRAM|ALT_INV_ram~54_q\ <= NOT \MemoriaRAM|ram~54_q\;
\MemoriaRAM|ALT_INV_ram~660_combout\ <= NOT \MemoriaRAM|ram~660_combout\;
\MemoriaRAM|ALT_INV_ram~46_q\ <= NOT \MemoriaRAM|ram~46_q\;
\MemoriaRAM|ALT_INV_ram~38_q\ <= NOT \MemoriaRAM|ram~38_q\;
\MemoriaRAM|ALT_INV_ram~30_q\ <= NOT \MemoriaRAM|ram~30_q\;
\MemoriaRAM|ALT_INV_ram~22_q\ <= NOT \MemoriaRAM|ram~22_q\;
\Processador|MUX1|ALT_INV_saida_MUX[6]~5_combout\ <= NOT \Processador|MUX1|saida_MUX[6]~5_combout\;
\MemoriaRAM|ALT_INV_ram~659_combout\ <= NOT \MemoriaRAM|ram~659_combout\;
\MemoriaRAM|ALT_INV_ram~658_combout\ <= NOT \MemoriaRAM|ram~658_combout\;
\MemoriaRAM|ALT_INV_ram~657_combout\ <= NOT \MemoriaRAM|ram~657_combout\;
\MemoriaRAM|ALT_INV_ram~525_q\ <= NOT \MemoriaRAM|ram~525_q\;
\MemoriaRAM|ALT_INV_ram~517_q\ <= NOT \MemoriaRAM|ram~517_q\;
\MemoriaRAM|ALT_INV_ram~397_q\ <= NOT \MemoriaRAM|ram~397_q\;
\MemoriaRAM|ALT_INV_ram~389_q\ <= NOT \MemoriaRAM|ram~389_q\;
\MemoriaRAM|ALT_INV_ram~656_combout\ <= NOT \MemoriaRAM|ram~656_combout\;
\MemoriaRAM|ALT_INV_ram~493_q\ <= NOT \MemoriaRAM|ram~493_q\;
\MemoriaRAM|ALT_INV_ram~485_q\ <= NOT \MemoriaRAM|ram~485_q\;
\MemoriaRAM|ALT_INV_ram~365_q\ <= NOT \MemoriaRAM|ram~365_q\;
\MemoriaRAM|ALT_INV_ram~357_q\ <= NOT \MemoriaRAM|ram~357_q\;
\MemoriaRAM|ALT_INV_ram~655_combout\ <= NOT \MemoriaRAM|ram~655_combout\;
\MemoriaRAM|ALT_INV_ram~333_q\ <= NOT \MemoriaRAM|ram~333_q\;
\MemoriaRAM|ALT_INV_ram~325_q\ <= NOT \MemoriaRAM|ram~325_q\;
\MemoriaRAM|ALT_INV_ram~654_combout\ <= NOT \MemoriaRAM|ram~654_combout\;
\MemoriaRAM|ALT_INV_ram~301_q\ <= NOT \MemoriaRAM|ram~301_q\;
\MemoriaRAM|ALT_INV_ram~293_q\ <= NOT \MemoriaRAM|ram~293_q\;
\MemoriaRAM|ALT_INV_ram~653_combout\ <= NOT \MemoriaRAM|ram~653_combout\;
\MemoriaRAM|ALT_INV_ram~652_combout\ <= NOT \MemoriaRAM|ram~652_combout\;
\MemoriaRAM|ALT_INV_ram~77_q\ <= NOT \MemoriaRAM|ram~77_q\;
\MemoriaRAM|ALT_INV_ram~141_q\ <= NOT \MemoriaRAM|ram~141_q\;
\MemoriaRAM|ALT_INV_ram~269_q\ <= NOT \MemoriaRAM|ram~269_q\;
\MemoriaRAM|ALT_INV_ram~651_combout\ <= NOT \MemoriaRAM|ram~651_combout\;
\MemoriaRAM|ALT_INV_ram~69_q\ <= NOT \MemoriaRAM|ram~69_q\;
\MemoriaRAM|ALT_INV_ram~133_q\ <= NOT \MemoriaRAM|ram~133_q\;
\MemoriaRAM|ALT_INV_ram~261_q\ <= NOT \MemoriaRAM|ram~261_q\;
\MemoriaRAM|ALT_INV_ram~650_combout\ <= NOT \MemoriaRAM|ram~650_combout\;
\MemoriaRAM|ALT_INV_ram~45_q\ <= NOT \MemoriaRAM|ram~45_q\;
\MemoriaRAM|ALT_INV_ram~109_q\ <= NOT \MemoriaRAM|ram~109_q\;
\MemoriaRAM|ALT_INV_ram~237_q\ <= NOT \MemoriaRAM|ram~237_q\;
\MemoriaRAM|ALT_INV_ram~649_combout\ <= NOT \MemoriaRAM|ram~649_combout\;
\MemoriaRAM|ALT_INV_ram~37_q\ <= NOT \MemoriaRAM|ram~37_q\;
\MemoriaRAM|ALT_INV_ram~101_q\ <= NOT \MemoriaRAM|ram~101_q\;
\MemoriaRAM|ALT_INV_ram~229_q\ <= NOT \MemoriaRAM|ram~229_q\;
\MemoriaRAM|ALT_INV_ram~648_combout\ <= NOT \MemoriaRAM|ram~648_combout\;
\MemoriaRAM|ALT_INV_ram~647_combout\ <= NOT \MemoriaRAM|ram~647_combout\;
\MemoriaRAM|ALT_INV_ram~509_q\ <= NOT \MemoriaRAM|ram~509_q\;
\MemoriaRAM|ALT_INV_ram~381_q\ <= NOT \MemoriaRAM|ram~381_q\;
\MemoriaRAM|ALT_INV_ram~477_q\ <= NOT \MemoriaRAM|ram~477_q\;
\MemoriaRAM|ALT_INV_ram~349_q\ <= NOT \MemoriaRAM|ram~349_q\;
\MemoriaRAM|ALT_INV_ram~646_combout\ <= NOT \MemoriaRAM|ram~646_combout\;
\MemoriaRAM|ALT_INV_ram~501_q\ <= NOT \MemoriaRAM|ram~501_q\;
\MemoriaRAM|ALT_INV_ram~373_q\ <= NOT \MemoriaRAM|ram~373_q\;
\MemoriaRAM|ALT_INV_ram~469_q\ <= NOT \MemoriaRAM|ram~469_q\;
\MemoriaRAM|ALT_INV_ram~341_q\ <= NOT \MemoriaRAM|ram~341_q\;
\MemoriaRAM|ALT_INV_ram~645_combout\ <= NOT \MemoriaRAM|ram~645_combout\;
\MemoriaRAM|ALT_INV_ram~317_q\ <= NOT \MemoriaRAM|ram~317_q\;
\MemoriaRAM|ALT_INV_ram~285_q\ <= NOT \MemoriaRAM|ram~285_q\;
\MemoriaRAM|ALT_INV_ram~644_combout\ <= NOT \MemoriaRAM|ram~644_combout\;
\MemoriaRAM|ALT_INV_ram~309_q\ <= NOT \MemoriaRAM|ram~309_q\;
\MemoriaRAM|ALT_INV_ram~277_q\ <= NOT \MemoriaRAM|ram~277_q\;
\MemoriaRAM|ALT_INV_ram~643_combout\ <= NOT \MemoriaRAM|ram~643_combout\;
\MemoriaRAM|ALT_INV_ram~642_combout\ <= NOT \MemoriaRAM|ram~642_combout\;
\MemoriaRAM|ALT_INV_ram~253_q\ <= NOT \MemoriaRAM|ram~253_q\;
\MemoriaRAM|ALT_INV_ram~245_q\ <= NOT \MemoriaRAM|ram~245_q\;
\MemoriaRAM|ALT_INV_ram~125_q\ <= NOT \MemoriaRAM|ram~125_q\;
\MemoriaRAM|ALT_INV_ram~117_q\ <= NOT \MemoriaRAM|ram~117_q\;
\MemoriaRAM|ALT_INV_ram~641_combout\ <= NOT \MemoriaRAM|ram~641_combout\;
\MemoriaRAM|ALT_INV_ram~221_q\ <= NOT \MemoriaRAM|ram~221_q\;
\MemoriaRAM|ALT_INV_ram~213_q\ <= NOT \MemoriaRAM|ram~213_q\;
\MemoriaRAM|ALT_INV_ram~93_q\ <= NOT \MemoriaRAM|ram~93_q\;
\MemoriaRAM|ALT_INV_ram~85_q\ <= NOT \MemoriaRAM|ram~85_q\;
\MemoriaRAM|ALT_INV_ram~640_combout\ <= NOT \MemoriaRAM|ram~640_combout\;
\MemoriaRAM|ALT_INV_ram~61_q\ <= NOT \MemoriaRAM|ram~61_q\;
\MemoriaRAM|ALT_INV_ram~53_q\ <= NOT \MemoriaRAM|ram~53_q\;
\MemoriaRAM|ALT_INV_ram~639_combout\ <= NOT \MemoriaRAM|ram~639_combout\;
\MemoriaRAM|ALT_INV_ram~29_q\ <= NOT \MemoriaRAM|ram~29_q\;
\MemoriaRAM|ALT_INV_ram~21_q\ <= NOT \MemoriaRAM|ram~21_q\;
\Processador|MUX1|ALT_INV_saida_MUX[5]~4_combout\ <= NOT \Processador|MUX1|saida_MUX[5]~4_combout\;
\MemoriaRAM|ALT_INV_ram~638_combout\ <= NOT \MemoriaRAM|ram~638_combout\;
\MemoriaRAM|ALT_INV_ram~637_combout\ <= NOT \MemoriaRAM|ram~637_combout\;
\MemoriaRAM|ALT_INV_ram~636_combout\ <= NOT \MemoriaRAM|ram~636_combout\;
\MemoriaRAM|ALT_INV_ram~332_q\ <= NOT \MemoriaRAM|ram~332_q\;
\MemoriaRAM|ALT_INV_ram~324_q\ <= NOT \MemoriaRAM|ram~324_q\;
\MemoriaRAM|ALT_INV_ram~316_q\ <= NOT \MemoriaRAM|ram~316_q\;
\MemoriaRAM|ALT_INV_ram~308_q\ <= NOT \MemoriaRAM|ram~308_q\;
\MemoriaRAM|ALT_INV_ram~635_combout\ <= NOT \MemoriaRAM|ram~635_combout\;
\MemoriaRAM|ALT_INV_ram~396_q\ <= NOT \MemoriaRAM|ram~396_q\;
\MemoriaRAM|ALT_INV_ram~388_q\ <= NOT \MemoriaRAM|ram~388_q\;
\MemoriaRAM|ALT_INV_ram~380_q\ <= NOT \MemoriaRAM|ram~380_q\;
\MemoriaRAM|ALT_INV_ram~372_q\ <= NOT \MemoriaRAM|ram~372_q\;
\MemoriaRAM|ALT_INV_ram~634_combout\ <= NOT \MemoriaRAM|ram~634_combout\;
\MemoriaRAM|ALT_INV_ram~524_q\ <= NOT \MemoriaRAM|ram~524_q\;
\MemoriaRAM|ALT_INV_ram~516_q\ <= NOT \MemoriaRAM|ram~516_q\;
\MemoriaRAM|ALT_INV_ram~508_q\ <= NOT \MemoriaRAM|ram~508_q\;
\MemoriaRAM|ALT_INV_ram~500_q\ <= NOT \MemoriaRAM|ram~500_q\;
\MemoriaRAM|ALT_INV_ram~633_combout\ <= NOT \MemoriaRAM|ram~633_combout\;
\MemoriaRAM|ALT_INV_ram~632_combout\ <= NOT \MemoriaRAM|ram~632_combout\;
\MemoriaRAM|ALT_INV_ram~268_q\ <= NOT \MemoriaRAM|ram~268_q\;
\MemoriaRAM|ALT_INV_ram~252_q\ <= NOT \MemoriaRAM|ram~252_q\;
\MemoriaRAM|ALT_INV_ram~631_combout\ <= NOT \MemoriaRAM|ram~631_combout\;
\MemoriaRAM|ALT_INV_ram~260_q\ <= NOT \MemoriaRAM|ram~260_q\;
\MemoriaRAM|ALT_INV_ram~244_q\ <= NOT \MemoriaRAM|ram~244_q\;
\MemoriaRAM|ALT_INV_ram~630_combout\ <= NOT \MemoriaRAM|ram~630_combout\;
\MemoriaRAM|ALT_INV_ram~140_q\ <= NOT \MemoriaRAM|ram~140_q\;
\MemoriaRAM|ALT_INV_ram~76_q\ <= NOT \MemoriaRAM|ram~76_q\;
\MemoriaRAM|ALT_INV_ram~124_q\ <= NOT \MemoriaRAM|ram~124_q\;
\MemoriaRAM|ALT_INV_ram~60_q\ <= NOT \MemoriaRAM|ram~60_q\;
\MemoriaRAM|ALT_INV_ram~629_combout\ <= NOT \MemoriaRAM|ram~629_combout\;
\MemoriaRAM|ALT_INV_ram~132_q\ <= NOT \MemoriaRAM|ram~132_q\;
\MemoriaRAM|ALT_INV_ram~68_q\ <= NOT \MemoriaRAM|ram~68_q\;
\MemoriaRAM|ALT_INV_ram~116_q\ <= NOT \MemoriaRAM|ram~116_q\;
\MemoriaRAM|ALT_INV_ram~52_q\ <= NOT \MemoriaRAM|ram~52_q\;
\MemoriaRAM|ALT_INV_ram~628_combout\ <= NOT \MemoriaRAM|ram~628_combout\;
\MemoriaRAM|ALT_INV_ram~627_combout\ <= NOT \MemoriaRAM|ram~627_combout\;
\MemoriaRAM|ALT_INV_ram~492_q\ <= NOT \MemoriaRAM|ram~492_q\;
\MemoriaRAM|ALT_INV_ram~364_q\ <= NOT \MemoriaRAM|ram~364_q\;
\MemoriaRAM|ALT_INV_ram~476_q\ <= NOT \MemoriaRAM|ram~476_q\;
\MemoriaRAM|ALT_INV_ram~348_q\ <= NOT \MemoriaRAM|ram~348_q\;
\MemoriaRAM|ALT_INV_ram~626_combout\ <= NOT \MemoriaRAM|ram~626_combout\;
\MemoriaRAM|ALT_INV_ram~484_q\ <= NOT \MemoriaRAM|ram~484_q\;
\MemoriaRAM|ALT_INV_ram~356_q\ <= NOT \MemoriaRAM|ram~356_q\;
\MemoriaRAM|ALT_INV_ram~468_q\ <= NOT \MemoriaRAM|ram~468_q\;
\MemoriaRAM|ALT_INV_ram~340_q\ <= NOT \MemoriaRAM|ram~340_q\;
\MemoriaRAM|ALT_INV_ram~625_combout\ <= NOT \MemoriaRAM|ram~625_combout\;
\MemoriaRAM|ALT_INV_ram~300_q\ <= NOT \MemoriaRAM|ram~300_q\;
\MemoriaRAM|ALT_INV_ram~284_q\ <= NOT \MemoriaRAM|ram~284_q\;
\MemoriaRAM|ALT_INV_ram~624_combout\ <= NOT \MemoriaRAM|ram~624_combout\;
\MemoriaRAM|ALT_INV_ram~292_q\ <= NOT \MemoriaRAM|ram~292_q\;
\MemoriaRAM|ALT_INV_ram~276_q\ <= NOT \MemoriaRAM|ram~276_q\;
\MemoriaRAM|ALT_INV_ram~623_combout\ <= NOT \MemoriaRAM|ram~623_combout\;
\MemoriaRAM|ALT_INV_ram~622_combout\ <= NOT \MemoriaRAM|ram~622_combout\;
\MemoriaRAM|ALT_INV_ram~236_q\ <= NOT \MemoriaRAM|ram~236_q\;
\MemoriaRAM|ALT_INV_ram~108_q\ <= NOT \MemoriaRAM|ram~108_q\;
\MemoriaRAM|ALT_INV_ram~220_q\ <= NOT \MemoriaRAM|ram~220_q\;
\MemoriaRAM|ALT_INV_ram~92_q\ <= NOT \MemoriaRAM|ram~92_q\;
\MemoriaRAM|ALT_INV_ram~621_combout\ <= NOT \MemoriaRAM|ram~621_combout\;
\MemoriaRAM|ALT_INV_ram~228_q\ <= NOT \MemoriaRAM|ram~228_q\;
\MemoriaRAM|ALT_INV_ram~100_q\ <= NOT \MemoriaRAM|ram~100_q\;
\MemoriaRAM|ALT_INV_ram~212_q\ <= NOT \MemoriaRAM|ram~212_q\;
\MemoriaRAM|ALT_INV_ram~84_q\ <= NOT \MemoriaRAM|ram~84_q\;
\MemoriaRAM|ALT_INV_ram~620_combout\ <= NOT \MemoriaRAM|ram~620_combout\;
\MemoriaRAM|ALT_INV_ram~44_q\ <= NOT \MemoriaRAM|ram~44_q\;
\MemoriaRAM|ALT_INV_ram~28_q\ <= NOT \MemoriaRAM|ram~28_q\;
\MemoriaRAM|ALT_INV_ram~619_combout\ <= NOT \MemoriaRAM|ram~619_combout\;
\MemoriaRAM|ALT_INV_ram~36_q\ <= NOT \MemoriaRAM|ram~36_q\;
\MemoriaRAM|ALT_INV_ram~20_q\ <= NOT \MemoriaRAM|ram~20_q\;
\Processador|MUX1|ALT_INV_saida_MUX[4]~3_combout\ <= NOT \Processador|MUX1|saida_MUX[4]~3_combout\;
\MemoriaRAM|ALT_INV_ram~618_combout\ <= NOT \MemoriaRAM|ram~618_combout\;
\MemoriaRAM|ALT_INV_ram~617_combout\ <= NOT \MemoriaRAM|ram~617_combout\;
\MemoriaRAM|ALT_INV_ram~616_combout\ <= NOT \MemoriaRAM|ram~616_combout\;
\MemoriaRAM|ALT_INV_ram~523_q\ <= NOT \MemoriaRAM|ram~523_q\;
\MemoriaRAM|ALT_INV_ram~491_q\ <= NOT \MemoriaRAM|ram~491_q\;
\MemoriaRAM|ALT_INV_ram~615_combout\ <= NOT \MemoriaRAM|ram~615_combout\;
\MemoriaRAM|ALT_INV_ram~395_q\ <= NOT \MemoriaRAM|ram~395_q\;
\MemoriaRAM|ALT_INV_ram~363_q\ <= NOT \MemoriaRAM|ram~363_q\;
\MemoriaRAM|ALT_INV_ram~331_q\ <= NOT \MemoriaRAM|ram~331_q\;
\MemoriaRAM|ALT_INV_ram~299_q\ <= NOT \MemoriaRAM|ram~299_q\;
\MemoriaRAM|ALT_INV_ram~614_combout\ <= NOT \MemoriaRAM|ram~614_combout\;
\MemoriaRAM|ALT_INV_ram~507_q\ <= NOT \MemoriaRAM|ram~507_q\;
\MemoriaRAM|ALT_INV_ram~475_q\ <= NOT \MemoriaRAM|ram~475_q\;
\MemoriaRAM|ALT_INV_ram~613_combout\ <= NOT \MemoriaRAM|ram~613_combout\;
\MemoriaRAM|ALT_INV_ram~379_q\ <= NOT \MemoriaRAM|ram~379_q\;
\MemoriaRAM|ALT_INV_ram~347_q\ <= NOT \MemoriaRAM|ram~347_q\;
\MemoriaRAM|ALT_INV_ram~315_q\ <= NOT \MemoriaRAM|ram~315_q\;
\MemoriaRAM|ALT_INV_ram~283_q\ <= NOT \MemoriaRAM|ram~283_q\;
\MemoriaRAM|ALT_INV_ram~612_combout\ <= NOT \MemoriaRAM|ram~612_combout\;
\MemoriaRAM|ALT_INV_ram~611_combout\ <= NOT \MemoriaRAM|ram~611_combout\;
\MemoriaRAM|ALT_INV_ram~267_q\ <= NOT \MemoriaRAM|ram~267_q\;
\MemoriaRAM|ALT_INV_ram~139_q\ <= NOT \MemoriaRAM|ram~139_q\;
\MemoriaRAM|ALT_INV_ram~235_q\ <= NOT \MemoriaRAM|ram~235_q\;
\MemoriaRAM|ALT_INV_ram~107_q\ <= NOT \MemoriaRAM|ram~107_q\;
\MemoriaRAM|ALT_INV_ram~610_combout\ <= NOT \MemoriaRAM|ram~610_combout\;
\MemoriaRAM|ALT_INV_ram~75_q\ <= NOT \MemoriaRAM|ram~75_q\;
\MemoriaRAM|ALT_INV_ram~43_q\ <= NOT \MemoriaRAM|ram~43_q\;
\MemoriaRAM|ALT_INV_ram~609_combout\ <= NOT \MemoriaRAM|ram~609_combout\;

-- Location: IOOBUF_X12_Y0_N2
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X16_Y0_N59
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

-- Location: IOOBUF_X20_Y45_N36
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

-- Location: IOOBUF_X12_Y0_N53
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X14_Y0_N19
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

-- Location: IOOBUF_X38_Y0_N19
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT[6]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X18_Y0_N19
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT[7]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X16_Y0_N76
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

-- Location: IOOBUF_X20_Y45_N2
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

-- Location: IOOBUF_X22_Y0_N36
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

-- Location: IOOBUF_X11_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N36
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

-- Location: IOOBUF_X36_Y0_N19
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

-- Location: IOOBUF_X22_Y45_N53
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X52_Y0_N19
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

-- Location: IOOBUF_X12_Y45_N36
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlopLed1|DOUT~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X18_Y45_N36
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \flipFlopLed2|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X12_Y0_N36
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

-- Location: IOOBUF_X33_Y0_N59
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

-- Location: IOOBUF_X54_Y16_N22
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

-- Location: IOOBUF_X40_Y0_N93
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

-- Location: IOOBUF_X0_Y18_N45
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

-- Location: IOOBUF_X11_Y0_N53
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

-- Location: IOOBUF_X22_Y0_N19
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

-- Location: IOOBUF_X0_Y19_N5
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

-- Location: IOOBUF_X32_Y45_N93
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

-- Location: IOOBUF_X10_Y0_N76
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

-- Location: IOOBUF_X24_Y0_N36
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

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X48_Y0_N93
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

-- Location: IOOBUF_X25_Y0_N19
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

-- Location: IOOBUF_X44_Y0_N2
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

-- Location: IOOBUF_X33_Y0_N42
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

-- Location: IOOBUF_X40_Y0_N59
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

-- Location: IOOBUF_X36_Y45_N19
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

-- Location: IOOBUF_X25_Y0_N2
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

-- Location: IOOBUF_X44_Y0_N36
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

-- Location: IOOBUF_X29_Y0_N53
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

-- Location: IOOBUF_X50_Y0_N2
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

-- Location: IOOBUF_X36_Y0_N53
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

-- Location: IOOBUF_X24_Y0_N53
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

-- Location: IOOBUF_X34_Y0_N19
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

-- Location: IOOBUF_X33_Y0_N76
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

-- Location: IOOBUF_X29_Y0_N19
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

-- Location: IOOBUF_X34_Y0_N53
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

-- Location: IOOBUF_X22_Y0_N53
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X25_Y0_N36
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

-- Location: IOOBUF_X32_Y45_N76
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X22_Y45_N36
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

-- Location: IOOBUF_X34_Y0_N2
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

-- Location: IOOBUF_X40_Y0_N76
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

-- Location: IOOBUF_X43_Y0_N53
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

-- Location: IOOBUF_X34_Y0_N36
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

-- Location: IOOBUF_X50_Y0_N53
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

-- Location: IOOBUF_X23_Y0_N59
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

-- Location: IOOBUF_X32_Y45_N42
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

-- Location: IOOBUF_X43_Y0_N2
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

-- Location: IOOBUF_X18_Y45_N2
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

-- Location: IOOBUF_X16_Y45_N42
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

-- Location: IOOBUF_X19_Y0_N19
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

-- Location: IOOBUF_X19_Y0_N36
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

-- Location: IOOBUF_X22_Y45_N2
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

-- Location: IOOBUF_X16_Y45_N93
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

-- Location: IOOBUF_X10_Y0_N59
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

-- Location: IOOBUF_X54_Y14_N45
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

-- Location: IOOBUF_X54_Y18_N79
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

-- Location: IOOBUF_X44_Y0_N19
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

-- Location: IOOBUF_X16_Y45_N76
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

-- Location: IOOBUF_X18_Y0_N36
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

-- Location: IOOBUF_X23_Y0_N93
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

-- Location: IOOBUF_X14_Y45_N2
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X0_Y18_N96
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

-- Location: IOOBUF_X24_Y0_N19
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

-- Location: IOOBUF_X25_Y0_N53
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

-- Location: IOOBUF_X12_Y0_N19
\INSTRUCAO[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~13_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(0));

-- Location: IOOBUF_X19_Y0_N2
\INSTRUCAO[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~18_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(1));

-- Location: IOOBUF_X14_Y0_N2
\INSTRUCAO[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~11_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(2));

-- Location: IOOBUF_X10_Y0_N93
\INSTRUCAO[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~19_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(3));

-- Location: IOOBUF_X23_Y0_N42
\INSTRUCAO[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~20_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(4));

-- Location: IOOBUF_X52_Y0_N36
\INSTRUCAO[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~17_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(5));

-- Location: IOOBUF_X22_Y0_N2
\INSTRUCAO[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~21_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(6));

-- Location: IOOBUF_X16_Y0_N93
\INSTRUCAO[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~20_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(7));

-- Location: IOOBUF_X38_Y0_N36
\INSTRUCAO[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~2_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(8));

-- Location: IOOBUF_X33_Y0_N93
\INSTRUCAO[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~22_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(9));

-- Location: IOOBUF_X18_Y0_N53
\INSTRUCAO[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~24_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(10));

-- Location: IOOBUF_X40_Y0_N42
\INSTRUCAO[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~25_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(11));

-- Location: IOOBUF_X23_Y0_N76
\INSTRUCAO[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~26_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(12));

-- Location: IOIBUF_X19_Y0_N52
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X54_Y18_N61
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G10
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: LABCELL_X20_Y4_N12
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

-- Location: FF_X20_Y4_N14
\gravar:detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \gravar:detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gravar:detectorSub0|saidaQ~q\);

-- Location: LABCELL_X20_Y4_N0
\gravar:detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saida~combout\ = LCELL(( !\KEY[0]~input_o\ & ( !\gravar:detectorSub0|saidaQ~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \gravar:detectorSub0|ALT_INV_saidaQ~q\,
	combout => \gravar:detectorSub0|saida~combout\);

-- Location: FF_X18_Y5_N32
\Processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX4x1|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(3));

-- Location: LABCELL_X16_Y4_N0
\Processador|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~1_sumout\ = SUM(( \Processador|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Processador|incrementaPC|Add0~2\ = CARRY(( \Processador|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \Processador|incrementaPC|Add0~1_sumout\,
	cout => \Processador|incrementaPC|Add0~2\);

-- Location: LABCELL_X16_Y4_N3
\Processador|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~5_sumout\ = SUM(( \Processador|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~2\ ))
-- \Processador|incrementaPC|Add0~6\ = CARRY(( \Processador|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \Processador|incrementaPC|Add0~2\,
	sumout => \Processador|incrementaPC|Add0~5_sumout\,
	cout => \Processador|incrementaPC|Add0~6\);

-- Location: LABCELL_X16_Y4_N6
\Processador|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~9_sumout\ = SUM(( \Processador|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~6\ ))
-- \Processador|incrementaPC|Add0~10\ = CARRY(( \Processador|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \Processador|incrementaPC|Add0~6\,
	sumout => \Processador|incrementaPC|Add0~9_sumout\,
	cout => \Processador|incrementaPC|Add0~10\);

-- Location: FF_X16_Y4_N7
\Processador|reg_endretorno|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|incrementaPC|Add0~9_sumout\,
	ena => \Processador|decoder|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|reg_endretorno|DOUT\(2));

-- Location: FF_X18_Y5_N35
\Processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX4x1|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(2));

-- Location: FF_X18_Y5_N50
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

-- Location: MLABCELL_X18_Y5_N45
\ROM_instrucao|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~10_combout\ = ( \Processador|PC|DOUT\(1) & ( (!\Processador|PC|DOUT\(2) & (\Processador|PC|DOUT\(3) & \Processador|PC|DOUT[0]~DUPLICATE_q\)) ) ) # ( !\Processador|PC|DOUT\(1) & ( (\Processador|PC|DOUT\(2) & (\Processador|PC|DOUT\(3) 
-- & !\Processador|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|PC|ALT_INV_DOUT\(3),
	datad => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \Processador|PC|ALT_INV_DOUT\(1),
	combout => \ROM_instrucao|memROM~10_combout\);

-- Location: FF_X17_Y5_N35
\Processador|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX4x1|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[6]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y5_N24
\ROM_instrucao|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~15_combout\ = ( \Processador|PC|DOUT\(3) & ( (!\Processador|PC|DOUT[1]~DUPLICATE_q\ & (!\Processador|PC|DOUT[0]~DUPLICATE_q\ $ (!\Processador|PC|DOUT\(2)))) ) ) # ( !\Processador|PC|DOUT\(3) & ( (!\Processador|PC|DOUT[0]~DUPLICATE_q\ 
-- & (\Processador|PC|DOUT\(2) & \Processador|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~15_combout\);

-- Location: FF_X18_Y5_N55
\Processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX4x1|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(8));

-- Location: LABCELL_X19_Y5_N36
\ROM_instrucao|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~17_combout\ = ( \ROM_instrucao|memROM~5_combout\ & ( (\ROM_instrucao|memROM~15_combout\ & !\Processador|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \ROM_instrucao|memROM~17_combout\);

-- Location: FF_X17_Y5_N20
\Processador|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX4x1|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y4_N9
\Processador|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~13_sumout\ = SUM(( \Processador|PC|DOUT\(3) ) + ( GND ) + ( \Processador|incrementaPC|Add0~10\ ))
-- \Processador|incrementaPC|Add0~14\ = CARRY(( \Processador|PC|DOUT\(3) ) + ( GND ) + ( \Processador|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT\(3),
	cin => \Processador|incrementaPC|Add0~10\,
	sumout => \Processador|incrementaPC|Add0~13_sumout\,
	cout => \Processador|incrementaPC|Add0~14\);

-- Location: LABCELL_X16_Y4_N12
\Processador|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~17_sumout\ = SUM(( \Processador|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~14\ ))
-- \Processador|incrementaPC|Add0~18\ = CARRY(( \Processador|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \Processador|incrementaPC|Add0~14\,
	sumout => \Processador|incrementaPC|Add0~17_sumout\,
	cout => \Processador|incrementaPC|Add0~18\);

-- Location: LABCELL_X16_Y4_N15
\Processador|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~21_sumout\ = SUM(( \Processador|PC|DOUT\(5) ) + ( GND ) + ( \Processador|incrementaPC|Add0~18\ ))
-- \Processador|incrementaPC|Add0~22\ = CARRY(( \Processador|PC|DOUT\(5) ) + ( GND ) + ( \Processador|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(5),
	cin => \Processador|incrementaPC|Add0~18\,
	sumout => \Processador|incrementaPC|Add0~21_sumout\,
	cout => \Processador|incrementaPC|Add0~22\);

-- Location: FF_X16_Y4_N16
\Processador|reg_endretorno|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|incrementaPC|Add0~21_sumout\,
	ena => \Processador|decoder|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|reg_endretorno|DOUT\(5));

-- Location: LABCELL_X17_Y5_N54
\Processador|MUX4x1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[5]~5_combout\ = ( \Processador|incrementaPC|Add0~21_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & ((!\Processador|decoder|Equal14~0_combout\) # ((\Processador|reg_endretorno|DOUT\(5))))) # 
-- (\Processador|decoder|saidaMux~0_combout\ & (((\ROM_instrucao|memROM~17_combout\)))) ) ) # ( !\Processador|incrementaPC|Add0~21_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & (\Processador|decoder|Equal14~0_combout\ & 
-- ((\Processador|reg_endretorno|DOUT\(5))))) # (\Processador|decoder|saidaMux~0_combout\ & (((\ROM_instrucao|memROM~17_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saidaMux~0_combout\,
	datab => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datad => \Processador|reg_endretorno|ALT_INV_DOUT\(5),
	dataf => \Processador|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[5]~5_combout\);

-- Location: FF_X17_Y5_N56
\Processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX4x1|saida_MUX[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(5));

-- Location: LABCELL_X17_Y5_N15
\ROM_instrucao|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~5_combout\ = ( !\Processador|PC|DOUT[4]~DUPLICATE_q\ & ( (!\Processador|PC|DOUT[6]~DUPLICATE_q\ & (!\Processador|PC|DOUT[7]~DUPLICATE_q\ & !\Processador|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT\(5),
	dataf => \Processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~5_combout\);

-- Location: LABCELL_X16_Y5_N21
\ROM_instrucao|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~4_combout\ = ( \Processador|PC|DOUT\(2) & ( \Processador|PC|DOUT\(1) & ( (!\Processador|PC|DOUT[0]~DUPLICATE_q\ & !\Processador|PC|DOUT[3]~DUPLICATE_q\) ) ) ) # ( \Processador|PC|DOUT\(2) & ( !\Processador|PC|DOUT\(1) & ( 
-- (!\Processador|PC|DOUT[0]~DUPLICATE_q\ & \Processador|PC|DOUT[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001010101000000000000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \Processador|PC|ALT_INV_DOUT\(2),
	dataf => \Processador|PC|ALT_INV_DOUT\(1),
	combout => \ROM_instrucao|memROM~4_combout\);

-- Location: LABCELL_X14_Y5_N57
\ROM_instrucao|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~21_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( !\Processador|PC|DOUT[8]~DUPLICATE_q\ & ( \ROM_instrucao|memROM~5_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	dataf => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~21_combout\);

-- Location: LABCELL_X16_Y4_N18
\Processador|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~25_sumout\ = SUM(( \Processador|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~22\ ))
-- \Processador|incrementaPC|Add0~26\ = CARRY(( \Processador|PC|DOUT[6]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	cin => \Processador|incrementaPC|Add0~22\,
	sumout => \Processador|incrementaPC|Add0~25_sumout\,
	cout => \Processador|incrementaPC|Add0~26\);

-- Location: FF_X16_Y4_N20
\Processador|reg_endretorno|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|incrementaPC|Add0~25_sumout\,
	ena => \Processador|decoder|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|reg_endretorno|DOUT\(6));

-- Location: LABCELL_X17_Y5_N33
\Processador|MUX4x1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[6]~6_combout\ = ( \Processador|decoder|Equal14~0_combout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & ((\Processador|reg_endretorno|DOUT\(6)))) # (\Processador|decoder|saidaMux~0_combout\ & 
-- (\ROM_instrucao|memROM~21_combout\)) ) ) # ( !\Processador|decoder|Equal14~0_combout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & ((\Processador|incrementaPC|Add0~25_sumout\))) # (\Processador|decoder|saidaMux~0_combout\ & 
-- (\ROM_instrucao|memROM~21_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saidaMux~0_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datac => \Processador|reg_endretorno|ALT_INV_DOUT\(6),
	datad => \Processador|incrementaPC|ALT_INV_Add0~25_sumout\,
	dataf => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	combout => \Processador|MUX4x1|saida_MUX[6]~6_combout\);

-- Location: FF_X17_Y5_N34
\Processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX4x1|saida_MUX[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(6));

-- Location: FF_X17_Y5_N58
\Processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX4x1|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(7));

-- Location: MLABCELL_X18_Y5_N27
\ROM_instrucao|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~1_combout\ = ( !\Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & (!\Processador|PC|DOUT[0]~DUPLICATE_q\ & (!\Processador|PC|DOUT\(6) & !\Processador|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT\(6),
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	dataf => \Processador|PC|ALT_INV_DOUT\(5),
	combout => \ROM_instrucao|memROM~1_combout\);

-- Location: LABCELL_X16_Y5_N6
\ROM_instrucao|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~0_combout\ = ( \Processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\Processador|PC|DOUT[4]~DUPLICATE_q\ & (\Processador|PC|DOUT[2]~DUPLICATE_q\ & !\Processador|PC|DOUT\(1))) ) ) # ( !\Processador|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- (!\Processador|PC|DOUT[4]~DUPLICATE_q\ & (\Processador|PC|DOUT[2]~DUPLICATE_q\ & \Processador|PC|DOUT\(1))) # (\Processador|PC|DOUT[4]~DUPLICATE_q\ & (!\Processador|PC|DOUT[2]~DUPLICATE_q\ & !\Processador|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001100001100000000110000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	dataf => \Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~0_combout\);

-- Location: LABCELL_X17_Y4_N45
\ROM_instrucao|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~2_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	combout => \ROM_instrucao|memROM~2_combout\);

-- Location: LABCELL_X16_Y4_N21
\Processador|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~29_sumout\ = SUM(( \Processador|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~26\ ))
-- \Processador|incrementaPC|Add0~30\ = CARRY(( \Processador|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \Processador|incrementaPC|Add0~26\,
	sumout => \Processador|incrementaPC|Add0~29_sumout\,
	cout => \Processador|incrementaPC|Add0~30\);

-- Location: LABCELL_X16_Y4_N24
\Processador|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~33_sumout\ = SUM(( \Processador|PC|DOUT\(8) ) + ( GND ) + ( \Processador|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(8),
	cin => \Processador|incrementaPC|Add0~30\,
	sumout => \Processador|incrementaPC|Add0~33_sumout\);

-- Location: FF_X16_Y4_N25
\Processador|reg_endretorno|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|incrementaPC|Add0~33_sumout\,
	ena => \Processador|decoder|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|reg_endretorno|DOUT\(8));

-- Location: MLABCELL_X18_Y5_N54
\Processador|MUX4x1|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[8]~8_combout\ = ( \Processador|incrementaPC|Add0~33_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & ((!\Processador|decoder|Equal14~0_combout\) # ((\Processador|reg_endretorno|DOUT\(8))))) # 
-- (\Processador|decoder|saidaMux~0_combout\ & (((\ROM_instrucao|memROM~2_combout\)))) ) ) # ( !\Processador|incrementaPC|Add0~33_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & (\Processador|decoder|Equal14~0_combout\ & 
-- ((\Processador|reg_endretorno|DOUT\(8))))) # (\Processador|decoder|saidaMux~0_combout\ & (((\ROM_instrucao|memROM~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saidaMux~0_combout\,
	datab => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \Processador|reg_endretorno|ALT_INV_DOUT\(8),
	dataf => \Processador|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[8]~8_combout\);

-- Location: FF_X18_Y5_N56
\Processador|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX4x1|saida_MUX[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[8]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y5_N51
\ROM_instrucao|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~11_combout\ = ( \ROM_instrucao|memROM~5_combout\ & ( (\ROM_instrucao|memROM~10_combout\ & !\Processador|PC|DOUT[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datad => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \ROM_instrucao|memROM~11_combout\);

-- Location: MLABCELL_X18_Y5_N33
\Processador|MUX4x1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[2]~2_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( ((!\Processador|decoder|Equal14~0_combout\ & ((\Processador|incrementaPC|Add0~9_sumout\))) # (\Processador|decoder|Equal14~0_combout\ & 
-- (\Processador|reg_endretorno|DOUT\(2)))) # (\Processador|decoder|saidaMux~0_combout\) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & ((!\Processador|decoder|Equal14~0_combout\ & 
-- ((\Processador|incrementaPC|Add0~9_sumout\))) # (\Processador|decoder|Equal14~0_combout\ & (\Processador|reg_endretorno|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000000101000101001010111110111110101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saidaMux~0_combout\,
	datab => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	datac => \Processador|reg_endretorno|ALT_INV_DOUT\(2),
	datad => \Processador|incrementaPC|ALT_INV_Add0~9_sumout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \Processador|MUX4x1|saida_MUX[2]~2_combout\);

-- Location: FF_X18_Y5_N34
\Processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX4x1|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X18_Y5_N6
\ROM_instrucao|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~20_combout\ = ( \ROM_instrucao|memROM~3_combout\ & ( (\Processador|PC|DOUT[2]~DUPLICATE_q\ & \ROM_instrucao|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	combout => \ROM_instrucao|memROM~20_combout\);

-- Location: FF_X16_Y4_N13
\Processador|reg_endretorno|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|incrementaPC|Add0~17_sumout\,
	ena => \Processador|decoder|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|reg_endretorno|DOUT\(4));

-- Location: LABCELL_X17_Y5_N18
\Processador|MUX4x1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[4]~4_combout\ = ( \Processador|decoder|Equal14~0_combout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & ((\Processador|reg_endretorno|DOUT\(4)))) # (\Processador|decoder|saidaMux~0_combout\ & 
-- (\ROM_instrucao|memROM~20_combout\)) ) ) # ( !\Processador|decoder|Equal14~0_combout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & ((\Processador|incrementaPC|Add0~17_sumout\))) # (\Processador|decoder|saidaMux~0_combout\ & 
-- (\ROM_instrucao|memROM~20_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110111011000100011011101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saidaMux~0_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datac => \Processador|reg_endretorno|ALT_INV_DOUT\(4),
	datad => \Processador|incrementaPC|ALT_INV_Add0~17_sumout\,
	dataf => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	combout => \Processador|MUX4x1|saida_MUX[4]~4_combout\);

-- Location: FF_X17_Y5_N19
\Processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX4x1|saida_MUX[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(4));

-- Location: MLABCELL_X18_Y5_N36
\ROM_instrucao|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~23_combout\ = ( \Processador|PC|DOUT\(2) & ( (\Processador|PC|DOUT[3]~DUPLICATE_q\ & (!\Processador|PC|DOUT\(4) & (\Processador|PC|DOUT\(1) & !\Processador|PC|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\Processador|PC|DOUT\(2) & ( 
-- (!\Processador|PC|DOUT[3]~DUPLICATE_q\ & (\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(1) & \Processador|PC|DOUT[0]~DUPLICATE_q\))) # (\Processador|PC|DOUT[3]~DUPLICATE_q\ & (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(1) $ 
-- (\Processador|PC|DOUT[0]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000100100010000000010010000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(1),
	datad => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \Processador|PC|ALT_INV_DOUT\(2),
	combout => \ROM_instrucao|memROM~23_combout\);

-- Location: LABCELL_X16_Y5_N57
\ROM_instrucao|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~8_combout\ = ( \Processador|PC|DOUT\(1) & ( (!\Processador|PC|DOUT[4]~DUPLICATE_q\ & ((!\Processador|PC|DOUT\(3) & ((!\Processador|PC|DOUT\(2)))) # (\Processador|PC|DOUT\(3) & (\Processador|PC|DOUT[0]~DUPLICATE_q\)))) ) ) # ( 
-- !\Processador|PC|DOUT\(1) & ( (!\Processador|PC|DOUT[0]~DUPLICATE_q\ & ((!\Processador|PC|DOUT[4]~DUPLICATE_q\) # ((!\Processador|PC|DOUT\(3) & !\Processador|PC|DOUT\(2))))) # (\Processador|PC|DOUT[0]~DUPLICATE_q\ & (!\Processador|PC|DOUT\(3) & 
-- (!\Processador|PC|DOUT[4]~DUPLICATE_q\ & !\Processador|PC|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110100010100000111010001010000011010000000100001101000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \Processador|PC|ALT_INV_DOUT\(3),
	datac => \Processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	dataf => \Processador|PC|ALT_INV_DOUT\(1),
	combout => \ROM_instrucao|memROM~8_combout\);

-- Location: LABCELL_X17_Y5_N51
\ROM_instrucao|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~9_combout\ = ( \Processador|PC|DOUT[4]~DUPLICATE_q\ & ( (!\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(1) & !\Processador|PC|DOUT\(3))) ) ) # ( !\Processador|PC|DOUT[4]~DUPLICATE_q\ & ( (!\Processador|PC|DOUT\(2) & 
-- (!\Processador|PC|DOUT\(1) & \Processador|PC|DOUT\(3))) # (\Processador|PC|DOUT\(2) & (\Processador|PC|DOUT\(1) & !\Processador|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000000110000001100010000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(3),
	dataf => \Processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~9_combout\);

-- Location: LABCELL_X17_Y4_N36
\Processador|decoder|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~2_combout\ = ( \Processador|PC|DOUT[0]~DUPLICATE_q\ & ( \ROM_instrucao|memROM~9_combout\ & ( (\ROM_instrucao|memROM~7_combout\ & (\ROM_instrucao|memROM~6_combout\ & (!\ROM_instrucao|memROM~23_combout\ & 
-- !\ROM_instrucao|memROM~8_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~23_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datae => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \Processador|decoder|Equal10~2_combout\);

-- Location: FF_X16_Y4_N4
\Processador|reg_endretorno|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|incrementaPC|Add0~5_sumout\,
	ena => \Processador|decoder|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|reg_endretorno|DOUT\(1));

-- Location: MLABCELL_X18_Y5_N0
\ROM_instrucao|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~16_combout\ = ( \Processador|PC|DOUT[0]~DUPLICATE_q\ & ( \Processador|PC|DOUT\(2) & ( (!\Processador|PC|DOUT\(4) & \Processador|PC|DOUT\(3)) ) ) ) # ( !\Processador|PC|DOUT[0]~DUPLICATE_q\ & ( \Processador|PC|DOUT\(2) & ( 
-- (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(1) & \Processador|PC|DOUT\(3))) ) ) ) # ( !\Processador|PC|DOUT[0]~DUPLICATE_q\ & ( !\Processador|PC|DOUT\(2) & ( (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(1) $ (!\Processador|PC|DOUT\(3)))) 
-- # (\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(1) & !\Processador|PC|DOUT\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000000000000000000000000000000110000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(1),
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	datae => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \Processador|PC|ALT_INV_DOUT\(2),
	combout => \ROM_instrucao|memROM~16_combout\);

-- Location: LABCELL_X17_Y5_N30
\ROM_instrucao|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~14_combout\ = ( !\Processador|PC|DOUT\(7) & ( (!\Processador|PC|DOUT[6]~DUPLICATE_q\ & !\Processador|PC|DOUT\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT\(5),
	dataf => \Processador|PC|ALT_INV_DOUT\(7),
	combout => \ROM_instrucao|memROM~14_combout\);

-- Location: LABCELL_X19_Y5_N42
\ROM_instrucao|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~18_combout\ = ( \ROM_instrucao|memROM~14_combout\ & ( (\ROM_instrucao|memROM~16_combout\ & !\Processador|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datad => \Processador|PC|ALT_INV_DOUT\(8),
	dataf => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	combout => \ROM_instrucao|memROM~18_combout\);

-- Location: MLABCELL_X18_Y5_N48
\Processador|MUX4x1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[1]~1_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( ((!\Processador|decoder|Equal14~0_combout\ & ((\Processador|incrementaPC|Add0~5_sumout\))) # (\Processador|decoder|Equal14~0_combout\ & 
-- (\Processador|reg_endretorno|DOUT\(1)))) # (\Processador|decoder|saidaMux~0_combout\) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & ((!\Processador|decoder|Equal14~0_combout\ & 
-- ((\Processador|incrementaPC|Add0~5_sumout\))) # (\Processador|decoder|Equal14~0_combout\ & (\Processador|reg_endretorno|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100001101000000011111110111110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|reg_endretorno|ALT_INV_DOUT\(1),
	datab => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	datac => \Processador|decoder|ALT_INV_saidaMux~0_combout\,
	datad => \Processador|incrementaPC|ALT_INV_Add0~5_sumout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \Processador|MUX4x1|saida_MUX[1]~1_combout\);

-- Location: FF_X18_Y5_N49
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

-- Location: MLABCELL_X18_Y5_N39
\ROM_instrucao|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~3_combout\ = ( !\Processador|PC|DOUT\(4) & ( (\Processador|PC|DOUT\(3) & !\Processador|PC|DOUT[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT\(3),
	datad => \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \ROM_instrucao|memROM~3_combout\);

-- Location: MLABCELL_X18_Y5_N42
\ROM_instrucao|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~19_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~19_combout\);

-- Location: FF_X16_Y4_N11
\Processador|reg_endretorno|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|incrementaPC|Add0~13_sumout\,
	ena => \Processador|decoder|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|reg_endretorno|DOUT\(3));

-- Location: MLABCELL_X18_Y5_N30
\Processador|MUX4x1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[3]~3_combout\ = ( \Processador|incrementaPC|Add0~13_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & ((!\Processador|decoder|Equal14~0_combout\) # ((\Processador|reg_endretorno|DOUT\(3))))) # 
-- (\Processador|decoder|saidaMux~0_combout\ & (((\ROM_instrucao|memROM~19_combout\)))) ) ) # ( !\Processador|incrementaPC|Add0~13_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & (\Processador|decoder|Equal14~0_combout\ & 
-- ((\Processador|reg_endretorno|DOUT\(3))))) # (\Processador|decoder|saidaMux~0_combout\ & (((\ROM_instrucao|memROM~19_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saidaMux~0_combout\,
	datab => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \Processador|reg_endretorno|ALT_INV_DOUT\(3),
	dataf => \Processador|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[3]~3_combout\);

-- Location: FF_X18_Y5_N31
\Processador|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX4x1|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y5_N48
\ROM_instrucao|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~7_combout\ = ( \Processador|PC|DOUT\(1) & ( (!\Processador|PC|DOUT[4]~DUPLICATE_q\ & ((!\Processador|PC|DOUT[3]~DUPLICATE_q\ & (!\Processador|PC|DOUT[0]~DUPLICATE_q\)) # (\Processador|PC|DOUT[3]~DUPLICATE_q\ & 
-- (\Processador|PC|DOUT[0]~DUPLICATE_q\ & \Processador|PC|DOUT\(2))))) ) ) # ( !\Processador|PC|DOUT\(1) & ( (!\Processador|PC|DOUT[3]~DUPLICATE_q\ & ((!\Processador|PC|DOUT[4]~DUPLICATE_q\ & (!\Processador|PC|DOUT[0]~DUPLICATE_q\ $ 
-- (!\Processador|PC|DOUT\(2)))) # (\Processador|PC|DOUT[4]~DUPLICATE_q\ & (!\Processador|PC|DOUT[0]~DUPLICATE_q\ & !\Processador|PC|DOUT\(2))))) # (\Processador|PC|DOUT[3]~DUPLICATE_q\ & (!\Processador|PC|DOUT[4]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110110011000100011011001100010010000000100001001000000010000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datab => \Processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	dataf => \Processador|PC|ALT_INV_DOUT\(1),
	combout => \ROM_instrucao|memROM~7_combout\);

-- Location: LABCELL_X16_Y5_N24
\ROM_instrucao|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~22_combout\ = ( \ROM_instrucao|memROM~7_combout\ & ( \ROM_instrucao|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	combout => \ROM_instrucao|memROM~22_combout\);

-- Location: LABCELL_X17_Y4_N57
\ROM_instrucao|memROM~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~25_combout\ = ( \ROM_instrucao|memROM~8_combout\ & ( \ROM_instrucao|memROM~6_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	combout => \ROM_instrucao|memROM~25_combout\);

-- Location: LABCELL_X17_Y4_N6
\ROM_instrucao|memROM~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~26_combout\ = ( \Processador|PC|DOUT[0]~DUPLICATE_q\ & ( \ROM_instrucao|memROM~9_combout\ & ( \ROM_instrucao|memROM~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datae => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \ROM_instrucao|memROM~26_combout\);

-- Location: MLABCELL_X18_Y5_N15
\Processador|decoder|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida~1_combout\ = (!\ROM_instrucao|memROM~22_combout\ & (!\ROM_instrucao|memROM~24_combout\ & (!\ROM_instrucao|memROM~25_combout\ $ (!\ROM_instrucao|memROM~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000010000000001000001000000000100000100000000010000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~22_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~25_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~26_combout\,
	combout => \Processador|decoder|saida~1_combout\);

-- Location: MLABCELL_X18_Y5_N12
\Processador|decoder|Equal14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal14~0_combout\ = ( !\Processador|decoder|saida~1_combout\ & ( (!\ROM_instrucao|memROM~22_combout\ & (!\ROM_instrucao|memROM~25_combout\ & (\ROM_instrucao|memROM~26_combout\ & \ROM_instrucao|memROM~24_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~22_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~25_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~26_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	dataf => \Processador|decoder|ALT_INV_saida~1_combout\,
	combout => \Processador|decoder|Equal14~0_combout\);

-- Location: FF_X16_Y4_N22
\Processador|reg_endretorno|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|incrementaPC|Add0~29_sumout\,
	ena => \Processador|decoder|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|reg_endretorno|DOUT\(7));

-- Location: LABCELL_X17_Y5_N57
\Processador|MUX4x1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[7]~7_combout\ = ( \ROM_instrucao|memROM~20_combout\ & ( ((!\Processador|decoder|Equal14~0_combout\ & (\Processador|incrementaPC|Add0~29_sumout\)) # (\Processador|decoder|Equal14~0_combout\ & 
-- ((\Processador|reg_endretorno|DOUT\(7))))) # (\Processador|decoder|saidaMux~0_combout\) ) ) # ( !\ROM_instrucao|memROM~20_combout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & ((!\Processador|decoder|Equal14~0_combout\ & 
-- (\Processador|incrementaPC|Add0~29_sumout\)) # (\Processador|decoder|Equal14~0_combout\ & ((\Processador|reg_endretorno|DOUT\(7)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000010000010101001011101011111110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saidaMux~0_combout\,
	datab => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	datac => \Processador|incrementaPC|ALT_INV_Add0~29_sumout\,
	datad => \Processador|reg_endretorno|ALT_INV_DOUT\(7),
	dataf => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \Processador|MUX4x1|saida_MUX[7]~7_combout\);

-- Location: FF_X17_Y5_N59
\Processador|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX4x1|saida_MUX[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X17_Y5_N12
\ROM_instrucao|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~6_combout\ = ( !\Processador|PC|DOUT\(5) & ( (!\Processador|PC|DOUT[7]~DUPLICATE_q\ & (!\Processador|PC|DOUT[6]~DUPLICATE_q\ & !\Processador|PC|DOUT\(8))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT\(8),
	dataf => \Processador|PC|ALT_INV_DOUT\(5),
	combout => \ROM_instrucao|memROM~6_combout\);

-- Location: LABCELL_X17_Y4_N33
\ROM_instrucao|memROM~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~24_combout\ = ( \ROM_instrucao|memROM~6_combout\ & ( \ROM_instrucao|memROM~23_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~23_combout\,
	combout => \ROM_instrucao|memROM~24_combout\);

-- Location: LABCELL_X17_Y4_N21
\Processador|decoder|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~0_combout\ = ( \ROM_instrucao|memROM~25_combout\ & ( !\ROM_instrucao|memROM~22_combout\ & ( (!\ROM_instrucao|memROM~26_combout\ & !\ROM_instrucao|memROM~24_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~26_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~25_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~22_combout\,
	combout => \Processador|decoder|Equal10~0_combout\);

-- Location: LABCELL_X19_Y5_N45
\ROM_instrucao|memROM~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~30_combout\ = ( \ROM_instrucao|memROM~5_combout\ & ( \ROM_instrucao|memROM~15_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \ROM_instrucao|memROM~30_combout\);

-- Location: FF_X18_Y5_N58
\Processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX4x1|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(0));

-- Location: LABCELL_X17_Y5_N48
\ROM_instrucao|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~12_combout\ = ( \Processador|PC|DOUT\(0) & ( (!\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(1)) ) ) # ( !\Processador|PC|DOUT\(0) & ( (\Processador|PC|DOUT\(2) & ((!\Processador|PC|DOUT\(1)) # (\Processador|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010101000101010001010100010100100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(3),
	dataf => \Processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM_instrucao|memROM~12_combout\);

-- Location: LABCELL_X17_Y5_N45
\AndSW0_7|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndSW0_7|saida~1_combout\ = ( \ROM_instrucao|memROM~16_combout\ & ( \ROM_instrucao|memROM~15_combout\ & ( (!\Processador|PC|DOUT\(8) & \ROM_instrucao|memROM~14_combout\) ) ) ) # ( !\ROM_instrucao|memROM~16_combout\ & ( \ROM_instrucao|memROM~15_combout\ & 
-- ( (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~14_combout\ & !\Processador|PC|DOUT[4]~DUPLICATE_q\)) ) ) ) # ( \ROM_instrucao|memROM~16_combout\ & ( !\ROM_instrucao|memROM~15_combout\ & ( (!\Processador|PC|DOUT\(8) & 
-- \ROM_instrucao|memROM~14_combout\) ) ) ) # ( !\ROM_instrucao|memROM~16_combout\ & ( !\ROM_instrucao|memROM~15_combout\ & ( (\ROM_instrucao|memROM~12_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~14_combout\ & 
-- !\Processador|PC|DOUT[4]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000011000000110000001100000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datad => \Processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	combout => \AndSW0_7|saida~1_combout\);

-- Location: LABCELL_X16_Y5_N27
\DecoderHabBloc|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHabBloc|Equal0~1_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (\ROM_instrucao|memROM~5_combout\ & (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & (\ROM_instrucao|memROM~0_combout\ & \ROM_instrucao|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datab => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \DecoderHabBloc|Equal0~1_combout\);

-- Location: LABCELL_X16_Y5_N36
\Processador|decoder|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida~0_combout\ = ( \ROM_instrucao|memROM~6_combout\ & ( \ROM_instrucao|memROM~7_combout\ & ( (\ROM_instrucao|memROM~8_combout\ & ((!\ROM_instrucao|memROM~9_combout\) # (!\Processador|PC|DOUT\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	datae => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	combout => \Processador|decoder|saida~0_combout\);

-- Location: LABCELL_X17_Y5_N3
\AndSW0_7|saida~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndSW0_7|saida~3_combout\ = ( \Processador|decoder|saida~0_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (!\AndSW0_7|saida~1_combout\ & (!\ROM_instrucao|memROM~20_combout\ & \DecoderHabBloc|Equal0~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \AndSW0_7|ALT_INV_saida~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datad => \DecoderHabBloc|ALT_INV_Equal0~1_combout\,
	dataf => \Processador|decoder|ALT_INV_saida~0_combout\,
	combout => \AndSW0_7|saida~3_combout\);

-- Location: IOIBUF_X20_Y45_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: LABCELL_X17_Y5_N21
\ROM_instrucao|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~13_combout\ = ( \ROM_instrucao|memROM~12_combout\ & ( (\ROM_instrucao|memROM~5_combout\ & !\Processador|PC|DOUT[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datad => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	combout => \ROM_instrucao|memROM~13_combout\);

-- Location: IOIBUF_X44_Y0_N52
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X16_Y45_N58
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LABCELL_X20_Y5_N33
\ROM_instrucao|memROM~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~29_combout\ = ( \ROM_instrucao|memROM~5_combout\ & ( \ROM_instrucao|memROM~10_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	combout => \ROM_instrucao|memROM~29_combout\);

-- Location: IOIBUF_X0_Y19_N38
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: MLABCELL_X18_Y4_N57
\ROM_instrucao|memROM~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~28_combout\ = ( \ROM_instrucao|memROM~14_combout\ & ( \ROM_instrucao|memROM~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	combout => \ROM_instrucao|memROM~28_combout\);

-- Location: IOIBUF_X46_Y0_N35
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X17_Y4_N0
\ROM_instrucao|memROM~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~27_combout\ = ( \ROM_instrucao|memROM~12_combout\ & ( \ROM_instrucao|memROM~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	combout => \ROM_instrucao|memROM~27_combout\);

-- Location: LABCELL_X17_Y4_N51
\DecoderHabBloc|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHabBloc|Equal0~0_combout\ = ( \ROM_instrucao|memROM~5_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( (!\Processador|PC|DOUT\(8)) # ((\Processador|PC|DOUT\(2) & (\ROM_instrucao|memROM~3_combout\ & \ROM_instrucao|memROM~1_combout\))) ) ) ) # ( 
-- !\ROM_instrucao|memROM~5_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( (\Processador|PC|DOUT\(2) & (\ROM_instrucao|memROM~3_combout\ & \ROM_instrucao|memROM~1_combout\)) ) ) ) # ( \ROM_instrucao|memROM~5_combout\ & ( !\ROM_instrucao|memROM~4_combout\ 
-- & ( (\Processador|PC|DOUT\(2) & (\ROM_instrucao|memROM~3_combout\ & \ROM_instrucao|memROM~1_combout\)) ) ) ) # ( !\ROM_instrucao|memROM~5_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( (\Processador|PC|DOUT\(2) & (\ROM_instrucao|memROM~3_combout\ & 
-- \ROM_instrucao|memROM~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000011111111100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \Processador|PC|ALT_INV_DOUT\(8),
	datae => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \DecoderHabBloc|Equal0~0_combout\);

-- Location: LABCELL_X17_Y4_N24
\Data_IN[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~2_combout\ = ( !\ROM_instrucao|memROM~25_combout\ & ( \ROM_instrucao|memROM~22_combout\ & ( (!\ROM_instrucao|memROM~26_combout\ & (!\DecoderHabBloc|Equal0~0_combout\ & !\ROM_instrucao|memROM~2_combout\)) ) ) ) # ( 
-- !\ROM_instrucao|memROM~25_combout\ & ( !\ROM_instrucao|memROM~22_combout\ & ( (!\DecoderHabBloc|Equal0~0_combout\ & (!\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~24_combout\ $ (!\ROM_instrucao|memROM~26_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000000000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~26_combout\,
	datac => \DecoderHabBloc|ALT_INV_Equal0~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~25_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~22_combout\,
	combout => \Data_IN[0]~2_combout\);

-- Location: IOIBUF_X10_Y0_N41
\FPGA_RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET,
	o => \FPGA_RESET~input_o\);

-- Location: LABCELL_X16_Y5_N12
\Data_IN[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~3_combout\ = ( \ROM_instrucao|memROM~20_combout\ & ( \FPGA_RESET~input_o\ ) ) # ( !\ROM_instrucao|memROM~20_combout\ & ( (\FPGA_RESET~input_o\ & ((!\DecoderHabBloc|Equal0~1_combout\) # ((!\Processador|decoder|saida~0_combout\) # 
-- (!\ROM_instrucao|memROM~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010100010101010101010001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FPGA_RESET~input_o\,
	datab => \DecoderHabBloc|ALT_INV_Equal0~1_combout\,
	datac => \Processador|decoder|ALT_INV_saida~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \Data_IN[0]~3_combout\);

-- Location: IOIBUF_X36_Y0_N35
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: MLABCELL_X18_Y5_N18
\Data_IN[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~8_combout\ = ( \DecoderHabBloc|Equal0~1_combout\ & ( \AndSW0_7|saida~1_combout\ & ( \SW[0]~input_o\ ) ) ) # ( !\DecoderHabBloc|Equal0~1_combout\ & ( \AndSW0_7|saida~1_combout\ & ( \SW[0]~input_o\ ) ) ) # ( \DecoderHabBloc|Equal0~1_combout\ & ( 
-- !\AndSW0_7|saida~1_combout\ & ( (\SW[0]~input_o\ & (((!\Processador|decoder|saida~0_combout\) # (\ROM_instrucao|memROM~20_combout\)) # (\ROM_instrucao|memROM~11_combout\))) ) ) ) # ( !\DecoderHabBloc|Equal0~1_combout\ & ( !\AndSW0_7|saida~1_combout\ & ( 
-- \SW[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \Processador|decoder|ALT_INV_saida~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \DecoderHabBloc|ALT_INV_Equal0~1_combout\,
	dataf => \AndSW0_7|ALT_INV_saida~1_combout\,
	combout => \Data_IN[0]~8_combout\);

-- Location: IOIBUF_X11_Y0_N35
\KEY3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY3,
	o => \KEY3~input_o\);

-- Location: LABCELL_X17_Y5_N27
\Data_IN[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~4_combout\ = ( \ROM_instrucao|memROM~16_combout\ & ( \ROM_instrucao|memROM~12_combout\ & ( (\KEY3~input_o\ & (((!\ROM_instrucao|memROM~14_combout\) # (\Processador|PC|DOUT[4]~DUPLICATE_q\)) # (\Processador|PC|DOUT\(8)))) ) ) ) # ( 
-- !\ROM_instrucao|memROM~16_combout\ & ( \ROM_instrucao|memROM~12_combout\ & ( \KEY3~input_o\ ) ) ) # ( \ROM_instrucao|memROM~16_combout\ & ( !\ROM_instrucao|memROM~12_combout\ & ( \KEY3~input_o\ ) ) ) # ( !\ROM_instrucao|memROM~16_combout\ & ( 
-- !\ROM_instrucao|memROM~12_combout\ & ( \KEY3~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101000101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY3~input_o\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datad => \Processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	combout => \Data_IN[0]~4_combout\);

-- Location: LABCELL_X16_Y5_N30
\Data_IN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~0_combout\ = ( \ROM_instrucao|memROM~12_combout\ & ( (\ROM_instrucao|memROM~14_combout\ & (!\Processador|PC|DOUT[4]~DUPLICATE_q\ & (!\ROM_instrucao|memROM~16_combout\ & !\Processador|PC|DOUT[8]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datab => \Processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datad => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	combout => \Data_IN[0]~0_combout\);

-- Location: IOIBUF_X16_Y0_N41
\KEY1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

-- Location: LABCELL_X16_Y2_N51
\DebouceMem_key1|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DebouceMem_key1|saidaQ~0_combout\ = ( !\KEY1~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY1~input_o\,
	combout => \DebouceMem_key1|saidaQ~0_combout\);

-- Location: FF_X16_Y2_N53
\DebouceMem_key1|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DebouceMem_key1|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebouceMem_key1|saidaQ~q\);

-- Location: LABCELL_X16_Y2_N30
\DebouceMem_key1|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \DebouceMem_key1|saida~combout\ = LCELL(( !\DebouceMem_key1|saidaQ~q\ & ( !\KEY1~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_KEY1~input_o\,
	dataf => \DebouceMem_key1|ALT_INV_saidaQ~q\,
	combout => \DebouceMem_key1|saida~combout\);

-- Location: LABCELL_X16_Y5_N33
\FFDebouceMem_key1|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFDebouceMem_key1|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \FFDebouceMem_key1|DOUT~feeder_combout\);

-- Location: LABCELL_X16_Y5_N51
\DecoderHabBloc|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderHabBloc|Equal0~2_combout\ = ( \ROM_instrucao|memROM~20_combout\ & ( \DecoderHabBloc|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DecoderHabBloc|ALT_INV_Equal0~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \DecoderHabBloc|Equal0~2_combout\);

-- Location: FF_X16_Y5_N35
\FFDebouceMem_key1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DebouceMem_key1|saida~combout\,
	d => \FFDebouceMem_key1|DOUT~feeder_combout\,
	clrn => \DecoderHabBloc|ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFDebouceMem_key1|DOUT~q\);

-- Location: IOIBUF_X38_Y0_N52
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X43_Y0_N18
\KEY2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY2,
	o => \KEY2~input_o\);

-- Location: IOIBUF_X18_Y45_N52
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X14_Y5_N30
\Data_IN[0]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~5_combout\ = ( \ROM_instrucao|memROM~13_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( (!\KEY2~input_o\ & !\SW[9]~input_o\) ) ) ) # ( !\ROM_instrucao|memROM~13_combout\ & ( \ROM_instrucao|memROM~18_combout\ ) ) # ( 
-- \ROM_instrucao|memROM~13_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (!\KEY2~input_o\ & !\SW[9]~input_o\) ) ) ) # ( !\ROM_instrucao|memROM~13_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (!\KEY2~input_o\ & !\SW[9]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000011111111111111111010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY2~input_o\,
	datac => \ALT_INV_SW[9]~input_o\,
	datae => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \Data_IN[0]~5_combout\);

-- Location: LABCELL_X17_Y5_N39
\AndHEX5|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX5|saida~0_combout\ = ( \ROM_instrucao|memROM~15_combout\ & ( (!\Processador|PC|DOUT[4]~DUPLICATE_q\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~14_combout\ & !\ROM_instrucao|memROM~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	combout => \AndHEX5|saida~0_combout\);

-- Location: IOIBUF_X14_Y0_N52
\KEY0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

-- Location: LABCELL_X14_Y2_N42
\DebouceMem_key0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DebouceMem_key0|saidaQ~0_combout\ = ( !\KEY0~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY0~input_o\,
	combout => \DebouceMem_key0|saidaQ~0_combout\);

-- Location: FF_X14_Y2_N44
\DebouceMem_key0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DebouceMem_key0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DebouceMem_key0|saidaQ~q\);

-- Location: LABCELL_X14_Y2_N9
\DebouceMem_key0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \DebouceMem_key0|saida~combout\ = LCELL(( !\KEY0~input_o\ & ( !\DebouceMem_key0|saidaQ~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY0~input_o\,
	dataf => \DebouceMem_key0|ALT_INV_saidaQ~q\,
	combout => \DebouceMem_key0|saida~combout\);

-- Location: LABCELL_X16_Y5_N54
\FFDebouceMem_key0|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \FFDebouceMem_key0|DOUT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \FFDebouceMem_key0|DOUT~feeder_combout\);

-- Location: FF_X16_Y5_N55
\FFDebouceMem_key0|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DebouceMem_key0|saida~combout\,
	d => \FFDebouceMem_key0|DOUT~feeder_combout\,
	clrn => \DecoderHabBloc|ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFDebouceMem_key0|DOUT~q\);

-- Location: LABCELL_X16_Y5_N15
\Data_IN[0]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~6_combout\ = ( \FFDebouceMem_key0|DOUT~q\ & ( (\AndHEX5|saida~0_combout\ & !\ROM_instrucao|memROM~13_combout\) ) ) # ( !\FFDebouceMem_key0|DOUT~q\ & ( (!\FPGA_RESET~input_o\) # ((\AndHEX5|saida~0_combout\ & !\ROM_instrucao|memROM~13_combout\)) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111110101010101011111010101000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_FPGA_RESET~input_o\,
	datac => \AndHEX5|ALT_INV_saida~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	dataf => \FFDebouceMem_key0|ALT_INV_DOUT~q\,
	combout => \Data_IN[0]~6_combout\);

-- Location: LABCELL_X16_Y5_N42
\Data_IN[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~7_combout\ = ( \Data_IN[0]~5_combout\ & ( \Data_IN[0]~6_combout\ & ( (!\Data_IN[0]~4_combout\ & (((!\FFDebouceMem_key1|DOUT~q\ & !\SW[8]~input_o\)) # (\Data_IN[0]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data_IN[0]~4_combout\,
	datab => \ALT_INV_Data_IN[0]~0_combout\,
	datac => \FFDebouceMem_key1|ALT_INV_DOUT~q\,
	datad => \ALT_INV_SW[8]~input_o\,
	datae => \ALT_INV_Data_IN[0]~5_combout\,
	dataf => \ALT_INV_Data_IN[0]~6_combout\,
	combout => \Data_IN[0]~7_combout\);

-- Location: LABCELL_X21_Y6_N0
\Processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~1_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & (((\Data_IN[0]~10_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~27_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(0) ) + ( !VCC ))
-- \Processador|ULA1|Add0~2\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & (((\Data_IN[0]~10_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~27_combout\))) ) + ( \Processador|REGA|DOUT\(0) 
-- ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~27_combout\,
	datad => \ALT_INV_Data_IN[0]~10_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \Processador|ULA1|Add0~1_sumout\,
	cout => \Processador|ULA1|Add0~2\);

-- Location: LABCELL_X21_Y7_N51
\Processador|REGA|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|REGA|DOUT[0]~feeder_combout\ = ( \Processador|ULA1|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA1|ALT_INV_Add0~1_sumout\,
	combout => \Processador|REGA|DOUT[0]~feeder_combout\);

-- Location: MLABCELL_X18_Y5_N9
\Processador|decoder|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida~2_combout\ = ( \ROM_instrucao|memROM~22_combout\ & ( (!\Processador|decoder|saida~1_combout\ & (((\ROM_instrucao|memROM~25_combout\) # (\ROM_instrucao|memROM~24_combout\)) # (\ROM_instrucao|memROM~26_combout\))) ) ) # ( 
-- !\ROM_instrucao|memROM~22_combout\ & ( !\Processador|decoder|saida~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000001110000111100000111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~26_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	datac => \Processador|decoder|ALT_INV_saida~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~25_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~22_combout\,
	combout => \Processador|decoder|saida~2_combout\);

-- Location: LABCELL_X20_Y6_N24
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

-- Location: LABCELL_X20_Y6_N27
\Processador|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~1_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & (((!\Data_IN[0]~10_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (((!\ROM_instrucao|memROM~27_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(0) ) + ( \Processador|ULA1|Add1~34_cout\ ))
-- \Processador|ULA1|Add1~2\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & (((!\Data_IN[0]~10_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (((!\ROM_instrucao|memROM~27_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(0) ) + ( \Processador|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~27_combout\,
	datad => \ALT_INV_Data_IN[0]~10_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	cin => \Processador|ULA1|Add1~34_cout\,
	sumout => \Processador|ULA1|Add1~1_sumout\,
	cout => \Processador|ULA1|Add1~2\);

-- Location: LABCELL_X21_Y7_N48
\Processador|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[0]~0_combout\ = ( \Processador|ULA1|Add1~1_sumout\ & ( ((!\Processador|decoder|Equal10~0_combout\ & ((\Data_IN[0]~10_combout\))) # (\Processador|decoder|Equal10~0_combout\ & (\ROM_instrucao|memROM~13_combout\))) # 
-- (\Processador|decoder|saida~2_combout\) ) ) # ( !\Processador|ULA1|Add1~1_sumout\ & ( (!\Processador|decoder|saida~2_combout\ & ((!\Processador|decoder|Equal10~0_combout\ & ((\Data_IN[0]~10_combout\))) # (\Processador|decoder|Equal10~0_combout\ & 
-- (\ROM_instrucao|memROM~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010000000000011101111111110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ALT_INV_Data_IN[0]~10_combout\,
	datad => \Processador|decoder|ALT_INV_saida~2_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \Processador|ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X21_Y5_N3
\Processador|decoder|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~1_combout\ = ( \ROM_instrucao|memROM~22_combout\ ) # ( !\ROM_instrucao|memROM~22_combout\ & ( ((!\ROM_instrucao|memROM~24_combout\) # (\ROM_instrucao|memROM~25_combout\)) # (\ROM_instrucao|memROM~26_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010111111111111101011111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~26_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~25_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~22_combout\,
	combout => \Processador|decoder|Equal10~1_combout\);

-- Location: LABCELL_X21_Y5_N48
\Processador|decoder|saida[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida[5]~3_combout\ = ( !\ROM_instrucao|memROM~25_combout\ & ( \ROM_instrucao|memROM~24_combout\ & ( !\ROM_instrucao|memROM~26_combout\ ) ) ) # ( \ROM_instrucao|memROM~25_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( 
-- (!\ROM_instrucao|memROM~26_combout\ & !\ROM_instrucao|memROM~22_combout\) ) ) ) # ( !\ROM_instrucao|memROM~25_combout\ & ( !\ROM_instrucao|memROM~24_combout\ & ( (!\ROM_instrucao|memROM~26_combout\ & \ROM_instrucao|memROM~22_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100110011000000000011001100110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~26_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~22_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~25_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	combout => \Processador|decoder|saida[5]~3_combout\);

-- Location: FF_X21_Y7_N53
\Processador|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|REGA|DOUT[0]~feeder_combout\,
	asdata => \Processador|ULA1|saida[0]~0_combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	ena => \Processador|decoder|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(0));

-- Location: LABCELL_X21_Y5_N30
\MemoriaRAM|ram~711\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~711_combout\ = ( \ROM_instrucao|memROM~13_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (!\Processador|PC|DOUT[2]~DUPLICATE_q\ & (\ROM_instrucao|memROM~19_combout\ & (!\ROM_instrucao|memROM~11_combout\ & 
-- \ROM_instrucao|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~711_combout\);

-- Location: LABCELL_X16_Y6_N15
\MemoriaRAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|process_0~0_combout\ = ( !\ROM_instrucao|memROM~2_combout\ & ( (\Processador|decoder|saida~0_combout\ & !\DecoderHabBloc|Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|decoder|ALT_INV_saida~0_combout\,
	datac => \DecoderHabBloc|ALT_INV_Equal0~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|process_0~0_combout\);

-- Location: LABCELL_X16_Y7_N42
\MemoriaRAM|ram~712\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~712_combout\ = ( \MemoriaRAM|process_0~0_combout\ & ( \MemoriaRAM|ram~711_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MemoriaRAM|ALT_INV_ram~711_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~712_combout\);

-- Location: FF_X19_Y5_N26
\MemoriaRAM|ram~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~343_q\);

-- Location: MLABCELL_X18_Y3_N0
\MemoriaRAM|ram~709\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~709_combout\ = ( !\ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( (!\ROM_instrucao|memROM~17_combout\ & (!\ROM_instrucao|memROM~11_combout\ & (!\Processador|PC|DOUT[2]~DUPLICATE_q\ & 
-- \ROM_instrucao|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~709_combout\);

-- Location: LABCELL_X17_Y3_N42
\MemoriaRAM|ram~710\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~710_combout\ = ( \MemoriaRAM|process_0~0_combout\ & ( \MemoriaRAM|ram~709_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~709_combout\,
	datae => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~710_combout\);

-- Location: FF_X17_Y3_N47
\MemoriaRAM|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~87_q\);

-- Location: LABCELL_X14_Y6_N39
\MemoriaRAM|ram~715\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~715_combout\ = ( !\ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~17_combout\ & ( (\ROM_instrucao|memROM~19_combout\ & (\ROM_instrucao|memROM~13_combout\ & (\ROM_instrucao|memROM~11_combout\ & !\Processador|PC|DOUT\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~715_combout\);

-- Location: LABCELL_X16_Y6_N24
\MemoriaRAM|ram~716\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~716_combout\ = ( \MemoriaRAM|ram~715_combout\ & ( \MemoriaRAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MemoriaRAM|ALT_INV_ram~715_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~716_combout\);

-- Location: FF_X19_Y7_N23
\MemoriaRAM|ram~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~375_q\);

-- Location: MLABCELL_X18_Y3_N45
\MemoriaRAM|ram~713\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~713_combout\ = ( \ROM_instrucao|memROM~13_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( (!\Processador|PC|DOUT[2]~DUPLICATE_q\ & (\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~18_combout\ & 
-- !\ROM_instrucao|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~713_combout\);

-- Location: LABCELL_X16_Y3_N21
\MemoriaRAM|ram~714\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~714_combout\ = ( \MemoriaRAM|ram~713_combout\ & ( \MemoriaRAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~713_combout\,
	combout => \MemoriaRAM|ram~714_combout\);

-- Location: FF_X17_Y5_N10
\MemoriaRAM|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~119_q\);

-- Location: LABCELL_X19_Y5_N27
\MemoriaRAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~533_combout\ = ( \ROM_instrucao|memROM~17_combout\ & ( \ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~375_q\ ) ) ) # ( !\ROM_instrucao|memROM~17_combout\ & ( \ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~119_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~17_combout\ & ( !\ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~343_q\ ) ) ) # ( !\ROM_instrucao|memROM~17_combout\ & ( !\ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~87_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~343_q\,
	datab => \MemoriaRAM|ALT_INV_ram~87_q\,
	datac => \MemoriaRAM|ALT_INV_ram~375_q\,
	datad => \MemoriaRAM|ALT_INV_ram~119_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~533_combout\);

-- Location: LABCELL_X16_Y3_N36
\MemoriaRAM|ram~39feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~39feeder_combout\ = ( \Processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	combout => \MemoriaRAM|ram~39feeder_combout\);

-- Location: LABCELL_X14_Y7_N27
\MemoriaRAM|ram~717\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~717_combout\ = ( \ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|process_0~0_combout\ & ( (\ROM_instrucao|memROM~18_combout\ & (!\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~19_combout\ & 
-- !\ROM_instrucao|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~717_combout\);

-- Location: FF_X16_Y3_N38
\MemoriaRAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~39feeder_combout\,
	ena => \MemoriaRAM|ram~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~39_q\);

-- Location: MLABCELL_X18_Y3_N18
\MemoriaRAM|ram~720\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~720_combout\ = ( \ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|process_0~0_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & (\ROM_instrucao|memROM~11_combout\ & (\ROM_instrucao|memROM~17_combout\ & 
-- \ROM_instrucao|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~720_combout\);

-- Location: FF_X19_Y5_N14
\MemoriaRAM|ram~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~327_q\);

-- Location: LABCELL_X14_Y6_N18
\MemoriaRAM|ram~719\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~719_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|process_0~0_combout\ & ( (\ROM_instrucao|memROM~13_combout\ & (\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~19_combout\ & 
-- !\ROM_instrucao|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~719_combout\);

-- Location: FF_X18_Y5_N4
\MemoriaRAM|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~71_q\);

-- Location: LABCELL_X19_Y8_N36
\MemoriaRAM|ram~718\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~718_combout\ = ( \ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|process_0~0_combout\ & ( (\ROM_instrucao|memROM~13_combout\ & (!\ROM_instrucao|memROM~11_combout\ & (\ROM_instrucao|memROM~18_combout\ & 
-- !\ROM_instrucao|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~718_combout\);

-- Location: FF_X19_Y8_N22
\MemoriaRAM|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~295_q\);

-- Location: LABCELL_X19_Y5_N15
\MemoriaRAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~534_combout\ = ( \ROM_instrucao|memROM~17_combout\ & ( \ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~327_q\ ) ) ) # ( !\ROM_instrucao|memROM~17_combout\ & ( \ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~71_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~17_combout\ & ( !\ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~295_q\ ) ) ) # ( !\ROM_instrucao|memROM~17_combout\ & ( !\ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~39_q\,
	datab => \MemoriaRAM|ALT_INV_ram~327_q\,
	datac => \MemoriaRAM|ALT_INV_ram~71_q\,
	datad => \MemoriaRAM|ALT_INV_ram~295_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~534_combout\);

-- Location: LABCELL_X20_Y5_N12
\MemoriaRAM|ram~708\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~708_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & (!\ROM_instrucao|memROM~18_combout\ & (\ROM_instrucao|memROM~13_combout\ & 
-- \MemoriaRAM|process_0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datad => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~708_combout\);

-- Location: FF_X20_Y5_N23
\MemoriaRAM|ram~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~311_q\);

-- Location: LABCELL_X17_Y8_N15
\MemoriaRAM|ram~707\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~707_combout\ = ( !\ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|process_0~0_combout\ & ( (\ROM_instrucao|memROM~11_combout\ & (\ROM_instrucao|memROM~13_combout\ & (!\ROM_instrucao|memROM~18_combout\ & 
-- !\ROM_instrucao|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~707_combout\);

-- Location: FF_X18_Y7_N16
\MemoriaRAM|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~55_q\);

-- Location: MLABCELL_X18_Y7_N42
\MemoriaRAM|ram~705\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~705_combout\ = ( !\ROM_instrucao|memROM~19_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (\ROM_instrucao|memROM~13_combout\ & (!\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~17_combout\ & 
-- \MemoriaRAM|process_0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datad => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~705_combout\);

-- Location: FF_X18_Y7_N46
\MemoriaRAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~23_q\);

-- Location: LABCELL_X17_Y8_N51
\MemoriaRAM|ram~706\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~706_combout\ = ( \ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|process_0~0_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~18_combout\ & (\ROM_instrucao|memROM~13_combout\ & 
-- !\ROM_instrucao|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~706_combout\);

-- Location: FF_X19_Y5_N1
\MemoriaRAM|ram~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~279_q\);

-- Location: LABCELL_X19_Y5_N3
\MemoriaRAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~532_combout\ = ( \ROM_instrucao|memROM~17_combout\ & ( \ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~311_q\ ) ) ) # ( !\ROM_instrucao|memROM~17_combout\ & ( \ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~55_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~17_combout\ & ( !\ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~279_q\ ) ) ) # ( !\ROM_instrucao|memROM~17_combout\ & ( !\ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~311_q\,
	datab => \MemoriaRAM|ALT_INV_ram~55_q\,
	datac => \MemoriaRAM|ALT_INV_ram~23_q\,
	datad => \MemoriaRAM|ALT_INV_ram~279_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~532_combout\);

-- Location: LABCELL_X20_Y7_N39
\MemoriaRAM|ram~725\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~725_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( (!\Processador|PC|DOUT\(2) & (\ROM_instrucao|memROM~13_combout\ & (!\ROM_instrucao|memROM~17_combout\ & \ROM_instrucao|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~725_combout\);

-- Location: LABCELL_X20_Y7_N54
\MemoriaRAM|ram~726\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~726_combout\ = ( \MemoriaRAM|process_0~0_combout\ & ( \MemoriaRAM|ram~725_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~725_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~726_combout\);

-- Location: FF_X18_Y6_N2
\MemoriaRAM|ram~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~135_q\);

-- Location: LABCELL_X17_Y7_N6
\MemoriaRAM|ram~727\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~727_combout\ = ( \ROM_instrucao|memROM~13_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( (\ROM_instrucao|memROM~18_combout\ & (!\Processador|PC|DOUT\(2) & (\ROM_instrucao|memROM~11_combout\ & \ROM_instrucao|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~727_combout\);

-- Location: LABCELL_X17_Y7_N27
\MemoriaRAM|ram~728\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~728_combout\ = ( \MemoriaRAM|ram~727_combout\ & ( \MemoriaRAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~727_combout\,
	combout => \MemoriaRAM|ram~728_combout\);

-- Location: FF_X18_Y6_N49
\MemoriaRAM|ram~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~391_q\);

-- Location: LABCELL_X16_Y7_N24
\MemoriaRAM|ram~721\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~721_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~17_combout\ & (!\Processador|PC|DOUT\(2) & \ROM_instrucao|memROM~13_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~721_combout\);

-- Location: LABCELL_X16_Y7_N45
\MemoriaRAM|ram~722\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~722_combout\ = ( \MemoriaRAM|ram~721_combout\ & ( \MemoriaRAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~721_combout\,
	combout => \MemoriaRAM|ram~722_combout\);

-- Location: FF_X18_Y6_N8
\MemoriaRAM|ram~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~103_q\);

-- Location: LABCELL_X14_Y6_N0
\MemoriaRAM|ram~723\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~723_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( (!\Processador|PC|DOUT\(2) & (\ROM_instrucao|memROM~17_combout\ & (\ROM_instrucao|memROM~19_combout\ & !\ROM_instrucao|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~723_combout\);

-- Location: LABCELL_X14_Y6_N9
\MemoriaRAM|ram~724\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~724_combout\ = ( \MemoriaRAM|ram~723_combout\ & ( \MemoriaRAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MemoriaRAM|ALT_INV_ram~723_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~724_combout\);

-- Location: FF_X19_Y8_N8
\MemoriaRAM|ram~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~359_q\);

-- Location: MLABCELL_X18_Y6_N51
\MemoriaRAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~535_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|ram~391_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|ram~359_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|ram~135_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|ram~103_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~135_q\,
	datab => \MemoriaRAM|ALT_INV_ram~391_q\,
	datac => \MemoriaRAM|ALT_INV_ram~103_q\,
	datad => \MemoriaRAM|ALT_INV_ram~359_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~535_combout\);

-- Location: LABCELL_X19_Y5_N6
\MemoriaRAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~536_combout\ = ( \MemoriaRAM|ram~532_combout\ & ( \MemoriaRAM|ram~535_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & ((!\ROM_instrucao|memROM~18_combout\) # ((\MemoriaRAM|ram~534_combout\)))) # (\ROM_instrucao|memROM~19_combout\ & 
-- (((\MemoriaRAM|ram~533_combout\)) # (\ROM_instrucao|memROM~18_combout\))) ) ) ) # ( !\MemoriaRAM|ram~532_combout\ & ( \MemoriaRAM|ram~535_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & (\ROM_instrucao|memROM~18_combout\ & 
-- ((\MemoriaRAM|ram~534_combout\)))) # (\ROM_instrucao|memROM~19_combout\ & (((\MemoriaRAM|ram~533_combout\)) # (\ROM_instrucao|memROM~18_combout\))) ) ) ) # ( \MemoriaRAM|ram~532_combout\ & ( !\MemoriaRAM|ram~535_combout\ & ( 
-- (!\ROM_instrucao|memROM~19_combout\ & ((!\ROM_instrucao|memROM~18_combout\) # ((\MemoriaRAM|ram~534_combout\)))) # (\ROM_instrucao|memROM~19_combout\ & (!\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~533_combout\))) ) ) ) # ( 
-- !\MemoriaRAM|ram~532_combout\ & ( !\MemoriaRAM|ram~535_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & (\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~534_combout\)))) # (\ROM_instrucao|memROM~19_combout\ & (!\ROM_instrucao|memROM~18_combout\ & 
-- (\MemoriaRAM|ram~533_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110100011001010111000010101001101111001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~533_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~534_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~532_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~535_combout\,
	combout => \MemoriaRAM|ram~536_combout\);

-- Location: LABCELL_X20_Y7_N30
\MemoriaRAM|ram~733\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~733_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (\Processador|PC|DOUT\(2) & (!\ROM_instrucao|memROM~13_combout\ & (\ROM_instrucao|memROM~19_combout\ & !\ROM_instrucao|memROM~17_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~733_combout\);

-- Location: LABCELL_X17_Y6_N54
\MemoriaRAM|ram~734\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~734_combout\ = ( \MemoriaRAM|ram~733_combout\ & ( \MemoriaRAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~733_combout\,
	combout => \MemoriaRAM|ram~734_combout\);

-- Location: FF_X17_Y6_N23
\MemoriaRAM|ram~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~239_q\);

-- Location: MLABCELL_X18_Y4_N12
\MemoriaRAM|ram~743\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~743_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( (\Processador|PC|DOUT\(2) & (\ROM_instrucao|memROM~18_combout\ & (!\ROM_instrucao|memROM~13_combout\ & \ROM_instrucao|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~743_combout\);

-- Location: MLABCELL_X18_Y4_N54
\MemoriaRAM|ram~744\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~744_combout\ = ( \MemoriaRAM|process_0~0_combout\ & ( \MemoriaRAM|ram~743_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~743_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~744_combout\);

-- Location: FF_X18_Y4_N2
\MemoriaRAM|ram~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~511_q\);

-- Location: LABCELL_X14_Y6_N42
\MemoriaRAM|ram~741\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~741_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~17_combout\ & ( (\ROM_instrucao|memROM~19_combout\ & (\ROM_instrucao|memROM~11_combout\ & (\Processador|PC|DOUT\(2) & !\ROM_instrucao|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~741_combout\);

-- Location: LABCELL_X14_Y6_N54
\MemoriaRAM|ram~742\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~742_combout\ = ( \MemoriaRAM|process_0~0_combout\ & ( \MemoriaRAM|ram~741_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~741_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~742_combout\);

-- Location: FF_X17_Y6_N5
\MemoriaRAM|ram~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~255_q\);

-- Location: LABCELL_X19_Y4_N30
\MemoriaRAM|ram~735\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~735_combout\ = ( \Processador|PC|DOUT[2]~DUPLICATE_q\ & ( \ROM_instrucao|memROM~17_combout\ & ( (\ROM_instrucao|memROM~19_combout\ & (!\ROM_instrucao|memROM~13_combout\ & (\ROM_instrucao|memROM~11_combout\ & 
-- !\ROM_instrucao|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datae => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~735_combout\);

-- Location: LABCELL_X19_Y3_N45
\MemoriaRAM|ram~736\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~736_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~735_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~735_combout\,
	combout => \MemoriaRAM|ram~736_combout\);

-- Location: FF_X19_Y3_N50
\MemoriaRAM|ram~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~495_q\);

-- Location: LABCELL_X19_Y3_N48
\MemoriaRAM|ram~762\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~762_combout\ = ( \MemoriaRAM|ram~495_q\ & ( \ROM_instrucao|memROM~18_combout\ & ( (!\ROM_instrucao|memROM~17_combout\ & ((\MemoriaRAM|ram~255_q\))) # (\ROM_instrucao|memROM~17_combout\ & (\MemoriaRAM|ram~511_q\)) ) ) ) # ( 
-- !\MemoriaRAM|ram~495_q\ & ( \ROM_instrucao|memROM~18_combout\ & ( (!\ROM_instrucao|memROM~17_combout\ & ((\MemoriaRAM|ram~255_q\))) # (\ROM_instrucao|memROM~17_combout\ & (\MemoriaRAM|ram~511_q\)) ) ) ) # ( \MemoriaRAM|ram~495_q\ & ( 
-- !\ROM_instrucao|memROM~18_combout\ & ( (\ROM_instrucao|memROM~17_combout\) # (\MemoriaRAM|ram~239_q\) ) ) ) # ( !\MemoriaRAM|ram~495_q\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (\MemoriaRAM|ram~239_q\ & !\ROM_instrucao|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~239_q\,
	datab => \MemoriaRAM|ALT_INV_ram~511_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~255_q\,
	datae => \MemoriaRAM|ALT_INV_ram~495_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~762_combout\);

-- Location: LABCELL_X21_Y3_N48
\MemoriaRAM|ram~739\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~739_combout\ = ( !\ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( (\ROM_instrucao|memROM~18_combout\ & (\ROM_instrucao|memROM~17_combout\ & (\Processador|PC|DOUT[2]~DUPLICATE_q\ & 
-- !\ROM_instrucao|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datac => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~739_combout\);

-- Location: LABCELL_X20_Y3_N21
\MemoriaRAM|ram~740\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~740_combout\ = ( \MemoriaRAM|process_0~0_combout\ & ( \MemoriaRAM|ram~739_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~739_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~740_combout\);

-- Location: FF_X18_Y4_N31
\MemoriaRAM|ram~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~479_q\);

-- Location: LABCELL_X20_Y7_N33
\MemoriaRAM|ram~737\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~737_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~11_combout\ & ( (\Processador|PC|DOUT\(2) & (!\ROM_instrucao|memROM~13_combout\ & (!\ROM_instrucao|memROM~17_combout\ & \ROM_instrucao|memROM~19_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~737_combout\);

-- Location: LABCELL_X20_Y7_N48
\MemoriaRAM|ram~738\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~738_combout\ = ( \MemoriaRAM|process_0~0_combout\ & ( \MemoriaRAM|ram~737_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~737_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~738_combout\);

-- Location: FF_X21_Y3_N4
\MemoriaRAM|ram~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~223_q\);

-- Location: MLABCELL_X18_Y3_N15
\MemoriaRAM|ram~207feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~207feeder_combout\ = ( \Processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	combout => \MemoriaRAM|ram~207feeder_combout\);

-- Location: MLABCELL_X18_Y3_N54
\MemoriaRAM|ram~729\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~729_combout\ = ( !\ROM_instrucao|memROM~17_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (\ROM_instrucao|memROM~19_combout\ & (!\ROM_instrucao|memROM~11_combout\ & (\Processador|PC|DOUT[2]~DUPLICATE_q\ & 
-- !\ROM_instrucao|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~729_combout\);

-- Location: MLABCELL_X18_Y3_N48
\MemoriaRAM|ram~730\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~730_combout\ = ( \MemoriaRAM|ram~729_combout\ & ( \MemoriaRAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MemoriaRAM|ALT_INV_ram~729_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~730_combout\);

-- Location: FF_X18_Y3_N16
\MemoriaRAM|ram~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~207feeder_combout\,
	ena => \MemoriaRAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~207_q\);

-- Location: MLABCELL_X23_Y6_N54
\MemoriaRAM|ram~731\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~731_combout\ = ( !\ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~11_combout\ & ( (\Processador|PC|DOUT[2]~DUPLICATE_q\ & (\ROM_instrucao|memROM~19_combout\ & (\ROM_instrucao|memROM~17_combout\ & 
-- !\ROM_instrucao|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~731_combout\);

-- Location: LABCELL_X20_Y3_N9
\MemoriaRAM|ram~732\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~732_combout\ = ( \MemoriaRAM|process_0~0_combout\ & ( \MemoriaRAM|ram~731_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MemoriaRAM|ALT_INV_ram~731_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~732_combout\);

-- Location: FF_X20_Y3_N41
\MemoriaRAM|ram~463\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~463_q\);

-- Location: LABCELL_X20_Y3_N39
\MemoriaRAM|ram~761\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~761_combout\ = ( \MemoriaRAM|ram~463_q\ & ( \ROM_instrucao|memROM~18_combout\ & ( (!\ROM_instrucao|memROM~17_combout\ & ((\MemoriaRAM|ram~223_q\))) # (\ROM_instrucao|memROM~17_combout\ & (\MemoriaRAM|ram~479_q\)) ) ) ) # ( 
-- !\MemoriaRAM|ram~463_q\ & ( \ROM_instrucao|memROM~18_combout\ & ( (!\ROM_instrucao|memROM~17_combout\ & ((\MemoriaRAM|ram~223_q\))) # (\ROM_instrucao|memROM~17_combout\ & (\MemoriaRAM|ram~479_q\)) ) ) ) # ( \MemoriaRAM|ram~463_q\ & ( 
-- !\ROM_instrucao|memROM~18_combout\ & ( (\ROM_instrucao|memROM~17_combout\) # (\MemoriaRAM|ram~207_q\) ) ) ) # ( !\MemoriaRAM|ram~463_q\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (\MemoriaRAM|ram~207_q\ & !\ROM_instrucao|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~479_q\,
	datab => \MemoriaRAM|ALT_INV_ram~223_q\,
	datac => \MemoriaRAM|ALT_INV_ram~207_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~463_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~761_combout\);

-- Location: LABCELL_X19_Y3_N42
\MemoriaRAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~537_combout\ = ( \MemoriaRAM|ram~761_combout\ & ( (\ROM_instrucao|memROM~19_combout\ & ((!\ROM_instrucao|memROM~11_combout\) # (\MemoriaRAM|ram~762_combout\))) ) ) # ( !\MemoriaRAM|ram~761_combout\ & ( (\ROM_instrucao|memROM~11_combout\ & 
-- (\MemoriaRAM|ram~762_combout\ & \ROM_instrucao|memROM~19_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000110011110000000011001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~762_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~761_combout\,
	combout => \MemoriaRAM|ram~537_combout\);

-- Location: LABCELL_X14_Y6_N27
\MemoriaRAM|ram~749\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~749_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( \Processador|PC|DOUT\(2) & ( (\ROM_instrucao|memROM~19_combout\ & (!\ROM_instrucao|memROM~11_combout\ & (\ROM_instrucao|memROM~13_combout\ & !\ROM_instrucao|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \Processador|PC|ALT_INV_DOUT\(2),
	combout => \MemoriaRAM|ram~749_combout\);

-- Location: LABCELL_X16_Y6_N30
\MemoriaRAM|ram~750\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~750_combout\ = ( \MemoriaRAM|ram~749_combout\ & ( \MemoriaRAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~749_combout\,
	combout => \MemoriaRAM|ram~750_combout\);

-- Location: FF_X16_Y6_N34
\MemoriaRAM|ram~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~231_q\);

-- Location: MLABCELL_X23_Y6_N39
\MemoriaRAM|ram~745\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~745_combout\ = ( !\ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~17_combout\ & (\ROM_instrucao|memROM~19_combout\ & (\Processador|PC|DOUT[2]~DUPLICATE_q\ & 
-- \ROM_instrucao|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datac => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~745_combout\);

-- Location: LABCELL_X16_Y6_N18
\MemoriaRAM|ram~746\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~746_combout\ = (\MemoriaRAM|process_0~0_combout\ & \MemoriaRAM|ram~745_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~745_combout\,
	combout => \MemoriaRAM|ram~746_combout\);

-- Location: FF_X16_Y6_N22
\MemoriaRAM|ram~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~215_q\);

-- Location: MLABCELL_X18_Y3_N30
\MemoriaRAM|ram~747\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~747_combout\ = ( \ROM_instrucao|memROM~13_combout\ & ( !\ROM_instrucao|memROM~11_combout\ & ( (\Processador|PC|DOUT[2]~DUPLICATE_q\ & (\ROM_instrucao|memROM~17_combout\ & (\ROM_instrucao|memROM~19_combout\ & 
-- !\ROM_instrucao|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~747_combout\);

-- Location: LABCELL_X19_Y3_N6
\MemoriaRAM|ram~748\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~748_combout\ = (\MemoriaRAM|ram~747_combout\ & \MemoriaRAM|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~747_combout\,
	datad => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~748_combout\);

-- Location: FF_X19_Y3_N2
\MemoriaRAM|ram~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~471_q\);

-- Location: LABCELL_X16_Y7_N39
\MemoriaRAM|ram~751\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~751_combout\ = ( !\ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( (\Processador|PC|DOUT\(2) & (\ROM_instrucao|memROM~13_combout\ & (\ROM_instrucao|memROM~18_combout\ & \ROM_instrucao|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~751_combout\);

-- Location: LABCELL_X19_Y8_N18
\MemoriaRAM|ram~752\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~752_combout\ = ( \MemoriaRAM|ram~751_combout\ & ( \MemoriaRAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MemoriaRAM|ALT_INV_ram~751_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~752_combout\);

-- Location: FF_X19_Y8_N2
\MemoriaRAM|ram~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~487_q\);

-- Location: LABCELL_X19_Y8_N0
\MemoriaRAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~538_combout\ = ( \MemoriaRAM|ram~487_q\ & ( \ROM_instrucao|memROM~17_combout\ & ( (\MemoriaRAM|ram~471_q\) # (\ROM_instrucao|memROM~18_combout\) ) ) ) # ( !\MemoriaRAM|ram~487_q\ & ( \ROM_instrucao|memROM~17_combout\ & ( 
-- (!\ROM_instrucao|memROM~18_combout\ & \MemoriaRAM|ram~471_q\) ) ) ) # ( \MemoriaRAM|ram~487_q\ & ( !\ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~215_q\))) # (\ROM_instrucao|memROM~18_combout\ & 
-- (\MemoriaRAM|ram~231_q\)) ) ) ) # ( !\MemoriaRAM|ram~487_q\ & ( !\ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~215_q\))) # (\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~231_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100000000110011000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~231_q\,
	datab => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~215_q\,
	datad => \MemoriaRAM|ALT_INV_ram~471_q\,
	datae => \MemoriaRAM|ALT_INV_ram~487_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~538_combout\);

-- Location: MLABCELL_X18_Y8_N48
\MemoriaRAM|ram~263feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~263feeder_combout\ = ( \Processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	combout => \MemoriaRAM|ram~263feeder_combout\);

-- Location: LABCELL_X20_Y8_N36
\MemoriaRAM|ram~757\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~757_combout\ = ( \ROM_instrucao|memROM~13_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( (\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~17_combout\ & (\Processador|PC|DOUT\(2) & \ROM_instrucao|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~757_combout\);

-- Location: MLABCELL_X18_Y8_N30
\MemoriaRAM|ram~758\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~758_combout\ = ( \MemoriaRAM|process_0~0_combout\ & ( \MemoriaRAM|ram~757_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~757_combout\,
	combout => \MemoriaRAM|ram~758_combout\);

-- Location: FF_X18_Y8_N50
\MemoriaRAM|ram~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~263feeder_combout\,
	ena => \MemoriaRAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~263_q\);

-- Location: LABCELL_X17_Y6_N18
\MemoriaRAM|ram~755\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~755_combout\ = ( \ROM_instrucao|memROM~17_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (\ROM_instrucao|memROM~13_combout\ & (\Processador|PC|DOUT\(2) & \ROM_instrucao|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~755_combout\);

-- Location: LABCELL_X16_Y6_N48
\MemoriaRAM|ram~756\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~756_combout\ = ( \MemoriaRAM|ram~755_combout\ & ( \MemoriaRAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~755_combout\,
	combout => \MemoriaRAM|ram~756_combout\);

-- Location: FF_X19_Y7_N40
\MemoriaRAM|ram~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~503_q\);

-- Location: MLABCELL_X18_Y8_N57
\MemoriaRAM|ram~247feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~247feeder_combout\ = ( \Processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	combout => \MemoriaRAM|ram~247feeder_combout\);

-- Location: LABCELL_X17_Y7_N48
\MemoriaRAM|ram~753\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~753_combout\ = ( \ROM_instrucao|memROM~13_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (\ROM_instrucao|memROM~11_combout\ & (\Processador|PC|DOUT\(2) & (\ROM_instrucao|memROM~19_combout\ & !\ROM_instrucao|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~753_combout\);

-- Location: LABCELL_X17_Y7_N24
\MemoriaRAM|ram~754\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~754_combout\ = ( \MemoriaRAM|ram~753_combout\ & ( \MemoriaRAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~753_combout\,
	combout => \MemoriaRAM|ram~754_combout\);

-- Location: FF_X18_Y8_N59
\MemoriaRAM|ram~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~247feeder_combout\,
	ena => \MemoriaRAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~247_q\);

-- Location: MLABCELL_X18_Y8_N36
\MemoriaRAM|ram~519feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~519feeder_combout\ = ( \Processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	combout => \MemoriaRAM|ram~519feeder_combout\);

-- Location: LABCELL_X21_Y5_N27
\MemoriaRAM|ram~759\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~759_combout\ = ( \ROM_instrucao|memROM~17_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( (\ROM_instrucao|memROM~11_combout\ & (\ROM_instrucao|memROM~13_combout\ & (\ROM_instrucao|memROM~19_combout\ & 
-- \Processador|PC|DOUT[2]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~759_combout\);

-- Location: LABCELL_X16_Y7_N33
\MemoriaRAM|ram~760\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~760_combout\ = ( \MemoriaRAM|ram~759_combout\ & ( \MemoriaRAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~759_combout\,
	combout => \MemoriaRAM|ram~760_combout\);

-- Location: FF_X18_Y8_N38
\MemoriaRAM|ram~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~519feeder_combout\,
	ena => \MemoriaRAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~519_q\);

-- Location: MLABCELL_X18_Y8_N45
\MemoriaRAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~539_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|ram~519_q\ ) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|ram~503_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|ram~263_q\ ) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|ram~247_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~263_q\,
	datab => \MemoriaRAM|ALT_INV_ram~503_q\,
	datac => \MemoriaRAM|ALT_INV_ram~247_q\,
	datad => \MemoriaRAM|ALT_INV_ram~519_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~539_combout\);

-- Location: LABCELL_X19_Y8_N9
\MemoriaRAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~540_combout\ = ( \MemoriaRAM|ram~538_combout\ & ( \MemoriaRAM|ram~539_combout\ & ( \ROM_instrucao|memROM~19_combout\ ) ) ) # ( !\MemoriaRAM|ram~538_combout\ & ( \MemoriaRAM|ram~539_combout\ & ( (\ROM_instrucao|memROM~11_combout\ & 
-- \ROM_instrucao|memROM~19_combout\) ) ) ) # ( \MemoriaRAM|ram~538_combout\ & ( !\MemoriaRAM|ram~539_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & \ROM_instrucao|memROM~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000011000000110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~538_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~539_combout\,
	combout => \MemoriaRAM|ram~540_combout\);

-- Location: LABCELL_X20_Y8_N27
\MemoriaRAM|ram~63feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~63feeder_combout\ = ( \Processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	combout => \MemoriaRAM|ram~63feeder_combout\);

-- Location: LABCELL_X21_Y8_N9
\MemoriaRAM|ram~687\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~687_combout\ = ( !\ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|process_0~0_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & (\ROM_instrucao|memROM~18_combout\ & (\ROM_instrucao|memROM~11_combout\ & 
-- !\ROM_instrucao|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~687_combout\);

-- Location: FF_X20_Y8_N28
\MemoriaRAM|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~63feeder_combout\,
	ena => \MemoriaRAM|ram~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~63_q\);

-- Location: LABCELL_X21_Y8_N27
\MemoriaRAM|ram~688\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~688_combout\ = ( !\ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|process_0~0_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & (\ROM_instrucao|memROM~18_combout\ & (\ROM_instrucao|memROM~11_combout\ & 
-- \ROM_instrucao|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~688_combout\);

-- Location: FF_X23_Y5_N13
\MemoriaRAM|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~688_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~319_q\);

-- Location: LABCELL_X20_Y7_N24
\MemoriaRAM|ram~685\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~685_combout\ = ( !\ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|process_0~0_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (!\ROM_instrucao|memROM~13_combout\ & (!\ROM_instrucao|memROM~19_combout\ & 
-- \ROM_instrucao|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000100000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~685_combout\);

-- Location: FF_X20_Y7_N2
\MemoriaRAM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~47_q\);

-- Location: LABCELL_X20_Y7_N15
\MemoriaRAM|ram~686\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~686_combout\ = ( !\ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|process_0~0_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & (!\ROM_instrucao|memROM~13_combout\ & (\ROM_instrucao|memROM~17_combout\ & 
-- \ROM_instrucao|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~686_combout\);

-- Location: FF_X20_Y5_N47
\MemoriaRAM|ram~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~686_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~303_q\);

-- Location: LABCELL_X20_Y5_N45
\MemoriaRAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~528_combout\ = ( \MemoriaRAM|ram~303_q\ & ( \ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~18_combout\) # (\MemoriaRAM|ram~319_q\) ) ) ) # ( !\MemoriaRAM|ram~303_q\ & ( \ROM_instrucao|memROM~17_combout\ & ( 
-- (\ROM_instrucao|memROM~18_combout\ & \MemoriaRAM|ram~319_q\) ) ) ) # ( \MemoriaRAM|ram~303_q\ & ( !\ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~47_q\))) # (\ROM_instrucao|memROM~18_combout\ & 
-- (\MemoriaRAM|ram~63_q\)) ) ) ) # ( !\MemoriaRAM|ram~303_q\ & ( !\ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~47_q\))) # (\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~63_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~63_q\,
	datab => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~319_q\,
	datad => \MemoriaRAM|ALT_INV_ram~47_q\,
	datae => \MemoriaRAM|ALT_INV_ram~303_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~528_combout\);

-- Location: LABCELL_X14_Y5_N48
\MemoriaRAM|ram~684\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~684_combout\ = ( !\ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|process_0~0_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & (\ROM_instrucao|memROM~17_combout\ & (!\ROM_instrucao|memROM~11_combout\ & 
-- \ROM_instrucao|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~684_combout\);

-- Location: FF_X21_Y5_N35
\MemoriaRAM|ram~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~684_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~287_q\);

-- Location: MLABCELL_X23_Y5_N0
\MemoriaRAM|ram~683\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~683_combout\ = ( !\ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|process_0~0_combout\ & ( (\ROM_instrucao|memROM~18_combout\ & (!\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~13_combout\ & 
-- !\ROM_instrucao|memROM~17_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~683_combout\);

-- Location: FF_X21_Y3_N52
\MemoriaRAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~31_q\);

-- Location: MLABCELL_X18_Y7_N12
\MemoriaRAM|ram~681\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~681_combout\ = ( !\ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|process_0~0_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & (!\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~17_combout\ & 
-- !\ROM_instrucao|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~681_combout\);

-- Location: FF_X18_Y7_N7
\MemoriaRAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~15_q\);

-- Location: LABCELL_X17_Y8_N21
\MemoriaRAM|ram~682\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~682_combout\ = ( \ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|process_0~0_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~18_combout\ & (!\ROM_instrucao|memROM~13_combout\ & 
-- !\ROM_instrucao|memROM~19_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~682_combout\);

-- Location: FF_X21_Y5_N59
\MemoriaRAM|ram~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~682_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~271_q\);

-- Location: LABCELL_X21_Y5_N57
\MemoriaRAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~527_combout\ = ( \MemoriaRAM|ram~271_q\ & ( \ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~18_combout\) # (\MemoriaRAM|ram~287_q\) ) ) ) # ( !\MemoriaRAM|ram~271_q\ & ( \ROM_instrucao|memROM~17_combout\ & ( 
-- (\MemoriaRAM|ram~287_q\ & \ROM_instrucao|memROM~18_combout\) ) ) ) # ( \MemoriaRAM|ram~271_q\ & ( !\ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~15_q\))) # (\ROM_instrucao|memROM~18_combout\ & 
-- (\MemoriaRAM|ram~31_q\)) ) ) ) # ( !\MemoriaRAM|ram~271_q\ & ( !\ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~15_q\))) # (\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~31_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~287_q\,
	datab => \MemoriaRAM|ALT_INV_ram~31_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~15_q\,
	datae => \MemoriaRAM|ALT_INV_ram~271_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~527_combout\);

-- Location: LABCELL_X17_Y8_N24
\MemoriaRAM|ram~689\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~689_combout\ = ( !\ROM_instrucao|memROM~17_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~18_combout\ & (!\Processador|PC|DOUT\(2) & \ROM_instrucao|memROM~19_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~689_combout\);

-- Location: LABCELL_X17_Y8_N6
\MemoriaRAM|ram~690\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~690_combout\ = ( \MemoriaRAM|process_0~0_combout\ & ( \MemoriaRAM|ram~689_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~689_combout\,
	combout => \MemoriaRAM|ram~690_combout\);

-- Location: FF_X17_Y3_N58
\MemoriaRAM|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~690_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~79_q\);

-- Location: LABCELL_X16_Y3_N12
\MemoriaRAM|ram~335feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~335feeder_combout\ = ( \Processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	combout => \MemoriaRAM|ram~335feeder_combout\);

-- Location: LABCELL_X19_Y3_N18
\MemoriaRAM|ram~691\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~691_combout\ = ( !\Processador|PC|DOUT\(2) & ( !\ROM_instrucao|memROM~18_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~13_combout\ & (\ROM_instrucao|memROM~19_combout\ & \ROM_instrucao|memROM~17_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \Processador|PC|ALT_INV_DOUT\(2),
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~691_combout\);

-- Location: LABCELL_X19_Y3_N27
\MemoriaRAM|ram~692\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~692_combout\ = ( \MemoriaRAM|process_0~0_combout\ & ( \MemoriaRAM|ram~691_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~691_combout\,
	combout => \MemoriaRAM|ram~692_combout\);

-- Location: FF_X16_Y3_N13
\MemoriaRAM|ram~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~335feeder_combout\,
	ena => \MemoriaRAM|ram~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~335_q\);

-- Location: LABCELL_X20_Y8_N57
\MemoriaRAM|ram~95feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~95feeder_combout\ = ( \Processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	combout => \MemoriaRAM|ram~95feeder_combout\);

-- Location: LABCELL_X20_Y8_N51
\MemoriaRAM|ram~693\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~693_combout\ = ( !\ROM_instrucao|memROM~13_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( (!\Processador|PC|DOUT\(2) & (!\ROM_instrucao|memROM~17_combout\ & (\ROM_instrucao|memROM~18_combout\ & !\ROM_instrucao|memROM~11_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~693_combout\);

-- Location: LABCELL_X20_Y8_N33
\MemoriaRAM|ram~694\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~694_combout\ = ( \MemoriaRAM|ram~693_combout\ & ( \MemoriaRAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~693_combout\,
	combout => \MemoriaRAM|ram~694_combout\);

-- Location: FF_X20_Y8_N58
\MemoriaRAM|ram~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~95feeder_combout\,
	ena => \MemoriaRAM|ram~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~95_q\);

-- Location: LABCELL_X19_Y3_N3
\MemoriaRAM|ram~695\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~695_combout\ = ( !\Processador|PC|DOUT\(2) & ( \ROM_instrucao|memROM~19_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~13_combout\ & (\ROM_instrucao|memROM~18_combout\ & \ROM_instrucao|memROM~17_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \Processador|PC|ALT_INV_DOUT\(2),
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~695_combout\);

-- Location: LABCELL_X20_Y3_N51
\MemoriaRAM|ram~696\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~696_combout\ = ( \MemoriaRAM|ram~695_combout\ & ( \MemoriaRAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MemoriaRAM|ALT_INV_ram~695_combout\,
	dataf => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	combout => \MemoriaRAM|ram~696_combout\);

-- Location: FF_X20_Y3_N29
\MemoriaRAM|ram~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~351_q\);

-- Location: LABCELL_X20_Y3_N27
\MemoriaRAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~529_combout\ = ( \MemoriaRAM|ram~351_q\ & ( \ROM_instrucao|memROM~17_combout\ & ( (\ROM_instrucao|memROM~18_combout\) # (\MemoriaRAM|ram~335_q\) ) ) ) # ( !\MemoriaRAM|ram~351_q\ & ( \ROM_instrucao|memROM~17_combout\ & ( 
-- (\MemoriaRAM|ram~335_q\ & !\ROM_instrucao|memROM~18_combout\) ) ) ) # ( \MemoriaRAM|ram~351_q\ & ( !\ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~79_q\)) # (\ROM_instrucao|memROM~18_combout\ & 
-- ((\MemoriaRAM|ram~95_q\))) ) ) ) # ( !\MemoriaRAM|ram~351_q\ & ( !\ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~79_q\)) # (\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~95_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~79_q\,
	datab => \MemoriaRAM|ALT_INV_ram~335_q\,
	datac => \MemoriaRAM|ALT_INV_ram~95_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~351_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~529_combout\);

-- Location: LABCELL_X16_Y3_N33
\MemoriaRAM|ram~367feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~367feeder_combout\ = ( \Processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	combout => \MemoriaRAM|ram~367feeder_combout\);

-- Location: LABCELL_X19_Y6_N51
\MemoriaRAM|ram~699\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~699_combout\ = ( !\ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~17_combout\ & ( (\ROM_instrucao|memROM~11_combout\ & (!\Processador|PC|DOUT\(2) & (!\ROM_instrucao|memROM~13_combout\ & \ROM_instrucao|memROM~19_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~699_combout\);

-- Location: LABCELL_X16_Y3_N18
\MemoriaRAM|ram~700\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~700_combout\ = ( \MemoriaRAM|ram~699_combout\ & ( \MemoriaRAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~699_combout\,
	combout => \MemoriaRAM|ram~700_combout\);

-- Location: FF_X16_Y3_N35
\MemoriaRAM|ram~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~367feeder_combout\,
	ena => \MemoriaRAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~367_q\);

-- Location: LABCELL_X21_Y4_N48
\MemoriaRAM|ram~701\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~701_combout\ = ( !\ROM_instrucao|memROM~17_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( (\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~13_combout\ & (\ROM_instrucao|memROM~18_combout\ & !\Processador|PC|DOUT\(2)))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~701_combout\);

-- Location: LABCELL_X21_Y4_N30
\MemoriaRAM|ram~702\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~702_combout\ = ( \MemoriaRAM|process_0~0_combout\ & ( \MemoriaRAM|ram~701_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~701_combout\,
	combout => \MemoriaRAM|ram~702_combout\);

-- Location: FF_X21_Y4_N35
\MemoriaRAM|ram~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~127_q\);

-- Location: LABCELL_X14_Y4_N9
\MemoriaRAM|ram~697\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~697_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( (!\Processador|PC|DOUT[2]~DUPLICATE_q\ & (!\ROM_instrucao|memROM~13_combout\ & (!\ROM_instrucao|memROM~17_combout\ & 
-- !\ROM_instrucao|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~697_combout\);

-- Location: LABCELL_X16_Y4_N39
\MemoriaRAM|ram~698\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~698_combout\ = ( \MemoriaRAM|ram~697_combout\ & ( \MemoriaRAM|process_0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~697_combout\,
	combout => \MemoriaRAM|ram~698_combout\);

-- Location: FF_X14_Y4_N53
\MemoriaRAM|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~111_q\);

-- Location: LABCELL_X16_Y4_N51
\MemoriaRAM|ram~703\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~703_combout\ = ( !\Processador|PC|DOUT[2]~DUPLICATE_q\ & ( \ROM_instrucao|memROM~17_combout\ & ( (\ROM_instrucao|memROM~18_combout\ & (\ROM_instrucao|memROM~19_combout\ & (\ROM_instrucao|memROM~11_combout\ & 
-- !\ROM_instrucao|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~703_combout\);

-- Location: LABCELL_X19_Y4_N51
\MemoriaRAM|ram~704\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~704_combout\ = ( \MemoriaRAM|process_0~0_combout\ & ( \MemoriaRAM|ram~703_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \MemoriaRAM|ALT_INV_process_0~0_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~703_combout\,
	combout => \MemoriaRAM|ram~704_combout\);

-- Location: FF_X19_Y4_N20
\MemoriaRAM|ram~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~383_q\);

-- Location: LABCELL_X19_Y4_N18
\MemoriaRAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~530_combout\ = ( \MemoriaRAM|ram~383_q\ & ( \ROM_instrucao|memROM~17_combout\ & ( (\ROM_instrucao|memROM~18_combout\) # (\MemoriaRAM|ram~367_q\) ) ) ) # ( !\MemoriaRAM|ram~383_q\ & ( \ROM_instrucao|memROM~17_combout\ & ( 
-- (\MemoriaRAM|ram~367_q\ & !\ROM_instrucao|memROM~18_combout\) ) ) ) # ( \MemoriaRAM|ram~383_q\ & ( !\ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~111_q\))) # (\ROM_instrucao|memROM~18_combout\ & 
-- (\MemoriaRAM|ram~127_q\)) ) ) ) # ( !\MemoriaRAM|ram~383_q\ & ( !\ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~111_q\))) # (\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~127_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~367_q\,
	datab => \MemoriaRAM|ALT_INV_ram~127_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~111_q\,
	datae => \MemoriaRAM|ALT_INV_ram~383_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~530_combout\);

-- Location: LABCELL_X20_Y5_N0
\MemoriaRAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~531_combout\ = ( \MemoriaRAM|ram~529_combout\ & ( \MemoriaRAM|ram~530_combout\ & ( ((!\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~527_combout\))) # (\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~528_combout\))) # 
-- (\ROM_instrucao|memROM~19_combout\) ) ) ) # ( !\MemoriaRAM|ram~529_combout\ & ( \MemoriaRAM|ram~530_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (((!\ROM_instrucao|memROM~19_combout\ & \MemoriaRAM|ram~527_combout\)))) # 
-- (\ROM_instrucao|memROM~11_combout\ & (((\ROM_instrucao|memROM~19_combout\)) # (\MemoriaRAM|ram~528_combout\))) ) ) ) # ( \MemoriaRAM|ram~529_combout\ & ( !\MemoriaRAM|ram~530_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & 
-- (((\MemoriaRAM|ram~527_combout\) # (\ROM_instrucao|memROM~19_combout\)))) # (\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~528_combout\ & (!\ROM_instrucao|memROM~19_combout\))) ) ) ) # ( !\MemoriaRAM|ram~529_combout\ & ( 
-- !\MemoriaRAM|ram~530_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & ((!\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~527_combout\))) # (\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~528_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010110000000110101011101000010101101101010001111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~528_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~527_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~529_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~530_combout\,
	combout => \MemoriaRAM|ram~531_combout\);

-- Location: LABCELL_X19_Y6_N36
\MemoriaRAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~541_combout\ = ( \MemoriaRAM|ram~540_combout\ & ( \MemoriaRAM|ram~531_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & ((!\ROM_instrucao|memROM~13_combout\) # ((\MemoriaRAM|ram~536_combout\)))) # (\ROM_instrucao|memROM~20_combout\ & 
-- (((\MemoriaRAM|ram~537_combout\)) # (\ROM_instrucao|memROM~13_combout\))) ) ) ) # ( !\MemoriaRAM|ram~540_combout\ & ( \MemoriaRAM|ram~531_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & ((!\ROM_instrucao|memROM~13_combout\) # 
-- ((\MemoriaRAM|ram~536_combout\)))) # (\ROM_instrucao|memROM~20_combout\ & (!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~537_combout\)))) ) ) ) # ( \MemoriaRAM|ram~540_combout\ & ( !\MemoriaRAM|ram~531_combout\ & ( 
-- (!\ROM_instrucao|memROM~20_combout\ & (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~536_combout\))) # (\ROM_instrucao|memROM~20_combout\ & (((\MemoriaRAM|ram~537_combout\)) # (\ROM_instrucao|memROM~13_combout\))) ) ) ) # ( 
-- !\MemoriaRAM|ram~540_combout\ & ( !\MemoriaRAM|ram~531_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~536_combout\))) # (\ROM_instrucao|memROM~20_combout\ & (!\ROM_instrucao|memROM~13_combout\ & 
-- ((\MemoriaRAM|ram~537_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110000100110101011110001010110011101001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~536_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~537_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~540_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~531_combout\,
	combout => \MemoriaRAM|ram~541_combout\);

-- Location: LABCELL_X17_Y5_N36
\Data_IN[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~9_combout\ = ( !\SW[8]~input_o\ & ( !\SW[9]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \Data_IN[0]~9_combout\);

-- Location: LABCELL_X16_Y5_N9
\AndSW0_7|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndSW0_7|saida~2_combout\ = ( !\ROM_instrucao|memROM~20_combout\ & ( (\Processador|decoder|saida~0_combout\ & (!\ROM_instrucao|memROM~11_combout\ & \DecoderHabBloc|Equal0~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datad => \DecoderHabBloc|ALT_INV_Equal0~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \AndSW0_7|saida~2_combout\);

-- Location: FF_X16_Y5_N56
\FFDebouceMem_key0|DOUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \DebouceMem_key0|saida~combout\,
	d => \FFDebouceMem_key0|DOUT~feeder_combout\,
	clrn => \DecoderHabBloc|ALT_INV_Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FFDebouceMem_key0|DOUT~DUPLICATE_q\);

-- Location: LABCELL_X16_Y5_N0
\Data_IN[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~11_combout\ = ( !\AndSW0_7|saida~2_combout\ & ( ((!\Data_IN[0]~9_combout\) # (((\FFDebouceMem_key1|DOUT~q\) # (\KEY3~input_o\)) # (\FFDebouceMem_key0|DOUT~DUPLICATE_q\))) # (\KEY2~input_o\) ) ) # ( \AndSW0_7|saida~2_combout\ & ( 
-- (!\ROM_instrucao|memROM~17_combout\ & ((((\FFDebouceMem_key1|DOUT~q\) # (\KEY3~input_o\))) # (\KEY2~input_o\))) # (\ROM_instrucao|memROM~17_combout\ & (((!\Data_IN[0]~9_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1101111111111111010111001111110011111111111111111111110011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY2~input_o\,
	datab => \ALT_INV_Data_IN[0]~9_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datad => \ALT_INV_KEY3~input_o\,
	datae => \AndSW0_7|ALT_INV_saida~2_combout\,
	dataf => \FFDebouceMem_key1|ALT_INV_DOUT~q\,
	datag => \FFDebouceMem_key0|ALT_INV_DOUT~DUPLICATE_q\,
	combout => \Data_IN[0]~11_combout\);

-- Location: LABCELL_X19_Y6_N6
\Data_IN[0]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~10_combout\ = ( \MemoriaRAM|ram~541_combout\ & ( \Data_IN[0]~11_combout\ ) ) # ( !\MemoriaRAM|ram~541_combout\ & ( \Data_IN[0]~11_combout\ ) ) # ( \MemoriaRAM|ram~541_combout\ & ( !\Data_IN[0]~11_combout\ & ( (((!\Data_IN[0]~7_combout\) # 
-- (\Data_IN[0]~8_combout\)) # (\Data_IN[0]~3_combout\)) # (\Data_IN[0]~2_combout\) ) ) ) # ( !\MemoriaRAM|ram~541_combout\ & ( !\Data_IN[0]~11_combout\ & ( ((!\Data_IN[0]~7_combout\) # (\Data_IN[0]~8_combout\)) # (\Data_IN[0]~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100111111111111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data_IN[0]~2_combout\,
	datab => \ALT_INV_Data_IN[0]~3_combout\,
	datac => \ALT_INV_Data_IN[0]~8_combout\,
	datad => \ALT_INV_Data_IN[0]~7_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~541_combout\,
	dataf => \ALT_INV_Data_IN[0]~11_combout\,
	combout => \Data_IN[0]~10_combout\);

-- Location: LABCELL_X21_Y6_N3
\Processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~5_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & (((\Processador|MUX1|saida_MUX[1]~0_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~28_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add0~2\ ))
-- \Processador|ULA1|Add0~6\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & (((\Processador|MUX1|saida_MUX[1]~0_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~28_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(1),
	cin => \Processador|ULA1|Add0~2\,
	sumout => \Processador|ULA1|Add0~5_sumout\,
	cout => \Processador|ULA1|Add0~6\);

-- Location: LABCELL_X21_Y6_N42
\Processador|REGA|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|REGA|DOUT[1]~feeder_combout\ = \Processador|ULA1|Add0~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|ULA1|ALT_INV_Add0~5_sumout\,
	combout => \Processador|REGA|DOUT[1]~feeder_combout\);

-- Location: LABCELL_X20_Y6_N30
\Processador|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~5_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & (((!\Processador|MUX1|saida_MUX[1]~0_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (((!\ROM_instrucao|memROM~28_combout\)) # (\Processador|PC|DOUT\(8)))) ) + 
-- ( \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add1~2\ ))
-- \Processador|ULA1|Add1~6\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & (((!\Processador|MUX1|saida_MUX[1]~0_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (((!\ROM_instrucao|memROM~28_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~28_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(1),
	cin => \Processador|ULA1|Add1~2\,
	sumout => \Processador|ULA1|Add1~5_sumout\,
	cout => \Processador|ULA1|Add1~6\);

-- Location: LABCELL_X20_Y6_N21
\Processador|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[1]~1_combout\ = ( \Processador|ULA1|Add1~5_sumout\ & ( ((!\Processador|decoder|Equal10~0_combout\ & \Processador|MUX1|saida_MUX[1]~0_combout\)) # (\Processador|decoder|saida~2_combout\) ) ) # ( !\Processador|ULA1|Add1~5_sumout\ & ( 
-- (!\Processador|decoder|Equal10~0_combout\ & (!\Processador|decoder|saida~2_combout\ & \Processador|MUX1|saida_MUX[1]~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000001111101011110000111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \Processador|decoder|ALT_INV_saida~2_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[1]~0_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \Processador|ULA1|saida[1]~1_combout\);

-- Location: FF_X21_Y6_N44
\Processador|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|REGA|DOUT[1]~feeder_combout\,
	asdata => \Processador|ULA1|saida[1]~1_combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	ena => \Processador|decoder|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(1));

-- Location: FF_X19_Y6_N5
\MemoriaRAM|ram~464\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~464_q\);

-- Location: FF_X18_Y4_N17
\MemoriaRAM|ram~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~480_q\);

-- Location: LABCELL_X19_Y6_N0
\MemoriaRAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~547_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~480_q\ ) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~464_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~464_q\,
	datad => \MemoriaRAM|ALT_INV_ram~480_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~547_combout\);

-- Location: FF_X19_Y4_N38
\MemoriaRAM|ram~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~384_q\);

-- Location: FF_X20_Y5_N8
\MemoriaRAM|ram~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~368_q\);

-- Location: FF_X23_Y5_N4
\MemoriaRAM|ram~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~688_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~320_q\);

-- Location: FF_X20_Y5_N5
\MemoriaRAM|ram~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~686_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~304_q\);

-- Location: LABCELL_X20_Y5_N9
\MemoriaRAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~548_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~384_q\ ) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~368_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~320_q\ ) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~304_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~384_q\,
	datab => \MemoriaRAM|ALT_INV_ram~368_q\,
	datac => \MemoriaRAM|ALT_INV_ram~320_q\,
	datad => \MemoriaRAM|ALT_INV_ram~304_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~548_combout\);

-- Location: FF_X19_Y3_N59
\MemoriaRAM|ram~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~496_q\);

-- Location: FF_X18_Y4_N5
\MemoriaRAM|ram~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~512_q\);

-- Location: MLABCELL_X18_Y4_N33
\MemoriaRAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~549_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~512_q\ ) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~496_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~496_q\,
	datad => \MemoriaRAM|ALT_INV_ram~512_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~549_combout\);

-- Location: FF_X19_Y6_N29
\MemoriaRAM|ram~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~682_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~272_q\);

-- Location: FF_X21_Y5_N52
\MemoriaRAM|ram~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~684_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~288_q\);

-- Location: FF_X20_Y3_N25
\MemoriaRAM|ram~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~352_q\);

-- Location: FF_X19_Y6_N14
\MemoriaRAM|ram~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~336_q\);

-- Location: LABCELL_X19_Y6_N12
\MemoriaRAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~546_combout\ = ( \MemoriaRAM|ram~336_q\ & ( \ROM_instrucao|memROM~18_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~288_q\)) # (\ROM_instrucao|memROM~19_combout\ & ((\MemoriaRAM|ram~352_q\))) ) ) ) # ( 
-- !\MemoriaRAM|ram~336_q\ & ( \ROM_instrucao|memROM~18_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~288_q\)) # (\ROM_instrucao|memROM~19_combout\ & ((\MemoriaRAM|ram~352_q\))) ) ) ) # ( \MemoriaRAM|ram~336_q\ & ( 
-- !\ROM_instrucao|memROM~18_combout\ & ( (\ROM_instrucao|memROM~19_combout\) # (\MemoriaRAM|ram~272_q\) ) ) ) # ( !\MemoriaRAM|ram~336_q\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (\MemoriaRAM|ram~272_q\ & !\ROM_instrucao|memROM~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~272_q\,
	datab => \MemoriaRAM|ALT_INV_ram~288_q\,
	datac => \MemoriaRAM|ALT_INV_ram~352_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~336_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~546_combout\);

-- Location: LABCELL_X19_Y6_N24
\MemoriaRAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~550_combout\ = ( \MemoriaRAM|ram~549_combout\ & ( \MemoriaRAM|ram~546_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & ((!\ROM_instrucao|memROM~11_combout\) # ((\MemoriaRAM|ram~548_combout\)))) # (\ROM_instrucao|memROM~20_combout\ & 
-- (((\MemoriaRAM|ram~547_combout\)) # (\ROM_instrucao|memROM~11_combout\))) ) ) ) # ( !\MemoriaRAM|ram~549_combout\ & ( \MemoriaRAM|ram~546_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & ((!\ROM_instrucao|memROM~11_combout\) # 
-- ((\MemoriaRAM|ram~548_combout\)))) # (\ROM_instrucao|memROM~20_combout\ & (!\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~547_combout\))) ) ) ) # ( \MemoriaRAM|ram~549_combout\ & ( !\MemoriaRAM|ram~546_combout\ & ( 
-- (!\ROM_instrucao|memROM~20_combout\ & (\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~548_combout\)))) # (\ROM_instrucao|memROM~20_combout\ & (((\MemoriaRAM|ram~547_combout\)) # (\ROM_instrucao|memROM~11_combout\))) ) ) ) # ( 
-- !\MemoriaRAM|ram~549_combout\ & ( !\MemoriaRAM|ram~546_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & (\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~548_combout\)))) # (\ROM_instrucao|memROM~20_combout\ & (!\ROM_instrucao|memROM~11_combout\ & 
-- (\MemoriaRAM|ram~547_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~547_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~548_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~549_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~546_combout\,
	combout => \MemoriaRAM|ram~550_combout\);

-- Location: FF_X18_Y3_N38
\MemoriaRAM|ram~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~256_q\);

-- Location: FF_X19_Y3_N41
\MemoriaRAM|ram~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~240_q\);

-- Location: MLABCELL_X18_Y3_N12
\MemoriaRAM|ram~208feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~208feeder_combout\ = ( \Processador|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(1),
	combout => \MemoriaRAM|ram~208feeder_combout\);

-- Location: FF_X18_Y3_N14
\MemoriaRAM|ram~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~208feeder_combout\,
	ena => \MemoriaRAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~208_q\);

-- Location: FF_X16_Y6_N28
\MemoriaRAM|ram~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~224_q\);

-- Location: MLABCELL_X18_Y3_N39
\MemoriaRAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~542_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~256_q\ ) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~240_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~224_q\ ) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~208_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~256_q\,
	datab => \MemoriaRAM|ALT_INV_ram~240_q\,
	datac => \MemoriaRAM|ALT_INV_ram~208_q\,
	datad => \MemoriaRAM|ALT_INV_ram~224_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~542_combout\);

-- Location: FF_X20_Y8_N56
\MemoriaRAM|ram~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~96_q\);

-- Location: LABCELL_X14_Y4_N45
\MemoriaRAM|ram~112feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~112feeder_combout\ = ( \Processador|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(1),
	combout => \MemoriaRAM|ram~112feeder_combout\);

-- Location: FF_X14_Y4_N46
\MemoriaRAM|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~112feeder_combout\,
	ena => \MemoriaRAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~112_q\);

-- Location: LABCELL_X17_Y3_N54
\MemoriaRAM|ram~80feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~80feeder_combout\ = ( \Processador|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(1),
	combout => \MemoriaRAM|ram~80feeder_combout\);

-- Location: FF_X17_Y3_N56
\MemoriaRAM|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~80feeder_combout\,
	ena => \MemoriaRAM|ram~690_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~80_q\);

-- Location: FF_X20_Y8_N14
\MemoriaRAM|ram~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~128_q\);

-- Location: LABCELL_X20_Y8_N12
\MemoriaRAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~543_combout\ = ( \MemoriaRAM|ram~128_q\ & ( \ROM_instrucao|memROM~11_combout\ & ( (\ROM_instrucao|memROM~18_combout\) # (\MemoriaRAM|ram~112_q\) ) ) ) # ( !\MemoriaRAM|ram~128_q\ & ( \ROM_instrucao|memROM~11_combout\ & ( 
-- (\MemoriaRAM|ram~112_q\ & !\ROM_instrucao|memROM~18_combout\) ) ) ) # ( \MemoriaRAM|ram~128_q\ & ( !\ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~80_q\))) # (\ROM_instrucao|memROM~18_combout\ & 
-- (\MemoriaRAM|ram~96_q\)) ) ) ) # ( !\MemoriaRAM|ram~128_q\ & ( !\ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~80_q\))) # (\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~96_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~96_q\,
	datab => \MemoriaRAM|ALT_INV_ram~112_q\,
	datac => \MemoriaRAM|ALT_INV_ram~80_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~128_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~543_combout\);

-- Location: FF_X21_Y3_N26
\MemoriaRAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~32_q\);

-- Location: FF_X20_Y7_N44
\MemoriaRAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~16_q\);

-- Location: FF_X20_Y8_N49
\MemoriaRAM|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~64_q\);

-- Location: FF_X20_Y7_N5
\MemoriaRAM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~48_q\);

-- Location: LABCELL_X20_Y7_N3
\MemoriaRAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~544_combout\ = ( \MemoriaRAM|ram~48_q\ & ( \ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~18_combout\) # (\MemoriaRAM|ram~64_q\) ) ) ) # ( !\MemoriaRAM|ram~48_q\ & ( \ROM_instrucao|memROM~11_combout\ & ( 
-- (\MemoriaRAM|ram~64_q\ & \ROM_instrucao|memROM~18_combout\) ) ) ) # ( \MemoriaRAM|ram~48_q\ & ( !\ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~16_q\))) # (\ROM_instrucao|memROM~18_combout\ & 
-- (\MemoriaRAM|ram~32_q\)) ) ) ) # ( !\MemoriaRAM|ram~48_q\ & ( !\ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~16_q\))) # (\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~32_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~32_q\,
	datab => \MemoriaRAM|ALT_INV_ram~16_q\,
	datac => \MemoriaRAM|ALT_INV_ram~64_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~48_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~544_combout\);

-- Location: LABCELL_X19_Y6_N54
\MemoriaRAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~545_combout\ = ( \MemoriaRAM|ram~543_combout\ & ( \MemoriaRAM|ram~544_combout\ & ( (!\Processador|PC|DOUT\(2)) # ((!\ROM_instrucao|memROM~19_combout\) # (\MemoriaRAM|ram~542_combout\)) ) ) ) # ( !\MemoriaRAM|ram~543_combout\ & ( 
-- \MemoriaRAM|ram~544_combout\ & ( (!\ROM_instrucao|memROM~19_combout\) # ((\Processador|PC|DOUT\(2) & \MemoriaRAM|ram~542_combout\)) ) ) ) # ( \MemoriaRAM|ram~543_combout\ & ( !\MemoriaRAM|ram~544_combout\ & ( (\ROM_instrucao|memROM~19_combout\ & 
-- ((!\Processador|PC|DOUT\(2)) # (\MemoriaRAM|ram~542_combout\))) ) ) ) # ( !\MemoriaRAM|ram~543_combout\ & ( !\MemoriaRAM|ram~544_combout\ & ( (\Processador|PC|DOUT\(2) & (\MemoriaRAM|ram~542_combout\ & \ROM_instrucao|memROM~19_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000001010111111111111000001011111111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \MemoriaRAM|ALT_INV_ram~542_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~543_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~544_combout\,
	combout => \MemoriaRAM|ram~545_combout\);

-- Location: FF_X17_Y7_N2
\MemoriaRAM|ram~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~264_q\);

-- Location: FF_X17_Y7_N41
\MemoriaRAM|ram~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~248_q\);

-- Location: FF_X16_Y6_N19
\MemoriaRAM|ram~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~216_q\);

-- Location: FF_X16_Y6_N31
\MemoriaRAM|ram~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~232_q\);

-- Location: LABCELL_X17_Y7_N18
\MemoriaRAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~551_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~264_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~232_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~248_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~216_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~264_q\,
	datab => \MemoriaRAM|ALT_INV_ram~248_q\,
	datac => \MemoriaRAM|ALT_INV_ram~216_q\,
	datad => \MemoriaRAM|ALT_INV_ram~232_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~551_combout\);

-- Location: FF_X18_Y6_N22
\MemoriaRAM|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~104_q\);

-- Location: FF_X17_Y7_N44
\MemoriaRAM|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~136_q\);

-- Location: LABCELL_X17_Y3_N51
\MemoriaRAM|ram~120feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~120feeder_combout\ = ( \Processador|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(1),
	combout => \MemoriaRAM|ram~120feeder_combout\);

-- Location: FF_X17_Y3_N53
\MemoriaRAM|ram~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~120feeder_combout\,
	ena => \MemoriaRAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~120_q\);

-- Location: LABCELL_X17_Y3_N36
\MemoriaRAM|ram~88feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~88feeder_combout\ = ( \Processador|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(1),
	combout => \MemoriaRAM|ram~88feeder_combout\);

-- Location: FF_X17_Y3_N38
\MemoriaRAM|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~88feeder_combout\,
	ena => \MemoriaRAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~88_q\);

-- Location: LABCELL_X17_Y7_N45
\MemoriaRAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~552_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~136_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~104_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~120_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~88_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~104_q\,
	datab => \MemoriaRAM|ALT_INV_ram~136_q\,
	datac => \MemoriaRAM|ALT_INV_ram~120_q\,
	datad => \MemoriaRAM|ALT_INV_ram~88_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~552_combout\);

-- Location: FF_X18_Y7_N14
\MemoriaRAM|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~56_q\);

-- Location: FF_X16_Y7_N8
\MemoriaRAM|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~72_q\);

-- Location: FF_X18_Y7_N31
\MemoriaRAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~24_q\);

-- Location: FF_X18_Y5_N13
\MemoriaRAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~40_q\);

-- Location: LABCELL_X16_Y7_N9
\MemoriaRAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~553_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~72_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~40_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~56_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~56_q\,
	datab => \MemoriaRAM|ALT_INV_ram~72_q\,
	datac => \MemoriaRAM|ALT_INV_ram~24_q\,
	datad => \MemoriaRAM|ALT_INV_ram~40_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~553_combout\);

-- Location: LABCELL_X19_Y6_N45
\MemoriaRAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~554_combout\ = ( \MemoriaRAM|ram~552_combout\ & ( \MemoriaRAM|ram~553_combout\ & ( (!\Processador|PC|DOUT\(2)) # ((!\ROM_instrucao|memROM~19_combout\) # (\MemoriaRAM|ram~551_combout\)) ) ) ) # ( !\MemoriaRAM|ram~552_combout\ & ( 
-- \MemoriaRAM|ram~553_combout\ & ( (!\ROM_instrucao|memROM~19_combout\) # ((\Processador|PC|DOUT\(2) & \MemoriaRAM|ram~551_combout\)) ) ) ) # ( \MemoriaRAM|ram~552_combout\ & ( !\MemoriaRAM|ram~553_combout\ & ( (\ROM_instrucao|memROM~19_combout\ & 
-- ((!\Processador|PC|DOUT\(2)) # (\MemoriaRAM|ram~551_combout\))) ) ) ) # ( !\MemoriaRAM|ram~552_combout\ & ( !\MemoriaRAM|ram~553_combout\ & ( (\Processador|PC|DOUT\(2) & (\ROM_instrucao|memROM~19_combout\ & \MemoriaRAM|ram~551_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001001000100011001111001100110111011110111011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datab => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~551_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~552_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~553_combout\,
	combout => \MemoriaRAM|ram~554_combout\);

-- Location: FF_X19_Y7_N14
\MemoriaRAM|ram~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~344_q\);

-- Location: FF_X17_Y4_N37
\MemoriaRAM|ram~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~280_q\);

-- Location: FF_X19_Y3_N22
\MemoriaRAM|ram~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~472_q\);

-- Location: LABCELL_X19_Y7_N15
\MemoriaRAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~555_combout\ = ( \MemoriaRAM|ram~472_q\ & ( \ROM_instrucao|memROM~19_combout\ & ( (\Processador|PC|DOUT\(2)) # (\MemoriaRAM|ram~344_q\) ) ) ) # ( !\MemoriaRAM|ram~472_q\ & ( \ROM_instrucao|memROM~19_combout\ & ( (\MemoriaRAM|ram~344_q\ & 
-- !\Processador|PC|DOUT\(2)) ) ) ) # ( \MemoriaRAM|ram~472_q\ & ( !\ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~280_q\ ) ) ) # ( !\MemoriaRAM|ram~472_q\ & ( !\ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~280_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~344_q\,
	datac => \MemoriaRAM|ALT_INV_ram~280_q\,
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	datae => \MemoriaRAM|ALT_INV_ram~472_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~555_combout\);

-- Location: FF_X18_Y6_N44
\MemoriaRAM|ram~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~392_q\);

-- Location: FF_X18_Y4_N11
\MemoriaRAM|ram~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~520_q\);

-- Location: FF_X23_Y5_N22
\MemoriaRAM|ram~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~328_q\);

-- Location: MLABCELL_X18_Y6_N45
\MemoriaRAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~558_combout\ = ( \ROM_instrucao|memROM~19_combout\ & ( (!\Processador|PC|DOUT[2]~DUPLICATE_q\ & (\MemoriaRAM|ram~392_q\)) # (\Processador|PC|DOUT[2]~DUPLICATE_q\ & ((\MemoriaRAM|ram~520_q\))) ) ) # ( !\ROM_instrucao|memROM~19_combout\ & ( 
-- \MemoriaRAM|ram~328_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \MemoriaRAM|ALT_INV_ram~392_q\,
	datac => \MemoriaRAM|ALT_INV_ram~520_q\,
	datad => \MemoriaRAM|ALT_INV_ram~328_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~558_combout\);

-- Location: FF_X19_Y7_N32
\MemoriaRAM|ram~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~504_q\);

-- Location: FF_X19_Y7_N44
\MemoriaRAM|ram~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~376_q\);

-- Location: FF_X20_Y5_N17
\MemoriaRAM|ram~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~312_q\);

-- Location: LABCELL_X19_Y7_N45
\MemoriaRAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~556_combout\ = ( \MemoriaRAM|ram~312_q\ & ( \ROM_instrucao|memROM~19_combout\ & ( (!\Processador|PC|DOUT\(2) & ((\MemoriaRAM|ram~376_q\))) # (\Processador|PC|DOUT\(2) & (\MemoriaRAM|ram~504_q\)) ) ) ) # ( !\MemoriaRAM|ram~312_q\ & ( 
-- \ROM_instrucao|memROM~19_combout\ & ( (!\Processador|PC|DOUT\(2) & ((\MemoriaRAM|ram~376_q\))) # (\Processador|PC|DOUT\(2) & (\MemoriaRAM|ram~504_q\)) ) ) ) # ( \MemoriaRAM|ram~312_q\ & ( !\ROM_instrucao|memROM~19_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~504_q\,
	datac => \MemoriaRAM|ALT_INV_ram~376_q\,
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	datae => \MemoriaRAM|ALT_INV_ram~312_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~556_combout\);

-- Location: FF_X19_Y8_N26
\MemoriaRAM|ram~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~488_q\);

-- Location: LABCELL_X19_Y8_N54
\MemoriaRAM|ram~296feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~296feeder_combout\ = \Processador|REGA|DOUT\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|REGA|ALT_INV_DOUT\(1),
	combout => \MemoriaRAM|ram~296feeder_combout\);

-- Location: FF_X19_Y8_N55
\MemoriaRAM|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~296feeder_combout\,
	ena => \MemoriaRAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~296_q\);

-- Location: FF_X19_Y8_N32
\MemoriaRAM|ram~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~360_q\);

-- Location: LABCELL_X19_Y8_N30
\MemoriaRAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~557_combout\ = ( \MemoriaRAM|ram~360_q\ & ( \ROM_instrucao|memROM~19_combout\ & ( (!\Processador|PC|DOUT[2]~DUPLICATE_q\) # (\MemoriaRAM|ram~488_q\) ) ) ) # ( !\MemoriaRAM|ram~360_q\ & ( \ROM_instrucao|memROM~19_combout\ & ( 
-- (\MemoriaRAM|ram~488_q\ & \Processador|PC|DOUT[2]~DUPLICATE_q\) ) ) ) # ( \MemoriaRAM|ram~360_q\ & ( !\ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~296_q\ ) ) ) # ( !\MemoriaRAM|ram~360_q\ & ( !\ROM_instrucao|memROM~19_combout\ & ( 
-- \MemoriaRAM|ram~296_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~488_q\,
	datac => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \MemoriaRAM|ALT_INV_ram~296_q\,
	datae => \MemoriaRAM|ALT_INV_ram~360_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~557_combout\);

-- Location: MLABCELL_X18_Y6_N18
\MemoriaRAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~559_combout\ = ( \MemoriaRAM|ram~556_combout\ & ( \MemoriaRAM|ram~557_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (((\MemoriaRAM|ram~555_combout\)) # (\ROM_instrucao|memROM~18_combout\))) # (\ROM_instrucao|memROM~11_combout\ & 
-- ((!\ROM_instrucao|memROM~18_combout\) # ((\MemoriaRAM|ram~558_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~556_combout\ & ( \MemoriaRAM|ram~557_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (((\MemoriaRAM|ram~555_combout\)) # 
-- (\ROM_instrucao|memROM~18_combout\))) # (\ROM_instrucao|memROM~11_combout\ & (\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~558_combout\)))) ) ) ) # ( \MemoriaRAM|ram~556_combout\ & ( !\MemoriaRAM|ram~557_combout\ & ( 
-- (!\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~555_combout\))) # (\ROM_instrucao|memROM~11_combout\ & ((!\ROM_instrucao|memROM~18_combout\) # ((\MemoriaRAM|ram~558_combout\)))) ) ) ) # ( 
-- !\MemoriaRAM|ram~556_combout\ & ( !\MemoriaRAM|ram~557_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~555_combout\))) # (\ROM_instrucao|memROM~11_combout\ & (\ROM_instrucao|memROM~18_combout\ & 
-- ((\MemoriaRAM|ram~558_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~555_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~558_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~556_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~557_combout\,
	combout => \MemoriaRAM|ram~559_combout\);

-- Location: LABCELL_X19_Y6_N30
\MemoriaRAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~560_combout\ = ( \MemoriaRAM|ram~554_combout\ & ( \MemoriaRAM|ram~559_combout\ & ( ((!\ROM_instrucao|memROM~17_combout\ & ((\MemoriaRAM|ram~545_combout\))) # (\ROM_instrucao|memROM~17_combout\ & (\MemoriaRAM|ram~550_combout\))) # 
-- (\ROM_instrucao|memROM~13_combout\) ) ) ) # ( !\MemoriaRAM|ram~554_combout\ & ( \MemoriaRAM|ram~559_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & ((!\ROM_instrucao|memROM~17_combout\ & ((\MemoriaRAM|ram~545_combout\))) # 
-- (\ROM_instrucao|memROM~17_combout\ & (\MemoriaRAM|ram~550_combout\)))) # (\ROM_instrucao|memROM~13_combout\ & (((\ROM_instrucao|memROM~17_combout\)))) ) ) ) # ( \MemoriaRAM|ram~554_combout\ & ( !\MemoriaRAM|ram~559_combout\ & ( 
-- (!\ROM_instrucao|memROM~13_combout\ & ((!\ROM_instrucao|memROM~17_combout\ & ((\MemoriaRAM|ram~545_combout\))) # (\ROM_instrucao|memROM~17_combout\ & (\MemoriaRAM|ram~550_combout\)))) # (\ROM_instrucao|memROM~13_combout\ & 
-- (((!\ROM_instrucao|memROM~17_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~554_combout\ & ( !\MemoriaRAM|ram~559_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & ((!\ROM_instrucao|memROM~17_combout\ & ((\MemoriaRAM|ram~545_combout\))) # 
-- (\ROM_instrucao|memROM~17_combout\ & (\MemoriaRAM|ram~550_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001000100001111110100010000001100011101110011111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~550_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~545_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~554_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~559_combout\,
	combout => \MemoriaRAM|ram~560_combout\);

-- Location: LABCELL_X19_Y6_N21
\Processador|MUX1|saida_MUX[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[1]~0_combout\ = ( \AndSW0_7|saida~3_combout\ & ( \MemoriaRAM|ram~560_combout\ ) ) # ( !\AndSW0_7|saida~3_combout\ & ( \MemoriaRAM|ram~560_combout\ & ( \SW[1]~input_o\ ) ) ) # ( !\AndSW0_7|saida~3_combout\ & ( 
-- !\MemoriaRAM|ram~560_combout\ & ( \SW[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000000000000001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datae => \AndSW0_7|ALT_INV_saida~3_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~560_combout\,
	combout => \Processador|MUX1|saida_MUX[1]~0_combout\);

-- Location: LABCELL_X21_Y6_N6
\Processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~9_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & (((\Processador|MUX1|saida_MUX[2]~1_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~29_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(2) ) + ( \Processador|ULA1|Add0~6\ ))
-- \Processador|ULA1|Add0~10\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & (((\Processador|MUX1|saida_MUX[2]~1_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~29_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(2) ) + ( \Processador|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~29_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	cin => \Processador|ULA1|Add0~6\,
	sumout => \Processador|ULA1|Add0~9_sumout\,
	cout => \Processador|ULA1|Add0~10\);

-- Location: LABCELL_X21_Y6_N51
\Processador|REGA|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|REGA|DOUT[2]~feeder_combout\ = ( \Processador|ULA1|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA1|ALT_INV_Add0~9_sumout\,
	combout => \Processador|REGA|DOUT[2]~feeder_combout\);

-- Location: LABCELL_X20_Y6_N33
\Processador|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~9_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & (((!\Processador|MUX1|saida_MUX[2]~1_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (((!\ROM_instrucao|memROM~29_combout\)) # (\Processador|PC|DOUT\(8)))) ) + 
-- ( \Processador|REGA|DOUT\(2) ) + ( \Processador|ULA1|Add1~6\ ))
-- \Processador|ULA1|Add1~10\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & (((!\Processador|MUX1|saida_MUX[2]~1_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (((!\ROM_instrucao|memROM~29_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(2) ) + ( \Processador|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~29_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	cin => \Processador|ULA1|Add1~6\,
	sumout => \Processador|ULA1|Add1~9_sumout\,
	cout => \Processador|ULA1|Add1~10\);

-- Location: LABCELL_X21_Y6_N48
\Processador|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[2]~2_combout\ = ( \Processador|ULA1|Add1~9_sumout\ & ( ((!\Processador|decoder|Equal10~0_combout\ & ((\Processador|MUX1|saida_MUX[2]~1_combout\))) # (\Processador|decoder|Equal10~0_combout\ & (\ROM_instrucao|memROM~11_combout\))) # 
-- (\Processador|decoder|saida~2_combout\) ) ) # ( !\Processador|ULA1|Add1~9_sumout\ & ( (!\Processador|decoder|saida~2_combout\ & ((!\Processador|decoder|Equal10~0_combout\ & ((\Processador|MUX1|saida_MUX[2]~1_combout\))) # 
-- (\Processador|decoder|Equal10~0_combout\ & (\ROM_instrucao|memROM~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datab => \Processador|decoder|ALT_INV_saida~2_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \Processador|ULA1|saida[2]~2_combout\);

-- Location: FF_X21_Y6_N53
\Processador|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|REGA|DOUT[2]~feeder_combout\,
	asdata => \Processador|ULA1|saida[2]~2_combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	ena => \Processador|decoder|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(2));

-- Location: FF_X18_Y7_N43
\MemoriaRAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~25_q\);

-- Location: FF_X19_Y5_N41
\MemoriaRAM|ram~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~281_q\);

-- Location: LABCELL_X19_Y5_N39
\MemoriaRAM|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~562_combout\ = ( \ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & \MemoriaRAM|ram~281_q\) ) ) # ( !\ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & \MemoriaRAM|ram~25_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~25_q\,
	datad => \MemoriaRAM|ALT_INV_ram~281_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~562_combout\);

-- Location: FF_X20_Y7_N28
\MemoriaRAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~17_q\);

-- Location: FF_X21_Y5_N56
\MemoriaRAM|ram~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~682_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~273_q\);

-- Location: LABCELL_X21_Y5_N0
\MemoriaRAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~561_combout\ = ( \ROM_instrucao|memROM~17_combout\ & ( (\MemoriaRAM|ram~273_q\ & !\ROM_instrucao|memROM~20_combout\) ) ) # ( !\ROM_instrucao|memROM~17_combout\ & ( (\MemoriaRAM|ram~17_q\ & !\ROM_instrucao|memROM~20_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~17_q\,
	datac => \MemoriaRAM|ALT_INV_ram~273_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~561_combout\);

-- Location: FF_X19_Y5_N11
\MemoriaRAM|ram~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~345_q\);

-- Location: LABCELL_X17_Y3_N27
\MemoriaRAM|ram~89feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~89feeder_combout\ = ( \Processador|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	combout => \MemoriaRAM|ram~89feeder_combout\);

-- Location: FF_X17_Y3_N28
\MemoriaRAM|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~89feeder_combout\,
	ena => \MemoriaRAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~89_q\);

-- Location: FF_X19_Y3_N20
\MemoriaRAM|ram~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~473_q\);

-- Location: LABCELL_X16_Y6_N6
\MemoriaRAM|ram~217feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~217feeder_combout\ = ( \Processador|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	combout => \MemoriaRAM|ram~217feeder_combout\);

-- Location: FF_X16_Y6_N8
\MemoriaRAM|ram~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~217feeder_combout\,
	ena => \MemoriaRAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~217_q\);

-- Location: LABCELL_X19_Y3_N36
\MemoriaRAM|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~564_combout\ = ( \ROM_instrucao|memROM~20_combout\ & ( \ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|ram~473_q\ ) ) ) # ( !\ROM_instrucao|memROM~20_combout\ & ( \ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|ram~345_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~20_combout\ & ( !\ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|ram~217_q\ ) ) ) # ( !\ROM_instrucao|memROM~20_combout\ & ( !\ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|ram~89_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000001111111101010101010101010000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~345_q\,
	datab => \MemoriaRAM|ALT_INV_ram~89_q\,
	datac => \MemoriaRAM|ALT_INV_ram~473_q\,
	datad => \MemoriaRAM|ALT_INV_ram~217_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~564_combout\);

-- Location: FF_X18_Y3_N26
\MemoriaRAM|ram~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~465_q\);

-- Location: FF_X19_Y6_N58
\MemoriaRAM|ram~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~337_q\);

-- Location: LABCELL_X17_Y3_N18
\MemoriaRAM|ram~81feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~81feeder_combout\ = ( \Processador|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	combout => \MemoriaRAM|ram~81feeder_combout\);

-- Location: FF_X17_Y3_N19
\MemoriaRAM|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~81feeder_combout\,
	ena => \MemoriaRAM|ram~690_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~81_q\);

-- Location: FF_X18_Y3_N5
\MemoriaRAM|ram~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~209_q\);

-- Location: MLABCELL_X18_Y3_N27
\MemoriaRAM|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~563_combout\ = ( \ROM_instrucao|memROM~20_combout\ & ( \ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|ram~465_q\ ) ) ) # ( !\ROM_instrucao|memROM~20_combout\ & ( \ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|ram~337_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~20_combout\ & ( !\ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|ram~209_q\ ) ) ) # ( !\ROM_instrucao|memROM~20_combout\ & ( !\ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|ram~81_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~465_q\,
	datab => \MemoriaRAM|ALT_INV_ram~337_q\,
	datac => \MemoriaRAM|ALT_INV_ram~81_q\,
	datad => \MemoriaRAM|ALT_INV_ram~209_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~563_combout\);

-- Location: LABCELL_X19_Y5_N48
\MemoriaRAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~565_combout\ = ( \MemoriaRAM|ram~564_combout\ & ( \MemoriaRAM|ram~563_combout\ & ( ((!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~561_combout\))) # (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~562_combout\))) # 
-- (\ROM_instrucao|memROM~19_combout\) ) ) ) # ( !\MemoriaRAM|ram~564_combout\ & ( \MemoriaRAM|ram~563_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & ((!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~561_combout\))) # 
-- (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~562_combout\)))) # (\ROM_instrucao|memROM~19_combout\ & (((!\ROM_instrucao|memROM~13_combout\)))) ) ) ) # ( \MemoriaRAM|ram~564_combout\ & ( !\MemoriaRAM|ram~563_combout\ & ( 
-- (!\ROM_instrucao|memROM~19_combout\ & ((!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~561_combout\))) # (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~562_combout\)))) # (\ROM_instrucao|memROM~19_combout\ & 
-- (((\ROM_instrucao|memROM~13_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~564_combout\ & ( !\MemoriaRAM|ram~563_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & ((!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~561_combout\))) # 
-- (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~562_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000001111010011101010010111100100101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~562_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~561_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~564_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~563_combout\,
	combout => \MemoriaRAM|ram~565_combout\);

-- Location: MLABCELL_X18_Y2_N39
\MemoriaRAM|ram~41feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~41feeder_combout\ = ( \Processador|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	combout => \MemoriaRAM|ram~41feeder_combout\);

-- Location: FF_X18_Y2_N40
\MemoriaRAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~41feeder_combout\,
	ena => \MemoriaRAM|ram~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~41_q\);

-- Location: FF_X19_Y8_N59
\MemoriaRAM|ram~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~297_q\);

-- Location: LABCELL_X19_Y8_N57
\MemoriaRAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~567_combout\ = ( \ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & \MemoriaRAM|ram~297_q\) ) ) # ( !\ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & \MemoriaRAM|ram~41_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~41_q\,
	datad => \MemoriaRAM|ALT_INV_ram~297_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~567_combout\);

-- Location: LABCELL_X20_Y8_N9
\MemoriaRAM|ram~97feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~97feeder_combout\ = ( \Processador|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	combout => \MemoriaRAM|ram~97feeder_combout\);

-- Location: FF_X20_Y8_N10
\MemoriaRAM|ram~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~97feeder_combout\,
	ena => \MemoriaRAM|ram~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~97_q\);

-- Location: FF_X20_Y3_N49
\MemoriaRAM|ram~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~481_q\);

-- Location: FF_X20_Y3_N22
\MemoriaRAM|ram~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~353_q\);

-- Location: LABCELL_X21_Y3_N36
\MemoriaRAM|ram~225feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~225feeder_combout\ = ( \Processador|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	combout => \MemoriaRAM|ram~225feeder_combout\);

-- Location: FF_X21_Y3_N37
\MemoriaRAM|ram~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~225feeder_combout\,
	ena => \MemoriaRAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~225_q\);

-- Location: LABCELL_X21_Y5_N21
\MemoriaRAM|ram~568\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~568_combout\ = ( \ROM_instrucao|memROM~17_combout\ & ( \ROM_instrucao|memROM~20_combout\ & ( \MemoriaRAM|ram~481_q\ ) ) ) # ( !\ROM_instrucao|memROM~17_combout\ & ( \ROM_instrucao|memROM~20_combout\ & ( \MemoriaRAM|ram~225_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~17_combout\ & ( !\ROM_instrucao|memROM~20_combout\ & ( \MemoriaRAM|ram~353_q\ ) ) ) # ( !\ROM_instrucao|memROM~17_combout\ & ( !\ROM_instrucao|memROM~20_combout\ & ( \MemoriaRAM|ram~97_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~97_q\,
	datab => \MemoriaRAM|ALT_INV_ram~481_q\,
	datac => \MemoriaRAM|ALT_INV_ram~353_q\,
	datad => \MemoriaRAM|ALT_INV_ram~225_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \MemoriaRAM|ram~568_combout\);

-- Location: LABCELL_X21_Y3_N18
\MemoriaRAM|ram~33feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~33feeder_combout\ = ( \Processador|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	combout => \MemoriaRAM|ram~33feeder_combout\);

-- Location: FF_X21_Y3_N19
\MemoriaRAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~33feeder_combout\,
	ena => \MemoriaRAM|ram~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~33_q\);

-- Location: FF_X21_Y5_N17
\MemoriaRAM|ram~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~684_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~289_q\);

-- Location: LABCELL_X21_Y5_N15
\MemoriaRAM|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~566_combout\ = ( \MemoriaRAM|ram~289_q\ & ( \ROM_instrucao|memROM~17_combout\ & ( !\ROM_instrucao|memROM~20_combout\ ) ) ) # ( \MemoriaRAM|ram~289_q\ & ( !\ROM_instrucao|memROM~17_combout\ & ( (\MemoriaRAM|ram~33_q\ & 
-- !\ROM_instrucao|memROM~20_combout\) ) ) ) # ( !\MemoriaRAM|ram~289_q\ & ( !\ROM_instrucao|memROM~17_combout\ & ( (\MemoriaRAM|ram~33_q\ & !\ROM_instrucao|memROM~20_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~33_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~289_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~566_combout\);

-- Location: LABCELL_X16_Y6_N45
\MemoriaRAM|ram~233feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~233feeder_combout\ = ( \Processador|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	combout => \MemoriaRAM|ram~233feeder_combout\);

-- Location: FF_X16_Y6_N47
\MemoriaRAM|ram~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~233feeder_combout\,
	ena => \MemoriaRAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~233_q\);

-- Location: FF_X18_Y6_N34
\MemoriaRAM|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~105_q\);

-- Location: FF_X19_Y8_N35
\MemoriaRAM|ram~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~361_q\);

-- Location: FF_X19_Y8_N53
\MemoriaRAM|ram~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~489_q\);

-- Location: LABCELL_X19_Y8_N51
\MemoriaRAM|ram~569\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~569_combout\ = ( \MemoriaRAM|ram~489_q\ & ( \ROM_instrucao|memROM~17_combout\ & ( (\ROM_instrucao|memROM~20_combout\) # (\MemoriaRAM|ram~361_q\) ) ) ) # ( !\MemoriaRAM|ram~489_q\ & ( \ROM_instrucao|memROM~17_combout\ & ( 
-- (\MemoriaRAM|ram~361_q\ & !\ROM_instrucao|memROM~20_combout\) ) ) ) # ( \MemoriaRAM|ram~489_q\ & ( !\ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~105_q\))) # (\ROM_instrucao|memROM~20_combout\ & 
-- (\MemoriaRAM|ram~233_q\)) ) ) ) # ( !\MemoriaRAM|ram~489_q\ & ( !\ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~105_q\))) # (\ROM_instrucao|memROM~20_combout\ & (\MemoriaRAM|ram~233_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~233_q\,
	datab => \MemoriaRAM|ALT_INV_ram~105_q\,
	datac => \MemoriaRAM|ALT_INV_ram~361_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~489_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~569_combout\);

-- Location: LABCELL_X20_Y5_N51
\MemoriaRAM|ram~570\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~570_combout\ = ( \MemoriaRAM|ram~566_combout\ & ( \MemoriaRAM|ram~569_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & ((!\ROM_instrucao|memROM~13_combout\) # ((\MemoriaRAM|ram~567_combout\)))) # (\ROM_instrucao|memROM~19_combout\ & 
-- (((\MemoriaRAM|ram~568_combout\)) # (\ROM_instrucao|memROM~13_combout\))) ) ) ) # ( !\MemoriaRAM|ram~566_combout\ & ( \MemoriaRAM|ram~569_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & (\ROM_instrucao|memROM~13_combout\ & 
-- (\MemoriaRAM|ram~567_combout\))) # (\ROM_instrucao|memROM~19_combout\ & (((\MemoriaRAM|ram~568_combout\)) # (\ROM_instrucao|memROM~13_combout\))) ) ) ) # ( \MemoriaRAM|ram~566_combout\ & ( !\MemoriaRAM|ram~569_combout\ & ( 
-- (!\ROM_instrucao|memROM~19_combout\ & ((!\ROM_instrucao|memROM~13_combout\) # ((\MemoriaRAM|ram~567_combout\)))) # (\ROM_instrucao|memROM~19_combout\ & (!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~568_combout\)))) ) ) ) # ( 
-- !\MemoriaRAM|ram~566_combout\ & ( !\MemoriaRAM|ram~569_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~567_combout\))) # (\ROM_instrucao|memROM~19_combout\ & (!\ROM_instrucao|memROM~13_combout\ & 
-- ((\MemoriaRAM|ram~568_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~567_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~568_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~566_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~569_combout\,
	combout => \MemoriaRAM|ram~570_combout\);

-- Location: FF_X18_Y5_N43
\MemoriaRAM|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~73_q\);

-- Location: FF_X19_Y5_N23
\MemoriaRAM|ram~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~329_q\);

-- Location: LABCELL_X19_Y5_N21
\MemoriaRAM|ram~577\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~577_combout\ = ( \ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & \MemoriaRAM|ram~329_q\) ) ) # ( !\ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & \MemoriaRAM|ram~73_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~73_q\,
	datad => \MemoriaRAM|ALT_INV_ram~329_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~577_combout\);

-- Location: FF_X23_Y5_N29
\MemoriaRAM|ram~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~688_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~321_q\);

-- Location: LABCELL_X20_Y8_N24
\MemoriaRAM|ram~65feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~65feeder_combout\ = ( \Processador|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	combout => \MemoriaRAM|ram~65feeder_combout\);

-- Location: FF_X20_Y8_N25
\MemoriaRAM|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~65feeder_combout\,
	ena => \MemoriaRAM|ram~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~65_q\);

-- Location: MLABCELL_X23_Y5_N24
\MemoriaRAM|ram~576\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~576_combout\ = ( !\ROM_instrucao|memROM~20_combout\ & ( \ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|ram~321_q\ ) ) ) # ( !\ROM_instrucao|memROM~20_combout\ & ( !\ROM_instrucao|memROM~17_combout\ & ( \MemoriaRAM|ram~65_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000001010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~321_q\,
	datac => \MemoriaRAM|ALT_INV_ram~65_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~576_combout\);

-- Location: FF_X19_Y4_N5
\MemoriaRAM|ram~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~393_q\);

-- Location: FF_X17_Y7_N52
\MemoriaRAM|ram~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~265_q\);

-- Location: FF_X20_Y6_N11
\MemoriaRAM|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~137_q\);

-- Location: FF_X18_Y4_N50
\MemoriaRAM|ram~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~521_q\);

-- Location: MLABCELL_X18_Y4_N51
\MemoriaRAM|ram~579\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~579_combout\ = ( \ROM_instrucao|memROM~17_combout\ & ( \ROM_instrucao|memROM~20_combout\ & ( \MemoriaRAM|ram~521_q\ ) ) ) # ( !\ROM_instrucao|memROM~17_combout\ & ( \ROM_instrucao|memROM~20_combout\ & ( \MemoriaRAM|ram~265_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~17_combout\ & ( !\ROM_instrucao|memROM~20_combout\ & ( \MemoriaRAM|ram~393_q\ ) ) ) # ( !\ROM_instrucao|memROM~17_combout\ & ( !\ROM_instrucao|memROM~20_combout\ & ( \MemoriaRAM|ram~137_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~393_q\,
	datab => \MemoriaRAM|ALT_INV_ram~265_q\,
	datac => \MemoriaRAM|ALT_INV_ram~137_q\,
	datad => \MemoriaRAM|ALT_INV_ram~521_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \MemoriaRAM|ram~579_combout\);

-- Location: FF_X17_Y6_N16
\MemoriaRAM|ram~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~257_q\);

-- Location: FF_X19_Y4_N40
\MemoriaRAM|ram~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~385_q\);

-- Location: LABCELL_X20_Y2_N24
\MemoriaRAM|ram~129feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~129feeder_combout\ = ( \Processador|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	combout => \MemoriaRAM|ram~129feeder_combout\);

-- Location: FF_X20_Y2_N25
\MemoriaRAM|ram~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~129feeder_combout\,
	ena => \MemoriaRAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~129_q\);

-- Location: FF_X18_Y4_N23
\MemoriaRAM|ram~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~513_q\);

-- Location: MLABCELL_X18_Y4_N21
\MemoriaRAM|ram~578\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~578_combout\ = ( \MemoriaRAM|ram~513_q\ & ( \ROM_instrucao|memROM~17_combout\ & ( (\ROM_instrucao|memROM~20_combout\) # (\MemoriaRAM|ram~385_q\) ) ) ) # ( !\MemoriaRAM|ram~513_q\ & ( \ROM_instrucao|memROM~17_combout\ & ( 
-- (\MemoriaRAM|ram~385_q\ & !\ROM_instrucao|memROM~20_combout\) ) ) ) # ( \MemoriaRAM|ram~513_q\ & ( !\ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~129_q\))) # (\ROM_instrucao|memROM~20_combout\ & 
-- (\MemoriaRAM|ram~257_q\)) ) ) ) # ( !\MemoriaRAM|ram~513_q\ & ( !\ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~129_q\))) # (\ROM_instrucao|memROM~20_combout\ & (\MemoriaRAM|ram~257_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~257_q\,
	datab => \MemoriaRAM|ALT_INV_ram~385_q\,
	datac => \MemoriaRAM|ALT_INV_ram~129_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~513_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~578_combout\);

-- Location: LABCELL_X19_Y5_N54
\MemoriaRAM|ram~580\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~580_combout\ = ( \MemoriaRAM|ram~579_combout\ & ( \MemoriaRAM|ram~578_combout\ & ( ((!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~576_combout\))) # (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~577_combout\))) # 
-- (\ROM_instrucao|memROM~19_combout\) ) ) ) # ( !\MemoriaRAM|ram~579_combout\ & ( \MemoriaRAM|ram~578_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & ((!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~576_combout\))) # 
-- (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~577_combout\)))) # (\ROM_instrucao|memROM~19_combout\ & (!\ROM_instrucao|memROM~13_combout\)) ) ) ) # ( \MemoriaRAM|ram~579_combout\ & ( !\MemoriaRAM|ram~578_combout\ & ( 
-- (!\ROM_instrucao|memROM~19_combout\ & ((!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~576_combout\))) # (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~577_combout\)))) # (\ROM_instrucao|memROM~19_combout\ & 
-- (\ROM_instrucao|memROM~13_combout\)) ) ) ) # ( !\MemoriaRAM|ram~579_combout\ & ( !\MemoriaRAM|ram~578_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & ((!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~576_combout\))) # 
-- (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~577_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~577_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~576_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~579_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~578_combout\,
	combout => \MemoriaRAM|ram~580_combout\);

-- Location: FF_X18_Y7_N40
\MemoriaRAM|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~57_q\);

-- Location: FF_X20_Y5_N29
\MemoriaRAM|ram~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~313_q\);

-- Location: LABCELL_X20_Y5_N27
\MemoriaRAM|ram~572\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~572_combout\ = ( \MemoriaRAM|ram~313_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( (\ROM_instrucao|memROM~17_combout\) # (\MemoriaRAM|ram~57_q\) ) ) ) # ( !\MemoriaRAM|ram~313_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( 
-- (\MemoriaRAM|ram~57_q\ & !\ROM_instrucao|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101011111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~57_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~313_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \MemoriaRAM|ram~572_combout\);

-- Location: FF_X20_Y7_N53
\MemoriaRAM|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~49_q\);

-- Location: FF_X20_Y5_N56
\MemoriaRAM|ram~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~686_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~305_q\);

-- Location: LABCELL_X20_Y5_N54
\MemoriaRAM|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~571_combout\ = ( \MemoriaRAM|ram~305_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( (\ROM_instrucao|memROM~17_combout\) # (\MemoriaRAM|ram~49_q\) ) ) ) # ( !\MemoriaRAM|ram~305_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( 
-- (\MemoriaRAM|ram~49_q\ & !\ROM_instrucao|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~49_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~305_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \MemoriaRAM|ram~571_combout\);

-- Location: FF_X19_Y3_N26
\MemoriaRAM|ram~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~241_q\);

-- Location: FF_X16_Y4_N56
\MemoriaRAM|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~113_q\);

-- Location: LABCELL_X16_Y3_N57
\MemoriaRAM|ram~369feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~369feeder_combout\ = ( \Processador|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	combout => \MemoriaRAM|ram~369feeder_combout\);

-- Location: FF_X16_Y3_N58
\MemoriaRAM|ram~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~369feeder_combout\,
	ena => \MemoriaRAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~369_q\);

-- Location: FF_X19_Y3_N56
\MemoriaRAM|ram~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~497_q\);

-- Location: LABCELL_X19_Y3_N54
\MemoriaRAM|ram~573\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~573_combout\ = ( \MemoriaRAM|ram~497_q\ & ( \ROM_instrucao|memROM~17_combout\ & ( (\ROM_instrucao|memROM~20_combout\) # (\MemoriaRAM|ram~369_q\) ) ) ) # ( !\MemoriaRAM|ram~497_q\ & ( \ROM_instrucao|memROM~17_combout\ & ( 
-- (\MemoriaRAM|ram~369_q\ & !\ROM_instrucao|memROM~20_combout\) ) ) ) # ( \MemoriaRAM|ram~497_q\ & ( !\ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~113_q\))) # (\ROM_instrucao|memROM~20_combout\ & 
-- (\MemoriaRAM|ram~241_q\)) ) ) ) # ( !\MemoriaRAM|ram~497_q\ & ( !\ROM_instrucao|memROM~17_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~113_q\))) # (\ROM_instrucao|memROM~20_combout\ & (\MemoriaRAM|ram~241_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~241_q\,
	datab => \MemoriaRAM|ALT_INV_ram~113_q\,
	datac => \MemoriaRAM|ALT_INV_ram~369_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~497_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \MemoriaRAM|ram~573_combout\);

-- Location: FF_X17_Y7_N25
\MemoriaRAM|ram~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~249_q\);

-- Location: FF_X19_Y7_N47
\MemoriaRAM|ram~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~377_q\);

-- Location: LABCELL_X17_Y3_N30
\MemoriaRAM|ram~121feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~121feeder_combout\ = ( \Processador|REGA|DOUT\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	combout => \MemoriaRAM|ram~121feeder_combout\);

-- Location: FF_X17_Y3_N32
\MemoriaRAM|ram~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~121feeder_combout\,
	ena => \MemoriaRAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~121_q\);

-- Location: FF_X19_Y7_N35
\MemoriaRAM|ram~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~505_q\);

-- Location: LABCELL_X19_Y7_N33
\MemoriaRAM|ram~574\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~574_combout\ = ( \MemoriaRAM|ram~505_q\ & ( \ROM_instrucao|memROM~20_combout\ & ( (\ROM_instrucao|memROM~17_combout\) # (\MemoriaRAM|ram~249_q\) ) ) ) # ( !\MemoriaRAM|ram~505_q\ & ( \ROM_instrucao|memROM~20_combout\ & ( 
-- (\MemoriaRAM|ram~249_q\ & !\ROM_instrucao|memROM~17_combout\) ) ) ) # ( \MemoriaRAM|ram~505_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( (!\ROM_instrucao|memROM~17_combout\ & ((\MemoriaRAM|ram~121_q\))) # (\ROM_instrucao|memROM~17_combout\ & 
-- (\MemoriaRAM|ram~377_q\)) ) ) ) # ( !\MemoriaRAM|ram~505_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( (!\ROM_instrucao|memROM~17_combout\ & ((\MemoriaRAM|ram~121_q\))) # (\ROM_instrucao|memROM~17_combout\ & (\MemoriaRAM|ram~377_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~249_q\,
	datab => \MemoriaRAM|ALT_INV_ram~377_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~121_q\,
	datae => \MemoriaRAM|ALT_INV_ram~505_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \MemoriaRAM|ram~574_combout\);

-- Location: LABCELL_X20_Y5_N39
\MemoriaRAM|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~575_combout\ = ( \MemoriaRAM|ram~573_combout\ & ( \MemoriaRAM|ram~574_combout\ & ( ((!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~571_combout\))) # (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~572_combout\))) # 
-- (\ROM_instrucao|memROM~19_combout\) ) ) ) # ( !\MemoriaRAM|ram~573_combout\ & ( \MemoriaRAM|ram~574_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & ((!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~571_combout\))) # 
-- (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~572_combout\)))) # (\ROM_instrucao|memROM~19_combout\ & (((\ROM_instrucao|memROM~13_combout\)))) ) ) ) # ( \MemoriaRAM|ram~573_combout\ & ( !\MemoriaRAM|ram~574_combout\ & ( 
-- (!\ROM_instrucao|memROM~19_combout\ & ((!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~571_combout\))) # (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~572_combout\)))) # (\ROM_instrucao|memROM~19_combout\ & 
-- (((!\ROM_instrucao|memROM~13_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~573_combout\ & ( !\MemoriaRAM|ram~574_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & ((!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~571_combout\))) # 
-- (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~572_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010010100101111001000000111101001110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~572_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~571_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~573_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~574_combout\,
	combout => \MemoriaRAM|ram~575_combout\);

-- Location: LABCELL_X19_Y5_N30
\MemoriaRAM|ram~581\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~581_combout\ = ( \MemoriaRAM|ram~580_combout\ & ( \MemoriaRAM|ram~575_combout\ & ( ((!\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~565_combout\)) # (\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~570_combout\)))) # 
-- (\ROM_instrucao|memROM~11_combout\) ) ) ) # ( !\MemoriaRAM|ram~580_combout\ & ( \MemoriaRAM|ram~575_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & ((!\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~565_combout\)) # 
-- (\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~570_combout\))))) # (\ROM_instrucao|memROM~11_combout\ & (((!\ROM_instrucao|memROM~18_combout\)))) ) ) ) # ( \MemoriaRAM|ram~580_combout\ & ( !\MemoriaRAM|ram~575_combout\ & ( 
-- (!\ROM_instrucao|memROM~11_combout\ & ((!\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~565_combout\)) # (\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~570_combout\))))) # (\ROM_instrucao|memROM~11_combout\ & 
-- (((\ROM_instrucao|memROM~18_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~580_combout\ & ( !\MemoriaRAM|ram~575_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & ((!\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~565_combout\)) # 
-- (\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~570_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000011111101110111000011000111011100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~565_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~570_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~580_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~575_combout\,
	combout => \MemoriaRAM|ram~581_combout\);

-- Location: LABCELL_X19_Y5_N18
\Processador|MUX1|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[2]~1_combout\ = ( \MemoriaRAM|ram~581_combout\ & ( (\AndSW0_7|saida~3_combout\) # (\SW[2]~input_o\) ) ) # ( !\MemoriaRAM|ram~581_combout\ & ( (\SW[2]~input_o\ & !\AndSW0_7|saida~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[2]~input_o\,
	datad => \AndSW0_7|ALT_INV_saida~3_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~581_combout\,
	combout => \Processador|MUX1|saida_MUX[2]~1_combout\);

-- Location: LABCELL_X21_Y6_N9
\Processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~13_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & ((\Processador|MUX1|saida_MUX[3]~2_combout\))) # (\Processador|decoder|Equal10~0_combout\ & (\ROM_instrucao|memROM~19_combout\)) ) + ( \Processador|REGA|DOUT\(3) ) + ( 
-- \Processador|ULA1|Add0~10\ ))
-- \Processador|ULA1|Add0~14\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & ((\Processador|MUX1|saida_MUX[3]~2_combout\))) # (\Processador|decoder|Equal10~0_combout\ & (\ROM_instrucao|memROM~19_combout\)) ) + ( \Processador|REGA|DOUT\(3) ) + ( 
-- \Processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[3]~2_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(3),
	cin => \Processador|ULA1|Add0~10\,
	sumout => \Processador|ULA1|Add0~13_sumout\,
	cout => \Processador|ULA1|Add0~14\);

-- Location: LABCELL_X21_Y6_N36
\Processador|REGA|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|REGA|DOUT[3]~feeder_combout\ = \Processador|ULA1|Add0~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|ULA1|ALT_INV_Add0~13_sumout\,
	combout => \Processador|REGA|DOUT[3]~feeder_combout\);

-- Location: LABCELL_X20_Y6_N36
\Processador|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~13_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & ((!\Processador|MUX1|saida_MUX[3]~2_combout\))) # (\Processador|decoder|Equal10~0_combout\ & (!\ROM_instrucao|memROM~19_combout\)) ) + ( \Processador|REGA|DOUT\(3) ) + ( 
-- \Processador|ULA1|Add1~10\ ))
-- \Processador|ULA1|Add1~14\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & ((!\Processador|MUX1|saida_MUX[3]~2_combout\))) # (\Processador|decoder|Equal10~0_combout\ & (!\ROM_instrucao|memROM~19_combout\)) ) + ( \Processador|REGA|DOUT\(3) ) + ( 
-- \Processador|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[3]~2_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(3),
	cin => \Processador|ULA1|Add1~10\,
	sumout => \Processador|ULA1|Add1~13_sumout\,
	cout => \Processador|ULA1|Add1~14\);

-- Location: LABCELL_X21_Y6_N39
\Processador|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[3]~3_combout\ = ( \Processador|ULA1|Add1~13_sumout\ & ( ((\Processador|MUX1|saida_MUX[3]~2_combout\ & !\Processador|decoder|Equal10~0_combout\)) # (\Processador|decoder|saida~2_combout\) ) ) # ( !\Processador|ULA1|Add1~13_sumout\ & 
-- ( (\Processador|MUX1|saida_MUX[3]~2_combout\ & (!\Processador|decoder|saida~2_combout\ & !\Processador|decoder|Equal10~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000001011111000011110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|MUX1|ALT_INV_saida_MUX[3]~2_combout\,
	datac => \Processador|decoder|ALT_INV_saida~2_combout\,
	datad => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \Processador|ULA1|saida[3]~3_combout\);

-- Location: FF_X21_Y6_N38
\Processador|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|REGA|DOUT[3]~feeder_combout\,
	asdata => \Processador|ULA1|saida[3]~3_combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	ena => \Processador|decoder|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(3));

-- Location: FF_X18_Y4_N56
\MemoriaRAM|ram~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~482_q\);

-- Location: FF_X19_Y8_N4
\MemoriaRAM|ram~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~490_q\);

-- Location: FF_X18_Y4_N19
\MemoriaRAM|ram~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~514_q\);

-- Location: FF_X18_Y4_N8
\MemoriaRAM|ram~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~522_q\);

-- Location: MLABCELL_X18_Y4_N6
\MemoriaRAM|ram~596\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~596_combout\ = ( \MemoriaRAM|ram~522_q\ & ( \ROM_instrucao|memROM~13_combout\ & ( (\ROM_instrucao|memROM~11_combout\) # (\MemoriaRAM|ram~490_q\) ) ) ) # ( !\MemoriaRAM|ram~522_q\ & ( \ROM_instrucao|memROM~13_combout\ & ( 
-- (\MemoriaRAM|ram~490_q\ & !\ROM_instrucao|memROM~11_combout\) ) ) ) # ( \MemoriaRAM|ram~522_q\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~482_q\)) # (\ROM_instrucao|memROM~11_combout\ & 
-- ((\MemoriaRAM|ram~514_q\))) ) ) ) # ( !\MemoriaRAM|ram~522_q\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~482_q\)) # (\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~514_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~482_q\,
	datab => \MemoriaRAM|ALT_INV_ram~490_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~514_q\,
	datae => \MemoriaRAM|ALT_INV_ram~522_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~596_combout\);

-- Location: FF_X20_Y3_N44
\MemoriaRAM|ram~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~466_q\);

-- Location: FF_X19_Y3_N46
\MemoriaRAM|ram~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~498_q\);

-- Location: FF_X19_Y3_N13
\MemoriaRAM|ram~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~474_q\);

-- Location: FF_X19_Y7_N38
\MemoriaRAM|ram~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~506_q\);

-- Location: LABCELL_X19_Y7_N36
\MemoriaRAM|ram~595\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~595_combout\ = ( \MemoriaRAM|ram~506_q\ & ( \ROM_instrucao|memROM~13_combout\ & ( (\ROM_instrucao|memROM~11_combout\) # (\MemoriaRAM|ram~474_q\) ) ) ) # ( !\MemoriaRAM|ram~506_q\ & ( \ROM_instrucao|memROM~13_combout\ & ( 
-- (\MemoriaRAM|ram~474_q\ & !\ROM_instrucao|memROM~11_combout\) ) ) ) # ( \MemoriaRAM|ram~506_q\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~466_q\)) # (\ROM_instrucao|memROM~11_combout\ & 
-- ((\MemoriaRAM|ram~498_q\))) ) ) ) # ( !\MemoriaRAM|ram~506_q\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~466_q\)) # (\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~498_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~466_q\,
	datab => \MemoriaRAM|ALT_INV_ram~498_q\,
	datac => \MemoriaRAM|ALT_INV_ram~474_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~506_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~595_combout\);

-- Location: MLABCELL_X18_Y6_N3
\MemoriaRAM|ram~597\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~597_combout\ = ( \MemoriaRAM|ram~596_combout\ & ( \MemoriaRAM|ram~595_combout\ & ( \ROM_instrucao|memROM~19_combout\ ) ) ) # ( !\MemoriaRAM|ram~596_combout\ & ( \MemoriaRAM|ram~595_combout\ & ( (\ROM_instrucao|memROM~19_combout\ & 
-- !\ROM_instrucao|memROM~18_combout\) ) ) ) # ( \MemoriaRAM|ram~596_combout\ & ( !\MemoriaRAM|ram~595_combout\ & ( (\ROM_instrucao|memROM~19_combout\ & \ROM_instrucao|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100001111000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~596_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~595_combout\,
	combout => \MemoriaRAM|ram~597_combout\);

-- Location: LABCELL_X20_Y8_N54
\MemoriaRAM|ram~98feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~98feeder_combout\ = ( \Processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(3),
	combout => \MemoriaRAM|ram~98feeder_combout\);

-- Location: FF_X20_Y8_N55
\MemoriaRAM|ram~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~98feeder_combout\,
	ena => \MemoriaRAM|ram~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~98_q\);

-- Location: FF_X21_Y4_N29
\MemoriaRAM|ram~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~130_q\);

-- Location: FF_X18_Y6_N29
\MemoriaRAM|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~106_q\);

-- Location: FF_X18_Y6_N14
\MemoriaRAM|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~138_q\);

-- Location: MLABCELL_X18_Y6_N12
\MemoriaRAM|ram~585\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~585_combout\ = ( \MemoriaRAM|ram~138_q\ & ( \ROM_instrucao|memROM~13_combout\ & ( (\ROM_instrucao|memROM~11_combout\) # (\MemoriaRAM|ram~106_q\) ) ) ) # ( !\MemoriaRAM|ram~138_q\ & ( \ROM_instrucao|memROM~13_combout\ & ( 
-- (\MemoriaRAM|ram~106_q\ & !\ROM_instrucao|memROM~11_combout\) ) ) ) # ( \MemoriaRAM|ram~138_q\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~98_q\)) # (\ROM_instrucao|memROM~11_combout\ & 
-- ((\MemoriaRAM|ram~130_q\))) ) ) ) # ( !\MemoriaRAM|ram~138_q\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~98_q\)) # (\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~130_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~98_q\,
	datab => \MemoriaRAM|ALT_INV_ram~130_q\,
	datac => \MemoriaRAM|ALT_INV_ram~106_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~138_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~585_combout\);

-- Location: FF_X18_Y7_N53
\MemoriaRAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~26_q\);

-- Location: FF_X18_Y7_N37
\MemoriaRAM|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~58_q\);

-- Location: FF_X18_Y7_N25
\MemoriaRAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~18_q\);

-- Location: FF_X20_Y7_N19
\MemoriaRAM|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~50_q\);

-- Location: MLABCELL_X18_Y7_N33
\MemoriaRAM|ram~582\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~582_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~58_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~26_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~50_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~26_q\,
	datab => \MemoriaRAM|ALT_INV_ram~58_q\,
	datac => \MemoriaRAM|ALT_INV_ram~18_q\,
	datad => \MemoriaRAM|ALT_INV_ram~50_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~582_combout\);

-- Location: LABCELL_X17_Y3_N48
\MemoriaRAM|ram~122feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~122feeder_combout\ = ( \Processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(3),
	combout => \MemoriaRAM|ram~122feeder_combout\);

-- Location: FF_X17_Y3_N50
\MemoriaRAM|ram~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~122feeder_combout\,
	ena => \MemoriaRAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~122_q\);

-- Location: FF_X16_Y4_N58
\MemoriaRAM|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~114_q\);

-- Location: LABCELL_X17_Y3_N24
\MemoriaRAM|ram~90feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~90feeder_combout\ = ( \Processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(3),
	combout => \MemoriaRAM|ram~90feeder_combout\);

-- Location: FF_X17_Y3_N26
\MemoriaRAM|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~90feeder_combout\,
	ena => \MemoriaRAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~90_q\);

-- Location: FF_X17_Y3_N8
\MemoriaRAM|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~690_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~82_q\);

-- Location: LABCELL_X17_Y3_N9
\MemoriaRAM|ram~583\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~583_combout\ = ( \MemoriaRAM|ram~82_q\ & ( \ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~114_q\))) # (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~122_q\)) ) ) ) # ( 
-- !\MemoriaRAM|ram~82_q\ & ( \ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~114_q\))) # (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~122_q\)) ) ) ) # ( \MemoriaRAM|ram~82_q\ & ( 
-- !\ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~13_combout\) # (\MemoriaRAM|ram~90_q\) ) ) ) # ( !\MemoriaRAM|ram~82_q\ & ( !\ROM_instrucao|memROM~11_combout\ & ( (\ROM_instrucao|memROM~13_combout\ & \MemoriaRAM|ram~90_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111100001111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~122_q\,
	datab => \MemoriaRAM|ALT_INV_ram~114_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~90_q\,
	datae => \MemoriaRAM|ALT_INV_ram~82_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~583_combout\);

-- Location: FF_X24_Y4_N10
\MemoriaRAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~42_q\);

-- Location: FF_X14_Y6_N17
\MemoriaRAM|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~74_q\);

-- Location: FF_X14_Y6_N50
\MemoriaRAM|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~66_q\);

-- Location: FF_X14_Y6_N47
\MemoriaRAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~34_q\);

-- Location: LABCELL_X14_Y6_N12
\MemoriaRAM|ram~584\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~584_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~74_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~42_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~66_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~42_q\,
	datab => \MemoriaRAM|ALT_INV_ram~74_q\,
	datac => \MemoriaRAM|ALT_INV_ram~66_q\,
	datad => \MemoriaRAM|ALT_INV_ram~34_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~584_combout\);

-- Location: MLABCELL_X18_Y6_N30
\MemoriaRAM|ram~586\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~586_combout\ = ( \MemoriaRAM|ram~583_combout\ & ( \MemoriaRAM|ram~584_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (((\ROM_instrucao|memROM~19_combout\) # (\MemoriaRAM|ram~582_combout\)))) # (\ROM_instrucao|memROM~18_combout\ & 
-- (((!\ROM_instrucao|memROM~19_combout\)) # (\MemoriaRAM|ram~585_combout\))) ) ) ) # ( !\MemoriaRAM|ram~583_combout\ & ( \MemoriaRAM|ram~584_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (((\MemoriaRAM|ram~582_combout\ & 
-- !\ROM_instrucao|memROM~19_combout\)))) # (\ROM_instrucao|memROM~18_combout\ & (((!\ROM_instrucao|memROM~19_combout\)) # (\MemoriaRAM|ram~585_combout\))) ) ) ) # ( \MemoriaRAM|ram~583_combout\ & ( !\MemoriaRAM|ram~584_combout\ & ( 
-- (!\ROM_instrucao|memROM~18_combout\ & (((\ROM_instrucao|memROM~19_combout\) # (\MemoriaRAM|ram~582_combout\)))) # (\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~585_combout\ & ((\ROM_instrucao|memROM~19_combout\)))) ) ) ) # ( 
-- !\MemoriaRAM|ram~583_combout\ & ( !\MemoriaRAM|ram~584_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (((\MemoriaRAM|ram~582_combout\ & !\ROM_instrucao|memROM~19_combout\)))) # (\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~585_combout\ & 
-- ((\ROM_instrucao|memROM~19_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000010001000010101011101101011111000100010101111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~585_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~582_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~583_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~584_combout\,
	combout => \MemoriaRAM|ram~586_combout\);

-- Location: FF_X18_Y3_N52
\MemoriaRAM|ram~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~210_q\);

-- Location: FF_X16_Y6_N44
\MemoriaRAM|ram~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~234_q\);

-- Location: FF_X16_Y6_N14
\MemoriaRAM|ram~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~226_q\);

-- Location: FF_X16_Y6_N38
\MemoriaRAM|ram~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~218_q\);

-- Location: LABCELL_X16_Y6_N39
\MemoriaRAM|ram~592\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~592_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~234_q\ ) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~218_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~226_q\ ) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~210_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000011110000111100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~210_q\,
	datab => \MemoriaRAM|ALT_INV_ram~234_q\,
	datac => \MemoriaRAM|ALT_INV_ram~226_q\,
	datad => \MemoriaRAM|ALT_INV_ram~218_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~592_combout\);

-- Location: FF_X18_Y8_N20
\MemoriaRAM|ram~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~266_q\);

-- Location: FF_X18_Y8_N25
\MemoriaRAM|ram~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~250_q\);

-- Location: FF_X17_Y6_N52
\MemoriaRAM|ram~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~242_q\);

-- Location: FF_X17_Y6_N11
\MemoriaRAM|ram~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~258_q\);

-- Location: MLABCELL_X18_Y8_N9
\MemoriaRAM|ram~593\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~593_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~266_q\ ) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~250_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~258_q\ ) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~242_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~266_q\,
	datab => \MemoriaRAM|ALT_INV_ram~250_q\,
	datac => \MemoriaRAM|ALT_INV_ram~242_q\,
	datad => \MemoriaRAM|ALT_INV_ram~258_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~593_combout\);

-- Location: MLABCELL_X18_Y6_N57
\MemoriaRAM|ram~594\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~594_combout\ = ( \MemoriaRAM|ram~592_combout\ & ( \MemoriaRAM|ram~593_combout\ & ( \ROM_instrucao|memROM~19_combout\ ) ) ) # ( !\MemoriaRAM|ram~592_combout\ & ( \MemoriaRAM|ram~593_combout\ & ( (\ROM_instrucao|memROM~19_combout\ & 
-- \ROM_instrucao|memROM~11_combout\) ) ) ) # ( \MemoriaRAM|ram~592_combout\ & ( !\MemoriaRAM|ram~593_combout\ & ( (\ROM_instrucao|memROM~19_combout\ & !\ROM_instrucao|memROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000000000000000000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~592_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~593_combout\,
	combout => \MemoriaRAM|ram~594_combout\);

-- Location: FF_X23_Y5_N52
\MemoriaRAM|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~330_q\);

-- Location: FF_X23_Y5_N17
\MemoriaRAM|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~688_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~322_q\);

-- Location: FF_X19_Y4_N22
\MemoriaRAM|ram~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~386_q\);

-- Location: FF_X18_Y6_N38
\MemoriaRAM|ram~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~394_q\);

-- Location: MLABCELL_X18_Y6_N36
\MemoriaRAM|ram~590\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~590_combout\ = ( \MemoriaRAM|ram~394_q\ & ( \ROM_instrucao|memROM~13_combout\ & ( (\ROM_instrucao|memROM~19_combout\) # (\MemoriaRAM|ram~330_q\) ) ) ) # ( !\MemoriaRAM|ram~394_q\ & ( \ROM_instrucao|memROM~13_combout\ & ( 
-- (\MemoriaRAM|ram~330_q\ & !\ROM_instrucao|memROM~19_combout\) ) ) ) # ( \MemoriaRAM|ram~394_q\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~322_q\)) # (\ROM_instrucao|memROM~19_combout\ & 
-- ((\MemoriaRAM|ram~386_q\))) ) ) ) # ( !\MemoriaRAM|ram~394_q\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~322_q\)) # (\ROM_instrucao|memROM~19_combout\ & ((\MemoriaRAM|ram~386_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~330_q\,
	datab => \MemoriaRAM|ALT_INV_ram~322_q\,
	datac => \MemoriaRAM|ALT_INV_ram~386_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~394_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~590_combout\);

-- Location: FF_X19_Y6_N19
\MemoriaRAM|ram~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~338_q\);

-- Location: FF_X17_Y8_N32
\MemoriaRAM|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~682_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~274_q\);

-- Location: FF_X17_Y8_N37
\MemoriaRAM|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~282_q\);

-- Location: FF_X17_Y8_N56
\MemoriaRAM|ram~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~346_q\);

-- Location: LABCELL_X17_Y8_N39
\MemoriaRAM|ram~587\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~587_combout\ = ( \ROM_instrucao|memROM~13_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~346_q\ ) ) ) # ( !\ROM_instrucao|memROM~13_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~338_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~13_combout\ & ( !\ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~282_q\ ) ) ) # ( !\ROM_instrucao|memROM~13_combout\ & ( !\ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~274_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~338_q\,
	datab => \MemoriaRAM|ALT_INV_ram~274_q\,
	datac => \MemoriaRAM|ALT_INV_ram~282_q\,
	datad => \MemoriaRAM|ALT_INV_ram~346_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~587_combout\);

-- Location: FF_X20_Y5_N50
\MemoriaRAM|ram~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~370_q\);

-- Location: FF_X20_Y5_N32
\MemoriaRAM|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~686_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~306_q\);

-- Location: LABCELL_X19_Y7_N18
\MemoriaRAM|ram~378feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~378feeder_combout\ = ( \Processador|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(3),
	combout => \MemoriaRAM|ram~378feeder_combout\);

-- Location: FF_X19_Y7_N19
\MemoriaRAM|ram~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~378feeder_combout\,
	ena => \MemoriaRAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~378_q\);

-- Location: FF_X20_Y5_N20
\MemoriaRAM|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~314_q\);

-- Location: LABCELL_X20_Y5_N18
\MemoriaRAM|ram~588\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~588_combout\ = ( \MemoriaRAM|ram~314_q\ & ( \ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~19_combout\) # (\MemoriaRAM|ram~378_q\) ) ) ) # ( !\MemoriaRAM|ram~314_q\ & ( \ROM_instrucao|memROM~13_combout\ & ( 
-- (\ROM_instrucao|memROM~19_combout\ & \MemoriaRAM|ram~378_q\) ) ) ) # ( \MemoriaRAM|ram~314_q\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & ((\MemoriaRAM|ram~306_q\))) # (\ROM_instrucao|memROM~19_combout\ & 
-- (\MemoriaRAM|ram~370_q\)) ) ) ) # ( !\MemoriaRAM|ram~314_q\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & ((\MemoriaRAM|ram~306_q\))) # (\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~370_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~370_q\,
	datab => \MemoriaRAM|ALT_INV_ram~306_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~378_q\,
	datae => \MemoriaRAM|ALT_INV_ram~314_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~588_combout\);

-- Location: FF_X19_Y8_N38
\MemoriaRAM|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~298_q\);

-- Location: FF_X21_Y5_N13
\MemoriaRAM|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~684_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~290_q\);

-- Location: FF_X20_Y3_N19
\MemoriaRAM|ram~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~354_q\);

-- Location: FF_X19_Y8_N14
\MemoriaRAM|ram~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \MemoriaRAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~362_q\);

-- Location: LABCELL_X19_Y8_N12
\MemoriaRAM|ram~589\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~589_combout\ = ( \MemoriaRAM|ram~362_q\ & ( \ROM_instrucao|memROM~13_combout\ & ( (\ROM_instrucao|memROM~19_combout\) # (\MemoriaRAM|ram~298_q\) ) ) ) # ( !\MemoriaRAM|ram~362_q\ & ( \ROM_instrucao|memROM~13_combout\ & ( 
-- (\MemoriaRAM|ram~298_q\ & !\ROM_instrucao|memROM~19_combout\) ) ) ) # ( \MemoriaRAM|ram~362_q\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~290_q\)) # (\ROM_instrucao|memROM~19_combout\ & 
-- ((\MemoriaRAM|ram~354_q\))) ) ) ) # ( !\MemoriaRAM|ram~362_q\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~290_q\)) # (\ROM_instrucao|memROM~19_combout\ & ((\MemoriaRAM|ram~354_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~298_q\,
	datab => \MemoriaRAM|ALT_INV_ram~290_q\,
	datac => \MemoriaRAM|ALT_INV_ram~354_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~362_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~589_combout\);

-- Location: MLABCELL_X18_Y6_N9
\MemoriaRAM|ram~591\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~591_combout\ = ( \MemoriaRAM|ram~588_combout\ & ( \MemoriaRAM|ram~589_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (((\MemoriaRAM|ram~587_combout\) # (\ROM_instrucao|memROM~18_combout\)))) # (\ROM_instrucao|memROM~11_combout\ & 
-- (((!\ROM_instrucao|memROM~18_combout\)) # (\MemoriaRAM|ram~590_combout\))) ) ) ) # ( !\MemoriaRAM|ram~588_combout\ & ( \MemoriaRAM|ram~589_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (((\MemoriaRAM|ram~587_combout\) # 
-- (\ROM_instrucao|memROM~18_combout\)))) # (\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~590_combout\ & (\ROM_instrucao|memROM~18_combout\))) ) ) ) # ( \MemoriaRAM|ram~588_combout\ & ( !\MemoriaRAM|ram~589_combout\ & ( 
-- (!\ROM_instrucao|memROM~11_combout\ & (((!\ROM_instrucao|memROM~18_combout\ & \MemoriaRAM|ram~587_combout\)))) # (\ROM_instrucao|memROM~11_combout\ & (((!\ROM_instrucao|memROM~18_combout\)) # (\MemoriaRAM|ram~590_combout\))) ) ) ) # ( 
-- !\MemoriaRAM|ram~588_combout\ & ( !\MemoriaRAM|ram~589_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (((!\ROM_instrucao|memROM~18_combout\ & \MemoriaRAM|ram~587_combout\)))) # (\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~590_combout\ & 
-- (\ROM_instrucao|memROM~18_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111000001001100011111000100001101110011010011110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~590_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~587_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~588_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~589_combout\,
	combout => \MemoriaRAM|ram~591_combout\);

-- Location: MLABCELL_X18_Y6_N24
\MemoriaRAM|ram~598\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~598_combout\ = ( \MemoriaRAM|ram~594_combout\ & ( \MemoriaRAM|ram~591_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & (((\MemoriaRAM|ram~586_combout\)) # (\ROM_instrucao|memROM~17_combout\))) # (\ROM_instrucao|memROM~20_combout\ & 
-- ((!\ROM_instrucao|memROM~17_combout\) # ((\MemoriaRAM|ram~597_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~594_combout\ & ( \MemoriaRAM|ram~591_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & (((\MemoriaRAM|ram~586_combout\)) # 
-- (\ROM_instrucao|memROM~17_combout\))) # (\ROM_instrucao|memROM~20_combout\ & (\ROM_instrucao|memROM~17_combout\ & (\MemoriaRAM|ram~597_combout\))) ) ) ) # ( \MemoriaRAM|ram~594_combout\ & ( !\MemoriaRAM|ram~591_combout\ & ( 
-- (!\ROM_instrucao|memROM~20_combout\ & (!\ROM_instrucao|memROM~17_combout\ & ((\MemoriaRAM|ram~586_combout\)))) # (\ROM_instrucao|memROM~20_combout\ & ((!\ROM_instrucao|memROM~17_combout\) # ((\MemoriaRAM|ram~597_combout\)))) ) ) ) # ( 
-- !\MemoriaRAM|ram~594_combout\ & ( !\MemoriaRAM|ram~591_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & (!\ROM_instrucao|memROM~17_combout\ & ((\MemoriaRAM|ram~586_combout\)))) # (\ROM_instrucao|memROM~20_combout\ & (\ROM_instrucao|memROM~17_combout\ & 
-- (\MemoriaRAM|ram~597_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~597_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~586_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~594_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~591_combout\,
	combout => \MemoriaRAM|ram~598_combout\);

-- Location: LABCELL_X20_Y6_N3
\Processador|MUX1|saida_MUX[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[3]~2_combout\ = ( \MemoriaRAM|ram~598_combout\ & ( (\SW[3]~input_o\) # (\AndSW0_7|saida~3_combout\) ) ) # ( !\MemoriaRAM|ram~598_combout\ & ( (!\AndSW0_7|saida~3_combout\ & \SW[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndSW0_7|ALT_INV_saida~3_combout\,
	datad => \ALT_INV_SW[3]~input_o\,
	dataf => \MemoriaRAM|ALT_INV_ram~598_combout\,
	combout => \Processador|MUX1|saida_MUX[3]~2_combout\);

-- Location: LABCELL_X21_Y6_N12
\Processador|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~17_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & ((\Processador|MUX1|saida_MUX[4]~3_combout\))) # (\Processador|decoder|Equal10~0_combout\ & (\ROM_instrucao|memROM~20_combout\)) ) + ( \Processador|REGA|DOUT\(4) ) + ( 
-- \Processador|ULA1|Add0~14\ ))
-- \Processador|ULA1|Add0~18\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & ((\Processador|MUX1|saida_MUX[4]~3_combout\))) # (\Processador|decoder|Equal10~0_combout\ & (\ROM_instrucao|memROM~20_combout\)) ) + ( \Processador|REGA|DOUT\(4) ) + ( 
-- \Processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(4),
	cin => \Processador|ULA1|Add0~14\,
	sumout => \Processador|ULA1|Add0~17_sumout\,
	cout => \Processador|ULA1|Add0~18\);

-- Location: LABCELL_X21_Y6_N27
\Processador|REGA|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|REGA|DOUT[4]~feeder_combout\ = \Processador|ULA1|Add0~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|ULA1|ALT_INV_Add0~17_sumout\,
	combout => \Processador|REGA|DOUT[4]~feeder_combout\);

-- Location: LABCELL_X20_Y6_N39
\Processador|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~17_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & ((!\Processador|MUX1|saida_MUX[4]~3_combout\))) # (\Processador|decoder|Equal10~0_combout\ & (!\ROM_instrucao|memROM~20_combout\)) ) + ( \Processador|REGA|DOUT\(4) ) + ( 
-- \Processador|ULA1|Add1~14\ ))
-- \Processador|ULA1|Add1~18\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & ((!\Processador|MUX1|saida_MUX[4]~3_combout\))) # (\Processador|decoder|Equal10~0_combout\ & (!\ROM_instrucao|memROM~20_combout\)) ) + ( \Processador|REGA|DOUT\(4) ) + ( 
-- \Processador|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(4),
	cin => \Processador|ULA1|Add1~14\,
	sumout => \Processador|ULA1|Add1~17_sumout\,
	cout => \Processador|ULA1|Add1~18\);

-- Location: LABCELL_X20_Y6_N18
\Processador|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[4]~4_combout\ = ( \Processador|ULA1|Add1~17_sumout\ & ( ((!\Processador|decoder|Equal10~0_combout\ & \Processador|MUX1|saida_MUX[4]~3_combout\)) # (\Processador|decoder|saida~2_combout\) ) ) # ( !\Processador|ULA1|Add1~17_sumout\ & 
-- ( (!\Processador|decoder|Equal10~0_combout\ & (!\Processador|decoder|saida~2_combout\ & \Processador|MUX1|saida_MUX[4]~3_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000110011101110110011001110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datab => \Processador|decoder|ALT_INV_saida~2_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[4]~3_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \Processador|ULA1|saida[4]~4_combout\);

-- Location: FF_X21_Y6_N29
\Processador|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|REGA|DOUT[4]~feeder_combout\,
	asdata => \Processador|ULA1|saida[4]~4_combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	ena => \Processador|decoder|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(4));

-- Location: FF_X19_Y7_N50
\MemoriaRAM|ram~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~379_q\);

-- Location: FF_X20_Y5_N13
\MemoriaRAM|ram~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~315_q\);

-- Location: FF_X17_Y8_N4
\MemoriaRAM|ram~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~347_q\);

-- Location: FF_X17_Y4_N41
\MemoriaRAM|ram~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~283_q\);

-- Location: LABCELL_X19_Y7_N51
\MemoriaRAM|ram~613\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~613_combout\ = ( \MemoriaRAM|ram~283_q\ & ( \ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & ((\MemoriaRAM|ram~315_q\))) # (\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~379_q\)) ) ) ) # ( 
-- !\MemoriaRAM|ram~283_q\ & ( \ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & ((\MemoriaRAM|ram~315_q\))) # (\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~379_q\)) ) ) ) # ( \MemoriaRAM|ram~283_q\ & ( 
-- !\ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~19_combout\) # (\MemoriaRAM|ram~347_q\) ) ) ) # ( !\MemoriaRAM|ram~283_q\ & ( !\ROM_instrucao|memROM~11_combout\ & ( (\MemoriaRAM|ram~347_q\ & \ROM_instrucao|memROM~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111111111110000111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~379_q\,
	datab => \MemoriaRAM|ALT_INV_ram~315_q\,
	datac => \MemoriaRAM|ALT_INV_ram~347_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~283_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~613_combout\);

-- Location: FF_X19_Y7_N56
\MemoriaRAM|ram~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~507_q\);

-- Location: FF_X19_Y3_N16
\MemoriaRAM|ram~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~475_q\);

-- Location: LABCELL_X19_Y7_N57
\MemoriaRAM|ram~614\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~614_combout\ = ( \MemoriaRAM|ram~475_q\ & ( \ROM_instrucao|memROM~11_combout\ & ( (\MemoriaRAM|ram~507_q\ & \ROM_instrucao|memROM~19_combout\) ) ) ) # ( !\MemoriaRAM|ram~475_q\ & ( \ROM_instrucao|memROM~11_combout\ & ( 
-- (\MemoriaRAM|ram~507_q\ & \ROM_instrucao|memROM~19_combout\) ) ) ) # ( \MemoriaRAM|ram~475_q\ & ( !\ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~19_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~507_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~475_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~614_combout\);

-- Location: MLABCELL_X23_Y5_N45
\MemoriaRAM|ram~331feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~331feeder_combout\ = ( \Processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(4),
	combout => \MemoriaRAM|ram~331feeder_combout\);

-- Location: FF_X23_Y5_N47
\MemoriaRAM|ram~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~331feeder_combout\,
	ena => \MemoriaRAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~331_q\);

-- Location: FF_X19_Y8_N17
\MemoriaRAM|ram~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~363_q\);

-- Location: FF_X19_Y8_N41
\MemoriaRAM|ram~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~299_q\);

-- Location: FF_X19_Y4_N44
\MemoriaRAM|ram~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~395_q\);

-- Location: LABCELL_X19_Y4_N42
\MemoriaRAM|ram~615\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~615_combout\ = ( \MemoriaRAM|ram~395_q\ & ( \ROM_instrucao|memROM~19_combout\ & ( (\ROM_instrucao|memROM~11_combout\) # (\MemoriaRAM|ram~363_q\) ) ) ) # ( !\MemoriaRAM|ram~395_q\ & ( \ROM_instrucao|memROM~19_combout\ & ( 
-- (\MemoriaRAM|ram~363_q\ & !\ROM_instrucao|memROM~11_combout\) ) ) ) # ( \MemoriaRAM|ram~395_q\ & ( !\ROM_instrucao|memROM~19_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~299_q\))) # (\ROM_instrucao|memROM~11_combout\ & 
-- (\MemoriaRAM|ram~331_q\)) ) ) ) # ( !\MemoriaRAM|ram~395_q\ & ( !\ROM_instrucao|memROM~19_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~299_q\))) # (\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~331_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~331_q\,
	datab => \MemoriaRAM|ALT_INV_ram~363_q\,
	datac => \MemoriaRAM|ALT_INV_ram~299_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~395_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~615_combout\);

-- Location: FF_X19_Y8_N29
\MemoriaRAM|ram~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~491_q\);

-- Location: FF_X18_Y4_N38
\MemoriaRAM|ram~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~523_q\);

-- Location: MLABCELL_X18_Y4_N39
\MemoriaRAM|ram~616\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~616_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~523_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~491_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~491_q\,
	datad => \MemoriaRAM|ALT_INV_ram~523_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~616_combout\);

-- Location: LABCELL_X19_Y7_N0
\MemoriaRAM|ram~617\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~617_combout\ = ( \MemoriaRAM|ram~615_combout\ & ( \MemoriaRAM|ram~616_combout\ & ( ((!\ROM_instrucao|memROM~20_combout\ & (\MemoriaRAM|ram~613_combout\)) # (\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~614_combout\)))) # 
-- (\ROM_instrucao|memROM~18_combout\) ) ) ) # ( !\MemoriaRAM|ram~615_combout\ & ( \MemoriaRAM|ram~616_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & ((!\ROM_instrucao|memROM~20_combout\ & (\MemoriaRAM|ram~613_combout\)) # 
-- (\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~614_combout\))))) # (\ROM_instrucao|memROM~18_combout\ & (\ROM_instrucao|memROM~20_combout\)) ) ) ) # ( \MemoriaRAM|ram~615_combout\ & ( !\MemoriaRAM|ram~616_combout\ & ( 
-- (!\ROM_instrucao|memROM~18_combout\ & ((!\ROM_instrucao|memROM~20_combout\ & (\MemoriaRAM|ram~613_combout\)) # (\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~614_combout\))))) # (\ROM_instrucao|memROM~18_combout\ & 
-- (!\ROM_instrucao|memROM~20_combout\)) ) ) ) # ( !\MemoriaRAM|ram~615_combout\ & ( !\MemoriaRAM|ram~616_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & ((!\ROM_instrucao|memROM~20_combout\ & (\MemoriaRAM|ram~613_combout\)) # 
-- (\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~614_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010010011000110111000011001001110110101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~613_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~614_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~615_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~616_combout\,
	combout => \MemoriaRAM|ram~617_combout\);

-- Location: FF_X20_Y7_N38
\MemoriaRAM|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~690_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~83_q\);

-- Location: FF_X20_Y7_N47
\MemoriaRAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~19_q\);

-- Location: FF_X16_Y4_N43
\MemoriaRAM|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~115_q\);

-- Location: FF_X20_Y7_N8
\MemoriaRAM|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~51_q\);

-- Location: LABCELL_X20_Y7_N6
\MemoriaRAM|ram~599\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~599_combout\ = ( \MemoriaRAM|ram~51_q\ & ( \ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~19_combout\) # (\MemoriaRAM|ram~115_q\) ) ) ) # ( !\MemoriaRAM|ram~51_q\ & ( \ROM_instrucao|memROM~11_combout\ & ( 
-- (\ROM_instrucao|memROM~19_combout\ & \MemoriaRAM|ram~115_q\) ) ) ) # ( \MemoriaRAM|ram~51_q\ & ( !\ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & ((\MemoriaRAM|ram~19_q\))) # (\ROM_instrucao|memROM~19_combout\ & 
-- (\MemoriaRAM|ram~83_q\)) ) ) ) # ( !\MemoriaRAM|ram~51_q\ & ( !\ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & ((\MemoriaRAM|ram~19_q\))) # (\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~83_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~83_q\,
	datab => \MemoriaRAM|ALT_INV_ram~19_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~115_q\,
	datae => \MemoriaRAM|ALT_INV_ram~51_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~599_combout\);

-- Location: FF_X18_Y3_N55
\MemoriaRAM|ram~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~211_q\);

-- Location: LABCELL_X24_Y5_N57
\MemoriaRAM|ram~243feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~243feeder_combout\ = ( \Processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(4),
	combout => \MemoriaRAM|ram~243feeder_combout\);

-- Location: FF_X24_Y5_N59
\MemoriaRAM|ram~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~243feeder_combout\,
	ena => \MemoriaRAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~243_q\);

-- Location: LABCELL_X24_Y5_N0
\MemoriaRAM|ram~600\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~600_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~243_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~211_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011001100110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~211_q\,
	datad => \MemoriaRAM|ALT_INV_ram~243_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~600_combout\);

-- Location: FF_X17_Y6_N41
\MemoriaRAM|ram~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~259_q\);

-- Location: FF_X21_Y3_N34
\MemoriaRAM|ram~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~227_q\);

-- Location: LABCELL_X17_Y6_N9
\MemoriaRAM|ram~602\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~602_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~259_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~227_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~259_q\,
	datad => \MemoriaRAM|ALT_INV_ram~227_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~602_combout\);

-- Location: FF_X20_Y8_N53
\MemoriaRAM|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~67_q\);

-- Location: FF_X20_Y8_N8
\MemoriaRAM|ram~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~99_q\);

-- Location: FF_X21_Y3_N13
\MemoriaRAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~35_q\);

-- Location: FF_X20_Y8_N20
\MemoriaRAM|ram~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~131_q\);

-- Location: LABCELL_X20_Y8_N21
\MemoriaRAM|ram~601\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~601_combout\ = ( \ROM_instrucao|memROM~19_combout\ & ( \ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~131_q\ ) ) ) # ( !\ROM_instrucao|memROM~19_combout\ & ( \ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~67_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~19_combout\ & ( !\ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~99_q\ ) ) ) # ( !\ROM_instrucao|memROM~19_combout\ & ( !\ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~35_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111001100110011001101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~67_q\,
	datab => \MemoriaRAM|ALT_INV_ram~99_q\,
	datac => \MemoriaRAM|ALT_INV_ram~35_q\,
	datad => \MemoriaRAM|ALT_INV_ram~131_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~601_combout\);

-- Location: LABCELL_X19_Y7_N6
\MemoriaRAM|ram~603\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~603_combout\ = ( \MemoriaRAM|ram~602_combout\ & ( \MemoriaRAM|ram~601_combout\ & ( ((!\ROM_instrucao|memROM~20_combout\ & (\MemoriaRAM|ram~599_combout\)) # (\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~600_combout\)))) # 
-- (\ROM_instrucao|memROM~18_combout\) ) ) ) # ( !\MemoriaRAM|ram~602_combout\ & ( \MemoriaRAM|ram~601_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & ((!\ROM_instrucao|memROM~20_combout\ & (\MemoriaRAM|ram~599_combout\)) # 
-- (\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~600_combout\))))) # (\ROM_instrucao|memROM~18_combout\ & (!\ROM_instrucao|memROM~20_combout\)) ) ) ) # ( \MemoriaRAM|ram~602_combout\ & ( !\MemoriaRAM|ram~601_combout\ & ( 
-- (!\ROM_instrucao|memROM~18_combout\ & ((!\ROM_instrucao|memROM~20_combout\ & (\MemoriaRAM|ram~599_combout\)) # (\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~600_combout\))))) # (\ROM_instrucao|memROM~18_combout\ & 
-- (\ROM_instrucao|memROM~20_combout\)) ) ) ) # ( !\MemoriaRAM|ram~602_combout\ & ( !\MemoriaRAM|ram~601_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & ((!\ROM_instrucao|memROM~20_combout\ & (\MemoriaRAM|ram~599_combout\)) # 
-- (\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~600_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~599_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~600_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~602_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~601_combout\,
	combout => \MemoriaRAM|ram~603_combout\);

-- Location: FF_X14_Y6_N31
\MemoriaRAM|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~75_q\);

-- Location: FF_X18_Y5_N22
\MemoriaRAM|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~43_q\);

-- Location: MLABCELL_X18_Y7_N36
\MemoriaRAM|ram~610\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~610_combout\ = ( !\ROM_instrucao|memROM~20_combout\ & ( \ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~75_q\ ) ) ) # ( !\ROM_instrucao|memROM~20_combout\ & ( !\ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~43_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~75_q\,
	datad => \MemoriaRAM|ALT_INV_ram~43_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~610_combout\);

-- Location: FF_X17_Y7_N23
\MemoriaRAM|ram~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~267_q\);

-- Location: FF_X18_Y6_N55
\MemoriaRAM|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~107_q\);

-- Location: LABCELL_X21_Y8_N0
\MemoriaRAM|ram~139feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~139feeder_combout\ = ( \Processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(4),
	combout => \MemoriaRAM|ram~139feeder_combout\);

-- Location: FF_X21_Y8_N1
\MemoriaRAM|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~139feeder_combout\,
	ena => \MemoriaRAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~139_q\);

-- Location: FF_X16_Y6_N52
\MemoriaRAM|ram~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~235_q\);

-- Location: LABCELL_X17_Y7_N15
\MemoriaRAM|ram~611\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~611_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~20_combout\ & ( \MemoriaRAM|ram~267_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~20_combout\ & ( \MemoriaRAM|ram~235_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~20_combout\ & ( \MemoriaRAM|ram~139_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~20_combout\ & ( \MemoriaRAM|ram~107_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~267_q\,
	datab => \MemoriaRAM|ALT_INV_ram~107_q\,
	datac => \MemoriaRAM|ALT_INV_ram~139_q\,
	datad => \MemoriaRAM|ALT_INV_ram~235_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \MemoriaRAM|ram~611_combout\);

-- Location: FF_X18_Y7_N20
\MemoriaRAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~27_q\);

-- Location: FF_X18_Y7_N2
\MemoriaRAM|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~59_q\);

-- Location: MLABCELL_X18_Y7_N0
\MemoriaRAM|ram~608\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~608_combout\ = ( \MemoriaRAM|ram~59_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( (\ROM_instrucao|memROM~11_combout\) # (\MemoriaRAM|ram~27_q\) ) ) ) # ( !\MemoriaRAM|ram~59_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( 
-- (\MemoriaRAM|ram~27_q\ & !\ROM_instrucao|memROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010111110101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~27_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~59_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \MemoriaRAM|ram~608_combout\);

-- Location: FF_X16_Y6_N10
\MemoriaRAM|ram~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~219_q\);

-- Location: FF_X17_Y5_N37
\MemoriaRAM|ram~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~123_q\);

-- Location: LABCELL_X17_Y3_N12
\MemoriaRAM|ram~91feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~91feeder_combout\ = ( \Processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(4),
	combout => \MemoriaRAM|ram~91feeder_combout\);

-- Location: FF_X17_Y3_N14
\MemoriaRAM|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~91feeder_combout\,
	ena => \MemoriaRAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~91_q\);

-- Location: FF_X17_Y7_N38
\MemoriaRAM|ram~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~251_q\);

-- Location: LABCELL_X17_Y7_N36
\MemoriaRAM|ram~609\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~609_combout\ = ( \MemoriaRAM|ram~251_q\ & ( \ROM_instrucao|memROM~11_combout\ & ( (\ROM_instrucao|memROM~20_combout\) # (\MemoriaRAM|ram~123_q\) ) ) ) # ( !\MemoriaRAM|ram~251_q\ & ( \ROM_instrucao|memROM~11_combout\ & ( 
-- (\MemoriaRAM|ram~123_q\ & !\ROM_instrucao|memROM~20_combout\) ) ) ) # ( \MemoriaRAM|ram~251_q\ & ( !\ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~91_q\))) # (\ROM_instrucao|memROM~20_combout\ & 
-- (\MemoriaRAM|ram~219_q\)) ) ) ) # ( !\MemoriaRAM|ram~251_q\ & ( !\ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~91_q\))) # (\ROM_instrucao|memROM~20_combout\ & (\MemoriaRAM|ram~219_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~219_q\,
	datab => \MemoriaRAM|ALT_INV_ram~123_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~91_q\,
	datae => \MemoriaRAM|ALT_INV_ram~251_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~609_combout\);

-- Location: MLABCELL_X18_Y7_N27
\MemoriaRAM|ram~612\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~612_combout\ = ( \MemoriaRAM|ram~608_combout\ & ( \MemoriaRAM|ram~609_combout\ & ( (!\ROM_instrucao|memROM~18_combout\) # ((!\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~610_combout\)) # (\ROM_instrucao|memROM~19_combout\ & 
-- ((\MemoriaRAM|ram~611_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~608_combout\ & ( \MemoriaRAM|ram~609_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (((\ROM_instrucao|memROM~19_combout\)))) # (\ROM_instrucao|memROM~18_combout\ & 
-- ((!\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~610_combout\)) # (\ROM_instrucao|memROM~19_combout\ & ((\MemoriaRAM|ram~611_combout\))))) ) ) ) # ( \MemoriaRAM|ram~608_combout\ & ( !\MemoriaRAM|ram~609_combout\ & ( 
-- (!\ROM_instrucao|memROM~18_combout\ & (((!\ROM_instrucao|memROM~19_combout\)))) # (\ROM_instrucao|memROM~18_combout\ & ((!\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~610_combout\)) # (\ROM_instrucao|memROM~19_combout\ & 
-- ((\MemoriaRAM|ram~611_combout\))))) ) ) ) # ( !\MemoriaRAM|ram~608_combout\ & ( !\MemoriaRAM|ram~609_combout\ & ( (\ROM_instrucao|memROM~18_combout\ & ((!\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~610_combout\)) # 
-- (\ROM_instrucao|memROM~19_combout\ & ((\MemoriaRAM|ram~611_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011110111010000001100010001110011111101110111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~610_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~611_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~608_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~609_combout\,
	combout => \MemoriaRAM|ram~612_combout\);

-- Location: FF_X18_Y4_N13
\MemoriaRAM|ram~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~483_q\);

-- Location: FF_X18_Y4_N43
\MemoriaRAM|ram~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~515_q\);

-- Location: LABCELL_X20_Y3_N33
\MemoriaRAM|ram~467feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~467feeder_combout\ = ( \Processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(4),
	combout => \MemoriaRAM|ram~467feeder_combout\);

-- Location: FF_X20_Y3_N35
\MemoriaRAM|ram~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~467feeder_combout\,
	ena => \MemoriaRAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~467_q\);

-- Location: FF_X19_Y3_N53
\MemoriaRAM|ram~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~499_q\);

-- Location: LABCELL_X19_Y4_N36
\MemoriaRAM|ram~604\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~604_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~515_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~483_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~499_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~467_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~483_q\,
	datab => \MemoriaRAM|ALT_INV_ram~515_q\,
	datac => \MemoriaRAM|ALT_INV_ram~467_q\,
	datad => \MemoriaRAM|ALT_INV_ram~499_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~604_combout\);

-- Location: MLABCELL_X23_Y5_N9
\MemoriaRAM|ram~323feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~323feeder_combout\ = ( \Processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(4),
	combout => \MemoriaRAM|ram~323feeder_combout\);

-- Location: FF_X23_Y5_N11
\MemoriaRAM|ram~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~323feeder_combout\,
	ena => \MemoriaRAM|ram~688_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~323_q\);

-- Location: FF_X21_Y5_N8
\MemoriaRAM|ram~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~682_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~275_q\);

-- Location: FF_X21_Y5_N25
\MemoriaRAM|ram~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~684_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~291_q\);

-- Location: FF_X21_Y5_N44
\MemoriaRAM|ram~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~686_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~307_q\);

-- Location: LABCELL_X21_Y5_N42
\MemoriaRAM|ram~606\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~606_combout\ = ( \MemoriaRAM|ram~307_q\ & ( \ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~18_combout\) # (\MemoriaRAM|ram~323_q\) ) ) ) # ( !\MemoriaRAM|ram~307_q\ & ( \ROM_instrucao|memROM~11_combout\ & ( 
-- (\MemoriaRAM|ram~323_q\ & \ROM_instrucao|memROM~18_combout\) ) ) ) # ( \MemoriaRAM|ram~307_q\ & ( !\ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~275_q\)) # (\ROM_instrucao|memROM~18_combout\ & 
-- ((\MemoriaRAM|ram~291_q\))) ) ) ) # ( !\MemoriaRAM|ram~307_q\ & ( !\ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~275_q\)) # (\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~291_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~323_q\,
	datab => \MemoriaRAM|ALT_INV_ram~275_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~291_q\,
	datae => \MemoriaRAM|ALT_INV_ram~307_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~606_combout\);

-- Location: LABCELL_X20_Y3_N3
\MemoriaRAM|ram~355feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~355feeder_combout\ = ( \Processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(4),
	combout => \MemoriaRAM|ram~355feeder_combout\);

-- Location: FF_X20_Y3_N4
\MemoriaRAM|ram~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~355feeder_combout\,
	ena => \MemoriaRAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~355_q\);

-- Location: MLABCELL_X18_Y2_N33
\MemoriaRAM|ram~339feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~339feeder_combout\ = ( \Processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(4),
	combout => \MemoriaRAM|ram~339feeder_combout\);

-- Location: FF_X18_Y2_N34
\MemoriaRAM|ram~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~339feeder_combout\,
	ena => \MemoriaRAM|ram~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~339_q\);

-- Location: LABCELL_X16_Y3_N30
\MemoriaRAM|ram~371feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~371feeder_combout\ = ( \Processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(4),
	combout => \MemoriaRAM|ram~371feeder_combout\);

-- Location: FF_X16_Y3_N31
\MemoriaRAM|ram~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~371feeder_combout\,
	ena => \MemoriaRAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~371_q\);

-- Location: FF_X19_Y4_N26
\MemoriaRAM|ram~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~387_q\);

-- Location: LABCELL_X19_Y4_N24
\MemoriaRAM|ram~605\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~605_combout\ = ( \MemoriaRAM|ram~387_q\ & ( \ROM_instrucao|memROM~11_combout\ & ( (\MemoriaRAM|ram~371_q\) # (\ROM_instrucao|memROM~18_combout\) ) ) ) # ( !\MemoriaRAM|ram~387_q\ & ( \ROM_instrucao|memROM~11_combout\ & ( 
-- (!\ROM_instrucao|memROM~18_combout\ & \MemoriaRAM|ram~371_q\) ) ) ) # ( \MemoriaRAM|ram~387_q\ & ( !\ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~339_q\))) # (\ROM_instrucao|memROM~18_combout\ & 
-- (\MemoriaRAM|ram~355_q\)) ) ) ) # ( !\MemoriaRAM|ram~387_q\ & ( !\ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~339_q\))) # (\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~355_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~355_q\,
	datab => \MemoriaRAM|ALT_INV_ram~339_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~371_q\,
	datae => \MemoriaRAM|ALT_INV_ram~387_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~605_combout\);

-- Location: LABCELL_X19_Y4_N15
\MemoriaRAM|ram~607\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~607_combout\ = ( \MemoriaRAM|ram~606_combout\ & ( \MemoriaRAM|ram~605_combout\ & ( (!\ROM_instrucao|memROM~19_combout\) # ((!\Processador|PC|DOUT[2]~DUPLICATE_q\) # (\MemoriaRAM|ram~604_combout\)) ) ) ) # ( !\MemoriaRAM|ram~606_combout\ & 
-- ( \MemoriaRAM|ram~605_combout\ & ( (\ROM_instrucao|memROM~19_combout\ & ((!\Processador|PC|DOUT[2]~DUPLICATE_q\) # (\MemoriaRAM|ram~604_combout\))) ) ) ) # ( \MemoriaRAM|ram~606_combout\ & ( !\MemoriaRAM|ram~605_combout\ & ( 
-- (!\ROM_instrucao|memROM~19_combout\) # ((\Processador|PC|DOUT[2]~DUPLICATE_q\ & \MemoriaRAM|ram~604_combout\)) ) ) ) # ( !\MemoriaRAM|ram~606_combout\ & ( !\MemoriaRAM|ram~605_combout\ & ( (\ROM_instrucao|memROM~19_combout\ & 
-- (\Processador|PC|DOUT[2]~DUPLICATE_q\ & \MemoriaRAM|ram~604_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101101010101010111101010000010101011111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datac => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \MemoriaRAM|ALT_INV_ram~604_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~606_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~605_combout\,
	combout => \MemoriaRAM|ram~607_combout\);

-- Location: LABCELL_X19_Y7_N24
\MemoriaRAM|ram~618\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~618_combout\ = ( \MemoriaRAM|ram~612_combout\ & ( \MemoriaRAM|ram~607_combout\ & ( (!\ROM_instrucao|memROM~17_combout\ & (((\MemoriaRAM|ram~603_combout\)) # (\ROM_instrucao|memROM~13_combout\))) # (\ROM_instrucao|memROM~17_combout\ & 
-- ((!\ROM_instrucao|memROM~13_combout\) # ((\MemoriaRAM|ram~617_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~612_combout\ & ( \MemoriaRAM|ram~607_combout\ & ( (!\ROM_instrucao|memROM~17_combout\ & (!\ROM_instrucao|memROM~13_combout\ & 
-- ((\MemoriaRAM|ram~603_combout\)))) # (\ROM_instrucao|memROM~17_combout\ & ((!\ROM_instrucao|memROM~13_combout\) # ((\MemoriaRAM|ram~617_combout\)))) ) ) ) # ( \MemoriaRAM|ram~612_combout\ & ( !\MemoriaRAM|ram~607_combout\ & ( 
-- (!\ROM_instrucao|memROM~17_combout\ & (((\MemoriaRAM|ram~603_combout\)) # (\ROM_instrucao|memROM~13_combout\))) # (\ROM_instrucao|memROM~17_combout\ & (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~617_combout\))) ) ) ) # ( 
-- !\MemoriaRAM|ram~612_combout\ & ( !\MemoriaRAM|ram~607_combout\ & ( (!\ROM_instrucao|memROM~17_combout\ & (!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~603_combout\)))) # (\ROM_instrucao|memROM~17_combout\ & (\ROM_instrucao|memROM~13_combout\ & 
-- (\MemoriaRAM|ram~617_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001001000111010101101000101110011010110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~617_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~603_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~612_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~607_combout\,
	combout => \MemoriaRAM|ram~618_combout\);

-- Location: LABCELL_X20_Y7_N42
\Processador|MUX1|saida_MUX[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[4]~3_combout\ = ( \AndSW0_7|saida~3_combout\ & ( \MemoriaRAM|ram~618_combout\ ) ) # ( !\AndSW0_7|saida~3_combout\ & ( \MemoriaRAM|ram~618_combout\ & ( \SW[4]~input_o\ ) ) ) # ( !\AndSW0_7|saida~3_combout\ & ( 
-- !\MemoriaRAM|ram~618_combout\ & ( \SW[4]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[4]~input_o\,
	datae => \AndSW0_7|ALT_INV_saida~3_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~618_combout\,
	combout => \Processador|MUX1|saida_MUX[4]~3_combout\);

-- Location: LABCELL_X21_Y6_N15
\Processador|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~21_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & (((\Processador|MUX1|saida_MUX[5]~4_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (\ROM_instrucao|memROM~30_combout\ & (!\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(5) ) + ( \Processador|ULA1|Add0~18\ ))
-- \Processador|ULA1|Add0~22\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & (((\Processador|MUX1|saida_MUX[5]~4_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (\ROM_instrucao|memROM~30_combout\ & (!\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(5) ) + ( \Processador|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001000010111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~30_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \Processador|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(5),
	cin => \Processador|ULA1|Add0~18\,
	sumout => \Processador|ULA1|Add0~21_sumout\,
	cout => \Processador|ULA1|Add0~22\);

-- Location: LABCELL_X21_Y6_N24
\Processador|REGA|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|REGA|DOUT[5]~feeder_combout\ = ( \Processador|ULA1|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA1|ALT_INV_Add0~21_sumout\,
	combout => \Processador|REGA|DOUT[5]~feeder_combout\);

-- Location: LABCELL_X21_Y6_N30
\Processador|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[5]~5_combout\ = ( \Processador|decoder|saida~2_combout\ & ( \Processador|ULA1|Add1~21_sumout\ ) ) # ( !\Processador|decoder|saida~2_combout\ & ( \Processador|ULA1|Add1~21_sumout\ & ( (!\Processador|decoder|Equal10~0_combout\ & 
-- ((\Processador|MUX1|saida_MUX[5]~4_combout\))) # (\Processador|decoder|Equal10~0_combout\ & (\ROM_instrucao|memROM~17_combout\)) ) ) ) # ( !\Processador|decoder|saida~2_combout\ & ( !\Processador|ULA1|Add1~21_sumout\ & ( 
-- (!\Processador|decoder|Equal10~0_combout\ & ((\Processador|MUX1|saida_MUX[5]~4_combout\))) # (\Processador|decoder|Equal10~0_combout\ & (\ROM_instrucao|memROM~17_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000000000000000000000101101011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	datae => \Processador|decoder|ALT_INV_saida~2_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \Processador|ULA1|saida[5]~5_combout\);

-- Location: FF_X21_Y6_N26
\Processador|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|REGA|DOUT[5]~feeder_combout\,
	asdata => \Processador|ULA1|saida[5]~5_combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	ena => \Processador|decoder|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(5));

-- Location: FF_X20_Y8_N44
\MemoriaRAM|ram~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~100_q\);

-- Location: MLABCELL_X18_Y3_N6
\MemoriaRAM|ram~212feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~212feeder_combout\ = ( \Processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(5),
	combout => \MemoriaRAM|ram~212feeder_combout\);

-- Location: FF_X18_Y3_N7
\MemoriaRAM|ram~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~212feeder_combout\,
	ena => \MemoriaRAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~212_q\);

-- Location: LABCELL_X17_Y3_N21
\MemoriaRAM|ram~84feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~84feeder_combout\ = ( \Processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(5),
	combout => \MemoriaRAM|ram~84feeder_combout\);

-- Location: FF_X17_Y3_N22
\MemoriaRAM|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~84feeder_combout\,
	ena => \MemoriaRAM|ram~690_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~84_q\);

-- Location: FF_X21_Y4_N2
\MemoriaRAM|ram~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~228_q\);

-- Location: LABCELL_X21_Y4_N0
\MemoriaRAM|ram~621\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~621_combout\ = ( \MemoriaRAM|ram~228_q\ & ( \ROM_instrucao|memROM~20_combout\ & ( (\ROM_instrucao|memROM~18_combout\) # (\MemoriaRAM|ram~212_q\) ) ) ) # ( !\MemoriaRAM|ram~228_q\ & ( \ROM_instrucao|memROM~20_combout\ & ( 
-- (\MemoriaRAM|ram~212_q\ & !\ROM_instrucao|memROM~18_combout\) ) ) ) # ( \MemoriaRAM|ram~228_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~84_q\))) # (\ROM_instrucao|memROM~18_combout\ & 
-- (\MemoriaRAM|ram~100_q\)) ) ) ) # ( !\MemoriaRAM|ram~228_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~84_q\))) # (\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~100_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~100_q\,
	datab => \MemoriaRAM|ALT_INV_ram~212_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~84_q\,
	datae => \MemoriaRAM|ALT_INV_ram~228_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \MemoriaRAM|ram~621_combout\);

-- Location: FF_X18_Y7_N59
\MemoriaRAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~28_q\);

-- Location: LABCELL_X16_Y3_N27
\MemoriaRAM|ram~44feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~44feeder_combout\ = ( \Processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(5),
	combout => \MemoriaRAM|ram~44feeder_combout\);

-- Location: FF_X16_Y3_N28
\MemoriaRAM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~44feeder_combout\,
	ena => \MemoriaRAM|ram~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~44_q\);

-- Location: MLABCELL_X18_Y7_N21
\MemoriaRAM|ram~620\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~620_combout\ = ( !\ROM_instrucao|memROM~20_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~44_q\ ) ) ) # ( !\ROM_instrucao|memROM~20_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~28_q\,
	datad => \MemoriaRAM|ALT_INV_ram~44_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~620_combout\);

-- Location: FF_X20_Y7_N25
\MemoriaRAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~20_q\);

-- Location: LABCELL_X21_Y3_N54
\MemoriaRAM|ram~36feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~36feeder_combout\ = ( \Processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(5),
	combout => \MemoriaRAM|ram~36feeder_combout\);

-- Location: FF_X21_Y3_N56
\MemoriaRAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~36feeder_combout\,
	ena => \MemoriaRAM|ram~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~36_q\);

-- Location: LABCELL_X20_Y7_N21
\MemoriaRAM|ram~619\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~619_combout\ = ( !\ROM_instrucao|memROM~20_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~36_q\ ) ) ) # ( !\ROM_instrucao|memROM~20_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~20_q\,
	datad => \MemoriaRAM|ALT_INV_ram~36_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~619_combout\);

-- Location: FF_X16_Y7_N23
\MemoriaRAM|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~108_q\);

-- Location: FF_X16_Y6_N59
\MemoriaRAM|ram~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~220_q\);

-- Location: LABCELL_X17_Y3_N15
\MemoriaRAM|ram~92feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~92feeder_combout\ = ( \Processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(5),
	combout => \MemoriaRAM|ram~92feeder_combout\);

-- Location: FF_X17_Y3_N16
\MemoriaRAM|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~92feeder_combout\,
	ena => \MemoriaRAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~92_q\);

-- Location: FF_X16_Y6_N5
\MemoriaRAM|ram~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~236_q\);

-- Location: LABCELL_X16_Y6_N3
\MemoriaRAM|ram~622\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~622_combout\ = ( \MemoriaRAM|ram~236_q\ & ( \ROM_instrucao|memROM~18_combout\ & ( (\ROM_instrucao|memROM~20_combout\) # (\MemoriaRAM|ram~108_q\) ) ) ) # ( !\MemoriaRAM|ram~236_q\ & ( \ROM_instrucao|memROM~18_combout\ & ( 
-- (\MemoriaRAM|ram~108_q\ & !\ROM_instrucao|memROM~20_combout\) ) ) ) # ( \MemoriaRAM|ram~236_q\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~92_q\))) # (\ROM_instrucao|memROM~20_combout\ & 
-- (\MemoriaRAM|ram~220_q\)) ) ) ) # ( !\MemoriaRAM|ram~236_q\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~92_q\))) # (\ROM_instrucao|memROM~20_combout\ & (\MemoriaRAM|ram~220_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~108_q\,
	datab => \MemoriaRAM|ALT_INV_ram~220_q\,
	datac => \MemoriaRAM|ALT_INV_ram~92_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~236_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~622_combout\);

-- Location: LABCELL_X21_Y4_N24
\MemoriaRAM|ram~623\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~623_combout\ = ( \MemoriaRAM|ram~619_combout\ & ( \MemoriaRAM|ram~622_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & ((!\ROM_instrucao|memROM~19_combout\) # ((\MemoriaRAM|ram~621_combout\)))) # (\ROM_instrucao|memROM~13_combout\ & 
-- (((\MemoriaRAM|ram~620_combout\)) # (\ROM_instrucao|memROM~19_combout\))) ) ) ) # ( !\MemoriaRAM|ram~619_combout\ & ( \MemoriaRAM|ram~622_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & (\ROM_instrucao|memROM~19_combout\ & 
-- (\MemoriaRAM|ram~621_combout\))) # (\ROM_instrucao|memROM~13_combout\ & (((\MemoriaRAM|ram~620_combout\)) # (\ROM_instrucao|memROM~19_combout\))) ) ) ) # ( \MemoriaRAM|ram~619_combout\ & ( !\MemoriaRAM|ram~622_combout\ & ( 
-- (!\ROM_instrucao|memROM~13_combout\ & ((!\ROM_instrucao|memROM~19_combout\) # ((\MemoriaRAM|ram~621_combout\)))) # (\ROM_instrucao|memROM~13_combout\ & (!\ROM_instrucao|memROM~19_combout\ & ((\MemoriaRAM|ram~620_combout\)))) ) ) ) # ( 
-- !\MemoriaRAM|ram~619_combout\ & ( !\MemoriaRAM|ram~622_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & (\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~621_combout\))) # (\ROM_instrucao|memROM~13_combout\ & (!\ROM_instrucao|memROM~19_combout\ & 
-- ((\MemoriaRAM|ram~620_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001001000110100010101100111000010011010101111001101111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~621_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~620_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~619_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~622_combout\,
	combout => \MemoriaRAM|ram~623_combout\);

-- Location: FF_X21_Y3_N47
\MemoriaRAM|ram~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~284_q\);

-- Location: FF_X19_Y8_N56
\MemoriaRAM|ram~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~300_q\);

-- Location: LABCELL_X21_Y3_N0
\MemoriaRAM|ram~625\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~625_combout\ = ( !\ROM_instrucao|memROM~20_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~300_q\ ) ) ) # ( !\ROM_instrucao|memROM~20_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~284_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~284_q\,
	datad => \MemoriaRAM|ALT_INV_ram~300_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~625_combout\);

-- Location: FF_X20_Y3_N13
\MemoriaRAM|ram~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~484_q\);

-- Location: FF_X20_Y3_N56
\MemoriaRAM|ram~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~356_q\);

-- Location: FF_X20_Y3_N7
\MemoriaRAM|ram~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~468_q\);

-- Location: LABCELL_X16_Y3_N9
\MemoriaRAM|ram~340feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~340feeder_combout\ = ( \Processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(5),
	combout => \MemoriaRAM|ram~340feeder_combout\);

-- Location: FF_X16_Y3_N10
\MemoriaRAM|ram~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~340feeder_combout\,
	ena => \MemoriaRAM|ram~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~340_q\);

-- Location: LABCELL_X20_Y4_N57
\MemoriaRAM|ram~626\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~626_combout\ = ( \ROM_instrucao|memROM~20_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~484_q\ ) ) ) # ( !\ROM_instrucao|memROM~20_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~356_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~20_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~468_q\ ) ) ) # ( !\ROM_instrucao|memROM~20_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~340_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~484_q\,
	datab => \MemoriaRAM|ALT_INV_ram~356_q\,
	datac => \MemoriaRAM|ALT_INV_ram~468_q\,
	datad => \MemoriaRAM|ALT_INV_ram~340_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~626_combout\);

-- Location: FF_X19_Y3_N4
\MemoriaRAM|ram~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~476_q\);

-- Location: FF_X17_Y5_N50
\MemoriaRAM|ram~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~348_q\);

-- Location: FF_X19_Y8_N49
\MemoriaRAM|ram~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~492_q\);

-- Location: FF_X19_Y8_N43
\MemoriaRAM|ram~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~364_q\);

-- Location: LABCELL_X17_Y4_N15
\MemoriaRAM|ram~627\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~627_combout\ = ( \ROM_instrucao|memROM~20_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~492_q\ ) ) ) # ( !\ROM_instrucao|memROM~20_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~364_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~20_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~476_q\ ) ) ) # ( !\ROM_instrucao|memROM~20_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~348_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~476_q\,
	datab => \MemoriaRAM|ALT_INV_ram~348_q\,
	datac => \MemoriaRAM|ALT_INV_ram~492_q\,
	datad => \MemoriaRAM|ALT_INV_ram~364_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~627_combout\);

-- Location: FF_X21_Y5_N29
\MemoriaRAM|ram~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~684_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~292_q\);

-- Location: FF_X21_Y5_N38
\MemoriaRAM|ram~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~682_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~276_q\);

-- Location: LABCELL_X21_Y5_N36
\MemoriaRAM|ram~624\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~624_combout\ = ( \MemoriaRAM|ram~276_q\ & ( \ROM_instrucao|memROM~18_combout\ & ( (\MemoriaRAM|ram~292_q\ & !\ROM_instrucao|memROM~20_combout\) ) ) ) # ( !\MemoriaRAM|ram~276_q\ & ( \ROM_instrucao|memROM~18_combout\ & ( 
-- (\MemoriaRAM|ram~292_q\ & !\ROM_instrucao|memROM~20_combout\) ) ) ) # ( \MemoriaRAM|ram~276_q\ & ( !\ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~20_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000001010000010100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~292_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~276_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~624_combout\);

-- Location: LABCELL_X21_Y4_N12
\MemoriaRAM|ram~628\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~628_combout\ = ( \MemoriaRAM|ram~627_combout\ & ( \MemoriaRAM|ram~624_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & ((!\ROM_instrucao|memROM~19_combout\) # ((\MemoriaRAM|ram~626_combout\)))) # (\ROM_instrucao|memROM~13_combout\ & 
-- (((\MemoriaRAM|ram~625_combout\)) # (\ROM_instrucao|memROM~19_combout\))) ) ) ) # ( !\MemoriaRAM|ram~627_combout\ & ( \MemoriaRAM|ram~624_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & ((!\ROM_instrucao|memROM~19_combout\) # 
-- ((\MemoriaRAM|ram~626_combout\)))) # (\ROM_instrucao|memROM~13_combout\ & (!\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~625_combout\))) ) ) ) # ( \MemoriaRAM|ram~627_combout\ & ( !\MemoriaRAM|ram~624_combout\ & ( 
-- (!\ROM_instrucao|memROM~13_combout\ & (\ROM_instrucao|memROM~19_combout\ & ((\MemoriaRAM|ram~626_combout\)))) # (\ROM_instrucao|memROM~13_combout\ & (((\MemoriaRAM|ram~625_combout\)) # (\ROM_instrucao|memROM~19_combout\))) ) ) ) # ( 
-- !\MemoriaRAM|ram~627_combout\ & ( !\MemoriaRAM|ram~624_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & (\ROM_instrucao|memROM~19_combout\ & ((\MemoriaRAM|ram~626_combout\)))) # (\ROM_instrucao|memROM~13_combout\ & (!\ROM_instrucao|memROM~19_combout\ & 
-- (\MemoriaRAM|ram~625_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000100110000101010011011110001100101011101001110110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~625_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~626_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~627_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~624_combout\,
	combout => \MemoriaRAM|ram~628_combout\);

-- Location: FF_X18_Y4_N26
\MemoriaRAM|ram~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~524_q\);

-- Location: FF_X19_Y3_N34
\MemoriaRAM|ram~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~500_q\);

-- Location: FF_X18_Y4_N47
\MemoriaRAM|ram~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~516_q\);

-- Location: MLABCELL_X23_Y6_N33
\MemoriaRAM|ram~508feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~508feeder_combout\ = \Processador|REGA|DOUT\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|REGA|ALT_INV_DOUT\(5),
	combout => \MemoriaRAM|ram~508feeder_combout\);

-- Location: FF_X23_Y6_N34
\MemoriaRAM|ram~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~508feeder_combout\,
	ena => \MemoriaRAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~508_q\);

-- Location: MLABCELL_X18_Y4_N27
\MemoriaRAM|ram~634\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~634_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~524_q\ ) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~508_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~516_q\ ) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~500_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111100000000111111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~524_q\,
	datab => \MemoriaRAM|ALT_INV_ram~500_q\,
	datac => \MemoriaRAM|ALT_INV_ram~516_q\,
	datad => \MemoriaRAM|ALT_INV_ram~508_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~634_combout\);

-- Location: LABCELL_X16_Y3_N48
\MemoriaRAM|ram~372feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~372feeder_combout\ = ( \Processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(5),
	combout => \MemoriaRAM|ram~372feeder_combout\);

-- Location: FF_X16_Y3_N50
\MemoriaRAM|ram~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~372feeder_combout\,
	ena => \MemoriaRAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~372_q\);

-- Location: FF_X19_Y4_N14
\MemoriaRAM|ram~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~380_q\);

-- Location: FF_X19_Y4_N50
\MemoriaRAM|ram~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~388_q\);

-- Location: FF_X19_Y4_N8
\MemoriaRAM|ram~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~396_q\);

-- Location: LABCELL_X19_Y4_N6
\MemoriaRAM|ram~635\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~635_combout\ = ( \MemoriaRAM|ram~396_q\ & ( \ROM_instrucao|memROM~13_combout\ & ( (\ROM_instrucao|memROM~18_combout\) # (\MemoriaRAM|ram~380_q\) ) ) ) # ( !\MemoriaRAM|ram~396_q\ & ( \ROM_instrucao|memROM~13_combout\ & ( 
-- (\MemoriaRAM|ram~380_q\ & !\ROM_instrucao|memROM~18_combout\) ) ) ) # ( \MemoriaRAM|ram~396_q\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~372_q\)) # (\ROM_instrucao|memROM~18_combout\ & 
-- ((\MemoriaRAM|ram~388_q\))) ) ) ) # ( !\MemoriaRAM|ram~396_q\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~372_q\)) # (\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~388_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~372_q\,
	datab => \MemoriaRAM|ALT_INV_ram~380_q\,
	datac => \MemoriaRAM|ALT_INV_ram~388_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~396_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~635_combout\);

-- Location: FF_X20_Y5_N25
\MemoriaRAM|ram~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~316_q\);

-- Location: FF_X20_Y5_N43
\MemoriaRAM|ram~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~686_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~308_q\);

-- Location: FF_X23_Y5_N32
\MemoriaRAM|ram~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~688_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~324_q\);

-- Location: FF_X23_Y5_N38
\MemoriaRAM|ram~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~332_q\);

-- Location: MLABCELL_X23_Y5_N39
\MemoriaRAM|ram~636\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~636_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~332_q\ ) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~316_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~324_q\ ) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~308_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000011110000111101010101010101010000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~316_q\,
	datab => \MemoriaRAM|ALT_INV_ram~308_q\,
	datac => \MemoriaRAM|ALT_INV_ram~324_q\,
	datad => \MemoriaRAM|ALT_INV_ram~332_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~636_combout\);

-- Location: LABCELL_X21_Y4_N45
\MemoriaRAM|ram~637\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~637_combout\ = ( \MemoriaRAM|ram~635_combout\ & ( \MemoriaRAM|ram~636_combout\ & ( (!\ROM_instrucao|memROM~19_combout\) # ((!\Processador|PC|DOUT\(2)) # (\MemoriaRAM|ram~634_combout\)) ) ) ) # ( !\MemoriaRAM|ram~635_combout\ & ( 
-- \MemoriaRAM|ram~636_combout\ & ( (!\ROM_instrucao|memROM~19_combout\) # ((\Processador|PC|DOUT\(2) & \MemoriaRAM|ram~634_combout\)) ) ) ) # ( \MemoriaRAM|ram~635_combout\ & ( !\MemoriaRAM|ram~636_combout\ & ( (\ROM_instrucao|memROM~19_combout\ & 
-- ((!\Processador|PC|DOUT\(2)) # (\MemoriaRAM|ram~634_combout\))) ) ) ) # ( !\MemoriaRAM|ram~635_combout\ & ( !\MemoriaRAM|ram~636_combout\ & ( (\ROM_instrucao|memROM~19_combout\ & (\Processador|PC|DOUT\(2) & \MemoriaRAM|ram~634_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011001100000011001111001100110011111111110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \MemoriaRAM|ALT_INV_ram~634_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~635_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~636_combout\,
	combout => \MemoriaRAM|ram~637_combout\);

-- Location: FF_X20_Y7_N10
\MemoriaRAM|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~52_q\);

-- Location: FF_X16_Y4_N49
\MemoriaRAM|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~116_q\);

-- Location: FF_X20_Y8_N1
\MemoriaRAM|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~68_q\);

-- Location: FF_X21_Y4_N38
\MemoriaRAM|ram~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~132_q\);

-- Location: LABCELL_X21_Y4_N36
\MemoriaRAM|ram~629\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~629_combout\ = ( \MemoriaRAM|ram~132_q\ & ( \ROM_instrucao|memROM~19_combout\ & ( (\ROM_instrucao|memROM~18_combout\) # (\MemoriaRAM|ram~116_q\) ) ) ) # ( !\MemoriaRAM|ram~132_q\ & ( \ROM_instrucao|memROM~19_combout\ & ( 
-- (\MemoriaRAM|ram~116_q\ & !\ROM_instrucao|memROM~18_combout\) ) ) ) # ( \MemoriaRAM|ram~132_q\ & ( !\ROM_instrucao|memROM~19_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~52_q\)) # (\ROM_instrucao|memROM~18_combout\ & 
-- ((\MemoriaRAM|ram~68_q\))) ) ) ) # ( !\MemoriaRAM|ram~132_q\ & ( !\ROM_instrucao|memROM~19_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~52_q\)) # (\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~68_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~52_q\,
	datab => \MemoriaRAM|ALT_INV_ram~116_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~68_q\,
	datae => \MemoriaRAM|ALT_INV_ram~132_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~629_combout\);

-- Location: FF_X17_Y6_N55
\MemoriaRAM|ram~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~268_q\);

-- Location: FF_X17_Y7_N58
\MemoriaRAM|ram~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~252_q\);

-- Location: LABCELL_X20_Y7_N57
\MemoriaRAM|ram~632\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~632_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( (\MemoriaRAM|ram~268_q\ & \ROM_instrucao|memROM~19_combout\) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( (\MemoriaRAM|ram~252_q\ & \ROM_instrucao|memROM~19_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~268_q\,
	datac => \MemoriaRAM|ALT_INV_ram~252_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~632_combout\);

-- Location: FF_X18_Y7_N5
\MemoriaRAM|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~60_q\);

-- Location: FF_X14_Y6_N22
\MemoriaRAM|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~76_q\);

-- Location: FF_X17_Y5_N25
\MemoriaRAM|ram~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~124_q\);

-- Location: FF_X21_Y4_N56
\MemoriaRAM|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~140_q\);

-- Location: LABCELL_X21_Y4_N54
\MemoriaRAM|ram~630\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~630_combout\ = ( \MemoriaRAM|ram~140_q\ & ( \ROM_instrucao|memROM~19_combout\ & ( (\MemoriaRAM|ram~124_q\) # (\ROM_instrucao|memROM~18_combout\) ) ) ) # ( !\MemoriaRAM|ram~140_q\ & ( \ROM_instrucao|memROM~19_combout\ & ( 
-- (!\ROM_instrucao|memROM~18_combout\ & \MemoriaRAM|ram~124_q\) ) ) ) # ( \MemoriaRAM|ram~140_q\ & ( !\ROM_instrucao|memROM~19_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~60_q\)) # (\ROM_instrucao|memROM~18_combout\ & 
-- ((\MemoriaRAM|ram~76_q\))) ) ) ) # ( !\MemoriaRAM|ram~140_q\ & ( !\ROM_instrucao|memROM~19_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~60_q\)) # (\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~76_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100000000101010100101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~60_q\,
	datac => \MemoriaRAM|ALT_INV_ram~76_q\,
	datad => \MemoriaRAM|ALT_INV_ram~124_q\,
	datae => \MemoriaRAM|ALT_INV_ram~140_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~630_combout\);

-- Location: FF_X17_Y6_N20
\MemoriaRAM|ram~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~244_q\);

-- Location: FF_X17_Y6_N44
\MemoriaRAM|ram~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~260_q\);

-- Location: LABCELL_X17_Y6_N42
\MemoriaRAM|ram~631\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~631_combout\ = ( \ROM_instrucao|memROM~19_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~244_q\)) # (\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~260_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~244_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~260_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~631_combout\);

-- Location: LABCELL_X21_Y4_N6
\MemoriaRAM|ram~633\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~633_combout\ = ( \MemoriaRAM|ram~630_combout\ & ( \MemoriaRAM|ram~631_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & (((\ROM_instrucao|memROM~13_combout\)) # (\MemoriaRAM|ram~629_combout\))) # (\ROM_instrucao|memROM~20_combout\ & 
-- (((!\ROM_instrucao|memROM~13_combout\) # (\MemoriaRAM|ram~632_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~630_combout\ & ( \MemoriaRAM|ram~631_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & (\MemoriaRAM|ram~629_combout\ & 
-- ((!\ROM_instrucao|memROM~13_combout\)))) # (\ROM_instrucao|memROM~20_combout\ & (((!\ROM_instrucao|memROM~13_combout\) # (\MemoriaRAM|ram~632_combout\)))) ) ) ) # ( \MemoriaRAM|ram~630_combout\ & ( !\MemoriaRAM|ram~631_combout\ & ( 
-- (!\ROM_instrucao|memROM~20_combout\ & (((\ROM_instrucao|memROM~13_combout\)) # (\MemoriaRAM|ram~629_combout\))) # (\ROM_instrucao|memROM~20_combout\ & (((\MemoriaRAM|ram~632_combout\ & \ROM_instrucao|memROM~13_combout\)))) ) ) ) # ( 
-- !\MemoriaRAM|ram~630_combout\ & ( !\MemoriaRAM|ram~631_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & (\MemoriaRAM|ram~629_combout\ & ((!\ROM_instrucao|memROM~13_combout\)))) # (\ROM_instrucao|memROM~20_combout\ & (((\MemoriaRAM|ram~632_combout\ & 
-- \ROM_instrucao|memROM~13_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000011010001001100111101110111000000110111011111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~629_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~632_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~630_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~631_combout\,
	combout => \MemoriaRAM|ram~633_combout\);

-- Location: LABCELL_X21_Y4_N18
\MemoriaRAM|ram~638\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~638_combout\ = ( \MemoriaRAM|ram~637_combout\ & ( \MemoriaRAM|ram~633_combout\ & ( ((!\ROM_instrucao|memROM~17_combout\ & (\MemoriaRAM|ram~623_combout\)) # (\ROM_instrucao|memROM~17_combout\ & ((\MemoriaRAM|ram~628_combout\)))) # 
-- (\ROM_instrucao|memROM~11_combout\) ) ) ) # ( !\MemoriaRAM|ram~637_combout\ & ( \MemoriaRAM|ram~633_combout\ & ( (!\ROM_instrucao|memROM~17_combout\ & (((\MemoriaRAM|ram~623_combout\)) # (\ROM_instrucao|memROM~11_combout\))) # 
-- (\ROM_instrucao|memROM~17_combout\ & (!\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~628_combout\)))) ) ) ) # ( \MemoriaRAM|ram~637_combout\ & ( !\MemoriaRAM|ram~633_combout\ & ( (!\ROM_instrucao|memROM~17_combout\ & 
-- (!\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~623_combout\))) # (\ROM_instrucao|memROM~17_combout\ & (((\MemoriaRAM|ram~628_combout\)) # (\ROM_instrucao|memROM~11_combout\))) ) ) ) # ( !\MemoriaRAM|ram~637_combout\ & ( 
-- !\MemoriaRAM|ram~633_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & ((!\ROM_instrucao|memROM~17_combout\ & (\MemoriaRAM|ram~623_combout\)) # (\ROM_instrucao|memROM~17_combout\ & ((\MemoriaRAM|ram~628_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~623_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~628_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~637_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~633_combout\,
	combout => \MemoriaRAM|ram~638_combout\);

-- Location: LABCELL_X20_Y6_N0
\Processador|MUX1|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[5]~4_combout\ = ( \MemoriaRAM|ram~638_combout\ & ( (\SW[5]~input_o\) # (\AndSW0_7|saida~3_combout\) ) ) # ( !\MemoriaRAM|ram~638_combout\ & ( (!\AndSW0_7|saida~3_combout\ & \SW[5]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \AndSW0_7|ALT_INV_saida~3_combout\,
	datac => \ALT_INV_SW[5]~input_o\,
	dataf => \MemoriaRAM|ALT_INV_ram~638_combout\,
	combout => \Processador|MUX1|saida_MUX[5]~4_combout\);

-- Location: LABCELL_X20_Y6_N42
\Processador|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~21_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & (((!\Processador|MUX1|saida_MUX[5]~4_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (((!\ROM_instrucao|memROM~30_combout\)) # (\Processador|PC|DOUT\(8)))) ) + 
-- ( \Processador|REGA|DOUT\(5) ) + ( \Processador|ULA1|Add1~18\ ))
-- \Processador|ULA1|Add1~22\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & (((!\Processador|MUX1|saida_MUX[5]~4_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (((!\ROM_instrucao|memROM~30_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(5) ) + ( \Processador|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~30_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[5]~4_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(5),
	cin => \Processador|ULA1|Add1~18\,
	sumout => \Processador|ULA1|Add1~21_sumout\,
	cout => \Processador|ULA1|Add1~22\);

-- Location: LABCELL_X17_Y5_N6
\Processador|flagIgual|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|flagIgual|DOUT~1_combout\ = ( !\ROM_instrucao|memROM~8_combout\ & ( \ROM_instrucao|memROM~9_combout\ & ( (!\ROM_instrucao|memROM~7_combout\ & (!\ROM_instrucao|memROM~24_combout\ & (\Processador|PC|DOUT\(0) & 
-- \ROM_instrucao|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(0),
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \Processador|flagIgual|DOUT~1_combout\);

-- Location: LABCELL_X20_Y6_N6
\Processador|flagIgual|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|flagIgual|DOUT~2_combout\ = ( \Processador|ULA1|Add1~13_sumout\ & ( \Processador|ULA1|Add1~9_sumout\ & ( (!\Processador|flagIgual|DOUT~1_combout\ & \Processador|flagIgual|DOUT~q\) ) ) ) # ( !\Processador|ULA1|Add1~13_sumout\ & ( 
-- \Processador|ULA1|Add1~9_sumout\ & ( (!\Processador|flagIgual|DOUT~1_combout\ & \Processador|flagIgual|DOUT~q\) ) ) ) # ( \Processador|ULA1|Add1~13_sumout\ & ( !\Processador|ULA1|Add1~9_sumout\ & ( (!\Processador|flagIgual|DOUT~1_combout\ & 
-- \Processador|flagIgual|DOUT~q\) ) ) ) # ( !\Processador|ULA1|Add1~13_sumout\ & ( !\Processador|ULA1|Add1~9_sumout\ & ( (!\Processador|flagIgual|DOUT~1_combout\ & (((\Processador|flagIgual|DOUT~q\)))) # (\Processador|flagIgual|DOUT~1_combout\ & 
-- (!\Processador|ULA1|Add1~1_sumout\ & (!\Processador|ULA1|Add1~5_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100011111000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ULA1|ALT_INV_Add1~1_sumout\,
	datab => \Processador|ULA1|ALT_INV_Add1~5_sumout\,
	datac => \Processador|flagIgual|ALT_INV_DOUT~1_combout\,
	datad => \Processador|flagIgual|ALT_INV_DOUT~q\,
	datae => \Processador|ULA1|ALT_INV_Add1~13_sumout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \Processador|flagIgual|DOUT~2_combout\);

-- Location: LABCELL_X17_Y5_N0
\ROM_instrucao|memROM~31\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~31_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( \ROM_instrucao|memROM~5_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \ROM_instrucao|memROM~31_combout\);

-- Location: IOIBUF_X54_Y15_N55
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LABCELL_X21_Y6_N18
\Processador|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~25_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & (((\Processador|MUX1|saida_MUX[6]~5_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~31_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add0~22\ ))
-- \Processador|ULA1|Add0~26\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & (((\Processador|MUX1|saida_MUX[6]~5_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (!\Processador|PC|DOUT\(8) & (\ROM_instrucao|memROM~31_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~31_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(6),
	cin => \Processador|ULA1|Add0~22\,
	sumout => \Processador|ULA1|Add0~25_sumout\,
	cout => \Processador|ULA1|Add0~26\);

-- Location: LABCELL_X21_Y7_N42
\Processador|REGA|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|REGA|DOUT[6]~feeder_combout\ = ( \Processador|ULA1|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA1|ALT_INV_Add0~25_sumout\,
	combout => \Processador|REGA|DOUT[6]~feeder_combout\);

-- Location: LABCELL_X21_Y7_N45
\Processador|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[6]~6_combout\ = ( \Processador|ULA1|Add1~25_sumout\ & ( ((!\Processador|decoder|Equal10~0_combout\ & ((\Processador|MUX1|saida_MUX[6]~5_combout\))) # (\Processador|decoder|Equal10~0_combout\ & (\ROM_instrucao|memROM~21_combout\))) 
-- # (\Processador|decoder|saida~2_combout\) ) ) # ( !\Processador|ULA1|Add1~25_sumout\ & ( (!\Processador|decoder|saida~2_combout\ & ((!\Processador|decoder|Equal10~0_combout\ & ((\Processador|MUX1|saida_MUX[6]~5_combout\))) # 
-- (\Processador|decoder|Equal10~0_combout\ & (\ROM_instrucao|memROM~21_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111010000000000011101111111110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \Processador|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	datad => \Processador|decoder|ALT_INV_saida~2_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \Processador|ULA1|saida[6]~6_combout\);

-- Location: FF_X21_Y7_N44
\Processador|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|REGA|DOUT[6]~feeder_combout\,
	asdata => \Processador|ULA1|saida[6]~6_combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	ena => \Processador|decoder|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(6));

-- Location: FF_X21_Y4_N44
\MemoriaRAM|ram~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~229_q\);

-- Location: FF_X21_Y3_N58
\MemoriaRAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~37_q\);

-- Location: FF_X20_Y8_N47
\MemoriaRAM|ram~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~101_q\);

-- Location: LABCELL_X20_Y8_N45
\MemoriaRAM|ram~649\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~649_combout\ = ( \MemoriaRAM|ram~101_q\ & ( \ROM_instrucao|memROM~19_combout\ & ( (!\Processador|PC|DOUT\(2)) # (\MemoriaRAM|ram~229_q\) ) ) ) # ( !\MemoriaRAM|ram~101_q\ & ( \ROM_instrucao|memROM~19_combout\ & ( (\MemoriaRAM|ram~229_q\ & 
-- \Processador|PC|DOUT\(2)) ) ) ) # ( \MemoriaRAM|ram~101_q\ & ( !\ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~37_q\ ) ) ) # ( !\MemoriaRAM|ram~101_q\ & ( !\ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~37_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~229_q\,
	datac => \MemoriaRAM|ALT_INV_ram~37_q\,
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	datae => \MemoriaRAM|ALT_INV_ram~101_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~649_combout\);

-- Location: FF_X17_Y7_N32
\MemoriaRAM|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~141_q\);

-- Location: FF_X17_Y7_N14
\MemoriaRAM|ram~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~269_q\);

-- Location: FF_X16_Y7_N4
\MemoriaRAM|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~77_q\);

-- Location: LABCELL_X17_Y7_N33
\MemoriaRAM|ram~652\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~652_combout\ = ( \Processador|PC|DOUT\(2) & ( \ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~269_q\ ) ) ) # ( !\Processador|PC|DOUT\(2) & ( \ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~141_q\ ) ) ) # ( 
-- \Processador|PC|DOUT\(2) & ( !\ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~77_q\ ) ) ) # ( !\Processador|PC|DOUT\(2) & ( !\ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~77_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100110011001100110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~141_q\,
	datac => \MemoriaRAM|ALT_INV_ram~269_q\,
	datad => \MemoriaRAM|ALT_INV_ram~77_q\,
	datae => \Processador|PC|ALT_INV_DOUT\(2),
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~652_combout\);

-- Location: FF_X16_Y6_N1
\MemoriaRAM|ram~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~237_q\);

-- Location: FF_X16_Y7_N19
\MemoriaRAM|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~109_q\);

-- Location: LABCELL_X16_Y3_N0
\MemoriaRAM|ram~45feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~45feeder_combout\ = ( \Processador|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(6),
	combout => \MemoriaRAM|ram~45feeder_combout\);

-- Location: FF_X16_Y3_N2
\MemoriaRAM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~45feeder_combout\,
	ena => \MemoriaRAM|ram~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~45_q\);

-- Location: LABCELL_X17_Y7_N3
\MemoriaRAM|ram~650\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~650_combout\ = ( \MemoriaRAM|ram~45_q\ & ( \ROM_instrucao|memROM~19_combout\ & ( (!\Processador|PC|DOUT\(2) & ((\MemoriaRAM|ram~109_q\))) # (\Processador|PC|DOUT\(2) & (\MemoriaRAM|ram~237_q\)) ) ) ) # ( !\MemoriaRAM|ram~45_q\ & ( 
-- \ROM_instrucao|memROM~19_combout\ & ( (!\Processador|PC|DOUT\(2) & ((\MemoriaRAM|ram~109_q\))) # (\Processador|PC|DOUT\(2) & (\MemoriaRAM|ram~237_q\)) ) ) ) # ( \MemoriaRAM|ram~45_q\ & ( !\ROM_instrucao|memROM~19_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110101001101010011010100110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~237_q\,
	datab => \MemoriaRAM|ALT_INV_ram~109_q\,
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datae => \MemoriaRAM|ALT_INV_ram~45_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~650_combout\);

-- Location: FF_X17_Y6_N7
\MemoriaRAM|ram~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~261_q\);

-- Location: FF_X20_Y8_N41
\MemoriaRAM|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~69_q\);

-- Location: FF_X20_Y8_N32
\MemoriaRAM|ram~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~133_q\);

-- Location: LABCELL_X20_Y8_N30
\MemoriaRAM|ram~651\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~651_combout\ = ( \ROM_instrucao|memROM~19_combout\ & ( (!\Processador|PC|DOUT\(2) & ((\MemoriaRAM|ram~133_q\))) # (\Processador|PC|DOUT\(2) & (\MemoriaRAM|ram~261_q\)) ) ) # ( !\ROM_instrucao|memROM~19_combout\ & ( \MemoriaRAM|ram~69_q\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~261_q\,
	datab => \MemoriaRAM|ALT_INV_ram~69_q\,
	datac => \Processador|PC|ALT_INV_DOUT\(2),
	datad => \MemoriaRAM|ALT_INV_ram~133_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~651_combout\);

-- Location: LABCELL_X21_Y7_N0
\MemoriaRAM|ram~653\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~653_combout\ = ( \MemoriaRAM|ram~650_combout\ & ( \MemoriaRAM|ram~651_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (((\MemoriaRAM|ram~649_combout\)) # (\ROM_instrucao|memROM~13_combout\))) # (\ROM_instrucao|memROM~11_combout\ & 
-- ((!\ROM_instrucao|memROM~13_combout\) # ((\MemoriaRAM|ram~652_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~650_combout\ & ( \MemoriaRAM|ram~651_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~13_combout\ & 
-- (\MemoriaRAM|ram~649_combout\))) # (\ROM_instrucao|memROM~11_combout\ & ((!\ROM_instrucao|memROM~13_combout\) # ((\MemoriaRAM|ram~652_combout\)))) ) ) ) # ( \MemoriaRAM|ram~650_combout\ & ( !\MemoriaRAM|ram~651_combout\ & ( 
-- (!\ROM_instrucao|memROM~11_combout\ & (((\MemoriaRAM|ram~649_combout\)) # (\ROM_instrucao|memROM~13_combout\))) # (\ROM_instrucao|memROM~11_combout\ & (\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~652_combout\)))) ) ) ) # ( 
-- !\MemoriaRAM|ram~650_combout\ & ( !\MemoriaRAM|ram~651_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~649_combout\))) # (\ROM_instrucao|memROM~11_combout\ & (\ROM_instrucao|memROM~13_combout\ & 
-- ((\MemoriaRAM|ram~652_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101101001100010111010110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~649_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~652_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~650_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~651_combout\,
	combout => \MemoriaRAM|ram~653_combout\);

-- Location: FF_X21_Y5_N47
\MemoriaRAM|ram~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~686_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~309_q\);

-- Location: FF_X21_Y5_N11
\MemoriaRAM|ram~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~682_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~277_q\);

-- Location: LABCELL_X21_Y5_N9
\MemoriaRAM|ram~644\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~644_combout\ = ( \MemoriaRAM|ram~277_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( (!\ROM_instrucao|memROM~11_combout\) # (\MemoriaRAM|ram~309_q\) ) ) ) # ( !\MemoriaRAM|ram~277_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( 
-- (\MemoriaRAM|ram~309_q\ & \ROM_instrucao|memROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011111111110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~309_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~277_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \MemoriaRAM|ram~644_combout\);

-- Location: FF_X17_Y5_N52
\MemoriaRAM|ram~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~349_q\);

-- Location: FF_X19_Y4_N58
\MemoriaRAM|ram~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~381_q\);

-- Location: MLABCELL_X23_Y7_N24
\MemoriaRAM|ram~509feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~509feeder_combout\ = \Processador|REGA|DOUT\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|REGA|ALT_INV_DOUT\(6),
	combout => \MemoriaRAM|ram~509feeder_combout\);

-- Location: FF_X23_Y7_N26
\MemoriaRAM|ram~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~509feeder_combout\,
	ena => \MemoriaRAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~509_q\);

-- Location: FF_X19_Y3_N7
\MemoriaRAM|ram~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~477_q\);

-- Location: MLABCELL_X23_Y7_N6
\MemoriaRAM|ram~647\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~647_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~20_combout\ & ( \MemoriaRAM|ram~509_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~20_combout\ & ( \MemoriaRAM|ram~477_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~20_combout\ & ( \MemoriaRAM|ram~381_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~20_combout\ & ( \MemoriaRAM|ram~349_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100000000111111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~349_q\,
	datab => \MemoriaRAM|ALT_INV_ram~381_q\,
	datac => \MemoriaRAM|ALT_INV_ram~509_q\,
	datad => \MemoriaRAM|ALT_INV_ram~477_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \MemoriaRAM|ram~647_combout\);

-- Location: LABCELL_X16_Y3_N42
\MemoriaRAM|ram~341feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~341feeder_combout\ = ( \Processador|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(6),
	combout => \MemoriaRAM|ram~341feeder_combout\);

-- Location: FF_X16_Y3_N44
\MemoriaRAM|ram~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~341feeder_combout\,
	ena => \MemoriaRAM|ram~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~341_q\);

-- Location: LABCELL_X16_Y3_N51
\MemoriaRAM|ram~373feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~373feeder_combout\ = ( \Processador|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(6),
	combout => \MemoriaRAM|ram~373feeder_combout\);

-- Location: FF_X16_Y3_N52
\MemoriaRAM|ram~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~373feeder_combout\,
	ena => \MemoriaRAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~373_q\);

-- Location: FF_X20_Y3_N47
\MemoriaRAM|ram~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~469_q\);

-- Location: FF_X19_Y3_N32
\MemoriaRAM|ram~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~501_q\);

-- Location: LABCELL_X19_Y3_N30
\MemoriaRAM|ram~646\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~646_combout\ = ( \MemoriaRAM|ram~501_q\ & ( \ROM_instrucao|memROM~20_combout\ & ( (\ROM_instrucao|memROM~11_combout\) # (\MemoriaRAM|ram~469_q\) ) ) ) # ( !\MemoriaRAM|ram~501_q\ & ( \ROM_instrucao|memROM~20_combout\ & ( 
-- (\MemoriaRAM|ram~469_q\ & !\ROM_instrucao|memROM~11_combout\) ) ) ) # ( \MemoriaRAM|ram~501_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~341_q\)) # (\ROM_instrucao|memROM~11_combout\ & 
-- ((\MemoriaRAM|ram~373_q\))) ) ) ) # ( !\MemoriaRAM|ram~501_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~341_q\)) # (\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~373_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~341_q\,
	datab => \MemoriaRAM|ALT_INV_ram~373_q\,
	datac => \MemoriaRAM|ALT_INV_ram~469_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~501_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \MemoriaRAM|ram~646_combout\);

-- Location: FF_X21_Y3_N44
\MemoriaRAM|ram~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~285_q\);

-- Location: FF_X20_Y5_N37
\MemoriaRAM|ram~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~317_q\);

-- Location: LABCELL_X21_Y3_N45
\MemoriaRAM|ram~645\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~645_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~20_combout\ & ( \MemoriaRAM|ram~317_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~20_combout\ & ( \MemoriaRAM|ram~285_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~285_q\,
	datad => \MemoriaRAM|ALT_INV_ram~317_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \MemoriaRAM|ram~645_combout\);

-- Location: LABCELL_X21_Y7_N36
\MemoriaRAM|ram~648\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~648_combout\ = ( \MemoriaRAM|ram~646_combout\ & ( \MemoriaRAM|ram~645_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & (((\ROM_instrucao|memROM~19_combout\)) # (\MemoriaRAM|ram~644_combout\))) # (\ROM_instrucao|memROM~13_combout\ & 
-- (((!\ROM_instrucao|memROM~19_combout\) # (\MemoriaRAM|ram~647_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~646_combout\ & ( \MemoriaRAM|ram~645_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~644_combout\ & 
-- (!\ROM_instrucao|memROM~19_combout\))) # (\ROM_instrucao|memROM~13_combout\ & (((!\ROM_instrucao|memROM~19_combout\) # (\MemoriaRAM|ram~647_combout\)))) ) ) ) # ( \MemoriaRAM|ram~646_combout\ & ( !\MemoriaRAM|ram~645_combout\ & ( 
-- (!\ROM_instrucao|memROM~13_combout\ & (((\ROM_instrucao|memROM~19_combout\)) # (\MemoriaRAM|ram~644_combout\))) # (\ROM_instrucao|memROM~13_combout\ & (((\ROM_instrucao|memROM~19_combout\ & \MemoriaRAM|ram~647_combout\)))) ) ) ) # ( 
-- !\MemoriaRAM|ram~646_combout\ & ( !\MemoriaRAM|ram~645_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~644_combout\ & (!\ROM_instrucao|memROM~19_combout\))) # (\ROM_instrucao|memROM~13_combout\ & (((\ROM_instrucao|memROM~19_combout\ & 
-- \MemoriaRAM|ram~647_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101110000011100110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~644_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~647_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~646_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~645_combout\,
	combout => \MemoriaRAM|ram~648_combout\);

-- Location: FF_X20_Y7_N13
\MemoriaRAM|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~53_q\);

-- Location: FF_X16_Y7_N56
\MemoriaRAM|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~61_q\);

-- Location: LABCELL_X16_Y7_N57
\MemoriaRAM|ram~640\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~640_combout\ = ( !\ROM_instrucao|memROM~20_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~61_q\ ) ) ) # ( !\ROM_instrucao|memROM~20_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~53_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000000000111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~53_q\,
	datad => \MemoriaRAM|ALT_INV_ram~61_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~640_combout\);

-- Location: FF_X17_Y6_N34
\MemoriaRAM|ram~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~245_q\);

-- Location: FF_X17_Y5_N1
\MemoriaRAM|ram~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~125_q\);

-- Location: FF_X16_Y4_N46
\MemoriaRAM|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~117_q\);

-- Location: FF_X17_Y7_N56
\MemoriaRAM|ram~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~253_q\);

-- Location: LABCELL_X17_Y7_N54
\MemoriaRAM|ram~642\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~642_combout\ = ( \MemoriaRAM|ram~253_q\ & ( \ROM_instrucao|memROM~20_combout\ & ( (\ROM_instrucao|memROM~13_combout\) # (\MemoriaRAM|ram~245_q\) ) ) ) # ( !\MemoriaRAM|ram~253_q\ & ( \ROM_instrucao|memROM~20_combout\ & ( 
-- (\MemoriaRAM|ram~245_q\ & !\ROM_instrucao|memROM~13_combout\) ) ) ) # ( \MemoriaRAM|ram~253_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~117_q\))) # (\ROM_instrucao|memROM~13_combout\ & 
-- (\MemoriaRAM|ram~125_q\)) ) ) ) # ( !\MemoriaRAM|ram~253_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~117_q\))) # (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~125_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001101010101000000000101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~245_q\,
	datab => \MemoriaRAM|ALT_INV_ram~125_q\,
	datac => \MemoriaRAM|ALT_INV_ram~117_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~253_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \MemoriaRAM|ram~642_combout\);

-- Location: MLABCELL_X18_Y7_N9
\MemoriaRAM|ram~21feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~21feeder_combout\ = ( \Processador|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(6),
	combout => \MemoriaRAM|ram~21feeder_combout\);

-- Location: FF_X18_Y7_N11
\MemoriaRAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~21feeder_combout\,
	ena => \MemoriaRAM|ram~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~21_q\);

-- Location: FF_X18_Y7_N56
\MemoriaRAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~29_q\);

-- Location: MLABCELL_X18_Y7_N54
\MemoriaRAM|ram~639\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~639_combout\ = ( \MemoriaRAM|ram~29_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( (\ROM_instrucao|memROM~13_combout\) # (\MemoriaRAM|ram~21_q\) ) ) ) # ( !\MemoriaRAM|ram~29_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( 
-- (\MemoriaRAM|ram~21_q\ & !\ROM_instrucao|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~21_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~29_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \MemoriaRAM|ram~639_combout\);

-- Location: FF_X17_Y3_N44
\MemoriaRAM|ram~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~93_q\);

-- Location: LABCELL_X17_Y3_N0
\MemoriaRAM|ram~85feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~85feeder_combout\ = ( \Processador|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(6),
	combout => \MemoriaRAM|ram~85feeder_combout\);

-- Location: FF_X17_Y3_N1
\MemoriaRAM|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~85feeder_combout\,
	ena => \MemoriaRAM|ram~690_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~85_q\);

-- Location: FF_X18_Y3_N10
\MemoriaRAM|ram~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~213_q\);

-- Location: FF_X16_Y6_N56
\MemoriaRAM|ram~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~221_q\);

-- Location: LABCELL_X16_Y6_N54
\MemoriaRAM|ram~641\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~641_combout\ = ( \MemoriaRAM|ram~221_q\ & ( \ROM_instrucao|memROM~20_combout\ & ( (\ROM_instrucao|memROM~13_combout\) # (\MemoriaRAM|ram~213_q\) ) ) ) # ( !\MemoriaRAM|ram~221_q\ & ( \ROM_instrucao|memROM~20_combout\ & ( 
-- (\MemoriaRAM|ram~213_q\ & !\ROM_instrucao|memROM~13_combout\) ) ) ) # ( \MemoriaRAM|ram~221_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~85_q\))) # (\ROM_instrucao|memROM~13_combout\ & 
-- (\MemoriaRAM|ram~93_q\)) ) ) ) # ( !\MemoriaRAM|ram~221_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~85_q\))) # (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~93_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101010101001100110101010100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~93_q\,
	datab => \MemoriaRAM|ALT_INV_ram~85_q\,
	datac => \MemoriaRAM|ALT_INV_ram~213_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~221_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \MemoriaRAM|ram~641_combout\);

-- Location: LABCELL_X21_Y7_N54
\MemoriaRAM|ram~643\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~643_combout\ = ( \MemoriaRAM|ram~639_combout\ & ( \MemoriaRAM|ram~641_combout\ & ( (!\ROM_instrucao|memROM~11_combout\) # ((!\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~640_combout\)) # (\ROM_instrucao|memROM~19_combout\ & 
-- ((\MemoriaRAM|ram~642_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~639_combout\ & ( \MemoriaRAM|ram~641_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & (\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~640_combout\))) # 
-- (\ROM_instrucao|memROM~19_combout\ & ((!\ROM_instrucao|memROM~11_combout\) # ((\MemoriaRAM|ram~642_combout\)))) ) ) ) # ( \MemoriaRAM|ram~639_combout\ & ( !\MemoriaRAM|ram~641_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & 
-- ((!\ROM_instrucao|memROM~11_combout\) # ((\MemoriaRAM|ram~640_combout\)))) # (\ROM_instrucao|memROM~19_combout\ & (\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~642_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~639_combout\ & ( 
-- !\MemoriaRAM|ram~641_combout\ & ( (\ROM_instrucao|memROM~11_combout\ & ((!\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~640_combout\)) # (\ROM_instrucao|memROM~19_combout\ & ((\MemoriaRAM|ram~642_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~640_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~642_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~639_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~641_combout\,
	combout => \MemoriaRAM|ram~643_combout\);

-- Location: FF_X21_Y5_N19
\MemoriaRAM|ram~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~684_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~293_q\);

-- Location: FF_X23_Y5_N56
\MemoriaRAM|ram~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~301_q\);

-- Location: MLABCELL_X23_Y5_N54
\MemoriaRAM|ram~654\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~654_combout\ = ( \MemoriaRAM|ram~301_q\ & ( \ROM_instrucao|memROM~13_combout\ & ( !\ROM_instrucao|memROM~20_combout\ ) ) ) # ( \MemoriaRAM|ram~301_q\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (\MemoriaRAM|ram~293_q\ & 
-- !\ROM_instrucao|memROM~20_combout\) ) ) ) # ( !\MemoriaRAM|ram~301_q\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (\MemoriaRAM|ram~293_q\ & !\ROM_instrucao|memROM~20_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~293_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~301_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~654_combout\);

-- Location: FF_X19_Y4_N28
\MemoriaRAM|ram~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~389_q\);

-- Location: FF_X18_Y6_N40
\MemoriaRAM|ram~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~397_q\);

-- Location: MLABCELL_X18_Y4_N0
\MemoriaRAM|ram~517feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~517feeder_combout\ = ( \Processador|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(6),
	combout => \MemoriaRAM|ram~517feeder_combout\);

-- Location: FF_X18_Y4_N1
\MemoriaRAM|ram~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~517feeder_combout\,
	ena => \MemoriaRAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~517_q\);

-- Location: FF_X21_Y7_N8
\MemoriaRAM|ram~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~525_q\);

-- Location: LABCELL_X21_Y7_N6
\MemoriaRAM|ram~657\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~657_combout\ = ( \MemoriaRAM|ram~525_q\ & ( \ROM_instrucao|memROM~13_combout\ & ( (\ROM_instrucao|memROM~20_combout\) # (\MemoriaRAM|ram~397_q\) ) ) ) # ( !\MemoriaRAM|ram~525_q\ & ( \ROM_instrucao|memROM~13_combout\ & ( 
-- (\MemoriaRAM|ram~397_q\ & !\ROM_instrucao|memROM~20_combout\) ) ) ) # ( \MemoriaRAM|ram~525_q\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & (\MemoriaRAM|ram~389_q\)) # (\ROM_instrucao|memROM~20_combout\ & 
-- ((\MemoriaRAM|ram~517_q\))) ) ) ) # ( !\MemoriaRAM|ram~525_q\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~20_combout\ & (\MemoriaRAM|ram~389_q\)) # (\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~517_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~389_q\,
	datab => \MemoriaRAM|ALT_INV_ram~397_q\,
	datac => \MemoriaRAM|ALT_INV_ram~517_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~525_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~657_combout\);

-- Location: FF_X23_Y5_N35
\MemoriaRAM|ram~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~688_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~325_q\);

-- Location: FF_X23_Y5_N50
\MemoriaRAM|ram~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~333_q\);

-- Location: MLABCELL_X23_Y5_N48
\MemoriaRAM|ram~655\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~655_combout\ = ( \MemoriaRAM|ram~333_q\ & ( \ROM_instrucao|memROM~13_combout\ & ( !\ROM_instrucao|memROM~20_combout\ ) ) ) # ( \MemoriaRAM|ram~333_q\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (\MemoriaRAM|ram~325_q\ & 
-- !\ROM_instrucao|memROM~20_combout\) ) ) ) # ( !\MemoriaRAM|ram~333_q\ & ( !\ROM_instrucao|memROM~13_combout\ & ( (\MemoriaRAM|ram~325_q\ & !\ROM_instrucao|memROM~20_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~325_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~333_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~655_combout\);

-- Location: FF_X20_Y3_N1
\MemoriaRAM|ram~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~357_q\);

-- Location: LABCELL_X14_Y4_N27
\MemoriaRAM|ram~485feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~485feeder_combout\ = ( \Processador|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(6),
	combout => \MemoriaRAM|ram~485feeder_combout\);

-- Location: FF_X14_Y4_N29
\MemoriaRAM|ram~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~485feeder_combout\,
	ena => \MemoriaRAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~485_q\);

-- Location: LABCELL_X19_Y8_N45
\MemoriaRAM|ram~365feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~365feeder_combout\ = ( \Processador|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(6),
	combout => \MemoriaRAM|ram~365feeder_combout\);

-- Location: FF_X19_Y8_N46
\MemoriaRAM|ram~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~365feeder_combout\,
	ena => \MemoriaRAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~365_q\);

-- Location: FF_X23_Y6_N17
\MemoriaRAM|ram~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~493_q\);

-- Location: MLABCELL_X23_Y6_N15
\MemoriaRAM|ram~656\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~656_combout\ = ( \MemoriaRAM|ram~493_q\ & ( \ROM_instrucao|memROM~20_combout\ & ( (\ROM_instrucao|memROM~13_combout\) # (\MemoriaRAM|ram~485_q\) ) ) ) # ( !\MemoriaRAM|ram~493_q\ & ( \ROM_instrucao|memROM~20_combout\ & ( 
-- (\MemoriaRAM|ram~485_q\ & !\ROM_instrucao|memROM~13_combout\) ) ) ) # ( \MemoriaRAM|ram~493_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~357_q\)) # (\ROM_instrucao|memROM~13_combout\ & 
-- ((\MemoriaRAM|ram~365_q\))) ) ) ) # ( !\MemoriaRAM|ram~493_q\ & ( !\ROM_instrucao|memROM~20_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~357_q\)) # (\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~365_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~357_q\,
	datab => \MemoriaRAM|ALT_INV_ram~485_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~365_q\,
	datae => \MemoriaRAM|ALT_INV_ram~493_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	combout => \MemoriaRAM|ram~656_combout\);

-- Location: LABCELL_X21_Y7_N12
\MemoriaRAM|ram~658\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~658_combout\ = ( \MemoriaRAM|ram~655_combout\ & ( \MemoriaRAM|ram~656_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & (((\ROM_instrucao|memROM~11_combout\)) # (\MemoriaRAM|ram~654_combout\))) # (\ROM_instrucao|memROM~19_combout\ & 
-- (((!\ROM_instrucao|memROM~11_combout\) # (\MemoriaRAM|ram~657_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~655_combout\ & ( \MemoriaRAM|ram~656_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~654_combout\ & 
-- ((!\ROM_instrucao|memROM~11_combout\)))) # (\ROM_instrucao|memROM~19_combout\ & (((!\ROM_instrucao|memROM~11_combout\) # (\MemoriaRAM|ram~657_combout\)))) ) ) ) # ( \MemoriaRAM|ram~655_combout\ & ( !\MemoriaRAM|ram~656_combout\ & ( 
-- (!\ROM_instrucao|memROM~19_combout\ & (((\ROM_instrucao|memROM~11_combout\)) # (\MemoriaRAM|ram~654_combout\))) # (\ROM_instrucao|memROM~19_combout\ & (((\MemoriaRAM|ram~657_combout\ & \ROM_instrucao|memROM~11_combout\)))) ) ) ) # ( 
-- !\MemoriaRAM|ram~655_combout\ & ( !\MemoriaRAM|ram~656_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~654_combout\ & ((!\ROM_instrucao|memROM~11_combout\)))) # (\ROM_instrucao|memROM~19_combout\ & (((\MemoriaRAM|ram~657_combout\ & 
-- \ROM_instrucao|memROM~11_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000011010100001111001101011111000000110101111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~654_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~657_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~655_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~656_combout\,
	combout => \MemoriaRAM|ram~658_combout\);

-- Location: LABCELL_X21_Y7_N24
\MemoriaRAM|ram~659\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~659_combout\ = ( \MemoriaRAM|ram~643_combout\ & ( \MemoriaRAM|ram~658_combout\ & ( (!\ROM_instrucao|memROM~17_combout\ & (((!\ROM_instrucao|memROM~18_combout\)) # (\MemoriaRAM|ram~653_combout\))) # (\ROM_instrucao|memROM~17_combout\ & 
-- (((\ROM_instrucao|memROM~18_combout\) # (\MemoriaRAM|ram~648_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~643_combout\ & ( \MemoriaRAM|ram~658_combout\ & ( (!\ROM_instrucao|memROM~17_combout\ & (\MemoriaRAM|ram~653_combout\ & 
-- ((\ROM_instrucao|memROM~18_combout\)))) # (\ROM_instrucao|memROM~17_combout\ & (((\ROM_instrucao|memROM~18_combout\) # (\MemoriaRAM|ram~648_combout\)))) ) ) ) # ( \MemoriaRAM|ram~643_combout\ & ( !\MemoriaRAM|ram~658_combout\ & ( 
-- (!\ROM_instrucao|memROM~17_combout\ & (((!\ROM_instrucao|memROM~18_combout\)) # (\MemoriaRAM|ram~653_combout\))) # (\ROM_instrucao|memROM~17_combout\ & (((\MemoriaRAM|ram~648_combout\ & !\ROM_instrucao|memROM~18_combout\)))) ) ) ) # ( 
-- !\MemoriaRAM|ram~643_combout\ & ( !\MemoriaRAM|ram~658_combout\ & ( (!\ROM_instrucao|memROM~17_combout\ & (\MemoriaRAM|ram~653_combout\ & ((\ROM_instrucao|memROM~18_combout\)))) # (\ROM_instrucao|memROM~17_combout\ & (((\MemoriaRAM|ram~648_combout\ & 
-- !\ROM_instrucao|memROM~18_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000100110011110100010000000011011101111100111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~653_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~648_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~643_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~658_combout\,
	combout => \MemoriaRAM|ram~659_combout\);

-- Location: LABCELL_X21_Y7_N30
\Processador|MUX1|saida_MUX[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[6]~5_combout\ = ( \AndSW0_7|saida~3_combout\ & ( \MemoriaRAM|ram~659_combout\ ) ) # ( !\AndSW0_7|saida~3_combout\ & ( \MemoriaRAM|ram~659_combout\ & ( \SW[6]~input_o\ ) ) ) # ( !\AndSW0_7|saida~3_combout\ & ( 
-- !\MemoriaRAM|ram~659_combout\ & ( \SW[6]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000000001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[6]~input_o\,
	datae => \AndSW0_7|ALT_INV_saida~3_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~659_combout\,
	combout => \Processador|MUX1|saida_MUX[6]~5_combout\);

-- Location: LABCELL_X20_Y6_N45
\Processador|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~25_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & (((!\Processador|MUX1|saida_MUX[6]~5_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (((!\ROM_instrucao|memROM~31_combout\)) # (\Processador|PC|DOUT\(8)))) ) + 
-- ( \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add1~22\ ))
-- \Processador|ULA1|Add1~26\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & (((!\Processador|MUX1|saida_MUX[6]~5_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (((!\ROM_instrucao|memROM~31_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101101010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~31_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[6]~5_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(6),
	cin => \Processador|ULA1|Add1~22\,
	sumout => \Processador|ULA1|Add1~25_sumout\,
	cout => \Processador|ULA1|Add1~26\);

-- Location: IOIBUF_X54_Y16_N55
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X20_Y3_N32
\MemoriaRAM|ram~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~732_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~470_q\);

-- Location: FF_X19_Y3_N44
\MemoriaRAM|ram~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~736_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~502_q\);

-- Location: LABCELL_X19_Y3_N12
\MemoriaRAM|ram~675\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~675_combout\ = ( \ROM_instrucao|memROM~19_combout\ & ( \ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~502_q\ ) ) ) # ( \ROM_instrucao|memROM~19_combout\ & ( !\ROM_instrucao|memROM~11_combout\ & ( \MemoriaRAM|ram~470_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~470_q\,
	datab => \MemoriaRAM|ALT_INV_ram~502_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~675_combout\);

-- Location: FF_X18_Y4_N35
\MemoriaRAM|ram~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~740_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~486_q\);

-- Location: FF_X17_Y4_N5
\MemoriaRAM|ram~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~744_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~518_q\);

-- Location: LABCELL_X17_Y4_N3
\MemoriaRAM|ram~677\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~677_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( (\ROM_instrucao|memROM~19_combout\ & \MemoriaRAM|ram~518_q\) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( (\ROM_instrucao|memROM~19_combout\ & \MemoriaRAM|ram~486_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~486_q\,
	datad => \MemoriaRAM|ALT_INV_ram~518_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~677_combout\);

-- Location: MLABCELL_X23_Y6_N6
\MemoriaRAM|ram~494feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~494feeder_combout\ = \Processador|REGA|DOUT\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|REGA|ALT_INV_DOUT\(7),
	combout => \MemoriaRAM|ram~494feeder_combout\);

-- Location: FF_X23_Y6_N7
\MemoriaRAM|ram~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~494feeder_combout\,
	ena => \MemoriaRAM|ram~752_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~494_q\);

-- Location: FF_X21_Y6_N56
\MemoriaRAM|ram~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~760_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~526_q\);

-- Location: LABCELL_X21_Y6_N54
\MemoriaRAM|ram~678\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~678_combout\ = ( \MemoriaRAM|ram~526_q\ & ( \ROM_instrucao|memROM~19_combout\ & ( (\ROM_instrucao|memROM~11_combout\) # (\MemoriaRAM|ram~494_q\) ) ) ) # ( !\MemoriaRAM|ram~526_q\ & ( \ROM_instrucao|memROM~19_combout\ & ( 
-- (\MemoriaRAM|ram~494_q\ & !\ROM_instrucao|memROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~494_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~526_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~678_combout\);

-- Location: FF_X19_Y3_N10
\MemoriaRAM|ram~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~748_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~478_q\);

-- Location: FF_X23_Y6_N44
\MemoriaRAM|ram~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~756_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~510_q\);

-- Location: MLABCELL_X23_Y6_N42
\MemoriaRAM|ram~676\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~676_combout\ = ( \MemoriaRAM|ram~510_q\ & ( \ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~19_combout\ ) ) ) # ( \MemoriaRAM|ram~510_q\ & ( !\ROM_instrucao|memROM~11_combout\ & ( (\MemoriaRAM|ram~478_q\ & 
-- \ROM_instrucao|memROM~19_combout\) ) ) ) # ( !\MemoriaRAM|ram~510_q\ & ( !\ROM_instrucao|memROM~11_combout\ & ( (\MemoriaRAM|ram~478_q\ & \ROM_instrucao|memROM~19_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~478_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~510_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~676_combout\);

-- Location: LABCELL_X17_Y6_N36
\MemoriaRAM|ram~679\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~679_combout\ = ( \MemoriaRAM|ram~678_combout\ & ( \MemoriaRAM|ram~676_combout\ & ( ((!\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~675_combout\)) # (\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~677_combout\)))) # 
-- (\ROM_instrucao|memROM~13_combout\) ) ) ) # ( !\MemoriaRAM|ram~678_combout\ & ( \MemoriaRAM|ram~676_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (((\MemoriaRAM|ram~675_combout\)) # (\ROM_instrucao|memROM~13_combout\))) # 
-- (\ROM_instrucao|memROM~18_combout\ & (!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~677_combout\)))) ) ) ) # ( \MemoriaRAM|ram~678_combout\ & ( !\MemoriaRAM|ram~676_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & 
-- (!\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~675_combout\))) # (\ROM_instrucao|memROM~18_combout\ & (((\MemoriaRAM|ram~677_combout\)) # (\ROM_instrucao|memROM~13_combout\))) ) ) ) # ( !\MemoriaRAM|ram~678_combout\ & ( 
-- !\MemoriaRAM|ram~676_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & ((!\ROM_instrucao|memROM~18_combout\ & (\MemoriaRAM|ram~675_combout\)) # (\ROM_instrucao|memROM~18_combout\ & ((\MemoriaRAM|ram~677_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000110010101110100101010011011100011101101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~675_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~677_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~678_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~676_combout\,
	combout => \MemoriaRAM|ram~679_combout\);

-- Location: FF_X19_Y7_N10
\MemoriaRAM|ram~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~716_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~382_q\);

-- Location: LABCELL_X19_Y4_N0
\MemoriaRAM|ram~398feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~398feeder_combout\ = ( \Processador|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(7),
	combout => \MemoriaRAM|ram~398feeder_combout\);

-- Location: FF_X19_Y4_N2
\MemoriaRAM|ram~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~398feeder_combout\,
	ena => \MemoriaRAM|ram~728_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~398_q\);

-- Location: LABCELL_X16_Y3_N54
\MemoriaRAM|ram~374feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~374feeder_combout\ = ( \Processador|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(7),
	combout => \MemoriaRAM|ram~374feeder_combout\);

-- Location: FF_X16_Y3_N56
\MemoriaRAM|ram~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~374feeder_combout\,
	ena => \MemoriaRAM|ram~700_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~374_q\);

-- Location: FF_X19_Y4_N53
\MemoriaRAM|ram~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~704_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~390_q\);

-- Location: MLABCELL_X18_Y4_N42
\MemoriaRAM|ram~673\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~673_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~398_q\ ) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~382_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~390_q\ ) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~374_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~382_q\,
	datab => \MemoriaRAM|ALT_INV_ram~398_q\,
	datac => \MemoriaRAM|ALT_INV_ram~374_q\,
	datad => \MemoriaRAM|ALT_INV_ram~390_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~673_combout\);

-- Location: FF_X20_Y5_N40
\MemoriaRAM|ram~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~708_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~318_q\);

-- Location: MLABCELL_X23_Y5_N18
\MemoriaRAM|ram~334feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~334feeder_combout\ = ( \Processador|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(7),
	combout => \MemoriaRAM|ram~334feeder_combout\);

-- Location: FF_X23_Y5_N19
\MemoriaRAM|ram~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~334feeder_combout\,
	ena => \MemoriaRAM|ram~720_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~334_q\);

-- Location: MLABCELL_X23_Y5_N6
\MemoriaRAM|ram~326feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~326feeder_combout\ = ( \Processador|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(7),
	combout => \MemoriaRAM|ram~326feeder_combout\);

-- Location: FF_X23_Y5_N8
\MemoriaRAM|ram~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~326feeder_combout\,
	ena => \MemoriaRAM|ram~688_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~326_q\);

-- Location: FF_X20_Y5_N58
\MemoriaRAM|ram~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~686_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~310_q\);

-- Location: MLABCELL_X23_Y5_N33
\MemoriaRAM|ram~671\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~671_combout\ = ( \ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~334_q\ ) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( \ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~318_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~326_q\ ) ) ) # ( !\ROM_instrucao|memROM~18_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( \MemoriaRAM|ram~310_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~318_q\,
	datab => \MemoriaRAM|ALT_INV_ram~334_q\,
	datac => \MemoriaRAM|ALT_INV_ram~326_q\,
	datad => \MemoriaRAM|ALT_INV_ram~310_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~671_combout\);

-- Location: FF_X20_Y3_N58
\MemoriaRAM|ram~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~696_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~358_q\);

-- Location: FF_X14_Y5_N35
\MemoriaRAM|ram~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~692_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~342_q\);

-- Location: FF_X19_Y7_N28
\MemoriaRAM|ram~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~712_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~350_q\);

-- Location: FF_X14_Y5_N2
\MemoriaRAM|ram~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~724_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~366_q\);

-- Location: LABCELL_X14_Y5_N0
\MemoriaRAM|ram~672\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~672_combout\ = ( \MemoriaRAM|ram~366_q\ & ( \ROM_instrucao|memROM~18_combout\ & ( (\ROM_instrucao|memROM~13_combout\) # (\MemoriaRAM|ram~358_q\) ) ) ) # ( !\MemoriaRAM|ram~366_q\ & ( \ROM_instrucao|memROM~18_combout\ & ( 
-- (\MemoriaRAM|ram~358_q\ & !\ROM_instrucao|memROM~13_combout\) ) ) ) # ( \MemoriaRAM|ram~366_q\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~342_q\)) # (\ROM_instrucao|memROM~13_combout\ & 
-- ((\MemoriaRAM|ram~350_q\))) ) ) ) # ( !\MemoriaRAM|ram~366_q\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~342_q\)) # (\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~350_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~358_q\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~342_q\,
	datad => \MemoriaRAM|ALT_INV_ram~350_q\,
	datae => \MemoriaRAM|ALT_INV_ram~366_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~672_combout\);

-- Location: FF_X21_Y5_N40
\MemoriaRAM|ram~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~682_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~278_q\);

-- Location: FF_X23_Y6_N59
\MemoriaRAM|ram~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~718_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~302_q\);

-- Location: FF_X21_Y5_N22
\MemoriaRAM|ram~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~684_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~294_q\);

-- Location: FF_X17_Y8_N46
\MemoriaRAM|ram~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~706_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~286_q\);

-- Location: MLABCELL_X23_Y6_N0
\MemoriaRAM|ram~670\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~670_combout\ = ( \ROM_instrucao|memROM~13_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~302_q\ ) ) ) # ( !\ROM_instrucao|memROM~13_combout\ & ( \ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~294_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~13_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~286_q\ ) ) ) # ( !\ROM_instrucao|memROM~13_combout\ & ( !\ROM_instrucao|memROM~18_combout\ & ( \MemoriaRAM|ram~278_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000001111111100001111000011110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~278_q\,
	datab => \MemoriaRAM|ALT_INV_ram~302_q\,
	datac => \MemoriaRAM|ALT_INV_ram~294_q\,
	datad => \MemoriaRAM|ALT_INV_ram~286_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~670_combout\);

-- Location: LABCELL_X17_Y6_N12
\MemoriaRAM|ram~674\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~674_combout\ = ( \MemoriaRAM|ram~672_combout\ & ( \MemoriaRAM|ram~670_combout\ & ( (!\ROM_instrucao|memROM~11_combout\) # ((!\ROM_instrucao|memROM~19_combout\ & ((\MemoriaRAM|ram~671_combout\))) # (\ROM_instrucao|memROM~19_combout\ & 
-- (\MemoriaRAM|ram~673_combout\))) ) ) ) # ( !\MemoriaRAM|ram~672_combout\ & ( \MemoriaRAM|ram~670_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (((!\ROM_instrucao|memROM~19_combout\)))) # (\ROM_instrucao|memROM~11_combout\ & 
-- ((!\ROM_instrucao|memROM~19_combout\ & ((\MemoriaRAM|ram~671_combout\))) # (\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~673_combout\)))) ) ) ) # ( \MemoriaRAM|ram~672_combout\ & ( !\MemoriaRAM|ram~670_combout\ & ( 
-- (!\ROM_instrucao|memROM~11_combout\ & (((\ROM_instrucao|memROM~19_combout\)))) # (\ROM_instrucao|memROM~11_combout\ & ((!\ROM_instrucao|memROM~19_combout\ & ((\MemoriaRAM|ram~671_combout\))) # (\ROM_instrucao|memROM~19_combout\ & 
-- (\MemoriaRAM|ram~673_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~672_combout\ & ( !\MemoriaRAM|ram~670_combout\ & ( (\ROM_instrucao|memROM~11_combout\ & ((!\ROM_instrucao|memROM~19_combout\ & ((\MemoriaRAM|ram~671_combout\))) # 
-- (\ROM_instrucao|memROM~19_combout\ & (\MemoriaRAM|ram~673_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100010001000001011011101110101111000100011010111110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~673_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~671_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~672_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~670_combout\,
	combout => \MemoriaRAM|ram~674_combout\);

-- Location: FF_X18_Y3_N58
\MemoriaRAM|ram~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~730_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~214_q\);

-- Location: FF_X17_Y6_N26
\MemoriaRAM|ram~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~734_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~246_q\);

-- Location: LABCELL_X17_Y6_N24
\MemoriaRAM|ram~665\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~665_combout\ = ( \ROM_instrucao|memROM~19_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~214_q\)) # (\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~246_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001100001111110000110000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~214_q\,
	datad => \MemoriaRAM|ALT_INV_ram~246_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~665_combout\);

-- Location: FF_X16_Y6_N49
\MemoriaRAM|ram~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~750_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~238_q\);

-- Location: FF_X17_Y6_N59
\MemoriaRAM|ram~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~758_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~270_q\);

-- Location: LABCELL_X17_Y6_N57
\MemoriaRAM|ram~668\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~668_combout\ = ( \ROM_instrucao|memROM~19_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~238_q\)) # (\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~270_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~238_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~270_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~668_combout\);

-- Location: FF_X21_Y4_N53
\MemoriaRAM|ram~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~738_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~230_q\);

-- Location: FF_X17_Y6_N47
\MemoriaRAM|ram~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~742_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~262_q\);

-- Location: LABCELL_X17_Y6_N45
\MemoriaRAM|ram~667\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~667_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( (\ROM_instrucao|memROM~19_combout\ & \MemoriaRAM|ram~262_q\) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( (\ROM_instrucao|memROM~19_combout\ & \MemoriaRAM|ram~230_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~230_q\,
	datad => \MemoriaRAM|ALT_INV_ram~262_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \MemoriaRAM|ram~667_combout\);

-- Location: FF_X16_Y6_N40
\MemoriaRAM|ram~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~746_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~222_q\);

-- Location: FF_X18_Y8_N14
\MemoriaRAM|ram~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~754_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~254_q\);

-- Location: MLABCELL_X18_Y8_N12
\MemoriaRAM|ram~666\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~666_combout\ = ( \MemoriaRAM|ram~254_q\ & ( \ROM_instrucao|memROM~19_combout\ & ( (\ROM_instrucao|memROM~11_combout\) # (\MemoriaRAM|ram~222_q\) ) ) ) # ( !\MemoriaRAM|ram~254_q\ & ( \ROM_instrucao|memROM~19_combout\ & ( 
-- (\MemoriaRAM|ram~222_q\ & !\ROM_instrucao|memROM~11_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~222_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~254_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	combout => \MemoriaRAM|ram~666_combout\);

-- Location: LABCELL_X17_Y6_N0
\MemoriaRAM|ram~669\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~669_combout\ = ( \MemoriaRAM|ram~667_combout\ & ( \MemoriaRAM|ram~666_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (((\MemoriaRAM|ram~665_combout\)) # (\ROM_instrucao|memROM~13_combout\))) # (\ROM_instrucao|memROM~18_combout\ & 
-- ((!\ROM_instrucao|memROM~13_combout\) # ((\MemoriaRAM|ram~668_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~667_combout\ & ( \MemoriaRAM|ram~666_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (((\MemoriaRAM|ram~665_combout\)) # 
-- (\ROM_instrucao|memROM~13_combout\))) # (\ROM_instrucao|memROM~18_combout\ & (\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~668_combout\)))) ) ) ) # ( \MemoriaRAM|ram~667_combout\ & ( !\MemoriaRAM|ram~666_combout\ & ( 
-- (!\ROM_instrucao|memROM~18_combout\ & (!\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~665_combout\))) # (\ROM_instrucao|memROM~18_combout\ & ((!\ROM_instrucao|memROM~13_combout\) # ((\MemoriaRAM|ram~668_combout\)))) ) ) ) # ( 
-- !\MemoriaRAM|ram~667_combout\ & ( !\MemoriaRAM|ram~666_combout\ & ( (!\ROM_instrucao|memROM~18_combout\ & (!\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~665_combout\))) # (\ROM_instrucao|memROM~18_combout\ & (\ROM_instrucao|memROM~13_combout\ & 
-- ((\MemoriaRAM|ram~668_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~665_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~668_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~667_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~666_combout\,
	combout => \MemoriaRAM|ram~669_combout\);

-- Location: FF_X16_Y7_N2
\MemoriaRAM|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~719_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~78_q\);

-- Location: FF_X20_Y7_N23
\MemoriaRAM|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~685_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~54_q\);

-- Location: FF_X20_Y8_N5
\MemoriaRAM|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~687_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~70_q\);

-- Location: FF_X16_Y7_N14
\MemoriaRAM|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~707_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~62_q\);

-- Location: LABCELL_X16_Y7_N12
\MemoriaRAM|ram~661\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~661_combout\ = ( \MemoriaRAM|ram~62_q\ & ( \ROM_instrucao|memROM~18_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~70_q\))) # (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~78_q\)) ) ) ) # ( 
-- !\MemoriaRAM|ram~62_q\ & ( \ROM_instrucao|memROM~18_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~70_q\))) # (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~78_q\)) ) ) ) # ( \MemoriaRAM|ram~62_q\ & ( 
-- !\ROM_instrucao|memROM~18_combout\ & ( (\ROM_instrucao|memROM~13_combout\) # (\MemoriaRAM|ram~54_q\) ) ) ) # ( !\MemoriaRAM|ram~62_q\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (\MemoriaRAM|ram~54_q\ & !\ROM_instrucao|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100111111111100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~78_q\,
	datab => \MemoriaRAM|ALT_INV_ram~54_q\,
	datac => \MemoriaRAM|ALT_INV_ram~70_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~62_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~661_combout\);

-- Location: LABCELL_X16_Y3_N3
\MemoriaRAM|ram~46feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~46feeder_combout\ = ( \Processador|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(7),
	combout => \MemoriaRAM|ram~46feeder_combout\);

-- Location: FF_X16_Y3_N5
\MemoriaRAM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~46feeder_combout\,
	ena => \MemoriaRAM|ram~717_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~46_q\);

-- Location: LABCELL_X21_Y3_N9
\MemoriaRAM|ram~38feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~38feeder_combout\ = ( \Processador|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(7),
	combout => \MemoriaRAM|ram~38feeder_combout\);

-- Location: FF_X21_Y3_N10
\MemoriaRAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~38feeder_combout\,
	ena => \MemoriaRAM|ram~683_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~38_q\);

-- Location: FF_X18_Y7_N29
\MemoriaRAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~681_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~22_q\);

-- Location: FF_X18_Y7_N50
\MemoriaRAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~705_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~30_q\);

-- Location: MLABCELL_X18_Y7_N48
\MemoriaRAM|ram~660\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~660_combout\ = ( \MemoriaRAM|ram~30_q\ & ( \ROM_instrucao|memROM~18_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~38_q\))) # (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~46_q\)) ) ) ) # ( 
-- !\MemoriaRAM|ram~30_q\ & ( \ROM_instrucao|memROM~18_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~38_q\))) # (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~46_q\)) ) ) ) # ( \MemoriaRAM|ram~30_q\ & ( 
-- !\ROM_instrucao|memROM~18_combout\ & ( (\ROM_instrucao|memROM~13_combout\) # (\MemoriaRAM|ram~22_q\) ) ) ) # ( !\MemoriaRAM|ram~30_q\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (\MemoriaRAM|ram~22_q\ & !\ROM_instrucao|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011111111111100110011010101010011001101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~46_q\,
	datab => \MemoriaRAM|ALT_INV_ram~38_q\,
	datac => \MemoriaRAM|ALT_INV_ram~22_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~30_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~660_combout\);

-- Location: LABCELL_X17_Y3_N39
\MemoriaRAM|ram~94feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~94feeder_combout\ = ( \Processador|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(7),
	combout => \MemoriaRAM|ram~94feeder_combout\);

-- Location: FF_X17_Y3_N41
\MemoriaRAM|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~94feeder_combout\,
	ena => \MemoriaRAM|ram~710_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~94_q\);

-- Location: FF_X20_Y8_N11
\MemoriaRAM|ram~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~694_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~102_q\);

-- Location: FF_X17_Y3_N10
\MemoriaRAM|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~690_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~86_q\);

-- Location: FF_X16_Y7_N50
\MemoriaRAM|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~722_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~110_q\);

-- Location: LABCELL_X16_Y7_N48
\MemoriaRAM|ram~662\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~662_combout\ = ( \MemoriaRAM|ram~110_q\ & ( \ROM_instrucao|memROM~18_combout\ & ( (\ROM_instrucao|memROM~13_combout\) # (\MemoriaRAM|ram~102_q\) ) ) ) # ( !\MemoriaRAM|ram~110_q\ & ( \ROM_instrucao|memROM~18_combout\ & ( 
-- (\MemoriaRAM|ram~102_q\ & !\ROM_instrucao|memROM~13_combout\) ) ) ) # ( \MemoriaRAM|ram~110_q\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~86_q\))) # (\ROM_instrucao|memROM~13_combout\ & 
-- (\MemoriaRAM|ram~94_q\)) ) ) ) # ( !\MemoriaRAM|ram~110_q\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~86_q\))) # (\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~94_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~94_q\,
	datab => \MemoriaRAM|ALT_INV_ram~102_q\,
	datac => \MemoriaRAM|ALT_INV_ram~86_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~110_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~662_combout\);

-- Location: FF_X16_Y4_N53
\MemoriaRAM|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~698_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~118_q\);

-- Location: FF_X17_Y5_N44
\MemoriaRAM|ram~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~714_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~126_q\);

-- Location: FF_X21_Y4_N11
\MemoriaRAM|ram~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~702_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~134_q\);

-- Location: FF_X16_Y4_N32
\MemoriaRAM|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~726_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~142_q\);

-- Location: LABCELL_X16_Y4_N30
\MemoriaRAM|ram~663\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~663_combout\ = ( \MemoriaRAM|ram~142_q\ & ( \ROM_instrucao|memROM~18_combout\ & ( (\MemoriaRAM|ram~134_q\) # (\ROM_instrucao|memROM~13_combout\) ) ) ) # ( !\MemoriaRAM|ram~142_q\ & ( \ROM_instrucao|memROM~18_combout\ & ( 
-- (!\ROM_instrucao|memROM~13_combout\ & \MemoriaRAM|ram~134_q\) ) ) ) # ( \MemoriaRAM|ram~142_q\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~118_q\)) # (\ROM_instrucao|memROM~13_combout\ & 
-- ((\MemoriaRAM|ram~126_q\))) ) ) ) # ( !\MemoriaRAM|ram~142_q\ & ( !\ROM_instrucao|memROM~18_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & (\MemoriaRAM|ram~118_q\)) # (\ROM_instrucao|memROM~13_combout\ & ((\MemoriaRAM|ram~126_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000111100000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~118_q\,
	datab => \MemoriaRAM|ALT_INV_ram~126_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~134_q\,
	datae => \MemoriaRAM|ALT_INV_ram~142_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	combout => \MemoriaRAM|ram~663_combout\);

-- Location: LABCELL_X17_Y6_N48
\MemoriaRAM|ram~664\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~664_combout\ = ( \MemoriaRAM|ram~662_combout\ & ( \MemoriaRAM|ram~663_combout\ & ( ((!\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~660_combout\))) # (\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~661_combout\))) # 
-- (\ROM_instrucao|memROM~19_combout\) ) ) ) # ( !\MemoriaRAM|ram~662_combout\ & ( \MemoriaRAM|ram~663_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (((\MemoriaRAM|ram~660_combout\ & !\ROM_instrucao|memROM~19_combout\)))) # 
-- (\ROM_instrucao|memROM~11_combout\ & (((\ROM_instrucao|memROM~19_combout\)) # (\MemoriaRAM|ram~661_combout\))) ) ) ) # ( \MemoriaRAM|ram~662_combout\ & ( !\MemoriaRAM|ram~663_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & 
-- (((\ROM_instrucao|memROM~19_combout\) # (\MemoriaRAM|ram~660_combout\)))) # (\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~661_combout\ & ((!\ROM_instrucao|memROM~19_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~662_combout\ & ( 
-- !\MemoriaRAM|ram~663_combout\ & ( (!\ROM_instrucao|memROM~19_combout\ & ((!\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~660_combout\))) # (\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~661_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100000000000111011100110000011101001100110001110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~661_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~660_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~662_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~663_combout\,
	combout => \MemoriaRAM|ram~664_combout\);

-- Location: LABCELL_X17_Y6_N30
\MemoriaRAM|ram~680\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~680_combout\ = ( \MemoriaRAM|ram~669_combout\ & ( \MemoriaRAM|ram~664_combout\ & ( (!\ROM_instrucao|memROM~17_combout\) # ((!\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~674_combout\))) # (\ROM_instrucao|memROM~20_combout\ & 
-- (\MemoriaRAM|ram~679_combout\))) ) ) ) # ( !\MemoriaRAM|ram~669_combout\ & ( \MemoriaRAM|ram~664_combout\ & ( (!\ROM_instrucao|memROM~17_combout\ & (((!\ROM_instrucao|memROM~20_combout\)))) # (\ROM_instrucao|memROM~17_combout\ & 
-- ((!\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~674_combout\))) # (\ROM_instrucao|memROM~20_combout\ & (\MemoriaRAM|ram~679_combout\)))) ) ) ) # ( \MemoriaRAM|ram~669_combout\ & ( !\MemoriaRAM|ram~664_combout\ & ( 
-- (!\ROM_instrucao|memROM~17_combout\ & (((\ROM_instrucao|memROM~20_combout\)))) # (\ROM_instrucao|memROM~17_combout\ & ((!\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~674_combout\))) # (\ROM_instrucao|memROM~20_combout\ & 
-- (\MemoriaRAM|ram~679_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~669_combout\ & ( !\MemoriaRAM|ram~664_combout\ & ( (\ROM_instrucao|memROM~17_combout\ & ((!\ROM_instrucao|memROM~20_combout\ & ((\MemoriaRAM|ram~674_combout\))) # 
-- (\ROM_instrucao|memROM~20_combout\ & (\MemoriaRAM|ram~679_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110001000011010011110111000001111100011100110111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~679_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~674_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~669_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~664_combout\,
	combout => \MemoriaRAM|ram~680_combout\);

-- Location: LABCELL_X17_Y6_N27
\Processador|MUX1|saida_MUX[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX1|saida_MUX[7]~6_combout\ = ( \MemoriaRAM|ram~680_combout\ & ( (\AndSW0_7|saida~3_combout\) # (\SW[7]~input_o\) ) ) # ( !\MemoriaRAM|ram~680_combout\ & ( (\SW[7]~input_o\ & !\AndSW0_7|saida~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[7]~input_o\,
	datac => \AndSW0_7|ALT_INV_saida~3_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~680_combout\,
	combout => \Processador|MUX1|saida_MUX[7]~6_combout\);

-- Location: LABCELL_X21_Y6_N21
\Processador|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~29_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & ((\Processador|MUX1|saida_MUX[7]~6_combout\))) # (\Processador|decoder|Equal10~0_combout\ & (\ROM_instrucao|memROM~20_combout\)) ) + ( \Processador|REGA|DOUT\(7) ) + ( 
-- \Processador|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[7]~6_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(7),
	cin => \Processador|ULA1|Add0~26\,
	sumout => \Processador|ULA1|Add0~29_sumout\);

-- Location: LABCELL_X20_Y6_N57
\Processador|REGA|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|REGA|DOUT[7]~feeder_combout\ = ( \Processador|ULA1|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA1|ALT_INV_Add0~29_sumout\,
	combout => \Processador|REGA|DOUT[7]~feeder_combout\);

-- Location: LABCELL_X20_Y6_N54
\Processador|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[7]~7_combout\ = ( \Processador|ULA1|Add1~29_sumout\ & ( ((!\Processador|decoder|Equal10~0_combout\ & \Processador|MUX1|saida_MUX[7]~6_combout\)) # (\Processador|decoder|saida~2_combout\) ) ) # ( !\Processador|ULA1|Add1~29_sumout\ & 
-- ( (!\Processador|decoder|saida~2_combout\ & (!\Processador|decoder|Equal10~0_combout\ & \Processador|MUX1|saida_MUX[7]~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|decoder|ALT_INV_saida~2_combout\,
	datac => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[7]~6_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \Processador|ULA1|saida[7]~7_combout\);

-- Location: FF_X20_Y6_N59
\Processador|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|REGA|DOUT[7]~feeder_combout\,
	asdata => \Processador|ULA1|saida[7]~7_combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	ena => \Processador|decoder|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(7));

-- Location: LABCELL_X20_Y6_N48
\Processador|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~29_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & ((!\Processador|MUX1|saida_MUX[7]~6_combout\))) # (\Processador|decoder|Equal10~0_combout\ & (!\ROM_instrucao|memROM~20_combout\)) ) + ( \Processador|REGA|DOUT\(7) ) + ( 
-- \Processador|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|REGA|ALT_INV_DOUT\(7),
	datab => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datac => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datad => \Processador|MUX1|ALT_INV_saida_MUX[7]~6_combout\,
	cin => \Processador|ULA1|Add1~26\,
	sumout => \Processador|ULA1|Add1~29_sumout\);

-- Location: LABCELL_X20_Y6_N12
\Processador|flagIgual|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|flagIgual|DOUT~0_combout\ = ( !\Processador|flagIgual|DOUT~1_combout\ & ( \Processador|ULA1|Add1~17_sumout\ & ( \Processador|flagIgual|DOUT~2_combout\ ) ) ) # ( \Processador|flagIgual|DOUT~1_combout\ & ( !\Processador|ULA1|Add1~17_sumout\ & ( 
-- (!\Processador|ULA1|Add1~21_sumout\ & (\Processador|flagIgual|DOUT~2_combout\ & (!\Processador|ULA1|Add1~25_sumout\ & !\Processador|ULA1|Add1~29_sumout\))) ) ) ) # ( !\Processador|flagIgual|DOUT~1_combout\ & ( !\Processador|ULA1|Add1~17_sumout\ & ( 
-- \Processador|flagIgual|DOUT~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001000000000000000110011001100110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ULA1|ALT_INV_Add1~21_sumout\,
	datab => \Processador|flagIgual|ALT_INV_DOUT~2_combout\,
	datac => \Processador|ULA1|ALT_INV_Add1~25_sumout\,
	datad => \Processador|ULA1|ALT_INV_Add1~29_sumout\,
	datae => \Processador|flagIgual|ALT_INV_DOUT~1_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \Processador|flagIgual|DOUT~0_combout\);

-- Location: FF_X20_Y6_N14
\Processador|flagIgual|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|flagIgual|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|flagIgual|DOUT~q\);

-- Location: LABCELL_X17_Y4_N54
\Processador|decoder|saidaMux~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saidaMux~0_combout\ = ( \ROM_instrucao|memROM~26_combout\ & ( (!\ROM_instrucao|memROM~24_combout\ & (\ROM_instrucao|memROM~22_combout\ & !\ROM_instrucao|memROM~25_combout\)) ) ) # ( !\ROM_instrucao|memROM~26_combout\ & ( 
-- (\ROM_instrucao|memROM~25_combout\ & ((!\ROM_instrucao|memROM~22_combout\ & (\ROM_instrucao|memROM~24_combout\)) # (\ROM_instrucao|memROM~22_combout\ & ((\Processador|flagIgual|DOUT~q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010011000000000101001100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~24_combout\,
	datab => \Processador|flagIgual|ALT_INV_DOUT~q\,
	datac => \ROM_instrucao|ALT_INV_memROM~22_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~25_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~26_combout\,
	combout => \Processador|decoder|saidaMux~0_combout\);

-- Location: FF_X16_Y4_N2
\Processador|reg_endretorno|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|incrementaPC|Add0~1_sumout\,
	ena => \Processador|decoder|Equal10~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|reg_endretorno|DOUT\(0));

-- Location: MLABCELL_X18_Y5_N57
\Processador|MUX4x1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[0]~0_combout\ = ( \Processador|incrementaPC|Add0~1_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & ((!\Processador|decoder|Equal14~0_combout\) # ((\Processador|reg_endretorno|DOUT\(0))))) # 
-- (\Processador|decoder|saidaMux~0_combout\ & (((\ROM_instrucao|memROM~13_combout\)))) ) ) # ( !\Processador|incrementaPC|Add0~1_sumout\ & ( (!\Processador|decoder|saidaMux~0_combout\ & (\Processador|decoder|Equal14~0_combout\ & 
-- ((\Processador|reg_endretorno|DOUT\(0))))) # (\Processador|decoder|saidaMux~0_combout\ & (((\ROM_instrucao|memROM~13_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100100111000001010010011110001101101011111000110110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saidaMux~0_combout\,
	datab => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datad => \Processador|reg_endretorno|ALT_INV_DOUT\(0),
	dataf => \Processador|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[0]~0_combout\);

-- Location: FF_X18_Y5_N59
\Processador|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|MUX4x1|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X16_Y4_N36
\AndSW0_7|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndSW0_7|saida~0_combout\ = ( \ROM_instrucao|memROM~14_combout\ & ( (!\Processador|PC|DOUT\(8) & (((\ROM_instrucao|memROM~15_combout\ & !\Processador|PC|DOUT[4]~DUPLICATE_q\)) # (\ROM_instrucao|memROM~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001110000010100000111000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \Processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	combout => \AndSW0_7|saida~0_combout\);

-- Location: LABCELL_X14_Y4_N54
\AndLedR|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndLedR|saida~1_combout\ = ( !\ROM_instrucao|memROM~11_combout\ & ( !\AndSW0_7|saida~0_combout\ & ( (!\DecoderHabBloc|Equal0~0_combout\ & (!\ROM_instrucao|memROM~13_combout\ & (\ROM_instrucao|memROM~2_combout\ & \Processador|decoder|saida~0_combout\))) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DecoderHabBloc|ALT_INV_Equal0~0_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \Processador|decoder|ALT_INV_saida~0_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \AndSW0_7|ALT_INV_saida~0_combout\,
	combout => \AndLedR|saida~1_combout\);

-- Location: FF_X23_Y4_N25
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
	ena => \AndLedR|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(0));

-- Location: FF_X17_Y4_N31
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
	ena => \AndLedR|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(1));

-- Location: FF_X17_Y4_N49
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
	ena => \AndLedR|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(2));

-- Location: FF_X23_Y4_N28
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
	ena => \AndLedR|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(3));

-- Location: MLABCELL_X23_Y4_N42
\RegistradorLedR|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistradorLedR|DOUT[4]~feeder_combout\ = ( \Processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(4),
	combout => \RegistradorLedR|DOUT[4]~feeder_combout\);

-- Location: FF_X23_Y4_N43
\RegistradorLedR|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RegistradorLedR|DOUT[4]~feeder_combout\,
	ena => \AndLedR|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(4));

-- Location: MLABCELL_X23_Y4_N45
\RegistradorLedR|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistradorLedR|DOUT[5]~feeder_combout\ = ( \Processador|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(5),
	combout => \RegistradorLedR|DOUT[5]~feeder_combout\);

-- Location: FF_X23_Y4_N46
\RegistradorLedR|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RegistradorLedR|DOUT[5]~feeder_combout\,
	ena => \AndLedR|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(5));

-- Location: MLABCELL_X23_Y4_N36
\RegistradorLedR|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistradorLedR|DOUT[6]~feeder_combout\ = ( \Processador|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(6),
	combout => \RegistradorLedR|DOUT[6]~feeder_combout\);

-- Location: FF_X23_Y4_N37
\RegistradorLedR|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RegistradorLedR|DOUT[6]~feeder_combout\,
	ena => \AndLedR|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(6));

-- Location: MLABCELL_X23_Y4_N39
\RegistradorLedR|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistradorLedR|DOUT[7]~feeder_combout\ = ( \Processador|REGA|DOUT\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(7),
	combout => \RegistradorLedR|DOUT[7]~feeder_combout\);

-- Location: FF_X23_Y4_N40
\RegistradorLedR|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RegistradorLedR|DOUT[7]~feeder_combout\,
	ena => \AndLedR|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(7));

-- Location: FF_X14_Y4_N5
\flipFlopLed1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \flipFlopLed1|DOUT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopLed1|DOUT~q\);

-- Location: LABCELL_X14_Y4_N39
\AndLedR|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndLedR|saida~0_combout\ = ( !\ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~2_combout\ & ( (!\DecoderHabBloc|Equal0~0_combout\ & \Processador|decoder|saida~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DecoderHabBloc|ALT_INV_Equal0~0_combout\,
	datac => \Processador|decoder|ALT_INV_saida~0_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \AndLedR|saida~0_combout\);

-- Location: LABCELL_X14_Y4_N0
\flipFlopLed1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flipFlopLed1|DOUT~0_combout\ = ( \ROM_instrucao|memROM~17_combout\ & ( \AndLedR|saida~0_combout\ & ( \flipFlopLed1|DOUT~q\ ) ) ) # ( !\ROM_instrucao|memROM~17_combout\ & ( \AndLedR|saida~0_combout\ & ( (!\Data_IN[0]~0_combout\ & (\flipFlopLed1|DOUT~q\)) 
-- # (\Data_IN[0]~0_combout\ & ((\Processador|REGA|DOUT\(0)))) ) ) ) # ( \ROM_instrucao|memROM~17_combout\ & ( !\AndLedR|saida~0_combout\ & ( \flipFlopLed1|DOUT~q\ ) ) ) # ( !\ROM_instrucao|memROM~17_combout\ & ( !\AndLedR|saida~0_combout\ & ( 
-- \flipFlopLed1|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001100001111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Data_IN[0]~0_combout\,
	datac => \flipFlopLed1|ALT_INV_DOUT~q\,
	datad => \Processador|REGA|ALT_INV_DOUT\(0),
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \AndLedR|ALT_INV_saida~0_combout\,
	combout => \flipFlopLed1|DOUT~0_combout\);

-- Location: FF_X14_Y4_N4
\flipFlopLed1|DOUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \flipFlopLed1|DOUT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopLed1|DOUT~DUPLICATE_q\);

-- Location: LABCELL_X14_Y4_N48
\flipFlopLed2|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flipFlopLed2|DOUT~0_combout\ = ( \ROM_instrucao|memROM~17_combout\ & ( \Processador|REGA|DOUT\(0) & ( \flipFlopLed2|DOUT~q\ ) ) ) # ( !\ROM_instrucao|memROM~17_combout\ & ( \Processador|REGA|DOUT\(0) & ( ((!\ROM_instrucao|memROM~13_combout\ & 
-- (\ROM_instrucao|memROM~18_combout\ & \AndLedR|saida~0_combout\))) # (\flipFlopLed2|DOUT~q\) ) ) ) # ( \ROM_instrucao|memROM~17_combout\ & ( !\Processador|REGA|DOUT\(0) & ( \flipFlopLed2|DOUT~q\ ) ) ) # ( !\ROM_instrucao|memROM~17_combout\ & ( 
-- !\Processador|REGA|DOUT\(0) & ( (\flipFlopLed2|DOUT~q\ & (((!\ROM_instrucao|memROM~18_combout\) # (!\AndLedR|saida~0_combout\)) # (\ROM_instrucao|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010001010101010101010101010101010111010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \flipFlopLed2|ALT_INV_DOUT~q\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datad => \AndLedR|ALT_INV_saida~0_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	combout => \flipFlopLed2|DOUT~0_combout\);

-- Location: FF_X14_Y4_N2
\flipFlopLed2|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \flipFlopLed2|DOUT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopLed2|DOUT~q\);

-- Location: LABCELL_X20_Y3_N15
\AndHEX0|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX0|saida~0_combout\ = ( !\DecoderHabBloc|Equal0~0_combout\ & ( \ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (\Processador|decoder|saida~0_combout\ & (\AndHEX5|saida~0_combout\ & !\ROM_instrucao|memROM~13_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \Processador|decoder|ALT_INV_saida~0_combout\,
	datac => \AndHEX5|ALT_INV_saida~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \DecoderHabBloc|ALT_INV_Equal0~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \AndHEX0|saida~0_combout\);

-- Location: FF_X20_Y4_N2
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

-- Location: FF_X20_Y4_N32
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

-- Location: FF_X20_Y4_N5
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

-- Location: FF_X20_Y4_N35
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

-- Location: LABCELL_X20_Y4_N51
\decoderHEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX0|DOUT\(1) & ( (\RegistradorHEX0|DOUT\(0) & (!\RegistradorHEX0|DOUT\(2) & \RegistradorHEX0|DOUT\(3))) ) ) # ( !\RegistradorHEX0|DOUT\(1) & ( (!\RegistradorHEX0|DOUT\(0) & 
-- (\RegistradorHEX0|DOUT\(2) & !\RegistradorHEX0|DOUT\(3))) # (\RegistradorHEX0|DOUT\(0) & (!\RegistradorHEX0|DOUT\(2) $ (\RegistradorHEX0|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000010001011001100001000100000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX0|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(1),
	combout => \decoderHEX0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X20_Y4_N42
\decoderHEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX0|DOUT\(2) & ( (!\RegistradorHEX0|DOUT\(3) & (!\RegistradorHEX0|DOUT\(1) $ (!\RegistradorHEX0|DOUT\(0)))) # (\RegistradorHEX0|DOUT\(3) & ((!\RegistradorHEX0|DOUT\(0)) # 
-- (\RegistradorHEX0|DOUT\(1)))) ) ) # ( !\RegistradorHEX0|DOUT\(2) & ( (\RegistradorHEX0|DOUT\(3) & (\RegistradorHEX0|DOUT\(1) & \RegistradorHEX0|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101011111101001010101111110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(2),
	combout => \decoderHEX0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X20_Y4_N45
\decoderHEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX0|DOUT\(1) & ( (!\RegistradorHEX0|DOUT\(3) & (!\RegistradorHEX0|DOUT\(2) & !\RegistradorHEX0|DOUT\(0))) # (\RegistradorHEX0|DOUT\(3) & (\RegistradorHEX0|DOUT\(2))) ) ) # ( 
-- !\RegistradorHEX0|DOUT\(1) & ( (\RegistradorHEX0|DOUT\(3) & (\RegistradorHEX0|DOUT\(2) & !\RegistradorHEX0|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000010100101000001011010010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(1),
	combout => \decoderHEX0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X20_Y4_N15
\decoderHEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX0|DOUT\(1) & ( (!\RegistradorHEX0|DOUT\(0) & (!\RegistradorHEX0|DOUT\(2) & \RegistradorHEX0|DOUT\(3))) # (\RegistradorHEX0|DOUT\(0) & (\RegistradorHEX0|DOUT\(2))) ) ) # ( 
-- !\RegistradorHEX0|DOUT\(1) & ( (!\RegistradorHEX0|DOUT\(3) & (!\RegistradorHEX0|DOUT\(0) $ (!\RegistradorHEX0|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000000000101101001010000010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(1),
	combout => \decoderHEX0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X20_Y4_N39
\decoderHEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX0|DOUT\(1) & ( (\RegistradorHEX0|DOUT\(0) & !\RegistradorHEX0|DOUT\(3)) ) ) # ( !\RegistradorHEX0|DOUT\(1) & ( (!\RegistradorHEX0|DOUT\(2) & (\RegistradorHEX0|DOUT\(0))) # 
-- (\RegistradorHEX0|DOUT\(2) & ((!\RegistradorHEX0|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010000010111110101000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(1),
	combout => \decoderHEX0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X20_Y4_N21
\decoderHEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[5]~5_combout\ = ( \RegistradorHEX0|DOUT\(1) & ( (!\RegistradorHEX0|DOUT\(3) & ((!\RegistradorHEX0|DOUT\(2)) # (\RegistradorHEX0|DOUT\(0)))) ) ) # ( !\RegistradorHEX0|DOUT\(1) & ( (\RegistradorHEX0|DOUT\(0) & 
-- (!\RegistradorHEX0|DOUT\(2) $ (\RegistradorHEX0|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000101010100000000010111110101000000001111010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(1),
	combout => \decoderHEX0|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X20_Y4_N48
\decoderHEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX0|DOUT\(1) & ( (\RegistradorHEX0|DOUT\(0) & (\RegistradorHEX0|DOUT\(2) & !\RegistradorHEX0|DOUT\(3))) ) ) # ( !\RegistradorHEX0|DOUT\(1) & ( (!\RegistradorHEX0|DOUT\(2) & 
-- ((!\RegistradorHEX0|DOUT\(3)))) # (\RegistradorHEX0|DOUT\(2) & (!\RegistradorHEX0|DOUT\(0) & \RegistradorHEX0|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001010111100000000101000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(1),
	combout => \decoderHEX0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X14_Y4_N18
\AndHEX1|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX1|saida~0_combout\ = ( \ROM_instrucao|memROM~17_combout\ & ( !\DecoderHabBloc|Equal0~0_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (\Data_IN[0]~0_combout\ & (\ROM_instrucao|memROM~2_combout\ & \Processador|decoder|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \ALT_INV_Data_IN[0]~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \Processador|decoder|ALT_INV_saida~0_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \DecoderHabBloc|ALT_INV_Equal0~0_combout\,
	combout => \AndHEX1|saida~0_combout\);

-- Location: FF_X23_Y4_N5
\RegistradorHEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \AndHEX1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(1));

-- Location: FF_X23_Y4_N32
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

-- Location: FF_X23_Y4_N2
\RegistradorHEX1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \AndHEX1|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(3));

-- Location: FF_X23_Y4_N20
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

-- Location: MLABCELL_X23_Y4_N33
\decoderHEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX1|DOUT\(2) & ( (!\RegistradorHEX1|DOUT\(1) & (!\RegistradorHEX1|DOUT\(0) $ (\RegistradorHEX1|DOUT\(3)))) ) ) # ( !\RegistradorHEX1|DOUT\(2) & ( (\RegistradorHEX1|DOUT\(0) & 
-- (!\RegistradorHEX1|DOUT\(1) $ (\RegistradorHEX1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101000010100000010110100000000010101010000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(2),
	combout => \decoderHEX1|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X23_Y4_N48
\decoderHEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX1|DOUT\(0) & ( (!\RegistradorHEX1|DOUT\(3) & (\RegistradorHEX1|DOUT\(2) & !\RegistradorHEX1|DOUT\(1))) # (\RegistradorHEX1|DOUT\(3) & ((\RegistradorHEX1|DOUT\(1)))) ) ) # ( 
-- !\RegistradorHEX1|DOUT\(0) & ( (\RegistradorHEX1|DOUT\(2) & ((\RegistradorHEX1|DOUT\(1)) # (\RegistradorHEX1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(0),
	combout => \decoderHEX1|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X23_Y4_N51
\decoderHEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX1|DOUT\(2) & ( (\RegistradorHEX1|DOUT\(3) & ((!\RegistradorHEX1|DOUT\(0)) # (\RegistradorHEX1|DOUT\(1)))) ) ) # ( !\RegistradorHEX1|DOUT\(2) & ( (!\RegistradorHEX1|DOUT\(3) & 
-- (!\RegistradorHEX1|DOUT\(0) & \RegistradorHEX1|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010000010101010101000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(2),
	combout => \decoderHEX1|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X23_Y4_N30
\decoderHEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX1|DOUT\(2) & ( (!\RegistradorHEX1|DOUT\(1) & (!\RegistradorHEX1|DOUT\(3) & !\RegistradorHEX1|DOUT\(0))) # (\RegistradorHEX1|DOUT\(1) & ((\RegistradorHEX1|DOUT\(0)))) ) ) # ( 
-- !\RegistradorHEX1|DOUT\(2) & ( (!\RegistradorHEX1|DOUT\(1) & (!\RegistradorHEX1|DOUT\(3) & \RegistradorHEX1|DOUT\(0))) # (\RegistradorHEX1|DOUT\(1) & (\RegistradorHEX1|DOUT\(3) & !\RegistradorHEX1|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110100000000001011010000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(2),
	combout => \decoderHEX1|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X23_Y4_N0
\decoderHEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX1|DOUT\(2) & ( (!\RegistradorHEX1|DOUT\(3) & ((!\RegistradorHEX1|DOUT\(1)) # (\RegistradorHEX1|DOUT\(0)))) ) ) # ( !\RegistradorHEX1|DOUT\(2) & ( (\RegistradorHEX1|DOUT\(0) & 
-- ((!\RegistradorHEX1|DOUT\(1)) # (!\RegistradorHEX1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110000001100110011000011110011000000001111001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(2),
	combout => \decoderHEX1|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X23_Y4_N3
\decoderHEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[5]~5_combout\ = ( \RegistradorHEX1|DOUT\(2) & ( (\RegistradorHEX1|DOUT\(0) & (!\RegistradorHEX1|DOUT\(3) $ (!\RegistradorHEX1|DOUT\(1)))) ) ) # ( !\RegistradorHEX1|DOUT\(2) & ( (!\RegistradorHEX1|DOUT\(3) & 
-- ((\RegistradorHEX1|DOUT\(1)) # (\RegistradorHEX1|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010001000101010101000010001001000100001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(2),
	combout => \decoderHEX1|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X23_Y4_N18
\decoderHEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX1|DOUT\(0) & ( (!\RegistradorHEX1|DOUT\(3) & (!\RegistradorHEX1|DOUT\(1) $ (\RegistradorHEX1|DOUT\(2)))) ) ) # ( !\RegistradorHEX1|DOUT\(0) & ( (!\RegistradorHEX1|DOUT\(1) & 
-- (!\RegistradorHEX1|DOUT\(3) $ (\RegistradorHEX1|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000010100000000010101010000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(0),
	combout => \decoderHEX1|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X14_Y4_N30
\AndHEX2|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX2|saida~0_combout\ = ( \ROM_instrucao|memROM~17_combout\ & ( \AndLedR|saida~0_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & \ROM_instrucao|memROM~18_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \AndLedR|ALT_INV_saida~0_combout\,
	combout => \AndHEX2|saida~0_combout\);

-- Location: FF_X24_Y4_N38
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

-- Location: FF_X24_Y4_N19
\RegistradorHEX2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(3),
	sload => VCC,
	ena => \AndHEX2|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX2|DOUT\(3));

-- Location: FF_X24_Y4_N28
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

-- Location: FF_X24_Y4_N32
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

-- Location: LABCELL_X24_Y4_N51
\decoderHEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX2|DOUT\(2) & ( (!\RegistradorHEX2|DOUT\(1) & (!\RegistradorHEX2|DOUT\(0) $ (\RegistradorHEX2|DOUT\(3)))) ) ) # ( !\RegistradorHEX2|DOUT\(2) & ( (\RegistradorHEX2|DOUT\(0) & 
-- (!\RegistradorHEX2|DOUT\(3) $ (\RegistradorHEX2|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000101010100000000010110100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(2),
	combout => \decoderHEX2|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X24_Y4_N6
\decoderHEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX2|DOUT\(2) & ( (!\RegistradorHEX2|DOUT\(3) & (!\RegistradorHEX2|DOUT\(0) $ (!\RegistradorHEX2|DOUT\(1)))) # (\RegistradorHEX2|DOUT\(3) & ((!\RegistradorHEX2|DOUT\(0)) # 
-- (\RegistradorHEX2|DOUT\(1)))) ) ) # ( !\RegistradorHEX2|DOUT\(2) & ( (\RegistradorHEX2|DOUT\(3) & (\RegistradorHEX2|DOUT\(0) & \RegistradorHEX2|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100111100111100110011110011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(2),
	combout => \decoderHEX2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X24_Y4_N9
\decoderHEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX2|DOUT\(2) & ( (\RegistradorHEX2|DOUT\(3) & ((!\RegistradorHEX2|DOUT\(0)) # (\RegistradorHEX2|DOUT\(1)))) ) ) # ( !\RegistradorHEX2|DOUT\(2) & ( (!\RegistradorHEX2|DOUT\(0) & 
-- (!\RegistradorHEX2|DOUT\(3) & \RegistradorHEX2|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(2),
	combout => \decoderHEX2|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X24_Y4_N12
\decoderHEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX2|DOUT\(2) & ( (!\RegistradorHEX2|DOUT\(0) & (!\RegistradorHEX2|DOUT\(3) & !\RegistradorHEX2|DOUT\(1))) # (\RegistradorHEX2|DOUT\(0) & ((\RegistradorHEX2|DOUT\(1)))) ) ) # ( 
-- !\RegistradorHEX2|DOUT\(2) & ( (!\RegistradorHEX2|DOUT\(3) & (\RegistradorHEX2|DOUT\(0) & !\RegistradorHEX2|DOUT\(1))) # (\RegistradorHEX2|DOUT\(3) & (!\RegistradorHEX2|DOUT\(0) & \RegistradorHEX2|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000110000000011000011000011000000000011111100000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(2),
	combout => \decoderHEX2|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X24_Y4_N48
\decoderHEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX2|DOUT\(2) & ( (!\RegistradorHEX2|DOUT\(3) & ((!\RegistradorHEX2|DOUT\(1)) # (\RegistradorHEX2|DOUT\(0)))) ) ) # ( !\RegistradorHEX2|DOUT\(2) & ( (\RegistradorHEX2|DOUT\(0) & 
-- ((!\RegistradorHEX2|DOUT\(3)) # (!\RegistradorHEX2|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001100000011110000110011001100000011001100110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(2),
	combout => \decoderHEX2|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X24_Y4_N24
\decoderHEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[5]~5_combout\ = ( \RegistradorHEX2|DOUT\(0) & ( \RegistradorHEX2|DOUT\(2) & ( !\RegistradorHEX2|DOUT\(1) $ (!\RegistradorHEX2|DOUT\(3)) ) ) ) # ( \RegistradorHEX2|DOUT\(0) & ( !\RegistradorHEX2|DOUT\(2) & ( 
-- !\RegistradorHEX2|DOUT\(3) ) ) ) # ( !\RegistradorHEX2|DOUT\(0) & ( !\RegistradorHEX2|DOUT\(2) & ( (\RegistradorHEX2|DOUT\(1) & !\RegistradorHEX2|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000111111110000000000000000000000000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX2|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datae => \RegistradorHEX2|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(2),
	combout => \decoderHEX2|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X24_Y4_N15
\decoderHEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX2|DOUT\(1) & ( (\RegistradorHEX2|DOUT\(0) & (!\RegistradorHEX2|DOUT\(3) & \RegistradorHEX2|DOUT\(2))) ) ) # ( !\RegistradorHEX2|DOUT\(1) & ( (!\RegistradorHEX2|DOUT\(3) & 
-- ((!\RegistradorHEX2|DOUT\(2)))) # (\RegistradorHEX2|DOUT\(3) & (!\RegistradorHEX2|DOUT\(0) & \RegistradorHEX2|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001011000010110000101100001000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(1),
	combout => \decoderHEX2|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X16_Y4_N45
\Data_IN[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Data_IN[0]~1_combout\ = ( !\Processador|PC|DOUT\(8) & ( \ROM_instrucao|memROM~14_combout\ & ( (\ROM_instrucao|memROM~12_combout\ & (!\Processador|PC|DOUT[4]~DUPLICATE_q\ & \ROM_instrucao|memROM~16_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	datab => \Processador|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datae => \Processador|PC|ALT_INV_DOUT\(8),
	dataf => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	combout => \Data_IN[0]~1_combout\);

-- Location: LABCELL_X14_Y4_N15
\AndHEX3|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX3|saida~0_combout\ = ( \ROM_instrucao|memROM~17_combout\ & ( \ROM_instrucao|memROM~2_combout\ & ( (\Data_IN[0]~1_combout\ & (\Processador|decoder|saida~0_combout\ & (!\ROM_instrucao|memROM~11_combout\ & !\DecoderHabBloc|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Data_IN[0]~1_combout\,
	datab => \Processador|decoder|ALT_INV_saida~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datad => \DecoderHabBloc|ALT_INV_Equal0~0_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \AndHEX3|saida~0_combout\);

-- Location: FF_X24_Y4_N58
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

-- Location: LABCELL_X24_Y4_N54
\RegistradorHEX3|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistradorHEX3|DOUT[0]~feeder_combout\ = ( \Processador|REGA|DOUT\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	combout => \RegistradorHEX3|DOUT[0]~feeder_combout\);

-- Location: FF_X24_Y4_N55
\RegistradorHEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RegistradorHEX3|DOUT[0]~feeder_combout\,
	ena => \AndHEX3|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT\(0));

-- Location: FF_X24_Y4_N2
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

-- Location: FF_X24_Y4_N5
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

-- Location: LABCELL_X24_Y4_N33
\decoderHEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX3|DOUT\(2) & ( (!\RegistradorHEX3|DOUT\(1) & (!\RegistradorHEX3|DOUT\(3) $ (\RegistradorHEX3|DOUT\(0)))) ) ) # ( !\RegistradorHEX3|DOUT\(2) & ( (\RegistradorHEX3|DOUT\(0) & 
-- (!\RegistradorHEX3|DOUT\(3) $ (\RegistradorHEX3|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000101101001010000000000001010000001011010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(1),
	datae => \RegistradorHEX3|ALT_INV_DOUT\(2),
	combout => \decoderHEX3|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X24_Y4_N42
\decoderHEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX3|DOUT\(3) & ( (!\RegistradorHEX3|DOUT\(0) & ((\RegistradorHEX3|DOUT\(2)))) # (\RegistradorHEX3|DOUT\(0) & (\RegistradorHEX3|DOUT\(1))) ) ) # ( !\RegistradorHEX3|DOUT\(3) & ( 
-- (\RegistradorHEX3|DOUT\(2) & (!\RegistradorHEX3|DOUT\(1) $ (!\RegistradorHEX3|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(1),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(3),
	combout => \decoderHEX3|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X24_Y4_N45
\decoderHEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX3|DOUT\(3) & ( (\RegistradorHEX3|DOUT\(2) & ((!\RegistradorHEX3|DOUT\(0)) # (\RegistradorHEX3|DOUT\(1)))) ) ) # ( !\RegistradorHEX3|DOUT\(3) & ( (\RegistradorHEX3|DOUT\(1) & 
-- (!\RegistradorHEX3|DOUT\(0) & !\RegistradorHEX3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000000000000110111010000000011011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(1),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(3),
	combout => \decoderHEX3|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X24_Y4_N39
\decoderHEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX3|DOUT\(2) & ( (!\RegistradorHEX3|DOUT\(1) & (!\RegistradorHEX3|DOUT\(3) & !\RegistradorHEX3|DOUT\(0))) # (\RegistradorHEX3|DOUT\(1) & ((\RegistradorHEX3|DOUT\(0)))) ) ) # ( 
-- !\RegistradorHEX3|DOUT\(2) & ( (!\RegistradorHEX3|DOUT\(3) & (!\RegistradorHEX3|DOUT\(1) & \RegistradorHEX3|DOUT\(0))) # (\RegistradorHEX3|DOUT\(3) & (\RegistradorHEX3|DOUT\(1) & !\RegistradorHEX3|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000100000111000001100011000000110001000001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datae => \RegistradorHEX3|ALT_INV_DOUT\(2),
	combout => \decoderHEX3|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X24_Y4_N21
\decoderHEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX3|DOUT\(2) & ( \RegistradorHEX3|DOUT\(1) & ( (!\RegistradorHEX3|DOUT\(3) & \RegistradorHEX3|DOUT\(0)) ) ) ) # ( !\RegistradorHEX3|DOUT\(2) & ( \RegistradorHEX3|DOUT\(1) & ( 
-- (!\RegistradorHEX3|DOUT\(3) & \RegistradorHEX3|DOUT\(0)) ) ) ) # ( \RegistradorHEX3|DOUT\(2) & ( !\RegistradorHEX3|DOUT\(1) & ( !\RegistradorHEX3|DOUT\(3) ) ) ) # ( !\RegistradorHEX3|DOUT\(2) & ( !\RegistradorHEX3|DOUT\(1) & ( \RegistradorHEX3|DOUT\(0) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101010101010101000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datae => \RegistradorHEX3|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(1),
	combout => \decoderHEX3|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X24_Y4_N0
\decoderHEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[5]~5_combout\ = (!\RegistradorHEX3|DOUT\(0) & (!\RegistradorHEX3|DOUT\(3) & (!\RegistradorHEX3|DOUT\(2) & \RegistradorHEX3|DOUT\(1)))) # (\RegistradorHEX3|DOUT\(0) & (!\RegistradorHEX3|DOUT\(3) $ (((\RegistradorHEX3|DOUT\(2) & 
-- !\RegistradorHEX3|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000110100010001000011010001000100001101000100010000110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(1),
	combout => \decoderHEX3|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X24_Y4_N3
\decoderHEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX3|DOUT\(1) & ( (!\RegistradorHEX3|DOUT\(3) & (\RegistradorHEX3|DOUT\(0) & \RegistradorHEX3|DOUT\(2))) ) ) # ( !\RegistradorHEX3|DOUT\(1) & ( (!\RegistradorHEX3|DOUT\(3) & 
-- ((!\RegistradorHEX3|DOUT\(2)))) # (\RegistradorHEX3|DOUT\(3) & (!\RegistradorHEX3|DOUT\(0) & \RegistradorHEX3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001000100101010100100010000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(1),
	combout => \decoderHEX3|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X20_Y4_N30
\AndHEX4|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX4|saida~0_combout\ = ( \AndHEX5|saida~0_combout\ & ( \ROM_instrucao|memROM~2_combout\ & ( (!\DecoderHabBloc|Equal0~0_combout\ & (\ROM_instrucao|memROM~11_combout\ & (\Processador|decoder|saida~0_combout\ & !\ROM_instrucao|memROM~13_combout\))) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DecoderHabBloc|ALT_INV_Equal0~0_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \Processador|decoder|ALT_INV_saida~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \AndHEX5|ALT_INV_saida~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \AndHEX4|saida~0_combout\);

-- Location: FF_X20_Y4_N59
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

-- Location: FF_X20_Y4_N11
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

-- Location: FF_X20_Y4_N55
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

-- Location: FF_X20_Y4_N8
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

-- Location: LABCELL_X20_Y4_N24
\decoderHEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX4|DOUT\(1) & ( (\RegistradorHEX4|DOUT\(0) & (!\RegistradorHEX4|DOUT\(2) & \RegistradorHEX4|DOUT\(3))) ) ) # ( !\RegistradorHEX4|DOUT\(1) & ( (!\RegistradorHEX4|DOUT\(0) & 
-- (\RegistradorHEX4|DOUT\(2) & !\RegistradorHEX4|DOUT\(3))) # (\RegistradorHEX4|DOUT\(0) & (!\RegistradorHEX4|DOUT\(2) $ (\RegistradorHEX4|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000010001011001100001000100000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX4|ALT_INV_DOUT\(1),
	combout => \decoderHEX4|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X20_Y4_N27
\decoderHEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX4|DOUT\(1) & ( (!\RegistradorHEX4|DOUT\(0) & (\RegistradorHEX4|DOUT\(2))) # (\RegistradorHEX4|DOUT\(0) & ((\RegistradorHEX4|DOUT\(3)))) ) ) # ( !\RegistradorHEX4|DOUT\(1) & ( 
-- (\RegistradorHEX4|DOUT\(2) & (!\RegistradorHEX4|DOUT\(0) $ (!\RegistradorHEX4|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000010010000100100001001000100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX4|ALT_INV_DOUT\(1),
	combout => \decoderHEX4|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X20_Y4_N36
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

-- Location: LABCELL_X14_Y6_N30
\decoderHEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX4|DOUT\(1) & ( \RegistradorHEX4|DOUT\(3) & ( !\RegistradorHEX4|DOUT\(2) $ (\RegistradorHEX4|DOUT\(0)) ) ) ) # ( \RegistradorHEX4|DOUT\(1) & ( !\RegistradorHEX4|DOUT\(3) & ( 
-- (\RegistradorHEX4|DOUT\(2) & \RegistradorHEX4|DOUT\(0)) ) ) ) # ( !\RegistradorHEX4|DOUT\(1) & ( !\RegistradorHEX4|DOUT\(3) & ( !\RegistradorHEX4|DOUT\(2) $ (!\RegistradorHEX4|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100000000110000001100000000000000001100001111000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datae => \RegistradorHEX4|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX4|ALT_INV_DOUT\(3),
	combout => \decoderHEX4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X20_Y4_N18
\decoderHEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX4|DOUT\(1) & ( (\RegistradorHEX4|DOUT\(0) & !\RegistradorHEX4|DOUT\(3)) ) ) # ( !\RegistradorHEX4|DOUT\(1) & ( (!\RegistradorHEX4|DOUT\(2) & (\RegistradorHEX4|DOUT\(0))) # 
-- (\RegistradorHEX4|DOUT\(2) & ((!\RegistradorHEX4|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100001100001111110000110000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX4|ALT_INV_DOUT\(1),
	combout => \decoderHEX4|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X20_Y4_N6
\decoderHEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[5]~5_combout\ = (!\RegistradorHEX4|DOUT\(0) & (!\RegistradorHEX4|DOUT\(3) & (!\RegistradorHEX4|DOUT\(2) & \RegistradorHEX4|DOUT\(1)))) # (\RegistradorHEX4|DOUT\(0) & (!\RegistradorHEX4|DOUT\(3) $ (((\RegistradorHEX4|DOUT\(2) & 
-- !\RegistradorHEX4|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000111000100010000011100010001000001110001000100000111000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(1),
	combout => \decoderHEX4|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X20_Y4_N9
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

-- Location: LABCELL_X19_Y8_N24
\AndHEX5|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX5|saida~combout\ = ( !\DecoderHabBloc|Equal0~0_combout\ & ( \ROM_instrucao|memROM~2_combout\ & ( (\Processador|decoder|saida~0_combout\ & (\ROM_instrucao|memROM~11_combout\ & (\ROM_instrucao|memROM~13_combout\ & \AndHEX5|saida~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~0_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datad => \AndHEX5|ALT_INV_saida~0_combout\,
	datae => \DecoderHabBloc|ALT_INV_Equal0~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \AndHEX5|saida~combout\);

-- Location: FF_X23_Y4_N8
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

-- Location: FF_X23_Y4_N11
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

-- Location: FF_X23_Y4_N14
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

-- Location: FF_X23_Y4_N17
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

-- Location: MLABCELL_X23_Y4_N21
\decoderHEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX5|DOUT\(1) & ( (\RegistradorHEX5|DOUT\(0) & (\RegistradorHEX5|DOUT\(3) & !\RegistradorHEX5|DOUT\(2))) ) ) # ( !\RegistradorHEX5|DOUT\(1) & ( (!\RegistradorHEX5|DOUT\(0) & 
-- (!\RegistradorHEX5|DOUT\(3) & \RegistradorHEX5|DOUT\(2))) # (\RegistradorHEX5|DOUT\(0) & (!\RegistradorHEX5|DOUT\(3) $ (\RegistradorHEX5|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000011001100001100001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(1),
	combout => \decoderHEX5|rascSaida7seg[0]~0_combout\);

-- Location: MLABCELL_X23_Y4_N54
\decoderHEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX5|DOUT\(3) & ( (!\RegistradorHEX5|DOUT\(0) & ((\RegistradorHEX5|DOUT\(2)))) # (\RegistradorHEX5|DOUT\(0) & (\RegistradorHEX5|DOUT\(1))) ) ) # ( !\RegistradorHEX5|DOUT\(3) & ( 
-- (\RegistradorHEX5|DOUT\(2) & (!\RegistradorHEX5|DOUT\(1) $ (!\RegistradorHEX5|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(1),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(3),
	combout => \decoderHEX5|rascSaida7seg[1]~1_combout\);

-- Location: MLABCELL_X23_Y4_N57
\decoderHEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX5|DOUT\(3) & ( (\RegistradorHEX5|DOUT\(2) & ((!\RegistradorHEX5|DOUT\(0)) # (\RegistradorHEX5|DOUT\(1)))) ) ) # ( !\RegistradorHEX5|DOUT\(3) & ( (\RegistradorHEX5|DOUT\(1) & 
-- (!\RegistradorHEX5|DOUT\(0) & !\RegistradorHEX5|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000010100000000000000000000111101010000000011110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(3),
	combout => \decoderHEX5|rascSaida7seg[2]~2_combout\);

-- Location: MLABCELL_X23_Y4_N6
\decoderHEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX5|DOUT\(3) & ( (\RegistradorHEX5|DOUT\(1) & (!\RegistradorHEX5|DOUT\(2) $ (\RegistradorHEX5|DOUT\(0)))) ) ) # ( !\RegistradorHEX5|DOUT\(3) & ( (!\RegistradorHEX5|DOUT\(2) & 
-- (!\RegistradorHEX5|DOUT\(1) & \RegistradorHEX5|DOUT\(0))) # (\RegistradorHEX5|DOUT\(2) & (!\RegistradorHEX5|DOUT\(1) $ (\RegistradorHEX5|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010011001010001001001100100100010000100010010001000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(3),
	combout => \decoderHEX5|rascSaida7seg[3]~3_combout\);

-- Location: MLABCELL_X23_Y4_N9
\decoderHEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[4]~4_combout\ = (!\RegistradorHEX5|DOUT\(1) & ((!\RegistradorHEX5|DOUT\(2) & (\RegistradorHEX5|DOUT\(0))) # (\RegistradorHEX5|DOUT\(2) & ((!\RegistradorHEX5|DOUT\(3)))))) # (\RegistradorHEX5|DOUT\(1) & 
-- (((\RegistradorHEX5|DOUT\(0) & !\RegistradorHEX5|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100111100001000010011110000100001001111000010000100111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(3),
	combout => \decoderHEX5|rascSaida7seg[4]~4_combout\);

-- Location: MLABCELL_X23_Y4_N15
\decoderHEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[5]~5_combout\ = ( \RegistradorHEX5|DOUT\(3) & ( (\RegistradorHEX5|DOUT\(2) & (\RegistradorHEX5|DOUT\(0) & !\RegistradorHEX5|DOUT\(1))) ) ) # ( !\RegistradorHEX5|DOUT\(3) & ( (!\RegistradorHEX5|DOUT\(2) & 
-- ((\RegistradorHEX5|DOUT\(1)) # (\RegistradorHEX5|DOUT\(0)))) # (\RegistradorHEX5|DOUT\(2) & (\RegistradorHEX5|DOUT\(0) & \RegistradorHEX5|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101111000010101010111100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(3),
	combout => \decoderHEX5|rascSaida7seg[5]~5_combout\);

-- Location: MLABCELL_X23_Y4_N12
\decoderHEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX5|DOUT\(3) & ( (!\RegistradorHEX5|DOUT\(0) & (!\RegistradorHEX5|DOUT\(1) & \RegistradorHEX5|DOUT\(2))) ) ) # ( !\RegistradorHEX5|DOUT\(3) & ( (!\RegistradorHEX5|DOUT\(1) & 
-- ((!\RegistradorHEX5|DOUT\(2)))) # (\RegistradorHEX5|DOUT\(1) & (\RegistradorHEX5|DOUT\(0) & \RegistradorHEX5|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000011111100000000001100000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(3),
	combout => \decoderHEX5|rascSaida7seg[6]~6_combout\);

-- Location: IOIBUF_X22_Y45_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X54_Y15_N4
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X0_Y20_N21
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X52_Y23_N0
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


