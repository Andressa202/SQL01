--- criar o banco de dados 
CREATE DATABASE bd_16_byciclon
GO
USE bd_16_byciclon
GO
--- criar a tabela tb_cliente

CREATE TABLE tb_cliente(
	idCliente INT PRIMARY KEY IDENTITY (1,1), -- coluna numerica do tipo autnonumeração
	idEndereco INT NOT NULL, -- campo numerico para fk 
	idRegional INT NOT NULL,  -- campo numerico para fk 
	nome VARCHAR (40) not null, -- campo texto
	email VARCHAR (40) NOT NULL, --	campo texto 
	cpf VARCHAR (11) NOT NULL, -- campo texto
);

CREATE TABLE tb_vendedores(
	idVendedor INT PRIMARY KEY IDENTITY(1,1),
	idEndereco INT NOT NULL, 
	idRegional INT NOT NULL,
	nome VARCHAR (40) NOT NULL, 
	email VARCHAR (30) NOT NULL,
	cpf VARCHAR (11) NOT NULL

);

CREATE TABLE tb_produtos(
	idProduto INT PRIMARY KEY IDENTITY(1,1),
	nome VARCHAR (255) NOT NULL,
	linha VARCHAR (255) NOT NULL,
	valorUnitario MONEY NOT NULL
);

CREATE TABLE tb_pedidos(
	idPedido INT PRIMARY KEY IDENTITY(1,1),
	idCliente INT NOT NULL,
	idVendedor INT NOT NULL,
	dataPedido DATE NOT NULL,
	qtItens INT NOT NULL,
	valorTotal MONEY NOT NULL
);

CREATE TABLE tb_itens_pedidos(
	idItem INT IDENTITY(1,1) PRIMARY KEY,
	idPedido INT NOT NULL,
	idproduto INT NOT NULL,
	quantidade INT NOT NULL,
	precoUnitario MONEY NOT NULL,
	desconto MONEY NOT NULL
);

CREATE TABLE tb_regional(
	idRegional INT PRIMARY KEY IDENTITY(1,1),
	nomeRegional VARCHAR(50) NOT NULL,
	enderecoRegional VARCHAR (255),
	telefoneRegional VARCHAR (50) 
);

CREATE TABLE tb_enderecos(
	idEndereco INT PRIMARY KEY IDENTITY(1,1),
	pais VARCHAR(50) NOT NULL,
	uf VARCHAR NOT NULL,
	cidade VARCHAR (50) NOT NULL,
	bairro VARCHAR(50) NOT NULL,
	rua VARCHAR(50) NOT NULL,
	numero INT NOT NULL
);

CREATE TABLE tmporaria(
	coluna INT ,
	coluna02 INT
);