-- desativa o modo seguro MySQL 1 ativa e 0 desativa.
SET SQL_SAFE_UPDATES = 0;
-- Criando um banco de dados.
CREATE DATABASE db_quitanda;
USE db_quitanda;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(30),
    preco DECIMAL(6, 2)
);

SELECT * FROM tb_produtos;
INSERT INTO tb_produtos(nome_produto, preco) VALUES
("Maça", 3.00), 
("Banana", 4.00), 
("Pitanga", 5.00), 
("Romã", 6.00), 
("Tomate", 5.00);

UPDATE tb_produtos SET preco = 7.90 WHERE id = 2;

