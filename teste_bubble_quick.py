import requests
import json
import pandas as pd
import numpy as np
import psycopg2
from scipy.stats import ttest_ind

# Colocando as informações do banco de dados
dbname = 'projeto'
user = 'postgres'
password = 'cesupa'
host = 'localhost'
port = '5432'

# Conecta ao banco de dados
try:
    connection = psycopg2.connect(
        dbname=dbname,
        user=user,
        password=password,
        host=host,
        port=port
    )
except Exception as e:
    print(f"Erro ao conectar ao banco de dados: {e}")
    exit()

# Cria um cursor para executar consultas SQL
cursor = connection.cursor()

table_name = 'resultados'

# Executa uma consulta SQL para selecionar as colunas 'temp_exec', 'alg_orden' e 'tam_dados'
consulta = f"SELECT temp_exec, alg_orden, tam_dados FROM {table_name};"

try:
    cursor.execute(consulta)

    # Obtém todos os registros
    records = cursor.fetchall()

    # Converte os registros para um DataFrame pandas
    df = pd.DataFrame(records, columns=['temp_exec', 'alg_orden', 'tam_dados'])

    algoritmo1 = 'bubble sort'
    algoritmo2 = 'quick sort'

    dados_algoritmo1 = df[df['alg_orden'] == algoritmo1]['temp_exec']
    dados_algoritmo2 = df[df['alg_orden'] == algoritmo2]['temp_exec']

    # Realiza o teste t de Student para amostras independentes
    statistic, p_value = ttest_ind(dados_algoritmo1, dados_algoritmo2)

    significancia = 0.05

    if p_value < significancia:
        print("Rejeitamos a hipótese nula")

        # Calcula o intervalo de confiança para a média de dados_algoritmo1
        mean_ci_algoritmo1 = np.percentile(dados_algoritmo1, [2.5, 97.5])

        # Calcula o intervalo de confiança para a média de dados_algoritmo2
        mean_ci_algoritmo2 = np.percentile(dados_algoritmo2, [2.5, 97.5])

        print(f"Intervalo de Confiança para {algoritmo1}: {mean_ci_algoritmo1}")
        print(f"Intervalo de Confiança para {algoritmo2}: {mean_ci_algoritmo2}")

    else:
        print("Não rejeitamos a hipótese nula")

except Exception as e:
    print(f"Erro ao executar a consulta: {e}")
finally:
    # Fecha a conexão com o banco de dados
    cursor.close()
    connection.close()
