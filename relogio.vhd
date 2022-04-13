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
  );
end entity;


architecture arquitetura of relogio is

  CLK: in std_logic;
  RST: in std_logic;
  Instruction_IN: in std_logic_vector(12 downto 0);
  Data_IN: in std_logic_vector(7 downto 0);
  Data_OUT: out std_logic_vector(7 downto 0);
  Data_Address: out std_logic_vector(8 downto 0);
  Control: out std_logic_vector(1 downto 0); --Rd(1), Wr(0)
  ROM_Address: out std_logic_vector(8 downto 0)

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


ROM_instrucao : entity work.memoriaROM   generic map (dataWidth => dadoROM, addrWidth => tamanhoROM)
                port map (Endereco => ROM_Address, 
                          Dado => Saida_ROM);


MemoriaRAM : entity work.memoriaRAM   generic map (dataWidth => dadoRAM, addrWidth => tamanhoRAM)
             port map (addr => Data_Address(5 downto 0), 
                       we => Control(0), 
                       re => Control(1), 
                       habilita => bloco4, 
                       dado_in => Data_OUT, 
                       dado_out => Saida_RAM, 
                       clk => CLK);


Processador: entity work.processador generic map (larguraDados => larguraDados, larguraEnderecos => larguraEnderecos)
             port map (
              CLK => CLK,
              RST => '0',
              Instruction_IN => Saida_ROM,
              Data_IN => Saida_RAM,
              Data_OUT => Data_OUT,
              Data_Address => Data_Address,
              Control => Control,
              ROM_Address => ROM_Address);        


DecoderHabBloc : entity work.DecoderAddress
                 port map(entrada => Data_Address(8 downto 6),
                          saida => blocos);


DecoderSelEnd : entity work.DecoderAddress
                port map(entrada => Data_Address(0 downto 2),
                         saida => sinaisControle);


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
                                    

-- Sinal de Controle LEDS ou HEX
dataAddressA5_LED <= not(Data_Address(5));
dataAddressA5_HEX <= Data_Address(5);

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

end architecture;