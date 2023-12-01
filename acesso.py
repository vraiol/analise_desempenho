import requests
import json
import pandas as pd
import numpy as np
import psycopg2
from scipy.stats import ttest_1samp, t


#colocando as informações do banco de dados

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

cursor = connection.cursor()


table_name = 'resultados'

# Executa uma consulta SQL para selecionar as colunas 'temp_exec', 'alg_orden' e 'tam_dados'
query = f"SELECT temp_exec, alg_orden, tam_dados FROM {table_name};"

try:
    cursor.execute(query)
    # Obtém todos os registros
    records = cursor.fetchall()

    # Converte os registros para um DataFrame pandas
    df = pd.DataFrame(records, columns=['temp_exec', 'alg_orden', 'tam_dados'])
    

    # Agrupa o DataFrame por 'alg_orden' e 'tam_dados' e calcula as estatísticas para 'temp_exec'
    stats_agrupadas = df.groupby(['alg_orden', 'tam_dados']).agg ({'temp_exec': ['mean', 'median', 'std', 'count']})
    

    # Exibe as estatísticas agrupadas
    print(stats_agrupadas.round(2)) 
    

except Exception as e:
    print(f"Erro ao executar a consulta: {e}")

finally:
    # Fecha o cursor e a conexão
    cursor.close()
    connection.close()



