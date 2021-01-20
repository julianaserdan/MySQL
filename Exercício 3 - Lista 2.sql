
create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
Número bigint(5) auto_increment,
Descrição varchar(255) not null,
Disponibilidade boolean not null,
primary key (Número)
);

insert into tb_categoria (Descrição, Disponibilidade) values ("Tecnologia", true);
insert into tb_categoria (Descrição, Disponibilidade) values ("Comunicação", true);
insert into tb_categoria (Descrição, Disponibilidade) values ("Finanças", false);

select * from tb_categoria;

create table tb_produto(
Número bigint(5) auto_increment,
Nome varchar(255) not null,
Período varchar(255) not null,
Preço decimal(4,2) not null,
categoria_numero bigint(5),
primary key (Número),
foreign key (categoria_numero) references tb_categoria (Número)

);

insert into tb_produto (Nome, Período, Preço, categoria_numero) values ("Java", "Manhã", 89.9, 1);
insert into tb_produto (Nome, Período, Preço, categoria_numero) values ("Marketing", "Manhã", 89.9, 2);
insert into tb_produto (Nome, Período, Preço, categoria_numero) values ("Controladoria", "Noite", 75.9, 3);
insert into tb_produto (Nome, Período, Preço, categoria_numero) values ("JavaScript", "Manhã", 79.0, 1);
insert into tb_produto (Nome, Período, Preço, categoria_numero) values ("HTML", "Noite", 95.9, 1);
insert into tb_produto (Nome, Período, Preço, categoria_numero) values ("Contabilidade", "Vespertino", 49.9, 3);
insert into tb_produto (Nome, Período, Preço, categoria_numero) values ("SQL", "Manhã", 84.9, 1);
insert into tb_produto (Nome, Período, Preço, categoria_numero) values ("Assessoria de Imprensa", "Noite", 94.0, 2);

select Nome,Preço from tb_produto where Preço > 50;
select Nome,Preço from tb_produto where Preço >= 3 and Preço <= 60;
select Nome from tb_produto where Nome like "J%";
select * from tb_produto inner join tb_categoria on tb_categoria.Número = tb_produto.categoria_numero;
select * from tb_produto inner join tb_categoria on tb_categoria.Número = tb_produto.categoria_numero where tb_categoria.Descrição = "Comunicação";


