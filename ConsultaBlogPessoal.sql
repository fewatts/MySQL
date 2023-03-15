USE db_blogpessoal;

INSERT INTO tb_postagens (data, texto, titulo) 
VALUES (current_timestamp(), 'Tocando muito bem nas transições com loops bons', 'Brutalismus 3000');
INSERT INTO tb_postagens (data, texto, titulo) 
VALUES (current_timestamp(), 'Ich brauche freitagggg', '14 de março');

SELECT * FROM tb_postagens;