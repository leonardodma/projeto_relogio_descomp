library ieee;
use ieee.std_logic_1164.all;

entity relogio is
  -- Total de bits das entradas e saidas
  generic ( larguraDados : natural := 8;
            larguraEnderecos : natural := 9;
            
            tamanhoROM: natural := 9;
            dadoROM: natural := 13;

            tamanhoRAM: natural := 6;
            dadoRAM: natural := 8;
				
				    --divisor_s : natural := 10000000;
				    --divisor_rapido: natural := 500;
            
            simulacao : boolean := FALSE -- para gravar na placa, altere de TRUE para FALSE
  );
  port   (
    CLOCK_50 : in std_logic;
    KEY: in std_logic_vector(3 downto 0);
	 FPGA_RESET_N : in std_logic;
    SW: in std_logic_vector(9 downto 0);
    PC_OUT: out std_logic_vector(larguraEnderecos-1 downto 0);
    LEDR  : out std_logic_vector(9 downto 0);
    HEX0, HEX1, HEX2, HEX3, HEX4, HEX5 : out std_logic_vector(6 downto 0);
	 
    SAIDA_AND_HEX0: out std_logic;
    DIN_HEX: out std_logic_vector(3 downto 0);
    SAIDA_AND_HEX1: out std_logic;
    SAIDA_AND_HEX2: out std_logic;
    SAIDA_AND_HEX3: out std_logic;
    SAIDA_AND_HEX4: out std_logic;
    SAIDA_AND_HEX5: out std_logic;
    SAIDA_AND_LED8: out std_logic;
    SAIDA_AND_LED9: out std_logic;
    SAIDA_AND_SW0_7: out std_logic;
	 
	  CONTROLES: out std_logic_vector(3 downto 0);

    ACUMULADOR: out std_logic_vector(7 downto 0);
    INSTRUCAO: out std_logic_vector(12 downto 0)
    
  );
end entity;


architecture arquitetura of relogio is

  signal CLK : std_logic;
  signal CLK_Rapido : std_logic;
  signal CLK_S : std_logic;
  signal RST: std_logic;
  
  -- Precessor signals
  signal Instruction_IN: std_logic_vector(12 downto 0);
  signal Data_IN: std_logic_vector(7 downto 0);
  signal Data_OUT: std_logic_vector(7 downto 0);
  signal Data_Address: std_logic_vector(8 downto 0);
  signal Control: std_logic_vector(3 downto 0); --Rd(1), Wr(0)
  signal ROM_Address: std_logic_vector(8 downto 0);
  signal hab_escrita: std_logic;
  signal hab_leitura : std_logic;

  -- NOVO
  signal dataAddressA5_Invertido : std_logic;
  signal dataAddressA5 : std_logic;

  -- ANDS
    -- leds
  signal saidaAndLedR: std_logic;
  signal saidaAndLed8: std_logic;
  signal saidaAndLed9: std_logic;

    -- hex
  signal saidaAndHEX0: std_logic;
  signal saidaAndHEX1: std_logic;
  signal saidaAndHEX2: std_logic;
  signal saidaAndHEX3: std_logic;
  signal saidaAndHEX4: std_logic;
  signal saidaAndHEX5: std_logic;

    -- sw
  signal saidaAndSW0_7: std_logic;
  signal saidaAndSW8: std_logic;
  signal saidaAndSW9: std_logic;

    -- key
  signal edgeDetector_key0: std_logic;
  signal edgeDetector_key1: std_logic;
  signal edgeDetector_key2: std_logic;
  
  signal saidaDbMemKEY0: std_logic;
  signal saidaDbMemKEY1: std_logic;
  signal saidaDbMemKEY2: std_logic;

  
  signal saidaAndKEY0: std_logic;
  signal saidaAndKEY1: std_logic;
  signal saidaAndKEY2: std_logic;
  signal saidaAndKEY3: std_logic;
  signal saidaANDFPGA_RESET: std_logic;

  -- FLIP FLOPS
  signal saidaFlipFlopLed9: std_logic;
  signal saidaFlipFlopLed8: std_logic;
  signal saidaRegistradorLedR: std_logic_vector(7 downto 0);

  -- REGISTRADORES
  signal saidaRegistradorHEX0: std_logic_vector(3 downto 0);
  signal saidaRegistradorHEX1: std_logic_vector(3 downto 0);
  signal saidaRegistradorHEX2: std_logic_vector(3 downto 0);
  signal saidaRegistradorHEX3: std_logic_vector(3 downto 0);
  signal saidaRegistradorHEX4: std_logic_vector(3 downto 0);
  signal saidaRegistradorHEX5: std_logic_vector(3 downto 0);

  -- DECODERS HEX
  signal saidaDecoderHEX0: std_logic_vector(6 downto 0);
  signal saidaDecoderHEX1: std_logic_vector(6 downto 0);
  signal saidaDecoderHEX2: std_logic_vector(6 downto 0);
  signal saidaDecoderHEX3: std_logic_vector(6 downto 0);
  signal saidaDecoderHEX4: std_logic_vector(6 downto 0);
  signal saidaDecoderHEX5: std_logic_vector(6 downto 0);

  -- BLOCOS
  signal blocos : std_logic_vector (7 downto 0);
  signal bloco0 : std_logic;
  signal bloco1 : std_logic;
  signal bloco2 : std_logic;
  signal bloco3 : std_logic;
  signal bloco4 : std_logic;
  signal bloco5 : std_logic;
  signal bloco6 : std_logic;
  signal bloco7 : std_logic;

  -- ENDERECOS
  signal enderecos : std_logic_vector (7 downto 0);
  signal endereco0 : std_logic;
  signal endereco1 : std_logic;
  signal endereco2 : std_logic;
  signal endereco3 : std_logic;
  signal endereco4 : std_logic;
  signal endereco5 : std_logic;
  signal endereco6 : std_logic;
  signal endereco7 : std_logic;

