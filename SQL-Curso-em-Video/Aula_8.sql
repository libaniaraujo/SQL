SELECT * FROM cursos
WHERE nome = 'PHP';

SELECT * FROM cursos
WHERE nome LIKE 'P%';

SELECT * FROM cursos
WHERE nome LIKE 'A%';

SELECT * FROM cursos
WHERE nome LIKE '%A';

SELECT * FROM cursos
WHERE nome LIKE '%A%';

SELECT * FROM cursos
WHERE nome NOT LIKE '%A%';

SELECT * FROM cursos
WHERE nome LIKE 'PH%P';

SELECT * FROM cursos
WHERE nome LIKE 'PH%P%';

SELECT * FROM cursos
WHERE nome LIKE 'PH%P_';

SELECT * FROM cursos
WHERE nome LIKE 'P__t%';

SELECT * FROM gafanhotos
WHERE nome LIKE '%silva%';

SELECT * FROM gafanhotos
WHERE nome LIKE '%silva';

SELECT * FROM gafanhotos
WHERE nome LIKE 'silva%';

SELECT nacionalidade FROM gafanhotos;

SELECT DISTINCT nacionalidade FROM gafanhotos
ORDER BY nacionalidade;

SELECT DISTINCT carga FROM cursos
ORDER BY carga;

SELECT * FROM cursos WHERE carga > 40;

SELECT COUNT(*) FROM cursos WHERE carga > 40;

SELECT * FROM cursos ORDER BY carga;

SELECT MAX(carga) FROM cursos;

SELECT * FROM cursos WHERE ano = '2015';

SELECT MAX(totaulas) FROM cursos WHERE ano = '2015';

SELECT MIN(totaulas) FROM cursos WHERE ano = '2015';

SELECT SUM(totaulas) FROM cursos WHERE ano = '2016';

SELECT AVG(totaulas) FROM cursos WHERE ano = '2016';





