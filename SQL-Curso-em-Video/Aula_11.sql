USE cadastro;

CREATE TABLE gafanhoto_assiste_curso (
id int NOT NULL AUTO_INCREMENT,
data date,
idgafanhoto int,
idcurso int,
PRIMARY KEY (id),
FOREIGN KEY (idgafanhoto) REFERENCES gafanhotos(id),
FOREIGN KEY (idcurso) REFERENCES cursos(idcurso)
) DEFAULT CHARSET = utf8;

INSERT INTO gafanhoto_assiste_curso values
(default, '2014-03-01', '1', '2');

SELECT * FROM gafanhoto_assiste_curso;

SELECT * FROM gafanhotos g
JOIN gafanhoto_assiste_curso a
ON g.id = a.idgafanhoto
JOIN cursos c;

