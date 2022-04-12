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
  signal dataAddressA5_LED : std_logic;
  signal dataAddressA5_HEX : std_logic;
  signal saidaAndLedR: std_logic;
  signal saidaAndLed1: std_logic;
  signal saidaAndLed2: std_logic;

  signal blocos : std_logic_vector (7 downto 0);
  signal bloco0 : std_logic;
  signal bloco1 : std_logic;
  signal bloco2 : std_logic;
  signal bloco3 : std_logic;
  signal bloco4 : std_logic;
  signal bloco5 : std_logic;
  signal bloco6 : std_logic;
  signal bloco7 : std_logic;

  signal enderecos : std_logic_vector (7 downto 0);
  signal endereco0 : std_logic;
  signal endereco1 : std_logic;
  signal endereco2 : std_logic;
  signal endereco3 : std_logic;
  signal endereco4 : std_logic;
  signal endereco5 : std_logic;
  signal endereco6 : std_logic;
  signal endereco7 : std_logic;


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


DecoderHabBloc : entity work.DecoderAddress
                 port map(entrada => saidaDadosROM(8 downto 6),
                          saida => blocos);


DecoderSelEnd : entity work.DecoderAddress
                port map(entrada => saidaDadosROM(0 downto 2),
                         saida => sinaisControle);
         

MemoriaRAM : entity work.memoriaRAM   generic map (dataWidth => dadoRAM, addrWidth => tamanhoRAM)
             port map (addr => saidaDadosROM(5 downto 0), 
                       we => hab_escrita, 
                       re => hab_leitura, 
                       habilita => bloco0, 
                       dado_in => reg1UlaA, 
                       dado_out => saidaDadosRAM, 
                       clk => CLK);

                       
AndLed2 : entity work.AND_logic generic map(larguraDados => 1)
          port map (entradaA => hab_escrita, 
                    entradaB => bloco4, 
                    entradaC => dataAddressA5_LED,
                    entradaD => endereco2,
                    saida => saidaAndLed2);
          

AndLed1 : entity work.AND_logic generic map(larguraDados => 1)
          port map (entradaA => hab_escrita, 
                    entradaB => bloco4, 
                    entradaC => endereco1, 
                    entradaD => dataAddressA5_LED,
                    saida => saidaAndLed1);


AndLedR : entity work.AND_logic generic map(larguraDados => 1)
          port map (entradaA => hab_escrita, 
                    entradaB => bloco4, 
                    entradaC => endereco0, 
                    entradaD => dataAddressA5_LED,
                    saida => saidaAndLedR);
                                     

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

-- Sinal de Controle LEDS ou HEX
dataAddressA5_LED <= not(saidaDadosROM(5));
dataAddressA5_HEX <= saidaDadosROM(5);

-- Sinais do Decoder Habilita Bloc 
bloco0 <= blocos(0); --   0 ~ 63
bloco1 <= blocos(1); --  64 ~ 127
bloco2 <= blocos(2); -- 128 ~ 191
bloco3 <= blocos(3); -- 192 ~ 255
bloco4 <= blocos(4); -- 356 ~ 319
bloco5 <= blocos(5); -- 320 ~ 383
bloco6 <= blocos(6); -- 384 ~ 447
bloco7 <= blocos(7); -- 448 ~ 511

-- Sinais do Decoder de Enderecos
endereco0 <= enderecos(0); 
endereco1 <= enderecos(1); 
endereco2 <= enderecos(2); 
endereco3 <= enderecos(3); 
endereco4 <= enderecos(4); 
endereco5 <= enderecos(5); 
endereco6 <= enderecos(6); 
endereco7 <= enderecos(7); 


-- Sinais observados simulacao
PC_OUT <= Endereco;
saida_acumulador <= reg1UlaA;
saida_decoder <= sinaisControle;
out_mux4x1 <= saida_MUX4x1;
out_regend <= saidaRegendMux4x1;

end architecture;