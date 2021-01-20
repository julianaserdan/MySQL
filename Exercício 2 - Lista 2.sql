
create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
Número bigint(5) auto_increment,
Descrição varchar(255) not null,
Disponibilidade boolean not null,
primary key (Número)
);

insert into tb_categoria (Descrição, Disponibilidade) values ("Medicamentos", true);
insert into tb_categoria (Descrição, Disponibilidade) values ("Perfumaria", true);
insert into tb_categoria (Descrição, Disponibilidade) values ("Manipulados", false);

select * from tb_categoria;

create table tb_produto(
Número bigint(5) auto_increment,
Nome varchar(255) not null,
Lote varchar(255) not null,
Preço decimal(4,2) not null,
categoria_numero bigint(5),
primary key (Número),
foreign key (categoria_numero) references tb_categoria (Número)

);

insert into tb_produto (Nome, Lote, Preço, categoria_numero) values ("Remédio para dor", "DB123", 14.9, 1);
insert into tb_produto (Nome, Lote, Preço, categoria_numero) values ("Shampoo", "DB425", 24.9, 2);
insert into tb_produto (Nome, Lote, Preço, categoria_numero) values ("Contraceptivo", "DB123", 34.9, 1);
insert into tb_produto (Nome, Lote, Preço, categoria_numero) values ("Bio-Oil Loção Corporal", "DB425", 30.9, 2);
insert into tb_produto (Nome, Lote, Preço, categoria_numero) values ("Hidratante Facial", "DB425", 54.9, 2);
insert into tb_produto (Nome, Lote, Preço, categoria_numero) values ("Remédio para enjoo", "DB123", 21.9, 1);
insert into tb_produto (Nome, Lote, Preço, categoria_numero) values ("Remédio natural manipulado", "DB764", 44.9, 3);
insert into tb_produto (Nome, Lote, Preço, categoria_numero) values ("Condicionador", "DB425", 25.9, 2);

select Nome,Preço from tb_produto where Preço > 50;
select Nome,Preço from tb_produto where Preço >= 3 and Preço <= 60;
select Nome from tb_produto where Nome like "B%";
select * from tb_produto inner join tb_categoria on tb_categoria.Número = tb_produto.categoria_numero;
select * from tb_produto inner join tb_categoria on tb_categoria.Número = tb_produto.categoria_numero where tb_categoria.Descrição = "Perfumaria";


