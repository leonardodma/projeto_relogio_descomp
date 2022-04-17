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

-- DATE "04/15/2022 18:18:08"

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
	ACUMULADOR : OUT std_logic_vector(7 DOWNTO 0);
	INSTRUCAO : OUT std_logic_vector(12 DOWNTO 0)
	);
END relogio;

-- Design Ports Information
-- CLOCK_50	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY0	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY1	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY2	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY3	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FPGA_RESET	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_U17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[0]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[1]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[4]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[5]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[6]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ACUMULADOR[7]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[0]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[3]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[4]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[5]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[6]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[7]	=>  Location: PIN_U16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[8]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[9]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[10]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[11]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INSTRUCAO[12]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~5_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~6_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~9_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~10_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~13_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~14_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~11_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~12_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~0_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~3_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~4_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~7_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~8_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \Processador|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~2_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|decoder|Equal10~1_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~16_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~15_combout\ : std_logic;
SIGNAL \Processador|decoder|saida~0_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~34_cout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~2_combout\ : std_logic;
SIGNAL \Processador|decoder|saida~1_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~559_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~566_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~63_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~567_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~71_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~564_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~31_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~565_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~39_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~528_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~562_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~47_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~55feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~563_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~55_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~560_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~15_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~561_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~23_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~527_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~529_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~2\ : std_logic;
SIGNAL \Processador|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[1]~1_combout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~32_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~16_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~530_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~56_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~72_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~533_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~64_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~48_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~531_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~40_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~24_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~532_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~534_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~2\ : std_logic;
SIGNAL \Processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \AndHEX2|saida~0_combout\ : std_logic;
SIGNAL \DecoderSelEnd|Equal0~0_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~50_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~66_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~539_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~34_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~18_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~538_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~74_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~58feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~58_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~541_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~42_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~26_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~540_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~542_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~17_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~6\ : std_logic;
SIGNAL \Processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|ULA1|Add1~6\ : std_logic;
SIGNAL \Processador|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[2]~2_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~65feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~65_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~41feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~41_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~33_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~73_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~536_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~49_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~17_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~57feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~57_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~25_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~535_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~537_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~10\ : std_logic;
SIGNAL \Processador|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[3]~3_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~10\ : std_logic;
SIGNAL \Processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \RegistradorHEX0|DOUT[0]~feeder_combout\ : std_logic;
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
SIGNAL \RegistradorHEX2|DOUT[0]~feeder_combout\ : std_logic;
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
SIGNAL \MemoriaRAM|ram~35_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~43feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~43_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~67_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~75_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~544_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~19feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~19_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~51_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~59_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~27_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~543_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~545_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~14\ : std_logic;
SIGNAL \Processador|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~14\ : std_logic;
SIGNAL \Processador|ULA1|Add1~17_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[4]~4_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~18_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~18\ : std_logic;
SIGNAL \Processador|ULA1|Add1~21_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[5]~5_combout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~60_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~76_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~549_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~20_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~36_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~546_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~52_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~68_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~547_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~44_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~28_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~548_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~550_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~18\ : std_logic;
SIGNAL \Processador|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \MemoriaRAM|ram~45_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~69_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~37_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~77_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~552_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~21_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~53feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~53_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~29_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~61_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~551_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~553_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~22\ : std_logic;
SIGNAL \Processador|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~22\ : std_logic;
SIGNAL \Processador|ULA1|Add1~25_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[6]~6_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~62_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~78_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~557_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~54_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~70_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~555_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~38feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~38_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~22_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~554_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~30_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~46feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~46_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~556_combout\ : std_logic;
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
SIGNAL \Processador|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|REGA|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|REGA|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~558_combout\ : std_logic;
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
SIGNAL \AndHEX2|ALT_INV_saida~0_combout\ : std_logic;
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
ACUMULADOR <= ww_ACUMULADOR;
INSTRUCAO <= ww_INSTRUCAO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\Processador|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \Processador|REGA|DOUT[5]~DUPLICATE_q\;
\Processador|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \Processador|REGA|DOUT[3]~DUPLICATE_q\;
\Processador|REGA|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \Processador|REGA|DOUT[2]~DUPLICATE_q\;
\Processador|REGA|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \Processador|REGA|DOUT[1]~DUPLICATE_q\;
\Processador|REGA|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \Processador|REGA|DOUT[0]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[8]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[2]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[0]~DUPLICATE_q\;
\ROM_instrucao|ALT_INV_memROM~18_combout\ <= NOT \ROM_instrucao|memROM~18_combout\;
\ROM_instrucao|ALT_INV_memROM~17_combout\ <= NOT \ROM_instrucao|memROM~17_combout\;
\ROM_instrucao|ALT_INV_memROM~16_combout\ <= NOT \ROM_instrucao|memROM~16_combout\;
\MemoriaRAM|ALT_INV_ram~559_combout\ <= NOT \MemoriaRAM|ram~559_combout\;
\ROM_instrucao|ALT_INV_memROM~15_combout\ <= NOT \ROM_instrucao|memROM~15_combout\;
\MemoriaRAM|ALT_INV_ram~558_combout\ <= NOT \MemoriaRAM|ram~558_combout\;
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
\AndHEX2|ALT_INV_saida~0_combout\ <= NOT \AndHEX2|saida~0_combout\;
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

-- Location: IOOBUF_X0_Y18_N96
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

-- Location: IOOBUF_X0_Y18_N62
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

-- Location: IOOBUF_X0_Y18_N79
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

-- Location: IOOBUF_X29_Y0_N19
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

-- Location: IOOBUF_X0_Y20_N56
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

-- Location: IOOBUF_X0_Y20_N39
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

-- Location: IOOBUF_X0_Y20_N22
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

-- Location: IOOBUF_X33_Y0_N76
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

-- Location: IOOBUF_X10_Y0_N59
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

-- Location: IOOBUF_X50_Y45_N2
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

-- Location: IOOBUF_X54_Y17_N5
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

-- Location: IOOBUF_X50_Y45_N36
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

-- Location: IOOBUF_X44_Y45_N36
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

-- Location: IOOBUF_X54_Y19_N56
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

-- Location: IOOBUF_X38_Y0_N36
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

-- Location: IOOBUF_X32_Y45_N42
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

-- Location: IOOBUF_X22_Y45_N36
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

-- Location: IOOBUF_X34_Y45_N36
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X23_Y0_N93
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

-- Location: IOOBUF_X25_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X24_Y0_N19
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

-- Location: IOOBUF_X18_Y0_N53
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

-- Location: IOOBUF_X10_Y0_N93
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

-- Location: IOOBUF_X23_Y0_N76
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

-- Location: IOOBUF_X33_Y0_N42
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

-- Location: IOOBUF_X22_Y0_N53
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

-- Location: IOOBUF_X25_Y0_N19
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

-- Location: IOOBUF_X10_Y0_N76
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

-- Location: IOOBUF_X0_Y19_N22
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

-- Location: IOOBUF_X11_Y0_N53
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

-- Location: IOOBUF_X22_Y0_N19
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

-- Location: IOOBUF_X22_Y0_N36
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

-- Location: IOOBUF_X29_Y0_N53
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

-- Location: IOOBUF_X34_Y0_N53
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

-- Location: IOOBUF_X29_Y0_N36
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

-- Location: IOOBUF_X33_Y0_N93
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

-- Location: IOOBUF_X23_Y0_N59
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

-- Location: IOOBUF_X22_Y0_N2
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

-- Location: IOOBUF_X14_Y0_N53
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

-- Location: IOOBUF_X14_Y0_N19
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

-- Location: IOOBUF_X19_Y0_N19
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

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X18_Y0_N36
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

-- Location: IOOBUF_X11_Y0_N2
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

-- Location: IOOBUF_X11_Y0_N36
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

-- Location: IOOBUF_X18_Y0_N19
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X19_Y0_N53
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X10_Y0_N42
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X19_Y0_N2
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

-- Location: IOOBUF_X24_Y0_N36
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

-- Location: IOOBUF_X25_Y0_N36
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

-- Location: IOOBUF_X23_Y0_N42
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

-- Location: IOOBUF_X34_Y0_N36
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X19_Y0_N36
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

-- Location: IOOBUF_X11_Y0_N19
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

-- Location: IOOBUF_X16_Y0_N93
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

-- Location: IOOBUF_X16_Y0_N42
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

-- Location: IOOBUF_X16_Y0_N59
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

-- Location: IOOBUF_X16_Y0_N76
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

-- Location: IOOBUF_X0_Y19_N56
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

-- Location: IOOBUF_X12_Y45_N19
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

-- Location: IOOBUF_X0_Y19_N5
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

-- Location: IOOBUF_X12_Y0_N36
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

-- Location: IOOBUF_X12_Y0_N53
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

-- Location: IOOBUF_X0_Y19_N39
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

-- Location: IOOBUF_X12_Y0_N19
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

-- Location: IOOBUF_X36_Y45_N2
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

-- Location: IOOBUF_X32_Y45_N76
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

-- Location: IOOBUF_X24_Y0_N53
\INSTRUCAO[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(5));

-- Location: IOOBUF_X38_Y0_N2
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

-- Location: IOOBUF_X52_Y0_N19
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

-- Location: IOOBUF_X25_Y0_N53
\INSTRUCAO[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~8_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(8));

-- Location: IOOBUF_X0_Y18_N45
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
	o => ww_INSTRUCAO(9));

-- Location: IOOBUF_X12_Y45_N53
\INSTRUCAO[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ROM_instrucao|memROM~12_combout\,
	devoe => ww_devoe,
	o => ww_INSTRUCAO(10));

-- Location: IOOBUF_X14_Y45_N19
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

-- Location: IOOBUF_X36_Y0_N36
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

-- Location: IOIBUF_X54_Y18_N61
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G10
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: MLABCELL_X13_Y10_N30
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

-- Location: MLABCELL_X13_Y10_N33
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

-- Location: MLABCELL_X13_Y10_N39
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

-- Location: MLABCELL_X13_Y10_N42
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

-- Location: LABCELL_X14_Y8_N24
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

-- Location: MLABCELL_X13_Y10_N15
\ROM_instrucao|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~5_combout\ = ( \Processador|PC|DOUT\(1) & ( (\Processador|PC|DOUT\(3) & (\Processador|PC|DOUT\(0) & !\Processador|PC|DOUT\(2))) ) ) # ( !\Processador|PC|DOUT\(1) & ( (\Processador|PC|DOUT\(3) & (\Processador|PC|DOUT\(0) & 
-- \Processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(3),
	datac => \Processador|PC|ALT_INV_DOUT\(0),
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	dataf => \Processador|PC|ALT_INV_DOUT\(1),
	combout => \ROM_instrucao|memROM~5_combout\);

