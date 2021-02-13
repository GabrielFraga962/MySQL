-- criar um banco de dados
create database db_rh;
-- acessar o banco de dados
use db_rh;
-- criar uma tabela de funcionários
create table tb_funcionarios(
	id bigint auto_increment,
    nome varchar(255) not null,
    salario decimal(10,2) not null,
    funcao varchar(255) not null,
    contrato boolean,
    primary key (id)
    );
-- popular tabela
insert into tb_funcionarios(nome, salario, funcao, contrato) values ("Natacha", "5000.00" , "Desenvolvedora Java", true);
insert into tb_funcionarios(nome, salario, funcao, contrato) values ("Nicolas", "1900.00" , "Auxiliar administrativo", true);
insert into tb_funcionarios(nome, salario, funcao, contrato) values ("Bruna", "5000.00" , "Desenvolvedor C#", true);
insert into tb_funcionarios(nome, salario, funcao, contrato) values ("Karine", "3000.00" , "Publicitária", true);
insert into tb_funcionarios(nome, salario, funcao, contrato) values ("Jean", "1500.00" , "Secretário", true);

select * from tb_funcionarios;
select * from tb_funcionarios where salario > "2000.00";
select * from tb_funcionarios where salario < "2000.00";

update tb_funcionarios set salario = 1800.00 where id = 5;

select * from tb_funcionarios;
-- usado para atualizar os dados
use db_rh;
update tb_funcionarios set nome = "Jean" where nome = "Gabriel"

