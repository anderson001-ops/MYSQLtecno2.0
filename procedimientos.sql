
USE `pcgamer`;
DROP procedure IF EXISTS `fabricante`;

DELIMITER $$
USE `pcgamer`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `fabricante`(
 in codigo int (10),
 in nombre varchar(100)
)
BEGIN
insert into fabricante (codigo,nombre)
values(codigo,nombre);
END$$

DELIMITER ;


DELIMITER ;


USE `pcgamer`;
DROP procedure IF EXISTS `producto`;

USE `pcgamer`;
DROP procedure IF EXISTS `pcgamer`.`producto`;
;

DELIMITER $$
USE `pcgamer`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `producto`(
 in nombre varchar(100),
 in precio double,
 in codigo_fabricante int (10)
)
BEGIN
insert into producto (nombre,precio,codigo_fabricante)
values(nombre,precio,codigo_fabricante);
END$$

/*prueba*/

