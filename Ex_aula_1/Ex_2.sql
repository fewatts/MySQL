CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
		nome VARCHAR(50),
		preco DECIMAL(8, 2) NOT NULL,
		categoria VARCHAR(25),
        	quantidade INT
);

INSERT INTO produtos(nome, preco, categoria, quantidade)
VALUES("MacBook M2", 10345.45, "Tecnologia", 1),
("Ipad 10 Gen", 6345.76, "Tecnologia", 1),
("AirPods Pro 2 Gen", 3987.43, "Tecnologia", 2),
("Monitor Samsung Odissey", 16345.45, "Tecnologia", 1),
("Gabinete Gamer", 7456.45, "Tecnologia", 1),
("Teclado mecânico", 743.54, "Tecnologia", 1),
("Mouse Gamer", 254.34, "Tecnologia", 1),
("HeadSet noise canceling", 3867.54, "Tecnologia", 2);


SELECT * FROM produtos WHERE preco > 500;
SELECT * FROM produtos WHERE preco < 500;

UPDATE produtos SET preco = 354.43 WHERE id = 6;
