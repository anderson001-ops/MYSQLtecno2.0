/*consulta sobre una tabla*/
/*1*/
select nombre from producto;
/*2*/
select nombre ,precio from producto;
/*3*/
select*from producto;
/*4*/
select nombre,precio as euro,
precio*1.10 as dolar from producto;
/*5*/
select nombre as "nombre de producto",
precio as euros, precio *1.10 as dolares from producto
/*6*/
select upper(nombre) as nombre_Mayuscula,precio from producto;
/*7*/
select lower(nombre) as nombre_minuscula,precio from producto;
/*8*/
select nombre as nombre_fabricante,
upper(left(nombre,2)) as primeroscaracteresfabricante from fabricante;
/*9*/
select nombre as nombre_producto,
round(precio,2) as redondeadoprecio
from producto;
/*10*/
select nombre as nombre_producto,
truncate(precio,0) as truncaditoprecio
from producto;
/*11*/
select distinct codigo_fabricante
from producto;
/*12*/
select distinct codigo_fabricante
from producto;
/*13*/
select nombre
from fabricante order by nombre asc
/*14*/
select nombre
from fabricante order by nombre desc
/*15*/
select nombre,precio
from producto
order by nombre asc, precio desc
/*16*/
select*from fabricante limit 5;
/*17*/
select*from fabricante limit 3,2;
/*18*/
select nombre, precio
from producto
order by precio asc
limit 1;
/*19*/
select nombre,precio
from producto 
order by precio desc
limit 1;
/*20*/
select nombre
from producto
where codigo_fabricante=2;
/*21*/
select nombre
from producto
where precio <=120;
/*22*/
select nombre
from producto
where precio>=400;
/*23*/
select nombre
from producto
where precio <400;
/*24*/
select*from producto
where precio>80 and precio <300;
/*25*/
select*from producto
where precio between 60 and 200;
/*26*/
select*from producto
where precio >200 and codigo_fabricante=6;
/*27*/
select*from producto
where codigo_fabricante=1 or codigo_fabricante=3 or codigo_fabricante=5;
/*28*/
select*from producto
where codigo_fabricante in (1,3,5)
/*29*/
select nombre,precio*100 as centimos
from producto;
/*30*/
select nombre from fabricante
where nombre like "s%";
/*31*/
select nombre from fabricante
where nombre like "%e";
/*32*/
select nombre from fabricante
where nombre like "%w%";
/*33*/
select nombre from fabricante
where length(nombre)=4;
/*34*/
select nombre from producto
where nombre like "%portatil%";
/*35*/
select nombre from producto
where nombre like "%monitor%" and precio < 215;
/*36*/
select nombre,precio from producto
where precio >=180
order by precio desc,nombre asc;
/*hello*/
-------------
/*01*/
select p.nombre, p.precio, f.nombre 
from producto p join fabricante f on p.codigo_fabricante = f.codigo;

/*02*/
select p.nombre, p.precio, f.nombre
from producto p join fabricante f on p.codigo_fabricante = f.codigo order by f.nombre asc;

/*03*/
select p.codigo, p.nombre, f.codigo, f.nombre
from producto p join fabricante f on p.codigo_fabricante = f.codigo;

/*04*/
select p.nombre, p.precio, f.nombre
from producto p
join fabricante f on p.codigo_fabricante = f.codigo order by p.precio asc limit 1;

/*05*/
select p.nombre, p.precio, f.nombre
from producto p
join fabricante f on p.codigo_fabricante = f.codigo order by p.precio desc limit 1;

/*06*/
select p.nombre, p.precio, f.nombre
from producto p join fabricante f on p.codigo_fabricante = f.codigo where f.nombre = 'Lenovo';

/*07*/
select p.nombre, p.precio, f.nombre
from producto p
join fabricante f on p.codigo_fabricante = f.codigo where f.nombre = 'Crucial' and p.precio > 200;

/*08*/
select p.nombre, p.precio, f.nombre
from producto p
join fabricante f on p.codigo_fabricante = f.codigo where f.nombre in ('Asus', 'Hewlett-Packard', 'Seagate');

/*09*/
select p.nombre, p.precio, f.nombre
from producto p
join fabricante f on p.codigo_fabricante = f.codigo where f.nombre in ('Asus', 'Hewlett-Packard', 'Seagate');

/*10*/
select p.nombre, p.precio
from producto p join fabricante f on p.codigo_fabricante = f.codigo where f.nombre like '%e';

/*11*/
select p.nombre, p.precio
from producto p join fabricante f on p.codigo_fabricante = f.codigo where f.nombre like '%w%';

/*12*/
select p.nombre, p.precio, f.nombre
from producto p
join fabricante f on p.codigo_fabricante = f.codigo where p.precio >= 180 order by p.precio desc, p.nombre asc;

/*13*/
select distinct f.codigo, f.nombre
from fabricante f join producto p on f.codigo = p.codigo_fabricante;



