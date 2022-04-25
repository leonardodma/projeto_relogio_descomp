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

-- DATE "04/24/2022 22:09:01"

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
	ACUMULADOR : OUT std_logic_vector(7 DOWNTO 0);
	INSTRUCAO : OUT std_logic_vector(12 DOWNTO 0)
	);
END relogio;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET_N	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- SAIDA_AND_HEX0	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_HEX[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_HEX[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_HEX[2]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DIN_HEX[3]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_HEX1	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_HEX2	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_HEX3	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_HEX4	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_HEX5	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_LED8	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_LED9	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAIDA_AND_SW0_7	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[0]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[3]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[4]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[5]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[7]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[2]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[3]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[4]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[5]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[6]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[8]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[9]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[10]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[11]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[12]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_ACUMULADOR : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_INSTRUCAO : std_logic_vector(12 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \FPGA_RESET_N~input_o\ : std_logic;
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~3_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~10_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~14_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~12_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~2_combout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~4_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~7_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~8_combout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~16_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~17_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~13_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~11_combout\ : std_logic;
SIGNAL \Processador|flagIgual|DOUT~1_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~21_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~5_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~6_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~2_combout\ : std_logic;
SIGNAL \Processador|decoder|saida~2_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~20_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~19_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~18_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~1_combout\ : std_logic;
SIGNAL \Processador|decoder|saida[5]~3_combout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \Processador|decoder|saida~1_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~164_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~39_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~144_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~163_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~87_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~143_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~145_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~2\ : std_logic;
SIGNAL \Processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|ULA1|Add1~2\ : std_logic;
SIGNAL \Processador|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~88_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~40_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~146_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~147_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~6\ : std_logic;
SIGNAL \Processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~6\ : std_logic;
SIGNAL \Processador|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~41_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~149_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~89_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~148_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~150_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~10\ : std_logic;
SIGNAL \Processador|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~10\ : std_logic;
SIGNAL \Processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~90_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~42_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~151_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~152_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~14\ : std_logic;
SIGNAL \Processador|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \Processador|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~91_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~153_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~43_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~154_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~155_combout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|ULA1|Add1~14\ : std_logic;
SIGNAL \Processador|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \MemoriaRAM|ram~44_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~92_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~156_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~157_combout\ : std_logic;
SIGNAL \Processador|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~18\ : std_logic;
SIGNAL \Processador|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|ULA1|Add1~18\ : std_logic;
SIGNAL \Processador|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \MemoriaRAM|ram~46_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~94_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~161_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~162_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~22\ : std_logic;
SIGNAL \Processador|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~22\ : std_logic;
SIGNAL \Processador|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~45_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~159_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~93_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~158_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~160_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~26\ : std_logic;
SIGNAL \Processador|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \Processador|ULA1|saida[7]~7_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~26\ : std_logic;
SIGNAL \Processador|ULA1|Add1~29_sumout\ : std_logic;
SIGNAL \Processador|flagIgual|DOUT~2_combout\ : std_logic;
SIGNAL \Processador|flagIgual|DOUT~0_combout\ : std_logic;
SIGNAL \Processador|flagIgual|DOUT~q\ : std_logic;
SIGNAL \Processador|PC|DOUT[0]~0_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~9_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[8]~8_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~15_combout\ : std_logic;
SIGNAL \Processador|decoder|saida~0_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal14~0_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|MUX4x1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \DecoderSelEnd|Equal0~0_combout\ : std_logic;
SIGNAL \DecoderSelEnd|Equal0~1_combout\ : std_logic;
SIGNAL \flipFlopLed8|DOUT~0_combout\ : std_logic;
SIGNAL \flipFlopLed8|DOUT~q\ : std_logic;
SIGNAL \AndLed9|saida~0_combout\ : std_logic;
SIGNAL \flipFlopLed9|DOUT~0_combout\ : std_logic;
SIGNAL \flipFlopLed9|DOUT~feeder_combout\ : std_logic;
SIGNAL \flipFlopLed9|DOUT~q\ : std_logic;
SIGNAL \Processador|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RegistradorLedR|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Processador|reg_endretorno|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM_instrucao|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \flipFlopLed9|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \flipFlopLed8|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
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
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \Processador|flagIgual|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \Processador|flagIgual|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~94_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~93_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~92_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~91_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~90_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~89_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~88_q\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_saida~2_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~144_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~143_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \flipFlopLed9|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \AndLed9|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \DecoderSelEnd|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \Processador|reg_endretorno|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \Processador|PC|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \Processador|flagIgual|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_Equal14~0_combout\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~15_combout\ : std_logic;
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
SIGNAL \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|REGA|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|REGA|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;

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
ACUMULADOR <= ww_ACUMULADOR;
INSTRUCAO <= ww_INSTRUCAO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ROM_instrucao|ALT_INV_memROM~3_combout\ <= NOT \ROM_instrucao|memROM~3_combout\;
\ROM_instrucao|ALT_INV_memROM~2_combout\ <= NOT \ROM_instrucao|memROM~2_combout\;
\ROM_instrucao|ALT_INV_memROM~1_combout\ <= NOT \ROM_instrucao|memROM~1_combout\;
\ROM_instrucao|ALT_INV_memROM~0_combout\ <= NOT \ROM_instrucao|memROM~0_combout\;
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
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\Processador|flagIgual|ALT_INV_DOUT~2_combout\ <= NOT \Processador|flagIgual|DOUT~2_combout\;
\Processador|flagIgual|ALT_INV_DOUT~1_combout\ <= NOT \Processador|flagIgual|DOUT~1_combout\;
\ROM_instrucao|ALT_INV_memROM~21_combout\ <= NOT \ROM_instrucao|memROM~21_combout\;
\ROM_instrucao|ALT_INV_memROM~20_combout\ <= NOT \ROM_instrucao|memROM~20_combout\;
\ROM_instrucao|ALT_INV_memROM~19_combout\ <= NOT \ROM_instrucao|memROM~19_combout\;
\ROM_instrucao|ALT_INV_memROM~18_combout\ <= NOT \ROM_instrucao|memROM~18_combout\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\MemoriaRAM|ALT_INV_ram~162_combout\ <= NOT \MemoriaRAM|ram~162_combout\;
\MemoriaRAM|ALT_INV_ram~161_combout\ <= NOT \MemoriaRAM|ram~161_combout\;
\MemoriaRAM|ALT_INV_ram~46_q\ <= NOT \MemoriaRAM|ram~46_q\;
\MemoriaRAM|ALT_INV_ram~94_q\ <= NOT \MemoriaRAM|ram~94_q\;
\MemoriaRAM|ALT_INV_ram~160_combout\ <= NOT \MemoriaRAM|ram~160_combout\;
\MemoriaRAM|ALT_INV_ram~159_combout\ <= NOT \MemoriaRAM|ram~159_combout\;
\MemoriaRAM|ALT_INV_ram~45_q\ <= NOT \MemoriaRAM|ram~45_q\;
\MemoriaRAM|ALT_INV_ram~158_combout\ <= NOT \MemoriaRAM|ram~158_combout\;
\MemoriaRAM|ALT_INV_ram~93_q\ <= NOT \MemoriaRAM|ram~93_q\;
\MemoriaRAM|ALT_INV_ram~157_combout\ <= NOT \MemoriaRAM|ram~157_combout\;
\MemoriaRAM|ALT_INV_ram~156_combout\ <= NOT \MemoriaRAM|ram~156_combout\;
\MemoriaRAM|ALT_INV_ram~44_q\ <= NOT \MemoriaRAM|ram~44_q\;
\MemoriaRAM|ALT_INV_ram~92_q\ <= NOT \MemoriaRAM|ram~92_q\;
\MemoriaRAM|ALT_INV_ram~155_combout\ <= NOT \MemoriaRAM|ram~155_combout\;
\MemoriaRAM|ALT_INV_ram~154_combout\ <= NOT \MemoriaRAM|ram~154_combout\;
\MemoriaRAM|ALT_INV_ram~43_q\ <= NOT \MemoriaRAM|ram~43_q\;
\MemoriaRAM|ALT_INV_ram~153_combout\ <= NOT \MemoriaRAM|ram~153_combout\;
\MemoriaRAM|ALT_INV_ram~91_q\ <= NOT \MemoriaRAM|ram~91_q\;
\MemoriaRAM|ALT_INV_ram~152_combout\ <= NOT \MemoriaRAM|ram~152_combout\;
\MemoriaRAM|ALT_INV_ram~151_combout\ <= NOT \MemoriaRAM|ram~151_combout\;
\MemoriaRAM|ALT_INV_ram~42_q\ <= NOT \MemoriaRAM|ram~42_q\;
\MemoriaRAM|ALT_INV_ram~90_q\ <= NOT \MemoriaRAM|ram~90_q\;
\MemoriaRAM|ALT_INV_ram~150_combout\ <= NOT \MemoriaRAM|ram~150_combout\;
\MemoriaRAM|ALT_INV_ram~149_combout\ <= NOT \MemoriaRAM|ram~149_combout\;
\MemoriaRAM|ALT_INV_ram~41_q\ <= NOT \MemoriaRAM|ram~41_q\;
\MemoriaRAM|ALT_INV_ram~148_combout\ <= NOT \MemoriaRAM|ram~148_combout\;
\MemoriaRAM|ALT_INV_ram~89_q\ <= NOT \MemoriaRAM|ram~89_q\;
\MemoriaRAM|ALT_INV_ram~147_combout\ <= NOT \MemoriaRAM|ram~147_combout\;
\MemoriaRAM|ALT_INV_ram~146_combout\ <= NOT \MemoriaRAM|ram~146_combout\;
\MemoriaRAM|ALT_INV_ram~40_q\ <= NOT \MemoriaRAM|ram~40_q\;
\MemoriaRAM|ALT_INV_ram~88_q\ <= NOT \MemoriaRAM|ram~88_q\;
\Processador|decoder|ALT_INV_saida~2_combout\ <= NOT \Processador|decoder|saida~2_combout\;
\MemoriaRAM|ALT_INV_ram~145_combout\ <= NOT \MemoriaRAM|ram~145_combout\;
\MemoriaRAM|ALT_INV_ram~144_combout\ <= NOT \MemoriaRAM|ram~144_combout\;
\MemoriaRAM|ALT_INV_ram~39_q\ <= NOT \MemoriaRAM|ram~39_q\;
\MemoriaRAM|ALT_INV_ram~143_combout\ <= NOT \MemoriaRAM|ram~143_combout\;
\MemoriaRAM|ALT_INV_ram~87_q\ <= NOT \MemoriaRAM|ram~87_q\;
\Processador|decoder|ALT_INV_Equal10~0_combout\ <= NOT \Processador|decoder|Equal10~0_combout\;
\flipFlopLed9|ALT_INV_DOUT~0_combout\ <= NOT \flipFlopLed9|DOUT~0_combout\;
\AndLed9|ALT_INV_saida~0_combout\ <= NOT \AndLed9|saida~0_combout\;
\DecoderSelEnd|ALT_INV_Equal0~1_combout\ <= NOT \DecoderSelEnd|Equal0~1_combout\;
\Processador|decoder|ALT_INV_saida~1_combout\ <= NOT \Processador|decoder|saida~1_combout\;
\Processador|reg_endretorno|ALT_INV_DOUT\(8) <= NOT \Processador|reg_endretorno|DOUT\(8);
\Processador|reg_endretorno|ALT_INV_DOUT\(7) <= NOT \Processador|reg_endretorno|DOUT\(7);
\Processador|reg_endretorno|ALT_INV_DOUT\(6) <= NOT \Processador|reg_endretorno|DOUT\(6);
\Processador|reg_endretorno|ALT_INV_DOUT\(5) <= NOT \Processador|reg_endretorno|DOUT\(5);
\Processador|reg_endretorno|ALT_INV_DOUT\(4) <= NOT \Processador|reg_endretorno|DOUT\(4);
\Processador|reg_endretorno|ALT_INV_DOUT\(3) <= NOT \Processador|reg_endretorno|DOUT\(3);
\Processador|reg_endretorno|ALT_INV_DOUT\(2) <= NOT \Processador|reg_endretorno|DOUT\(2);
\Processador|reg_endretorno|ALT_INV_DOUT\(1) <= NOT \Processador|reg_endretorno|DOUT\(1);
\Processador|PC|ALT_INV_DOUT[0]~0_combout\ <= NOT \Processador|PC|DOUT[0]~0_combout\;
\Processador|flagIgual|ALT_INV_DOUT~q\ <= NOT \Processador|flagIgual|DOUT~q\;
\Processador|decoder|ALT_INV_Equal14~0_combout\ <= NOT \Processador|decoder|Equal14~0_combout\;
\Processador|decoder|ALT_INV_saida~0_combout\ <= NOT \Processador|decoder|saida~0_combout\;
\Processador|reg_endretorno|ALT_INV_DOUT\(0) <= NOT \Processador|reg_endretorno|DOUT\(0);
\ROM_instrucao|ALT_INV_memROM~17_combout\ <= NOT \ROM_instrucao|memROM~17_combout\;
\ROM_instrucao|ALT_INV_memROM~16_combout\ <= NOT \ROM_instrucao|memROM~16_combout\;
\ROM_instrucao|ALT_INV_memROM~15_combout\ <= NOT \ROM_instrucao|memROM~15_combout\;
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
\Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[8]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[7]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[3]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[2]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[1]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[0]~DUPLICATE_q\;
\Processador|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \Processador|REGA|DOUT[5]~DUPLICATE_q\;
\Processador|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \Processador|REGA|DOUT[4]~DUPLICATE_q\;
\Processador|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \Processador|REGA|DOUT[3]~DUPLICATE_q\;
\Processador|REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \Processador|REGA|DOUT[2]~DUPLICATE_q\;
\Processador|REGA|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \Processador|REGA|DOUT[1]~DUPLICATE_q\;
\Processador|REGA|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \Processador|REGA|DOUT[0]~DUPLICATE_q\;

-- Location: IOOBUF_X19_Y0_N2
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

-- Location: IOOBUF_X14_Y0_N53
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

-- Location: IOOBUF_X11_Y0_N19
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|PC|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X16_Y0_N76
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X8_Y45_N59
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

-- Location: IOOBUF_X19_Y0_N19
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

-- Location: IOOBUF_X10_Y0_N76
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOOBUF_X36_Y45_N19
\SAIDA_AND_HEX0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SAIDA_AND_HEX0);

-- Location: IOOBUF_X10_Y45_N2
\DIN_HEX[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_DIN_HEX(0));

-- Location: IOOBUF_X19_Y0_N53
\DIN_HEX[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_DIN_HEX(1));

-- Location: IOOBUF_X16_Y0_N93
\DIN_HEX[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_DIN_HEX(2));

-- Location: IOOBUF_X12_Y0_N53
\DIN_HEX[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_DIN_HEX(3));

-- Location: IOOBUF_X54_Y18_N62
\SAIDA_AND_HEX1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SAIDA_AND_HEX1);

-- Location: IOOBUF_X34_Y45_N2
\SAIDA_AND_HEX2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SAIDA_AND_HEX2);

