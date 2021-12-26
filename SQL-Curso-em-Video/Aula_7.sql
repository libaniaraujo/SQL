USE cadastro;

SELECT * FROM gafanhotos;

SELECT * FROM cursos
ORDER BY nome desc;

SELECT nome, carga, ano FROM cursos
ORDER BY nome;

SELECT nome, carga, ano FROM cursos
ORDER BY ano, nome;

SELECT nome, carga, ano FROM cursos
WHERE ANO = '2016'
ORDER BY ano, nome;

SELECT nome, carga FROM cursos
WHERE ANO = '2016'
ORDER BY ano, nome;

SELECT nome, descricao, ano FROM cursos
WHERE ano <= 2015
ORDER BY ano, nome;

SELECT nome, descricao, ano FROM cursos
WHERE ano != 2015
ORDER BY ano, nome;

SELECT nome, descricao, ano FROM cursos
WHERE ano <> 2015
ORDER BY ano, nome;

SELECT * FROM cursos
WHERE ano BETWEEN 2014 AND 2016
ORDER BY ano desc, nome;

SELECT nome, descricao, ano FROM cursos
WHERE ano IN (2014, 2016, 2016)
ORDER BY ano;

SELECT nome, carga, totaulas FROM cursos
WHERE carga > 35 AND totaulas < 30
ORDER BY nome;

SELECT nome, carga, totaulas FROM cursos
WHERE carga > 35 OR totaulas < 30;

