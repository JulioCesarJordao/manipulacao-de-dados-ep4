-- CLIENTES
INSERT INTO cliente VALUES
(1,'João Silva','12345678901','11999998888','joao@email.com','2023-01-10'),
(2,'Maria Oliveira','98765432100','11988776655','maria@email.com','2023-01-12');

-- VENDEDORES
INSERT INTO vendedor VALUES
(1,'Carlos Mendes','11122233344','11977776666','2022-05-01'),
(2,'Ana Pereira','55566677788','11966665555','2023-02-10');

-- CATEGORIAS
INSERT INTO categoria VALUES
(1,'Consoles','Videogames domésticos'),
(2,'Jogos','Jogos variados');

-- FORNECEDORES
INSERT INTO fornecedor VALUES
(1,'Tech Distribuidora','11222333444455','1133224455','contato@tech.com','Rua A, 123'),
(2,'Mega Imports','99888777666544','1144556677','suporte@mega.com','Avenida B, 456');

-- PRODUTOS
INSERT INTO produto VALUES
(1,'PlayStation 5','Sony',4500.00,10,1,1),
(2,'Xbox Series X','Microsoft',4200.00,8,1,1),
(3,'The Last of Us Part II','PS4',199.90,25,2,2);

-- VENDAS
INSERT INTO venda VALUES
(1,'2024-03-01 10:30:00',4700.00,'Crédito',1,1);

-- ITEM_VENDA
INSERT INTO item_venda VALUES
(1,1,1,4500.00),
(1,3,1,199.90);

-- PEDIDOS
INSERT INTO pedido_reposicao VALUES
(1,'2024-02-20','2024-03-05','Em transporte',2);

INSERT INTO item_pedido_reposicao VALUES
(1,3,20,120.00);
