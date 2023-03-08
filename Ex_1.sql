CREATE DATABASE rh;
USE rh;

CREATE TABLE funcionarios(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
		nome VARCHAR(50),
		cargo VARCHAR(30),
		salario DECIMAL(8, 2) NOT NULL,
		horario VARCHAR(15)
);

INSERT INTO funcionarios(nome, cargo, salario, horario)
VALUES("Fernando Alves", "Java BackEnd Jr.", 1975.95, "Manhã"),
("TigerHead", "DJ Hard Techno", 10345.86, "Madrugada"),
("Dana Montana", "Data Science Jr.", 8756.45, "Tarde"),
("Maxximilian", "Java BackEnd Pl.", 6475.95, "Integral"),
("Albert EisenHower", "Java BackEnd Sr.", 15456.95, "Manhã");

SELECT * FROM funcionarios WHERE salario > 2000;
SELECT * FROM funcionarios WHERE salario < 2000;

UPDATE funcionarios SET salario = 2567.76 WHERE id = 1;
