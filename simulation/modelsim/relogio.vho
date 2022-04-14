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

-- DATE "04/14/2022 11:24:29"

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
	SW : IN std_logic_vector(9 DOWNTO 0);
	PC_OUT : BUFFER std_logic_vector(8 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(6 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END relogio;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[1]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[2]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[3]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[5]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_OUT[8]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
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
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|PC|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~2\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|PC|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~1_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~2_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~6\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~10\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~14\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \Processador|PC|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~18\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \Processador|PC|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~22\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \Processador|PC|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~26\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \Processador|PC|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~7_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~6_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~13_combout\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~30\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \Processador|PC|DOUT[8]~feeder_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~9_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~10_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~8_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~4_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~3_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~5_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~1_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|PC|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~11_combout\ : std_logic;
SIGNAL \Processador|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|PC|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~12_combout\ : std_logic;
SIGNAL \Processador|decoder|saida~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~14_combout\ : std_logic;
SIGNAL \ROM_instrucao|memROM~15_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~549_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~287_q\ : std_logic;
SIGNAL \Processador|ULA1|Add1~18_cout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~1_sumout\ : std_logic;
SIGNAL \Processador|decoder|saida~1_combout\ : std_logic;
SIGNAL \Processador|ULA1|saida[0]~0_combout\ : std_logic;
SIGNAL \Processador|decoder|Equal10~0_combout\ : std_logic;
SIGNAL \Processador|decoder|saida~2_combout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~550_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~295_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~551_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~319_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~552_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~327_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~530_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~548_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~311_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~546_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~279_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~545_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~271_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~547_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~303_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~529_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~531_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \AndHEX2|saida~0_combout\ : std_logic;
SIGNAL \DecoderSelEnd|Equal0~0_combout\ : std_logic;
SIGNAL \RegistradorHEX0|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ROM_instrucao|memROM~16_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~304_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~320_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~538_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~328_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~312_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~540_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~280_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~296_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~539_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~288_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~272_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~537_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~541_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~2\ : std_logic;
SIGNAL \Processador|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~2\ : std_logic;
SIGNAL \Processador|ULA1|Add1~9_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[1]~2_combout\ : std_logic;
SIGNAL \RegistradorHEX0|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~289_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~321_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~297_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~329_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~543_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~305_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~281_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~273_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~313_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~542_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~544_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~10\ : std_logic;
SIGNAL \Processador|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~10\ : std_logic;
SIGNAL \Processador|ULA1|Add1~13_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[2]~3_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~298_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~282_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~534_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~314feeder_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~314_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~330_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~535_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~274_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~290_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~532_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~306_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~322_q\ : std_logic;
SIGNAL \MemoriaRAM|ram~533_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~536_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add0~14\ : std_logic;
SIGNAL \Processador|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \Processador|ULA1|Add1~14\ : std_logic;
SIGNAL \Processador|ULA1|Add1~5_sumout\ : std_logic;
SIGNAL \Processador|ULA1|saida[3]~1_combout\ : std_logic;
SIGNAL \Processador|REGA|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoderHEX0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \DecoderSelEnd|Equal0~1_combout\ : std_logic;
SIGNAL \RegistradorHEX1|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \RegistradorHEX1|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \RegistradorHEX1|DOUT[0]~feeder_combout\ : std_logic;
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
SIGNAL \RegistradorHEX3|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoderHEX3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~527_combout\ : std_logic;
SIGNAL \RegistradorHEX4|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \RegistradorHEX4|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \decoderHEX4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \MemoriaRAM|ram~528_combout\ : std_logic;
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
SIGNAL \Processador|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RegistradorHEX0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegistradorHEX4|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \RegistradorHEX4|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \RegistradorHEX3|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \RegistradorHEX1|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \RegistradorHEX1|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \RegistradorHEX0|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \RegistradorHEX0|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Processador|REGA|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~329_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~321_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~297_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~289_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~313_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~305_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~281_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~273_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~328_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~312_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~296_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~280_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~320_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~304_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~288_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~272_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~330_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~314_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~298_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~282_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~322_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~306_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~290_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~274_q\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~530_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~327_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~319_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~295_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~287_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~311_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~303_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~279_q\ : std_logic;
SIGNAL \MemoriaRAM|ALT_INV_ram~271_q\ : std_logic;
SIGNAL \Processador|decoder|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM_instrucao|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \AndHEX2|ALT_INV_saida~0_combout\ : std_logic;
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
SIGNAL \Processador|ULA1|ALT_INV_Add1~13_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~9_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~5_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \Processador|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add1~1_sumout\ : std_logic;
SIGNAL \Processador|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \Processador|REGA|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Processador|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RegistradorHEX4|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \RegistradorHEX4|DOUT[1]~DUPLICATE_q\;
\RegistradorHEX4|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \RegistradorHEX4|DOUT[3]~DUPLICATE_q\;
\RegistradorHEX3|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \RegistradorHEX3|DOUT[2]~DUPLICATE_q\;
\RegistradorHEX1|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \RegistradorHEX1|DOUT[2]~DUPLICATE_q\;
\RegistradorHEX1|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \RegistradorHEX1|DOUT[1]~DUPLICATE_q\;
\RegistradorHEX0|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \RegistradorHEX0|DOUT[1]~DUPLICATE_q\;
\RegistradorHEX0|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \RegistradorHEX0|DOUT[0]~DUPLICATE_q\;
\Processador|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \Processador|REGA|DOUT[3]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[8]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[7]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[6]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[5]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[3]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[2]~DUPLICATE_q\;
\Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \Processador|PC|DOUT[1]~DUPLICATE_q\;
\Processador|REGA|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \Processador|REGA|DOUT[0]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\ROM_instrucao|ALT_INV_memROM~16_combout\ <= NOT \ROM_instrucao|memROM~16_combout\;
\ROM_instrucao|ALT_INV_memROM~15_combout\ <= NOT \ROM_instrucao|memROM~15_combout\;
\ROM_instrucao|ALT_INV_memROM~14_combout\ <= NOT \ROM_instrucao|memROM~14_combout\;
\MemoriaRAM|ALT_INV_ram~544_combout\ <= NOT \MemoriaRAM|ram~544_combout\;
\MemoriaRAM|ALT_INV_ram~543_combout\ <= NOT \MemoriaRAM|ram~543_combout\;
\MemoriaRAM|ALT_INV_ram~329_q\ <= NOT \MemoriaRAM|ram~329_q\;
\MemoriaRAM|ALT_INV_ram~321_q\ <= NOT \MemoriaRAM|ram~321_q\;
\MemoriaRAM|ALT_INV_ram~297_q\ <= NOT \MemoriaRAM|ram~297_q\;
\MemoriaRAM|ALT_INV_ram~289_q\ <= NOT \MemoriaRAM|ram~289_q\;
\MemoriaRAM|ALT_INV_ram~542_combout\ <= NOT \MemoriaRAM|ram~542_combout\;
\MemoriaRAM|ALT_INV_ram~313_q\ <= NOT \MemoriaRAM|ram~313_q\;
\MemoriaRAM|ALT_INV_ram~305_q\ <= NOT \MemoriaRAM|ram~305_q\;
\MemoriaRAM|ALT_INV_ram~281_q\ <= NOT \MemoriaRAM|ram~281_q\;
\MemoriaRAM|ALT_INV_ram~273_q\ <= NOT \MemoriaRAM|ram~273_q\;
\MemoriaRAM|ALT_INV_ram~541_combout\ <= NOT \MemoriaRAM|ram~541_combout\;
\MemoriaRAM|ALT_INV_ram~540_combout\ <= NOT \MemoriaRAM|ram~540_combout\;
\MemoriaRAM|ALT_INV_ram~328_q\ <= NOT \MemoriaRAM|ram~328_q\;
\MemoriaRAM|ALT_INV_ram~312_q\ <= NOT \MemoriaRAM|ram~312_q\;
\MemoriaRAM|ALT_INV_ram~539_combout\ <= NOT \MemoriaRAM|ram~539_combout\;
\MemoriaRAM|ALT_INV_ram~296_q\ <= NOT \MemoriaRAM|ram~296_q\;
\MemoriaRAM|ALT_INV_ram~280_q\ <= NOT \MemoriaRAM|ram~280_q\;
\MemoriaRAM|ALT_INV_ram~538_combout\ <= NOT \MemoriaRAM|ram~538_combout\;
\MemoriaRAM|ALT_INV_ram~320_q\ <= NOT \MemoriaRAM|ram~320_q\;
\MemoriaRAM|ALT_INV_ram~304_q\ <= NOT \MemoriaRAM|ram~304_q\;
\MemoriaRAM|ALT_INV_ram~537_combout\ <= NOT \MemoriaRAM|ram~537_combout\;
\MemoriaRAM|ALT_INV_ram~288_q\ <= NOT \MemoriaRAM|ram~288_q\;
\MemoriaRAM|ALT_INV_ram~272_q\ <= NOT \MemoriaRAM|ram~272_q\;
\MemoriaRAM|ALT_INV_ram~536_combout\ <= NOT \MemoriaRAM|ram~536_combout\;
\MemoriaRAM|ALT_INV_ram~535_combout\ <= NOT \MemoriaRAM|ram~535_combout\;
\MemoriaRAM|ALT_INV_ram~330_q\ <= NOT \MemoriaRAM|ram~330_q\;
\MemoriaRAM|ALT_INV_ram~314_q\ <= NOT \MemoriaRAM|ram~314_q\;
\MemoriaRAM|ALT_INV_ram~534_combout\ <= NOT \MemoriaRAM|ram~534_combout\;
\MemoriaRAM|ALT_INV_ram~298_q\ <= NOT \MemoriaRAM|ram~298_q\;
\MemoriaRAM|ALT_INV_ram~282_q\ <= NOT \MemoriaRAM|ram~282_q\;
\MemoriaRAM|ALT_INV_ram~533_combout\ <= NOT \MemoriaRAM|ram~533_combout\;
\MemoriaRAM|ALT_INV_ram~322_q\ <= NOT \MemoriaRAM|ram~322_q\;
\MemoriaRAM|ALT_INV_ram~306_q\ <= NOT \MemoriaRAM|ram~306_q\;
\MemoriaRAM|ALT_INV_ram~532_combout\ <= NOT \MemoriaRAM|ram~532_combout\;
\MemoriaRAM|ALT_INV_ram~290_q\ <= NOT \MemoriaRAM|ram~290_q\;
\MemoriaRAM|ALT_INV_ram~274_q\ <= NOT \MemoriaRAM|ram~274_q\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\Processador|decoder|ALT_INV_saida~1_combout\ <= NOT \Processador|decoder|saida~1_combout\;
\MemoriaRAM|ALT_INV_ram~531_combout\ <= NOT \MemoriaRAM|ram~531_combout\;
\ROM_instrucao|ALT_INV_memROM~13_combout\ <= NOT \ROM_instrucao|memROM~13_combout\;
\MemoriaRAM|ALT_INV_ram~530_combout\ <= NOT \MemoriaRAM|ram~530_combout\;
\MemoriaRAM|ALT_INV_ram~327_q\ <= NOT \MemoriaRAM|ram~327_q\;
\MemoriaRAM|ALT_INV_ram~319_q\ <= NOT \MemoriaRAM|ram~319_q\;
\MemoriaRAM|ALT_INV_ram~295_q\ <= NOT \MemoriaRAM|ram~295_q\;
\MemoriaRAM|ALT_INV_ram~287_q\ <= NOT \MemoriaRAM|ram~287_q\;
\MemoriaRAM|ALT_INV_ram~529_combout\ <= NOT \MemoriaRAM|ram~529_combout\;
\MemoriaRAM|ALT_INV_ram~311_q\ <= NOT \MemoriaRAM|ram~311_q\;
\MemoriaRAM|ALT_INV_ram~303_q\ <= NOT \MemoriaRAM|ram~303_q\;
\MemoriaRAM|ALT_INV_ram~279_q\ <= NOT \MemoriaRAM|ram~279_q\;
\MemoriaRAM|ALT_INV_ram~271_q\ <= NOT \MemoriaRAM|ram~271_q\;
\Processador|decoder|ALT_INV_saida~0_combout\ <= NOT \Processador|decoder|saida~0_combout\;
\ROM_instrucao|ALT_INV_memROM~12_combout\ <= NOT \ROM_instrucao|memROM~12_combout\;
\ROM_instrucao|ALT_INV_memROM~11_combout\ <= NOT \ROM_instrucao|memROM~11_combout\;
\ROM_instrucao|ALT_INV_memROM~10_combout\ <= NOT \ROM_instrucao|memROM~10_combout\;
\ROM_instrucao|ALT_INV_memROM~9_combout\ <= NOT \ROM_instrucao|memROM~9_combout\;
\AndHEX2|ALT_INV_saida~0_combout\ <= NOT \AndHEX2|saida~0_combout\;
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
\Processador|ULA1|ALT_INV_Add1~13_sumout\ <= NOT \Processador|ULA1|Add1~13_sumout\;
\Processador|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \Processador|ULA1|Add0~13_sumout\;
\Processador|ULA1|ALT_INV_Add1~9_sumout\ <= NOT \Processador|ULA1|Add1~9_sumout\;
\Processador|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \Processador|ULA1|Add0~9_sumout\;
\Processador|ULA1|ALT_INV_Add1~5_sumout\ <= NOT \Processador|ULA1|Add1~5_sumout\;
\Processador|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \Processador|ULA1|Add0~5_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \Processador|incrementaPC|Add0~33_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \Processador|incrementaPC|Add0~29_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \Processador|incrementaPC|Add0~25_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \Processador|incrementaPC|Add0~21_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \Processador|incrementaPC|Add0~17_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \Processador|incrementaPC|Add0~13_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \Processador|incrementaPC|Add0~9_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \Processador|incrementaPC|Add0~5_sumout\;
\Processador|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \Processador|incrementaPC|Add0~1_sumout\;
\Processador|ULA1|ALT_INV_Add1~1_sumout\ <= NOT \Processador|ULA1|Add1~1_sumout\;
\Processador|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \Processador|ULA1|Add0~1_sumout\;
\Processador|REGA|ALT_INV_DOUT\(2) <= NOT \Processador|REGA|DOUT\(2);
\Processador|REGA|ALT_INV_DOUT\(1) <= NOT \Processador|REGA|DOUT\(1);
\Processador|REGA|ALT_INV_DOUT\(3) <= NOT \Processador|REGA|DOUT\(3);
\Processador|PC|ALT_INV_DOUT\(8) <= NOT \Processador|PC|DOUT\(8);
\Processador|PC|ALT_INV_DOUT\(7) <= NOT \Processador|PC|DOUT\(7);
\Processador|PC|ALT_INV_DOUT\(6) <= NOT \Processador|PC|DOUT\(6);
\Processador|PC|ALT_INV_DOUT\(5) <= NOT \Processador|PC|DOUT\(5);
\Processador|PC|ALT_INV_DOUT\(4) <= NOT \Processador|PC|DOUT\(4);
\Processador|PC|ALT_INV_DOUT\(3) <= NOT \Processador|PC|DOUT\(3);
\Processador|PC|ALT_INV_DOUT\(2) <= NOT \Processador|PC|DOUT\(2);
\Processador|PC|ALT_INV_DOUT\(1) <= NOT \Processador|PC|DOUT\(1);
\Processador|PC|ALT_INV_DOUT\(0) <= NOT \Processador|PC|DOUT\(0);
\Processador|REGA|ALT_INV_DOUT\(0) <= NOT \Processador|REGA|DOUT\(0);

-- Location: IOOBUF_X0_Y20_N56
\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUT(0));

-- Location: IOOBUF_X52_Y0_N36
\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUT(1));

