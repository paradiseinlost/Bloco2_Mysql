CREATE DATABASE db_sistemaRh;
USE db_sistemaRh;

CREATE TABLE tb_colaboradores(
  id bigint auto_increment,
     nome varchar (255)not null,
     genero varchar (255)not null,
     matricula int ,
     idade int,
     telefone varchar (255)not null,
     PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores (nome,genero,matricula,idade,telefone)
VALUE ("Amanda", "feminino",1234,23,"954541212");
INSERT INTO tb_colaboradores (nome,genero,matricula,idade,telefone)
VALUE ("Renato", "masculino",1235,30,"954541313");
INSERT INTO tb_colaboradores (nome,genero,matricula,idade,telefone)
VALUE ("Helena", "feminino",1236,28,"954541414");
INSERT INTO tb_colaboradores (nome,genero,matricula,idade,telefone)
VALUE ("Cassandra", "feminino",1237,30,"954541515");
INSERT INTO tb_colaboradores (nome,genero,matricula,idade,telefone)
VALUE ("Luiza", "feminino",1238,59,"954541616");

ALTER TABLE tb_colaboradores 
ADD COLUMN salario FLOAT;
SELECT * FROM tb_colaboradores;

UPDATE tb_colaboradores SET salario = 2500.00 WHERE id=1;
UPDATE tb_colaboradores SET salario = 3000.00 WHERE id=2;
UPDATE tb_colaboradores SET salario = 1500.00 WHERE id=3;
UPDATE tb_colaboradores SET salario = 5000.00 WHERE id=4;
UPDATE tb_colaboradores SET salario = 1300.00 WHERE id=5;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;





