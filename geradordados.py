# -*- coding: utf-8 -*-
"""geradordados.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/1dc1U-DVZc5hjgjCbf3hkBQtD90YMd1EX
"""

import random

def gerar_dados():

 return random.randint(1, 10000)


nome_arquivo = "dados1.txt"

# Gera os dados e escreve no arquivo
with open(nome_arquivo, "w") as arquivo:
 for _ in range(100):
        dado = gerar_dados()
        arquivo.write(str(dado) + "\n")

print(f"Os dados foram gerados e gravados no arquivo {nome_arquivo}.")