begin

-- Instanciando os componentes:

-- Para simular, fica mais simples tirar o edgeDetector
--gravar:  if simulacao generate
--CLK <= CLOCK_50;
--else generate
--detectorSub0: work.edgeDetector(bordaSubida)
--        port map (clk => CLOCK_50, entrada => CLOCK_50, saida => CLK);
--end generate;


--CLK <= CLOCK_50;

divisor_rapido : entity work.divisorGenerico  generic map (divisor => 500)
                 port map (clk => CLOCK_50, saida_clk => CLK_Rapido);
			 
divisor_segundo : entity work.divisorGenerico  generic map (divisor => 250000)
                  port map (clk => CLOCK_50, saida_clk => CLK_S);
			 
			 
MUX_CLOCK : entity work.muxGenerico2x1Bin
				port map(entradaA_MUX => CLK_Rapido,
							entradaB_MUX => CLK_S,
							seletor_MUX => SW(9),
							saida_MUX => CLK);

-- MEMÓRIA ROM
ROM_instrucao : entity work.memoriaROM   generic map (dataWidth => dadoROM, addrWidth => tamanhoROM)
                port map (Endereco => ROM_Address, 
                          Dado => Instruction_IN);


-- MEMÓRIA RAM                          
MemoriaRAM : entity work.memoriaRAM   generic map (dataWidth => dadoRAM, addrWidth => tamanhoRAM)
             port map (addr => Data_Address(5 downto 0), 
                       we => hab_escrita, 
                       re => hab_leitura, 
                       habilita => bloco0, 
                       dado_in => Data_OUT, 
                       dado_out => Data_IN, 
                       clk => CLK);


-- PROCESSADOR (AULA 05)                       
Processador: entity work.processador generic map (larguraDados => larguraDados, larguraEnderecos => larguraEnderecos)
             port map (
              CLK => CLK,
              RST => RST,
              Instruction_IN => Instruction_IN,
              Data_IN => Data_IN,
              Data_OUT => Data_OUT,
              Data_Address => Data_Address,
              Control => Control,
              ROM_Address => ROM_Address);        

-- DECODIFICADORES DE BLOCOS E ENDERECOS
DecoderHabBloc : entity work.DecoderAddress
                 port map(entrada => Data_Address(8 downto 6),
                          saida => blocos);

DecoderSelEnd : entity work.DecoderAddress
                port map(entrada => Data_Address(2 downto 0),
                         saida => enderecos);


-- Portas ANDS
  -- LEDs
AndLed9 : entity work.AND_logic generic map(larguraDados => 1)
          port map (entradaA => hab_escrita, 
                    entradaB => bloco4, 
                    entradaC => dataAddressA5_Invertido,
                    entradaD => endereco2,
                    saida    => saidaAndLed9);        

AndLed8 : entity work.AND_logic generic map(larguraDados => 1)
          port map (entradaA => hab_escrita, 
                    entradaB => bloco4, 
                    entradaC => endereco1, 
                    entradaD => dataAddressA5_Invertido,
                    saida    => saidaAndLed8);

