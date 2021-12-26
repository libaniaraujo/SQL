CREATE DATABASE cadastro;

USE cadastro;

CREATE TABLE pessoas (
nome varchar(30),
idade tinyint,
sexo char(1),
peso float,
altura float,
nacionalidade varchar(20)
);

DESCRIBE pessoas;