CREATE DATABASE Db_pizzaria
USE Db_pizzaria

CREATE TABLE Tb_cliente(
	id_cliente int NOT NULL UNIQUE,
    nome varchar(50) NOT NULL,
    cpf varchar(15),
    data_nasc varchar(15),
    PRIMARY KEY (id_cliente)

);

CREATE TABLE Tb_endereco(
	id_cliente int NOT NULL UNIQUE,
    id_endereco int NOT NULL UNIQUE,
    numero varchar(15),
    logradouro varchar(50),
    bairro varchar(50),
    cep varchar(15),
    cidade varchar(50),
	uf char(2),
    PRIMARY KEY(id_endereco)

);

CREATE TABLE Tb_contato(
	id_cliente int NOT NULL UNIQUE,
    id_contato int NOT NULL UNIQUE,
    cel int NOT NULL,
    tel int NOT NULL,
    PRIMARY KEY(id_contato)

);

CREATE TABLE Tb_compra(
	id_compra int NOT NULL UNIQUE,
    id_cliente int NOT NULL UNIQUE,
    id_produto int NOT NULL UNIQUE,
    id_forma_pagamento int NOT NULL,
    preco float NOT NULL,
    quantidade int,
    data_pedido date,
    PRIMARY KEY(id_compra)

);

	CREATE TABLE Tb_tipo_entrega(
		id_compra int NOT NULL UNIQUE,
        id_tipo_entrega int NOT NULL UNIQUE,
        tipo_compra bit,
        PRIMARY KEY(id_tipo_entrega)
    
);
    
    CREATE TABLE Tb_forma_pagamento(
		id_compra int NOT NULL UNIQUE,
        id_forma_pagamento int NOT NULL,
        forma_pagamento bit,
        PRIMARY KEY(id_forma_pagamento)
    
);
    
CREATE TABLE Tb_produto(
	id_produto int NOT NULL UNIQUE,
    nome_produto int NOT NULL UNIQUE,
    tempo_preparo time,
    custo_produto float,
    PRIMARY KEY(id_produto)

);
