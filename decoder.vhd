library ieee;
use ieee.std_logic_1164.all;

entity decoder is
  port ( opcode : in std_logic_vector(3 downto 0);
			flagIgual : in std_logic;
         saida : out std_logic_vector(11 downto 0);
			saidaMux: out std_logic_vector(1 downto 0)
  );
end entity;

architecture comportamento of decoder is
	
	constant NOP  : std_logic_vector(3 downto 0) := "0000";
	constant instru_NOP: std_logic_vector(11 downto 0) := "000000000000";
	
	constant LDA  : std_logic_vector(3 downto 0) := "0001";
	constant instru_LDA: std_logic_vector(11 downto 0) := "000000110010";
	
	constant SOMA : std_logic_vector(3 downto 0) := "0010";
	constant instru_SOMA: std_logic_vector(11 downto 0) := "000000101010";
	
	constant SUB  : std_logic_vector(3 downto 0) := "0011";
	constant instru_SUB: std_logic_vector(11 downto 0) := "000000100010";
	
	constant LDI  : std_logic_vector(3 downto 0) := "0100";
	constant instru_LDI: std_logic_vector(11 downto 0) := "000001110000";
	
	constant STA  : std_logic_vector(3 downto 0) := "0101";
	constant instru_STA: std_logic_vector(11 downto 0) := "000000000001";
	
	constant JMP  : std_logic_vector(3 downto 0) := "0110";
	constant instru_JMP: std_logic_vector(11 downto 0) := "010000000000";
	
	constant JEQ  : std_logic_vector(3 downto 0) := "0111";
	constant instru_JEQ: std_logic_vector(11 downto 0) := "000000000001";
	
	constant CEQ  : std_logic_vector(3 downto 0) := "1000";
	constant instru_CEQ: std_logic_vector(11 downto 0) := "000000010110";
	
	constant JSR  : std_logic_vector(3 downto 0) := "1001";
	constant instru_JSR: std_logic_vector(11 downto 0) := "100100000000";
	
	constant RET  : std_logic_vector(3 downto 0) := "1010";
	constant instru_RET: std_logic_vector(11 downto 0) := "001000000000";
  
begin
	saida <= instru_NOP  when opcode = NOP else
				instru_LDA  when opcode = LDA else
				instru_SOMA when opcode = SOMA else
				instru_SUB  when opcode = SUB else
				instru_LDI  when opcode = LDI else
				instru_STA  when opcode = STA else
				instru_JMP  when opcode = JMP else
				instru_JEQ  when opcode = JEQ else
				instru_CEQ  when opcode = CEQ else
				instru_JSR  when opcode = JSR else
				instru_RET  when opcode = RET else
				instru_NOP; -- NOP para os opcodes Indefinidos
				
	saidaMux <= "10" when saida = instru_RET else
					"01" when saida = instru_JMP else
					"01" when saida = instru_JEQ and flagIgual = '1' else
					"01" when saida = instru_JSR else
					"00";
	

end architecture;