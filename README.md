# Projeto de Portfólio: Análise de Dados com MySQL

Este é um projeto simples de portfólio demonstrando habilidades básicas em MySQL para análise de dados.

## Estrutura do Banco de Dados

O banco de dados contém 3 tabelas principais:
- `clientes`: Informações demográficas dos clientes
- `produtos`: Catálogo de produtos com categorias e preços
- `vendas`: Registro de transações com relacionamentos às outras tabelas

## Como Usar

1. **Pré-requisitos**:
   - MySQL Server instalado
   - MySQL Workbench ou outro cliente MySQL

2. **Configuração**:
   - Execute o arquivo `schema.sql` para criar o banco de dados e tabelas
   - Execute o arquivo `data.sql` para popular as tabelas com dados de exemplo

3. **Análises**:
   - O arquivo `queries.sql` contém exemplos de consultas para análise de dados

## Consultas de Exemplo

O projeto inclui consultas que demonstram:
- Consultas básicas com filtros
- Agregações (SUM, COUNT, AVG)
- JOINs entre tabelas
- Análises temporais (por mês)
- Identificação de itens com estoque baixo
- Análise de desempenho por categoria

## Índices Implementados

Foram criados índices para otimizar consultas frequentes:
- `idx_cidade` na tabela clientes
- `idx_categoria` na tabela produtos
- `idx_data_venda` na tabela vendas
