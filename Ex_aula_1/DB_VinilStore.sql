CREATE DATABASE vinil_store;
USE vinil_store;

CREATE TABLE estilos(
	id BIGINT auto_increment PRIMARY KEY,
		estilo VARCHAR(30)
);

INSERT INTO estilos(estilo)
VALUES ("Techno"), ("HardTechno"), ("Industrial"), ("AcidTechno");
-- Until here ok;

CREATE TABLE vinil(
	VinilId BIGINT,
		nome VARCHAR(40),
		preco DECIMAL(8, 2),
		ano YEAR,
        estilo BIGINT, 
    FOREIGN KEY (estilo) REFERENCES estilos (id)
);
-- Until here ok;

INSERT INTO vinil(nome, preco, ano, estilo)
VALUES ("Tigerhead - HÖR", 30.43, 2020, 1),
("Brutalismus 3000 BRVTAL Vision", 45.23, 2021, 2),
("KILlEKILL PODCAST #31: TigerHead", 20.99, 2015, 4),
("VoxNox PodCast 179 - Tigerhead", 13.43, 2017, 4),
("NikKatze - PreBloody", 300.43, 2022, 1),
("Schwefelgelb", 23.34, 2023, 3);
-- Until here ok;
SELECT * FROM vinil WHERE preco > 40;
-- Until here ok;

SELECT * FROM vinil
INNER JOIN estilos ON estilos.id = vinil.estilo
WHERE estilos.estilo = "Techno";