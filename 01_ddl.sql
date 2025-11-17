CREATE DATABASE IF NOT EXISTS gamepower;
USE gamepower;

CREATE TABLE cliente (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    cpf CHAR(11),
    telefone VARCHAR(20),
    email VARCHAR(100),
    data_cadastro DATE
);

CREATE TABLE vendedor (
    id_vendedor INT PRIMARY KEY,
    nome VARCHAR(100),
    cpf CHAR(11),
    telefone VARCHAR(20),
    data_admissao DATE
);

CREATE TABLE categoria (
    id_categoria INT PRIMARY KEY,
    nome_categoria VARCHAR(60),
    descricao_categoria VARCHAR(255)
);

CREATE TABLE fornecedor (
    id_fornecedor INT PRIMARY KEY,
    razao_social VARCHAR(120),
    cnpj CHAR(14),
    telefone VARCHAR(20),
    email VARCHAR(100),
    endereco VARCHAR(200)
);

CREATE TABLE produto (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(120),
    plataforma VARCHAR(50),
    preco_venda DECIMAL(10,2),
    estoque_atual INT,
    id_categoria INT,
    id_fornecedor INT,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria),
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor)
);

CREATE TABLE venda (
    id_venda INT PRIMARY KEY,
    data_venda DATETIME,
    valor_total DECIMAL(10,2),
    forma_pagamento VARCHAR(30),
    id_cliente INT,
    id_vendedor INT,
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
);

CREATE TABLE item_venda (
    id_venda INT,
    id_produto INT,
    quantidade INT,
    preco_unitario DECIMAL(10,2),
    PRIMARY KEY (id_venda, id_produto),
    FOREIGN KEY (id_venda) REFERENCES venda(id_venda),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);

CREATE TABLE pedido_reposicao (
    id_pedido INT PRIMARY KEY,
    data_pedido DATE,
    data_prevista_entrega DATE,
    status_pedido VARCHAR(30),
    id_fornecedor INT,
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor(id_fornecedor)
);

CREATE TABLE item_pedido_reposicao (
    id_pedido INT,
    id_produto INT,
    quantidade_solicitada INT,
    preco_custo_unitario DECIMAL(10,2),
    PRIMARY KEY (id_pedido, id_produto),
    FOREIGN KEY (id_pedido) REFERENCES pedido_reposicao(id_pedido),
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto)
);