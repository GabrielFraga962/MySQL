CREATE DATABASE db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
	id_categoria bigint auto_increment,
    descricao varchar(265) not null, 
    ativo boolean not null,
    primary key(id_categoria)
);

CREATE TABLE tb_produto(
	id_prod bigint auto_increment,
    nome varchar(265) not null,
    preco float not null,
    quantidade int not null,
	marca varchar(265),
    id_categoria bigint not null,
    primary key(id_prod),
    foreign key(id_categoria) references tb_categoria(id_categoria)
);

-- popular categoria com até 5 dados
INSERT INTO tb_categoria(descricao, ativo) VALUES ("Pisos e Revestimentos", true);
INSERT INTO tb_categoria(descricao, ativo) VALUES ("Área externa", true);
INSERT INTO tb_categoria(descricao, ativo) VALUES ("Portas e janelas", true);
INSERT INTO tb_categoria(descricao, ativo) VALUES ("Hidraulica", true);
INSERT INTO tb_categoria(descricao, ativo) VALUES ("Materiais de construção", true);

select * from tb_categoria;

-- popular produto com até 8 dados
INSERT INTO tb_produto(nome, quantidade, preco, id_categoria) VALUES ("Pastilhas de porcelana", 700 , 38.90, 1);
INSERT INTO tb_produto(nome, quantidade, preco, id_categoria) VALUES ("Piso de Madeira 50x50", 500 , 25.90, 1);
INSERT INTO tb_produto(nome, quantidade, preco, id_categoria) VALUES ("Piscina 2000L", 30, 399.90, 2);
INSERT INTO tb_produto(nome, quantidade, preco, id_categoria) VALUES ("Porta com batente de giro", 90, 179.90, 3);
INSERT INTO tb_produto(nome, quantidade, preco, id_categoria) VALUES ("Janela de correr 4 fls", 30, 289.90, 3);
INSERT INTO tb_produto(nome, quantidade, preco, id_categoria) VALUES ("Caixa dagua 500L", 30, 200.90, 4);
INSERT INTO tb_produto(nome, quantidade, preco, id_categoria) VALUES ("Tijolinho ensacado", 2500, 5.79, 5);
INSERT INTO tb_produto(nome, quantidade, preco, id_categoria) VALUES ("Bloco de cimento", 2000, 3.09, 5);
  
select * from tb_produto;  
select * from tb_produto where preco > 50;
select * from tb_produto where preco between 3 and 60;
select * from tb_produto where nome like "%ci%";

-- Faça um um select com Inner join entre tabela categoria e produto.
select tb_produto.nome, tb_produto.preco, tb_categoria.descricao from tb_produto
inner join tb_categoria on tb_categoria.id_categoria = tb_produto.id_categoria;
        
-- Faça um select onde traga todos os Produtos de uma categoria específica
select tb_produto.nome, tb_produto.preco, tb_categoria.descricao from tb_produto
inner join tb_categoria on tb_categoria.id_categoria = tb_produto.id_categoria
where tb_categoria.id_categoria = 3;