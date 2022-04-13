library ieee;
use ieee.std_logic_1164.all;

entity processador is
  -- Total de bits das entradas e saidas
  generic (larguraDados : natural := 8;
           larguraEnderecos : natural := 9
  );
  port   (
    CLK: in std_logic;
    RST: in std_logic;
    Instruction_IN: in std_logic_vector(12 downto 0);
    Data_IN: in std_logic_vector(7 downto 0);
    Data_OUT: out std_logic_vector(7 downto 0);
    Data_Address: out std_logic_vector(8 downto 0);
    Control: out std_logic_vector(1 downto 0); --Rd(1), Wr(0)
    ROM_Address: out std_logic_vector(8 downto 0)
  );
end entity;


architecture arquitetura of processador is
  signal proxPC : std_logic_vector (8 downto 0);
  signal Endereco : std_logic_vector (8 downto 0);
  signal Sinais_Controle : std_logic_vector (11 downto 0);
  signal saida_MUX : std_logic_vector (7 downto 0);
  signal saida_MUX4x1 : std_logic_vector (8 downto 0);
  signal saida_ULA : std_logic_vector (7 downto 0);
  signal saida_regend_mux4x1 : std_logic_vector (8 downto 0);
  signal REG1_ULA_A : std_logic_vector (7 downto 0);
  signal Entrada_Flag : std_logic;
  signal Saida_Flag : std_logic;

  -- Sinais de Controle
  signal Habilita_regend : std_logic;
  signal JMP : std_logic;
  signal RET : std_logic;
  signal JSR : std_logic;
  signal JEQ : std_logic;
  signal SelMUX : std_logic;
  signal Habilita_A : std_logic;
  signal Operacao_ULA :std_logic_vector (1 downto 0);
  signal habFlag : std_logic;
  signal hab_leitura : std_logic;
  signal hab_escrita : std_logic;
  signal SelMUX4x1 : std_logic_vector (1 downto 0);

begin

    
MUX1 : entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
       port map(entradaA_MUX => Data_IN,
                entradaB_MUX => Instruction_IN(7 downto 0),
                seletor_MUX => SelMUX,
                saida_MUX => saida_MUX);
			    
                
REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
       port map (DIN => saida_ULA, DOUT => REG1_ULA_A, ENABLE => Habilita_A, CLK => CLK, RST => RST);

       
PC : entity work.registradorGenerico   generic map (larguraDados => larguraEnderecos)
     port map (DIN => saida_MUX4x1, DOUT => Endereco, ENABLE => '1', CLK => CLK, RST => RST);

     
incrementaPC : entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
               port map(entrada => Endereco, saida => proxPC);
	
               
reg_endretorno : entity work.reg_endretorno generic map (larguraDados => larguraEnderecos)
                 port map (DIN => proxPC, DOUT => saida_regend_mux4x1, ENABLE => Habilita_regend, CLK => CLK, RST => RST);

                 
MUX4x1: entity work.muxGenerico4x1  generic map (larguraDados => larguraEnderecos)
        port map(entradaA_MUX => proxPC,
                 entradaB_MUX => Instruction_IN(8 downto 0),
                 entradaC_MUX => saida_regend_mux4x1,
                 entradaD_MUX => "000000000",
                 seletor_MUX => SelMUX4x1,
                 saida_MUX => saida_MUX4x1);
					  
                 
ULA1 : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
       port map (entradaA => REG1_ULA_A, entradaB => saida_MUX, saida => saida_ULA, saidaNOR => Entrada_Flag, seletor => Operacao_ULA);
		 
       
flagIgual : entity work.flipFlop  generic map (larguraDados => 1)
            port map (DIN => Entrada_Flag, DOUT => Saida_Flag, ENABLE => habFlag, CLK => CLK, RST => RST);

                
decoder : entity work.decoder
          port map(opcode => Instruction_IN(12 downto 9),
                   flagIgual => Saida_Flag,
                   saida => Sinais_Controle,
				   saidaMux => SelMUX4x1);


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


-- Atribuido sinais de saída
ROM_Address <= Endereco;
Data_OUT <= REG1_ULA_A;
Data_Address <= Instruction_IN(8 downto 0);
Control(0) <= hab_escrita;
Control(1) <= hab_leitura;

end architecture;