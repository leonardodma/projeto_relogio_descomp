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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "04/17/2022 14:51:06"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          relogio
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY relogio_vhd_vec_tst IS
END relogio_vhd_vec_tst;
ARCHITECTURE relogio_arch OF relogio_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ACUMULADOR : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL DIN_HEX : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL FPGA_RESET : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL INSTRUCAO : STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL KEY : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL KEY0 : STD_LOGIC;
SIGNAL KEY1 : STD_LOGIC;
SIGNAL KEY2 : STD_LOGIC;
SIGNAL KEY3 : STD_LOGIC;
SIGNAL LEDR : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL PC_OUT : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL SAIDA_AND_HEX0 : STD_LOGIC;
SIGNAL SAIDA_AND_HEX1 : STD_LOGIC;
SIGNAL SAIDA_AND_HEX2 : STD_LOGIC;
SIGNAL SAIDA_AND_HEX3 : STD_LOGIC;
SIGNAL SAIDA_AND_HEX4 : STD_LOGIC;
SIGNAL SAIDA_AND_HEX5 : STD_LOGIC;
SIGNAL SW : STD_LOGIC_VECTOR(9 DOWNTO 0);
COMPONENT relogio
	PORT (
	ACUMULADOR : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	CLOCK_50 : IN STD_LOGIC;
	DIN_HEX : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	FPGA_RESET : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	INSTRUCAO : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
	KEY : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	KEY0 : IN STD_LOGIC;
	KEY1 : IN STD_LOGIC;
	KEY2 : IN STD_LOGIC;
	KEY3 : IN STD_LOGIC;
	LEDR : OUT STD_LOGIC_VECTOR(9 DOWNTO 0);
	PC_OUT : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	SAIDA_AND_HEX0 : OUT STD_LOGIC;
	SAIDA_AND_HEX1 : OUT STD_LOGIC;
	SAIDA_AND_HEX2 : OUT STD_LOGIC;
	SAIDA_AND_HEX3 : OUT STD_LOGIC;
	SAIDA_AND_HEX4 : OUT STD_LOGIC;
	SAIDA_AND_HEX5 : OUT STD_LOGIC;
	SW : IN STD_LOGIC_VECTOR(9 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : relogio
	PORT MAP (
-- list connections between master ports and signals
	ACUMULADOR => ACUMULADOR,
	CLOCK_50 => CLOCK_50,
	DIN_HEX => DIN_HEX,
	FPGA_RESET => FPGA_RESET,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	INSTRUCAO => INSTRUCAO,
	KEY => KEY,
	KEY0 => KEY0,
	KEY1 => KEY1,
	KEY2 => KEY2,
	KEY3 => KEY3,
	LEDR => LEDR,
	PC_OUT => PC_OUT,
	SAIDA_AND_HEX0 => SAIDA_AND_HEX0,
	SAIDA_AND_HEX1 => SAIDA_AND_HEX1,
	SAIDA_AND_HEX2 => SAIDA_AND_HEX2,
	SAIDA_AND_HEX3 => SAIDA_AND_HEX3,
	SAIDA_AND_HEX4 => SAIDA_AND_HEX4,
	SAIDA_AND_HEX5 => SAIDA_AND_HEX5,
	SW => SW
	);

-- KEY[0]
t_prcs_KEY_0: PROCESS
BEGIN
	KEY(0) <= '1';
	WAIT FOR 20000 ps;
	FOR i IN 1 TO 24
	LOOP
		KEY(0) <= '0';
		WAIT FOR 20000 ps;
		KEY(0) <= '1';
		WAIT FOR 20000 ps;
	END LOOP;
	KEY(0) <= '0';
WAIT;
END PROCESS t_prcs_KEY_0;
END relogio_arch;
