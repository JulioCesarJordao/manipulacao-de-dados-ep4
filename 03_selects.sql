-- Produtos por categoria
SELECT p.nome_produto, c.nome_categoria
FROM produto p
JOIN categoria c ON p.id_categoria = c.id_categoria;

-- Vendas com cliente e vendedor
SELECT v.id_venda, c.nome AS cliente, ve.nome AS vendedor, v.valor_total
FROM venda v
JOIN cliente c ON v.id_cliente = c.id_cliente
JOIN vendedor ve ON v.id_vendedor = ve.id_vendedor;

-- Produtos com estoque baixo
SELECT nome_produto, estoque_atual
FROM produto
WHERE estoque_atual < 10
ORDER BY estoque_atual ASC;

-- Itens de venda detalhados
SELECT v.id_venda, p.nome_produto, i.quantidade, i.preco_unitario
FROM item_venda i
JOIN produto p ON i.id_produto = p.id_produto
JOIN venda v ON i.id_venda = v.id_venda;
