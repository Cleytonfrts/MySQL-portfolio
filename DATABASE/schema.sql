-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS portfolio_analise_dados;
USE portfolio_analise_dados;

-- Tabela de clientes
CREATE TABLE clientes (
    cliente_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    genero VARCHAR(20),
    cidade VARCHAR(100),
    data_cadastro DATE,
    INDEX idx_cidade (cidade)
);

-- Tabela de produtos
CREATE TABLE produtos (
    produto_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    categoria VARCHAR(50),
    preco DECIMAL(10, 2),
    estoque INT,
    INDEX idx_categoria (categoria)
);

-- Tabela de vendas
CREATE TABLE vendas (
    venda_id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    produto_id INT,
    quantidade INT,
    data_venda DATE,
    valor_total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id),
    FOREIGN KEY (produto_id) REFERENCES produtos(produto_id),
    INDEX idx_data_venda (data_venda)
);