-- Location: IOOBUF_X0_Y18_N45
\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUT(2));

-- Location: IOOBUF_X34_Y45_N19
\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUT(3));

-- Location: IOOBUF_X14_Y45_N19
\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUT(4));

-- Location: IOOBUF_X43_Y0_N19
\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUT(5));

-- Location: IOOBUF_X52_Y45_N53
\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUT(6));

-- Location: IOOBUF_X36_Y45_N53
\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUT(7));

-- Location: IOOBUF_X40_Y0_N42
\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_PC_OUT(8));

-- Location: IOOBUF_X16_Y45_N42
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

-- Location: IOOBUF_X43_Y0_N53
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

-- Location: IOOBUF_X46_Y45_N42
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

-- Location: IOOBUF_X54_Y18_N79
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

-- Location: IOOBUF_X34_Y45_N53
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

-- Location: IOOBUF_X0_Y20_N39
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

-- Location: IOOBUF_X43_Y45_N19
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

-- Location: IOOBUF_X8_Y45_N42
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

-- Location: IOOBUF_X12_Y45_N19
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

-- Location: IOOBUF_X48_Y45_N2
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

-- Location: IOOBUF_X34_Y0_N53
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

-- Location: IOOBUF_X23_Y0_N42
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

-- Location: IOOBUF_X18_Y0_N53
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

-- Location: IOOBUF_X33_Y0_N42
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

-- Location: IOOBUF_X18_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N53
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

-- Location: IOOBUF_X24_Y0_N36
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

-- Location: IOOBUF_X12_Y0_N53
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

-- Location: IOOBUF_X14_Y0_N2
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

-- Location: IOOBUF_X25_Y0_N2
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

-- Location: IOOBUF_X24_Y0_N19
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X19_Y0_N2
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

-- Location: IOOBUF_X25_Y0_N36
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

-- Location: IOOBUF_X16_Y0_N42
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

-- Location: IOOBUF_X24_Y0_N2
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

-- Location: IOOBUF_X18_Y0_N36
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

-- Location: IOOBUF_X29_Y0_N2
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

-- Location: IOOBUF_X33_Y0_N59
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

-- Location: IOOBUF_X29_Y0_N19
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

-- Location: IOOBUF_X24_Y0_N53
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

-- Location: IOOBUF_X22_Y0_N36
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

-- Location: IOOBUF_X16_Y0_N93
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

-- Location: IOOBUF_X12_Y0_N19
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

-- Location: IOOBUF_X23_Y0_N93
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

-- Location: IOOBUF_X22_Y0_N19
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

-- Location: IOOBUF_X22_Y0_N53
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

-- Location: IOOBUF_X22_Y0_N2
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

-- Location: IOOBUF_X16_Y0_N76
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

-- Location: IOOBUF_X19_Y0_N53
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

-- Location: IOOBUF_X23_Y0_N76
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

-- Location: IOOBUF_X12_Y0_N36
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

-- Location: IOOBUF_X16_Y0_N59
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

-- Location: IOOBUF_X34_Y0_N19
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

-- Location: IOOBUF_X14_Y0_N53
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

-- Location: IOOBUF_X23_Y0_N59
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

-- Location: IOOBUF_X14_Y0_N36
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

-- Location: IOOBUF_X14_Y0_N19
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

-- Location: IOOBUF_X18_Y0_N19
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

-- Location: IOOBUF_X12_Y0_N2
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

-- Location: IOOBUF_X25_Y0_N19
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

-- Location: IOOBUF_X25_Y0_N53
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

-- Location: IOIBUF_X19_Y0_N35
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X19_Y0_N18
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LABCELL_X20_Y1_N15
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

-- Location: FF_X20_Y1_N16
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