AndLedR : entity work.AND_logic generic map(larguraDados => 1)
          port map (entradaA => hab_escrita, 
                    entradaB => bloco4, 
                    entradaC => endereco0, 
                    entradaD => dataAddressA5_Invertido,
                    saida    => saidaAndLedR);
  -- HEX
AndHEX0 : entity work.AND_logic generic map(larguraDados => 1)
          port map (entradaA => hab_escrita, 
                    entradaB => bloco4, 
                    entradaC => endereco0, 
                    entradaD => dataAddressA5,
                    saida    => saidaAndHEX0);
                               
AndHEX1 : entity work.AND_logic generic map(larguraDados => 1)
          port map (entradaA => hab_escrita, 
                    entradaB => bloco4, 
                    entradaC => endereco1, 
                    entradaD => dataAddressA5,
                    saida    => saidaAndHEX1);

AndHEX2 : entity work.AND_logic generic map(larguraDados => 1)
          port map (entradaA => hab_escrita, 
                    entradaB => bloco4, 
                    entradaC => endereco2, 
                    entradaD => dataAddressA5,
                    saida    => saidaAndHEX2);

AndHEX3 : entity work.AND_logic generic map(larguraDados => 1)
          port map (entradaA => hab_escrita, 
                    entradaB => bloco4, 
                    entradaC => endereco3, 
                    entradaD => dataAddressA5,
                    saida    => saidaAndHEX3);            

AndHEX4 : entity work.AND_logic generic map(larguraDados => 1)
          port map (entradaA => hab_escrita, 
                    entradaB => bloco4, 
                    entradaC => endereco4, 
                    entradaD => dataAddressA5,
                    saida    => saidaAndHEX4);

AndHEX5 : entity work.AND_logic generic map(larguraDados => 1)
          port map (entradaA => hab_escrita, 
                    entradaB => bloco4, 
                    entradaC => endereco5, 
                    entradaD => dataAddressA5,
                    saida    => saidaAndHEX5);

  -- SW
AndSW0_7 : entity work.AND_logic generic map(larguraDados => 1)
           port map (entradaA => hab_leitura, 
                     entradaB => bloco5, 
                     entradaC => endereco0, 
                     entradaD => dataAddressA5_Invertido,
                     saida    => saidaAndSW0_7);

AndSW8 : entity work.AND_logic generic map(larguraDados => 1)
         port map (entradaA => hab_leitura, 
                   entradaB => bloco5, 
                   entradaC => endereco1, 
                   entradaD => dataAddressA5_Invertido,
                   saida    => saidaAndSW8);

AndSW9 : entity work.AND_logic generic map(larguraDados => 1)
         port map (entradaA => hab_leitura, 
                   entradaB => bloco5, 
                   entradaC => endereco2, 
                   entradaD => dataAddressA5_Invertido,
                   saida    => saidaAndSW9);

  -- KEY
AndKEY0 : entity work.AND_logic generic map(larguraDados => 1)
          port map (entradaA => hab_leitura, 
                    entradaB => bloco5, 
                    entradaC => endereco0, 
                    entradaD => dataAddressA5,
                    saida    => saidaAndKEY0);

AndKEY1 : entity work.AND_logic generic map(larguraDados => 1)
          port map (entradaA => hab_leitura, 
                    entradaB => bloco5, 
                    entradaC => endereco1, 
                    entradaD => dataAddressA5,
                    saida    => saidaAndKEY1);

AndKEY2 : entity work.AND_logic generic map(larguraDados => 1)
          port map (entradaA => hab_leitura, 
                    entradaB => bloco5, 
                    entradaC => endereco2, 
                    entradaD => dataAddressA5,
                    saida    => saidaAndKEY2); 
 
AndKEY3 : entity work.AND_logic generic map(larguraDados => 1)
          port map (entradaA => hab_leitura, 
                    entradaB => bloco5, 
                    entradaC => endereco3, 
                    entradaD => dataAddressA5,
                    saida    => saidaAndKEY3);     

AndKEY_RESET : entity work.AND_logic generic map(larguraDados => 1)
               port map (entradaA => hab_leitura, 
                         entradaB => bloco5, 
                         entradaC => endereco4, 
                         entradaD => dataAddressA5,
                         saida    => saidaANDFPGA_RESET); 

