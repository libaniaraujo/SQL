USE cadastro;

INSERT INTO pessoas
(id, nome, nascimento, sexo, peso, altura, nacionalidade)
VALUES
('Godofredo', '1984-01-02', 'M', '78.5', '1.83', 'Brasil'),
(default, 'Maria', '1999-12-30', 'F', '55.2', '1.65', 'Portugal'),
(default, 'Creuza', '1920-12-30', 'F', '50.2', '1.65', default),
(default, 'Adalgiza', '1930-11-12', 'F', '63.2', '1.75', 'Irlanda'),
(default, 'Ana', '1975-12-22', 'F', '52.3', '1.45', default),
(default, 'Pedro', '2000-07-15', 'M', '75.9', '1.70', default),
(default, 'Ana', '1975-12-22', 'F', '52.3', '1.45', default),
(default, 'Pedro', '2000-07-15', 'M', '75.9', '1.70', default);

select * from pessoas;