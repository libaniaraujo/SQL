USE cadastro;

DESCRIBE gafanhotos;

ALTER TABLE gafanhotos
ADD COLUMN  coursopreferido int;
DESCRIBE gafanhotos;

ALTER TABLE gafanhotos
ADD FOREIGN KEY (coursopreferido)
REFERENCES cursos(idcurso);

SELECT * FROM cursos;

UPDATE gafanhotos SET coursopreferido = '6' WHERE id = '1';

SELECT * FROM gafanhotos;

DELETE FROM cursos WHERE idcurso = '6';

DELETE FROM cursos WHERE idcurso = '28';

SELECT nome, coursopreferido FROM gafanhotos;

SELECT nome, ano FROM cursos;

SELECT gafanhotos.nome, gafanhotos.coursopreferido, cursos.nome, cursos.ano
FROM gafanhotos JOIN cursos
ON cursos.idcurso = gafanhotos.coursopreferido;

SELECT * FROM gafanhotos;

SELECT g.nome, c.nome, c.ano
FROM gafanhotos as g INNER JOIN cursos as c
ON c.idcurso = g.coursopreferido;

SELECT * FROM gafanhotos;

