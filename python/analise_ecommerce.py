import sqlite3
import pandas as pd

conexao = sqlite3.connect("projeto_ecommerce/projeto_ecommerce.db")

df = pd.read_sql_query("SELECT * FROM pedidos", conexao)

print(df)

df.info()

print(df["valor"].sum())

faturamento_categoria = df.groupby("categoria")["valor"].sum()

print(faturamento_categoria)

faturamento_categoria = faturamento_categoria.sort_values(ascending=False)

print(faturamento_categoria)

faturamento_cidade = df.groupby("cidade")["valor"].sum()

faturamento_cidade = faturamento_cidade.sort_values(ascending=False)

print(faturamento_cidade)

df["valor_por_unidade"] = df["valor"] / df["quantidade"]

print(df)

print(
    df[["produto", "valor_por_unidade"]]
    .sort_values("valor_por_unidade", ascending=False)
)

faturamento_cliente = df.groupby("cliente")["valor"].sum()
faturamento_cliente = faturamento_cliente.sort_values(ascending=False)

print(faturamento_cliente)

quantidade_cliente = df.groupby("cliente")["quantidade"].sum()

print(quantidade_cliente)

total_unidades = df["quantidade"].sum()

print(total_unidades)

total_pedidos = df["id_pedido"].count()

print(total_pedidos)

ticket_medio_geral = df["valor"].mean()

print(ticket_medio_geral)

faturamento_cliente = df.groupby("cliente")["valor"].sum()
faturamento_cliente = faturamento_cliente.sort_values(ascending=False)

print(faturamento_cliente.head(1))

df.to_csv("pedidos_ecommerce.csv", index=False)
