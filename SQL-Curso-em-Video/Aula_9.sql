SELECT DISTINCT carga FROM cursos
ORDER BY carga;

SELECT carga FROM cursos
GROUP BY carga;

SELECT carga, COUNT(nome) FROM cursos
GROUP BY carga;

SELECT totaulas FROM cursos
ORDER BY totaulas;

SELECT DISTINCT totaulas FROM cursos
ORDER BY totaulas;

SELECT totaulas FROM cursos
GROUP BY totaulas
ORDER BY totaulas;

SELECT * FROM cursos WHERE totaulas = 30;

SELECT * FROM cursos WHERE totaulas > 20;

SELECT carga, COUNT(nome) FROM cursos WHERE totaulas = 30
GROUP BY carga;

SELECT ano, COUNT(*) FROM cursos
GROUP BY ano
HAVING COUNT(ano) >= 5
ORDER BY COUNT(*) DESC;

SELECT AVG(carga) FROM cursos;

SELECT carga, COUNT(*) FROM cursos
WHERE ano > 2015
GROUP BY carga
HAVING carga > (SELECT AVG(carga) FROM cursos);