-- Location: LABCELL_X20_Y4_N57
\gravar:detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saida~combout\ = LCELL(( !\gravar:detectorSub0|saidaQ~q\ & ( !\KEY[0]~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_KEY[0]~input_o\,
	dataf => \gravar:detectorSub0|ALT_INV_saidaQ~q\,
	combout => \gravar:detectorSub0|saida~combout\);

-- Location: LABCELL_X21_Y3_N15
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

-- Location: LABCELL_X21_Y3_N30
\Processador|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~1_sumout\ = SUM(( \Processador|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \Processador|incrementaPC|Add0~2\ = CARRY(( \Processador|PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \Processador|incrementaPC|Add0~1_sumout\,
	cout => \Processador|incrementaPC|Add0~2\);

-- Location: LABCELL_X21_Y3_N0
\Processador|PC|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|PC|DOUT[0]~feeder_combout\ = ( \Processador|incrementaPC|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \Processador|PC|DOUT[0]~feeder_combout\);

-- Location: FF_X20_Y3_N4
\Processador|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|PC|DOUT[7]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X21_Y3_N33
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

-- Location: LABCELL_X21_Y3_N9
\Processador|PC|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|PC|DOUT[1]~feeder_combout\ = ( \Processador|incrementaPC|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \Processador|PC|DOUT[1]~feeder_combout\);

-- Location: FF_X20_Y3_N26
\Processador|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|PC|DOUT[5]~feeder_combout\,
	asdata => \ROM_instrucao|memROM~13_combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(5));

-- Location: FF_X20_Y3_N17
\Processador|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|PC|DOUT[6]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(6));

-- Location: LABCELL_X20_Y3_N6
\ROM_instrucao|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~1_combout\ = ( !\Processador|PC|DOUT\(6) & ( (!\Processador|PC|DOUT\(4) & (!\Processador|PC|DOUT\(5) & !\Processador|PC|DOUT\(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000000000110000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(4),
	datac => \Processador|PC|ALT_INV_DOUT\(5),
	datad => \Processador|PC|ALT_INV_DOUT\(7),
	dataf => \Processador|PC|ALT_INV_DOUT\(6),
	combout => \ROM_instrucao|memROM~1_combout\);

-- Location: FF_X21_Y3_N11
\Processador|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|PC|DOUT[1]~feeder_combout\,
	asdata => \ROM_instrucao|memROM~2_combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X20_Y3_N48
\ROM_instrucao|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~0_combout\ = ( \Processador|PC|DOUT\(3) & ( (\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT[2]~DUPLICATE_q\ & !\Processador|PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\Processador|PC|DOUT\(3) & ( (\Processador|PC|DOUT\(0) & 
-- (\Processador|PC|DOUT[2]~DUPLICATE_q\ & \Processador|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(0),
	datac => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \Processador|PC|ALT_INV_DOUT\(3),
	combout => \ROM_instrucao|memROM~0_combout\);

-- Location: LABCELL_X20_Y3_N21
\ROM_instrucao|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~2_combout\ = ( \ROM_instrucao|memROM~0_combout\ & ( (\ROM_instrucao|memROM~1_combout\ & !\Processador|PC|DOUT[8]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	datad => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	combout => \ROM_instrucao|memROM~2_combout\);

-- Location: FF_X21_Y3_N10
\Processador|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|PC|DOUT[1]~feeder_combout\,
	asdata => \ROM_instrucao|memROM~2_combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(1));

-- Location: LABCELL_X21_Y3_N36
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

-- Location: LABCELL_X21_Y3_N39
\Processador|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~13_sumout\ = SUM(( \Processador|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~10\ ))
-- \Processador|incrementaPC|Add0~14\ = CARRY(( \Processador|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \Processador|incrementaPC|Add0~10\,
	sumout => \Processador|incrementaPC|Add0~13_sumout\,
	cout => \Processador|incrementaPC|Add0~14\);

-- Location: LABCELL_X21_Y3_N42
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

-- Location: LABCELL_X20_Y3_N12
\Processador|PC|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|PC|DOUT[4]~feeder_combout\ = \Processador|incrementaPC|Add0~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \Processador|PC|DOUT[4]~feeder_combout\);

-- Location: FF_X20_Y3_N14
\Processador|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|PC|DOUT[4]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(4));

-- Location: LABCELL_X21_Y3_N45
\Processador|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~21_sumout\ = SUM(( \Processador|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~18\ ))
-- \Processador|incrementaPC|Add0~22\ = CARRY(( \Processador|PC|DOUT[5]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	cin => \Processador|incrementaPC|Add0~18\,
	sumout => \Processador|incrementaPC|Add0~21_sumout\,
	cout => \Processador|incrementaPC|Add0~22\);

-- Location: LABCELL_X20_Y3_N24
\Processador|PC|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|PC|DOUT[5]~feeder_combout\ = ( \Processador|incrementaPC|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \Processador|PC|DOUT[5]~feeder_combout\);

-- Location: FF_X20_Y3_N25
\Processador|PC|DOUT[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|PC|DOUT[5]~feeder_combout\,
	asdata => \ROM_instrucao|memROM~13_combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[5]~DUPLICATE_q\);

-- Location: LABCELL_X21_Y3_N48
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

-- Location: LABCELL_X20_Y3_N15
\Processador|PC|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|PC|DOUT[6]~feeder_combout\ = ( \Processador|incrementaPC|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \Processador|PC|DOUT[6]~feeder_combout\);

-- Location: FF_X20_Y3_N16
\Processador|PC|DOUT[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|PC|DOUT[6]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[6]~DUPLICATE_q\);

-- Location: LABCELL_X21_Y3_N51
\Processador|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~29_sumout\ = SUM(( \Processador|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~26\ ))
-- \Processador|incrementaPC|Add0~30\ = CARRY(( \Processador|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \Processador|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \Processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \Processador|incrementaPC|Add0~26\,
	sumout => \Processador|incrementaPC|Add0~29_sumout\,
	cout => \Processador|incrementaPC|Add0~30\);

-- Location: LABCELL_X20_Y3_N3
\Processador|PC|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|PC|DOUT[7]~feeder_combout\ = ( \Processador|incrementaPC|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \Processador|PC|DOUT[7]~feeder_combout\);

-- Location: FF_X20_Y3_N5
\Processador|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|PC|DOUT[7]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(7));

-- Location: LABCELL_X20_Y3_N18
\ROM_instrucao|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~7_combout\ = ( !\Processador|PC|DOUT\(4) & ( (!\Processador|PC|DOUT\(7) & (!\Processador|PC|DOUT\(6) & (!\Processador|PC|DOUT\(5) & !\Processador|PC|DOUT[8]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(7),
	datab => \Processador|PC|ALT_INV_DOUT\(6),
	datac => \Processador|PC|ALT_INV_DOUT\(5),
	datad => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	dataf => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \ROM_instrucao|memROM~7_combout\);

-- Location: LABCELL_X20_Y3_N39
\ROM_instrucao|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~6_combout\ = ( \Processador|PC|DOUT\(0) & ( (!\Processador|PC|DOUT[3]~DUPLICATE_q\ & ((\Processador|PC|DOUT[2]~DUPLICATE_q\) # (\Processador|PC|DOUT[1]~DUPLICATE_q\))) # (\Processador|PC|DOUT[3]~DUPLICATE_q\ & 
-- ((!\Processador|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111111100000101111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \Processador|PC|ALT_INV_DOUT\(0),
	combout => \ROM_instrucao|memROM~6_combout\);

-- Location: LABCELL_X20_Y3_N57
\ROM_instrucao|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~13_combout\ = ( \ROM_instrucao|memROM~6_combout\ & ( \ROM_instrucao|memROM~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	combout => \ROM_instrucao|memROM~13_combout\);

-- Location: FF_X20_Y3_N1
\Processador|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|PC|DOUT[8]~feeder_combout\,
	asdata => \ROM_instrucao|memROM~13_combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(8));

-- Location: LABCELL_X21_Y3_N54
\Processador|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|incrementaPC|Add0~33_sumout\ = SUM(( \Processador|PC|DOUT\(8) ) + ( GND ) + ( \Processador|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	cin => \Processador|incrementaPC|Add0~30\,
	sumout => \Processador|incrementaPC|Add0~33_sumout\);

-- Location: LABCELL_X20_Y3_N0
\Processador|PC|DOUT[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|PC|DOUT[8]~feeder_combout\ = \Processador|incrementaPC|Add0~33_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \Processador|PC|DOUT[8]~feeder_combout\);

-- Location: FF_X20_Y3_N2
\Processador|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|PC|DOUT[8]~feeder_combout\,
	asdata => \ROM_instrucao|memROM~13_combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X21_Y3_N27
\ROM_instrucao|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~9_combout\ = ( \Processador|PC|DOUT[3]~DUPLICATE_q\ & ( (!\Processador|PC|DOUT[2]~DUPLICATE_q\ & (!\Processador|PC|DOUT[1]~DUPLICATE_q\ & \Processador|PC|DOUT\(0))) ) ) # ( !\Processador|PC|DOUT[3]~DUPLICATE_q\ & ( 
-- (!\Processador|PC|DOUT[1]~DUPLICATE_q\ & (!\Processador|PC|DOUT[2]~DUPLICATE_q\ $ (\Processador|PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	dataf => \Processador|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~9_combout\);

-- Location: LABCELL_X20_Y3_N9
\ROM_instrucao|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~10_combout\ = ( \ROM_instrucao|memROM~9_combout\ & ( (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & \ROM_instrucao|memROM~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \ROM_instrucao|memROM~10_combout\);

-- Location: FF_X21_Y3_N2
\Processador|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|PC|DOUT[0]~feeder_combout\,
	asdata => \ROM_instrucao|memROM~10_combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(0));

-- Location: MLABCELL_X18_Y3_N24
\ROM_instrucao|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~8_combout\ = ( \Processador|PC|DOUT\(1) & ( (\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(2)) # (!\Processador|PC|DOUT\(3)))) ) ) # ( !\Processador|PC|DOUT\(1) & ( (!\Processador|PC|DOUT\(2) & ((!\Processador|PC|DOUT\(3)) # 
-- (\Processador|PC|DOUT\(0)))) # (\Processador|PC|DOUT\(2) & (!\Processador|PC|DOUT\(3) & \Processador|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011111100110000001111110000000000111111000000000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|PC|ALT_INV_DOUT\(3),
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	dataf => \Processador|PC|ALT_INV_DOUT\(1),
	combout => \ROM_instrucao|memROM~8_combout\);

-- Location: LABCELL_X21_Y3_N6
\ROM_instrucao|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~4_combout\ = ( !\Processador|PC|DOUT[6]~DUPLICATE_q\ & ( (!\Processador|PC|DOUT\(8) & (!\Processador|PC|DOUT[7]~DUPLICATE_q\ & \Processador|PC|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(8),
	datac => \Processador|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	dataf => \Processador|PC|ALT_INV_DOUT[6]~DUPLICATE_q\,
	combout => \ROM_instrucao|memROM~4_combout\);

-- Location: MLABCELL_X18_Y3_N9
\ROM_instrucao|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~3_combout\ = ( !\Processador|PC|DOUT\(4) & ( (!\Processador|PC|DOUT[5]~DUPLICATE_q\ & ((!\Processador|PC|DOUT\(2)) # (!\Processador|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110000000000111111000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|PC|ALT_INV_DOUT\(3),
	datad => \Processador|PC|ALT_INV_DOUT[5]~DUPLICATE_q\,
	dataf => \Processador|PC|ALT_INV_DOUT\(4),
	combout => \ROM_instrucao|memROM~3_combout\);

-- Location: MLABCELL_X18_Y3_N54
\ROM_instrucao|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~5_combout\ = ( \ROM_instrucao|memROM~3_combout\ & ( \ROM_instrucao|memROM~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	combout => \ROM_instrucao|memROM~5_combout\);

-- Location: MLABCELL_X18_Y3_N15
\Processador|decoder|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~1_combout\ = ( \ROM_instrucao|memROM~7_combout\ & ( (\ROM_instrucao|memROM~12_combout\ & (\ROM_instrucao|memROM~8_combout\ & !\ROM_instrucao|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	combout => \Processador|decoder|Equal10~1_combout\);

-- Location: FF_X20_Y3_N52
\Processador|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|PC|DOUT[3]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X20_Y3_N51
\Processador|PC|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|PC|DOUT[3]~feeder_combout\ = ( \Processador|incrementaPC|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \Processador|PC|DOUT[3]~feeder_combout\);

-- Location: FF_X20_Y3_N53
\Processador|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|PC|DOUT[3]~feeder_combout\,
	asdata => \~GND~combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(3));

-- Location: LABCELL_X20_Y3_N54
\ROM_instrucao|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~11_combout\ = ( \ROM_instrucao|memROM~7_combout\ & ( (\Processador|PC|DOUT\(3) & (\Processador|PC|DOUT[1]~DUPLICATE_q\ & (\Processador|PC|DOUT\(0) & !\Processador|PC|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT\(3),
	datab => \Processador|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \Processador|PC|ALT_INV_DOUT\(0),
	datad => \Processador|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	combout => \ROM_instrucao|memROM~11_combout\);

-- Location: FF_X21_Y3_N23
\Processador|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|PC|DOUT[2]~feeder_combout\,
	asdata => \ROM_instrucao|memROM~11_combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X21_Y3_N21
\Processador|PC|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|PC|DOUT[2]~feeder_combout\ = \Processador|incrementaPC|Add0~9_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \Processador|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \Processador|PC|DOUT[2]~feeder_combout\);

-- Location: FF_X21_Y3_N22
\Processador|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|PC|DOUT[2]~feeder_combout\,
	asdata => \ROM_instrucao|memROM~11_combout\,
	sload => \Processador|decoder|Equal10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|PC|DOUT\(2));

-- Location: MLABCELL_X18_Y3_N18
\ROM_instrucao|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~12_combout\ = ( \Processador|PC|DOUT\(1) & ( (!\Processador|PC|DOUT\(0) & ((!\Processador|PC|DOUT\(2)) # (!\Processador|PC|DOUT\(3)))) ) ) # ( !\Processador|PC|DOUT\(1) & ( (!\Processador|PC|DOUT\(0) & (!\Processador|PC|DOUT\(2) $ 
-- (!\Processador|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000011111100000000001111110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|PC|ALT_INV_DOUT\(2),
	datac => \Processador|PC|ALT_INV_DOUT\(3),
	datad => \Processador|PC|ALT_INV_DOUT\(0),
	dataf => \Processador|PC|ALT_INV_DOUT\(1),
	combout => \ROM_instrucao|memROM~12_combout\);

-- Location: MLABCELL_X18_Y3_N3
\Processador|decoder|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida~0_combout\ = ( \ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~12_combout\ & (!\ROM_instrucao|memROM~3_combout\ & (\ROM_instrucao|memROM~8_combout\ & \ROM_instrucao|memROM~7_combout\))) ) ) # ( 
-- !\ROM_instrucao|memROM~4_combout\ & ( (!\ROM_instrucao|memROM~12_combout\ & (\ROM_instrucao|memROM~8_combout\ & \ROM_instrucao|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~3_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~4_combout\,
	combout => \Processador|decoder|saida~0_combout\);

-- Location: LABCELL_X21_Y3_N24
\ROM_instrucao|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~14_combout\ = ( \ROM_instrucao|memROM~9_combout\ & ( \ROM_instrucao|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~9_combout\,
	combout => \ROM_instrucao|memROM~14_combout\);

-- Location: LABCELL_X19_Y4_N12
\ROM_instrucao|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~15_combout\ = ( \ROM_instrucao|memROM~8_combout\ & ( \ROM_instrucao|memROM~7_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	combout => \ROM_instrucao|memROM~15_combout\);

-- Location: LABCELL_X19_Y2_N54
\MemoriaRAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~549_combout\ = ( \ROM_instrucao|memROM~15_combout\ & ( \ROM_instrucao|memROM~5_combout\ & ( (!\ROM_instrucao|memROM~10_combout\ & (\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~11_combout\ & 
-- \ROM_instrucao|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \MemoriaRAM|ram~549_combout\);

-- Location: FF_X19_Y2_N13
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
	ena => \MemoriaRAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~287_q\);

-- Location: LABCELL_X19_Y3_N30
\Processador|ULA1|Add1~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~18_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \Processador|ULA1|Add1~18_cout\);

-- Location: LABCELL_X19_Y3_N33
\Processador|ULA1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~1_sumout\ = SUM(( (!\Processador|decoder|saida~0_combout\ & (((!\MemoriaRAM|ram~531_combout\)))) # (\Processador|decoder|saida~0_combout\ & ((!\ROM_instrucao|memROM~14_combout\) # ((\Processador|PC|DOUT[8]~DUPLICATE_q\)))) ) + ( 
-- \Processador|REGA|DOUT[0]~DUPLICATE_q\ ) + ( \Processador|ULA1|Add1~18_cout\ ))
-- \Processador|ULA1|Add1~2\ = CARRY(( (!\Processador|decoder|saida~0_combout\ & (((!\MemoriaRAM|ram~531_combout\)))) # (\Processador|decoder|saida~0_combout\ & ((!\ROM_instrucao|memROM~14_combout\) # ((\Processador|PC|DOUT[8]~DUPLICATE_q\)))) ) + ( 
-- \Processador|REGA|DOUT[0]~DUPLICATE_q\ ) + ( \Processador|ULA1|Add1~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111101100001011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datab => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \Processador|decoder|ALT_INV_saida~0_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~531_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => \Processador|ULA1|Add1~18_cout\,
	sumout => \Processador|ULA1|Add1~1_sumout\,
	cout => \Processador|ULA1|Add1~2\);

-- Location: MLABCELL_X18_Y3_N6
\Processador|decoder|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida~1_combout\ = ( \ROM_instrucao|memROM~8_combout\ & ( (!\ROM_instrucao|memROM~7_combout\ & ((\ROM_instrucao|memROM~5_combout\))) # (\ROM_instrucao|memROM~7_combout\ & (!\ROM_instrucao|memROM~12_combout\ & 
-- !\ROM_instrucao|memROM~5_combout\)) ) ) # ( !\ROM_instrucao|memROM~8_combout\ & ( (\ROM_instrucao|memROM~5_combout\ & ((!\ROM_instrucao|memROM~7_combout\) # (!\ROM_instrucao|memROM~12_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111010000000001111101001010000101010100101000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	combout => \Processador|decoder|saida~1_combout\);

-- Location: MLABCELL_X18_Y3_N57
\Processador|ULA1|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[0]~0_combout\ = ( \Processador|decoder|saida~1_combout\ & ( (!\Processador|decoder|saida~0_combout\ & ((\MemoriaRAM|ram~531_combout\))) # (\Processador|decoder|saida~0_combout\ & (\ROM_instrucao|memROM~10_combout\)) ) ) # ( 
-- !\Processador|decoder|saida~1_combout\ & ( \Processador|ULA1|Add1~1_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|ULA1|ALT_INV_Add1~1_sumout\,
	datab => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~531_combout\,
	datad => \Processador|decoder|ALT_INV_saida~0_combout\,
	dataf => \Processador|decoder|ALT_INV_saida~1_combout\,
	combout => \Processador|ULA1|saida[0]~0_combout\);

-- Location: MLABCELL_X18_Y3_N27
\Processador|decoder|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|Equal10~0_combout\ = ( \ROM_instrucao|memROM~8_combout\ ) # ( !\ROM_instrucao|memROM~8_combout\ & ( (!\ROM_instrucao|memROM~12_combout\) # ((!\ROM_instrucao|memROM~7_combout\) # (\ROM_instrucao|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111111111110101111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	combout => \Processador|decoder|Equal10~0_combout\);

-- Location: MLABCELL_X18_Y3_N48
\Processador|decoder|saida~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|decoder|saida~2_combout\ = ( \ROM_instrucao|memROM~12_combout\ & ( (!\ROM_instrucao|memROM~7_combout\ & (\ROM_instrucao|memROM~5_combout\)) # (\ROM_instrucao|memROM~7_combout\ & ((!\ROM_instrucao|memROM~8_combout\))) ) ) # ( 
-- !\ROM_instrucao|memROM~12_combout\ & ( !\ROM_instrucao|memROM~5_combout\ $ (((!\ROM_instrucao|memROM~8_combout\) # (!\ROM_instrucao|memROM~7_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101011010010101010101101001010101111100000101010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~12_combout\,
	combout => \Processador|decoder|saida~2_combout\);

-- Location: FF_X18_Y3_N1
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
	sload => \Processador|decoder|Equal10~0_combout\,
	ena => \Processador|decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y4_N42
\MemoriaRAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~550_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~5_combout\ & ( (\ROM_instrucao|memROM~13_combout\ & (\ROM_instrucao|memROM~15_combout\ & (\ROM_instrucao|memROM~10_combout\ & !\ROM_instrucao|memROM~11_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \MemoriaRAM|ram~550_combout\);

-- Location: FF_X19_Y4_N43
\MemoriaRAM|ram~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~295_q\);

-- Location: LABCELL_X19_Y4_N24
\MemoriaRAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~551_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~5_combout\ & ( (\ROM_instrucao|memROM~13_combout\ & (\ROM_instrucao|memROM~15_combout\ & (!\ROM_instrucao|memROM~10_combout\ & \ROM_instrucao|memROM~11_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \MemoriaRAM|ram~551_combout\);

-- Location: FF_X19_Y4_N10
\MemoriaRAM|ram~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~319_q\);

-- Location: LABCELL_X19_Y2_N42
\MemoriaRAM|ram~552\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~552_combout\ = ( \ROM_instrucao|memROM~15_combout\ & ( \ROM_instrucao|memROM~5_combout\ & ( (\ROM_instrucao|memROM~11_combout\ & (\ROM_instrucao|memROM~2_combout\ & (\ROM_instrucao|memROM~10_combout\ & \ROM_instrucao|memROM~13_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \MemoriaRAM|ram~552_combout\);

-- Location: FF_X20_Y3_N44
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
	ena => \MemoriaRAM|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~327_q\);

-- Location: LABCELL_X20_Y3_N42
\MemoriaRAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~530_combout\ = ( \MemoriaRAM|ram~327_q\ & ( \ROM_instrucao|memROM~10_combout\ & ( (\MemoriaRAM|ram~295_q\) # (\ROM_instrucao|memROM~11_combout\) ) ) ) # ( !\MemoriaRAM|ram~327_q\ & ( \ROM_instrucao|memROM~10_combout\ & ( 
-- (!\ROM_instrucao|memROM~11_combout\ & \MemoriaRAM|ram~295_q\) ) ) ) # ( \MemoriaRAM|ram~327_q\ & ( !\ROM_instrucao|memROM~10_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~287_q\)) # (\ROM_instrucao|memROM~11_combout\ & 
-- ((\MemoriaRAM|ram~319_q\))) ) ) ) # ( !\MemoriaRAM|ram~327_q\ & ( !\ROM_instrucao|memROM~10_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~287_q\)) # (\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~319_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001001110111001000100111011100001010000010100101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~287_q\,
	datac => \MemoriaRAM|ALT_INV_ram~295_q\,
	datad => \MemoriaRAM|ALT_INV_ram~319_q\,
	datae => \MemoriaRAM|ALT_INV_ram~327_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	combout => \MemoriaRAM|ram~530_combout\);

-- Location: LABCELL_X19_Y4_N36
\MemoriaRAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~548_combout\ = ( !\ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~5_combout\ & ( (\ROM_instrucao|memROM~13_combout\ & (\ROM_instrucao|memROM~15_combout\ & (\ROM_instrucao|memROM~10_combout\ & \ROM_instrucao|memROM~11_combout\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \MemoriaRAM|ram~548_combout\);

-- Location: FF_X20_Y3_N31
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
	ena => \MemoriaRAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~311_q\);

-- Location: LABCELL_X19_Y2_N15
\MemoriaRAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~546_combout\ = ( \ROM_instrucao|memROM~15_combout\ & ( \ROM_instrucao|memROM~5_combout\ & ( (\ROM_instrucao|memROM~10_combout\ & (!\ROM_instrucao|memROM~2_combout\ & (\ROM_instrucao|memROM~13_combout\ & 
-- !\ROM_instrucao|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \MemoriaRAM|ram~546_combout\);

-- Location: FF_X19_Y2_N52
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
	ena => \MemoriaRAM|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~279_q\);

-- Location: LABCELL_X19_Y2_N36
\MemoriaRAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~545_combout\ = ( !\ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~5_combout\ & ( (!\ROM_instrucao|memROM~10_combout\ & (!\ROM_instrucao|memROM~2_combout\ & (\ROM_instrucao|memROM~15_combout\ & 
-- \ROM_instrucao|memROM~13_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \MemoriaRAM|ram~545_combout\);

-- Location: FF_X19_Y2_N19
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
	ena => \MemoriaRAM|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~271_q\);

-- Location: LABCELL_X20_Y2_N15
\MemoriaRAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~547_combout\ = ( \ROM_instrucao|memROM~15_combout\ & ( \ROM_instrucao|memROM~5_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~10_combout\ & (\ROM_instrucao|memROM~13_combout\ & 
-- \ROM_instrucao|memROM~11_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~15_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	combout => \MemoriaRAM|ram~547_combout\);

-- Location: FF_X20_Y2_N56
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
	ena => \MemoriaRAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~303_q\);

-- Location: LABCELL_X20_Y3_N33
\MemoriaRAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~529_combout\ = ( \ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~10_combout\ & ( \MemoriaRAM|ram~311_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( \ROM_instrucao|memROM~10_combout\ & ( \MemoriaRAM|ram~279_q\ ) ) ) # ( 
-- \ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~10_combout\ & ( \MemoriaRAM|ram~303_q\ ) ) ) # ( !\ROM_instrucao|memROM~11_combout\ & ( !\ROM_instrucao|memROM~10_combout\ & ( \MemoriaRAM|ram~271_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~311_q\,
	datab => \MemoriaRAM|ALT_INV_ram~279_q\,
	datac => \MemoriaRAM|ALT_INV_ram~271_q\,
	datad => \MemoriaRAM|ALT_INV_ram~303_q\,
	datae => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	combout => \MemoriaRAM|ram~529_combout\);

-- Location: LABCELL_X19_Y3_N24
\MemoriaRAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~531_combout\ = ( \MemoriaRAM|ram~529_combout\ & ( (\ROM_instrucao|memROM~13_combout\ & ((!\ROM_instrucao|memROM~2_combout\) # (\MemoriaRAM|ram~530_combout\))) ) ) # ( !\MemoriaRAM|ram~529_combout\ & ( (\ROM_instrucao|memROM~2_combout\ & 
-- (\ROM_instrucao|memROM~13_combout\ & \MemoriaRAM|ram~530_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001010000011110000101000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~530_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~529_combout\,
	combout => \MemoriaRAM|ram~531_combout\);

-- Location: MLABCELL_X18_Y3_N30
\Processador|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~1_sumout\ = SUM(( (!\Processador|decoder|saida~0_combout\ & (((\MemoriaRAM|ram~531_combout\)))) # (\Processador|decoder|saida~0_combout\ & (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & (\ROM_instrucao|memROM~14_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(0) ) + ( !VCC ))
-- \Processador|ULA1|Add0~2\ = CARRY(( (!\Processador|decoder|saida~0_combout\ & (((\MemoriaRAM|ram~531_combout\)))) # (\Processador|decoder|saida~0_combout\ & (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & (\ROM_instrucao|memROM~14_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~0_combout\,
	datab => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~14_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~531_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \Processador|ULA1|Add0~1_sumout\,
	cout => \Processador|ULA1|Add0~2\);

-- Location: MLABCELL_X18_Y3_N0
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

-- Location: FF_X18_Y3_N2
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
	sload => \Processador|decoder|Equal10~0_combout\,
	ena => \Processador|decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(0));

-- Location: LABCELL_X20_Y4_N18
\AndHEX2|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX2|saida~0_combout\ = ( \ROM_instrucao|memROM~8_combout\ & ( (\ROM_instrucao|memROM~6_combout\ & \ROM_instrucao|memROM~7_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM_instrucao|ALT_INV_memROM~6_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~7_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~8_combout\,
	combout => \AndHEX2|saida~0_combout\);

-- Location: LABCELL_X20_Y4_N0
\DecoderSelEnd|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderSelEnd|Equal0~0_combout\ = ( \ROM_instrucao|memROM~5_combout\ & ( \AndHEX2|saida~0_combout\ & ( (!\ROM_instrucao|memROM~10_combout\ & (!\ROM_instrucao|memROM~2_combout\ & !\ROM_instrucao|memROM~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \AndHEX2|ALT_INV_saida~0_combout\,
	combout => \DecoderSelEnd|Equal0~0_combout\);

-- Location: FF_X20_Y4_N13
\RegistradorHEX0|DOUT[0]~DUPLICATE\ : dffeas
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
	q => \RegistradorHEX0|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X21_Y3_N3
\ROM_instrucao|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM_instrucao|memROM~16_combout\ = ( \ROM_instrucao|memROM~0_combout\ & ( \ROM_instrucao|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM_instrucao|ALT_INV_memROM~1_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~0_combout\,
	combout => \ROM_instrucao|memROM~16_combout\);

-- Location: FF_X20_Y2_N5
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
	ena => \MemoriaRAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~304_q\);

-- Location: FF_X19_Y4_N8
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
	ena => \MemoriaRAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~320_q\);

-- Location: LABCELL_X20_Y3_N27
\MemoriaRAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~538_combout\ = ( \ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & (\MemoriaRAM|ram~304_q\)) # (\ROM_instrucao|memROM~2_combout\ & ((\MemoriaRAM|ram~320_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101001100110101010100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~304_q\,
	datab => \MemoriaRAM|ALT_INV_ram~320_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~538_combout\);

-- Location: FF_X20_Y3_N11
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
	ena => \MemoriaRAM|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~328_q\);

-- Location: FF_X19_Y4_N49
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
	ena => \MemoriaRAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~312_q\);

-- Location: LABCELL_X20_Y3_N36
\MemoriaRAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~540_combout\ = ( \ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & ((\MemoriaRAM|ram~312_q\))) # (\ROM_instrucao|memROM~2_combout\ & (\MemoriaRAM|ram~328_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~328_q\,
	datac => \MemoriaRAM|ALT_INV_ram~312_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~540_combout\);

-- Location: FF_X19_Y3_N46
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
	ena => \MemoriaRAM|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~280_q\);

-- Location: FF_X19_Y4_N47
\MemoriaRAM|ram~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~296_q\);

-- Location: MLABCELL_X18_Y3_N12
\MemoriaRAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~539_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( (\MemoriaRAM|ram~296_q\ & \ROM_instrucao|memROM~13_combout\) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( (\MemoriaRAM|ram~280_q\ & \ROM_instrucao|memROM~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~280_q\,
	datac => \MemoriaRAM|ALT_INV_ram~296_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~539_combout\);

-- Location: FF_X18_Y3_N47
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
	ena => \MemoriaRAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~288_q\);

-- Location: FF_X19_Y2_N35
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
	ena => \MemoriaRAM|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~272_q\);

-- Location: MLABCELL_X18_Y3_N51
\MemoriaRAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~537_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( (\MemoriaRAM|ram~288_q\ & \ROM_instrucao|memROM~13_combout\) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( (\MemoriaRAM|ram~272_q\ & \ROM_instrucao|memROM~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~288_q\,
	datac => \MemoriaRAM|ALT_INV_ram~272_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~537_combout\);

-- Location: LABCELL_X19_Y3_N12
\MemoriaRAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~541_combout\ = ( \MemoriaRAM|ram~539_combout\ & ( \MemoriaRAM|ram~537_combout\ & ( (!\ROM_instrucao|memROM~11_combout\) # ((!\ROM_instrucao|memROM~10_combout\ & (\MemoriaRAM|ram~538_combout\)) # (\ROM_instrucao|memROM~10_combout\ & 
-- ((\MemoriaRAM|ram~540_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~539_combout\ & ( \MemoriaRAM|ram~537_combout\ & ( (!\ROM_instrucao|memROM~10_combout\ & ((!\ROM_instrucao|memROM~11_combout\) # ((\MemoriaRAM|ram~538_combout\)))) # 
-- (\ROM_instrucao|memROM~10_combout\ & (\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~540_combout\)))) ) ) ) # ( \MemoriaRAM|ram~539_combout\ & ( !\MemoriaRAM|ram~537_combout\ & ( (!\ROM_instrucao|memROM~10_combout\ & 
-- (\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~538_combout\))) # (\ROM_instrucao|memROM~10_combout\ & ((!\ROM_instrucao|memROM~11_combout\) # ((\MemoriaRAM|ram~540_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~539_combout\ & ( 
-- !\MemoriaRAM|ram~537_combout\ & ( (\ROM_instrucao|memROM~11_combout\ & ((!\ROM_instrucao|memROM~10_combout\ & (\MemoriaRAM|ram~538_combout\)) # (\ROM_instrucao|memROM~10_combout\ & ((\MemoriaRAM|ram~540_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011010001100101011110001010100110111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~538_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~540_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~539_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~537_combout\,
	combout => \MemoriaRAM|ram~541_combout\);

-- Location: MLABCELL_X18_Y3_N33
\Processador|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~9_sumout\ = SUM(( (!\Processador|decoder|saida~0_combout\ & (((\MemoriaRAM|ram~541_combout\)))) # (\Processador|decoder|saida~0_combout\ & (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & (\ROM_instrucao|memROM~16_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add0~2\ ))
-- \Processador|ULA1|Add0~10\ = CARRY(( (!\Processador|decoder|saida~0_combout\ & (((\MemoriaRAM|ram~541_combout\)))) # (\Processador|decoder|saida~0_combout\ & (!\Processador|PC|DOUT[8]~DUPLICATE_q\ & (\ROM_instrucao|memROM~16_combout\))) ) + ( 
-- \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~0_combout\,
	datab => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~541_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(1),
	cin => \Processador|ULA1|Add0~2\,
	sumout => \Processador|ULA1|Add0~9_sumout\,
	cout => \Processador|ULA1|Add0~10\);

-- Location: LABCELL_X19_Y3_N57
\Processador|REGA|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|REGA|DOUT[1]~feeder_combout\ = ( \Processador|ULA1|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA1|ALT_INV_Add0~9_sumout\,
	combout => \Processador|REGA|DOUT[1]~feeder_combout\);

-- Location: LABCELL_X19_Y3_N36
\Processador|ULA1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~9_sumout\ = SUM(( (!\Processador|decoder|saida~0_combout\ & (((!\MemoriaRAM|ram~541_combout\)))) # (\Processador|decoder|saida~0_combout\ & (((!\ROM_instrucao|memROM~16_combout\)) # (\Processador|PC|DOUT[8]~DUPLICATE_q\))) ) + ( 
-- \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add1~2\ ))
-- \Processador|ULA1|Add1~10\ = CARRY(( (!\Processador|decoder|saida~0_combout\ & (((!\MemoriaRAM|ram~541_combout\)))) # (\Processador|decoder|saida~0_combout\ & (((!\ROM_instrucao|memROM~16_combout\)) # (\Processador|PC|DOUT[8]~DUPLICATE_q\))) ) + ( 
-- \Processador|REGA|DOUT\(1) ) + ( \Processador|ULA1|Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	datab => \Processador|decoder|ALT_INV_saida~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~16_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~541_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(1),
	cin => \Processador|ULA1|Add1~2\,
	sumout => \Processador|ULA1|Add1~9_sumout\,
	cout => \Processador|ULA1|Add1~10\);

-- Location: LABCELL_X19_Y3_N6
\Processador|ULA1|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[1]~2_combout\ = ( \Processador|decoder|saida~0_combout\ & ( (!\Processador|decoder|saida~1_combout\ & ((\Processador|ULA1|Add1~9_sumout\))) # (\Processador|decoder|saida~1_combout\ & (\ROM_instrucao|memROM~2_combout\)) ) ) # ( 
-- !\Processador|decoder|saida~0_combout\ & ( (!\Processador|decoder|saida~1_combout\ & ((\Processador|ULA1|Add1~9_sumout\))) # (\Processador|decoder|saida~1_combout\ & (\MemoriaRAM|ram~541_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001100000101111101010000010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \MemoriaRAM|ALT_INV_ram~541_combout\,
	datac => \Processador|decoder|ALT_INV_saida~1_combout\,
	datad => \Processador|ULA1|ALT_INV_Add1~9_sumout\,
	dataf => \Processador|decoder|ALT_INV_saida~0_combout\,
	combout => \Processador|ULA1|saida[1]~2_combout\);

-- Location: FF_X19_Y3_N58
\Processador|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|REGA|DOUT[1]~feeder_combout\,
	asdata => \Processador|ULA1|saida[1]~2_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	ena => \Processador|decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(1));

-- Location: FF_X20_Y4_N4
\RegistradorHEX0|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX0|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X19_Y2_N40
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
	ena => \MemoriaRAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~289_q\);

-- Location: FF_X19_Y4_N32
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
	ena => \MemoriaRAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~321_q\);

-- Location: FF_X19_Y4_N56
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
	ena => \MemoriaRAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~297_q\);

-- Location: FF_X20_Y3_N47
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
	ena => \MemoriaRAM|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~329_q\);

-- Location: LABCELL_X19_Y3_N48
\MemoriaRAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~543_combout\ = ( \ROM_instrucao|memROM~10_combout\ & ( \MemoriaRAM|ram~329_q\ & ( (\ROM_instrucao|memROM~11_combout\) # (\MemoriaRAM|ram~297_q\) ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( \MemoriaRAM|ram~329_q\ & ( 
-- (!\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~289_q\)) # (\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~321_q\))) ) ) ) # ( \ROM_instrucao|memROM~10_combout\ & ( !\MemoriaRAM|ram~329_q\ & ( (\MemoriaRAM|ram~297_q\ & 
-- !\ROM_instrucao|memROM~11_combout\) ) ) ) # ( !\ROM_instrucao|memROM~10_combout\ & ( !\MemoriaRAM|ram~329_q\ & ( (!\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~289_q\)) # (\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~321_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011000011110000000001010101001100110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~289_q\,
	datab => \MemoriaRAM|ALT_INV_ram~321_q\,
	datac => \MemoriaRAM|ALT_INV_ram~297_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~329_q\,
	combout => \MemoriaRAM|ram~543_combout\);

-- Location: FF_X20_Y2_N31
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
	ena => \MemoriaRAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~305_q\);

-- Location: FF_X19_Y2_N7
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
	ena => \MemoriaRAM|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~281_q\);

-- Location: FF_X19_Y2_N2
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
	ena => \MemoriaRAM|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~273_q\);

-- Location: FF_X19_Y4_N2
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
	ena => \MemoriaRAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~313_q\);

-- Location: LABCELL_X19_Y4_N0
\MemoriaRAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~542_combout\ = ( \MemoriaRAM|ram~313_q\ & ( \ROM_instrucao|memROM~10_combout\ & ( (\ROM_instrucao|memROM~11_combout\) # (\MemoriaRAM|ram~281_q\) ) ) ) # ( !\MemoriaRAM|ram~313_q\ & ( \ROM_instrucao|memROM~10_combout\ & ( 
-- (\MemoriaRAM|ram~281_q\ & !\ROM_instrucao|memROM~11_combout\) ) ) ) # ( \MemoriaRAM|ram~313_q\ & ( !\ROM_instrucao|memROM~10_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~273_q\))) # (\ROM_instrucao|memROM~11_combout\ & 
-- (\MemoriaRAM|ram~305_q\)) ) ) ) # ( !\MemoriaRAM|ram~313_q\ & ( !\ROM_instrucao|memROM~10_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~273_q\))) # (\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~305_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111110101000001011111010100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~305_q\,
	datab => \MemoriaRAM|ALT_INV_ram~281_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~273_q\,
	datae => \MemoriaRAM|ALT_INV_ram~313_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	combout => \MemoriaRAM|ram~542_combout\);

-- Location: LABCELL_X19_Y3_N54
\MemoriaRAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~544_combout\ = ( \MemoriaRAM|ram~542_combout\ & ( (\ROM_instrucao|memROM~13_combout\ & ((!\ROM_instrucao|memROM~2_combout\) # (\MemoriaRAM|ram~543_combout\))) ) ) # ( !\MemoriaRAM|ram~542_combout\ & ( (\MemoriaRAM|ram~543_combout\ & 
-- (\ROM_instrucao|memROM~13_combout\ & \ROM_instrucao|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010100001111000001010000111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~543_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~542_combout\,
	combout => \MemoriaRAM|ram~544_combout\);

-- Location: MLABCELL_X18_Y3_N36
\Processador|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~13_sumout\ = SUM(( (!\Processador|decoder|saida~0_combout\ & ((\MemoriaRAM|ram~544_combout\))) # (\Processador|decoder|saida~0_combout\ & (\ROM_instrucao|memROM~11_combout\)) ) + ( \Processador|REGA|DOUT\(2) ) + ( 
-- \Processador|ULA1|Add0~10\ ))
-- \Processador|ULA1|Add0~14\ = CARRY(( (!\Processador|decoder|saida~0_combout\ & ((\MemoriaRAM|ram~544_combout\))) # (\Processador|decoder|saida~0_combout\ & (\ROM_instrucao|memROM~11_combout\)) ) + ( \Processador|REGA|DOUT\(2) ) + ( 
-- \Processador|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~544_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	cin => \Processador|ULA1|Add0~10\,
	sumout => \Processador|ULA1|Add0~13_sumout\,
	cout => \Processador|ULA1|Add0~14\);

-- Location: LABCELL_X19_Y3_N3
\Processador|REGA|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|REGA|DOUT[2]~feeder_combout\ = ( \Processador|ULA1|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA1|ALT_INV_Add0~13_sumout\,
	combout => \Processador|REGA|DOUT[2]~feeder_combout\);

-- Location: LABCELL_X19_Y3_N39
\Processador|ULA1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~13_sumout\ = SUM(( (!\Processador|decoder|saida~0_combout\ & ((!\MemoriaRAM|ram~544_combout\))) # (\Processador|decoder|saida~0_combout\ & (!\ROM_instrucao|memROM~11_combout\)) ) + ( \Processador|REGA|DOUT\(2) ) + ( 
-- \Processador|ULA1|Add1~10\ ))
-- \Processador|ULA1|Add1~14\ = CARRY(( (!\Processador|decoder|saida~0_combout\ & ((!\MemoriaRAM|ram~544_combout\))) # (\Processador|decoder|saida~0_combout\ & (!\ROM_instrucao|memROM~11_combout\)) ) + ( \Processador|REGA|DOUT\(2) ) + ( 
-- \Processador|ULA1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111110000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|decoder|ALT_INV_saida~0_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~544_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(2),
	cin => \Processador|ULA1|Add1~10\,
	sumout => \Processador|ULA1|Add1~13_sumout\,
	cout => \Processador|ULA1|Add1~14\);

-- Location: LABCELL_X19_Y3_N0
\Processador|ULA1|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[2]~3_combout\ = ( \Processador|ULA1|Add1~13_sumout\ & ( (!\Processador|decoder|saida~1_combout\) # ((!\Processador|decoder|saida~0_combout\ & ((\MemoriaRAM|ram~544_combout\))) # (\Processador|decoder|saida~0_combout\ & 
-- (\ROM_instrucao|memROM~11_combout\))) ) ) # ( !\Processador|ULA1|Add1~13_sumout\ & ( (\Processador|decoder|saida~1_combout\ & ((!\Processador|decoder|saida~0_combout\ & ((\MemoriaRAM|ram~544_combout\))) # (\Processador|decoder|saida~0_combout\ & 
-- (\ROM_instrucao|memROM~11_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100001101000000010000110111110001111111011111000111111101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \Processador|decoder|ALT_INV_saida~0_combout\,
	datac => \Processador|decoder|ALT_INV_saida~1_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~544_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~13_sumout\,
	combout => \Processador|ULA1|saida[2]~3_combout\);

-- Location: FF_X19_Y3_N4
\Processador|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|REGA|DOUT[2]~feeder_combout\,
	asdata => \Processador|ULA1|saida[2]~3_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	ena => \Processador|decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(2));

-- Location: FF_X20_Y4_N2
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
	ena => \DecoderSelEnd|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX0|DOUT\(2));

-- Location: FF_X19_Y4_N16
\MemoriaRAM|ram~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~298_q\);

-- Location: FF_X19_Y3_N17
\MemoriaRAM|ram~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~546_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~282_q\);

-- Location: LABCELL_X19_Y3_N21
\MemoriaRAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~534_combout\ = ( \MemoriaRAM|ram~282_q\ & ( (\ROM_instrucao|memROM~13_combout\ & ((!\ROM_instrucao|memROM~2_combout\) # (\MemoriaRAM|ram~298_q\))) ) ) # ( !\MemoriaRAM|ram~282_q\ & ( (\ROM_instrucao|memROM~13_combout\ & 
-- (\MemoriaRAM|ram~298_q\ & \ROM_instrucao|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000101000000000000010101010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~298_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~282_q\,
	combout => \MemoriaRAM|ram~534_combout\);

-- Location: LABCELL_X19_Y4_N51
\MemoriaRAM|ram~314feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~314feeder_combout\ = ( \Processador|REGA|DOUT[3]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \MemoriaRAM|ram~314feeder_combout\);

-- Location: FF_X19_Y4_N53
\MemoriaRAM|ram~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \MemoriaRAM|ram~314feeder_combout\,
	ena => \MemoriaRAM|ram~548_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~314_q\);

-- Location: FF_X20_Y3_N59
\MemoriaRAM|ram~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~552_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~330_q\);

-- Location: LABCELL_X19_Y3_N18
\MemoriaRAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~535_combout\ = ( \ROM_instrucao|memROM~13_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & (\MemoriaRAM|ram~314_q\)) # (\ROM_instrucao|memROM~2_combout\ & ((\MemoriaRAM|ram~330_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~314_q\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~330_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	combout => \MemoriaRAM|ram~535_combout\);

-- Location: FF_X19_Y2_N23
\MemoriaRAM|ram~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~545_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~274_q\);

-- Location: FF_X19_Y2_N59
\MemoriaRAM|ram~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~290_q\);

-- Location: MLABCELL_X18_Y3_N21
\MemoriaRAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~532_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( (\MemoriaRAM|ram~290_q\ & \ROM_instrucao|memROM~13_combout\) ) ) # ( !\ROM_instrucao|memROM~2_combout\ & ( (\MemoriaRAM|ram~274_q\ & \ROM_instrucao|memROM~13_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~274_q\,
	datac => \MemoriaRAM|ALT_INV_ram~290_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~532_combout\);

-- Location: FF_X20_Y2_N19
\MemoriaRAM|ram~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~547_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~306_q\);

-- Location: FF_X19_Y4_N20
\MemoriaRAM|ram~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~551_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MemoriaRAM|ram~322_q\);

-- Location: LABCELL_X19_Y4_N18
\MemoriaRAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~533_combout\ = ( \MemoriaRAM|ram~322_q\ & ( \ROM_instrucao|memROM~2_combout\ & ( \ROM_instrucao|memROM~13_combout\ ) ) ) # ( \MemoriaRAM|ram~322_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (\MemoriaRAM|ram~306_q\ & 
-- \ROM_instrucao|memROM~13_combout\) ) ) ) # ( !\MemoriaRAM|ram~322_q\ & ( !\ROM_instrucao|memROM~2_combout\ & ( (\MemoriaRAM|ram~306_q\ & \ROM_instrucao|memROM~13_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MemoriaRAM|ALT_INV_ram~306_q\,
	datad => \ROM_instrucao|ALT_INV_memROM~13_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~322_q\,
	dataf => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	combout => \MemoriaRAM|ram~533_combout\);

-- Location: MLABCELL_X18_Y3_N42
\MemoriaRAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~536_combout\ = ( \MemoriaRAM|ram~532_combout\ & ( \MemoriaRAM|ram~533_combout\ & ( (!\ROM_instrucao|memROM~10_combout\) # ((!\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~534_combout\)) # (\ROM_instrucao|memROM~11_combout\ & 
-- ((\MemoriaRAM|ram~535_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~532_combout\ & ( \MemoriaRAM|ram~533_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (\ROM_instrucao|memROM~10_combout\ & (\MemoriaRAM|ram~534_combout\))) # 
-- (\ROM_instrucao|memROM~11_combout\ & ((!\ROM_instrucao|memROM~10_combout\) # ((\MemoriaRAM|ram~535_combout\)))) ) ) ) # ( \MemoriaRAM|ram~532_combout\ & ( !\MemoriaRAM|ram~533_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & 
-- ((!\ROM_instrucao|memROM~10_combout\) # ((\MemoriaRAM|ram~534_combout\)))) # (\ROM_instrucao|memROM~11_combout\ & (\ROM_instrucao|memROM~10_combout\ & ((\MemoriaRAM|ram~535_combout\)))) ) ) ) # ( !\MemoriaRAM|ram~532_combout\ & ( 
-- !\MemoriaRAM|ram~533_combout\ & ( (\ROM_instrucao|memROM~10_combout\ & ((!\ROM_instrucao|memROM~11_combout\ & (\MemoriaRAM|ram~534_combout\)) # (\ROM_instrucao|memROM~11_combout\ & ((\MemoriaRAM|ram~535_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000010011100010101001101101000110010101111100111011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~534_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~535_combout\,
	datae => \MemoriaRAM|ALT_INV_ram~532_combout\,
	dataf => \MemoriaRAM|ALT_INV_ram~533_combout\,
	combout => \MemoriaRAM|ram~536_combout\);

-- Location: MLABCELL_X18_Y3_N39
\Processador|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add0~5_sumout\ = SUM(( (!\Processador|decoder|saida~0_combout\ & \MemoriaRAM|ram~536_combout\) ) + ( \Processador|REGA|DOUT[3]~DUPLICATE_q\ ) + ( \Processador|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Processador|decoder|ALT_INV_saida~0_combout\,
	datac => \MemoriaRAM|ALT_INV_ram~536_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \Processador|ULA1|Add0~14\,
	sumout => \Processador|ULA1|Add0~5_sumout\);

-- Location: LABCELL_X19_Y3_N9
\Processador|REGA|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|REGA|DOUT[3]~feeder_combout\ = ( \Processador|ULA1|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|ULA1|ALT_INV_Add0~5_sumout\,
	combout => \Processador|REGA|DOUT[3]~feeder_combout\);

-- Location: FF_X19_Y3_N11
\Processador|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|REGA|DOUT[3]~feeder_combout\,
	asdata => \Processador|ULA1|saida[3]~1_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	ena => \Processador|decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT\(3));

-- Location: LABCELL_X19_Y3_N42
\Processador|ULA1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|Add1~5_sumout\ = SUM(( (!\MemoriaRAM|ram~536_combout\) # (\Processador|decoder|saida~0_combout\) ) + ( \Processador|REGA|DOUT\(3) ) + ( \Processador|ULA1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \Processador|decoder|ALT_INV_saida~0_combout\,
	datad => \MemoriaRAM|ALT_INV_ram~536_combout\,
	dataf => \Processador|REGA|ALT_INV_DOUT\(3),
	cin => \Processador|ULA1|Add1~14\,
	sumout => \Processador|ULA1|Add1~5_sumout\);

-- Location: LABCELL_X19_Y3_N27
\Processador|ULA1|saida[3]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Processador|ULA1|saida[3]~1_combout\ = ( \Processador|ULA1|Add1~5_sumout\ & ( (!\Processador|decoder|saida~1_combout\) # ((\MemoriaRAM|ram~536_combout\ & !\Processador|decoder|saida~0_combout\)) ) ) # ( !\Processador|ULA1|Add1~5_sumout\ & ( 
-- (\MemoriaRAM|ram~536_combout\ & (!\Processador|decoder|saida~0_combout\ & \Processador|decoder|saida~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000000000000011000011111111001100001111111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \MemoriaRAM|ALT_INV_ram~536_combout\,
	datac => \Processador|decoder|ALT_INV_saida~0_combout\,
	datad => \Processador|decoder|ALT_INV_saida~1_combout\,
	dataf => \Processador|ULA1|ALT_INV_Add1~5_sumout\,
	combout => \Processador|ULA1|saida[3]~1_combout\);

-- Location: FF_X19_Y3_N10
\Processador|REGA|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \Processador|REGA|DOUT[3]~feeder_combout\,
	asdata => \Processador|ULA1|saida[3]~1_combout\,
	sload => \Processador|decoder|Equal10~0_combout\,
	ena => \Processador|decoder|saida~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Processador|REGA|DOUT[3]~DUPLICATE_q\);

-- Location: FF_X20_Y4_N17
\RegistradorHEX0|DOUT[3]\ : dffeas
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
	q => \RegistradorHEX0|DOUT\(3));

-- Location: LABCELL_X21_Y4_N48
\decoderHEX0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX0|DOUT\(3) & ( (\RegistradorHEX0|DOUT[0]~DUPLICATE_q\ & (!\RegistradorHEX0|DOUT[1]~DUPLICATE_q\ $ (!\RegistradorHEX0|DOUT\(2)))) ) ) # ( !\RegistradorHEX0|DOUT\(3) & ( 
-- (!\RegistradorHEX0|DOUT[1]~DUPLICATE_q\ & (!\RegistradorHEX0|DOUT[0]~DUPLICATE_q\ $ (!\RegistradorHEX0|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100001001000010010000100100000010100000101000001010000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \RegistradorHEX0|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \RegistradorHEX0|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(3),
	combout => \decoderHEX0|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X21_Y4_N54
\decoderHEX0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX0|DOUT\(3) & ( (!\RegistradorHEX0|DOUT[0]~DUPLICATE_q\ & ((\RegistradorHEX0|DOUT\(2)))) # (\RegistradorHEX0|DOUT[0]~DUPLICATE_q\ & (\RegistradorHEX0|DOUT[1]~DUPLICATE_q\)) ) ) # ( 
-- !\RegistradorHEX0|DOUT\(3) & ( (\RegistradorHEX0|DOUT\(2) & (!\RegistradorHEX0|DOUT[0]~DUPLICATE_q\ $ (!\RegistradorHEX0|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000000110000001100000011000011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \RegistradorHEX0|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \RegistradorHEX0|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(3),
	combout => \decoderHEX0|rascSaida7seg[1]~1_combout\);

-- Location: FF_X20_Y4_N14
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
	ena => \DecoderSelEnd|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX0|DOUT\(0));

-- Location: FF_X20_Y4_N5
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
	ena => \DecoderSelEnd|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX0|DOUT\(1));

-- Location: LABCELL_X20_Y4_N6
\decoderHEX0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX0|DOUT\(1) & ( (!\RegistradorHEX0|DOUT\(2) & (!\RegistradorHEX0|DOUT\(0) & !\RegistradorHEX0|DOUT\(3))) # (\RegistradorHEX0|DOUT\(2) & ((\RegistradorHEX0|DOUT\(3)))) ) ) # ( 
-- !\RegistradorHEX0|DOUT\(1) & ( (\RegistradorHEX0|DOUT\(2) & (!\RegistradorHEX0|DOUT\(0) & \RegistradorHEX0|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100100001011000010100000100000001001000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT\(2),
	datab => \RegistradorHEX0|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datae => \RegistradorHEX0|ALT_INV_DOUT\(1),
	combout => \decoderHEX0|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X21_Y4_N51
\decoderHEX0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX0|DOUT\(2) & ( (!\RegistradorHEX0|DOUT[0]~DUPLICATE_q\ & (!\RegistradorHEX0|DOUT[1]~DUPLICATE_q\ & !\RegistradorHEX0|DOUT\(3))) # (\RegistradorHEX0|DOUT[0]~DUPLICATE_q\ & 
-- (\RegistradorHEX0|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\RegistradorHEX0|DOUT\(2) & ( (!\RegistradorHEX0|DOUT[0]~DUPLICATE_q\ & (\RegistradorHEX0|DOUT[1]~DUPLICATE_q\ & \RegistradorHEX0|DOUT\(3))) # (\RegistradorHEX0|DOUT[0]~DUPLICATE_q\ & 
-- (!\RegistradorHEX0|DOUT[1]~DUPLICATE_q\ & !\RegistradorHEX0|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001010010001100100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \RegistradorHEX0|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \RegistradorHEX0|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(2),
	combout => \decoderHEX0|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X21_Y4_N57
\decoderHEX0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX0|DOUT\(3) & ( (\RegistradorHEX0|DOUT[0]~DUPLICATE_q\ & (!\RegistradorHEX0|DOUT[1]~DUPLICATE_q\ & !\RegistradorHEX0|DOUT\(2))) ) ) # ( !\RegistradorHEX0|DOUT\(3) & ( 
-- ((!\RegistradorHEX0|DOUT[1]~DUPLICATE_q\ & \RegistradorHEX0|DOUT\(2))) # (\RegistradorHEX0|DOUT[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010111110101010101011111010101010000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \RegistradorHEX0|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \RegistradorHEX0|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(3),
	combout => \decoderHEX0|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X21_Y4_N36
\decoderHEX0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[5]~5_combout\ = ( \RegistradorHEX0|DOUT[1]~DUPLICATE_q\ & ( (!\RegistradorHEX0|DOUT\(3) & ((!\RegistradorHEX0|DOUT\(2)) # (\RegistradorHEX0|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\RegistradorHEX0|DOUT[1]~DUPLICATE_q\ & ( 
-- (\RegistradorHEX0|DOUT[0]~DUPLICATE_q\ & (!\RegistradorHEX0|DOUT\(3) $ (\RegistradorHEX0|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000011000000001100001111000000110011001100000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX0|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX0|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX0|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \RegistradorHEX0|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \decoderHEX0|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X21_Y4_N45
\decoderHEX0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX0|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX0|DOUT\(3) & ( (!\RegistradorHEX0|DOUT[0]~DUPLICATE_q\ & (!\RegistradorHEX0|DOUT[1]~DUPLICATE_q\ & \RegistradorHEX0|DOUT\(2))) ) ) # ( !\RegistradorHEX0|DOUT\(3) & ( 
-- (!\RegistradorHEX0|DOUT[1]~DUPLICATE_q\ & ((!\RegistradorHEX0|DOUT\(2)))) # (\RegistradorHEX0|DOUT[1]~DUPLICATE_q\ & (\RegistradorHEX0|DOUT[0]~DUPLICATE_q\ & \RegistradorHEX0|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000101111100000000010100000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX0|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \RegistradorHEX0|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \RegistradorHEX0|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX0|ALT_INV_DOUT\(3),
	combout => \decoderHEX0|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X21_Y4_N30
\DecoderSelEnd|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderSelEnd|Equal0~1_combout\ = ( \ROM_instrucao|memROM~5_combout\ & ( \AndHEX2|saida~0_combout\ & ( (!\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~11_combout\ & \ROM_instrucao|memROM~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \AndHEX2|ALT_INV_saida~0_combout\,
	combout => \DecoderSelEnd|Equal0~1_combout\);

-- Location: FF_X21_Y4_N34
\RegistradorHEX1|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X21_Y4_N28
\RegistradorHEX1|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X21_Y4_N32
\RegistradorHEX1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(3));

-- Location: LABCELL_X21_Y4_N24
\RegistradorHEX1|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RegistradorHEX1|DOUT[0]~feeder_combout\ = ( \Processador|REGA|DOUT[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \Processador|REGA|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \RegistradorHEX1|DOUT[0]~feeder_combout\);

-- Location: FF_X21_Y4_N25
\RegistradorHEX1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RegistradorHEX1|DOUT[0]~feeder_combout\,
	ena => \DecoderSelEnd|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(0));

-- Location: LABCELL_X19_Y2_N0
\decoderHEX1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX1|DOUT\(0) & ( (!\RegistradorHEX1|DOUT[1]~DUPLICATE_q\ & (!\RegistradorHEX1|DOUT[2]~DUPLICATE_q\ $ (\RegistradorHEX1|DOUT\(3)))) # (\RegistradorHEX1|DOUT[1]~DUPLICATE_q\ & 
-- (!\RegistradorHEX1|DOUT[2]~DUPLICATE_q\ & \RegistradorHEX1|DOUT\(3))) ) ) # ( !\RegistradorHEX1|DOUT\(0) & ( (!\RegistradorHEX1|DOUT[1]~DUPLICATE_q\ & (\RegistradorHEX1|DOUT[2]~DUPLICATE_q\ & !\RegistradorHEX1|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000010000110100001101000011010000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \RegistradorHEX1|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \RegistradorHEX1|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(0),
	combout => \decoderHEX1|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X19_Y2_N3
\decoderHEX1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX1|DOUT\(3) & ( (!\RegistradorHEX1|DOUT\(0) & (\RegistradorHEX1|DOUT[2]~DUPLICATE_q\)) # (\RegistradorHEX1|DOUT\(0) & ((\RegistradorHEX1|DOUT[1]~DUPLICATE_q\))) ) ) # ( !\RegistradorHEX1|DOUT\(3) 
-- & ( (\RegistradorHEX1|DOUT[2]~DUPLICATE_q\ & (!\RegistradorHEX1|DOUT\(0) $ (!\RegistradorHEX1|DOUT[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX1|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX1|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(3),
	combout => \decoderHEX1|rascSaida7seg[1]~1_combout\);

-- Location: FF_X21_Y4_N29
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
	ena => \DecoderSelEnd|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(2));

-- Location: FF_X21_Y4_N35
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
	ena => \DecoderSelEnd|Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX1|DOUT\(1));

-- Location: LABCELL_X21_Y4_N12
\decoderHEX1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX1|DOUT\(3) & ( (\RegistradorHEX1|DOUT\(2) & ((!\RegistradorHEX1|DOUT\(0)) # (\RegistradorHEX1|DOUT\(1)))) ) ) # ( !\RegistradorHEX1|DOUT\(3) & ( (!\RegistradorHEX1|DOUT\(2) & 
-- (\RegistradorHEX1|DOUT\(1) & !\RegistradorHEX1|DOUT\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001010101000001010101010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(3),
	combout => \decoderHEX1|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X21_Y4_N39
\decoderHEX1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX1|DOUT\(3) & ( (\RegistradorHEX1|DOUT\(1) & (!\RegistradorHEX1|DOUT\(0) $ (\RegistradorHEX1|DOUT\(2)))) ) ) # ( !\RegistradorHEX1|DOUT\(3) & ( (!\RegistradorHEX1|DOUT\(1) & 
-- (!\RegistradorHEX1|DOUT\(0) $ (!\RegistradorHEX1|DOUT\(2)))) # (\RegistradorHEX1|DOUT\(1) & (\RegistradorHEX1|DOUT\(0) & \RegistradorHEX1|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100101000010101010010101010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(3),
	combout => \decoderHEX1|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X21_Y4_N18
\decoderHEX1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX1|DOUT\(3) & ( (!\RegistradorHEX1|DOUT\(1) & (\RegistradorHEX1|DOUT\(0) & !\RegistradorHEX1|DOUT\(2))) ) ) # ( !\RegistradorHEX1|DOUT\(3) & ( ((!\RegistradorHEX1|DOUT\(1) & 
-- \RegistradorHEX1|DOUT\(2))) # (\RegistradorHEX1|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011101100111011001110110011101100100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(3),
	combout => \decoderHEX1|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X21_Y4_N3
\decoderHEX1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[5]~5_combout\ = ( \RegistradorHEX1|DOUT\(2) & ( (\RegistradorHEX1|DOUT\(0) & (!\RegistradorHEX1|DOUT\(1) $ (!\RegistradorHEX1|DOUT\(3)))) ) ) # ( !\RegistradorHEX1|DOUT\(2) & ( (!\RegistradorHEX1|DOUT\(3) & 
-- ((\RegistradorHEX1|DOUT\(0)) # (\RegistradorHEX1|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110001001100000001100000011001001100010011000000011000000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datae => \RegistradorHEX1|ALT_INV_DOUT\(2),
	combout => \decoderHEX1|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X21_Y4_N21
\decoderHEX1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX1|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX1|DOUT\(3) & ( (!\RegistradorHEX1|DOUT\(1) & (!\RegistradorHEX1|DOUT\(0) & \RegistradorHEX1|DOUT\(2))) ) ) # ( !\RegistradorHEX1|DOUT\(3) & ( (!\RegistradorHEX1|DOUT\(1) & 
-- ((!\RegistradorHEX1|DOUT\(2)))) # (\RegistradorHEX1|DOUT\(1) & (\RegistradorHEX1|DOUT\(0) & \RegistradorHEX1|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000010001101010100001000100000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX1|ALT_INV_DOUT\(1),
	datab => \RegistradorHEX1|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX1|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX1|ALT_INV_DOUT\(3),
	combout => \decoderHEX1|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X20_Y4_N15
\AndHEX2|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \AndHEX2|saida~1_combout\ = ( \ROM_instrucao|memROM~5_combout\ & ( \AndHEX2|saida~0_combout\ & ( (!\ROM_instrucao|memROM~10_combout\ & (\ROM_instrucao|memROM~2_combout\ & !\ROM_instrucao|memROM~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \AndHEX2|ALT_INV_saida~0_combout\,
	combout => \AndHEX2|saida~1_combout\);

-- Location: FF_X21_Y4_N17
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
	ena => \AndHEX2|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX2|DOUT\(0));

-- Location: FF_X21_Y4_N11
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
	ena => \AndHEX2|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX2|DOUT\(2));

-- Location: FF_X21_Y4_N44
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
	ena => \AndHEX2|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX2|DOUT\(1));

-- Location: FF_X21_Y4_N8
\RegistradorHEX2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \AndHEX2|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX2|DOUT\(3));

-- Location: LABCELL_X19_Y2_N9
\decoderHEX2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX2|DOUT\(3) & ( (\RegistradorHEX2|DOUT\(0) & (!\RegistradorHEX2|DOUT\(2) $ (!\RegistradorHEX2|DOUT\(1)))) ) ) # ( !\RegistradorHEX2|DOUT\(3) & ( (!\RegistradorHEX2|DOUT\(1) & 
-- (!\RegistradorHEX2|DOUT\(0) $ (!\RegistradorHEX2|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000000000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(3),
	combout => \decoderHEX2|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X19_Y2_N24
\decoderHEX2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX2|DOUT\(3) & ( (!\RegistradorHEX2|DOUT\(0) & (\RegistradorHEX2|DOUT\(2))) # (\RegistradorHEX2|DOUT\(0) & ((\RegistradorHEX2|DOUT\(1)))) ) ) # ( !\RegistradorHEX2|DOUT\(3) & ( 
-- (\RegistradorHEX2|DOUT\(2) & (!\RegistradorHEX2|DOUT\(0) $ (!\RegistradorHEX2|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100110000000000110011000000110000001111110011000000111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(3),
	combout => \decoderHEX2|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X19_Y2_N6
\decoderHEX2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX2|DOUT\(3) & ( (\RegistradorHEX2|DOUT\(2) & ((!\RegistradorHEX2|DOUT\(0)) # (\RegistradorHEX2|DOUT\(1)))) ) ) # ( !\RegistradorHEX2|DOUT\(3) & ( (!\RegistradorHEX2|DOUT\(0) & 
-- (!\RegistradorHEX2|DOUT\(2) & \RegistradorHEX2|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000100011001000110010001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(3),
	combout => \decoderHEX2|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X21_Y4_N15
\decoderHEX2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX2|DOUT\(1) & ( (!\RegistradorHEX2|DOUT\(2) & (\RegistradorHEX2|DOUT\(3) & !\RegistradorHEX2|DOUT\(0))) # (\RegistradorHEX2|DOUT\(2) & ((\RegistradorHEX2|DOUT\(0)))) ) ) # ( 
-- !\RegistradorHEX2|DOUT\(1) & ( (!\RegistradorHEX2|DOUT\(3) & (!\RegistradorHEX2|DOUT\(2) $ (!\RegistradorHEX2|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011000000001100001100000000001100001100110000110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(0),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(1),
	combout => \decoderHEX2|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X21_Y4_N6
\decoderHEX2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX2|DOUT\(2) & ( (!\RegistradorHEX2|DOUT\(3) & ((!\RegistradorHEX2|DOUT\(1)) # (\RegistradorHEX2|DOUT\(0)))) ) ) # ( !\RegistradorHEX2|DOUT\(2) & ( (\RegistradorHEX2|DOUT\(0) & 
-- ((!\RegistradorHEX2|DOUT\(1)) # (!\RegistradorHEX2|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100100010001100110010001010111011000000001011101100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX2|ALT_INV_DOUT\(1),
	datab => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(2),
	combout => \decoderHEX2|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X21_Y4_N42
\decoderHEX2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[5]~5_combout\ = ( \RegistradorHEX2|DOUT\(0) & ( !\RegistradorHEX2|DOUT\(3) $ (((\RegistradorHEX2|DOUT\(2) & !\RegistradorHEX2|DOUT\(1)))) ) ) # ( !\RegistradorHEX2|DOUT\(0) & ( (!\RegistradorHEX2|DOUT\(3) & 
-- (!\RegistradorHEX2|DOUT\(2) & \RegistradorHEX2|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011000011110011001100001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX2|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(0),
	combout => \decoderHEX2|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X21_Y4_N9
\decoderHEX2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX2|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX2|DOUT\(3) & ( (!\RegistradorHEX2|DOUT\(0) & (!\RegistradorHEX2|DOUT\(1) & \RegistradorHEX2|DOUT\(2))) ) ) # ( !\RegistradorHEX2|DOUT\(3) & ( (!\RegistradorHEX2|DOUT\(1) & 
-- ((!\RegistradorHEX2|DOUT\(2)))) # (\RegistradorHEX2|DOUT\(1) & (\RegistradorHEX2|DOUT\(0) & \RegistradorHEX2|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000011111100000000001100000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX2|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX2|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX2|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX2|ALT_INV_DOUT\(3),
	combout => \decoderHEX2|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X20_Y2_N48
\DecoderSelEnd|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DecoderSelEnd|Equal0~2_combout\ = ( \ROM_instrucao|memROM~2_combout\ & ( \AndHEX2|saida~0_combout\ & ( (!\ROM_instrucao|memROM~11_combout\ & (\ROM_instrucao|memROM~5_combout\ & \ROM_instrucao|memROM~10_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datae => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	dataf => \AndHEX2|ALT_INV_saida~0_combout\,
	combout => \DecoderSelEnd|Equal0~2_combout\);

-- Location: FF_X20_Y2_N46
\RegistradorHEX3|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(2),
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT[2]~DUPLICATE_q\);

-- Location: FF_X20_Y2_N43
\RegistradorHEX3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \DecoderSelEnd|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT\(3));

-- Location: FF_X20_Y2_N52
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
	ena => \DecoderSelEnd|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT\(1));

-- Location: FF_X20_Y2_N50
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
	ena => \DecoderSelEnd|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT\(0));

-- Location: LABCELL_X21_Y2_N48
\decoderHEX3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX3|DOUT\(0) & ( (!\RegistradorHEX3|DOUT[2]~DUPLICATE_q\ & (!\RegistradorHEX3|DOUT\(3) $ (\RegistradorHEX3|DOUT\(1)))) # (\RegistradorHEX3|DOUT[2]~DUPLICATE_q\ & (\RegistradorHEX3|DOUT\(3) & 
-- !\RegistradorHEX3|DOUT\(1))) ) ) # ( !\RegistradorHEX3|DOUT\(0) & ( (\RegistradorHEX3|DOUT[2]~DUPLICATE_q\ & (!\RegistradorHEX3|DOUT\(3) & !\RegistradorHEX3|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000010010010100100101001001010010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(0),
	combout => \decoderHEX3|rascSaida7seg[0]~0_combout\);

-- Location: FF_X20_Y2_N47
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
	ena => \DecoderSelEnd|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX3|DOUT\(2));

-- Location: LABCELL_X19_Y2_N21
\decoderHEX3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[1]~1_combout\ = (!\RegistradorHEX3|DOUT\(1) & (\RegistradorHEX3|DOUT\(2) & (!\RegistradorHEX3|DOUT\(0) $ (!\RegistradorHEX3|DOUT\(3))))) # (\RegistradorHEX3|DOUT\(1) & ((!\RegistradorHEX3|DOUT\(0) & (\RegistradorHEX3|DOUT\(2))) 
-- # (\RegistradorHEX3|DOUT\(0) & ((\RegistradorHEX3|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010001010011000101000101001100010100010100110001010001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(2),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX3|ALT_INV_DOUT\(3),
	combout => \decoderHEX3|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X19_Y2_N51
\decoderHEX3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[2]~2_combout\ = ( \RegistradorHEX3|DOUT\(2) & ( (\RegistradorHEX3|DOUT\(3) & ((!\RegistradorHEX3|DOUT\(0)) # (\RegistradorHEX3|DOUT\(1)))) ) ) # ( !\RegistradorHEX3|DOUT\(2) & ( (!\RegistradorHEX3|DOUT\(3) & 
-- (!\RegistradorHEX3|DOUT\(0) & \RegistradorHEX3|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100001000101010001010100010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX3|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(2),
	combout => \decoderHEX3|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X21_Y2_N54
\decoderHEX3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX3|DOUT\(0) & ( (!\RegistradorHEX3|DOUT[2]~DUPLICATE_q\ & (!\RegistradorHEX3|DOUT\(3) & !\RegistradorHEX3|DOUT\(1))) # (\RegistradorHEX3|DOUT[2]~DUPLICATE_q\ & ((\RegistradorHEX3|DOUT\(1)))) ) ) # 
-- ( !\RegistradorHEX3|DOUT\(0) & ( (!\RegistradorHEX3|DOUT[2]~DUPLICATE_q\ & (\RegistradorHEX3|DOUT\(3) & \RegistradorHEX3|DOUT\(1))) # (\RegistradorHEX3|DOUT[2]~DUPLICATE_q\ & (!\RegistradorHEX3|DOUT\(3) & !\RegistradorHEX3|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100001001000010010000100100001010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(0),
	combout => \decoderHEX3|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X21_Y2_N36
\decoderHEX3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX3|DOUT\(0) & ( (!\RegistradorHEX3|DOUT\(3)) # ((!\RegistradorHEX3|DOUT[2]~DUPLICATE_q\ & !\RegistradorHEX3|DOUT\(1))) ) ) # ( !\RegistradorHEX3|DOUT\(0) & ( (\RegistradorHEX3|DOUT[2]~DUPLICATE_q\ 
-- & (!\RegistradorHEX3|DOUT\(3) & !\RegistradorHEX3|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000011101100111011001110110011101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(0),
	combout => \decoderHEX3|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X21_Y2_N30
\decoderHEX3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[5]~5_combout\ = ( \RegistradorHEX3|DOUT\(0) & ( !\RegistradorHEX3|DOUT\(3) $ (((\RegistradorHEX3|DOUT[2]~DUPLICATE_q\ & !\RegistradorHEX3|DOUT\(1)))) ) ) # ( !\RegistradorHEX3|DOUT\(0) & ( (!\RegistradorHEX3|DOUT[2]~DUPLICATE_q\ 
-- & (!\RegistradorHEX3|DOUT\(3) & \RegistradorHEX3|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100010011100100111001001110010011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datab => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(0),
	combout => \decoderHEX3|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X21_Y2_N27
\decoderHEX3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX3|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX3|DOUT\(0) & ( (!\RegistradorHEX3|DOUT\(3) & (!\RegistradorHEX3|DOUT\(1) $ (\RegistradorHEX3|DOUT[2]~DUPLICATE_q\))) ) ) # ( !\RegistradorHEX3|DOUT\(0) & ( (!\RegistradorHEX3|DOUT\(1) & 
-- (!\RegistradorHEX3|DOUT\(3) $ (\RegistradorHEX3|DOUT[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101010100000010100001010000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX3|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX3|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX3|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \RegistradorHEX3|ALT_INV_DOUT\(0),
	combout => \decoderHEX3|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X20_Y4_N42
\MemoriaRAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~527_combout\ = ( \AndHEX2|saida~0_combout\ & ( (\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~2_combout\ & (!\ROM_instrucao|memROM~10_combout\ & \ROM_instrucao|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \AndHEX2|ALT_INV_saida~0_combout\,
	combout => \MemoriaRAM|ram~527_combout\);

-- Location: FF_X20_Y4_N10
\RegistradorHEX4|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT\(1),
	sload => VCC,
	ena => \MemoriaRAM|ram~527_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT[1]~DUPLICATE_q\);

-- Location: FF_X20_Y4_N59
\RegistradorHEX4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~527_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT\(0));

-- Location: FF_X20_Y4_N29
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
	ena => \MemoriaRAM|ram~527_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT\(2));

-- Location: FF_X20_Y4_N52
\RegistradorHEX4|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~527_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X19_Y2_N27
\decoderHEX4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX4|DOUT[3]~DUPLICATE_q\ & ( (\RegistradorHEX4|DOUT\(0) & (!\RegistradorHEX4|DOUT[1]~DUPLICATE_q\ $ (!\RegistradorHEX4|DOUT\(2)))) ) ) # ( !\RegistradorHEX4|DOUT[3]~DUPLICATE_q\ & ( 
-- (!\RegistradorHEX4|DOUT[1]~DUPLICATE_q\ & (!\RegistradorHEX4|DOUT\(0) $ (!\RegistradorHEX4|DOUT\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010100000000010101010000000000101000010100000010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX4|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \decoderHEX4|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X20_Y2_N27
\decoderHEX4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX4|DOUT\(2) & ( \RegistradorHEX4|DOUT\(0) & ( !\RegistradorHEX4|DOUT[1]~DUPLICATE_q\ $ (\RegistradorHEX4|DOUT[3]~DUPLICATE_q\) ) ) ) # ( !\RegistradorHEX4|DOUT\(2) & ( \RegistradorHEX4|DOUT\(0) & 
-- ( (\RegistradorHEX4|DOUT[1]~DUPLICATE_q\ & \RegistradorHEX4|DOUT[3]~DUPLICATE_q\) ) ) ) # ( \RegistradorHEX4|DOUT\(2) & ( !\RegistradorHEX4|DOUT\(0) & ( (\RegistradorHEX4|DOUT[3]~DUPLICATE_q\) # (\RegistradorHEX4|DOUT[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101110111011100010001000100011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \RegistradorHEX4|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \RegistradorHEX4|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX4|ALT_INV_DOUT\(0),
	combout => \decoderHEX4|rascSaida7seg[1]~1_combout\);

-- Location: FF_X20_Y4_N53
\RegistradorHEX4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~527_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT\(3));

-- Location: FF_X20_Y4_N11
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
	ena => \MemoriaRAM|ram~527_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX4|DOUT\(1));

-- Location: LABCELL_X20_Y4_N54
\decoderHEX4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[2]~2_combout\ = (!\RegistradorHEX4|DOUT\(3) & (\RegistradorHEX4|DOUT\(1) & (!\RegistradorHEX4|DOUT\(2) & !\RegistradorHEX4|DOUT\(0)))) # (\RegistradorHEX4|DOUT\(3) & (\RegistradorHEX4|DOUT\(2) & ((!\RegistradorHEX4|DOUT\(0)) # 
-- (\RegistradorHEX4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100000001001001010000000100100101000000010010010100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(0),
	combout => \decoderHEX4|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X19_Y2_N30
\decoderHEX4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX4|DOUT\(2) & ( (!\RegistradorHEX4|DOUT\(0) & (!\RegistradorHEX4|DOUT[1]~DUPLICATE_q\ & !\RegistradorHEX4|DOUT[3]~DUPLICATE_q\)) # (\RegistradorHEX4|DOUT\(0) & 
-- (\RegistradorHEX4|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\RegistradorHEX4|DOUT\(2) & ( (!\RegistradorHEX4|DOUT\(0) & (\RegistradorHEX4|DOUT[1]~DUPLICATE_q\ & \RegistradorHEX4|DOUT[3]~DUPLICATE_q\)) # (\RegistradorHEX4|DOUT\(0) & 
-- (!\RegistradorHEX4|DOUT[1]~DUPLICATE_q\ & !\RegistradorHEX4|DOUT[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001100110000110000001100110000000011001100001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datac => \RegistradorHEX4|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \RegistradorHEX4|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \RegistradorHEX4|ALT_INV_DOUT\(2),
	combout => \decoderHEX4|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X20_Y2_N57
\decoderHEX4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX4|DOUT[1]~DUPLICATE_q\ & ( (\RegistradorHEX4|DOUT\(0) & !\RegistradorHEX4|DOUT[3]~DUPLICATE_q\) ) ) # ( !\RegistradorHEX4|DOUT[1]~DUPLICATE_q\ & ( (!\RegistradorHEX4|DOUT\(2) & 
-- (\RegistradorHEX4|DOUT\(0))) # (\RegistradorHEX4|DOUT\(2) & ((!\RegistradorHEX4|DOUT[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101110001011100010001000100010001011100010111000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX4|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datae => \RegistradorHEX4|ALT_INV_DOUT[1]~DUPLICATE_q\,
	combout => \decoderHEX4|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X20_Y4_N48
\decoderHEX4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[5]~5_combout\ = ( \RegistradorHEX4|DOUT\(2) & ( (\RegistradorHEX4|DOUT\(0) & (!\RegistradorHEX4|DOUT\(3) $ (!\RegistradorHEX4|DOUT\(1)))) ) ) # ( !\RegistradorHEX4|DOUT\(2) & ( (!\RegistradorHEX4|DOUT\(3) & 
-- ((\RegistradorHEX4|DOUT\(0)) # (\RegistradorHEX4|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010101010000000000110011000100010101010100000000001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX4|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX4|ALT_INV_DOUT\(1),
	datad => \RegistradorHEX4|ALT_INV_DOUT\(0),
	datae => \RegistradorHEX4|ALT_INV_DOUT\(2),
	combout => \decoderHEX4|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X20_Y2_N36
\decoderHEX4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX4|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX4|DOUT[1]~DUPLICATE_q\ & ( \RegistradorHEX4|DOUT\(0) & ( (!\RegistradorHEX4|DOUT[3]~DUPLICATE_q\ & \RegistradorHEX4|DOUT\(2)) ) ) ) # ( !\RegistradorHEX4|DOUT[1]~DUPLICATE_q\ & ( 
-- \RegistradorHEX4|DOUT\(0) & ( (!\RegistradorHEX4|DOUT[3]~DUPLICATE_q\ & !\RegistradorHEX4|DOUT\(2)) ) ) ) # ( !\RegistradorHEX4|DOUT[1]~DUPLICATE_q\ & ( !\RegistradorHEX4|DOUT\(0) & ( !\RegistradorHEX4|DOUT[3]~DUPLICATE_q\ $ (\RegistradorHEX4|DOUT\(2)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000110011000000000000000011001100000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX4|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datad => \RegistradorHEX4|ALT_INV_DOUT\(2),
	datae => \RegistradorHEX4|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \RegistradorHEX4|ALT_INV_DOUT\(0),
	combout => \decoderHEX4|rascSaida7seg[6]~6_combout\);

-- Location: LABCELL_X20_Y4_N45
\MemoriaRAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \MemoriaRAM|ram~528_combout\ = ( \AndHEX2|saida~0_combout\ & ( (\ROM_instrucao|memROM~11_combout\ & (!\ROM_instrucao|memROM~2_combout\ & (\ROM_instrucao|memROM~10_combout\ & \ROM_instrucao|memROM~5_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM_instrucao|ALT_INV_memROM~11_combout\,
	datab => \ROM_instrucao|ALT_INV_memROM~2_combout\,
	datac => \ROM_instrucao|ALT_INV_memROM~10_combout\,
	datad => \ROM_instrucao|ALT_INV_memROM~5_combout\,
	dataf => \AndHEX2|ALT_INV_saida~0_combout\,
	combout => \MemoriaRAM|ram~528_combout\);

-- Location: FF_X20_Y4_N23
\RegistradorHEX5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \Processador|REGA|DOUT[3]~DUPLICATE_q\,
	sload => VCC,
	ena => \MemoriaRAM|ram~528_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX5|DOUT\(3));

-- Location: FF_X20_Y4_N41
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
	ena => \MemoriaRAM|ram~528_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX5|DOUT\(2));

-- Location: FF_X20_Y4_N38
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
	ena => \MemoriaRAM|ram~528_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX5|DOUT\(1));

-- Location: FF_X20_Y4_N20
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
	ena => \MemoriaRAM|ram~528_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RegistradorHEX5|DOUT\(0));

-- Location: LABCELL_X20_Y4_N27
\decoderHEX5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[0]~0_combout\ = ( \RegistradorHEX5|DOUT\(0) & ( (!\RegistradorHEX5|DOUT\(3) & (!\RegistradorHEX5|DOUT\(2) & !\RegistradorHEX5|DOUT\(1))) # (\RegistradorHEX5|DOUT\(3) & (!\RegistradorHEX5|DOUT\(2) $ (!\RegistradorHEX5|DOUT\(1)))) 
-- ) ) # ( !\RegistradorHEX5|DOUT\(0) & ( (!\RegistradorHEX5|DOUT\(3) & (\RegistradorHEX5|DOUT\(2) & !\RegistradorHEX5|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000010100101010100001010010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(0),
	combout => \decoderHEX5|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X20_Y4_N33
\decoderHEX5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[1]~1_combout\ = ( \RegistradorHEX5|DOUT\(0) & ( (!\RegistradorHEX5|DOUT\(1) & (\RegistradorHEX5|DOUT\(2) & !\RegistradorHEX5|DOUT\(3))) # (\RegistradorHEX5|DOUT\(1) & ((\RegistradorHEX5|DOUT\(3)))) ) ) # ( 
-- !\RegistradorHEX5|DOUT\(0) & ( (\RegistradorHEX5|DOUT\(2) & ((\RegistradorHEX5|DOUT\(3)) # (\RegistradorHEX5|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011000100010011001100100010010101010010001001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(1),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(0),
	combout => \decoderHEX5|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X20_Y4_N24
\decoderHEX5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[2]~2_combout\ = (!\RegistradorHEX5|DOUT\(3) & (!\RegistradorHEX5|DOUT\(2) & (!\RegistradorHEX5|DOUT\(0) & \RegistradorHEX5|DOUT\(1)))) # (\RegistradorHEX5|DOUT\(3) & (\RegistradorHEX5|DOUT\(2) & ((!\RegistradorHEX5|DOUT\(0)) # 
-- (\RegistradorHEX5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000010010001000100001001000100010000100100010001000010010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(1),
	combout => \decoderHEX5|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X20_Y4_N30
\decoderHEX5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[3]~3_combout\ = ( \RegistradorHEX5|DOUT\(0) & ( (!\RegistradorHEX5|DOUT\(1) & (!\RegistradorHEX5|DOUT\(2) & !\RegistradorHEX5|DOUT\(3))) # (\RegistradorHEX5|DOUT\(1) & (\RegistradorHEX5|DOUT\(2))) ) ) # ( 
-- !\RegistradorHEX5|DOUT\(0) & ( (!\RegistradorHEX5|DOUT\(1) & (\RegistradorHEX5|DOUT\(2) & !\RegistradorHEX5|DOUT\(3))) # (\RegistradorHEX5|DOUT\(1) & (!\RegistradorHEX5|DOUT\(2) & \RegistradorHEX5|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010000100100001001000010010010010001100100011001000110010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(1),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(0),
	combout => \decoderHEX5|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X20_Y4_N21
\decoderHEX5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[4]~4_combout\ = ( \RegistradorHEX5|DOUT\(0) & ( (!\RegistradorHEX5|DOUT\(3)) # ((!\RegistradorHEX5|DOUT\(1) & !\RegistradorHEX5|DOUT\(2))) ) ) # ( !\RegistradorHEX5|DOUT\(0) & ( (!\RegistradorHEX5|DOUT\(1) & 
-- (\RegistradorHEX5|DOUT\(2) & !\RegistradorHEX5|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000011111111101000001111111110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(1),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(2),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(3),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(0),
	combout => \decoderHEX5|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X20_Y4_N36
\decoderHEX5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[5]~5_combout\ = ( \RegistradorHEX5|DOUT\(2) & ( (\RegistradorHEX5|DOUT\(0) & (!\RegistradorHEX5|DOUT\(3) $ (!\RegistradorHEX5|DOUT\(1)))) ) ) # ( !\RegistradorHEX5|DOUT\(2) & ( (!\RegistradorHEX5|DOUT\(3) & 
-- ((\RegistradorHEX5|DOUT\(1)) # (\RegistradorHEX5|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001100000011001100110000000011000011000000001100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datac => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(1),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(2),
	combout => \decoderHEX5|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X20_Y4_N39
\decoderHEX5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoderHEX5|rascSaida7seg[6]~6_combout\ = ( \RegistradorHEX5|DOUT\(1) & ( (\RegistradorHEX5|DOUT\(0) & (!\RegistradorHEX5|DOUT\(3) & \RegistradorHEX5|DOUT\(2))) ) ) # ( !\RegistradorHEX5|DOUT\(1) & ( (!\RegistradorHEX5|DOUT\(3) & 
-- ((!\RegistradorHEX5|DOUT\(2)))) # (\RegistradorHEX5|DOUT\(3) & (!\RegistradorHEX5|DOUT\(0) & \RegistradorHEX5|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000100010110011000010001000000000010001000000000001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RegistradorHEX5|ALT_INV_DOUT\(0),
	datab => \RegistradorHEX5|ALT_INV_DOUT\(3),
	datad => \RegistradorHEX5|ALT_INV_DOUT\(2),
	dataf => \RegistradorHEX5|ALT_INV_DOUT\(1),
	combout => \decoderHEX5|rascSaida7seg[6]~6_combout\);

-- Location: IOIBUF_X10_Y0_N75
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N35
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X46_Y0_N35
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X43_Y0_N1
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X40_Y45_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N92
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X38_Y45_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X42_Y45_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X42_Y45_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X54_Y21_N21
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X44_Y0_N52
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X22_Y45_N35
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X52_Y45_N18
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


