CREATE DATABASE db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

CREATE TABLE tb_categorias(
	id bigint auto_increment,
	tipo varchar(265) not null,
	ativo boolean not null,
	primary key (id)
);

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(265) not null,
	preco decimal(10,2) not null,
	certificado boolean not null,
	categoria bigint not null,
    primary key (id),
	foreign key (categoria) references tb_categorias (id)
);

INSERT INTO tb_categorias(tipo, ativo) VALUES ("TI e Software", true);
INSERT INTO tb_categorias(tipo, ativo) VALUES  ("Marketing", true);
INSERT INTO tb_categorias(tipo, ativo) VALUES ("Finanças", true);
INSERT INTO tb_categorias(tipo, ativo) VALUES ("Design", true);
INSERT INTO tb_categorias(tipo, ativo) VALUES ("Negócios", true);

INSERT INTO tb_produtos(nome, preco, certificado, categoria) VALUES ("Ruby", 29.99, true, 1);
INSERT INTO tb_produtos(nome, preco, certificado, categoria) VALUES  ("GitHub", 27.90, true, 1);
INSERT INTO tb_produtos(nome, preco, certificado, categoria) VALUES ("JavaScript", 54.99, true, 1);
INSERT INTO tb_produtos(nome, preco, certificado, categoria) VALUES ("Google Analytics", 65.00, true, 2);
INSERT INTO tb_produtos(nome, preco, certificado, categoria) VALUES ("Analise de Ações", 55.99, true, 3);
INSERT INTO tb_produtos(nome, preco, certificado, categoria) VALUES ("Adobe Illustrator", 37.99, true, 4);
INSERT INTO tb_produtos(nome, preco, certificado, categoria) VALUES ("UX", 25.99, true, 4);
INSERT INTO tb_produtos(nome, preco, certificado, categoria) VALUES ("Scrum", 29.99, true, 5);

select * from tb_produtos where preco > 50.00;
select * from tb_produtos where preco >= 3.00 && preco <= 60.00;
select * from tb_produtos where nome like "jav%";

select tb_produtos.nome, tb_produtos.preco, tb_produtos.certificado, tb_categorias.tipo from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria;

select tb_produtos.nome, tb_produtos.preco, tb_produtos.certificado, tb_categorias.tipo from tb_produtos 
inner join tb_categorias on tb_categorias.id = tb_produtos.categoria
where tb_categorias.tipo = "Design";