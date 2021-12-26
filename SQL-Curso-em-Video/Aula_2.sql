DROP DATABASE cadastro;

CREATE DATABASE cadastro
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE cadastro;

CREATE TABLE pessoas (
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal (5,2),
altura decimal (3,2),
nacionalidade varchar(20) default 'Brasil',
primary key(id)
) DEFAULT CHARSET = utf8;