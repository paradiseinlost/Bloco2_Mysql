CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
    id bigint auto_increment,
    classe_personagens varchar(255) not null,
    PRIMARY KEY (id)
);

CREATE TABLE tb_personagens(
    id bigint auto_increment,
	nome varchar(255),
    armas_personagem varchar(255),
	poder_ataque int not null,
	poder_defesa int not null,
    PRIMARY KEY (id)
);

ALTER TABLE tb_personagens ADD classes_id bigint;
ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (classes_id) REFERENCES tb_classes (id);

INSERT INTO tb_classes(classe_personagem)
values("Homens");

INSERT INTO tb_classes(classe_personagem)
values("Anões");

INSERT INTO tb_classes(classe_personagem)
values("Elfos");

INSERT INTO tb_classes(classe_personagem)
values("Magos");

INSERT INTO tb_classes(classe_personagem)
values("Orcs");

SELECT * FROM tb_classes;

INSERT INTO tb_personagens(nome, armas_personagem, poder_ataque, poder_defesa, classes_id) 
values ("Legolas Verdefolha","Arco e flecha", 5000, 4000, 3);

INSERT INTO tb_personagens(nome, armas_personagem, poder_ataque, poder_defesa, classes_id) 
values ("Gandalf, o Cinzento","Cajado", 6000, 5000, 4);

INSERT INTO tb_personagens(nome, armas_personagem, poder_ataque, poder_defesa, classes_id) 
values ("Gimli, filho de Glóin","Machado", 3000, 2000, 2);

INSERT INTO tb_personagens(nome, armas_personagem, poder_ataque, poder_defesa, classes_id) 
values ("Galadriel (Morfydd Clark)","Mente", 9000, 8000, 3);

INSERT INTO tb_personagens(nome, armas_personagem, poder_ataque, poder_defesa, classes_id) 
values ("Aragorn II (Passo largo)","Espada (Andúril)", 6000, 5000, 1);

INSERT INTO tb_personagens(nome, armas_personagem, poder_ataque, poder_defesa, classes_id) 
values ("Azog o Profano","Martelo", 6000, 4000, 5);

INSERT INTO tb_personagens(nome, armas_personagem, poder_ataque, poder_defesa, classes_id) 
values ("Elrond Meio-elfo","Magia", 5000, 4000, 3);

INSERT INTO tb_personagens(nome, armas_personagem, poder_ataque, poder_defesa, classes_id) 
values ("Orc Comum","Espada", 1500, 1000, 5);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

SELECT * FROM tb_personagens WHERE poder_defesa >= 1000 AND poder_defesa <= 2000;

SELECT * FROM tb_personagens WHERE nome LIKE "%c%";

SELECT nome, armas_personagem from tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id WHERE classes_id = 3;