-- Location: IOOBUF_X54_Y14_N79
\SAIDA_AND_HEX3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SAIDA_AND_HEX3);

-- Location: IOOBUF_X50_Y45_N2
\SAIDA_AND_HEX4~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SAIDA_AND_HEX4);

-- Location: IOOBUF_X44_Y45_N53
\SAIDA_AND_HEX5~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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

-- Location: IOOBUF_X54_Y19_N56
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

-- Location: IOOBUF_X54_Y20_N39
\SAIDA_AND_SW0_7~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_SAIDA_AND_SW0_7);

-- Location: IOOBUF_X10_Y45_N36
\ACUMULADOR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT[0]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ACUMULADOR(0));

-- Location: IOOBUF_X18_Y0_N19
\ACUMULADOR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT[1]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ACUMULADOR(1));

-- Location: IOOBUF_X16_Y0_N59
\ACUMULADOR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT[2]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ACUMULADOR(2));

-- Location: IOOBUF_X12_Y0_N36
\ACUMULADOR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ACUMULADOR(3));

-- Location: IOOBUF_X16_Y0_N42
\ACUMULADOR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT[4]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ACUMULADOR(4));

-- Location: IOOBUF_X12_Y0_N2
\ACUMULADOR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Processador|REGA|DOUT[5]~DUPLICATE_q\,
	devoe => ww_devoe,
	o => ww_ACUMULADOR(5));

-- Location: IOOBUF_X12_Y0_N19
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X10_Y0_N59
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

-- Location: IOOBUF_X10_Y0_N42
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

-- Location: IOOBUF_X11_Y0_N2
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

-- Location: IOOBUF_X11_Y0_N53
\INSTRUCAO[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(3));

-- Location: IOOBUF_X14_Y45_N36
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

-- Location: IOOBUF_X22_Y45_N53
\INSTRUCAO[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(5));

-- Location: IOOBUF_X54_Y20_N56
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

-- Location: IOOBUF_X18_Y45_N36
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

-- Location: IOOBUF_X18_Y0_N36
\INSTRUCAO[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~9_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(8));

-- Location: IOOBUF_X0_Y21_N22
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

-- Location: IOOBUF_X0_Y20_N22
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

-- Location: IOOBUF_X8_Y45_N42
\INSTRUCAO[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~15_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(11));

