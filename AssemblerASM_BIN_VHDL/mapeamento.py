# Instruções
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

mem_address = {
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
    "LED0_7": "@256",
    "LED8": "@257",
    "LED9": "@258",
    "HEX0": "@288",
    "HEX1": "@289",
    "HEX2": "@290",
    "HEX3": "@291",
    "HEX4": "@292",
    "HEX5": "@293",
    "SW0_7": "@320",
    "SW8": "@321",
    "SW9": "@322",
    "KEY0": "@352",
    "KEY1": "@353",
    "KEY2": "@354",
    "KEY3": "@355",
    "FPGA_RESET": "@356",
    "LIMPA_KEY0": "@511",
    "LIMPA_KEY1": "@510"
}

regs = {
    "R1": "00",
    "R2": "01",
    "R3": "10",
    "R3": "11"
}
