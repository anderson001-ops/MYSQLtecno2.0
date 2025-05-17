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
precio as euros, precio *0.90 as dolares from producto
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
----------
/*1*/
select f.nombre as nombrefabricante,
p.nombre as nombreproducto
from fabricante f
left join producto p on f.codigo=
p.codigo_fabricante; 

/*2*/
select f.nombre as nombrefabricante 
from producto p 
right join fabricante f on p.codigo_fabricante = f.codigo
where p.codigo_fabricante is null;

-------
/*1*/
select count(*) as totalproducto  from producto;

/*2*/
select count(*) as totalfabricante  from fabricante;

/*3*/
select count( distinct codigo_fabricante )
as distintovalor
from producto; 

/*4*/
select avg( precio) as preciomedio
from producto; 

/*5*/
select min( precio) as preciomedio
from producto; 

/*6*/
select max( precio) as preciomedio
from producto;

/*7*/
select nombre, precio
from producto
where precio = (select min(precio)
 from producto); 
 
 /*8*/
 select nombre, precio
from producto
where precio = (select max(precio)
 from producto); 
 
 /*9*/
 select sum(precio) as sumaprecio
 from producto;
 
 /*10*/
 select count(*)  as totalasus
 from producto p
 join fabricante f on p.codigo_fabricante = f.codigo
 where f.nombre = "asus";
 
 /*11*/
 select avg(p.precio)  as mediaasus
 from producto p
 join fabricante f on p.codigo_fabricante = f.codigo
 where f.nombre = "asus";

/*12*/
 select min(p.precio)  as mediaasus
 from producto p
 join fabricante f on p.codigo_fabricante = f.codigo
 where f.nombre = "asus";

/*13*/
 select max(p.precio)  as mediaasus
 from producto p
 join fabricante f on p.codigo_fabricante = f.codigo
 where f.nombre = "asus";

/*14*/
select sum(p.precio) as suma_precios_asus
from producto p
join fabricante f  on p.codigo_fabricante = f.codigo 
where  f.nombre = 'asus';

/*15*/
select max(p.precio) as preciomaximocrucial,
min(p.precio)  as preciominimocrucial,
avg(p.precio) as preciomediocrucial,
count(*) as totalproductocrucial
from producto p
join fabricante f on 
p.codigo_fabricante = f.codigo
where f. nombre = "crucial";

/*16*/
select f.nombre as nombrefabricante,
count(p.codigo) as totalproducto
from fabricante f
left join producto p on f.codigo = p.codigo_fabricante
group by f.nombre 
order by totalproducto desc;

/*17*/
select  f.nombre as nombrefabricante,
max(p.precio) as preciomaximo,
min(p.precio)  as preciominimo,
avg(p.precio) as preciomedio
from fabricante f
join producto p  on f.codigo = p.codigo_fabricante
group by f.nombre;

/*18*/
select f.codigo as codigo_fabricante,
max(p.precio) as preciomaximo,
min(p.precio)  as preciominimo,
avg(p.precio) as preciomedio,
count(*) as totalproducto
from fabricante f
join producto p  on f.codigo = p.codigo_fabricante
group by f.codigo
having avg(p.precio) >200;

/*19*/
select f.nombre as nombrefabricante,
max(p.precio) as preciomaximo,
min(p.precio)  as preciominimo,
avg(p.precio) as preciomedio,
count(*) as totalproducto
from fabricante f
join producto p  on f.codigo = p.codigo_fabricante
group by f.codigo
having avg(p.precio) >200;

/*20*/
select count(*) as totalproducto
from producto 
where precio >= 180;

/*21*/
select f.nombre as nombrefabricante,
count(p.codigo) as totalproducto
from fabricante f 
join producto p on f.codigo = p.codigo_fabricante
where p.precio >= 180
group by f.nombre; 

/*22*/
select f.codigo as codigofabricante, 
avg(p.precio) as precioomedio
from fabricante f 
join producto p on f. codigo = p. codigo_fabricante
group by f.codigo;
	
/*23*/
select f.nombre as nombrefabricante, 
avg(p.precio) as precioomedio
from fabricante f 
join producto p on f. codigo = p. codigo_fabricante
group by f.nombre;

