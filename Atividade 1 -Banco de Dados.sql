-- criar banco de dados
create database db_servico_rh;

-- utilizar determinado banco
use db_servico_rh;

-- criar tabela no banco de dados
create table tb_funcionarios(
id bigint(5) auto_increment,
nome varchar(255) not null,
idade int not null,
salario float not null,
primary key (id)
);

insert into tb_funcionarios (nome, idade, salario) values ("Juliana", 30, 5000);
insert into tb_funcionarios (nome, idade, salario) values ("Beatriz", 25, 5000);
insert into tb_funcionarios (nome, idade, salario) values ("Paula", 29, 3000);
insert into tb_funcionarios (nome, idade, salario) values ("Gabriel", 50, 15000);
insert into tb_funcionarios (nome, idade, salario) values ("Yasmin", 32, 6000);

select * from tb_funcionarios where salario > 2000;
select * from tb_funcionarios where salario <= 2000;
update tb_funcionarios set salario = 12000 where id = 2;

select * from tb_funcionarios;
delete from tb_funcionarios where id = 6;