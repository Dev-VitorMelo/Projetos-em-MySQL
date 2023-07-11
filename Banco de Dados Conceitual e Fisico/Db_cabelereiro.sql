CREATE DATABASE Db_cabelereiro;
USE Db_cabelereiro;

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

CREATE TABLE Tb_servico(
	id_servico int NOT NULL UNIQUE,
    tipo_servico varchar(30) NOT NULL,
    PRIMARY KEY(id_servico)

);