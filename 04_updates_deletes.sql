-- Atualizar preço de um produto
UPDATE produto SET preco_venda = 4300.00 WHERE id_produto = 2;

-- Atualizar estoque
UPDATE produto SET estoque_atual = estoque_atual - 1 WHERE id_produto = 1;

-- Atualizar status do pedido
UPDATE pedido_reposicao SET status_pedido = 'Recebido' WHERE id_pedido = 1;

-- Excluir item de venda específico
DELETE FROM item_venda WHERE id_venda = 1 AND id_produto = 3;

-- Excluir produto sem estoque
DELETE FROM produto WHERE estoque_atual = 0;

-- Excluir fornecedor sem produtos vinculados
DELETE FROM fornecedor WHERE id_fornecedor NOT IN (SELECT DISTINCT id_fornecedor FROM produto);
