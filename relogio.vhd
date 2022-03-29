library ieee;
use ieee.std_logic_1164.all;

entity relogio is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
            larguraEnderecos : natural := 9;
            
            tamanhoROM: natural := 9;
            dadoROM: natural := 13;

            tamanhoRAM: natural := 8;
            dadoRAM: natural := 6;
            
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
  signal saidaDadosRAM : std_logic_vector (7 downto 0);
  signal saidaDadosROM : std_logic_vector (12 downto 0);
  signal sinaisControle : std_logic_vector (11 downto 0);
  signal saida_MUX : std_logic_vector (7 downto 0);
  signal saida_MUX4x1 : std_logic_vector (8 downto 0);
  signal saidaULA : std_logic_vector (7 downto 0);
  signal saidaRegendMux4x1 : std_logic_vector (8 downto 0);
  signal reg1UlaA : std_logic_vector (7 downto 0);
  signal entradaFlag : std_logic;
  signal saidaFlag : std_logic;

  -- NOVO
  signal saidaDecoderHabBloc : std_logic_vector (7 downto 0);
  signal saidaDecoderHabBloc0 : std_logic;
  signal saidaDecoderHabBloc1 : std_logic;
  signal saidaDecoderHabBloc2 : std_logic;
  signal saidaDecoderHabBloc3 : std_logic;
  signal saidaDecoderHabBloc4 : std_logic;
  signal saidaDecoderHabBloc5 : std_logic;
  signal saidaDecoderHabBloc6 : std_logic;
  signal saidaDecoderHabBloc7 : std_logic;


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

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
gravar:  if simulacao generate
CLK <= KEY(0);
else generate
detectorSub0: work.edgeDetector(bordaSubida)
        port map (clk => CLOCK_50, entrada => (not KEY(0)), saida => CLK);
end generate;


MUX1 : entity work.muxGenerico2x1  generic map (larguraDados => larguraDados)
       port map(entradaA_MUX => saidaDadosRAM,
                entradaB_MUX => saidaDadosROM(7 downto 0),
                seletor_MUX => SelMUX,
                saida_MUX => saida_MUX);
			    

REGA : entity work.registradorGenerico   generic map (larguraDados => larguraDados)
       port map (DIN => saidaULA, 
                 DOUT => reg1UlaA, 
                 ENABLE => Habilita_A, 
                 CLK => CLK, 
                 RST => '0');


PC : entity work.registradorGenerico   generic map (larguraDados => tamanhoROM)
     port map (DIN => saida_MUX4x1, 
               DOUT => Endereco, 
               ENABLE => '1', 
               CLK => CLK, 
               RST => '0');


IncrementaPC : entity work.somaConstante  generic map (larguraDados => larguraEnderecos, constante => 1)
               port map(entrada => Endereco, 
                        saida => proxPC);
	

reg_endretorno : entity work.registradorGenerico generic map (larguraDados => larguraEnderecos)
                 port map (DIN => proxPC, 
                           DOUT => saidaRegendMux4x1, 
                           ENABLE => Habilita_regend, 
                           CLK => CLK, 
                           RST => '0');


MUX4x1: entity work.muxGenerico4x1  generic map (larguraDados => larguraEnderecos)
        port map(entradaA_MUX => proxPC,
                 entradaB_MUX => saidaDadosROM(8 downto 0),
                 entradaC_MUX => saidaRegendMux4x1,
                 entradaD_MUX => "000000000",
                 seletor_MUX => SelMUX4x1,
                 saida_MUX => saida_MUX4x1);
					  

ULA : entity work.ULASomaSub  generic map(larguraDados => larguraDados)
       port map (entradaA => reg1UlaA, 
                 entradaB => saida_MUX, 
                 saida => saidaULA, 
                 saidaNOR => entradaFlag, 
                 seletor => Operacao_ULA);
		 

FlagIgual : entity work.flipFlop  generic map (larguraDados => 1)
            port map (DIN => entradaFlag, 
                      DOUT => saidaFlag, 
                      ENABLE => habFlag, 
                      CLK => CLK, 
                      RST => '0');


ROM_instrucao : entity work.memoriaROM   generic map (dataWidth => dadoROM, addrWidth => tamanhoROM)
                port map (Endereco => Endereco, 
                          Dado => saidaDadosROM);          

			 
DecoderInstruction : entity work.DecoderInstruction
                     port map(opcode => saidaDadosROM(12 downto 9),
                              flagIgual => saidaFlag,
                              saida => sinaisControle,
                              saidaMux => SelMUX4x1);

			 
DecoderHabBloc : entity work.DecoderInstruction
          port map(entrada => saidaDadosROM(6 downto 8),
                   saida => sinaisControle
					         );

DecoderSelEnd : entity work.DecoderInstruction
port map(entrada => saidaDadosROM(0 downto 2),
        saida => sinaisControle
        );
         


MemoriaRAM : entity work.memoriaRAM   generic map (dataWidth => dadoRAM, addrWidth => tamanhoRAM)
             port map (addr => saidaDadosROM(5 downto 0), 
                       we => hab_escrita, 
                       re => hab_leitura, 
                       habilita => saidaDecoderHabBloc0, 
                       dado_in => reg1UlaA, 
                       dado_out => saidaDadosRAM, 
                       clk => CLK);


-- Sinais de Controle
Habilita_regend <= sinaisControle(11);
JMP <= sinaisControle(10);
RET <= sinaisControle(9);
JSR <= sinaisControle(8);
JEQ <= sinaisControle(7);
selMUX <= sinaisControle(6);
Habilita_A <= sinaisControle(5);
Operacao_ULA <= sinaisControle(4 downto 3);
habFlag <= sinaisControle(2);
hab_leitura <= sinaisControle(1);
hab_escrita <= sinaisControle(0);


-- Sinais do Decoder Habilita Bloc 
saidaDecoderHabBloc0 <= saidaDecoderHabBloc(0);
saidaDecoderHabBloc1 <= saidaDecoderHabBloc(1);
saidaDecoderHabBloc2 <= saidaDecoderHabBloc(2);
saidaDecoderHabBloc3 <= saidaDecoderHabBloc(3);
saidaDecoderHabBloc4 <= saidaDecoderHabBloc(4);
saidaDecoderHabBloc5 <= saidaDecoderHabBloc(5);
saidaDecoderHabBloc6 <= saidaDecoderHabBloc(6);
saidaDecoderHabBloc7 <= saidaDecoderHabBloc(7);


-- Sinais observados simulacao
PC_OUT <= Endereco;
saida_acumulador <= reg1UlaA;
saida_decoder <= sinaisControle;
out_mux4x1 <= saida_MUX4x1;
out_regend <= saidaRegendMux4x1;

end architecture;