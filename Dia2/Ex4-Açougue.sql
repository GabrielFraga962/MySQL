CREATE DATABASE db_cidade_das_carnes;
use db_cidade_das_carnes;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
	nome varchar(255) not null,
	ativo boolean not null,
    primary key (id)
);
CREATE TABLE tb_produto(
	id bigint auto_increment,
    nome varchar(265) not null,
    preco decimal(10,2) not null,
    quantidade int not null,
    categoria_id bigint,
    primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);
INSERT INTO tb_categoria(nome, ativo) VALUES ("Bovinos",true);
INSERT INTO tb_categoria(nome, ativo) VALUES ("Suínos", true);
INSERT INTO tb_categoria(nome, ativo) VALUES ("Aves", true);
INSERT INTO tb_categoria(nome, ativo) VALUES ("Acompanhamentos", true);
INSERT INTO tb_categoria(nome, ativo) VALUES ("Bebidas", true);

INSERT INTO tb_produto(nome, preco, quantidade, categoria_id) VALUES ("Alcatra", 40.00, 15, 1);
INSERT INTO tb_produto(nome, preco, quantidade, categoria_id) VALUES ("Bacon em Fatias", 20.00, 14, 2);
INSERT INTO tb_produto(nome, preco, quantidade, categoria_id) VALUES ("Peito de Peru", 15.00, 18, 3);
INSERT INTO tb_produto(nome, preco, quantidade, categoria_id) VALUES ("Farofa", 4.00, 20, 4);
INSERT INTO tb_produto(nome, preco, quantidade, categoria_id) VALUES ("Cerveja", 2.50, 50, 5);
INSERT INTO tb_produto(nome, preco, quantidade, categoria_id) VALUES ("Contra Filé", 50.99, 17, 1);
INSERT INTO tb_produto(nome, preco, quantidade, categoria_id) VALUES ("Pão de Alho", 10.00, 10, 4);
INSERT INTO tb_produto(nome, preco, quantidade, categoria_id) VALUES ("Queijo Coalho", 15.00, 20, 4);

select * from tb_produto where preco >= 50.00;
select * from tb_produto where preco >=3 && preco <=60;
select * from tb_produto where nome like "CO%";

-- select entre as duas tabelas
select tb_produto.nome, tb_produto.preco, tb_produto.quantidade, tb_categoria.nome, tb_categoria.ativo from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

-- select dos produtos de uma categoria específica
select tb_produto.nome, tb_produto.preco, tb_produto.quantidade, tb_categoria.nome, tb_categoria.ativo from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id
where tb_categoria.nome like "Acompanhamentos";