-- Location: MLABCELL_X13_Y10_N6
\ROM_instrucao|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~6_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (\ROM_instrucao|memROM~5_combout\ & !\Processador|PC|DOUT[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datad => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~6_combout\);

-- Location: FF_X13_Y10_N37
\Processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|incrementaPC|Add0~9_sumout\,
	asdata => \ROM_instrucao|memROM~6_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y10_N0
\ROM_instrucao|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~9_combout\ = ( \Processador|PC|DOUT\(3) & ( (\Processador|PC|DOUT[0]~DUPLICATE_q\ & ((!\Processador|PC|DOUT\(1)) # (!\Processador|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\Processador|PC|DOUT\(3) & ( \Processador|PC|DOUT[0]~DUPLICATE_q\ ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100000011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT\(1),
	datad => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~9_combout\);

-- Location: LABCELL_X12_Y10_N54
\ROM_instrucao|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~10_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (\ROM_instrucao|memROM~9_combout\ & !\Processador|PC|DOUT[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datab => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~10_combout\);

-- Location: LABCELL_X12_Y10_N30
\ROM_instrucao|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~13_combout\ = ( \Processador|PC|DOUT\(3) & ( !\Processador|PC|DOUT[0]~DUPLICATE_q\ $ (((\Processador|PC|DOUT\(1) & \Processador|PC|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\Processador|PC|DOUT\(3) & ( (!\Processador|PC|DOUT[0]~DUPLICATE_q\ & 
-- ((\Processador|PC|DOUT[2]~DUPLICATE_q\) # (\Processador|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000011001100110011001100110000111100110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT\(1),
	datad => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~13_combout\);

-- Location: LABCELL_X12_Y10_N21
\ROM_instrucao|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~14_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (!\ROM_instrucao|memROM~13_combout\ & !\Processador|PC|DOUT[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~14_combout\);

-- Location: LABCELL_X12_Y10_N36
\ROM_instrucao|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~11_combout\ = ( \Processador|PC|DOUT\(3) & ( !\Processador|PC|DOUT\(0) ) ) # ( !\Processador|PC|DOUT\(3) & ( (!\Processador|PC|DOUT\(0) & ((\Processador|PC|DOUT\(2)) # (\Processador|PC|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(0),
	datac => \Processador|PC|ALT_INV_DOUT\(1),
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	dataf => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~11_combout\);

-- Location: LABCELL_X12_Y10_N51
\ROM_instrucao|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~12_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (\ROM_instrucao|memROM~11_combout\ & !\Processador|PC|DOUT[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~12_combout\);

-- Location: LABCELL_X12_Y10_N33
\Processador|decoder|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~0_combout\ = ( \ROM_instrucao|memROM~12_combout\ & ( (!\ROM_instrucao|memROM~10_combout\ & \ROM_instrucao|memROM~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	combout => \Processador|decoder|Equal10~0_combout\);

-- Location: FF_X13_Y10_N44
\Processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|incrementaPC|Add0~17_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(4));

-- Location: MLABCELL_X13_Y10_N45
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

-- Location: FF_X13_Y10_N47
\Processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|incrementaPC|Add0~21_sumout\,
	asdata => \ROM_instrucao|memROM~8_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(5));

-- Location: MLABCELL_X13_Y10_N48
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

-- Location: FF_X13_Y10_N50
\Processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|incrementaPC|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(6));

-- Location: MLABCELL_X13_Y10_N51
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

-- Location: FF_X13_Y10_N53
\Processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|incrementaPC|Add0~29_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(7));

-- Location: MLABCELL_X13_Y10_N12
\ROM_instrucao|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~1_combout\ = ( !\Processador|PC|DOUT\(4) & ( (!\Processador|PC|DOUT\(7) & (!\Processador|PC|DOUT\(6) & !\Processador|PC|DOUT\(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(7),
	datac => \Processador|PC|ALT_INV_DOUT\(6),
	datad => \Processador|PC|ALT_INV_DOUT\(5),
	dataf => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \ROM_instrucao|memROM~1_combout\);

-- Location: MLABCELL_X13_Y10_N9
\ROM_instrucao|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~3_combout\ = ( \Processador|PC|DOUT\(3) & ( (!\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(0) & !\Processador|PC|DOUT\(2))) # (\Processador|PC|DOUT\(1) & (!\Processador|PC|DOUT\(0) & \Processador|PC|DOUT\(2))) ) ) # ( 
-- !\Processador|PC|DOUT\(3) & ( (\Processador|PC|DOUT\(1) & (\Processador|PC|DOUT\(0) & \Processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001010010100000000101001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(1),
	datac => \Processador|PC|ALT_INV_DOUT\(0),
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	dataf => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~3_combout\);

-- Location: MLABCELL_X13_Y10_N27
\ROM_instrucao|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~4_combout\ = ( \ROM_instrucao|memROM~3_combout\ & ( (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & \ROM_instrucao|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	combout => \ROM_instrucao|memROM~4_combout\);

-- Location: FF_X13_Y10_N35
\Processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|incrementaPC|Add0~5_sumout\,
	asdata => \ROM_instrucao|memROM~4_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(1));

-- Location: MLABCELL_X13_Y10_N36
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

-- Location: FF_X13_Y10_N38
\Processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|incrementaPC|Add0~9_sumout\,
	asdata => \ROM_instrucao|memROM~6_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(2));

-- Location: FF_X13_Y10_N41
\Processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|incrementaPC|Add0~13_sumout\,
	asdata => \~GND~combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(3));

-- Location: MLABCELL_X13_Y10_N3
\ROM_instrucao|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~7_combout\ = ( \Processador|PC|DOUT\(1) & ( (\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(3)) # (!\Processador|PC|DOUT\(2)))) ) ) # ( !\Processador|PC|DOUT\(1) & ( (\Processador|PC|DOUT\(0) & ((\Processador|PC|DOUT\(2)) # 
-- (\Processador|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001111000000110000111100001111000011000000111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(3),
	datac => \Processador|PC|ALT_INV_DOUT\(0),
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	dataf => \Processador|PC|ALT_INV_DOUT\(1),
	combout => \ROM_instrucao|memROM~7_combout\);

-- Location: MLABCELL_X13_Y10_N0
\ROM_instrucao|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~8_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & \ROM_instrucao|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~8_combout\);

-- Location: FF_X13_Y10_N55
\Processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|incrementaPC|Add0~33_sumout\,
	asdata => \ROM_instrucao|memROM~8_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(8));

-- Location: MLABCELL_X13_Y10_N54
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

-- Location: FF_X13_Y10_N56
\Processador|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|incrementaPC|Add0~33_sumout\,
	asdata => \ROM_instrucao|memROM~8_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[8]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y10_N24
\ROM_instrucao|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~0_combout\ = ( \Processador|PC|DOUT\(0) & ( (!\Processador|PC|DOUT\(1) & ((\Processador|PC|DOUT\(2)) # (\Processador|PC|DOUT\(3)))) ) ) # ( !\Processador|PC|DOUT\(0) & ( (!\Processador|PC|DOUT\(3) & (!\Processador|PC|DOUT\(1) & 
-- !\Processador|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000110000111100000011000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(3),
	datac => \Processador|PC|ALT_INV_DOUT\(1),
	datad => \Processador|PC|ALT_INV_DOUT\(2),
	dataf => \Processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM_instrucao|memROM~0_combout\);

-- Location: MLABCELL_X13_Y10_N18
\ROM_instrucao|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~2_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & \ROM_instrucao|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~2_combout\);

-- Location: FF_X13_Y10_N32
\Processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|incrementaPC|Add0~1_sumout\,
	asdata => \ROM_instrucao|memROM~2_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(0));

-- Location: FF_X13_Y10_N31
\Processador|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|incrementaPC|Add0~1_sumout\,
	asdata => \ROM_instrucao|memROM~2_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[0]~DUPLICATE_q\);

-- Location: FF_X13_Y10_N46
\Processador|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|incrementaPC|Add0~21_sumout\,
	asdata => \ROM_instrucao|memROM~8_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y10_N48
\Processador|decoder|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~1_combout\ = ( !\ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & (!\ROM_instrucao|memROM~9_combout\ & \ROM_instrucao|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \Processador|decoder|Equal10~1_combout\);

-- Location: MLABCELL_X13_Y10_N21
\ROM_instrucao|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~16_combout\ = ( \ROM_instrucao|memROM~3_combout\ & ( \ROM_instrucao|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	combout => \ROM_instrucao|memROM~16_combout\);

-- Location: LABCELL_X14_Y9_N12
\ROM_instrucao|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~15_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( \ROM_instrucao|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \ROM_instrucao|memROM~15_combout\);

-- Location: LABCELL_X12_Y10_N39
\Processador|decoder|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida~0_combout\ = ( !\ROM_instrucao|memROM~12_combout\ & ( !\ROM_instrucao|memROM~10_combout\ $ (!\ROM_instrucao|memROM~14_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	combout => \Processador|decoder|saida~0_combout\);

-- Location: MLABCELL_X13_Y9_N0
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

-- Location: MLABCELL_X13_Y9_N3
\Processador|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~1_sumout\ = SUM(( (!\Processador|decoder|Equal10~1_combout\ & (((!\MemoriaRAM|ram~529_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (((!\ROM_instrucao|memROM~15_combout\)) # (\Processador|PC|DOUT[8]~DUPLICATE_q\))) ) + ( 
-- \Processador|REGA|DOUT\(0) ) + ( \Processador|ULA1|Add1~34_cout\ ))
-- \Processador|ULA1|Add1~2\ = CARRY(( (!\Processador|decoder|Equal10~1_combout\ & (((!\MemoriaRAM|ram~529_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (((!\ROM_instrucao|memROM~15_combout\)) # (\Processador|PC|DOUT[8]~DUPLICATE_q\))) ) + ( 
-- \Processador|REGA|DOUT\(0) ) + ( \Processador|ULA1|Add1~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	datac => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~529_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	cin => \Processador|ULA1|Add1~34_cout\,
	sumout => \Processador|ULA1|Add1~1_sumout\,
	cout => \Processador|ULA1|Add1~2\);

-- Location: LABCELL_X12_Y9_N0
\Processador|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[0]~0_combout\ = ( \Processador|ULA1|Add1~1_sumout\ & ( \MemoriaRAM|ram~529_combout\ & ( (!\Processador|decoder|Equal10~1_combout\) # ((!\Processador|decoder|saida~0_combout\) # (\ROM_instrucao|memROM~2_combout\)) ) ) ) # ( 
-- !\Processador|ULA1|Add1~1_sumout\ & ( \MemoriaRAM|ram~529_combout\ & ( (\Processador|decoder|saida~0_combout\ & ((!\Processador|decoder|Equal10~1_combout\) # (\ROM_instrucao|memROM~2_combout\))) ) ) ) # ( \Processador|ULA1|Add1~1_sumout\ & ( 
-- !\MemoriaRAM|ram~529_combout\ & ( (!\Processador|decoder|saida~0_combout\) # ((\Processador|decoder|Equal10~1_combout\ & \ROM_instrucao|memROM~2_combout\)) ) ) ) # ( !\Processador|ULA1|Add1~1_sumout\ & ( !\MemoriaRAM|ram~529_combout\ & ( 
-- (\Processador|decoder|Equal10~1_combout\ & (\Processador|decoder|saida~0_combout\ & \ROM_instrucao|memROM~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101111100001111010100001010000011111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \Processador|decoder|ALT_INV_saida~0_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datae => \Processador|ULA1|ALT_INV_Add1~1_sumout\,
	dataf => \MemoriaRAM|ALT_INV_ram~529_combout\,
	combout => \Processador|ULA1|saida[0]~0_combout\);

-- Location: LABCELL_X12_Y10_N3
\Processador|decoder|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~2_combout\ = ( \ROM_instrucao|memROM~12_combout\ & ( (\ROM_instrucao|memROM~14_combout\) # (\ROM_instrucao|memROM~10_combout\) ) ) # ( !\ROM_instrucao|memROM~12_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111101010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	combout => \Processador|decoder|Equal10~2_combout\);

-- Location: LABCELL_X12_Y10_N6
\Processador|decoder|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida~1_combout\ = ( \ROM_instrucao|memROM~12_combout\ & ( !\ROM_instrucao|memROM~14_combout\ ) ) # ( !\ROM_instrucao|memROM~12_combout\ & ( !\ROM_instrucao|memROM~14_combout\ $ (!\ROM_instrucao|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	combout => \Processador|decoder|saida~1_combout\);

-- Location: FF_X13_Y9_N32
\Processador|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|ULA1|Add0~1_sumout\,
	asdata => \Processador|ULA1|saida[0]~0_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(0));

-- Location: MLABCELL_X13_Y9_N30
\Processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~1_sumout\ = SUM(( \Processador|REGA|DOUT\(0) ) + ( (!\Processador|decoder|Equal10~1_combout\ & (((\MemoriaRAM|ram~529_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (!\Processador|PC|DOUT\(8) & 
-- (\ROM_instrucao|memROM~15_combout\))) ) + ( !VCC ))
-- \Processador|ULA1|Add0~2\ = CARRY(( \Processador|REGA|DOUT\(0) ) + ( (!\Processador|decoder|Equal10~1_combout\ & (((\MemoriaRAM|ram~529_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (!\Processador|PC|DOUT\(8) & 
-- (\ROM_instrucao|memROM~15_combout\))) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	datad => \Processador|REGA|ALT_INV_DOUT\(0),
	dataf => \MemoriaRAM|ALT_INV_ram~529_combout\,
	cin => GND,
	sumout => \Processador|ULA1|Add0~1_sumout\,
	cout => \Processador|ULA1|Add0~2\);

-- Location: FF_X13_Y9_N31
\Processador|REGA|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|ULA1|Add0~1_sumout\,
	asdata => \Processador|ULA1|saida[0]~0_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y10_N18
\MemoriaRAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~559_combout\ = ( \ROM_instrucao|memROM~1_combout\ & ( (!\Processador|PC|DOUT\(8) & (!\ROM_instrucao|memROM~13_combout\ & (\ROM_instrucao|memROM~9_combout\ & !\ROM_instrucao|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(8),
	datab => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	combout => \MemoriaRAM|ram~559_combout\);

-- Location: LABCELL_X14_Y10_N42
\MemoriaRAM|ram~566\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~566_combout\ = ( \MemoriaRAM|ram~559_combout\ & ( (\ROM_instrucao|memROM~6_combout\ & (\ROM_instrucao|memROM~4_combout\ & !\ROM_instrucao|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~559_combout\,
	combout => \MemoriaRAM|ram~566_combout\);

-- Location: FF_X12_Y9_N16
\MemoriaRAM|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~63_q\);

-- Location: LABCELL_X14_Y10_N18
\MemoriaRAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~567_combout\ = ( \MemoriaRAM|ram~559_combout\ & ( (\ROM_instrucao|memROM~4_combout\ & (\ROM_instrucao|memROM~6_combout\ & \ROM_instrucao|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~559_combout\,
	combout => \MemoriaRAM|ram~567_combout\);

-- Location: FF_X12_Y9_N8
\MemoriaRAM|ram~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~71_q\);

-- Location: MLABCELL_X13_Y11_N24
\MemoriaRAM|ram~564\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~564_combout\ = ( \MemoriaRAM|ram~559_combout\ & ( \ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & !\ROM_instrucao|memROM~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~559_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~564_combout\);

-- Location: FF_X13_Y9_N56
\MemoriaRAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~31_q\);

-- Location: LABCELL_X14_Y10_N3
\MemoriaRAM|ram~565\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~565_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & (\ROM_instrucao|memROM~4_combout\ & \MemoriaRAM|ram~559_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~559_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~565_combout\);

-- Location: FF_X12_Y9_N5
\MemoriaRAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~39_q\);

-- Location: LABCELL_X12_Y9_N9
\MemoriaRAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~528_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~71_q\ ) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~63_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~2_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~39_q\ ) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( !\ROM_instrucao|memROM~6_combout\ & ( \MemoriaRAM|ram~31_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~63_q\,
	datab => \MemoriaRAM|ALT_INV_ram~71_q\,
	datac => \MemoriaRAM|ALT_INV_ram~31_q\,
	datad => \MemoriaRAM|ALT_INV_ram~39_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~528_combout\);

-- Location: LABCELL_X14_Y11_N42
\MemoriaRAM|ram~562\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~562_combout\ = ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~559_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & \ROM_instrucao|memROM~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~559_combout\,
	combout => \MemoriaRAM|ram~562_combout\);

-- Location: FF_X14_Y10_N1
\MemoriaRAM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~47_q\);

-- Location: LABCELL_X14_Y11_N30
\MemoriaRAM|ram~55feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~55feeder_combout\ = ( \Processador|REGA|DOUT[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \MemoriaRAM|ram~55feeder_combout\);

-- Location: LABCELL_X14_Y10_N0
\MemoriaRAM|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~563_combout\ = ( \MemoriaRAM|ram~559_combout\ & ( (\ROM_instrucao|memROM~6_combout\ & (!\ROM_instrucao|memROM~4_combout\ & \ROM_instrucao|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~559_combout\,
	combout => \MemoriaRAM|ram~563_combout\);

-- Location: FF_X14_Y11_N31
\MemoriaRAM|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MemoriaRAM|ram~55feeder_combout\,
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~55_q\);

-- Location: MLABCELL_X13_Y11_N54
\MemoriaRAM|ram~560\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~560_combout\ = ( \MemoriaRAM|ram~559_combout\ & ( !\ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & !\ROM_instrucao|memROM~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~559_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~560_combout\);

-- Location: FF_X14_Y10_N44
\MemoriaRAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~15_q\);

-- Location: LABCELL_X14_Y11_N48
\MemoriaRAM|ram~561\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~561_combout\ = ( !\ROM_instrucao|memROM~4_combout\ & ( \MemoriaRAM|ram~559_combout\ & ( (\ROM_instrucao|memROM~2_combout\ & !\ROM_instrucao|memROM~6_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~559_combout\,
	combout => \MemoriaRAM|ram~561_combout\);

-- Location: FF_X12_Y10_N29
\MemoriaRAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~23_q\);

-- Location: LABCELL_X12_Y10_N24
\MemoriaRAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~527_combout\ = ( \ROM_instrucao|memROM~6_combout\ & ( \ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~55_q\ ) ) ) # ( !\ROM_instrucao|memROM~6_combout\ & ( \ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~23_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~6_combout\ & ( !\ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~47_q\ ) ) ) # ( !\ROM_instrucao|memROM~6_combout\ & ( !\ROM_instrucao|memROM~2_combout\ & ( \MemoriaRAM|ram~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111010101010101010100000000111111110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~47_q\,
	datab => \MemoriaRAM|ALT_INV_ram~55_q\,
	datac => \MemoriaRAM|ALT_INV_ram~15_q\,
	datad => \MemoriaRAM|ALT_INV_ram~23_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~527_combout\);

-- Location: LABCELL_X12_Y9_N33
\MemoriaRAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~529_combout\ = ( \MemoriaRAM|ram~527_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & ((!\ROM_instrucao|memROM~4_combout\) # (\MemoriaRAM|ram~528_combout\))) ) ) # ( !\MemoriaRAM|ram~527_combout\ & ( (\ROM_instrucao|memROM~4_combout\ & 
-- (\MemoriaRAM|ram~528_combout\ & !\ROM_instrucao|memROM~8_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000000000000110000000011001111000000001100111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~528_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~527_combout\,
	combout => \MemoriaRAM|ram~529_combout\);

-- Location: MLABCELL_X13_Y9_N6
\Processador|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~5_sumout\ = SUM(( (!\Processador|decoder|Equal10~1_combout\ & (((!\MemoriaRAM|ram~534_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (((!\ROM_instrucao|memROM~16_combout\)) # (\Processador|PC|DOUT[8]~DUPLICATE_q\))) ) + ( 
-- \Processador|REGA|DOUT[1]~DUPLICATE_q\ ) + ( \Processador|ULA1|Add1~2\ ))
-- \Processador|ULA1|Add1~6\ = CARRY(( (!\Processador|decoder|Equal10~1_combout\ & (((!\MemoriaRAM|ram~534_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (((!\ROM_instrucao|memROM~16_combout\)) # (\Processador|PC|DOUT[8]~DUPLICATE_q\))) ) + ( 
-- \Processador|REGA|DOUT[1]~DUPLICATE_q\ ) + ( \Processador|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~534_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \Processador|ULA1|Add1~2\,
	sumout => \Processador|ULA1|Add1~5_sumout\,
	cout => \Processador|ULA1|Add1~6\);

-- Location: LABCELL_X14_Y9_N27
\Processador|ULA1|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[1]~1_combout\ = ( \Processador|ULA1|Add1~5_sumout\ & ( \Processador|decoder|saida~0_combout\ & ( (!\Processador|decoder|Equal10~1_combout\ & ((\MemoriaRAM|ram~534_combout\))) # (\Processador|decoder|Equal10~1_combout\ & 
-- (\ROM_instrucao|memROM~4_combout\)) ) ) ) # ( !\Processador|ULA1|Add1~5_sumout\ & ( \Processador|decoder|saida~0_combout\ & ( (!\Processador|decoder|Equal10~1_combout\ & ((\MemoriaRAM|ram~534_combout\))) # (\Processador|decoder|Equal10~1_combout\ & 
-- (\ROM_instrucao|memROM~4_combout\)) ) ) ) # ( \Processador|ULA1|Add1~5_sumout\ & ( !\Processador|decoder|saida~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~534_combout\,
	datae => \Processador|ULA1|ALT_INV_Add1~5_sumout\,
	dataf => \Processador|decoder|ALT_INV_saida~0_combout\,
	combout => \Processador|ULA1|saida[1]~1_combout\);

-- Location: FF_X13_Y9_N35
\Processador|REGA|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|ULA1|Add0~5_sumout\,
	asdata => \Processador|ULA1|saida[1]~1_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X13_Y10_N23
\MemoriaRAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~32_q\);

-- Location: FF_X14_Y10_N47
\MemoriaRAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~16_q\);

-- Location: LABCELL_X14_Y10_N21
\MemoriaRAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~530_combout\ = ( !\ROM_instrucao|memROM~8_combout\ & ( (!\ROM_instrucao|memROM~4_combout\ & ((\MemoriaRAM|ram~16_q\))) # (\ROM_instrucao|memROM~4_combout\ & (\MemoriaRAM|ram~32_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~32_q\,
	datac => \MemoriaRAM|ALT_INV_ram~16_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	combout => \MemoriaRAM|ram~530_combout\);

-- Location: FF_X13_Y10_N29
\MemoriaRAM|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~56_q\);

-- Location: FF_X14_Y9_N40
\MemoriaRAM|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~72_q\);

-- Location: LABCELL_X14_Y10_N24
\MemoriaRAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~533_combout\ = ( !\ROM_instrucao|memROM~8_combout\ & ( (!\ROM_instrucao|memROM~4_combout\ & (\MemoriaRAM|ram~56_q\)) # (\ROM_instrucao|memROM~4_combout\ & ((\MemoriaRAM|ram~72_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111001100110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~56_q\,
	datac => \MemoriaRAM|ALT_INV_ram~72_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	combout => \MemoriaRAM|ram~533_combout\);

-- Location: FF_X14_Y9_N19
\MemoriaRAM|ram~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~64_q\);

-- Location: FF_X14_Y10_N56
\MemoriaRAM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[1]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~48_q\);

-- Location: LABCELL_X14_Y10_N54
\MemoriaRAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~531_combout\ = ( \MemoriaRAM|ram~48_q\ & ( \ROM_instrucao|memROM~4_combout\ & ( (\MemoriaRAM|ram~64_q\ & !\ROM_instrucao|memROM~8_combout\) ) ) ) # ( !\MemoriaRAM|ram~48_q\ & ( \ROM_instrucao|memROM~4_combout\ & ( (\MemoriaRAM|ram~64_q\ & 
-- !\ROM_instrucao|memROM~8_combout\) ) ) ) # ( \MemoriaRAM|ram~48_q\ & ( !\ROM_instrucao|memROM~4_combout\ & ( !\ROM_instrucao|memROM~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \MemoriaRAM|ALT_INV_ram~64_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~48_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~531_combout\);

-- Location: FF_X14_Y10_N8
\MemoriaRAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~40_q\);

-- Location: FF_X14_Y9_N26
\MemoriaRAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~24_q\);

-- Location: LABCELL_X14_Y10_N48
\MemoriaRAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~532_combout\ = ( !\ROM_instrucao|memROM~8_combout\ & ( (!\ROM_instrucao|memROM~4_combout\ & ((\MemoriaRAM|ram~24_q\))) # (\ROM_instrucao|memROM~4_combout\ & (\MemoriaRAM|ram~40_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~40_q\,
	datac => \MemoriaRAM|ALT_INV_ram~24_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	combout => \MemoriaRAM|ram~532_combout\);

-- Location: LABCELL_X14_Y10_N33
\MemoriaRAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~534_combout\ = ( \MemoriaRAM|ram~531_combout\ & ( \MemoriaRAM|ram~532_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & (((\ROM_instrucao|memROM~2_combout\)) # (\MemoriaRAM|ram~530_combout\))) # (\ROM_instrucao|memROM~6_combout\ & 
-- (((!\ROM_instrucao|memROM~2_combout\) # (\MemoriaRAM|ram~533_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~531_combout\ & ( \MemoriaRAM|ram~532_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & (((\ROM_instrucao|memROM~2_combout\)) # 
-- (\MemoriaRAM|ram~530_combout\))) # (\ROM_instrucao|memROM~6_combout\ & (((\ROM_instrucao|memROM~2_combout\ & \MemoriaRAM|ram~533_combout\)))) ) ) ) # ( \MemoriaRAM|ram~531_combout\ & ( !\MemoriaRAM|ram~532_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & 
-- (\MemoriaRAM|ram~530_combout\ & (!\ROM_instrucao|memROM~2_combout\))) # (\ROM_instrucao|memROM~6_combout\ & (((!\ROM_instrucao|memROM~2_combout\) # (\MemoriaRAM|ram~533_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~531_combout\ & ( !\MemoriaRAM|ram~532_combout\ 
-- & ( (!\ROM_instrucao|memROM~6_combout\ & (\MemoriaRAM|ram~530_combout\ & (!\ROM_instrucao|memROM~2_combout\))) # (\ROM_instrucao|memROM~6_combout\ & (((\ROM_instrucao|memROM~2_combout\ & \MemoriaRAM|ram~533_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011011100000111001101001100010011110111110001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~530_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~533_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~531_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~532_combout\,
	combout => \MemoriaRAM|ram~534_combout\);

-- Location: MLABCELL_X13_Y9_N33
\Processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~5_sumout\ = SUM(( \Processador|REGA|DOUT\(1) ) + ( (!\Processador|decoder|Equal10~1_combout\ & (((\MemoriaRAM|ram~534_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (!\Processador|PC|DOUT\(8) & 
-- (\ROM_instrucao|memROM~16_combout\))) ) + ( \Processador|ULA1|Add0~2\ ))
-- \Processador|ULA1|Add0~6\ = CARRY(( \Processador|REGA|DOUT\(1) ) + ( (!\Processador|decoder|Equal10~1_combout\ & (((\MemoriaRAM|ram~534_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (!\Processador|PC|DOUT\(8) & 
-- (\ROM_instrucao|memROM~16_combout\))) ) + ( \Processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110110101000100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datad => \Processador|REGA|ALT_INV_DOUT\(1),
	dataf => \MemoriaRAM|ALT_INV_ram~534_combout\,
	cin => \Processador|ULA1|Add0~2\,
	sumout => \Processador|ULA1|Add0~5_sumout\,
	cout => \Processador|ULA1|Add0~6\);

-- Location: FF_X13_Y9_N34
\Processador|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|ULA1|Add0~5_sumout\,
	asdata => \Processador|ULA1|saida[1]~1_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(1));

-- Location: LABCELL_X12_Y10_N57
\AndHEX2|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX2|saida~0_combout\ = ( !\ROM_instrucao|memROM~13_combout\ & ( (\ROM_instrucao|memROM~9_combout\ & (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & (\ROM_instrucao|memROM~1_combout\ & \ROM_instrucao|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	datab => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \AndHEX2|saida~0_combout\);

-- Location: LABCELL_X14_Y10_N39
\DecoderSelEnd|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderSelEnd|Equal0~0_combout\ = ( \AndHEX2|saida~0_combout\ & ( (!\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~2_combout\ & !\ROM_instrucao|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \AndHEX2|ALT_INV_saida~0_combout\,
	combout => \DecoderSelEnd|Equal0~0_combout\);

-- Location: FF_X14_Y4_N2
\RegistradorHEX0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX0|DOUT\(1));

-- Location: FF_X14_Y10_N32
\MemoriaRAM|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~50_q\);

-- Location: FF_X14_Y9_N5
\MemoriaRAM|ram~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~66_q\);

-- Location: LABCELL_X14_Y9_N3
\MemoriaRAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~539_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~66_q\) ) ) # ( !\ROM_instrucao|memROM~4_combout\ & ( (\MemoriaRAM|ram~50_q\ & !\ROM_instrucao|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~50_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~66_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~539_combout\);

-- Location: FF_X13_Y10_N19
\MemoriaRAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~34_q\);

-- Location: FF_X14_Y10_N17
\MemoriaRAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~18_q\);

-- Location: LABCELL_X14_Y10_N15
\MemoriaRAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~538_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( (\MemoriaRAM|ram~34_q\ & !\ROM_instrucao|memROM~8_combout\) ) ) # ( !\ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~18_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110000001100000011000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~34_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~18_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~538_combout\);

-- Location: FF_X14_Y9_N52
\MemoriaRAM|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~74_q\);

-- Location: LABCELL_X16_Y9_N48
\MemoriaRAM|ram~58feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~58feeder_combout\ = ( \Processador|REGA|DOUT[3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \MemoriaRAM|ram~58feeder_combout\);

-- Location: FF_X16_Y9_N49
\MemoriaRAM|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MemoriaRAM|ram~58feeder_combout\,
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~58_q\);

-- Location: LABCELL_X14_Y9_N45
\MemoriaRAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~541_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( (\MemoriaRAM|ram~74_q\ & !\ROM_instrucao|memROM~8_combout\) ) ) # ( !\ROM_instrucao|memROM~4_combout\ & ( (\MemoriaRAM|ram~58_q\ & !\ROM_instrucao|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~74_q\,
	datac => \MemoriaRAM|ALT_INV_ram~58_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~541_combout\);

-- Location: FF_X14_Y10_N10
\MemoriaRAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~42_q\);

-- Location: FF_X14_Y9_N35
\MemoriaRAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~26_q\);

-- Location: LABCELL_X14_Y10_N36
\MemoriaRAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~540_combout\ = ( !\ROM_instrucao|memROM~8_combout\ & ( (!\ROM_instrucao|memROM~4_combout\ & ((\MemoriaRAM|ram~26_q\))) # (\ROM_instrucao|memROM~4_combout\ & (\MemoriaRAM|ram~42_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~42_q\,
	datac => \MemoriaRAM|ALT_INV_ram~26_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	combout => \MemoriaRAM|ram~540_combout\);

-- Location: LABCELL_X14_Y9_N54
\MemoriaRAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~542_combout\ = ( \MemoriaRAM|ram~541_combout\ & ( \MemoriaRAM|ram~540_combout\ & ( ((!\ROM_instrucao|memROM~6_combout\ & ((\MemoriaRAM|ram~538_combout\))) # (\ROM_instrucao|memROM~6_combout\ & (\MemoriaRAM|ram~539_combout\))) # 
-- (\ROM_instrucao|memROM~2_combout\) ) ) ) # ( !\MemoriaRAM|ram~541_combout\ & ( \MemoriaRAM|ram~540_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & ((!\ROM_instrucao|memROM~6_combout\ & ((\MemoriaRAM|ram~538_combout\))) # 
-- (\ROM_instrucao|memROM~6_combout\ & (\MemoriaRAM|ram~539_combout\)))) # (\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~6_combout\)) ) ) ) # ( \MemoriaRAM|ram~541_combout\ & ( !\MemoriaRAM|ram~540_combout\ & ( 
-- (!\ROM_instrucao|memROM~2_combout\ & ((!\ROM_instrucao|memROM~6_combout\ & ((\MemoriaRAM|ram~538_combout\))) # (\ROM_instrucao|memROM~6_combout\ & (\MemoriaRAM|ram~539_combout\)))) # (\ROM_instrucao|memROM~2_combout\ & (\ROM_instrucao|memROM~6_combout\)) 
-- ) ) ) # ( !\MemoriaRAM|ram~541_combout\ & ( !\MemoriaRAM|ram~540_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & ((!\ROM_instrucao|memROM~6_combout\ & ((\MemoriaRAM|ram~538_combout\))) # (\ROM_instrucao|memROM~6_combout\ & 
-- (\MemoriaRAM|ram~539_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010001010000100111001101101000110110011100101011111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~539_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~538_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~541_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~540_combout\,
	combout => \MemoriaRAM|ram~542_combout\);

-- Location: LABCELL_X14_Y10_N12
\ROM_instrucao|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~17_combout\ = ( \ROM_instrucao|memROM~5_combout\ & ( \ROM_instrucao|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \ROM_instrucao|memROM~17_combout\);

-- Location: MLABCELL_X13_Y9_N36
\Processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~9_sumout\ = SUM(( \Processador|REGA|DOUT\(2) ) + ( (!\Processador|decoder|Equal10~1_combout\ & (((\MemoriaRAM|ram~537_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (\ROM_instrucao|memROM~17_combout\ & 
-- (!\Processador|PC|DOUT[8]~DUPLICATE_q\))) ) + ( \Processador|ULA1|Add0~6\ ))
-- \Processador|ULA1|Add0~10\ = CARRY(( \Processador|REGA|DOUT\(2) ) + ( (!\Processador|decoder|Equal10~1_combout\ & (((\MemoriaRAM|ram~537_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (\ROM_instrucao|memROM~17_combout\ & 
-- (!\Processador|PC|DOUT[8]~DUPLICATE_q\))) ) + ( \Processador|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011110100010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datac => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datad => \Processador|REGA|ALT_INV_DOUT\(2),
	dataf => \MemoriaRAM|ALT_INV_ram~537_combout\,
	cin => \Processador|ULA1|Add0~6\,
	sumout => \Processador|ULA1|Add0~9_sumout\,
	cout => \Processador|ULA1|Add0~10\);

-- Location: FF_X13_Y9_N38
\Processador|REGA|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|ULA1|Add0~9_sumout\,
	asdata => \Processador|ULA1|saida[2]~2_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT[2]~DUPLICATE_q\);

-- Location: MLABCELL_X13_Y9_N9
\Processador|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~9_sumout\ = SUM(( (!\Processador|decoder|Equal10~1_combout\ & (((!\MemoriaRAM|ram~537_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (((!\ROM_instrucao|memROM~17_combout\)) # (\Processador|PC|DOUT[8]~DUPLICATE_q\))) ) + ( 
-- \Processador|REGA|DOUT[2]~DUPLICATE_q\ ) + ( \Processador|ULA1|Add1~6\ ))
-- \Processador|ULA1|Add1~10\ = CARRY(( (!\Processador|decoder|Equal10~1_combout\ & (((!\MemoriaRAM|ram~537_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (((!\ROM_instrucao|memROM~17_combout\)) # (\Processador|PC|DOUT[8]~DUPLICATE_q\))) ) + ( 
-- \Processador|REGA|DOUT[2]~DUPLICATE_q\ ) + ( \Processador|ULA1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~17_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~537_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \Processador|ULA1|Add1~6\,
	sumout => \Processador|ULA1|Add1~9_sumout\,
	cout => \Processador|ULA1|Add1~10\);

-- Location: LABCELL_X14_Y9_N15
\Processador|ULA1|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[2]~2_combout\ = ( \Processador|ULA1|Add1~9_sumout\ & ( (!\Processador|decoder|saida~0_combout\) # ((!\Processador|decoder|Equal10~1_combout\ & (\MemoriaRAM|ram~537_combout\)) # (\Processador|decoder|Equal10~1_combout\ & 
-- ((\ROM_instrucao|memROM~6_combout\)))) ) ) # ( !\Processador|ULA1|Add1~9_sumout\ & ( (\Processador|decoder|saida~0_combout\ & ((!\Processador|decoder|Equal10~1_combout\ & (\MemoriaRAM|ram~537_combout\)) # (\Processador|decoder|Equal10~1_combout\ & 
-- ((\ROM_instrucao|memROM~6_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000101000100010000010110111011101011111011101110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~0_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~537_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~9_sumout\,
	combout => \Processador|ULA1|saida[2]~2_combout\);

-- Location: FF_X13_Y9_N37
\Processador|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|ULA1|Add0~9_sumout\,
	asdata => \Processador|ULA1|saida[2]~2_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(2));

-- Location: LABCELL_X14_Y9_N18
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

-- Location: FF_X14_Y9_N20
\MemoriaRAM|ram~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MemoriaRAM|ram~65feeder_combout\,
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~65_q\);

-- Location: LABCELL_X16_Y9_N6
\MemoriaRAM|ram~41feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~41feeder_combout\ = ( \Processador|REGA|DOUT[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \MemoriaRAM|ram~41feeder_combout\);

-- Location: FF_X16_Y9_N7
\MemoriaRAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MemoriaRAM|ram~41feeder_combout\,
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~41_q\);

-- Location: FF_X13_Y9_N29
\MemoriaRAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~33_q\);

-- Location: FF_X14_Y9_N50
\MemoriaRAM|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~73_q\);

-- Location: LABCELL_X14_Y9_N48
\MemoriaRAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~536_combout\ = ( \MemoriaRAM|ram~73_q\ & ( \ROM_instrucao|memROM~2_combout\ & ( (\ROM_instrucao|memROM~6_combout\) # (\MemoriaRAM|ram~41_q\) ) ) ) # ( !\MemoriaRAM|ram~73_q\ & ( \ROM_instrucao|memROM~2_combout\ & ( (\MemoriaRAM|ram~41_q\ & 
-- !\ROM_instrucao|memROM~6_combout\) ) ) ) # ( \MemoriaRAM|ram~73_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & ((\MemoriaRAM|ram~33_q\))) # (\ROM_instrucao|memROM~6_combout\ & (\MemoriaRAM|ram~65_q\)) ) ) ) # ( 
-- !\MemoriaRAM|ram~73_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & ((\MemoriaRAM|ram~33_q\))) # (\ROM_instrucao|memROM~6_combout\ & (\MemoriaRAM|ram~65_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~65_q\,
	datab => \MemoriaRAM|ALT_INV_ram~41_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~33_q\,
	datae => \MemoriaRAM|ALT_INV_ram~73_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~536_combout\);

-- Location: FF_X14_Y10_N35
\MemoriaRAM|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~49_q\);

-- Location: FF_X14_Y10_N13
\MemoriaRAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[2]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~17_q\);

-- Location: LABCELL_X16_Y9_N27
\MemoriaRAM|ram~57feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~57feeder_combout\ = ( \Processador|REGA|DOUT[2]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \MemoriaRAM|ram~57feeder_combout\);

-- Location: FF_X16_Y9_N29
\MemoriaRAM|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MemoriaRAM|ram~57feeder_combout\,
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~57_q\);

-- Location: FF_X14_Y9_N32
\MemoriaRAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~25_q\);

-- Location: LABCELL_X14_Y9_N30
\MemoriaRAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~535_combout\ = ( \MemoriaRAM|ram~25_q\ & ( \ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~6_combout\) # (\MemoriaRAM|ram~57_q\) ) ) ) # ( !\MemoriaRAM|ram~25_q\ & ( \ROM_instrucao|memROM~2_combout\ & ( 
-- (\ROM_instrucao|memROM~6_combout\ & \MemoriaRAM|ram~57_q\) ) ) ) # ( \MemoriaRAM|ram~25_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & ((\MemoriaRAM|ram~17_q\))) # (\ROM_instrucao|memROM~6_combout\ & 
-- (\MemoriaRAM|ram~49_q\)) ) ) ) # ( !\MemoriaRAM|ram~25_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & ((\MemoriaRAM|ram~17_q\))) # (\ROM_instrucao|memROM~6_combout\ & (\MemoriaRAM|ram~49_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011010100110101001101010011010100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~49_q\,
	datab => \MemoriaRAM|ALT_INV_ram~17_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~57_q\,
	datae => \MemoriaRAM|ALT_INV_ram~25_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~535_combout\);

-- Location: LABCELL_X14_Y9_N42
\MemoriaRAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~537_combout\ = ( \MemoriaRAM|ram~535_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & ((!\ROM_instrucao|memROM~4_combout\) # (\MemoriaRAM|ram~536_combout\))) ) ) # ( !\MemoriaRAM|ram~535_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & 
-- (\MemoriaRAM|ram~536_combout\ & \ROM_instrucao|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101010101010000010101010101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~536_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~535_combout\,
	combout => \MemoriaRAM|ram~537_combout\);

-- Location: MLABCELL_X13_Y9_N12
\Processador|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~13_sumout\ = SUM(( (!\MemoriaRAM|ram~542_combout\) # (\Processador|decoder|Equal10~1_combout\) ) + ( \Processador|REGA|DOUT\(3) ) + ( \Processador|ULA1|Add1~10\ ))
-- \Processador|ULA1|Add1~14\ = CARRY(( (!\MemoriaRAM|ram~542_combout\) # (\Processador|decoder|Equal10~1_combout\) ) + ( \Processador|REGA|DOUT\(3) ) + ( \Processador|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~542_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(3),
	cin => \Processador|ULA1|Add1~10\,
	sumout => \Processador|ULA1|Add1~13_sumout\,
	cout => \Processador|ULA1|Add1~14\);

-- Location: LABCELL_X14_Y9_N0
\Processador|ULA1|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[3]~3_combout\ = ( \Processador|ULA1|Add1~13_sumout\ & ( (!\Processador|decoder|saida~0_combout\) # ((\MemoriaRAM|ram~542_combout\ & !\Processador|decoder|Equal10~1_combout\)) ) ) # ( !\Processador|ULA1|Add1~13_sumout\ & ( 
-- (\MemoriaRAM|ram~542_combout\ & (\Processador|decoder|saida~0_combout\ & !\Processador|decoder|Equal10~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000011110101111100001111010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~542_combout\,
	datac => \Processador|decoder|ALT_INV_saida~0_combout\,
	datad => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \Processador|ULA1|saida[3]~3_combout\);

-- Location: FF_X13_Y9_N41
\Processador|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|ULA1|Add0~13_sumout\,
	asdata => \Processador|ULA1|saida[3]~3_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(3));

-- Location: MLABCELL_X13_Y9_N39
\Processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~13_sumout\ = SUM(( \Processador|REGA|DOUT\(3) ) + ( (!\Processador|decoder|Equal10~1_combout\ & \MemoriaRAM|ram~542_combout\) ) + ( \Processador|ULA1|Add0~10\ ))
-- \Processador|ULA1|Add0~14\ = CARRY(( \Processador|REGA|DOUT\(3) ) + ( (!\Processador|decoder|Equal10~1_combout\ & \MemoriaRAM|ram~542_combout\) ) + ( \Processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111101011111010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~542_combout\,
	datad => \Processador|REGA|ALT_INV_DOUT\(3),
	cin => \Processador|ULA1|Add0~10\,
	sumout => \Processador|ULA1|Add0~13_sumout\,
	cout => \Processador|ULA1|Add0~14\);

-- Location: FF_X13_Y9_N40
\Processador|REGA|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|ULA1|Add0~13_sumout\,
	asdata => \Processador|ULA1|saida[3]~3_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X14_Y4_N32
\RegistradorHEX0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX0|DOUT\(3));

-- Location: LABCELL_X14_Y4_N3
\RegistradorHEX0|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistradorHEX0|DOUT[0]~feeder_combout\ = ( \Processador|REGA|DOUT[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \RegistradorHEX0|DOUT[0]~feeder_combout\);

-- Location: FF_X14_Y4_N5
\RegistradorHEX0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RegistradorHEX0|DOUT[0]~feeder_combout\,
	ena => \DecoderSelEnd|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX0|DOUT\(0));

-- Location: FF_X14_Y4_N35
\RegistradorHEX0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX0|DOUT\(2));

-- Location: LABCELL_X14_Y4_N51
\decoderHEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX0|DOUT\(2) & ( (!\RegistradorHEX0|DOUT\(1) & (!\RegistradorHEX0|DOUT\(3) $ (\RegistradorHEX0|DOUT\(0)))) ) ) # ( !\RegistradorHEX0|DOUT\(2) & ( (\RegistradorHEX0|DOUT\(0) & 
-- (!\RegistradorHEX0|DOUT\(1) $ (\RegistradorHEX0|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100101000000001010010110100000000010101010000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(2),
	combout => \decoderHEX0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X14_Y4_N54
\decoderHEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX0|DOUT\(2) & ( (!\RegistradorHEX0|DOUT\(0) & ((\RegistradorHEX0|DOUT\(1)) # (\RegistradorHEX0|DOUT\(3)))) # (\RegistradorHEX0|DOUT\(0) & (!\RegistradorHEX0|DOUT\(3) $ 
-- (\RegistradorHEX0|DOUT\(1)))) ) ) # ( !\RegistradorHEX0|DOUT\(2) & ( (\RegistradorHEX0|DOUT\(0) & (\RegistradorHEX0|DOUT\(3) & \RegistradorHEX0|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000101101011011010110110101101101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(2),
	combout => \decoderHEX0|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X14_Y4_N57
\decoderHEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX0|DOUT\(2) & ( (\RegistradorHEX0|DOUT\(3) & ((!\RegistradorHEX0|DOUT\(0)) # (\RegistradorHEX0|DOUT\(1)))) ) ) # ( !\RegistradorHEX0|DOUT\(2) & ( (!\RegistradorHEX0|DOUT\(0) & 
-- (!\RegistradorHEX0|DOUT\(3) & \RegistradorHEX0|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010001100110010001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(2),
	combout => \decoderHEX0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X14_Y4_N27
\decoderHEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX0|DOUT\(2) & ( (!\RegistradorHEX0|DOUT\(1) & (!\RegistradorHEX0|DOUT\(3) & !\RegistradorHEX0|DOUT\(0))) # (\RegistradorHEX0|DOUT\(1) & ((\RegistradorHEX0|DOUT\(0)))) ) ) # ( 
-- !\RegistradorHEX0|DOUT\(2) & ( (!\RegistradorHEX0|DOUT\(1) & (!\RegistradorHEX0|DOUT\(3) & \RegistradorHEX0|DOUT\(0))) # (\RegistradorHEX0|DOUT\(1) & (\RegistradorHEX0|DOUT\(3) & !\RegistradorHEX0|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110001000000100011000100010001000010101011000100001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(1),
	datab => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(2),
	combout => \decoderHEX0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X14_Y4_N30
\decoderHEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX0|DOUT\(2) & ( (!\RegistradorHEX0|DOUT\(3) & ((!\RegistradorHEX0|DOUT\(1)) # (\RegistradorHEX0|DOUT\(0)))) ) ) # ( !\RegistradorHEX0|DOUT\(2) & ( (\RegistradorHEX0|DOUT\(0) & 
-- ((!\RegistradorHEX0|DOUT\(1)) # (!\RegistradorHEX0|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001010000011110000101010101111000000001010111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(2),
	combout => \decoderHEX0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X14_Y4_N24
\decoderHEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[5]~5_combout\ = ( \RegistradorHEX0|DOUT\(2) & ( (\RegistradorHEX0|DOUT\(0) & (!\RegistradorHEX0|DOUT\(1) $ (!\RegistradorHEX0|DOUT\(3)))) ) ) # ( !\RegistradorHEX0|DOUT\(2) & ( (!\RegistradorHEX0|DOUT\(3) & 
-- ((\RegistradorHEX0|DOUT\(0)) # (\RegistradorHEX0|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100010011000100110000000110000001100000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(1),
	datab => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(2),
	combout => \decoderHEX0|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X14_Y4_N33
\decoderHEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX0|DOUT\(3) & ( (!\RegistradorHEX0|DOUT\(1) & (!\RegistradorHEX0|DOUT\(0) & \RegistradorHEX0|DOUT\(2))) ) ) # ( !\RegistradorHEX0|DOUT\(3) & ( (!\RegistradorHEX0|DOUT\(1) & 
-- ((!\RegistradorHEX0|DOUT\(2)))) # (\RegistradorHEX0|DOUT\(1) & (\RegistradorHEX0|DOUT\(0) & \RegistradorHEX0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000010001101010100001000100000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(1),
	datab => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX0|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(3),
	combout => \decoderHEX0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X14_Y10_N45
\DecoderSelEnd|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderSelEnd|Equal0~1_combout\ = ( \AndHEX2|saida~0_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & (!\ROM_instrucao|memROM~4_combout\ & \ROM_instrucao|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \AndHEX2|ALT_INV_saida~0_combout\,
	combout => \DecoderSelEnd|Equal0~1_combout\);

-- Location: FF_X14_Y4_N14
\RegistradorHEX1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(3));

-- Location: FF_X14_Y4_N16
\RegistradorHEX1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(2));

-- Location: FF_X14_Y4_N23
\RegistradorHEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(0));

-- Location: FF_X14_Y4_N20
\RegistradorHEX1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(1));

-- Location: LABCELL_X16_Y4_N51
\decoderHEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX1|DOUT\(1) & ( (\RegistradorHEX1|DOUT\(3) & (!\RegistradorHEX1|DOUT\(2) & \RegistradorHEX1|DOUT\(0))) ) ) # ( !\RegistradorHEX1|DOUT\(1) & ( (!\RegistradorHEX1|DOUT\(3) & 
-- (!\RegistradorHEX1|DOUT\(2) $ (!\RegistradorHEX1|DOUT\(0)))) # (\RegistradorHEX1|DOUT\(3) & (\RegistradorHEX1|DOUT\(2) & \RegistradorHEX1|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100100101001000001000000010000101001001010010000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datae => \RegistradorHEX1|ALT_INV_DOUT\(1),
	combout => \decoderHEX1|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X16_Y4_N33
\decoderHEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX1|DOUT\(0) & ( (!\RegistradorHEX1|DOUT\(1) & (\RegistradorHEX1|DOUT\(2) & !\RegistradorHEX1|DOUT\(3))) # (\RegistradorHEX1|DOUT\(1) & ((\RegistradorHEX1|DOUT\(3)))) ) ) # ( 
-- !\RegistradorHEX1|DOUT\(0) & ( (\RegistradorHEX1|DOUT\(2) & ((\RegistradorHEX1|DOUT\(3)) # (\RegistradorHEX1|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001111000001010000111100001010010101010000101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(0),
	combout => \decoderHEX1|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X16_Y4_N15
\decoderHEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX1|DOUT\(0) & ( (\RegistradorHEX1|DOUT\(1) & (\RegistradorHEX1|DOUT\(2) & \RegistradorHEX1|DOUT\(3))) ) ) # ( !\RegistradorHEX1|DOUT\(0) & ( (!\RegistradorHEX1|DOUT\(2) & 
-- (\RegistradorHEX1|DOUT\(1) & !\RegistradorHEX1|DOUT\(3))) # (\RegistradorHEX1|DOUT\(2) & ((\RegistradorHEX1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000001111010100000000111100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(0),
	combout => \decoderHEX1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X14_Y4_N21
\decoderHEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX1|DOUT\(1) & ( (!\RegistradorHEX1|DOUT\(2) & (\RegistradorHEX1|DOUT\(3) & !\RegistradorHEX1|DOUT\(0))) # (\RegistradorHEX1|DOUT\(2) & ((\RegistradorHEX1|DOUT\(0)))) ) ) # ( 
-- !\RegistradorHEX1|DOUT\(1) & ( (!\RegistradorHEX1|DOUT\(3) & (!\RegistradorHEX1|DOUT\(2) $ (!\RegistradorHEX1|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000001010000000011110101000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(1),
	combout => \decoderHEX1|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X14_Y4_N12
\decoderHEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[4]~4_combout\ = ( !\RegistradorHEX1|DOUT\(3) & ( \RegistradorHEX1|DOUT\(2) & ( (!\RegistradorHEX1|DOUT\(1)) # (\RegistradorHEX1|DOUT\(0)) ) ) ) # ( \RegistradorHEX1|DOUT\(3) & ( !\RegistradorHEX1|DOUT\(2) & ( 
-- (\RegistradorHEX1|DOUT\(0) & !\RegistradorHEX1|DOUT\(1)) ) ) ) # ( !\RegistradorHEX1|DOUT\(3) & ( !\RegistradorHEX1|DOUT\(2) & ( \RegistradorHEX1|DOUT\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010100000101000011110101111101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datae => \RegistradorHEX1|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(2),
	combout => \decoderHEX1|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X14_Y4_N18
\decoderHEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[5]~5_combout\ = (!\RegistradorHEX1|DOUT\(2) & (!\RegistradorHEX1|DOUT\(3) & ((\RegistradorHEX1|DOUT\(1)) # (\RegistradorHEX1|DOUT\(0))))) # (\RegistradorHEX1|DOUT\(2) & (\RegistradorHEX1|DOUT\(0) & (!\RegistradorHEX1|DOUT\(3) $ 
-- (!\RegistradorHEX1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100110001010000010011000101000001001100010100000100110001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(1),
	combout => \decoderHEX1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X16_Y4_N57
\decoderHEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX1|DOUT\(0) & ( (!\RegistradorHEX1|DOUT\(3) & (!\RegistradorHEX1|DOUT\(1) $ (\RegistradorHEX1|DOUT\(2)))) ) ) # ( !\RegistradorHEX1|DOUT\(0) & ( (!\RegistradorHEX1|DOUT\(1) & 
-- (!\RegistradorHEX1|DOUT\(2) $ (\RegistradorHEX1|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101010100101000000001010010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(0),
	combout => \decoderHEX1|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X16_Y4_N24
\RegistradorHEX2|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistradorHEX2|DOUT[0]~feeder_combout\ = ( \Processador|REGA|DOUT[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \RegistradorHEX2|DOUT[0]~feeder_combout\);

-- Location: LABCELL_X14_Y10_N51
\AndHEX2|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX2|saida~1_combout\ = ( \AndHEX2|saida~0_combout\ & ( (\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~6_combout\ & !\ROM_instrucao|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \AndHEX2|ALT_INV_saida~0_combout\,
	combout => \AndHEX2|saida~1_combout\);

-- Location: FF_X16_Y4_N26
\RegistradorHEX2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \RegistradorHEX2|DOUT[0]~feeder_combout\,
	ena => \AndHEX2|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX2|DOUT\(0));

-- Location: FF_X16_Y4_N8
\RegistradorHEX2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \AndHEX2|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX2|DOUT\(1));

-- Location: FF_X16_Y4_N38
\RegistradorHEX2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \AndHEX2|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX2|DOUT\(2));

-- Location: FF_X16_Y4_N50
\RegistradorHEX2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \AndHEX2|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX2|DOUT\(3));

-- Location: LABCELL_X16_Y4_N21
\decoderHEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX2|DOUT\(3) & ( (\RegistradorHEX2|DOUT\(0) & (!\RegistradorHEX2|DOUT\(1) $ (!\RegistradorHEX2|DOUT\(2)))) ) ) # ( !\RegistradorHEX2|DOUT\(3) & ( (!\RegistradorHEX2|DOUT\(1) & 
-- (!\RegistradorHEX2|DOUT\(0) $ (!\RegistradorHEX2|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010010001000010001001000100000010001010001000001000101000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX2|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(3),
	combout => \decoderHEX2|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X16_Y4_N30
\decoderHEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX2|DOUT\(3) & ( (!\RegistradorHEX2|DOUT\(0) & ((\RegistradorHEX2|DOUT\(2)))) # (\RegistradorHEX2|DOUT\(0) & (\RegistradorHEX2|DOUT\(1))) ) ) # ( !\RegistradorHEX2|DOUT\(3) & ( 
-- (\RegistradorHEX2|DOUT\(2) & (!\RegistradorHEX2|DOUT\(1) $ (!\RegistradorHEX2|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000111100000000000011110000000011111100110000001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX2|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(3),
	combout => \decoderHEX2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X16_Y4_N3
\decoderHEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX2|DOUT\(2) & ( \RegistradorHEX2|DOUT\(3) & ( (!\RegistradorHEX2|DOUT\(0)) # (\RegistradorHEX2|DOUT\(1)) ) ) ) # ( !\RegistradorHEX2|DOUT\(2) & ( !\RegistradorHEX2|DOUT\(3) & ( 
-- (!\RegistradorHEX2|DOUT\(0) & \RegistradorHEX2|DOUT\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000000000000000000000000000000001010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(1),
	datae => \RegistradorHEX2|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(3),
	combout => \decoderHEX2|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X16_Y4_N12
\decoderHEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX2|DOUT\(3) & ( (\RegistradorHEX2|DOUT\(1) & (!\RegistradorHEX2|DOUT\(0) $ (\RegistradorHEX2|DOUT\(2)))) ) ) # ( !\RegistradorHEX2|DOUT\(3) & ( (!\RegistradorHEX2|DOUT\(1) & 
-- (!\RegistradorHEX2|DOUT\(0) $ (!\RegistradorHEX2|DOUT\(2)))) # (\RegistradorHEX2|DOUT\(1) & (\RegistradorHEX2|DOUT\(0) & \RegistradorHEX2|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011000011000011001100001100110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX2|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(3),
	combout => \decoderHEX2|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X16_Y4_N18
\decoderHEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX2|DOUT\(3) & ( (!\RegistradorHEX2|DOUT\(1) & (\RegistradorHEX2|DOUT\(0) & !\RegistradorHEX2|DOUT\(2))) ) ) # ( !\RegistradorHEX2|DOUT\(3) & ( ((!\RegistradorHEX2|DOUT\(1) & 
-- \RegistradorHEX2|DOUT\(2))) # (\RegistradorHEX2|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111001111000011111100111100001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX2|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(3),
	combout => \decoderHEX2|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X16_Y4_N42
\decoderHEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[5]~5_combout\ = ( \RegistradorHEX2|DOUT\(2) & ( \RegistradorHEX2|DOUT\(1) & ( (\RegistradorHEX2|DOUT\(0) & !\RegistradorHEX2|DOUT\(3)) ) ) ) # ( !\RegistradorHEX2|DOUT\(2) & ( \RegistradorHEX2|DOUT\(1) & ( 
-- !\RegistradorHEX2|DOUT\(3) ) ) ) # ( \RegistradorHEX2|DOUT\(2) & ( !\RegistradorHEX2|DOUT\(1) & ( (\RegistradorHEX2|DOUT\(0) & \RegistradorHEX2|DOUT\(3)) ) ) ) # ( !\RegistradorHEX2|DOUT\(2) & ( !\RegistradorHEX2|DOUT\(1) & ( (\RegistradorHEX2|DOUT\(0) & 
-- !\RegistradorHEX2|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000001010000010111110000111100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datae => \RegistradorHEX2|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(1),
	combout => \decoderHEX2|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X16_Y4_N54
\decoderHEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX2|DOUT\(3) & ( (!\RegistradorHEX2|DOUT\(1) & (!\RegistradorHEX2|DOUT\(0) & \RegistradorHEX2|DOUT\(2))) ) ) # ( !\RegistradorHEX2|DOUT\(3) & ( (!\RegistradorHEX2|DOUT\(1) & 
-- ((!\RegistradorHEX2|DOUT\(2)))) # (\RegistradorHEX2|DOUT\(1) & (\RegistradorHEX2|DOUT\(0) & \RegistradorHEX2|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000011110011000000001100000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX2|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(3),
	combout => \decoderHEX2|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X14_Y10_N9
\DecoderSelEnd|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderSelEnd|Equal0~2_combout\ = ( \AndHEX2|saida~0_combout\ & ( (\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~6_combout\ & \ROM_instrucao|memROM~4_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	dataf => \AndHEX2|ALT_INV_saida~0_combout\,
	combout => \DecoderSelEnd|Equal0~2_combout\);

-- Location: FF_X14_Y2_N38
\RegistradorHEX3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT\(2));

-- Location: FF_X14_Y2_N25
\RegistradorHEX3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT\(0));

-- Location: FF_X14_Y2_N40
\RegistradorHEX3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT\(1));

-- Location: FF_X14_Y2_N32
\RegistradorHEX3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT\(3));

-- Location: LABCELL_X14_Y2_N42
\decoderHEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX3|DOUT\(3) & ( (\RegistradorHEX3|DOUT\(0) & (!\RegistradorHEX3|DOUT\(2) $ (!\RegistradorHEX3|DOUT\(1)))) ) ) # ( !\RegistradorHEX3|DOUT\(3) & ( (!\RegistradorHEX3|DOUT\(1) & 
-- (!\RegistradorHEX3|DOUT\(2) $ (!\RegistradorHEX3|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000000000011001100000000000010001001000100001000100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(3),
	combout => \decoderHEX3|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X14_Y2_N45
\decoderHEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX3|DOUT\(0) & ( (!\RegistradorHEX3|DOUT\(3) & (\RegistradorHEX3|DOUT\(2) & !\RegistradorHEX3|DOUT\(1))) # (\RegistradorHEX3|DOUT\(3) & ((\RegistradorHEX3|DOUT\(1)))) ) ) # ( 
-- !\RegistradorHEX3|DOUT\(0) & ( (\RegistradorHEX3|DOUT\(2) & ((\RegistradorHEX3|DOUT\(1)) # (\RegistradorHEX3|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101010000000011110101000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(0),
	combout => \decoderHEX3|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X14_Y2_N0
\decoderHEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX3|DOUT\(0) & ( (\RegistradorHEX3|DOUT\(3) & (\RegistradorHEX3|DOUT\(2) & \RegistradorHEX3|DOUT\(1))) ) ) # ( !\RegistradorHEX3|DOUT\(0) & ( (!\RegistradorHEX3|DOUT\(3) & 
-- (!\RegistradorHEX3|DOUT\(2) & \RegistradorHEX3|DOUT\(1))) # (\RegistradorHEX3|DOUT\(3) & (\RegistradorHEX3|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111000011000000111100001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(0),
	combout => \decoderHEX3|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X14_Y2_N18
\decoderHEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX3|DOUT\(3) & ( (\RegistradorHEX3|DOUT\(1) & (!\RegistradorHEX3|DOUT\(2) $ (\RegistradorHEX3|DOUT\(0)))) ) ) # ( !\RegistradorHEX3|DOUT\(3) & ( (!\RegistradorHEX3|DOUT\(2) & 
-- (\RegistradorHEX3|DOUT\(0) & !\RegistradorHEX3|DOUT\(1))) # (\RegistradorHEX3|DOUT\(2) & (!\RegistradorHEX3|DOUT\(0) $ (\RegistradorHEX3|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011000010001011001100001000100000000100110010000000010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(3),
	combout => \decoderHEX3|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X14_Y2_N12
\decoderHEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX3|DOUT\(3) & ( (\RegistradorHEX3|DOUT\(0) & (!\RegistradorHEX3|DOUT\(2) & !\RegistradorHEX3|DOUT\(1))) ) ) # ( !\RegistradorHEX3|DOUT\(3) & ( ((\RegistradorHEX3|DOUT\(2) & 
-- !\RegistradorHEX3|DOUT\(1))) # (\RegistradorHEX3|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011001111110011001100110000000000000011000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(3),
	combout => \decoderHEX3|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X14_Y2_N21
\decoderHEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[5]~5_combout\ = ( \RegistradorHEX3|DOUT\(3) & ( (\RegistradorHEX3|DOUT\(2) & (\RegistradorHEX3|DOUT\(0) & !\RegistradorHEX3|DOUT\(1))) ) ) # ( !\RegistradorHEX3|DOUT\(3) & ( (!\RegistradorHEX3|DOUT\(2) & 
-- ((\RegistradorHEX3|DOUT\(1)) # (\RegistradorHEX3|DOUT\(0)))) # (\RegistradorHEX3|DOUT\(2) & (\RegistradorHEX3|DOUT\(0) & \RegistradorHEX3|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101111000010101010111100000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(3),
	combout => \decoderHEX3|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X14_Y2_N15
\decoderHEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX3|DOUT\(0) & ( (!\RegistradorHEX3|DOUT\(3) & (!\RegistradorHEX3|DOUT\(2) $ (\RegistradorHEX3|DOUT\(1)))) ) ) # ( !\RegistradorHEX3|DOUT\(0) & ( (!\RegistradorHEX3|DOUT\(1) & 
-- (!\RegistradorHEX3|DOUT\(2) $ (\RegistradorHEX3|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000101001010000000010100000010100001010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(0),
	combout => \decoderHEX3|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X14_Y10_N27
\DecoderSelEnd|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderSelEnd|Equal0~3_combout\ = ( \AndHEX2|saida~0_combout\ & ( (!\ROM_instrucao|memROM~4_combout\ & (!\ROM_instrucao|memROM~2_combout\ & \ROM_instrucao|memROM~6_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	dataf => \AndHEX2|ALT_INV_saida~0_combout\,
	combout => \DecoderSelEnd|Equal0~3_combout\);

-- Location: FF_X14_Y2_N50
\RegistradorHEX4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT\(3));

-- Location: FF_X14_Y2_N11
\RegistradorHEX4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT\(0));

-- Location: FF_X14_Y2_N56
\RegistradorHEX4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT\(2));

-- Location: FF_X14_Y2_N53
\RegistradorHEX4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT\(1));

-- Location: LABCELL_X14_Y2_N57
\decoderHEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX4|DOUT\(1) & ( (\RegistradorHEX4|DOUT\(3) & (\RegistradorHEX4|DOUT\(0) & !\RegistradorHEX4|DOUT\(2))) ) ) # ( !\RegistradorHEX4|DOUT\(1) & ( (!\RegistradorHEX4|DOUT\(3) & 
-- (!\RegistradorHEX4|DOUT\(0) $ (!\RegistradorHEX4|DOUT\(2)))) # (\RegistradorHEX4|DOUT\(3) & (\RegistradorHEX4|DOUT\(0) & \RegistradorHEX4|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010011001001000101001100100010001000000000001000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX4|ALT_INV_DOUT\(1),
	combout => \decoderHEX4|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X14_Y2_N6
\decoderHEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX4|DOUT\(2) & ( \RegistradorHEX4|DOUT\(1) & ( (!\RegistradorHEX4|DOUT\(0)) # (\RegistradorHEX4|DOUT\(3)) ) ) ) # ( !\RegistradorHEX4|DOUT\(2) & ( \RegistradorHEX4|DOUT\(1) & ( 
-- (\RegistradorHEX4|DOUT\(0) & \RegistradorHEX4|DOUT\(3)) ) ) ) # ( \RegistradorHEX4|DOUT\(2) & ( !\RegistradorHEX4|DOUT\(1) & ( !\RegistradorHEX4|DOUT\(0) $ (!\RegistradorHEX4|DOUT\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111000011110000000011000000111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datae => \RegistradorHEX4|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX4|ALT_INV_DOUT\(1),
	combout => \decoderHEX4|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X14_Y2_N3
\decoderHEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX4|DOUT\(1) & ( (!\RegistradorHEX4|DOUT\(3) & (!\RegistradorHEX4|DOUT\(0) & !\RegistradorHEX4|DOUT\(2))) # (\RegistradorHEX4|DOUT\(3) & ((\RegistradorHEX4|DOUT\(2)))) ) ) # ( 
-- !\RegistradorHEX4|DOUT\(1) & ( (\RegistradorHEX4|DOUT\(3) & (!\RegistradorHEX4|DOUT\(0) & \RegistradorHEX4|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000010101011010000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX4|ALT_INV_DOUT\(1),
	combout => \decoderHEX4|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X14_Y2_N27
\decoderHEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX4|DOUT\(1) & ( (!\RegistradorHEX4|DOUT\(2) & (!\RegistradorHEX4|DOUT\(0) & \RegistradorHEX4|DOUT\(3))) # (\RegistradorHEX4|DOUT\(2) & (\RegistradorHEX4|DOUT\(0))) ) ) # ( 
-- !\RegistradorHEX4|DOUT\(1) & ( (!\RegistradorHEX4|DOUT\(3) & (!\RegistradorHEX4|DOUT\(2) $ (!\RegistradorHEX4|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000000000101101001010000010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX4|ALT_INV_DOUT\(1),
	combout => \decoderHEX4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X14_Y2_N33
\decoderHEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX4|DOUT\(1) & ( (\RegistradorHEX4|DOUT\(0) & !\RegistradorHEX4|DOUT\(3)) ) ) # ( !\RegistradorHEX4|DOUT\(1) & ( (!\RegistradorHEX4|DOUT\(2) & (\RegistradorHEX4|DOUT\(0))) # 
-- (\RegistradorHEX4|DOUT\(2) & ((!\RegistradorHEX4|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100001010010111110000101000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX4|ALT_INV_DOUT\(1),
	combout => \decoderHEX4|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X14_Y2_N51
\decoderHEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[5]~5_combout\ = ( !\RegistradorHEX4|DOUT\(1) & ( \RegistradorHEX4|DOUT\(3) & ( (\RegistradorHEX4|DOUT\(2) & \RegistradorHEX4|DOUT\(0)) ) ) ) # ( \RegistradorHEX4|DOUT\(1) & ( !\RegistradorHEX4|DOUT\(3) & ( 
-- (!\RegistradorHEX4|DOUT\(2)) # (\RegistradorHEX4|DOUT\(0)) ) ) ) # ( !\RegistradorHEX4|DOUT\(1) & ( !\RegistradorHEX4|DOUT\(3) & ( (!\RegistradorHEX4|DOUT\(2) & \RegistradorHEX4|DOUT\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010101011111010111100000101000001010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datae => \RegistradorHEX4|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX4|ALT_INV_DOUT\(3),
	combout => \decoderHEX4|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X14_Y2_N54
\decoderHEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX4|DOUT\(1) & ( (!\RegistradorHEX4|DOUT\(3) & (\RegistradorHEX4|DOUT\(0) & \RegistradorHEX4|DOUT\(2))) ) ) # ( !\RegistradorHEX4|DOUT\(1) & ( (!\RegistradorHEX4|DOUT\(3) & 
-- ((!\RegistradorHEX4|DOUT\(2)))) # (\RegistradorHEX4|DOUT\(3) & (!\RegistradorHEX4|DOUT\(0) & \RegistradorHEX4|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001000100101010100100010000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX4|ALT_INV_DOUT\(1),
	combout => \decoderHEX4|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X14_Y10_N6
\DecoderSelEnd|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderSelEnd|Equal0~4_combout\ = ( !\ROM_instrucao|memROM~4_combout\ & ( (\ROM_instrucao|memROM~2_combout\ & (\ROM_instrucao|memROM~6_combout\ & \AndHEX2|saida~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datac => \AndHEX2|ALT_INV_saida~0_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \DecoderSelEnd|Equal0~4_combout\);

-- Location: FF_X14_Y4_N50
\RegistradorHEX5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX5|DOUT\(2));

-- Location: FF_X14_Y4_N47
\RegistradorHEX5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX5|DOUT\(3));

-- Location: FF_X14_Y4_N44
\RegistradorHEX5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX5|DOUT\(0));

-- Location: FF_X14_Y4_N38
\RegistradorHEX5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX5|DOUT\(1));

-- Location: LABCELL_X14_Y4_N39
\decoderHEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[0]~0_combout\ = (!\RegistradorHEX5|DOUT\(2) & (\RegistradorHEX5|DOUT\(0) & (!\RegistradorHEX5|DOUT\(3) $ (\RegistradorHEX5|DOUT\(1))))) # (\RegistradorHEX5|DOUT\(2) & (!\RegistradorHEX5|DOUT\(1) & (!\RegistradorHEX5|DOUT\(3) $ 
-- (\RegistradorHEX5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100000010010010010000001001001001000000100100100100000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(1),
	combout => \decoderHEX5|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X14_Y4_N6
\decoderHEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX5|DOUT\(2) & ( (!\RegistradorHEX5|DOUT\(0) & ((\RegistradorHEX5|DOUT\(1)) # (\RegistradorHEX5|DOUT\(3)))) # (\RegistradorHEX5|DOUT\(0) & (!\RegistradorHEX5|DOUT\(3) $ 
-- (\RegistradorHEX5|DOUT\(1)))) ) ) # ( !\RegistradorHEX5|DOUT\(2) & ( (\RegistradorHEX5|DOUT\(0) & (\RegistradorHEX5|DOUT\(3) & \RegistradorHEX5|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010001000000000001000101100110101110110110011010111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(2),
	combout => \decoderHEX5|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X14_Y4_N9
\decoderHEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX5|DOUT\(2) & ( (\RegistradorHEX5|DOUT\(3) & ((!\RegistradorHEX5|DOUT\(0)) # (\RegistradorHEX5|DOUT\(1)))) ) ) # ( !\RegistradorHEX5|DOUT\(2) & ( (!\RegistradorHEX5|DOUT\(3) & 
-- (!\RegistradorHEX5|DOUT\(0) & \RegistradorHEX5|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000110000001100110011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(2),
	combout => \decoderHEX5|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X14_Y4_N42
\decoderHEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX5|DOUT\(3) & ( (\RegistradorHEX5|DOUT\(1) & (!\RegistradorHEX5|DOUT\(2) $ (\RegistradorHEX5|DOUT\(0)))) ) ) # ( !\RegistradorHEX5|DOUT\(3) & ( (!\RegistradorHEX5|DOUT\(1) & 
-- (!\RegistradorHEX5|DOUT\(2) $ (!\RegistradorHEX5|DOUT\(0)))) # (\RegistradorHEX5|DOUT\(1) & (\RegistradorHEX5|DOUT\(2) & \RegistradorHEX5|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010101010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(3),
	combout => \decoderHEX5|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X14_Y4_N45
\decoderHEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[4]~4_combout\ = (!\RegistradorHEX5|DOUT\(1) & ((!\RegistradorHEX5|DOUT\(2) & (\RegistradorHEX5|DOUT\(0))) # (\RegistradorHEX5|DOUT\(2) & ((!\RegistradorHEX5|DOUT\(3)))))) # (\RegistradorHEX5|DOUT\(1) & 
-- (((\RegistradorHEX5|DOUT\(0) & !\RegistradorHEX5|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100001000001011110000100000101111000010000010111100001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(1),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(3),
	combout => \decoderHEX5|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X14_Y4_N36
\decoderHEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[5]~5_combout\ = ( \RegistradorHEX5|DOUT\(0) & ( !\RegistradorHEX5|DOUT\(3) $ (((\RegistradorHEX5|DOUT\(2) & !\RegistradorHEX5|DOUT\(1)))) ) ) # ( !\RegistradorHEX5|DOUT\(0) & ( (!\RegistradorHEX5|DOUT\(2) & 
-- (!\RegistradorHEX5|DOUT\(3) & \RegistradorHEX5|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100010011001110011001001100111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(0),
	combout => \decoderHEX5|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X14_Y4_N48
\decoderHEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX5|DOUT\(0) & ( (!\RegistradorHEX5|DOUT\(3) & (!\RegistradorHEX5|DOUT\(1) $ (\RegistradorHEX5|DOUT\(2)))) ) ) # ( !\RegistradorHEX5|DOUT\(0) & ( (!\RegistradorHEX5|DOUT\(1) & 
-- (!\RegistradorHEX5|DOUT\(3) $ (\RegistradorHEX5|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000011000000000011001100000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(0),
	combout => \decoderHEX5|rascSaida7seg[6]~6_combout\);

-- Location: FF_X13_Y9_N25
\MemoriaRAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~35_q\);

-- Location: MLABCELL_X13_Y11_N45
\MemoriaRAM|ram~43feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~43feeder_combout\ = ( \Processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(4),
	combout => \MemoriaRAM|ram~43feeder_combout\);

-- Location: FF_X13_Y11_N46
\MemoriaRAM|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MemoriaRAM|ram~43feeder_combout\,
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~43_q\);

-- Location: FF_X12_Y9_N52
\MemoriaRAM|ram~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~67_q\);

-- Location: FF_X12_Y9_N20
\MemoriaRAM|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~75_q\);

-- Location: LABCELL_X12_Y9_N18
\MemoriaRAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~544_combout\ = ( \MemoriaRAM|ram~75_q\ & ( \ROM_instrucao|memROM~2_combout\ & ( (\ROM_instrucao|memROM~6_combout\) # (\MemoriaRAM|ram~43_q\) ) ) ) # ( !\MemoriaRAM|ram~75_q\ & ( \ROM_instrucao|memROM~2_combout\ & ( (\MemoriaRAM|ram~43_q\ & 
-- !\ROM_instrucao|memROM~6_combout\) ) ) ) # ( \MemoriaRAM|ram~75_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & (\MemoriaRAM|ram~35_q\)) # (\ROM_instrucao|memROM~6_combout\ & ((\MemoriaRAM|ram~67_q\))) ) ) ) # ( 
-- !\MemoriaRAM|ram~75_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & (\MemoriaRAM|ram~35_q\)) # (\ROM_instrucao|memROM~6_combout\ & ((\MemoriaRAM|ram~67_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~35_q\,
	datab => \MemoriaRAM|ALT_INV_ram~43_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~67_q\,
	datae => \MemoriaRAM|ALT_INV_ram~75_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~544_combout\);

-- Location: MLABCELL_X13_Y11_N36
\MemoriaRAM|ram~19feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~19feeder_combout\ = ( \Processador|REGA|DOUT\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(4),
	combout => \MemoriaRAM|ram~19feeder_combout\);

-- Location: FF_X13_Y11_N37
\MemoriaRAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MemoriaRAM|ram~19feeder_combout\,
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~19_q\);

-- Location: FF_X14_Y10_N59
\MemoriaRAM|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~51_q\);

-- Location: FF_X13_Y9_N4
\MemoriaRAM|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~59_q\);

-- Location: FF_X14_Y9_N8
\MemoriaRAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(4),
	sload => VCC,
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~27_q\);

-- Location: LABCELL_X14_Y9_N6
\MemoriaRAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~543_combout\ = ( \MemoriaRAM|ram~27_q\ & ( \ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~6_combout\) # (\MemoriaRAM|ram~59_q\) ) ) ) # ( !\MemoriaRAM|ram~27_q\ & ( \ROM_instrucao|memROM~2_combout\ & ( 
-- (\ROM_instrucao|memROM~6_combout\ & \MemoriaRAM|ram~59_q\) ) ) ) # ( \MemoriaRAM|ram~27_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & (\MemoriaRAM|ram~19_q\)) # (\ROM_instrucao|memROM~6_combout\ & 
-- ((\MemoriaRAM|ram~51_q\))) ) ) ) # ( !\MemoriaRAM|ram~27_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & (\MemoriaRAM|ram~19_q\)) # (\ROM_instrucao|memROM~6_combout\ & ((\MemoriaRAM|ram~51_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~19_q\,
	datab => \MemoriaRAM|ALT_INV_ram~51_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~59_q\,
	datae => \MemoriaRAM|ALT_INV_ram~27_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~543_combout\);

-- Location: LABCELL_X12_Y9_N27
\MemoriaRAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~545_combout\ = ( \MemoriaRAM|ram~543_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & ((!\ROM_instrucao|memROM~4_combout\) # (\MemoriaRAM|ram~544_combout\))) ) ) # ( !\MemoriaRAM|ram~543_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & 
-- (\ROM_instrucao|memROM~4_combout\ & \MemoriaRAM|ram~544_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~544_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~543_combout\,
	combout => \MemoriaRAM|ram~545_combout\);

-- Location: MLABCELL_X13_Y9_N42
\Processador|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~17_sumout\ = SUM(( \Processador|REGA|DOUT\(4) ) + ( (!\Processador|decoder|Equal10~1_combout\ & \MemoriaRAM|ram~545_combout\) ) + ( \Processador|ULA1|Add0~14\ ))
-- \Processador|ULA1|Add0~18\ = CARRY(( \Processador|REGA|DOUT\(4) ) + ( (!\Processador|decoder|Equal10~1_combout\ & \MemoriaRAM|ram~545_combout\) ) + ( \Processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~545_combout\,
	datad => \Processador|REGA|ALT_INV_DOUT\(4),
	cin => \Processador|ULA1|Add0~14\,
	sumout => \Processador|ULA1|Add0~17_sumout\,
	cout => \Processador|ULA1|Add0~18\);

-- Location: MLABCELL_X13_Y9_N15
\Processador|ULA1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~17_sumout\ = SUM(( (!\MemoriaRAM|ram~545_combout\) # (\Processador|decoder|Equal10~1_combout\) ) + ( \Processador|REGA|DOUT\(4) ) + ( \Processador|ULA1|Add1~14\ ))
-- \Processador|ULA1|Add1~18\ = CARRY(( (!\MemoriaRAM|ram~545_combout\) # (\Processador|decoder|Equal10~1_combout\) ) + ( \Processador|REGA|DOUT\(4) ) + ( \Processador|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \Processador|REGA|ALT_INV_DOUT\(4),
	datad => \MemoriaRAM|ALT_INV_ram~545_combout\,
	cin => \Processador|ULA1|Add1~14\,
	sumout => \Processador|ULA1|Add1~17_sumout\,
	cout => \Processador|ULA1|Add1~18\);

-- Location: LABCELL_X12_Y9_N57
\Processador|ULA1|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[4]~4_combout\ = ( \Processador|ULA1|Add1~17_sumout\ & ( (!\Processador|decoder|saida~0_combout\) # ((!\Processador|decoder|Equal10~1_combout\ & \MemoriaRAM|ram~545_combout\)) ) ) # ( !\Processador|ULA1|Add1~17_sumout\ & ( 
-- (\Processador|decoder|saida~0_combout\ & (!\Processador|decoder|Equal10~1_combout\ & \MemoriaRAM|ram~545_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010101010111110101010101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~0_combout\,
	datac => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~545_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~17_sumout\,
	combout => \Processador|ULA1|saida[4]~4_combout\);

-- Location: FF_X13_Y9_N44
\Processador|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|ULA1|Add0~17_sumout\,
	asdata => \Processador|ULA1|saida[4]~4_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(4));

-- Location: LABCELL_X12_Y10_N12
\ROM_instrucao|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~18_combout\ = ( \ROM_instrucao|memROM~7_combout\ & ( \ROM_instrucao|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	combout => \ROM_instrucao|memROM~18_combout\);

-- Location: MLABCELL_X13_Y9_N18
\Processador|ULA1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~21_sumout\ = SUM(( (!\Processador|decoder|Equal10~1_combout\ & (((!\MemoriaRAM|ram~550_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (((!\ROM_instrucao|memROM~18_combout\)) # (\Processador|PC|DOUT[8]~DUPLICATE_q\))) ) + 
-- ( \Processador|REGA|DOUT[5]~DUPLICATE_q\ ) + ( \Processador|ULA1|Add1~18\ ))
-- \Processador|ULA1|Add1~22\ = CARRY(( (!\Processador|decoder|Equal10~1_combout\ & (((!\MemoriaRAM|ram~550_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (((!\ROM_instrucao|memROM~18_combout\)) # (\Processador|PC|DOUT[8]~DUPLICATE_q\))) ) + ( 
-- \Processador|REGA|DOUT[5]~DUPLICATE_q\ ) + ( \Processador|ULA1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~550_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \Processador|ULA1|Add1~18\,
	sumout => \Processador|ULA1|Add1~21_sumout\,
	cout => \Processador|ULA1|Add1~22\);

-- Location: MLABCELL_X13_Y9_N57
\Processador|ULA1|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[5]~5_combout\ = ( \Processador|ULA1|Add1~21_sumout\ & ( (!\Processador|decoder|saida~0_combout\) # ((!\Processador|decoder|Equal10~1_combout\ & ((\MemoriaRAM|ram~550_combout\))) # (\Processador|decoder|Equal10~1_combout\ & 
-- (\ROM_instrucao|memROM~8_combout\))) ) ) # ( !\Processador|ULA1|Add1~21_sumout\ & ( (\Processador|decoder|saida~0_combout\ & ((!\Processador|decoder|Equal10~1_combout\ & ((\MemoriaRAM|ram~550_combout\))) # (\Processador|decoder|Equal10~1_combout\ & 
-- (\ROM_instrucao|memROM~8_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101000101000000010100010110101011111011111010101111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~0_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~550_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~21_sumout\,
	combout => \Processador|ULA1|saida[5]~5_combout\);

-- Location: FF_X13_Y9_N47
\Processador|REGA|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|ULA1|Add0~21_sumout\,
	asdata => \Processador|ULA1|saida[5]~5_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT[5]~DUPLICATE_q\);

-- Location: FF_X13_Y9_N14
\MemoriaRAM|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~60_q\);

-- Location: FF_X12_Y9_N56
\MemoriaRAM|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~76_q\);

-- Location: LABCELL_X12_Y9_N54
\MemoriaRAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~549_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~76_q\) ) ) # ( !\ROM_instrucao|memROM~4_combout\ & ( (\MemoriaRAM|ram~60_q\ & !\ROM_instrucao|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~60_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~76_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~549_combout\);

-- Location: FF_X12_Y10_N14
\MemoriaRAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~20_q\);

-- Location: FF_X12_Y10_N11
\MemoriaRAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~36_q\);

-- Location: LABCELL_X12_Y10_N9
\MemoriaRAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~546_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~36_q\) ) ) # ( !\ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~20_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~20_q\,
	datad => \MemoriaRAM|ALT_INV_ram~36_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~546_combout\);

-- Location: FF_X14_Y10_N4
\MemoriaRAM|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~52_q\);

-- Location: FF_X12_Y9_N29
\MemoriaRAM|ram~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~68_q\);

-- Location: LABCELL_X12_Y9_N36
\MemoriaRAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~547_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( (\MemoriaRAM|ram~68_q\ & !\ROM_instrucao|memROM~8_combout\) ) ) # ( !\ROM_instrucao|memROM~4_combout\ & ( (\MemoriaRAM|ram~52_q\ & !\ROM_instrucao|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~52_q\,
	datac => \MemoriaRAM|ALT_INV_ram~68_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~547_combout\);

-- Location: FF_X12_Y9_N2
\MemoriaRAM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~44_q\);

-- Location: FF_X14_Y9_N11
\MemoriaRAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT[5]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~28_q\);

-- Location: LABCELL_X12_Y9_N39
\MemoriaRAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~548_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( (\MemoriaRAM|ram~44_q\ & !\ROM_instrucao|memROM~8_combout\) ) ) # ( !\ROM_instrucao|memROM~4_combout\ & ( (\MemoriaRAM|ram~28_q\ & !\ROM_instrucao|memROM~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~44_q\,
	datac => \MemoriaRAM|ALT_INV_ram~28_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~548_combout\);

-- Location: LABCELL_X12_Y9_N48
\MemoriaRAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~550_combout\ = ( \MemoriaRAM|ram~547_combout\ & ( \MemoriaRAM|ram~548_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & (((\MemoriaRAM|ram~546_combout\)) # (\ROM_instrucao|memROM~2_combout\))) # (\ROM_instrucao|memROM~6_combout\ & 
-- ((!\ROM_instrucao|memROM~2_combout\) # ((\MemoriaRAM|ram~549_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~547_combout\ & ( \MemoriaRAM|ram~548_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & (((\MemoriaRAM|ram~546_combout\)) # 
-- (\ROM_instrucao|memROM~2_combout\))) # (\ROM_instrucao|memROM~6_combout\ & (\ROM_instrucao|memROM~2_combout\ & (\MemoriaRAM|ram~549_combout\))) ) ) ) # ( \MemoriaRAM|ram~547_combout\ & ( !\MemoriaRAM|ram~548_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ 
-- & (!\ROM_instrucao|memROM~2_combout\ & ((\MemoriaRAM|ram~546_combout\)))) # (\ROM_instrucao|memROM~6_combout\ & ((!\ROM_instrucao|memROM~2_combout\) # ((\MemoriaRAM|ram~549_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~547_combout\ & ( 
-- !\MemoriaRAM|ram~548_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & (!\ROM_instrucao|memROM~2_combout\ & ((\MemoriaRAM|ram~546_combout\)))) # (\ROM_instrucao|memROM~6_combout\ & (\ROM_instrucao|memROM~2_combout\ & (\MemoriaRAM|ram~549_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000110001001010001011100110100100011101010110110011111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~549_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~546_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~547_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~548_combout\,
	combout => \MemoriaRAM|ram~550_combout\);

-- Location: MLABCELL_X13_Y9_N45
\Processador|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~21_sumout\ = SUM(( \Processador|REGA|DOUT\(5) ) + ( (!\Processador|decoder|Equal10~1_combout\ & (((\MemoriaRAM|ram~550_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (\ROM_instrucao|memROM~18_combout\ & 
-- (!\Processador|PC|DOUT\(8)))) ) + ( \Processador|ULA1|Add0~18\ ))
-- \Processador|ULA1|Add0~22\ = CARRY(( \Processador|REGA|DOUT\(5) ) + ( (!\Processador|decoder|Equal10~1_combout\ & (((\MemoriaRAM|ram~550_combout\)))) # (\Processador|decoder|Equal10~1_combout\ & (\ROM_instrucao|memROM~18_combout\ & 
-- (!\Processador|PC|DOUT\(8)))) ) + ( \Processador|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111011110010001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~18_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \Processador|PC|ALT_INV_DOUT\(8),
	datad => \Processador|REGA|ALT_INV_DOUT\(5),
	dataf => \MemoriaRAM|ALT_INV_ram~550_combout\,
	cin => \Processador|ULA1|Add0~18\,
	sumout => \Processador|ULA1|Add0~21_sumout\,
	cout => \Processador|ULA1|Add0~22\);

-- Location: FF_X13_Y9_N46
\Processador|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|ULA1|Add0~21_sumout\,
	asdata => \Processador|ULA1|saida[5]~5_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(5));

-- Location: FF_X13_Y11_N31
\MemoriaRAM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~45_q\);

-- Location: FF_X14_Y9_N59
\MemoriaRAM|ram~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~69_q\);

-- Location: FF_X13_Y11_N13
\MemoriaRAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~37_q\);

-- Location: FF_X14_Y9_N38
\MemoriaRAM|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~77_q\);

-- Location: LABCELL_X14_Y9_N36
\MemoriaRAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~552_combout\ = ( \MemoriaRAM|ram~77_q\ & ( \ROM_instrucao|memROM~2_combout\ & ( (\ROM_instrucao|memROM~6_combout\) # (\MemoriaRAM|ram~45_q\) ) ) ) # ( !\MemoriaRAM|ram~77_q\ & ( \ROM_instrucao|memROM~2_combout\ & ( (\MemoriaRAM|ram~45_q\ & 
-- !\ROM_instrucao|memROM~6_combout\) ) ) ) # ( \MemoriaRAM|ram~77_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & ((\MemoriaRAM|ram~37_q\))) # (\ROM_instrucao|memROM~6_combout\ & (\MemoriaRAM|ram~69_q\)) ) ) ) # ( 
-- !\MemoriaRAM|ram~77_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (!\ROM_instrucao|memROM~6_combout\ & ((\MemoriaRAM|ram~37_q\))) # (\ROM_instrucao|memROM~6_combout\ & (\MemoriaRAM|ram~69_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~45_q\,
	datab => \MemoriaRAM|ALT_INV_ram~69_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~37_q\,
	datae => \MemoriaRAM|ALT_INV_ram~77_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~552_combout\);

-- Location: FF_X13_Y11_N40
\MemoriaRAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~21_q\);

-- Location: LABCELL_X14_Y11_N24
\MemoriaRAM|ram~53feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~53feeder_combout\ = ( \Processador|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT\(6),
	combout => \MemoriaRAM|ram~53feeder_combout\);

-- Location: FF_X14_Y11_N25
\MemoriaRAM|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MemoriaRAM|ram~53feeder_combout\,
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~53_q\);

-- Location: FF_X14_Y11_N50
\MemoriaRAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~29_q\);

-- Location: FF_X14_Y11_N20
\MemoriaRAM|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(6),
	sload => VCC,
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~61_q\);

-- Location: LABCELL_X14_Y11_N18
\MemoriaRAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~551_combout\ = ( \MemoriaRAM|ram~61_q\ & ( \ROM_instrucao|memROM~6_combout\ & ( (\ROM_instrucao|memROM~2_combout\) # (\MemoriaRAM|ram~53_q\) ) ) ) # ( !\MemoriaRAM|ram~61_q\ & ( \ROM_instrucao|memROM~6_combout\ & ( (\MemoriaRAM|ram~53_q\ & 
-- !\ROM_instrucao|memROM~2_combout\) ) ) ) # ( \MemoriaRAM|ram~61_q\ & ( !\ROM_instrucao|memROM~6_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & (\MemoriaRAM|ram~21_q\)) # (\ROM_instrucao|memROM~2_combout\ & ((\MemoriaRAM|ram~29_q\))) ) ) ) # ( 
-- !\MemoriaRAM|ram~61_q\ & ( !\ROM_instrucao|memROM~6_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & (\MemoriaRAM|ram~21_q\)) # (\ROM_instrucao|memROM~2_combout\ & ((\MemoriaRAM|ram~29_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100110011000000000011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~21_q\,
	datab => \MemoriaRAM|ALT_INV_ram~53_q\,
	datac => \MemoriaRAM|ALT_INV_ram~29_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~61_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \MemoriaRAM|ram~551_combout\);

-- Location: LABCELL_X14_Y9_N21
\MemoriaRAM|ram~553\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~553_combout\ = ( \MemoriaRAM|ram~551_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & ((!\ROM_instrucao|memROM~4_combout\) # (\MemoriaRAM|ram~552_combout\))) ) ) # ( !\MemoriaRAM|ram~551_combout\ & ( (\ROM_instrucao|memROM~4_combout\ & 
-- (!\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~552_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000010100000111100001010000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~552_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~551_combout\,
	combout => \MemoriaRAM|ram~553_combout\);

-- Location: MLABCELL_X13_Y9_N48
\Processador|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~25_sumout\ = SUM(( \Processador|REGA|DOUT\(6) ) + ( (!\Processador|decoder|Equal10~1_combout\ & \MemoriaRAM|ram~553_combout\) ) + ( \Processador|ULA1|Add0~22\ ))
-- \Processador|ULA1|Add0~26\ = CARRY(( \Processador|REGA|DOUT\(6) ) + ( (!\Processador|decoder|Equal10~1_combout\ & \MemoriaRAM|ram~553_combout\) ) + ( \Processador|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~553_combout\,
	datad => \Processador|REGA|ALT_INV_DOUT\(6),
	cin => \Processador|ULA1|Add0~22\,
	sumout => \Processador|ULA1|Add0~25_sumout\,
	cout => \Processador|ULA1|Add0~26\);

-- Location: MLABCELL_X13_Y9_N21
\Processador|ULA1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~25_sumout\ = SUM(( (!\MemoriaRAM|ram~553_combout\) # (\Processador|decoder|Equal10~1_combout\) ) + ( \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add1~22\ ))
-- \Processador|ULA1|Add1~26\ = CARRY(( (!\MemoriaRAM|ram~553_combout\) # (\Processador|decoder|Equal10~1_combout\) ) + ( \Processador|REGA|DOUT\(6) ) + ( \Processador|ULA1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \Processador|REGA|ALT_INV_DOUT\(6),
	datad => \MemoriaRAM|ALT_INV_ram~553_combout\,
	cin => \Processador|ULA1|Add1~22\,
	sumout => \Processador|ULA1|Add1~25_sumout\,
	cout => \Processador|ULA1|Add1~26\);

-- Location: MLABCELL_X13_Y9_N54
\Processador|ULA1|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[6]~6_combout\ = ( \Processador|ULA1|Add1~25_sumout\ & ( (!\Processador|decoder|saida~0_combout\) # ((!\Processador|decoder|Equal10~1_combout\ & \MemoriaRAM|ram~553_combout\)) ) ) # ( !\Processador|ULA1|Add1~25_sumout\ & ( 
-- (\Processador|decoder|saida~0_combout\ & (!\Processador|decoder|Equal10~1_combout\ & \MemoriaRAM|ram~553_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010010101110101011101010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~0_combout\,
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~553_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~25_sumout\,
	combout => \Processador|ULA1|saida[6]~6_combout\);

-- Location: FF_X13_Y9_N49
\Processador|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|ULA1|Add0~25_sumout\,
	asdata => \Processador|ULA1|saida[6]~6_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(6));

-- Location: FF_X13_Y9_N19
\MemoriaRAM|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~563_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~62_q\);

-- Location: FF_X12_Y9_N47
\MemoriaRAM|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~567_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~78_q\);

-- Location: LABCELL_X12_Y9_N45
\MemoriaRAM|ram~557\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~557_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~78_q\) ) ) # ( !\ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~62_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~62_q\,
	datad => \MemoriaRAM|ALT_INV_ram~78_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~557_combout\);

-- Location: FF_X14_Y11_N37
\MemoriaRAM|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~562_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~54_q\);

-- Location: FF_X12_Y9_N25
\MemoriaRAM|ram~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~566_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~70_q\);

-- Location: LABCELL_X12_Y9_N30
\MemoriaRAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~555_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~70_q\) ) ) # ( !\ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~54_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~54_q\,
	datad => \MemoriaRAM|ALT_INV_ram~70_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~555_combout\);

-- Location: MLABCELL_X13_Y11_N15
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

-- Location: FF_X13_Y11_N16
\MemoriaRAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MemoriaRAM|ram~38feeder_combout\,
	ena => \MemoriaRAM|ram~564_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~38_q\);

-- Location: FF_X12_Y10_N47
\MemoriaRAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~560_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~22_q\);

-- Location: LABCELL_X12_Y10_N45
\MemoriaRAM|ram~554\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~554_combout\ = ( \MemoriaRAM|ram~22_q\ & ( \ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~38_q\) ) ) ) # ( !\MemoriaRAM|ram~22_q\ & ( \ROM_instrucao|memROM~4_combout\ & ( 
-- (!\ROM_instrucao|memROM~8_combout\ & \MemoriaRAM|ram~38_q\) ) ) ) # ( \MemoriaRAM|ram~22_q\ & ( !\ROM_instrucao|memROM~4_combout\ & ( !\ROM_instrucao|memROM~8_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~38_q\,
	datae => \MemoriaRAM|ALT_INV_ram~22_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \MemoriaRAM|ram~554_combout\);

-- Location: FF_X14_Y9_N13
\MemoriaRAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	asdata => \Processador|REGA|DOUT\(7),
	sload => VCC,
	ena => \MemoriaRAM|ram~561_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~30_q\);

-- Location: MLABCELL_X13_Y11_N51
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

-- Location: FF_X13_Y11_N52
\MemoriaRAM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \MemoriaRAM|ram~46feeder_combout\,
	ena => \MemoriaRAM|ram~565_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~46_q\);

-- Location: LABCELL_X12_Y9_N24
\MemoriaRAM|ram~556\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~556_combout\ = ( \MemoriaRAM|ram~46_q\ & ( (!\ROM_instrucao|memROM~8_combout\ & ((\MemoriaRAM|ram~30_q\) # (\ROM_instrucao|memROM~4_combout\))) ) ) # ( !\MemoriaRAM|ram~46_q\ & ( (!\ROM_instrucao|memROM~8_combout\ & 
-- (!\ROM_instrucao|memROM~4_combout\ & \MemoriaRAM|ram~30_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000101010001010100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~30_q\,
	dataf => \MemoriaRAM|ALT_INV_ram~46_q\,
	combout => \MemoriaRAM|ram~556_combout\);

-- Location: LABCELL_X12_Y9_N12
\MemoriaRAM|ram~558\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~558_combout\ = ( \MemoriaRAM|ram~554_combout\ & ( \MemoriaRAM|ram~556_combout\ & ( (!\ROM_instrucao|memROM~6_combout\) # ((!\ROM_instrucao|memROM~2_combout\ & ((\MemoriaRAM|ram~555_combout\))) # (\ROM_instrucao|memROM~2_combout\ & 
-- (\MemoriaRAM|ram~557_combout\))) ) ) ) # ( !\MemoriaRAM|ram~554_combout\ & ( \MemoriaRAM|ram~556_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & (((\ROM_instrucao|memROM~6_combout\ & \MemoriaRAM|ram~555_combout\)))) # (\ROM_instrucao|memROM~2_combout\ & 
-- (((!\ROM_instrucao|memROM~6_combout\)) # (\MemoriaRAM|ram~557_combout\))) ) ) ) # ( \MemoriaRAM|ram~554_combout\ & ( !\MemoriaRAM|ram~556_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & (((!\ROM_instrucao|memROM~6_combout\) # 
-- (\MemoriaRAM|ram~555_combout\)))) # (\ROM_instrucao|memROM~2_combout\ & (\MemoriaRAM|ram~557_combout\ & (\ROM_instrucao|memROM~6_combout\))) ) ) ) # ( !\MemoriaRAM|ram~554_combout\ & ( !\MemoriaRAM|ram~556_combout\ & ( (\ROM_instrucao|memROM~6_combout\ & 
-- ((!\ROM_instrucao|memROM~2_combout\ & ((\MemoriaRAM|ram~555_combout\))) # (\ROM_instrucao|memROM~2_combout\ & (\MemoriaRAM|ram~557_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001011101000011010101101010001010110111111000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~557_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~555_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~554_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~556_combout\,
	combout => \MemoriaRAM|ram~558_combout\);

-- Location: MLABCELL_X13_Y9_N51
\Processador|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~29_sumout\ = SUM(( \Processador|REGA|DOUT\(7) ) + ( (\MemoriaRAM|ram~558_combout\ & !\Processador|decoder|Equal10~1_combout\) ) + ( \Processador|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111010111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~558_combout\,
	datac => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datad => \Processador|REGA|ALT_INV_DOUT\(7),
	cin => \Processador|ULA1|Add0~26\,
	sumout => \Processador|ULA1|Add0~29_sumout\);

-- Location: MLABCELL_X13_Y9_N24
\Processador|ULA1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~29_sumout\ = SUM(( (!\MemoriaRAM|ram~558_combout\) # (\Processador|decoder|Equal10~1_combout\) ) + ( \Processador|REGA|DOUT\(7) ) + ( \Processador|ULA1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|REGA|ALT_INV_DOUT\(7),
	datab => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~558_combout\,
	cin => \Processador|ULA1|Add1~26\,
	sumout => \Processador|ULA1|Add1~29_sumout\);

-- Location: LABCELL_X12_Y9_N42
\Processador|ULA1|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[7]~7_combout\ = ( \Processador|ULA1|Add1~29_sumout\ & ( (!\Processador|decoder|saida~0_combout\) # ((\MemoriaRAM|ram~558_combout\ & !\Processador|decoder|Equal10~1_combout\)) ) ) # ( !\Processador|ULA1|Add1~29_sumout\ & ( 
-- (\MemoriaRAM|ram~558_combout\ & (!\Processador|decoder|Equal10~1_combout\ & \Processador|decoder|saida~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011111111001100001111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~558_combout\,
	datac => \Processador|decoder|ALT_INV_Equal10~1_combout\,
	datad => \Processador|decoder|ALT_INV_saida~0_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~29_sumout\,
	combout => \Processador|ULA1|saida[7]~7_combout\);

-- Location: FF_X13_Y9_N53
\Processador|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~inputCLKENA0_outclk\,
	d => \Processador|ULA1|Add0~29_sumout\,
	asdata => \Processador|ULA1|saida[7]~7_combout\,
	sload => \Processador|decoder|Equal10~2_combout\,
	ena => \Processador|decoder|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(7));

-- Location: IOIBUF_X51_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: IOIBUF_X50_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X32_Y45_N58
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X43_Y45_N35
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X52_Y45_N52
\KEY0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY0,
	o => \KEY0~input_o\);

-- Location: IOIBUF_X54_Y16_N38
\KEY1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

-- Location: IOIBUF_X44_Y45_N1
\KEY2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY2,
	o => \KEY2~input_o\);

-- Location: IOIBUF_X46_Y0_N52
\KEY3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY3,
	o => \KEY3~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\FPGA_RESET~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FPGA_RESET,
	o => \FPGA_RESET~input_o\);

-- Location: IOIBUF_X20_Y45_N35
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X46_Y45_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X46_Y45_N92
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X18_Y45_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X52_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X40_Y45_N75
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X51_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X42_Y45_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X20_Y45_N1
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X54_Y14_N44
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


