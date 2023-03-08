CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
    id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    preco decimal not null,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("tomate",100, 8.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("maçã",20, 5.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("laranja",50, 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("banana",200, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("uva",1200, 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("pêra",500, 2.99);

SET SQL_SAFE_UPDATES = 1;

CREATE TABLE tb_categoria(
    id bigint auto_increment,
    descricao varchar(255) not null,
    primary key (id)
);

INSERT INTO tb_categoria (descricao) values ("Fruta");
INSERT INTO tb_categoria (descricao) values ("Verdura");
INSERT INTO tb_categoria (descricao) values ("Legume");
INSERT INTO tb_categoria (descricao) values ("grãos");

SELECT * FROM tb_categoria;

ALTER TABLE tb_produtos ADD categoria_id bigint;
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias 
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id);

INSERT INTO tb_produtos(
    nome, quantidade, preco, categoria_id
) values("Pitaya", 10, 15.00, 1);

INSERT INTO tb_produtos(
    nome, quantidade, preco, categoria_id
) values("Agrião", 15, 3.00, 2);

INSERT INTO tb_produtos(
    nome, quantidade, preco, categoria_id
) values("Cenoura", 18, 3.50, 3);

SELECT * FROM tb_produtos;

SELECT nome, quantidade, preco from tb_produtos
INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.categoria_id;