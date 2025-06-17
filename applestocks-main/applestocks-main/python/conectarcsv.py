import pandas as pd

# Carregar CSV (ajuste o nome do arquivo conforme necessário)
df = pd.read_csv("C:/Users/2DT/Documents/applestocks-main/applestocks-main/kaggle/archive/apple_5yr_one.csv")

# Verificar colunas
print(df.info())
print(df.isnull().sum())

# Tratamento
df.dropna(inplace=True)
df.columns = [col.lower().strip().replace(" ", "_") for col in df.columns]

# Converter data
df['date'] = pd.to_datetime(df['date'])

# Salvar CSV limpo
df.to_csv('apple_stock_limpo.csv', index=False)