-- FLIP FLOPS E REGISTRADORES DOS LEDS E DISPLAYS HEX
flipFlopLed9 : entity work.flipFlop  generic map (larguraDados => 1)
               port map (DIN => Data_OUT(0), 
                         DOUT => saidaFlipFlopLed9, 
                         ENABLE => saidaAndLed9, 
                         CLK => CLK, 
                         RST => RST);

flipFlopLed8 : entity work.flipFlop  generic map (larguraDados => 1)
               port map (DIN => Data_OUT(0), 
                         DOUT => saidaFlipFlopLed8, 
                         ENABLE => saidaAndLed8, 
                         CLK => CLK, 
                         RST => RST);

RegistradorLedR: entity work.registradorGenerico generic map (larguraDados => larguraDados)
                 port map (DIN => Data_OUT, 
                           DOUT => saidaRegistradorLedR, 
                           ENABLE => saidaAndLedR, 
                           CLK => CLK, 
                           RST => RST);
                                    
RegistradorHEX0: entity work.registradorGenerico generic map (larguraDados => 4)
                 port map (DIN => Data_OUT(3 downto 0), 
                           DOUT => saidaRegistradorHEX0, 
                           ENABLE => saidaAndHEX0, 
                           CLK => CLK, 
                           RST => RST);

RegistradorHEX1: entity work.registradorGenerico generic map (larguraDados => 4)
                 port map (DIN => Data_OUT(3 downto 0), 
                           DOUT => saidaRegistradorHEX1, 
                           ENABLE => saidaAndHEX1, 
                           CLK => CLK, 
                           RST => RST);
                           
RegistradorHEX2: entity work.registradorGenerico generic map (larguraDados => 4)
                 port map (DIN => Data_OUT(3 downto 0), 
                           DOUT => saidaRegistradorHEX2, 
                           ENABLE => saidaAndHEX2, 
                           CLK => CLK, 
                           RST => RST);

RegistradorHEX3: entity work.registradorGenerico generic map (larguraDados => 4)
                 port map (DIN => Data_OUT(3 downto 0), 
                           DOUT => saidaRegistradorHEX3, 
                           ENABLE => saidaAndHEX3, 
                           CLK => CLK, 
                           RST => RST);

RegistradorHEX4: entity work.registradorGenerico generic map (larguraDados => 4)
                 port map (DIN => Data_OUT(3 downto 0), 
                           DOUT => saidaRegistradorHEX4, 
                           ENABLE => saidaAndHEX4, 
                           CLK => CLK, 
                           RST => RST);

RegistradorHEX5: entity work.registradorGenerico generic map (larguraDados => 4)
                 port map (DIN => Data_OUT(3 downto 0), 
                           DOUT => saidaRegistradorHEX5, 
                           ENABLE => saidaAndHEX5, 
                           CLK => CLK, 
                           RST => RST);


-- ATRIBUIÇÃO DECODER
decoderHEX0 : entity work.conversorHex7Seg
              port map(dadoHex => saidaRegistradorHEX0,
                       apaga =>  '0',
                       negativo => '0',
                       overFlow =>  '0',
                       saida7seg => saidaDecoderHEX0);
                    
decoderHEX1 : entity work.conversorHex7Seg
              port map(dadoHex => saidaRegistradorHEX1,
                       apaga =>  '0',
                       negativo => '0',
                       overFlow =>  '0',
                       saida7seg => saidaDecoderHEX1);
                
decoderHEX2 : entity work.conversorHex7Seg
              port map(dadoHex => saidaRegistradorHEX2,
                       apaga =>  '0',
                       negativo => '0',
                       overFlow =>  '0',
                       saida7seg => saidaDecoderHEX2);
                      
decoderHEX3 : entity work.conversorHex7Seg
              port map(dadoHex => saidaRegistradorHEX3,
                       apaga =>  '0',
                       negativo => '0',
                       overFlow =>  '0',
                       saida7seg => saidaDecoderHEX3);

decoderHEX4 : entity work.conversorHex7Seg
              port map(dadoHex => saidaRegistradorHEX4,
                       apaga =>  '0',
                       negativo => '0',
                       overFlow =>  '0',
                       saida7seg => saidaDecoderHEX4);

decoderHEX5 : entity work.conversorHex7Seg
              port map(dadoHex => saidaRegistradorHEX5,
                       apaga =>  '0',
                       negativo => '0',
                       overFlow =>  '0',
                       saida7seg => saidaDecoderHEX5);
                      
                      
