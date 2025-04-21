USE portfolio_analise_dados;

-- 1. Consulta básica: Todos os clientes de São Paulo
SELECT * FROM clientes WHERE cidade = 'São Paulo';

-- 2. Consulta com agregação: Total de vendas por produto
SELECT 
    p.nome AS produto,
    SUM(v.quantidade) AS total_vendido,
    SUM(v.valor_total) AS receita_total
FROM produtos p
JOIN vendas v ON p.produto_id = v.produto_id
GROUP BY p.nome
ORDER BY receita_total DESC;

-- 3. Análise demográfica: Média de idade por gênero
SELECT 
    genero,
    AVG(idade) AS media_idade,
    COUNT(*) AS total_clientes
FROM clientes
GROUP BY genero;

-- 4. JOIN simples: Detalhes das vendas com informações de clientes e produtos
SELECT 
    c.nome AS cliente,
    p.nome AS produto,
    v.quantidade,
    v.valor_total,
    v.data_venda
FROM vendas v
JOIN clientes c ON v.cliente_id = c.cliente_id
JOIN produtos p ON v.produto_id = p.produto_id
ORDER BY v.data_venda DESC
LIMIT 5;

-- 5. Análise temporal: Vendas por mês
SELECT 
    MONTH(data_venda) AS mes,
    SUM(valor_total) AS total_vendas,
    COUNT(*) AS quantidade_vendas
FROM vendas
GROUP BY mes
ORDER BY mes;

-- 6. Produtos com estoque baixo (abaixo de 15 unidades)
SELECT 
    nome,
    estoque
FROM produtos
WHERE estoque < 15
ORDER BY estoque ASC;

-- 7. Clientes que mais gastaram
SELECT 
    c.nome,
    SUM(v.valor_total) AS total_gasto
FROM clientes c
JOIN vendas v ON c.cliente_id = v.cliente_id
GROUP BY c.nome
ORDER BY total_gasto DESC
LIMIT 5;

-- 8. Categorias mais vendidas
SELECT 
    p.categoria,
    SUM(v.quantidade) AS total_vendido
FROM produtos p
JOIN vendas v ON p.produto_id = v.produto_id
GROUP BY p.categoria
ORDER BY total_vendido DESC;

-- 9. Produtos que venderam mais unidades que a média
SELECT 
    p.produto_id,
    p.nome,
    SUM(v.quantidade) AS total_vendido
FROM 
    produtos p
JOIN 
    vendas v ON p.produto_id = v.produto_id
GROUP BY 
    p.produto_id, p.nome
HAVING 
    SUM(v.quantidade) > (
        SELECT AVG(quantidade) 
        FROM vendas
    )
ORDER BY 
    total_vendido DESC;