-- Location: IOOBUF_X0_Y21_N5
\INSTRUCAO[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~17_combout\,
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

-- Location: LABCELL_X10_Y1_N42
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

-- Location: FF_X10_Y1_N43
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

-- Location: LABCELL_X6_Y9_N24
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

-- Location: FF_X5_Y10_N38
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

-- Location: FF_X6_Y10_N20
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

-- Location: LABCELL_X5_Y10_N0
\ROM_instrucao|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~3_combout\ = ( !\Processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\Processador|PC|DOUT[0]~DUPLICATE_q\ & ((!\Processador|PC|DOUT[2]~DUPLICATE_q\) # (\Processador|PC|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000001010000111100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~3_combout\);

-- Location: LABCELL_X7_Y10_N39
\Processador|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~13_sumout\ = SUM(( \Processador|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~10\ ))
-- \Processador|incrementaPC|Add0~14\ = CARRY(( \Processador|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \Processador|incrementaPC|Add0~10\,
	sumout => \Processador|incrementaPC|Add0~13_sumout\,
	cout => \Processador|incrementaPC|Add0~14\);

-- Location: LABCELL_X7_Y10_N42
\Processador|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~17_sumout\ = SUM(( \Processador|PC|DOUT\(4) ) + ( GND ) + ( \Processador|incrementaPC|Add0~14\ ))
-- \Processador|incrementaPC|Add0~18\ = CARRY(( \Processador|PC|DOUT\(4) ) + ( GND ) + ( \Processador|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT\(4),
	cin => \Processador|incrementaPC|Add0~14\,
	sumout => \Processador|incrementaPC|Add0~17_sumout\,
	cout => \Processador|incrementaPC|Add0~18\);

-- Location: LABCELL_X5_Y10_N21
\ROM_instrucao|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~10_combout\ = ( !\Processador|PC|DOUT[0]~DUPLICATE_q\ & ( !\Processador|PC|DOUT\(3) $ (((!\Processador|PC|DOUT[1]~DUPLICATE_q\ & \Processador|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111010100001010111101010000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT\(3),
	dataf => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~10_combout\);

-- Location: LABCELL_X5_Y10_N18
\ROM_instrucao|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~14_combout\ = ( \Processador|PC|DOUT[0]~DUPLICATE_q\ & ( (!\Processador|PC|DOUT[1]~DUPLICATE_q\ & ((!\Processador|PC|DOUT[3]~DUPLICATE_q\) # (\Processador|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\Processador|PC|DOUT[0]~DUPLICATE_q\ & ( 
-- (!\Processador|PC|DOUT[1]~DUPLICATE_q\ & (\Processador|PC|DOUT[3]~DUPLICATE_q\)) # (\Processador|PC|DOUT[1]~DUPLICATE_q\ & ((!\Processador|PC|DOUT[3]~DUPLICATE_q\) # (!\Processador|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011010010111110101101010100000101010101010000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~14_combout\);

-- Location: LABCELL_X5_Y10_N42
\ROM_instrucao|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~12_combout\ = ( \Processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT[0]~DUPLICATE_q\ & !\Processador|PC|DOUT[2]~DUPLICATE_q\)) # (\Processador|PC|DOUT\(3) & 
-- (\Processador|PC|DOUT[0]~DUPLICATE_q\ & \Processador|PC|DOUT[2]~DUPLICATE_q\)) ) ) # ( !\Processador|PC|DOUT[1]~DUPLICATE_q\ & ( !\Processador|PC|DOUT\(3) $ (((!\Processador|PC|DOUT[0]~DUPLICATE_q\) # (\Processador|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000110011001111000011001111000000000000111100000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(3),
	datac => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~12_combout\);

-- Location: MLABCELL_X4_Y10_N36
\Processador|decoder|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~2_combout\ = ( !\Processador|PC|DOUT\(8) & ( \ROM_instrucao|memROM~1_combout\ & ( (\ROM_instrucao|memROM~10_combout\ & (!\ROM_instrucao|memROM~14_combout\ & (\ROM_instrucao|memROM~16_combout\ & 
-- !\ROM_instrucao|memROM~12_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	datae => \Processador|PC|ALT_INV_DOUT\(8),
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \Processador|decoder|Equal10~2_combout\);

-- Location: FF_X7_Y10_N44
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

-- Location: LABCELL_X5_Y10_N39
\Processador|MUX4x1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[4]~4_combout\ = ( \Processador|decoder|Equal14~0_combout\ & ( \Processador|reg_endretorno|DOUT\(4) ) ) # ( !\Processador|decoder|Equal14~0_combout\ & ( (!\Processador|PC|DOUT[0]~0_combout\ & 
-- \Processador|incrementaPC|Add0~17_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \Processador|incrementaPC|ALT_INV_Add0~17_sumout\,
	datad => \Processador|reg_endretorno|ALT_INV_DOUT\(4),
	dataf => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	combout => \Processador|MUX4x1|saida_MUX[4]~4_combout\);

-- Location: FF_X5_Y10_N41
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

-- Location: LABCELL_X7_Y10_N45
\Processador|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~21_sumout\ = SUM(( \Processador|PC|DOUT\(5) ) + ( GND ) + ( \Processador|incrementaPC|Add0~18\ ))
-- \Processador|incrementaPC|Add0~22\ = CARRY(( \Processador|PC|DOUT\(5) ) + ( GND ) + ( \Processador|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT\(5),
	cin => \Processador|incrementaPC|Add0~18\,
	sumout => \Processador|incrementaPC|Add0~21_sumout\,
	cout => \Processador|incrementaPC|Add0~22\);

-- Location: FF_X7_Y10_N47
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

-- Location: LABCELL_X5_Y10_N6
\Processador|MUX4x1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[5]~5_combout\ = ( \Processador|decoder|Equal14~0_combout\ & ( \Processador|reg_endretorno|DOUT\(5) ) ) # ( !\Processador|decoder|Equal14~0_combout\ & ( (!\Processador|PC|DOUT[0]~0_combout\ & 
-- \Processador|incrementaPC|Add0~21_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|reg_endretorno|ALT_INV_DOUT\(5),
	datab => \Processador|PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \Processador|incrementaPC|ALT_INV_Add0~21_sumout\,
	dataf => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	combout => \Processador|MUX4x1|saida_MUX[5]~5_combout\);

-- Location: FF_X5_Y10_N8
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

-- Location: LABCELL_X7_Y10_N48
\Processador|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~25_sumout\ = SUM(( \Processador|PC|DOUT\(6) ) + ( GND ) + ( \Processador|incrementaPC|Add0~22\ ))
-- \Processador|incrementaPC|Add0~26\ = CARRY(( \Processador|PC|DOUT\(6) ) + ( GND ) + ( \Processador|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT\(6),
	cin => \Processador|incrementaPC|Add0~22\,
	sumout => \Processador|incrementaPC|Add0~25_sumout\,
	cout => \Processador|incrementaPC|Add0~26\);

-- Location: FF_X7_Y10_N49
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

-- Location: LABCELL_X5_Y10_N45
\Processador|MUX4x1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[6]~6_combout\ = ( \Processador|decoder|Equal14~0_combout\ & ( \Processador|reg_endretorno|DOUT\(6) ) ) # ( !\Processador|decoder|Equal14~0_combout\ & ( (!\Processador|PC|DOUT[0]~0_combout\ & 
-- \Processador|incrementaPC|Add0~25_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|reg_endretorno|ALT_INV_DOUT\(6),
	datac => \Processador|PC|ALT_INV_DOUT[0]~0_combout\,
	datad => \Processador|incrementaPC|ALT_INV_Add0~25_sumout\,
	dataf => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	combout => \Processador|MUX4x1|saida_MUX[6]~6_combout\);

-- Location: FF_X5_Y10_N47
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

-- Location: FF_X5_Y10_N31
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

-- Location: LABCELL_X7_Y10_N51
\Processador|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~29_sumout\ = SUM(( \Processador|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~26\ ))
-- \Processador|incrementaPC|Add0~30\ = CARRY(( \Processador|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \Processador|incrementaPC|Add0~26\,
	sumout => \Processador|incrementaPC|Add0~29_sumout\,
	cout => \Processador|incrementaPC|Add0~30\);

-- Location: FF_X7_Y10_N52
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

-- Location: LABCELL_X5_Y10_N30
\Processador|MUX4x1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[7]~7_combout\ = ( \Processador|decoder|Equal14~0_combout\ & ( \Processador|reg_endretorno|DOUT\(7) ) ) # ( !\Processador|decoder|Equal14~0_combout\ & ( (\Processador|incrementaPC|Add0~29_sumout\ & 
-- !\Processador|PC|DOUT[0]~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|reg_endretorno|ALT_INV_DOUT\(7),
	datac => \Processador|incrementaPC|ALT_INV_Add0~29_sumout\,
	datad => \Processador|PC|ALT_INV_DOUT[0]~0_combout\,
	dataf => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	combout => \Processador|MUX4x1|saida_MUX[7]~7_combout\);

-- Location: FF_X5_Y10_N32
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

-- Location: LABCELL_X5_Y10_N15
\ROM_instrucao|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~1_combout\ = ( !\Processador|PC|DOUT\(7) & ( (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(5) & !\Processador|PC|DOUT\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(5),
	datad => \Processador|PC|ALT_INV_DOUT\(6),
	dataf => \Processador|PC|ALT_INV_DOUT\(7),
	combout => \ROM_instrucao|memROM~1_combout\);

-- Location: LABCELL_X5_Y10_N3
\ROM_instrucao|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~4_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & \ROM_instrucao|memROM~3_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~4_combout\);

-- Location: LABCELL_X7_Y10_N30
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

-- Location: LABCELL_X7_Y10_N33
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

-- Location: FF_X7_Y10_N34
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

-- Location: LABCELL_X5_Y10_N48
\Processador|MUX4x1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[1]~1_combout\ = ( \Processador|decoder|Equal14~0_combout\ & ( \Processador|reg_endretorno|DOUT\(1) ) ) # ( !\Processador|decoder|Equal14~0_combout\ & ( (!\Processador|PC|DOUT[0]~0_combout\ & 
-- ((\Processador|incrementaPC|Add0~5_sumout\))) # (\Processador|PC|DOUT[0]~0_combout\ & (\ROM_instrucao|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datab => \Processador|reg_endretorno|ALT_INV_DOUT\(1),
	datac => \Processador|incrementaPC|ALT_INV_Add0~5_sumout\,
	datad => \Processador|PC|ALT_INV_DOUT[0]~0_combout\,
	dataf => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	combout => \Processador|MUX4x1|saida_MUX[1]~1_combout\);

-- Location: FF_X5_Y10_N50
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

-- Location: LABCELL_X7_Y10_N36
\Processador|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~9_sumout\ = SUM(( \Processador|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~6\ ))
-- \Processador|incrementaPC|Add0~10\ = CARRY(( \Processador|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \Processador|incrementaPC|Add0~6\,
	sumout => \Processador|incrementaPC|Add0~9_sumout\,
	cout => \Processador|incrementaPC|Add0~10\);

-- Location: FF_X7_Y10_N40
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

-- Location: LABCELL_X5_Y10_N54
\ROM_instrucao|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~7_combout\ = ( \Processador|PC|DOUT[1]~DUPLICATE_q\ & ( (!\Processador|PC|DOUT[0]~DUPLICATE_q\ & (!\Processador|PC|DOUT[2]~DUPLICATE_q\ & !\Processador|PC|DOUT[3]~DUPLICATE_q\)) ) ) # ( !\Processador|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (!\Processador|PC|DOUT[0]~DUPLICATE_q\ & (!\Processador|PC|DOUT[2]~DUPLICATE_q\ & !\Processador|PC|DOUT[3]~DUPLICATE_q\)) # (\Processador|PC|DOUT[0]~DUPLICATE_q\ & (\Processador|PC|DOUT[2]~DUPLICATE_q\ & \Processador|PC|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000101101000000000010110100000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~7_combout\);

-- Location: LABCELL_X5_Y10_N9
\ROM_instrucao|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~8_combout\ = ( !\Processador|PC|DOUT[8]~DUPLICATE_q\ & ( (\ROM_instrucao|memROM~1_combout\ & \ROM_instrucao|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	dataf => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~8_combout\);

-- Location: LABCELL_X5_Y10_N36
\Processador|MUX4x1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[3]~3_combout\ = ( \ROM_instrucao|memROM~8_combout\ & ( (!\Processador|decoder|Equal14~0_combout\ & (((\Processador|incrementaPC|Add0~13_sumout\)) # (\Processador|PC|DOUT[0]~0_combout\))) # 
-- (\Processador|decoder|Equal14~0_combout\ & (((\Processador|reg_endretorno|DOUT\(3))))) ) ) # ( !\ROM_instrucao|memROM~8_combout\ & ( (!\Processador|decoder|Equal14~0_combout\ & (!\Processador|PC|DOUT[0]~0_combout\ & 
-- (\Processador|incrementaPC|Add0~13_sumout\))) # (\Processador|decoder|Equal14~0_combout\ & (((\Processador|reg_endretorno|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001011101000010000101110100101010011111110010101001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	datab => \Processador|PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \Processador|incrementaPC|ALT_INV_Add0~13_sumout\,
	datad => \Processador|reg_endretorno|ALT_INV_DOUT\(3),
	dataf => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	combout => \Processador|MUX4x1|saida_MUX[3]~3_combout\);

-- Location: FF_X5_Y10_N37
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

-- Location: LABCELL_X5_Y10_N57
\ROM_instrucao|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~16_combout\ = ( \Processador|PC|DOUT[1]~DUPLICATE_q\ & ( (\Processador|PC|DOUT[0]~DUPLICATE_q\ & ((\Processador|PC|DOUT[2]~DUPLICATE_q\) # (\Processador|PC|DOUT\(3)))) ) ) # ( !\Processador|PC|DOUT[1]~DUPLICATE_q\ & ( 
-- (!\Processador|PC|DOUT[0]~DUPLICATE_q\ & (!\Processador|PC|DOUT\(3) & !\Processador|PC|DOUT[2]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000101010101010000010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT\(3),
	datad => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~16_combout\);

-- Location: MLABCELL_X4_Y10_N42
\ROM_instrucao|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~17_combout\ = ( \ROM_instrucao|memROM~16_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( !\Processador|PC|DOUT\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datae => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~17_combout\);

-- Location: MLABCELL_X4_Y10_N30
\ROM_instrucao|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~13_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (!\Processador|PC|DOUT\(8) & \ROM_instrucao|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~13_combout\);

-- Location: MLABCELL_X4_Y10_N27
\ROM_instrucao|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~11_combout\ = ( \ROM_instrucao|memROM~10_combout\ & ( \ROM_instrucao|memROM~1_combout\ & ( !\Processador|PC|DOUT\(8) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|PC|ALT_INV_DOUT\(8),
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~11_combout\);

-- Location: MLABCELL_X4_Y10_N21
\Processador|flagIgual|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|flagIgual|DOUT~1_combout\ = ( !\ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~15_combout\ & (\ROM_instrucao|memROM~17_combout\ & !\ROM_instrucao|memROM~13_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \Processador|flagIgual|DOUT~1_combout\);

-- Location: LABCELL_X5_Y9_N12
\Processador|decoder|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~0_combout\ = ( !\ROM_instrucao|memROM~10_combout\ & ( !\ROM_instrucao|memROM~12_combout\ & ( (\ROM_instrucao|memROM~14_combout\ & (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & (\ROM_instrucao|memROM~1_combout\ & 
-- !\ROM_instrucao|memROM~16_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datab => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	combout => \Processador|decoder|Equal10~0_combout\);

-- Location: LABCELL_X5_Y10_N33
\ROM_instrucao|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~21_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~21_combout\);

-- Location: FF_X5_Y10_N28
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

-- Location: FF_X5_Y10_N49
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

-- Location: FF_X5_Y10_N25
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

-- Location: LABCELL_X6_Y10_N6
\ROM_instrucao|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~5_combout\ = ( !\Processador|PC|DOUT\(1) & ( \Processador|PC|DOUT\(0) & ( (!\Processador|PC|DOUT\(3)) # (\Processador|PC|DOUT\(2)) ) ) ) # ( \Processador|PC|DOUT\(1) & ( !\Processador|PC|DOUT\(0) & ( (!\Processador|PC|DOUT\(2) & 
-- \Processador|PC|DOUT\(3)) ) ) ) # ( !\Processador|PC|DOUT\(1) & ( !\Processador|PC|DOUT\(0) & ( (!\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000000010100000101011110101111101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|PC|ALT_INV_DOUT\(3),
	datae => \Processador|PC|ALT_INV_DOUT\(1),
	dataf => \Processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM_instrucao|memROM~5_combout\);

-- Location: LABCELL_X6_Y10_N42
\ROM_instrucao|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~6_combout\ = ( \ROM_instrucao|memROM~5_combout\ & ( (\ROM_instrucao|memROM~1_combout\ & !\Processador|PC|DOUT[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datac => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \ROM_instrucao|memROM~6_combout\);

-- Location: LABCELL_X6_Y10_N15
\ROM_instrucao|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~0_combout\ = ( \Processador|PC|DOUT\(3) & ( (\Processador|PC|DOUT\(2) & !\Processador|PC|DOUT\(1)) ) ) # ( !\Processador|PC|DOUT\(3) & ( (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) & \Processador|PC|DOUT\(1))) # 
-- (\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110100000000011111010000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|PC|ALT_INV_DOUT\(0),
	datad => \Processador|PC|ALT_INV_DOUT\(1),
	dataf => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~0_combout\);

-- Location: LABCELL_X6_Y10_N21
\ROM_instrucao|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~2_combout\ = ( \ROM_instrucao|memROM~0_combout\ & ( (\ROM_instrucao|memROM~1_combout\ & !\Processador|PC|DOUT\(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \Processador|PC|ALT_INV_DOUT\(8),
	dataf => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	combout => \ROM_instrucao|memROM~2_combout\);

-- Location: MLABCELL_X4_Y10_N12
\Processador|decoder|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida~2_combout\ = ( !\Processador|decoder|saida~0_combout\ & ( \ROM_instrucao|memROM~11_combout\ & ( ((\ROM_instrucao|memROM~13_combout\) # (\ROM_instrucao|memROM~15_combout\)) # (\ROM_instrucao|memROM~17_combout\) ) ) ) # ( 
-- !\Processador|decoder|saida~0_combout\ & ( !\ROM_instrucao|memROM~11_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \Processador|decoder|ALT_INV_saida~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \Processador|decoder|saida~2_combout\);

-- Location: LABCELL_X5_Y10_N51
\ROM_instrucao|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~20_combout\ = ( \ROM_instrucao|memROM~5_combout\ & ( \ROM_instrucao|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \ROM_instrucao|memROM~20_combout\);

-- Location: LABCELL_X5_Y10_N12
\ROM_instrucao|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~19_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~19_combout\);

-- Location: LABCELL_X6_Y10_N45
\ROM_instrucao|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~18_combout\ = ( \ROM_instrucao|memROM~0_combout\ & ( \ROM_instrucao|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	combout => \ROM_instrucao|memROM~18_combout\);

-- Location: MLABCELL_X4_Y9_N30
\Processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~1_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & (((\MemoriaRAM|ram~145_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & (\ROM_instrucao|memROM~18_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(0) ) + ( !VCC ))
-- \Processador|ULA1|Add0~2\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & (((\MemoriaRAM|ram~145_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & (\ROM_instrucao|memROM~18_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~145_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \Processador|ULA1|Add0~1_sumout\,
	cout => \Processador|ULA1|Add0~2\);

-- Location: MLABCELL_X4_Y9_N18
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

-- Location: MLABCELL_X4_Y10_N51
\Processador|decoder|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~1_combout\ = ( \ROM_instrucao|memROM~11_combout\ ) # ( !\ROM_instrucao|memROM~11_combout\ & ( ((!\ROM_instrucao|memROM~13_combout\) # (\ROM_instrucao|memROM~17_combout\)) # (\ROM_instrucao|memROM~15_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101111111011111110111111101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \Processador|decoder|Equal10~1_combout\);

-- Location: MLABCELL_X4_Y10_N18
\Processador|decoder|saida[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida[5]~3_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~15_combout\ & !\ROM_instrucao|memROM~17_combout\) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( (!\ROM_instrucao|memROM~17_combout\ & 
-- (!\ROM_instrucao|memROM~15_combout\ $ (!\ROM_instrucao|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	combout => \Processador|decoder|saida[5]~3_combout\);

-- Location: FF_X4_Y9_N19
\Processador|REGA|DOUT[0]~DUPLICATE\ : dffeas
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
	q => \Processador|REGA|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y9_N30
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

-- Location: LABCELL_X5_Y9_N33
\Processador|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~1_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & (((!\MemoriaRAM|ram~145_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (((!\ROM_instrucao|memROM~18_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT[0]~DUPLICATE_q\ ) + ( \Processador|ULA1|Add1~34_cout\ ))
-- \Processador|ULA1|Add1~2\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & (((!\MemoriaRAM|ram~145_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (((!\ROM_instrucao|memROM~18_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT[0]~DUPLICATE_q\ ) + ( \Processador|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datac => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~145_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => \Processador|ULA1|Add1~34_cout\,
	sumout => \Processador|ULA1|Add1~1_sumout\,
	cout => \Processador|ULA1|Add1~2\);

-- Location: MLABCELL_X4_Y9_N21
\Processador|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[0]~0_combout\ = ( \Processador|ULA1|Add1~1_sumout\ & ( ((!\Processador|decoder|Equal10~0_combout\ & (\MemoriaRAM|ram~145_combout\)) # (\Processador|decoder|Equal10~0_combout\ & ((\ROM_instrucao|memROM~2_combout\)))) # 
-- (\Processador|decoder|saida~2_combout\) ) ) # ( !\Processador|ULA1|Add1~1_sumout\ & ( (!\Processador|decoder|saida~2_combout\ & ((!\Processador|decoder|Equal10~0_combout\ & (\MemoriaRAM|ram~145_combout\)) # (\Processador|decoder|Equal10~0_combout\ & 
-- ((\ROM_instrucao|memROM~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000101010001000000010101001110101011111110111010101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~2_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~145_combout\,
	datac => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~1_sumout\,
	combout => \Processador|ULA1|saida[0]~0_combout\);

-- Location: FF_X4_Y9_N20
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

-- Location: LABCELL_X6_Y10_N48
\Processador|decoder|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida~1_combout\ = ( !\Processador|PC|DOUT\(8) & ( (\ROM_instrucao|memROM~1_combout\ & (\ROM_instrucao|memROM~14_combout\ & (\ROM_instrucao|memROM~10_combout\ & !\ROM_instrucao|memROM~16_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	dataf => \Processador|PC|ALT_INV_DOUT\(8),
	combout => \Processador|decoder|saida~1_combout\);

-- Location: LABCELL_X6_Y10_N57
\MemoriaRAM|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~164_combout\ = ( !\ROM_instrucao|memROM~8_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~9_combout\ & (\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~6_combout\ & 
-- \Processador|decoder|saida~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \Processador|decoder|ALT_INV_saida~1_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~164_combout\);

-- Location: FF_X6_Y10_N38
\MemoriaRAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(0),
	sload => VCC,
	ena => \MemoriaRAM|ram~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~39_q\);

-- Location: LABCELL_X6_Y10_N39
\MemoriaRAM|ram~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~144_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~39_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MemoriaRAM|ALT_INV_ram~39_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~144_combout\);

-- Location: LABCELL_X6_Y10_N54
\MemoriaRAM|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~163_combout\ = ( !\ROM_instrucao|memROM~4_combout\ & ( \ROM_instrucao|memROM~8_combout\ & ( (!\ROM_instrucao|memROM~9_combout\ & (\ROM_instrucao|memROM~2_combout\ & (\Processador|decoder|saida~1_combout\ & 
-- !\ROM_instrucao|memROM~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datac => \Processador|decoder|ALT_INV_saida~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	combout => \MemoriaRAM|ram~163_combout\);

-- Location: FF_X6_Y10_N25
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
	ena => \MemoriaRAM|ram~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~87_q\);

-- Location: LABCELL_X6_Y10_N51
\MemoriaRAM|ram~143\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~143_combout\ = ( !\ROM_instrucao|memROM~6_combout\ & ( (\MemoriaRAM|ram~87_q\ & \ROM_instrucao|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~87_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~143_combout\);

-- Location: LABCELL_X6_Y10_N33
\MemoriaRAM|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~145_combout\ = ( \ROM_instrucao|memROM~8_combout\ & ( \MemoriaRAM|ram~143_combout\ & ( !\ROM_instrucao|memROM~4_combout\ ) ) ) # ( !\ROM_instrucao|memROM~8_combout\ & ( \MemoriaRAM|ram~143_combout\ & ( (\ROM_instrucao|memROM~4_combout\ & 
-- \MemoriaRAM|ram~144_combout\) ) ) ) # ( !\ROM_instrucao|memROM~8_combout\ & ( !\MemoriaRAM|ram~143_combout\ & ( (\ROM_instrucao|memROM~4_combout\ & \MemoriaRAM|ram~144_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000011000000111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~144_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~143_combout\,
	combout => \MemoriaRAM|ram~145_combout\);

-- Location: MLABCELL_X4_Y9_N33
\Processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~5_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & (((\MemoriaRAM|ram~147_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & (\ROM_instrucao|memROM~19_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add0~2\ ))
-- \Processador|ULA1|Add0~6\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & (((\MemoriaRAM|ram~147_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & (\ROM_instrucao|memROM~19_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~147_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(1),
	cin => \Processador|ULA1|Add0~2\,
	sumout => \Processador|ULA1|Add0~5_sumout\,
	cout => \Processador|ULA1|Add0~6\);

-- Location: MLABCELL_X4_Y9_N12
\Processador|REGA|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|REGA|DOUT[1]~feeder_combout\ = ( \Processador|ULA1|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA1|ALT_INV_Add0~5_sumout\,
	combout => \Processador|REGA|DOUT[1]~feeder_combout\);

-- Location: FF_X4_Y9_N13
\Processador|REGA|DOUT[1]~DUPLICATE\ : dffeas
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
	q => \Processador|REGA|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y9_N36
\Processador|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~5_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & (((!\MemoriaRAM|ram~147_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (((!\ROM_instrucao|memROM~19_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT[1]~DUPLICATE_q\ ) + ( \Processador|ULA1|Add1~2\ ))
-- \Processador|ULA1|Add1~6\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & (((!\MemoriaRAM|ram~147_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (((!\ROM_instrucao|memROM~19_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT[1]~DUPLICATE_q\ ) + ( \Processador|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(8),
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~19_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~147_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \Processador|ULA1|Add1~2\,
	sumout => \Processador|ULA1|Add1~5_sumout\,
	cout => \Processador|ULA1|Add1~6\);

-- Location: MLABCELL_X4_Y9_N15
\Processador|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[1]~1_combout\ = ( \Processador|decoder|saida~2_combout\ & ( \Processador|ULA1|Add1~5_sumout\ ) ) # ( !\Processador|decoder|saida~2_combout\ & ( (!\Processador|decoder|Equal10~0_combout\ & (\MemoriaRAM|ram~147_combout\)) # 
-- (\Processador|decoder|Equal10~0_combout\ & ((\ROM_instrucao|memROM~4_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~147_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datad => \Processador|ULA1|ALT_INV_Add1~5_sumout\,
	dataf => \Processador|decoder|ALT_INV_saida~2_combout\,
	combout => \Processador|ULA1|saida[1]~1_combout\);

-- Location: FF_X4_Y9_N14
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

-- Location: FF_X6_Y9_N11
\MemoriaRAM|ram~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~88_q\);

-- Location: FF_X6_Y9_N32
\MemoriaRAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~40_q\);

-- Location: LABCELL_X6_Y9_N30
\MemoriaRAM|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~146_combout\ = ( \MemoriaRAM|ram~40_q\ & ( \ROM_instrucao|memROM~4_combout\ & ( !\ROM_instrucao|memROM~8_combout\ ) ) ) # ( \MemoriaRAM|ram~40_q\ & ( !\ROM_instrucao|memROM~4_combout\ & ( (\ROM_instrucao|memROM~8_combout\ & 
-- \MemoriaRAM|ram~88_q\) ) ) ) # ( !\MemoriaRAM|ram~40_q\ & ( !\ROM_instrucao|memROM~4_combout\ & ( (\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~88_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~88_q\,
	datae => \MemoriaRAM|ALT_INV_ram~40_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~146_combout\);

-- Location: LABCELL_X6_Y9_N9
\MemoriaRAM|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~147_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~146_combout\ & ( !\ROM_instrucao|memROM~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~146_combout\,
	combout => \MemoriaRAM|ram~147_combout\);

-- Location: MLABCELL_X4_Y9_N36
\Processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~9_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & (((\MemoriaRAM|ram~150_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & (\ROM_instrucao|memROM~20_combout\))) ) + ( 
-- \Processador|REGA|DOUT[2]~DUPLICATE_q\ ) + ( \Processador|ULA1|Add0~6\ ))
-- \Processador|ULA1|Add0~10\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & (((\MemoriaRAM|ram~150_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & (\ROM_instrucao|memROM~20_combout\))) ) + ( 
-- \Processador|REGA|DOUT[2]~DUPLICATE_q\ ) + ( \Processador|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~150_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \Processador|ULA1|Add0~6\,
	sumout => \Processador|ULA1|Add0~9_sumout\,
	cout => \Processador|ULA1|Add0~10\);

-- Location: LABCELL_X5_Y9_N9
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

-- Location: FF_X5_Y9_N10
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

-- Location: LABCELL_X5_Y9_N39
\Processador|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~9_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & (((!\MemoriaRAM|ram~150_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (((!\ROM_instrucao|memROM~20_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(2) ) + ( \Processador|ULA1|Add1~6\ ))
-- \Processador|ULA1|Add1~10\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & (((!\MemoriaRAM|ram~150_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (((!\ROM_instrucao|memROM~20_combout\)) # (\Processador|PC|DOUT\(8)))) ) + ( 
-- \Processador|REGA|DOUT\(2) ) + ( \Processador|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(8),
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~20_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~150_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	cin => \Processador|ULA1|Add1~6\,
	sumout => \Processador|ULA1|Add1~9_sumout\,
	cout => \Processador|ULA1|Add1~10\);

-- Location: LABCELL_X5_Y9_N6
\Processador|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[2]~2_combout\ = ( \Processador|ULA1|Add1~9_sumout\ & ( ((!\Processador|decoder|Equal10~0_combout\ & ((\MemoriaRAM|ram~150_combout\))) # (\Processador|decoder|Equal10~0_combout\ & (\ROM_instrucao|memROM~6_combout\))) # 
-- (\Processador|decoder|saida~2_combout\) ) ) # ( !\Processador|ULA1|Add1~9_sumout\ & ( (!\Processador|decoder|saida~2_combout\ & ((!\Processador|decoder|Equal10~0_combout\ & ((\MemoriaRAM|ram~150_combout\))) # (\Processador|decoder|Equal10~0_combout\ & 
-- (\ROM_instrucao|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000011010000000100001101000000011111110111110001111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \Processador|decoder|ALT_INV_saida~2_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~150_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \Processador|ULA1|saida[2]~2_combout\);

-- Location: FF_X5_Y9_N11
\Processador|REGA|DOUT[2]~DUPLICATE\ : dffeas
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
	q => \Processador|REGA|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X6_Y10_N1
\MemoriaRAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~41_q\);

-- Location: LABCELL_X6_Y10_N27
\MemoriaRAM|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~149_combout\ = ( !\ROM_instrucao|memROM~6_combout\ & ( (\MemoriaRAM|ram~41_q\ & \ROM_instrucao|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~41_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~149_combout\);

-- Location: FF_X6_Y10_N14
\MemoriaRAM|ram~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~89_q\);

-- Location: LABCELL_X6_Y10_N12
\MemoriaRAM|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~148_combout\ = ( !\ROM_instrucao|memROM~6_combout\ & ( (\ROM_instrucao|memROM~2_combout\ & \MemoriaRAM|ram~89_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~89_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~148_combout\);

-- Location: LABCELL_X6_Y10_N3
\MemoriaRAM|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~150_combout\ = ( \MemoriaRAM|ram~148_combout\ & ( (!\ROM_instrucao|memROM~4_combout\ & (\ROM_instrucao|memROM~8_combout\)) # (\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~149_combout\)) ) ) # ( 
-- !\MemoriaRAM|ram~148_combout\ & ( (\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~149_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000001100001111000000110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~149_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~148_combout\,
	combout => \MemoriaRAM|ram~150_combout\);

-- Location: LABCELL_X5_Y9_N42
\Processador|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~13_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & (((!\MemoriaRAM|ram~152_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & ((!\ROM_instrucao|memROM~21_combout\) # ((\Processador|PC|DOUT\(8))))) ) + ( 
-- \Processador|REGA|DOUT[3]~DUPLICATE_q\ ) + ( \Processador|ULA1|Add1~10\ ))
-- \Processador|ULA1|Add1~14\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & (((!\MemoriaRAM|ram~152_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & ((!\ROM_instrucao|memROM~21_combout\) # ((\Processador|PC|DOUT\(8))))) ) + ( 
-- \Processador|REGA|DOUT[3]~DUPLICATE_q\ ) + ( \Processador|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110111100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \MemoriaRAM|ALT_INV_ram~152_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \Processador|ULA1|Add1~10\,
	sumout => \Processador|ULA1|Add1~13_sumout\,
	cout => \Processador|ULA1|Add1~14\);

-- Location: MLABCELL_X4_Y9_N9
\Processador|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[3]~3_combout\ = ( \Processador|ULA1|Add1~13_sumout\ & ( ((!\Processador|decoder|Equal10~0_combout\ & ((\MemoriaRAM|ram~152_combout\))) # (\Processador|decoder|Equal10~0_combout\ & (\ROM_instrucao|memROM~8_combout\))) # 
-- (\Processador|decoder|saida~2_combout\) ) ) # ( !\Processador|ULA1|Add1~13_sumout\ & ( (!\Processador|decoder|saida~2_combout\ & ((!\Processador|decoder|Equal10~0_combout\ & ((\MemoriaRAM|ram~152_combout\))) # (\Processador|decoder|Equal10~0_combout\ & 
-- (\ROM_instrucao|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010100010000000101010001001010111111101110101011111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~152_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \Processador|ULA1|saida[3]~3_combout\);

-- Location: FF_X4_Y9_N8
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

-- Location: MLABCELL_X4_Y9_N39
\Processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~13_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & (((\MemoriaRAM|ram~152_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & (\ROM_instrucao|memROM~21_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(3) ) + ( \Processador|ULA1|Add0~10\ ))
-- \Processador|ULA1|Add0~14\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & (((\MemoriaRAM|ram~152_combout\)))) # (\Processador|decoder|Equal10~0_combout\ & (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & (\ROM_instrucao|memROM~21_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(3) ) + ( \Processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000001011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~21_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~152_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(3),
	cin => \Processador|ULA1|Add0~10\,
	sumout => \Processador|ULA1|Add0~13_sumout\,
	cout => \Processador|ULA1|Add0~14\);

-- Location: MLABCELL_X4_Y9_N6
\Processador|REGA|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|REGA|DOUT[3]~feeder_combout\ = ( \Processador|ULA1|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA1|ALT_INV_Add0~13_sumout\,
	combout => \Processador|REGA|DOUT[3]~feeder_combout\);

-- Location: FF_X4_Y9_N7
\Processador|REGA|DOUT[3]~DUPLICATE\ : dffeas
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
	q => \Processador|REGA|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X6_Y9_N28
\MemoriaRAM|ram~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~90_q\);

-- Location: FF_X6_Y9_N41
\MemoriaRAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~42_q\);

-- Location: LABCELL_X6_Y9_N39
\MemoriaRAM|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~151_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~42_q\) ) ) # ( !\ROM_instrucao|memROM~4_combout\ & ( (\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~90_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~90_q\,
	datad => \MemoriaRAM|ALT_INV_ram~42_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~151_combout\);

-- Location: LABCELL_X6_Y9_N3
\MemoriaRAM|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~152_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~151_combout\ & ( !\ROM_instrucao|memROM~6_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~151_combout\,
	combout => \MemoriaRAM|ram~152_combout\);

-- Location: MLABCELL_X4_Y9_N42
\Processador|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~17_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & \MemoriaRAM|ram~155_combout\) ) + ( \Processador|REGA|DOUT\(4) ) + ( \Processador|ULA1|Add0~14\ ))
-- \Processador|ULA1|Add0~18\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & \MemoriaRAM|ram~155_combout\) ) + ( \Processador|REGA|DOUT\(4) ) + ( \Processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \Processador|REGA|ALT_INV_DOUT\(4),
	datad => \MemoriaRAM|ALT_INV_ram~155_combout\,
	cin => \Processador|ULA1|Add0~14\,
	sumout => \Processador|ULA1|Add0~17_sumout\,
	cout => \Processador|ULA1|Add0~18\);

-- Location: MLABCELL_X4_Y9_N24
\Processador|REGA|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|REGA|DOUT[4]~feeder_combout\ = ( \Processador|ULA1|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA1|ALT_INV_Add0~17_sumout\,
	combout => \Processador|REGA|DOUT[4]~feeder_combout\);

-- Location: MLABCELL_X4_Y9_N27
\Processador|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[4]~4_combout\ = ( \Processador|ULA1|Add1~17_sumout\ & ( ((!\Processador|decoder|Equal10~0_combout\ & \MemoriaRAM|ram~155_combout\)) # (\Processador|decoder|saida~2_combout\) ) ) # ( !\Processador|ULA1|Add1~17_sumout\ & ( 
-- (!\Processador|decoder|saida~2_combout\ & (!\Processador|decoder|Equal10~0_combout\ & \MemoriaRAM|ram~155_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010101111101010101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~2_combout\,
	datac => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~155_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \Processador|ULA1|saida[4]~4_combout\);

-- Location: FF_X4_Y9_N26
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

-- Location: FF_X6_Y9_N26
\MemoriaRAM|ram~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~91_q\);

-- Location: LABCELL_X6_Y9_N42
\MemoriaRAM|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~153_combout\ = ( !\ROM_instrucao|memROM~6_combout\ & ( \ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~91_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~91_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~153_combout\);

-- Location: FF_X6_Y9_N53
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
	ena => \MemoriaRAM|ram~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~43_q\);

-- Location: LABCELL_X6_Y9_N51
\MemoriaRAM|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~154_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & \MemoriaRAM|ram~43_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~43_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~154_combout\);

-- Location: LABCELL_X6_Y9_N57
\MemoriaRAM|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~155_combout\ = ( \MemoriaRAM|ram~153_combout\ & ( \MemoriaRAM|ram~154_combout\ & ( !\ROM_instrucao|memROM~4_combout\ $ (!\ROM_instrucao|memROM~8_combout\) ) ) ) # ( !\MemoriaRAM|ram~153_combout\ & ( \MemoriaRAM|ram~154_combout\ & ( 
-- (\ROM_instrucao|memROM~4_combout\ & !\ROM_instrucao|memROM~8_combout\) ) ) ) # ( \MemoriaRAM|ram~153_combout\ & ( !\MemoriaRAM|ram~154_combout\ & ( (!\ROM_instrucao|memROM~4_combout\ & \ROM_instrucao|memROM~8_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000001111000000000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~153_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~154_combout\,
	combout => \MemoriaRAM|ram~155_combout\);

-- Location: FF_X4_Y9_N25
\Processador|REGA|DOUT[4]~DUPLICATE\ : dffeas
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
	q => \Processador|REGA|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y9_N45
\Processador|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~17_sumout\ = SUM(( \Processador|REGA|DOUT[4]~DUPLICATE_q\ ) + ( (!\MemoriaRAM|ram~155_combout\) # (\Processador|decoder|Equal10~0_combout\) ) + ( \Processador|ULA1|Add1~14\ ))
-- \Processador|ULA1|Add1~18\ = CARRY(( \Processador|REGA|DOUT[4]~DUPLICATE_q\ ) + ( (!\MemoriaRAM|ram~155_combout\) # (\Processador|decoder|Equal10~0_combout\) ) + ( \Processador|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011000000110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~155_combout\,
	datad => \Processador|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \Processador|ULA1|Add1~14\,
	sumout => \Processador|ULA1|Add1~17_sumout\,
	cout => \Processador|ULA1|Add1~18\);

-- Location: FF_X6_Y9_N20
\MemoriaRAM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~44_q\);

-- Location: FF_X6_Y9_N8
\MemoriaRAM|ram~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(5),
	sload => VCC,
	ena => \MemoriaRAM|ram~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~92_q\);

-- Location: LABCELL_X6_Y9_N15
\MemoriaRAM|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~156_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( (\MemoriaRAM|ram~44_q\ & !\ROM_instrucao|memROM~8_combout\) ) ) # ( !\ROM_instrucao|memROM~4_combout\ & ( (\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~92_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001101000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~44_q\,
	datab => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~92_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~156_combout\);

-- Location: LABCELL_X6_Y9_N27
\MemoriaRAM|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~157_combout\ = ( \MemoriaRAM|ram~156_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & \ROM_instrucao|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~156_combout\,
	combout => \MemoriaRAM|ram~157_combout\);

-- Location: MLABCELL_X4_Y9_N3
\Processador|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[5]~5_combout\ = ( \Processador|ULA1|Add1~21_sumout\ & ( ((!\Processador|decoder|Equal10~0_combout\ & \MemoriaRAM|ram~157_combout\)) # (\Processador|decoder|saida~2_combout\) ) ) # ( !\Processador|ULA1|Add1~21_sumout\ & ( 
-- (!\Processador|decoder|saida~2_combout\ & (!\Processador|decoder|Equal10~0_combout\ & \MemoriaRAM|ram~157_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010101111101010101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~2_combout\,
	datac => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~157_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \Processador|ULA1|saida[5]~5_combout\);

-- Location: FF_X4_Y9_N2
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

-- Location: MLABCELL_X4_Y9_N45
\Processador|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~21_sumout\ = SUM(( (!\Processador|decoder|Equal10~0_combout\ & \MemoriaRAM|ram~157_combout\) ) + ( \Processador|REGA|DOUT\(5) ) + ( \Processador|ULA1|Add0~18\ ))
-- \Processador|ULA1|Add0~22\ = CARRY(( (!\Processador|decoder|Equal10~0_combout\ & \MemoriaRAM|ram~157_combout\) ) + ( \Processador|REGA|DOUT\(5) ) + ( \Processador|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|REGA|ALT_INV_DOUT\(5),
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~157_combout\,
	cin => \Processador|ULA1|Add0~18\,
	sumout => \Processador|ULA1|Add0~21_sumout\,
	cout => \Processador|ULA1|Add0~22\);

-- Location: MLABCELL_X4_Y9_N0
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

-- Location: FF_X4_Y9_N1
\Processador|REGA|DOUT[5]~DUPLICATE\ : dffeas
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
	q => \Processador|REGA|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X5_Y9_N48
\Processador|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~21_sumout\ = SUM(( (!\MemoriaRAM|ram~157_combout\) # (\Processador|decoder|Equal10~0_combout\) ) + ( \Processador|REGA|DOUT[5]~DUPLICATE_q\ ) + ( \Processador|ULA1|Add1~18\ ))
-- \Processador|ULA1|Add1~22\ = CARRY(( (!\MemoriaRAM|ram~157_combout\) # (\Processador|decoder|Equal10~0_combout\) ) + ( \Processador|REGA|DOUT[5]~DUPLICATE_q\ ) + ( \Processador|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000001111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	datac => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~157_combout\,
	cin => \Processador|ULA1|Add1~18\,
	sumout => \Processador|ULA1|Add1~21_sumout\,
	cout => \Processador|ULA1|Add1~22\);

-- Location: FF_X6_Y9_N50
\MemoriaRAM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~46_q\);

-- Location: FF_X6_Y9_N16
\MemoriaRAM|ram~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~94_q\);

-- Location: LABCELL_X6_Y9_N48
\MemoriaRAM|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~161_combout\ = ( \MemoriaRAM|ram~94_q\ & ( (!\ROM_instrucao|memROM~8_combout\ & (\ROM_instrucao|memROM~4_combout\ & \MemoriaRAM|ram~46_q\)) # (\ROM_instrucao|memROM~8_combout\ & (!\ROM_instrucao|memROM~4_combout\)) ) ) # ( 
-- !\MemoriaRAM|ram~94_q\ & ( (!\ROM_instrucao|memROM~8_combout\ & (\ROM_instrucao|memROM~4_combout\ & \MemoriaRAM|ram~46_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000110000110000001111000011000000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~46_q\,
	dataf => \MemoriaRAM|ALT_INV_ram~94_q\,
	combout => \MemoriaRAM|ram~161_combout\);

-- Location: LABCELL_X6_Y9_N18
\MemoriaRAM|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~162_combout\ = ( \MemoriaRAM|ram~161_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & \ROM_instrucao|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~161_combout\,
	combout => \MemoriaRAM|ram~162_combout\);

-- Location: MLABCELL_X4_Y9_N48
\Processador|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~25_sumout\ = SUM(( \Processador|REGA|DOUT\(6) ) + ( (!\Processador|decoder|Equal10~0_combout\ & \MemoriaRAM|ram~160_combout\) ) + ( \Processador|ULA1|Add0~22\ ))
-- \Processador|ULA1|Add0~26\ = CARRY(( \Processador|REGA|DOUT\(6) ) + ( (!\Processador|decoder|Equal10~0_combout\ & \MemoriaRAM|ram~160_combout\) ) + ( \Processador|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~160_combout\,
	datad => \Processador|REGA|ALT_INV_DOUT\(6),
	cin => \Processador|ULA1|Add0~22\,
	sumout => \Processador|ULA1|Add0~25_sumout\,
	cout => \Processador|ULA1|Add0~26\);

-- Location: MLABCELL_X4_Y9_N54
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

-- Location: LABCELL_X5_Y9_N51
\Processador|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~25_sumout\ = SUM(( (!\MemoriaRAM|ram~160_combout\) # (\Processador|decoder|Equal10~0_combout\) ) + ( \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add1~22\ ))
-- \Processador|ULA1|Add1~26\ = CARRY(( (!\MemoriaRAM|ram~160_combout\) # (\Processador|decoder|Equal10~0_combout\) ) + ( \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|REGA|ALT_INV_DOUT\(6),
	datac => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~160_combout\,
	cin => \Processador|ULA1|Add1~22\,
	sumout => \Processador|ULA1|Add1~25_sumout\,
	cout => \Processador|ULA1|Add1~26\);

-- Location: MLABCELL_X4_Y9_N57
\Processador|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[6]~6_combout\ = ( \Processador|ULA1|Add1~25_sumout\ & ( ((!\Processador|decoder|Equal10~0_combout\ & \MemoriaRAM|ram~160_combout\)) # (\Processador|decoder|saida~2_combout\) ) ) # ( !\Processador|ULA1|Add1~25_sumout\ & ( 
-- (!\Processador|decoder|saida~2_combout\ & (!\Processador|decoder|Equal10~0_combout\ & \MemoriaRAM|ram~160_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000001010101111101010101010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~2_combout\,
	datac => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~160_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \Processador|ULA1|saida[6]~6_combout\);

-- Location: FF_X4_Y9_N55
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

-- Location: FF_X6_Y9_N38
\MemoriaRAM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~164_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~45_q\);

-- Location: LABCELL_X6_Y9_N36
\MemoriaRAM|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~159_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & \MemoriaRAM|ram~45_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~45_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~159_combout\);

-- Location: FF_X6_Y9_N14
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
	ena => \MemoriaRAM|ram~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~93_q\);

-- Location: LABCELL_X6_Y9_N12
\MemoriaRAM|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~158_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & \MemoriaRAM|ram~93_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~93_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~158_combout\);

-- Location: LABCELL_X6_Y9_N21
\MemoriaRAM|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~160_combout\ = ( \MemoriaRAM|ram~158_combout\ & ( (!\ROM_instrucao|memROM~4_combout\ & (\ROM_instrucao|memROM~8_combout\)) # (\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~159_combout\)) ) ) # ( 
-- !\MemoriaRAM|ram~158_combout\ & ( (\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~159_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000001100001111000000110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~159_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~158_combout\,
	combout => \MemoriaRAM|ram~160_combout\);

-- Location: MLABCELL_X4_Y9_N51
\Processador|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~29_sumout\ = SUM(( \Processador|REGA|DOUT\(7) ) + ( (!\Processador|decoder|Equal10~0_combout\ & \MemoriaRAM|ram~162_combout\) ) + ( \Processador|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~162_combout\,
	datad => \Processador|REGA|ALT_INV_DOUT\(7),
	cin => \Processador|ULA1|Add0~26\,
	sumout => \Processador|ULA1|Add0~29_sumout\);

-- Location: LABCELL_X5_Y9_N3
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

-- Location: LABCELL_X5_Y9_N0
\Processador|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[7]~7_combout\ = ( \Processador|decoder|Equal10~0_combout\ & ( (\Processador|decoder|saida~2_combout\ & \Processador|ULA1|Add1~29_sumout\) ) ) # ( !\Processador|decoder|Equal10~0_combout\ & ( (!\Processador|decoder|saida~2_combout\ 
-- & (\MemoriaRAM|ram~162_combout\)) # (\Processador|decoder|saida~2_combout\ & ((\Processador|ULA1|Add1~29_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~162_combout\,
	datac => \Processador|decoder|ALT_INV_saida~2_combout\,
	datad => \Processador|ULA1|ALT_INV_Add1~29_sumout\,
	dataf => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	combout => \Processador|ULA1|saida[7]~7_combout\);

-- Location: FF_X5_Y9_N5
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

-- Location: LABCELL_X5_Y9_N54
\Processador|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~29_sumout\ = SUM(( (!\MemoriaRAM|ram~162_combout\) # (\Processador|decoder|Equal10~0_combout\) ) + ( \Processador|REGA|DOUT\(7) ) + ( \Processador|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|REGA|ALT_INV_DOUT\(7),
	datab => \MemoriaRAM|ALT_INV_ram~162_combout\,
	datac => \Processador|decoder|ALT_INV_Equal10~0_combout\,
	cin => \Processador|ULA1|Add1~26\,
	sumout => \Processador|ULA1|Add1~29_sumout\);

-- Location: LABCELL_X5_Y9_N27
\Processador|flagIgual|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|flagIgual|DOUT~2_combout\ = ( \Processador|ULA1|Add1~5_sumout\ & ( \Processador|ULA1|Add1~9_sumout\ & ( (!\Processador|flagIgual|DOUT~1_combout\ & \Processador|flagIgual|DOUT~q\) ) ) ) # ( !\Processador|ULA1|Add1~5_sumout\ & ( 
-- \Processador|ULA1|Add1~9_sumout\ & ( (!\Processador|flagIgual|DOUT~1_combout\ & \Processador|flagIgual|DOUT~q\) ) ) ) # ( \Processador|ULA1|Add1~5_sumout\ & ( !\Processador|ULA1|Add1~9_sumout\ & ( (!\Processador|flagIgual|DOUT~1_combout\ & 
-- \Processador|flagIgual|DOUT~q\) ) ) ) # ( !\Processador|ULA1|Add1~5_sumout\ & ( !\Processador|ULA1|Add1~9_sumout\ & ( (!\Processador|flagIgual|DOUT~1_combout\ & (\Processador|flagIgual|DOUT~q\)) # (\Processador|flagIgual|DOUT~1_combout\ & 
-- (((!\Processador|ULA1|Add1~13_sumout\ & !\Processador|ULA1|Add1~1_sumout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|flagIgual|ALT_INV_DOUT~1_combout\,
	datab => \Processador|flagIgual|ALT_INV_DOUT~q\,
	datac => \Processador|ULA1|ALT_INV_Add1~13_sumout\,
	datad => \Processador|ULA1|ALT_INV_Add1~1_sumout\,
	datae => \Processador|ULA1|ALT_INV_Add1~5_sumout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \Processador|flagIgual|DOUT~2_combout\);

-- Location: LABCELL_X5_Y9_N18
\Processador|flagIgual|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|flagIgual|DOUT~0_combout\ = ( \Processador|flagIgual|DOUT~2_combout\ & ( \Processador|ULA1|Add1~25_sumout\ & ( !\Processador|flagIgual|DOUT~1_combout\ ) ) ) # ( \Processador|flagIgual|DOUT~2_combout\ & ( !\Processador|ULA1|Add1~25_sumout\ & ( 
-- (!\Processador|flagIgual|DOUT~1_combout\) # ((!\Processador|ULA1|Add1~17_sumout\ & (!\Processador|ULA1|Add1~21_sumout\ & !\Processador|ULA1|Add1~29_sumout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111010101010101000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|flagIgual|ALT_INV_DOUT~1_combout\,
	datab => \Processador|ULA1|ALT_INV_Add1~17_sumout\,
	datac => \Processador|ULA1|ALT_INV_Add1~21_sumout\,
	datad => \Processador|ULA1|ALT_INV_Add1~29_sumout\,
	datae => \Processador|flagIgual|ALT_INV_DOUT~2_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \Processador|flagIgual|DOUT~0_combout\);

-- Location: FF_X5_Y9_N19
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

-- Location: MLABCELL_X4_Y10_N33
\Processador|PC|DOUT[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|PC|DOUT[0]~0_combout\ = ( \ROM_instrucao|memROM~15_combout\ & ( (!\ROM_instrucao|memROM~17_combout\ & ((!\ROM_instrucao|memROM~11_combout\ & ((\ROM_instrucao|memROM~13_combout\))) # (\ROM_instrucao|memROM~11_combout\ & 
-- (\Processador|flagIgual|DOUT~q\)))) ) ) # ( !\ROM_instrucao|memROM~15_combout\ & ( (\ROM_instrucao|memROM~17_combout\ & (!\ROM_instrucao|memROM~13_combout\ & \ROM_instrucao|memROM~11_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000000001100010001000000110001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|flagIgual|ALT_INV_DOUT~q\,
	datab => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	combout => \Processador|PC|DOUT[0]~0_combout\);

-- Location: FF_X7_Y10_N37
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

-- Location: LABCELL_X5_Y10_N27
\Processador|MUX4x1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[2]~2_combout\ = ( \ROM_instrucao|memROM~6_combout\ & ( (!\Processador|decoder|Equal14~0_combout\ & (((\Processador|incrementaPC|Add0~9_sumout\)) # (\Processador|PC|DOUT[0]~0_combout\))) # 
-- (\Processador|decoder|Equal14~0_combout\ & (((\Processador|reg_endretorno|DOUT\(2))))) ) ) # ( !\ROM_instrucao|memROM~6_combout\ & ( (!\Processador|decoder|Equal14~0_combout\ & (!\Processador|PC|DOUT[0]~0_combout\ & 
-- ((\Processador|incrementaPC|Add0~9_sumout\)))) # (\Processador|decoder|Equal14~0_combout\ & (((\Processador|reg_endretorno|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	datab => \Processador|PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \Processador|reg_endretorno|ALT_INV_DOUT\(2),
	datad => \Processador|incrementaPC|ALT_INV_Add0~9_sumout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \Processador|MUX4x1|saida_MUX[2]~2_combout\);

-- Location: FF_X5_Y10_N29
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

-- Location: LABCELL_X7_Y10_N24
\ROM_instrucao|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~9_combout\ = ( \Processador|PC|DOUT[0]~DUPLICATE_q\ & ( \ROM_instrucao|memROM~1_combout\ & ( (!\Processador|PC|DOUT\(8) & (\Processador|PC|DOUT[1]~DUPLICATE_q\ & (!\Processador|PC|DOUT[2]~DUPLICATE_q\ $ 
-- (!\Processador|PC|DOUT[3]~DUPLICATE_q\)))) ) ) ) # ( !\Processador|PC|DOUT[0]~DUPLICATE_q\ & ( \ROM_instrucao|memROM~1_combout\ & ( (\Processador|PC|DOUT[2]~DUPLICATE_q\ & (!\Processador|PC|DOUT\(8) & (!\Processador|PC|DOUT[3]~DUPLICATE_q\ & 
-- \Processador|PC|DOUT[1]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~9_combout\);

-- Location: LABCELL_X7_Y10_N54
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

-- Location: FF_X7_Y10_N56
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

-- Location: LABCELL_X6_Y10_N18
\Processador|MUX4x1|saida_MUX[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[8]~8_combout\ = ( \Processador|incrementaPC|Add0~33_sumout\ & ( (!\Processador|decoder|Equal14~0_combout\ & (((!\Processador|PC|DOUT[0]~0_combout\)) # (\ROM_instrucao|memROM~9_combout\))) # 
-- (\Processador|decoder|Equal14~0_combout\ & (((\Processador|reg_endretorno|DOUT\(8))))) ) ) # ( !\Processador|incrementaPC|Add0~33_sumout\ & ( (!\Processador|decoder|Equal14~0_combout\ & (\ROM_instrucao|memROM~9_combout\ & 
-- ((\Processador|PC|DOUT[0]~0_combout\)))) # (\Processador|decoder|Equal14~0_combout\ & (((\Processador|reg_endretorno|DOUT\(8))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110011000001010011001111110101001100111111010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datab => \Processador|reg_endretorno|ALT_INV_DOUT\(8),
	datac => \Processador|PC|ALT_INV_DOUT[0]~0_combout\,
	datad => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	dataf => \Processador|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \Processador|MUX4x1|saida_MUX[8]~8_combout\);

-- Location: FF_X6_Y10_N19
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

-- Location: MLABCELL_X4_Y10_N48
\ROM_instrucao|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~15_combout\ = ( \ROM_instrucao|memROM~14_combout\ & ( (!\Processador|PC|DOUT\(8) & \ROM_instrucao|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	combout => \ROM_instrucao|memROM~15_combout\);

-- Location: MLABCELL_X4_Y10_N0
\Processador|decoder|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida~0_combout\ = ( !\ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~13_combout\ & ( !\ROM_instrucao|memROM~15_combout\ $ (!\ROM_instrucao|memROM~17_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \Processador|decoder|saida~0_combout\);

-- Location: MLABCELL_X4_Y10_N54
\Processador|decoder|Equal14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal14~0_combout\ = ( \ROM_instrucao|memROM~12_combout\ & ( \ROM_instrucao|memROM~17_combout\ & ( (!\Processador|decoder|saida~0_combout\ & (!\ROM_instrucao|memROM~10_combout\ & !\ROM_instrucao|memROM~14_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	combout => \Processador|decoder|Equal14~0_combout\);

-- Location: FF_X7_Y10_N31
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

-- Location: LABCELL_X5_Y10_N24
\Processador|MUX4x1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|MUX4x1|saida_MUX[0]~0_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( (!\Processador|decoder|Equal14~0_combout\ & (((\Processador|incrementaPC|Add0~1_sumout\)) # (\Processador|PC|DOUT[0]~0_combout\))) # 
-- (\Processador|decoder|Equal14~0_combout\ & (((\Processador|reg_endretorno|DOUT\(0))))) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( (!\Processador|decoder|Equal14~0_combout\ & (!\Processador|PC|DOUT[0]~0_combout\ & 
-- ((\Processador|incrementaPC|Add0~1_sumout\)))) # (\Processador|decoder|Equal14~0_combout\ & (((\Processador|reg_endretorno|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110001101000001011000110100100111101011110010011110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal14~0_combout\,
	datab => \Processador|PC|ALT_INV_DOUT[0]~0_combout\,
	datac => \Processador|reg_endretorno|ALT_INV_DOUT\(0),
	datad => \Processador|incrementaPC|ALT_INV_Add0~1_sumout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \Processador|MUX4x1|saida_MUX[0]~0_combout\);

-- Location: FF_X5_Y10_N26
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

-- Location: LABCELL_X7_Y10_N15
\DecoderSelEnd|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderSelEnd|Equal0~0_combout\ = ( !\ROM_instrucao|memROM~2_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( (!\ROM_instrucao|memROM~4_combout\ & (\Processador|decoder|saida~1_combout\ & \ROM_instrucao|memROM~9_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \Processador|decoder|ALT_INV_saida~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \DecoderSelEnd|Equal0~0_combout\);

-- Location: FF_X7_Y10_N17
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
	ena => \DecoderSelEnd|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(0));

-- Location: FF_X5_Y9_N25
\RegistradorLedR|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(1));

-- Location: FF_X6_Y9_N58
\RegistradorLedR|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(2));

-- Location: FF_X6_Y9_N1
\RegistradorLedR|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(3));

-- Location: FF_X6_Y9_N55
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
	ena => \DecoderSelEnd|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(4));

-- Location: FF_X6_Y9_N5
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
	ena => \DecoderSelEnd|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(5));

-- Location: FF_X6_Y9_N44
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
	ena => \DecoderSelEnd|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(6));

-- Location: FF_X6_Y9_N46
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
	ena => \DecoderSelEnd|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorLedR|DOUT\(7));

-- Location: LABCELL_X6_Y10_N0
\DecoderSelEnd|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderSelEnd|Equal0~1_combout\ = ( !\ROM_instrucao|memROM~6_combout\ & ( (!\ROM_instrucao|memROM~4_combout\ & \ROM_instrucao|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \DecoderSelEnd|Equal0~1_combout\);

-- Location: LABCELL_X6_Y10_N24
\flipFlopLed8|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flipFlopLed8|DOUT~0_combout\ = ( \ROM_instrucao|memROM~9_combout\ & ( (!\DecoderSelEnd|Equal0~1_combout\ & (\flipFlopLed8|DOUT~q\)) # (\DecoderSelEnd|Equal0~1_combout\ & ((!\Processador|decoder|saida~1_combout\ & (\flipFlopLed8|DOUT~q\)) # 
-- (\Processador|decoder|saida~1_combout\ & ((\Processador|REGA|DOUT\(0)))))) ) ) # ( !\ROM_instrucao|memROM~9_combout\ & ( \flipFlopLed8|DOUT~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110010001101110011001000110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DecoderSelEnd|ALT_INV_Equal0~1_combout\,
	datab => \flipFlopLed8|ALT_INV_DOUT~q\,
	datac => \Processador|decoder|ALT_INV_saida~1_combout\,
	datad => \Processador|REGA|ALT_INV_DOUT\(0),
	dataf => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \flipFlopLed8|DOUT~0_combout\);

-- Location: FF_X6_Y10_N47
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

-- Location: LABCELL_X7_Y10_N6
\AndLed9|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndLed9|saida~0_combout\ = ( \Processador|decoder|saida~1_combout\ & ( (\ROM_instrucao|memROM~9_combout\ & !\ROM_instrucao|memROM~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \Processador|decoder|ALT_INV_saida~1_combout\,
	combout => \AndLed9|saida~0_combout\);

-- Location: LABCELL_X7_Y10_N9
\flipFlopLed9|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \flipFlopLed9|DOUT~0_combout\ = ( \ROM_instrucao|memROM~6_combout\ & ( \flipFlopLed9|DOUT~q\ ) ) # ( !\ROM_instrucao|memROM~6_combout\ & ( (!\ROM_instrucao|memROM~4_combout\ & (\flipFlopLed9|DOUT~q\)) # (\ROM_instrucao|memROM~4_combout\ & 
-- ((!\AndLed9|saida~0_combout\ & (\flipFlopLed9|DOUT~q\)) # (\AndLed9|saida~0_combout\ & ((\Processador|REGA|DOUT[0]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001000110111001100100011011100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datab => \flipFlopLed9|ALT_INV_DOUT~q\,
	datac => \AndLed9|ALT_INV_saida~0_combout\,
	datad => \Processador|REGA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \flipFlopLed9|DOUT~0_combout\);

-- Location: LABCELL_X7_Y10_N18
\flipFlopLed9|DOUT~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \flipFlopLed9|DOUT~feeder_combout\ = \flipFlopLed9|DOUT~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \flipFlopLed9|ALT_INV_DOUT~0_combout\,
	combout => \flipFlopLed9|DOUT~feeder_combout\);

-- Location: FF_X7_Y10_N19
\flipFlopLed9|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \flipFlopLed9|DOUT~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \flipFlopLed9|DOUT~q\);

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

-- Location: IOIBUF_X54_Y16_N55
\FPGA_RESET_N~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET_N,
	o => \FPGA_RESET_N~input_o\);

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

-- Location: LABCELL_X40_Y15_N3
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


