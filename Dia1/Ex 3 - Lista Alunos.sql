-- criar um banco de dados
create database db_escola;
-- acessar o banco de dados
use db_escola;
-- criar uma tabela
create table tb_alunos(
RA bigint auto_increment,
nome varchar(255) not null,
idade int not null,
turma varchar(255) not null,
mediafinal decimal(10,2) not null, 
primary key (RA)
);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Arthur", 16, "B3", 9.75);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Samantha", 13, "B7", 6.75);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Eduardo", 12, "B7", 7.25);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Mary", 12, "B3", 5.50);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Vitoria", 17, "B7", 6.00);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Elisabet", 14, "B6", 7.75);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Phillpe", 15, "B5", 6.75);
insert into tb_alunos(nome, idade, turma, mediafinal) values ("Pedro", 18, "B7", 8.75);

select * from tb_alunos;

select * from tb_alunos where mediafinal > 7;
select * from tb_alunos where mediafinal < 7;

update tb_alunos set mediafinal = 6.50 where RA = 5;

select * from tb_alunos