-- ATRIBUIÇÕES 3STATE SW
buffer3State_SW0_7 :  entity work.buffer3State_8portas
                      port map(entrada => SW(7 downto 0), 
                               habilita => saidaAndSW0_7, 
                               saida => Data_IN) ;

buffer3State_SW8 :  entity work.buffer3State_1porta
                    port map(entrada => SW(8), 
                             habilita => saidaAndSW8,
                             saida => Data_IN(0)) ;

buffer3State_SW9 :  entity work.buffer3State_1porta
                    port map(entrada => SW(9), 
                             habilita => saidaAndSW9,
                             saida => Data_IN(0));
                             
-- ATRIBUIÇÕES 3STATE KEY

--DebouceMem_key0: work.edgeDetector(bordaSubida)
--        port map (clk => CLK, entrada => KEY(0), saida => edgeDetector_key0);
		  
--FFDebouceMem_key0: entity work.flipFlop  generic map (larguraDados => 1)
--               port map (DIN => '1', 
--                         DOUT => saidaDbMemKEY0, 
--                         ENABLE => '1', 
--                         CLK => edgeDetector_key0, 
--                         RST => bloco7);
								 
buffer3State_KEY0 :   entity work.buffer3State_1porta
                      port map(entrada => KEY(0),
                               habilita => saidaAndKEY0, 
                               saida => Data_IN(0));

DebouceMem_key1: entity work.edgeDetector(bordaSubida)
                 port map (clk => CLK, entrada => (not KEY(1)), saida => edgeDetector_key1);

FFDebouceMem_key1: entity work.flipFlop  generic map (larguraDados => 1)
                  port map (DIN => '1', 
                            DOUT => saidaDbMemKEY1, 
                            ENABLE => '1', 
                            CLK => edgeDetector_key1, 
                            RST => bloco7);                                 

buffer3State_KEY1 :   entity work.buffer3State_1porta
                      port map(entrada => saidaDbMemKEY1,
                               habilita => saidaAndKEY1, 
                               saida => Data_IN(0));

buffer3State_KEY2 :   entity work.buffer3State_1porta
                      port map(entrada => not(KEY(2)), 
                               habilita => saidaAndKEY2, 
                               saida => Data_IN(0));               

buffer3State_KEY3 :   entity work.buffer3State_1porta
                      port map(entrada => not(KEY(3))	, 
                               habilita => saidaAndKEY3, 
                               saida => Data_IN(0));                                
                               
buffer3State_FPGA_RESET :   entity work.buffer3State_1porta
                            port map(entrada => not(FPGA_RESET_N),
                                     habilita => saidaANDFPGA_RESET, 
                                     saida => Data_IN(0)); 
                                     
-- ############### Atribuindo Sinais ###############
hab_escrita <= Control(0);
hab_leitura <= Control(1);

-- Sinal de Controle LEDS ou HEX
dataAddressA5_Invertido <= not(Data_Address(5));
dataAddressA5 <= Data_Address(5);

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

-- Atribuição dos LEDs
LEDR(7 downto 0) <= saidaRegistradorLedR;
LEDR(8) <= saidaFlipFlopLed8;
LEDR(9) <= saidaFlipFlopLed9;

-- Atribuição dos HEXs
HEX0 <= saidaDecoderHEX0;
HEX1 <= saidaDecoderHEX1;
HEX2 <= saidaDecoderHEX2;
HEX3 <= saidaDecoderHEX3;
HEX4 <= saidaDecoderHEX4;
HEX5 <= saidaDecoderHEX5;


-- SINAIS A SEREM OBSERVADOS
SAIDA_AND_HEX0 <= saidaAndHEX0;
DIN_HEX <= Data_OUT(3 downto 0);
SAIDA_AND_HEX1 <= saidaAndHEX1;
SAIDA_AND_HEX2 <= saidaAndHEX2;
SAIDA_AND_HEX3 <= saidaAndHEX3;
SAIDA_AND_HEX4 <= saidaAndHEX4;
SAIDA_AND_HEX5 <= saidaAndHEX5;
SAIDA_AND_LED8 <= saidaFlipFlopLed8;
SAIDA_AND_LED9 <= saidaFlipFlopLed9;
SAIDA_AND_SW0_7 <= saidaAndSW0_7;

ACUMULADOR <= Data_OUT;
INSTRUCAO <= Instruction_IN;
PC_OUT <= ROM_Address;
CONTROLES <= Control;

end architecture;