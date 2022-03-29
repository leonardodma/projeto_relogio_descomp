library ieee;
use ieee.std_logic_1164.all;

entity relogio is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
            larguraEnderecos : natural := 9;
				tamanhoROM: natural := 9;
				dadoROM: natural := 13;
				tamanhoRAM: natural := 8;
				dadoRAM: natural := 8;
            simulacao : boolean := TRUE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
    SW: in std_logic_vector(9 downto 0);
    PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
	 
	 saida_acumulador: out std_logic_vector(larguraDados-1 downto 0);
	 saida_decoder: out  std_logic_vector(11 downto 0);
	 
	 out_mux4x1: out std_logic_vector (8 downto 0);
	 out_regend: out std_logic_vector (8 downto 0)
  );
end entity;


architecture arquitetura of relogio is

  signal CLK : std_logic;

  signal proxPC : std_logic_vector (8 downto 0);
  signal Endereco : std_logic_vector (8 downto 0);
  signal saida_dados_RAM : std_logic_vector (7 downto 0);
  signal saida_dados_ROM : std_logic_vector (12 downto 0);
  signal Sinais_Controle : std_logic_vector (11 downto 0);
  signal saida_MUX : std_logic_vector (7 downto 0);
  signal saida_MUX4x1 : std_logic_vector (8 downto 0);------------ NOVO
  signal saida_ULA : std_logic_vector (7 downto 0);
  signal saida_regend_mux4x1 : std_logic_vector (8 downto 0);------------ NOVO
  signal REG1_ULA_A : std_logic_vector (7 downto 0);
  signal Entrada_Flag : std_logic;------------ NOVO
  signal Saida_Flag : std_logic;------------ NOVO

  -- Sinais de Controle
  signal Habilita_regend : std_logic;------------ NOVO
  signal JMP : std_logic;------------ NOVO
  signal RET : std_logic;------------ NOVO
  signal JSR : std_logic;------------ NOVO
  signal JEQ : std_logic;------------ NOVO
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal Operacao_ULA :std_logic_vector (1 downto 0);
  signal habFlag : std_logic;
  signal hab_leitura : std_logic;
  signal hab_escrita : std_logic;
  signal SelMUX4x1 : std_logic_vector (1 downto 0);------------ NOVO

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;

-- OK
MUX1 : entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
       port map(entradaA_MUX => saida_dados_RAM,
                entradaB_MUX => saida_dados_ROM(7 downto 0),
                seletor_MUX => SelMUX,
                saida_MUX => saida_MUX);
			    
-- OK
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
       port map (DIN => saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => '0');

-- OK
PC : entity work.registradorGenerico   generic map (larguraDados => tamanhoROM)
     port map (DIN => saida_MUX4x1, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => '0');

-- OK
incrementaPC : entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
               port map(entrada => Endereco, saida => proxPC);
	
-- OK
reg_endretorno : entity work.reg_endretorno generic map (larguraDados => larguraEnderecos)
                 port map (DIN => proxPC, DOUT => saida_regend_mux4x1, ENABLE => Habilita_regend, CLK => CLK, RST => '0');

-- OK
MUX4x1: entity work.muxGenerico4x1  generic map (larguraDados => larguraEnderecos)
        port map(entradaA_MUX => proxPC,
                 entradaB_MUX => saida_dados_ROM(8 downto 0),
                 entradaC_MUX => saida_regend_mux4x1,
                 entradaD_MUX => "000000000",
                 seletor_MUX => SelMUX4x1,
                 saida_MUX => saida_MUX4x1);
					  
-- OK
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
       port map (entradaA => REG1_ULA_A, entradaB => saida_MUX, saida => saida_ULA, saidaNOR => Entrada_Flag, seletor => Operacao_ULA);
		 
-- OK
flagIgual : entity work.flipFlop  generic map (larguraDados => 1)
            port map (DIN => Entrada_Flag, DOUT => Saida_Flag, ENABLE => habFlag, CLK => CLK, RST => '0');

-- 0K
ROM_instrucao : entity work.memoriaROM   generic map (dataWidth => dadoROM, addrWidth => tamanhoROM)
                port map (Endereco => Endereco, Dado => saida_dados_ROM);

-- OK			 
decoder : entity work.decoder
          port map( opcode => saida_dados_ROM(12 downto 9),
                    flagIgual => Saida_Flag,
                    saida => Sinais_Controle,
					saidaMux => SelMUX4x1);

-- OK
MemoriaRAM : entity work.memoriaRAM   generic map (dataWidth => dadoRAM, addrWidth => tamanhoRAM)
             port map (addr => saida_dados_ROM(7 downto 0), we => hab_escrita, re => hab_leitura, habilita => saida_dados_ROM(8) , dado_in => REG1_ULA_A, dado_out => saida_dados_RAM, clk => CLK);


-- Sinais de Controle
Habilita_regend <= Sinais_Controle(11);
JMP <= Sinais_Controle(10);
RET <= Sinais_Controle(9);
JSR <= Sinais_Controle(8);
JEQ <= Sinais_Controle(7);
selMUX <= Sinais_Controle(6);
Habilita_A <= Sinais_Controle(5);
Operacao_ULA <= Sinais_Controle(4 downto 3);
habFlag <= Sinais_Controle(2);
hab_leitura <= Sinais_Controle(1);
hab_escrita <= Sinais_Controle(0);

PC_OUT <= Endereco;

saida_acumulador <= REG1_ULA_A;
saida_decoder <= Sinais_Controle;

out_mux4x1 <= saida_MUX4x1;
out_regend <= saida_regend_mux4x1;

end architecture;