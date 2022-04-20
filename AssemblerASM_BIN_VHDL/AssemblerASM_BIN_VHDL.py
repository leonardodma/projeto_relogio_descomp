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


def returnFuncsDict():
    cont = 0
    dict_funcs = {}

    file = open(assembly, "r")  # Abre o arquivo ASM
    replacement = ""

    for line in file:
        if (line.startswith('FUNC_')):
            func_name = line.split(":")[0]
            dict_funcs[func_name] = bin(cont)[2:].upper().zfill(9)
            line = line.replace(f"{func_name}: ", "")

        replacement = replacement + line
        cont += 1

    file.close()

    fout = open("ASM_limpo.txt", "w")
    fout.write(replacement)
    fout.close()

    return dict_funcs


with open("ASM_limpo.txt", "r") as f:  # Abre o arquivo ASM
    lines = f.readlines()  # Verifica a quantidade de linhas


with open(destinoBIN, "w") as f:  # Abre o destino BIN
    dict_funcs = returnFuncsDict()

    cont = 0  # Cria uma variável para contagem

    for line in lines:

        # Verifica se a linha começa com alguns caracteres invalidos ('\n' ou ' ' ou '#')
        if (line.startswith('\n') or line.startswith(' ') or line.startswith('#')):
            line = line.replace("\n", "")
            print("-- Sintaxe invalida" + ' na Linha: ' +
                  ' --> (' + line + ')')  # Print apenas para debug
            print(cont)
        else:
            # Exemplo de linha => 1. JSR @14 #comentario1
            # Define o comentário da linha. Ex: #comentario1
            comentarioLine = defineComentario(line).replace("\n", "")
            instrucaoLine = defineInstrucao(line).replace("\n", "")

            # Trata o mnemonico
            instrucaoLine = trataMnemonico(instrucaoLine)

            # print(instrucaoLine)

            if '@' in instrucaoLine:  # Se encontrar o caractere arroba '@'
                # converte o número após o caractere Ex(JSR @14): x"9" x"0E"
                instrucaoLine = converteArroba(instrucaoLine)

            elif '$' in instrucaoLine:  # Se encontrar o caractere cifrao '$'
                # converte o número após o caractere Ex(LDI $5): x"4" x"05"
                instrucaoLine = converteCifrao(instrucaoLine)

            elif "FUNC_" in instrucaoLine:
                func_name = instrucaoLine[4:]
                addr = dict_funcs[func_name]
                instrucaoLine = instrucaoLine.replace(func_name, addr)

            else:  # Senão, se a instrução nao possuir nenhum imediator, ou seja, nao conter '@' ou '$'
                instrucaoLine = instrucaoLine.replace(
                    "\n", "")  # Remove a quebra de linha
                instrucaoLine = instrucaoLine + '000000000'

            line = 'tmp(' + str(cont) + ') := "' + instrucaoLine + \
                '";\t-- ' + comentarioLine + '\n'  # Formata para o arquivo BIN

            cont += 1  # Incrementa a variável de contagem, utilizada para incrementar as posições de memória no VHDL
            f.write(line)  # Escreve no arquivo BIN.txt

            # print(line,end = '') #Print apenas para debug
