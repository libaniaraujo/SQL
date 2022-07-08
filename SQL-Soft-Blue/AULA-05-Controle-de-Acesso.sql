
/* CONTROLE DE ACESSO */

-- Crear acessos

-- CREATE USER 'nome do usuário'@'local de acesso' IDENTIFIED BY 'milani123456'; 
CREATE USER 'andre'@'200.200.190.190' IDENTIFIED BY 'milani123456'; 
CREATE USER 'andre'@'localhost' IDENTIFIED BY 'milani123456'; 

-- Deixar o usuario utilizar a partir de qualquer local
CREATE USER 'andre'@'%' IDENTIFIED BY 'milani123456'; 

GRANT ALL ON curso_sql.* TO 'andre'@'localhost';

CREATE USER 'andre'@'%' IDENTIFIED BY 'milani123456'; 
GRANT SELECT ON curso_sql.* TO 'andre'@'%';

CREATE USER 'andre'@'%' IDENTIFIED BY 'andreviagem'; 
GRANT SELECT ON curso_sql.* TO 'andre'@'%';
GRANT INSERT ON curso_sql.* TO 'andre'@'%';
GRANT INSERT ON curso_sql.funcionarios TO 'andre'@'%';

-- Remover acessos

REVOKE INSERT ON curso_sql.funcionarios FROM 'andre'@'%';
REVOKE INSERT ON curso_sql.* FROM 'andre'@'%';

-- Remover usuários

DROP USER 'andre'@'%';
DROP USER 'ande'@'localhost';

-- Listar usuários do servidor

SELECT User FROM mysql.user;