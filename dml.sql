call fabricante(1,"Asus");
call fabricante(2,"Lenovo");
call fabricante(3,"Hewlett-packard");
call fabricante(4,"Samsung");
call fabricante(5,"Seagate");
call fabricante(6,"Crucial");
call fabricante(7,"Gigabyte");
call fabricante(8,"Huawei");
call fabricante(9,"Xiaomi");
select*from fabricante;

call producto ("Disco duro SATA3 1TB",86.99,5);
call producto("Memoria RAM DDR4 8GB",120,6);
call producto("Disco SSD 1 TB",150.99,4);
call producto("GeForce GTX 1050Ti",185,7);
call producto("GeForce GTX 1080 Xtreme",755,6);
call producto("Monitor 24 LED Full HD",202,1);
call producto("Monitor 27 LED Full HD",245.99,1);
call producto("Portátil Yoga 520",559,2);
call producto("Portátil Ideapd 320",444,2);
call producto("Impresora HP Deskjet 3720",59.99,3);
call producto("Impresora HP Laserjet Pro M26nw ",180,3);

select*from producto