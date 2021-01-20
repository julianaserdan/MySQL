
create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
Número bigint(5) auto_increment,
Descrição varchar(255) not null,
Disponibilidade boolean not null,
primary key (Número)
);

insert into tb_categoria (Descrição, Disponibilidade) values ("Salgadas", true);
insert into tb_categoria (Descrição, Disponibilidade) values ("Doces", true);
insert into tb_categoria (Descrição, Disponibilidade) values ("Vegetarianas", false);

select * from tb_categoria;

create table tb_pizza(
Número bigint(5) auto_increment,
Sabor varchar(255) not null,
Massa varchar(255) not null,
Preço decimal(4,2) not null,
categoria_numero bigint(5),
primary key (Número),
foreign key (categoria_numero) references tb_categoria (Número)

);

insert into tb_pizza (Sabor, Massa, Preço, categoria_numero) values ("Queijo", "Fina", 24.9, 1);
insert into tb_pizza (Sabor, Massa, Preço, categoria_numero) values ("Atum", "Fina", 24.9, 1);
insert into tb_pizza (Sabor, Massa, Preço, categoria_numero) values ("Pepperoni", "Grossa", 30.9, 1);
insert into tb_pizza (Sabor, Massa, Preço, categoria_numero) values ("Brigadeiro", "Fina", 20.9, 2);
insert into tb_pizza (Sabor, Massa, Preço, categoria_numero) values ("Banana", "Fina", 33.9, 2);
insert into tb_pizza (Sabor, Massa, Preço, categoria_numero) values ("Brócolis", "Grossa", 54.9, 3);
insert into tb_pizza (Sabor, Massa, Preço, categoria_numero) values ("Calabresa", "Fina", 24.9, 1);
insert into tb_pizza (Sabor, Massa, Preço, categoria_numero) values ("Rúcula", "Grossa", 40.9, 3);


select Sabor,Preço from tb_pizza where Preço > 45;
select Sabor,Preço from tb_pizza where Preço >= 29 and Preço <= 60;
select Sabor from tb_pizza where Sabor like "C%";
select * from tb_pizza inner join tb_categoria on tb_categoria.Número = tb_pizza.categoria_numero;
select * from tb_pizza inner join tb_categoria on tb_categoria.Número = tb_pizza.categoria_numero where tb_categoria.Descrição = "Doces";


