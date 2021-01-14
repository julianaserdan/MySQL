
create database db_escola;

use db_escola;

create table tb_alunos(
Matrícula bigint(5) auto_increment,
Nome varchar(255) not null,
Idade int not null,
Turma int not null,
Nota decimal(2,1) not null,
primary key (Matrícula)
);

select * from tb_alunos;

insert into tb_alunos (Nome, Idade, Turma, Nota) values ("Jaco-Louis", 33, 2, 9.5);
insert into tb_alunos (Nome, Idade, Turma, Nota) values ("Juliana", 30, 4, 9.5);
insert into tb_alunos (Nome, Idade, Turma, Nota) values ("Chase", 30, 2, 8.0);
insert into tb_alunos (Nome, Idade, Turma, Nota) values ("Cameron", 29, 1, 6.5);
insert into tb_alunos (Nome, Idade, Turma, Nota) values ("Gabriela", 31, 2, 7.0);
insert into tb_alunos (Nome, Idade, Turma, Nota) values ("Ana Luísa", 34, 4, 5.0);



select Nome from tb_alunos where Nota > 7;
select Nome from tb_alunos where Nota < 7;
update tb_alunos set Turma = 1 where Matrícula = 6;

select * from tb_alunos;
