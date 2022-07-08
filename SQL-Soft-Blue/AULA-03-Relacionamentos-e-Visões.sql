
/* RELACIONAMENTO E VISÕES */

USE curso_sql;

SELECT * FROM funcionarios;
SELECT * FROM veiculos;

-- INNER JOIN

SELECT * FROM funcionarios INNER JOIN veiculos ON funcionario_id = funcionarios.id;
SELECT * FROM funcionarios f INNER JOIN veiculos v ON v.funcionario_id = f.id;

-- LEFT JOIN e RIGHT JOIN

SELECT * FROM funcionarios f LEFT JOIN veiculos v ON v.funcionario_id = f.id;
SELECT * FROM funcionarios f RIGHT JOIN veiculos v ON v.funcionario_id = f.id;

INSERT INTO veiculos (funcionario_id, veiculo, placa) VALUES (null, "Moto", "SB-0003");

-- FULL JOIN

SELECT * FROM funcionarios f LEFT JOIN veiculos v ON v.funcionario_id = f.id
UNION ALL
SELECT * FROM funcionarios f RIGHT JOIN veiculos v ON v.funcionario_id = f.id;

-- FULL ALTER JOIN

SELECT * FROM funcionarios f LEFT JOIN veiculos v ON v.funcionario_id = f.id
UNION
SELECT * FROM funcionarios f RIGHT JOIN veiculos v ON v.funcionario_id = f.id;

-- EQUI JOIN

CREATE TABLE cpfs
(
  id int unsigned not null,
  cpf varchar(14) not null,
  PRIMARY KEY (id),
  CONSTRAINT fk_cpf FOREIGN KEY (id) REFERENCES funcionarios (id)
);

INSERT INTO cpfs (id, cpf) VALUES (1, '111.111.111-11');
INSERT INTO cpfs (id, cpf) VALUES (2, '222.222.222-22');
INSERT INTO cpfs (id, cpf) VALUES (3, '333.333.333-33');
INSERT INTO cpfs (id, cpf) VALUES (4, '444.444.444-44');
INSERT INTO cpfs (id, cpf) VALUES (5, '555.555.555-55');

SELECT * FROM cpfs;

SELECT * FROM funcionarios INNER JOIN cpfs ON funcionarios.id = cpfs.id;
SELECT * FROM funcionarios INNER JOIN cpfs USING(id);

-- SELF JOIN

CREATE TABLE clientes
(
   id int unsigned not null auto_increment,
   nome varchar (45) not null,
   quem_indicou int unsigned,
   PRIMARY KEY (id),
   CONSTRAINT fk_quem_indicou FOREIGN KEY (quem_indicou) REFERENCES clientes (id)
);

INSERT INTO clientes (id, nome, quem_indicou) VALUES (1, 'André', NULL);
INSERT INTO clientes (id, nome, quem_indicou) VALUES (2, 'Samuel', 1);
INSERT INTO clientes (id, nome, quem_indicou) VALUES (3, 'Carlos', 2);
INSERT INTO clientes (id, nome, quem_indicou) VALUES (4, 'Rafael', 1);

SELECT * FROM clientes;

SELECT a.nome, b.nome FROM clientes a JOIN clientes b ON a.quem_indicou = b.id;
SELECT a.nome AS CLIENTE, b.nome AS "QUEM INDICOU" FROM clientes a JOIN clientes b ON a.quem_indicou = b.id;

-- Unindo três tabelas

SELECT * FROM funcionarios
INNER JOIN veiculos ON veiculos.funcionario_id = funcionarios.id 
INNER JOIN cpfs ON cpfs.id = funcionarios.id;

-- Visões

SELECT * FROM funcionarios WHERE salario >= 1800;

CREATE VIEW funcionarios_a AS SELECT * FROM funcionarios WHERE salario >= 1700;
SELECT * FROM funcionarios_a;

UPDATE funcionarios SET salario = 1500 WHERE id = 3;
SELECT * FROM funcionarios_a;

DROP VIEW funcionarios_a;
CREATE VIEW funcionarios_a AS SELECT * FROM funcionarios WHERE salario >= 2000;
SELECT * FROM funcionarios_a;
