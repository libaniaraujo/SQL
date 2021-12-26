USE cadastro;

SELECT * FROM cursos;

INSERT INTO cursos values
('1', 'HTML4', 'Curso de HTML5', '40', '37', '2014'),
('2', 'Algoritmos','Lógica de Programação','20','15','2014'),
('3', 'Photoshop', 'Dicas de Photoshop CC', '10', '8', '2014'),
('4', 'PGP', 'Curso de PHP para iniciantes', '10', '8', '2014'),
('5', 'Jarva', 'Introdução à Linguagem Java', '10', '29', '2000'),
('6', 'MySQL', 'Banco de Dados MySQL', '30', '15', '2016'),
('7', 'Word', 'Curso completo de Word', '40', '30', '2018'),
('8', 'Sapateado', 'Danças Ritimicas', '40', '30', '2018'),
('9', 'Cozinha Árabe', 'Aprenda a fazer Kibe', '40', '30', '2018'),
('10', 'YouTuber', 'Gerar polêmica e ganhar inscritos', '5', '2', '2018');

UPDATE cursos
SET nome = 'HTLM5'
WHERE idcurso = '1';

UPDATE cursos
SET nome = 'PHP', ano = '2015'
WHERE idcurso = '4';

UPDATE cursos
SET nome = 'JAVA', carga = '40', ano = '2015'
WHERE idcurso = '5';

SELECT * FROM cursos;

UPDATE cursos
SET ano = '2050', carga = '800'
WHERE ano = '2018'
LIMIT 1;

SELECT * FROM cursos;

DELETE FROM cursos
WHERE idcurso = '8';

DELETE FROM cursos
WHERE ano = '2018'
LIMIT 3;

DELETE FROM cursos
WHERE ano = '2050'
LIMIT 2;

TRUNCATE cursos;

SELECT * FROM cursos;



