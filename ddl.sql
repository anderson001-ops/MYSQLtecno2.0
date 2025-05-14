drop database if exists pcgamer;
create database pcgamer;
use pcgamer;
create table fabricante(
	codigo int (10) primary key auto_increment,
	nombre varchar(100)
);

create table producto(
	codigo int (10) primary key auto_increment,
	nombre varchar(100),
    precio double
);

alter table producto
add column codigo_fabricante int;

alter table producto
add constraint fk_producto_fabricanteproductoproducto
foreign key (codigo_fabricante)
references fabricante (codigo);