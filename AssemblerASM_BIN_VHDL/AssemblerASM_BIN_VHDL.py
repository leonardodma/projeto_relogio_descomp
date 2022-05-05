assembly = 'ASM.txt'  # Arquivo de entrada de contem o assembly
destinoBIN = 'BIN.txt'  # Arquivo de saída que contem o binário formatado para VHDL

# definição dos mnemônicos e seus
# respectivo OPCODEs (em Hexadecimal)
mne = {
    "NOP": "0000",
    "LDA": "0001",
    "SOMA": "0010",
    "SUB": "0011",
    "LDI": "0100",
    "STA": "0101",
    "JMP": "0110",
    "JEQ": "0111",
    "CEQ": "1000",
    "JSR": "1001",
    "RET": "1010"
}

mem = {
    "SEGUNDOS_UNIDADE": "@0",
    "SEGUNDOS_DEZENA": "@1",
    "MINUTOS_UNIDADE": "@2",
    "MINUTOS_DEZENA": "@3",
    "HORAS_UNIDADE": "@4",
    "HORAS_DEZENA": "@5",
    "VALOR_ZERO": "@6",
    "VALOR_UM": "@7",
    "VALOR_DOIS": "@8",
    "VALOR_TRES": "@9",
    "VALOR_SEIS": "@10",
    "VALOR_DEZ": "@11",
    "OVERFLOW_HD": "@12",
    "HEX0": "@288",
    "HEX1": "@289",
    "HEX2": "@290",
    "HEX3": "@291",
    "HEX4": "@292",
    "HEX5": "@293",
    "SW0_7": "@320",
    "SW8": "@321",
    "SW9": "@322",
    "LED0_7":"@256",
    "LED8":"@257",
    "LED9":"@258",
    "FPGA_RESET": "@356",
    "LIMPA_KEY0": "@511",
    "LIMPA_KEY1": "@510"
}

mem_keys = mem.keys()

# Converte o valor após o caractere arroba '@'
# em um valor hexadecimal de 3 dígitos (9 bits)
def converteArroba(line):
    line = line.split('@')
    line[1] = bin(int(line[1]))[2:].upper().zfill(9)
    line = ''.join(line)
    return line

# Converte o valor após o caractere cifrão'$'
# em um valor hexadecimal de 3 dígitos (9 bits)


def converteCifrao(line):
    line = line.split('$')
    line[1] = bin(int(line[1]))[2:].upper().zfill(9)
    line = ''.join(line)
    return line

# Define a string que representa o comentário
# a partir do caractere cerquilha '#'


def defineComentario(line):
    if '#' in line:
        line = line.split('#')
        line = line[0] + "\t#" + line[1]

    return line

# Remove o comentário a partir do caractere cerquilha '#',
# deixando apenas a instrução


def defineInstrucao(line):
    line = line.split('#')
    line = line[0]
    return line


# Consulta o dicionário e "converte" o mnemônico em
# seu respectivo valor em hexadecimal
def trataMnemonico(line):
    line = line.replace("\n", "")  # Remove o caracter de final de linha
    line = line.replace("\t", "")  # Remove o caracter de tabulacao
    line = line.split(' ')
    line[0] = mne[line[0]]
    line = "".join(line)
    return line


def returnLabelsDict():
    cont = 0
    dict_labels = {}

    file = open(assembly, "r")  # Abre o arquivo ASM
    replacement = ""

    for line in file:
        if not line.isspace():
            if (line.startswith('LABEL_')):
                label_name = line.split(":")[0]
                dict_labels[label_name] = bin(cont)[2:].upper().zfill(9)
                line = line.replace(f"{label_name}: ", "")

            for mem_word in mem_keys:
                if mem_word in line:
                    line = line.replace(mem_word, mem[mem_word])

            replacement = replacement + line
            cont += 1

    file.close()

    fout = open("ASM_limpo.txt", "w")
    fout.write(replacement)
    fout.close()

    return dict_labels


with open("ASM_limpo.txt", "r") as f:  # Abre o arquivo ASM
    lines = f.readlines()  # Verifica a quantidade de linhas


with open(destinoBIN, "w") as f:  # Abre o destino BIN
    dict_labels = returnLabelsDict()

    cont = 0  # Cria uma variável para contagem

    for line in lines:
        # Verifica se a linha começa com alguns caracteres invalidos ('\n' ou ' ' ou '#')
        if (line.startswith('\n') or line.startswith(' ') or line.startswith('#')):
            line = line.replace("\n", "")

        else:
            comentarioLine = defineComentario(line).replace("\n", "")
            instrucaoLine = defineInstrucao(line).replace("\n", "")
            instrucaoLine = trataMnemonico(instrucaoLine)

            if '@' in instrucaoLine:  # Se encontrar o caractere arroba '@'
                instrucaoLine = converteArroba(instrucaoLine)

            elif '$' in instrucaoLine:  # Se encontrar o caractere cifrao '$'
                instrucaoLine = converteCifrao(instrucaoLine)

            elif "LABEL_" in instrucaoLine:
                label_name = instrucaoLine[4:]
                addr = dict_labels[label_name]
                instrucaoLine = instrucaoLine.replace(label_name, addr)

            else:  # NOP, RET
                instrucaoLine = instrucaoLine.replace("\n", "")  # Remove a quebra de linha
                instrucaoLine = instrucaoLine + '000000000'

            line = 'tmp(' + str(cont) + ') := "' + instrucaoLine + '";\t-- ' + comentarioLine.strip() + '\n'  # Formata para o arquivo BIN

            cont += 1  # Incrementa a variável de contagem, utilizada para incrementar as posições de memória no VHDL
            f.write(line)  # Escreve no arquivo BIN.txt

            print(line,end = '') #Print apenas para debug
