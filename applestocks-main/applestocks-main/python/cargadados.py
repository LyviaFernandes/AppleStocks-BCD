import pandas as pd
import mysql.connector

# Conexão
con = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database="appleStocks"
)
cursor = con.cursor()

# Ler CSV limpo
df = pd.read_csv("C:/Users/2DT/Documents/applestocks-main/applestocks-main/kaggle/archive/apple_stock_limpo.csv")

# Exemplo de carga na tabela 'precos'
for _, row in df.iterrows():
    cursor.execute("""
        INSERT INTO precos (id_stock, date, abr_preco, fch_preco, preco_alto, preco_baixo, volume)
        VALUES (%s, %s, %s, %s, %s, %s, %s)
    """, (1, row['date'], row['open'], row['close'], row['high'], row['low'], row['volume']))

print("Carga concluída")

con.commit()
cursor.close()
con.close()
