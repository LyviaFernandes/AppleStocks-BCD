# 📊 Projeto Integrador: Análise de Dados com Banco Relacional

## 🎯 Objetivo Geral

Este projeto tem como objetivo desenvolver uma solução integrada que conecte **análise de dados com persistência em banco de dados relacional**, utilizando:

- Extração e tratamento de dados com **Python** (pandas e numpy)
- Modelagem de dados relacional
- Recursos avançados de **SQL**: `JOINs`, `Stored Procedures`, `Triggers`
- Boas práticas de estruturação e organização de banco de dados

---

## 📌 Etapas do Projeto

### 1. 📥 Obtenção da Base de Dados

- Dataset obtido da plataforma **Kaggle**
- Critérios:
  - Diversas colunas
  - Permita divisão em ao menos **3 tabelas relacionadas**

### 2. 🧹 Tratamento de Dados com Python

- Utilização das bibliotecas `pandas` e `numpy`
- Ações realizadas:
  - Limpeza de valores nulos
  - Padronização de colunas
  - Conversão de tipos de dados
- Geração de **CSV intermediário** pronto para carga no banco

### 3. 🗃️ Modelagem Relacional

- Modelo relacional contendo pelo menos **3 tabelas conectadas por chaves estrangeiras**
- Diagrama ER criado com: *(ex: MySQL Workbench / dbdiagram.io / draw.io)*
- Tabelas organizadas de acordo com boas práticas de normalização

### 4. 🛠️ Carga de Dados

- Scripts SQL de **DDL (CREATE TABLE)** implementados
- Carga dos dados realizada via:
  - Script Python com conexão SQL
  - Ou comandos SQL diretos no SGBD

### 5. 🔍 Consultas com JOIN Avançado

- Criação de **Stored Procedure** com `JOIN` entre **2 ou mais tabelas**
- JOINs baseados em relacionamentos reais (ex: vendas e clientes)

### 6. 🧩 Stored Procedure com Parâmetro

- A procedure implementa **parâmetros de entrada** (ex: ID, categoria ou data)
- Os dados retornados são **filtrados dinamicamente** com base no parâmetro informado pelo usuário

### 7. 🛡️ Auditoria com Trigger

- Trigger criada para **registrar ações DML (INSERT, UPDATE ou DELETE)**
- Tabela de log com as seguintes informações:
  - Tipo de operação
  - Data/hora da operação
  - Dados afetados
  - Nome da tabela envolvida

---

## 💻 Tecnologias Utilizadas

- Python (`pandas`, `numpy`, `mysql-connector-python`)
- MySQL
- Ferramentas de modelagem (ex: MySQL Workbench)
- Dataset do [Kaggle](https://www.kaggle.com/)

---

## 👨‍🏫 Considerações Finais

Este projeto simula um cenário real de integração entre **ciência de dados** e **engenharia de banco de dados**, promovendo o desenvolvimento de habilidades práticas em:

- Análise e limpeza de dados
- Modelagem e manipulação de banco relacional
- Automação de consultas e rastreamento de alterações em dados

---

## ✍️ Autora

- [Lyvia Fernandes Borges] – Análise de Dados e SQL

---

> Projeto desenvolvido como parte da disciplina de Projeto Integrador de Banco de Dados – [SENAI Suiço-Brasileira]
