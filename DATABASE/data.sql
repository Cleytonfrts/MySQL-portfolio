USE portfolio_analise_dados;

-- Inserindo clientes
INSERT INTO clientes (nome, idade, genero, cidade, data_cadastro) VALUES
('João Silva', 28, 'Masculino', 'São Paulo', '2022-01-15'),
('Maria Oliveira', 35, 'Feminino', 'Rio de Janeiro', '2021-11-03'),
('Carlos Souza', 42, 'Masculino', 'Belo Horizonte', '2022-02-20'),
('Ana Costa', 29, 'Feminino', 'São Paulo', '2022-03-10'),
('Pedro Santos', 31, 'Masculino', 'Porto Alegre', '2021-12-05'),
('Juliana Pereira', 27, 'Feminino', 'Curitiba', '2022-04-18'),
('Marcos Lima', 38, 'Masculino', 'São Paulo', '2022-01-30'),
('Fernanda Rocha', 33, 'Feminino', 'Belo Horizonte', '2022-05-22'),
('Ricardo Alves', 45, 'Masculino', 'Rio de Janeiro', '2021-10-12'),
('Patrícia Nunes', 26, 'Feminino', 'São Paulo', '2022-06-07');

-- Inserindo produtos
INSERT INTO produtos (nome, categoria, preco, estoque) VALUES
('Notebook Dell', 'Eletrônicos', 4500.00, 15),
('Smartphone Samsung', 'Eletrônicos', 2200.00, 30),
('Mesa de Escritório', 'Móveis', 850.00, 8),
('Cadeira Gamer', 'Móveis', 1200.00, 12),
('Fone de Ouvido Bluetooth', 'Acessórios', 250.00, 50),
('Teclado Mecânico', 'Acessórios', 350.00, 25),
('Monitor 24"', 'Eletrônicos', 1100.00, 18),
('Impressora Multifuncional', 'Eletrônicos', 800.00, 10),
('Mouse Sem Fio', 'Acessórios', 120.00, 40),
('Webcam HD', 'Acessórios', 300.00, 20);

-- Inserindo vendas
INSERT INTO vendas (cliente_id, produto_id, quantidade, data_venda, valor_total) VALUES
(1, 2, 1, '2022-07-05', 2200.00),
(2, 5, 2, '2022-07-10', 500.00),
(3, 1, 1, '2022-07-12', 4500.00),
(4, 3, 1, '2022-07-15', 850.00),
(5, 7, 1, '2022-07-18', 1100.00),
(6, 4, 1, '2022-07-20', 1200.00),
(7, 6, 1, '2022-07-22', 350.00),
(8, 8, 1, '2022-07-25', 800.00),
(9, 9, 3, '2022-07-28', 360.00),
(10, 10, 1, '2022-07-30', 300.00),
(1, 5, 1, '2022-08-02', 250.00),
(2, 3, 1, '2022-08-05', 850.00),
(3, 7, 2, '2022-08-08', 2200.00),
(4, 1, 1, '2022-08-10', 4500.00),
(5, 2, 1, '2022-08-12', 2200.00);