/*24*/
select f.nombre as nombrefabricante
from fabricante f
join producto p  on f.codigo = p.codigo_fabricante
group by f.codigo
having avg(p.precio) >150;

/*25*/
select f.nombre as nombrefabricante
from fabricante f
join producto p on f.codigo = p.codigo_fabricante
group by f.nombre 
having count(p.codigo) >=2;

/*26*/
select  f.nombre as nombrefabricante,
count(p.codigo) as totalproductos
from fabricante f
join producto p on f.codigo = p.codigo_fabricante
where p.precio >= 220
group by f.nombre 
having count(p.codigo) > 0;

/*27*/
select f.nombre as nombrefabricante,
count(p.codigo) as totalproductos
from fabricante f
left join producto p on f.codigo = p.codigo_fabricante and p.precio >=220 
group by f.nombre
order by totalproductos desc;

/*28*/
select f.nombre as nombrefabricante
from fabricante f
join producto p on f.codigo = p.codigo_fabricante
group by f.nombre 
having sum(p.precio) > 1000; 

/*29*/
select p.nombre as nombreproducto, p.precio, 
f. nombre as nombrefabricante 
from producto p 
join fabricante f on p.codigo_fabricante = f.codigo
where p.precio = (select max(p2.precio)
from producto p2
where p2.codigo_fabricante = p.codigo_fabricante)
order by nombrefabricante asc; 

--------------------

#01
select * from producto 
WHERE codigo_fabricante = (
    select codigo 
    from fabricante
    where nombre = 'Lenovo'
);

#02
select*from producto
where precio = (
select max(precio)
from producto
where codigo_fabricante = (
select codigo
from fabricante
where nombre = 'lenovo')
);

#03
select nombre from producto
where codigo_fabricante = (
  select codigo
  from fabricante
  where nombre = 'Lenovo'
)
order by precio desc
limit 1;

#04
select nombre from producto
where codigo_fabricante = (
select codigo
from fabricante
where nombre = 'Hewlett-Packard'
)
order by precio asc
limit 1;

#05
select * from producto
where precio >= (
select MAX(precio)
from producto
where codigo_fabricante = (
select codigo
from fabricante
where nombre = 'Lenovo'
  )
);

#06
select * from producto
where codigo_fabricante = (
select codigo
from fabricante
where nombre = 'Asus'
) 
and precio > (
select avg(precio)
from producto
where codigo_fabricante = (
select codigo
from fabricante
where nombre = 'Asus'
  )
);

-----
#07 
select nombre, precio 
from producto 
where precio >= all (select precio from producto);

#08
select nombre, precio 
from producto 
where precio <= all (select precio from producto);

#09
select f.nombre 
from fabricante f
where f.codigo = any (select codigo_fabricante from producto);

#10
select f.nombre 
from fabricante f
where f.codigo <> any (select codigo_fabricante from producto);

------
#11
select nombre from fabricante
where codigo in (
select codigo_fabricante
from producto
);

#12
select nombre
from fabricante
where codigo not in (
select codigo_fabricante
from producto
);

------

#13
select nombre
from fabricante f
where exists (
select 1
from producto p
where p.codigo_fabricante = f.codigo
);

#14
select nombre
from fabricante f
where not exists (
select 1
from producto p
where p.codigo_fabricante = f.codigo
);

------

#15
select f.nombre as fabricante, p.nombre as producto, p.precio as precio_maximo
from fabricante f
join producto p on f.codigo = p.codigo_fabricante
where p.precio = (
select MAX(precio)
from producto
where codigo_fabricante = f.codigo
)

#16
select p.nombre, p.precio
from producto p
where p.precio >= (
select avg(precio)
from producto
where codigo_fabricante = p.codigo_fabricante
)

#17
select p.nombre
from producto p
join fabricante f on p.codigo_fabricante = f.codigo
where f.nombre = 'Lenovo'
order by p.precio desc
limit 1

--------------------
#18
select f.nombre as fabricante
from fabricante f
join producto p on f.codigo = p.codigo_fabricante
group by f.nombre
having COUNT(p.nombre) = (
select COUNT(p2.nombre)
from producto p2
where p2.codigo_fabricante = (
select codigo 
from fabricante
where nombre = 'Lenovo'
  )
)