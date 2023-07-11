CREATE DATABASE Db_papelaria
USE Db_papelaria

CREATE TABLE Tb_cliente(
	id_cliente int NOT NULL UNIQUE,
    nome varchar(50) NOT NULL,
    cpf varchar (30),
    data_nasc date,
    PRIMARY KEY(id_cliente)

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
    tel varchar(15),
    cel varchar(15),
    PRIMARY KEY(id_contato)

);

CREATE TABLE Tb_compra(
	id_compra int NOT NULL UNIQUE,
    id_cliente int NOT NULL UNIQUE,
    id_produto int NOT NULL UNIQUE,
	preco float,
    PRIMARY KEY(id_compra)

);

CREATE TABLE Tb_tipo_entrega(
	id_compra int NOT NULL UNIQUE,
    id_tipo_entrega int NOT NULL UNIQUE,
    tipo_entrega int NOT NULL UNIQUE, 
    PRIMARY KEY(id_tipo_entrega)

);

CREATE TABLE Tb_forma_pagamento(
	id_compra int NOT NULL UNIQUE,
	id_forma_pagamento int NOT NULL UNIQUE,
    forma_pagamento bit,
    PRIMARY KEY(id_forma_pagamento)

);

CREATE TABLE Tb_produto(
	id_produto int NOT NULL UNIQUE,
    data_compra_produto DATE,
    cor varchar(30),
    PRIMARY KEY(id_produto)

);

CREATE TABLE Tb_caneta(
	id_produto int NOT NULL UNIQUE,
    id_caneta int NOT NULL UNIQUE,
    tipo_caneta varchar(30),
    espesura_caneta varchar(30),
	PRIMARY KEY(id_caneta)
    
);

CREATE TABLE Tb_papel(
	id_produto int NOT NULL UNIQUE,
	id_papel int NOT NULL UNIQUE,
    tipo_papel varchar(30),
    PRIMARY KEY(id_papel)

);

CREATE TABLE Tb_lapis(
	id_produto int NOT NULL UNIQUE,
    id_lapis int NOT NULL UNIQUE,
	tipo_lapis varchar(30) NOT NULL UNIQUE,
	PRIMARY KEY(id_lapis)
    
);

CREATE TABLE Tb_caderno(
	id_produto int NOT NULL UNIQUE,
    id_caderno int NOT NULL UNIQUE,
    quantidade_materias varchar(30),
    tipo_caderno bit,
    PRIMARY KEY(id_caderno)

);


