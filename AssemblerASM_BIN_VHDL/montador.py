from mapeamento import *
import re


def readLines(file_name):
    # Abre o arquivo assembly
    with open(file_name, "r") as file:
        lines = file.readlines()
        lines = [line.rstrip() for line in lines]
    
    all_lines = []

    # Remove espaços desnecessarios
    for l in lines:
        l = re.sub(' +', ' ', l)
        l = l.replace("\t", "")  # Remove o caracter de tabulacao
        all_lines.append(l)
    
    return all_lines


def cleanInstructions(all_lines):
    cleaned_lines = []
    labels_addresses = {}
    cnt = 0
    for l in all_lines:
        if l != '':
            line_splited = l.split(" ")

            if line_splited[0].startswith("LABEL_"):
                labels_addresses[line_splited[0][:-1]] = f'@{cnt}'
                cleaned_lines.append(f'#{line_splited[0]}')
                line_splited.pop(0)
                cleaned_lines.append(" ".join(line_splited))
            else:
                cleaned_lines.append(l)
            
            cnt += 1   
    
    x = []
    for l in cleaned_lines:
        line_splited = l.split(" ")
        # Substitui labels
        for k, v, in labels_addresses.items():
            for i in range(len(line_splited)):
                if line_splited[i] == k:
                    line_splited[i] = v

        # Substitui endereços de memória
        for k, v, in mem_address.items():    
            for i in range(len(line_splited)):
                if line_splited[i] == k:
                    line_splited[i] = v

        x.append(" ".join(line_splited))
 
    return x


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
    line = re.sub(' +', ' ', line) # Remove caracteres de espaço indesejados
    line = line.split(' ')
    if "" in line: line.remove("")

    line[0] = mne[line[0]]
    if len(line) == 3:
        line[1] = regs[line[1][:-1]]
    else:
        line.insert(1, '00')
    
    line = "".join(line)

    #print(line)
    return line


def main():
    assembly = 'ASM.txt'  # Arquivo de entrada de contem o assembly
    destinoBIN = 'BIN.txt'  # Arquivo de saída que contem o binário formatado para VHDL
    instructions = readLines(assembly)
    cleaned_instructions = cleanInstructions(instructions)

    cont = 0

    with open(destinoBIN, "w") as f:  # Abre o destino BIN
        for line in cleaned_instructions:
            if (line.startswith('#')):
                line = f'-- {line}\n'
            else:
                comentarioLine = defineComentario(line).replace("\n", "")
                instrucaoLine = defineInstrucao(line).replace("\n", "")
                instrucaoLine = trataMnemonico(instrucaoLine)

                if '@' in instrucaoLine:  # Se encontrar o caractere arroba '@'
                    instrucaoLine = converteArroba(instrucaoLine)

                elif '$' in instrucaoLine:  # Se encontrar o caractere cifrao '$'
                    instrucaoLine = converteCifrao(instrucaoLine)

                else:  # NOP, RET
                    print(instrucaoLine)
                    instrucaoLine = instrucaoLine.replace("\n", "")  # Remove a quebra de linha
                    instrucaoLine = instrucaoLine + '000000000'

                line = 'tmp(' + str(cont) + ') := "' + instrucaoLine + '";\t-- ' + comentarioLine.strip() + '\n'  # Formata para o arquivo BIN

                cont += 1  # Incrementa a variável de contagem, utilizada para incrementar as posições de memória no VHDL
            
            f.write(line)  # Escreve no arquivo BIN.txt
            #print(line, end = '') #Print apenas para debug


main()