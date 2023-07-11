CREATE DATABASE Db_usuario;
use Db_usuario;

create table usuario(
id_usuario int not null unique auto_increment,
nome_usuario varchar (60) not null,
email_usuario varchar (50) not null,
senha_usuario  varchar (10) not null, 
confirmacao_senha varchar(10) not null,
primary key (id_usuario)
);