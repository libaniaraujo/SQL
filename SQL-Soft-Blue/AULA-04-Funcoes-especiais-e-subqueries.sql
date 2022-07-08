
/* FUNÇÕES ESPECIAIS E SUBQUERIES */

USE curso_sql;

SELECT * FROM funcionarios;

-- Contagem

SELECT COUNT(*) FROM funcionarios;
SELECT COUNT(*) FROM funcionarios WHERE salario > 2000;
SELECT COUNT(*) FROM funcionarios WHERE salario > 1600 AND departamento = 'Jurídico';

-- Soma

SELECT SUM(salario) FROM funcionarios;
SELECT SUM(salario) FROM funcionarios WHERE departamento = 'TI';

-- Média

SELECT AVG(salario) FROM funcionarios;
SELECT AVG(salario) FROM funcionarios WHERE departamento = 'TI';

-- Máximo

SELECT MAX(salario) FROM funcionarios;
SELECT MAX(salario) FROM funcionarios WHERE departamento = 'TI';

-- Mínimo

SELECT MIN(salario) FROM funcionarios;
SELECT MIN(salario) FROM funcionarios WHERE departamento = 'TI';

-- Listar registros

SELECT departamento FROM funcionarios;
SELECT DISTINCT departamento FROM funcionarios;

-- Ordenar registros

SELECT * FROM funcionarios;
SELECT * FROM funcionarios ORDER BY nome;
SELECT * FROM funcionarios ORDER BY nome DESC;

SELECT * FROM funcionarios ORDER BY salario;
SELECT * FROM funcionarios ORDER BY departamento;
SELECT * FROM funcionarios ORDER BY departamento DESC, salario DESC;

-- Paginação

SELECT * FROM funcionarios;
SELECT * FROM funcionarios LIMIT 2 OFFSET 1;
SELECT * FROM funcionarios LIMIT 1, 2;

-- Funções de agrupamento

SELECT AVG(salario) FROM funcionarios;
SELECT AVG(salario) FROM funcionarios WHERE departamento = 'TI';
SELECT AVG(salario) FROM funcionarios WHERE departamento = 'Jurídico';

SELECT departamento, AVG(salario) FROM funcionarios GROUP BY departamento;
SELECT departamento, AVG(salario) FROM funcionarios GROUP BY departamento HAVING AVG(salario) > 2000;

-- Subqueries

SELECT departamento, COUNT(*) FROM funcionarios GROUP BY departamento;

SELECT departamento, AVG(salario) FROM funcionarios GROUP BY departamento;
SELECT nome FROM funcionarios WHERE departamento = 'Jurídico';

SELECT nome FROM funcionarios WHERE departamento IN (SELECT departamento FROM funcionarios GROUP BY departamento HAVING AVG(salario) > 2000);

