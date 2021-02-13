-- criar um banco de dados
create database db_ecommerce;
-- acessar o banco de dados
use db_ecommerce;
-- criar uma tabela 
create table tb_produtos(
	id bigint auto_increment,
    nome varchar(50) not null,
    preco decimal(10,2) not null,
    quantidade bigint not null,
    marca varchar(50) not null,
    primary key (id)
);
-- inserir dados na tabela
insert into tb_produtos(nome, preco, quantidade, marca) values ("Notebook NCS", 450.00, 10, "Razer");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Notebook ZX", 480.00, 10, "HP");   
insert into tb_produtos(nome, preco, quantidade, marca) values ("Notebook QAT", 450.00, 3, "Acer");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Notebook POS", 430.00, 5, "Samsung");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Notebook ZC", 490.99, 10, "Asus");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Notebook RR", 1000.99, 8, "Lenovo");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Notebook JA", 1500.99, 11, "Dell");
insert into tb_produtos(nome, preco, quantidade, marca) values ("Notebook IOS", 1800.99, 6, "Apple");    

select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set quantidade = 9 where id =1;

select * from tb_produtos;