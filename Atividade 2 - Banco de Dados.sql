
create database db_ecommerce;

use db_ecommerce;

create table tb_roupas(
Identificador bigint(5) auto_increment,
Peça varchar(255) not null,
Tamanho varchar(255) not null,
Preço decimal (4,2) not null,
Loja varchar(255) not null,
primary key (Identificador)
);

insert into tb_roupas (Peça, Tamanho, Preço, Loja) values ("Camiseta", "P", 35.90, "São Paulo");
insert into tb_roupas (Peça, Tamanho, Preço, Loja) values ("Calça", "M", 69.90, "São Paulo");
insert into tb_roupas (Peça, Tamanho, Preço, Loja) values ("Camisa Xadrez", "M", 54.90, "São José dos Campos");
insert into tb_roupas (Peça, Tamanho, Preço, Loja) values ("Saia", "G", 44.90, "Guarulhos");
insert into tb_roupas (Peça, Tamanho, Preço, Loja) values ("Pijama", "M", 45.90, "São Paulo");

select * from tb_roupas where Preço > 500;
select * from tb_roupas where Preço < 500;
update tb_roupas set Tamanho = "P" where Identificador = 2;

select * from tb_roupas;
