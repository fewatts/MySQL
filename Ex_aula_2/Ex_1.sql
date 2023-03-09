CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;
-- ok
CREATE TABLE tb_classes(
 idclasse BIGINT PRIMARY KEY AUTO_INCREMENT,
	 nome VARCHAR(255),
	 distancia_longa VARCHAR(255),
	 poder VARCHAR(255)
);
-- ok
INSERT INTO tb_classes (nome, distancia_longa, poder) VALUES
("Arqueiro", "Longa", "Flexa"),
("Guerreiro", "Curta", "Espada"),
("Mago", "Media", "Varinha"),
("Curandeiro", "Curta", "Flexa");
-- ok
CREATE TABLE tb_personagens(
	 idpersonagem BIGINT PRIMARY KEY AUTO_INCREMENT,
		id_classe BIGINT,
		 nome VARCHAR(20),
		 defesa DECIMAL(6,2),
		 ataque DECIMAL(6,2),
		 magia DECIMAL(6,2),
		 cura DECIMAL(6,2),
	FOREIGN KEY(id_classe) REFERENCES tb_classes(idclasse)
);
-- ok
INSERT INTO tb_personagens(id_classe, nome, defesa, ataque, magia, cura) VALUES
(1, "hgfdetyhn", 700.00, 300.00, 600.00, 500.00),
(2, "jbfdert", 200.00, 200.00, 500.00, 300.00),
(3, "nbvcdrty", 600.00, 100.00, 300.00, 400.00),
(4, "sdlkfd", 300.00, 800.00, 900.00, 300.00),
(1, "rtgcdrt", 600.00, 900.00, 300.00, 600.00),
(3, "ertyhbc", 300.00, 400.00, 200.00, 600.00),
(2, "sdtyjnbvf", 100.00, 300.00, 600.00, 900.00);
-- ok
SELECT * FROM tb_personagens
WHERE ataque > 200;
-- ok
SELECT * FROM tb_personagens
WHERE ataque < 200;
-- ok
SELECT * FROM tb_personagens
WHERE nome LIKE '%c%';
-- ok
SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.idclasse = tb_personagens.id_classe;

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.idclasse = tb_personagens.id_classe
WHERE tb_classes.nome = "Mago";
