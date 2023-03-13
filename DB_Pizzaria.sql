CREATE DATABASE db_pizzaria;
USE db_pizzaria;

CREATE TABLE tb_categorias(
	idcategoria BIGINT PRIMARY KEY AUTO_INCREMENT,
		tamanho VARCHAR(20),
        tipo VARCHAR(20)
);

INSERT INTO tb_categorias(tamanho, tipo) VALUES
("Grande", "Salgada"),
("Pequena", "Salgada"),
("Pequena", "Doce"),
("Grande", "Doce");

SELECT * FROM tb_categorias;
DROP TABLE tb_categorias;

CREATE TABLE tb_pizzas(
	idpizzas BIGINT PRIMARY KEY AUTO_INCREMENT,
		sabor VARCHAR(30),
        preco DECIMAL(6, 2),
        vegetariana BOOLEAN,
        categoria BIGINT,
	FOREIGN KEY(categoria) REFERENCES tb_categorias(idcategoria)
);

INSERT INTO tb_pizzas(sabor, preco, vegetariana, categoria) VALUES 
("Calabresa", 26.56, false, 1),
("Queijo", 18.65, true, 2),
("Margarita", 45.56, false, 1),
("Romeu e Julieta", 26.56, true, 4),
("M&M's e Nutella", 34.56, true, 3),
("Peperoni", 56.56, false, 2),
("Frango com catupiry", 35.54, false, 1);

SELECT * from tb_pizzas WHERE preco >= 50 AND preco <= 100;

SELECT * from tb_pizzas WHERE preco >= 45;

SELECT * from tb_pizzas WHERE sabor LIKE '%m%';

SELECT * from tb_pizzas INNER JOIN tb_categorias 
ON tb_pizzas.categoria = tb_categorias.idcategoria;

SELECT * FROM tb_pizzas
INNER JOIN tb_categorias ON tb_categorias.idcategoria = tb_pizzas.categoria
WHERE tb_categorias.tipo = "Doce";