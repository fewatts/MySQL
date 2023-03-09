CREATE DATABASE escola;
USE escola;

CREATE TABLE aluno(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
		nome VARCHAR(50),
		matricula VARCHAR(12),
        	curso VARCHAR(30),
        	nota DECIMAL(4, 1)
);

INSERT INTO aluno(nome, matricula, curso, nota)
VALUES("Fernando", "64534", "Java", 9.8),
("Fulano 1", "765445", "Python", 7.8),
("Fulano 2", "65443", "C#", 7.8),
("Fulano 3", "986567", "Javascript", 9.8),
("Fulano 4", "4564", "SQL", 5.8),
("Fulano 5", "76543", "PHP", 8.8),
("Fulano 6", "8765", "C++", 8.8),
("Fulano 7", "76543", "Pascal", 8.8);

SELECT * FROM aluno WHERE nota > 7;
SELECT * FROM aluno WHERE nota < 7;

UPDATE aluno SET nota = 10 WHERE id = 1;
