USE cadastro;

DESC pessoas;

ALTER TABLE pessoas
ADD COLUMN profissao varchar(10);

ALTER TABLE pessoas
DROP COLUMN profissao;

ALTER TABLE pessoas
ADD COLUMN profissao varchar(10) after nome;

ALTER TABLE pessoas
ADD codigo int first;

ALTER TABLE pessoas
MODIFY COLUMN profissao varchar(20) not null default '';

ALTER TABLE pessoas
CHANGE COLUMN profissao prof varchar(20);

ALTER TABLE pessoas
RENAME TO gafanhotos;

SELECT * FROM pessoas;

CREATE TABLE IF NOT EXISTS gafanhoto;

CREATE TABLE IF NOT EXISTS cursos (
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totaulas int unsigned,
ano year default '2016'
) default charset=utf8;

ALTER TABLE cursos
ADD COLUMN idcurso int first;

ALTER TABLE cursos
ADD PRIMARY KEY (idcurso);

DESC cursos;

CREATE TABLE IF NOT EXISTS teste(
id int,
nome varchar(10),
idade int
);

INSERT INTO teste VALUE
('1', 'Pedro', '22'),
('2', 'Maria', '12'),
('3', 'Maricota', '77');

SELECT * FROM teste;

DROP TABLE IF EXISTS teste;






