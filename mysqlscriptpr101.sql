CREATE DATABASE `proyecto_101`;

USE `proyecto_101`;

CREATE TABLE `trabajadores`(
	`id_trabajador` INT UNSIGNED AUTO_INCREMENT
	,`nombre` VARCHAR(255)
	,`apellidos` VARCHAR(255)
	,`disponibilidad` INT DEFAULT 100
    ,`grupo` TINYINT UNSIGNED DEFAULT 0
    ,`salario` VARCHAR(5) DEFAULT 66.67
    ,`baja` TINYINT DEFAULT 0
    ,PRIMARY KEY (`id_trabajador`));

CREATE TABLE `registro`(
	`id_registro` INT UNSIGNED AUTO_INCREMENT
	,`id_trabajador` INT UNSIGNED 
	,`fecha` DATE
	,`disponibilidad_inicial` INT
    ,`disponibilidad_modificar` INT
    ,`disponibilidad_total` INT
    ,PRIMARY KEY (`id_registro`)
    ,FOREIGN KEY (id_trabajador) REFERENCES trabajadores(id_trabajador)
);

insert into trabajadores (nombre,apellidos,disponibilidad,grupo) values ('Alan', 'Brito',38, 1)
,('Alba', 'Bosa',62, 2)
,('Alex', 'Plosivo',108, 1)
,('Amilcar', 'Cajada',56, 3)
,('Ana', 'Konda',142, 1)
,('Carlitos', 'Tado',132, 2)
,('Cindy', 'Nero',102, 3)
,('Coco', 'Drilo',91, 3)
,('Diego', 'Loso',91, 2)
,('Eddy', 'Ficio',129, 1);
		  
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (1, '2021-03-01', 100, 6, '106');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (2, '2021-03-01', 100, -10, '90');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (3, '2021-03-01', 100, -20, '80');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (4, '2021-03-01', 100, 6, '106');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (5, '2021-03-01', 100, 6, '106');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (6, '2021-03-01', 100, 6, '106');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (7, '2021-03-01', 100, 6, '106');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (8, '2021-03-01', 100, -5, '95');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (9, '2021-03-01', 100, -5, '95');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (10, '2021-03-01', 100, -5, '95');

insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (1, '2021-03-02', 106, 5, '111');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (2, '2021-03-02', 90, 5, '95');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (3, '2021-03-02', 80, -5, '75');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (4, '2021-03-02', 106, 5, '111');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (5, '2021-03-02', 106, 5, '111');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (6, '2021-03-02', 106, 1, '107');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (7, '2021-03-02', 106, 5, '111');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (8, '2021-03-02', 95, 5, '100');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (9, '2021-03-02', 95, 5, '100');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (10, '2021-03-02', 95, -10, '85');

insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (1, '2021-03-03', 111, 6, '117');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (2, '2021-03-03', 95, 6, '101');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (3, '2021-03-03', 75, 6, '81');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (4, '2021-03-03', 111, 6, '117');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (5, '2021-03-03', 111, 6, '117');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (6, '2021-03-03', 107, 6, '113');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (7, '2021-03-03', 111, 6, '117');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (8, '2021-03-03', 100, 6, '106');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (9, '2021-03-03', 100, 6, '106');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (10, '2021-03-03', 85, 6, '91');

insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (1, '2021-03-04', 117, 6, '123');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (2, '2021-03-04', 101, 6, '107');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (3, '2021-03-04', 81, 6, '87');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (4, '2021-03-04', 117, 6, '123');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (5, '2021-03-04', 117, 6, '123');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (6, '2021-03-04', 113, 6, '119');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (7, '2021-03-04', 117, 6, '123');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (8, '2021-03-04', 106, 6, '112');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (9, '2021-03-04', 106, 6, '112');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (10, '2021-03-04', 91, 6, '97');

insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (1, '2021-03-05', 123, 4, '127');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (2, '2021-03-05', 107, 4, '111');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (3, '2021-03-05', 87, 4, '91');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (4, '2021-03-05', 123, 4, '127');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (5, '2021-03-05', 123, 4, '127');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (6, '2021-03-05', 119, 4, '123');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (7, '2021-03-05', 123, 4, '127');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (8, '2021-03-05', 112, 4, '116');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (9, '2021-03-05', 112, 4, '116');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (10, '2021-03-05', 97, 4, '101');

insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (1, '2021-03-08', 127, 6, '133');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (2, '2021-03-08', 111, 6, '117');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (3, '2021-03-08', 91, 6, '97');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (4, '2021-03-08', 127, -60, '67');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (5, '2021-03-08', 127, 6, '133');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (6, '2021-03-08', 123, -10, '113');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (7, '2021-03-08', 127, -5, '122');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (8, '2021-03-08', 116, -5, '111');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (9, '2021-03-08', 116, -5, '111');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (10, '2021-03-08', 101, 6, '107');

insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (1, '2021-03-09', 133, 5, '138');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (2, '2021-03-09', 117, 5, '122');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (3, '2021-03-09', 97, 5, '102');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (4, '2021-03-09', 67, -5, '62');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (5, '2021-03-09', 133, 5, '138');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (6, '2021-03-09', 113, 5, '118');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (7, '2021-03-09', 122, -5, '117');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (8, '2021-03-09', 111, -5, '106');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (9, '2021-03-09', 111, -5, '106');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (10, '2021-03-09', 107, 6, '113');

insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (1, '2021-03-10', 138, -30, '108');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (2, '2021-03-10', 122, -20, '102');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (3, '2021-03-10', 102, 6, '108');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (4, '2021-03-10', 62, -5, '57');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (5, '2021-03-10', 138, 5, '143');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (6, '2021-03-10', 118, 5, '123');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (7, '2021-03-10', 117, -5, '112');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (8, '2021-03-10', 106, -5, '101');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (9, '2021-03-10', 106, -5, '101');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (10, '2021-03-10', 113, 6, '119');

insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (1, '2021-03-10', 138, -30, '108');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (2, '2021-03-10', 122, -20, '102');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (3, '2021-03-10', 102, 6, '108');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (4, '2021-03-10', 62, -5, '57');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (5, '2021-03-10', 138, 5, '143');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (6, '2021-03-10', 118, 5, '123');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (7, '2021-03-10', 117, -5, '112');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (8, '2021-03-10', 106, -5, '101');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (9, '2021-03-10', 106, -5, '101');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (10, '2021-03-10', 113, 6, '119');

insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (1, '2021-03-11', 108, -30, '78');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (2, '2021-03-11', 102, -20, '82');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (3, '2021-03-11', 108, 6, '102');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (4, '2021-03-11', 57, -5, '52');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (5, '2021-03-11', 143, 5, '138');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (6, '2021-03-11', 123, 5, '128');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (7, '2021-03-11', 112, -5, '107');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (8, '2021-03-11', 101, -5, '96');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (9, '2021-03-11', 101, -5, '96');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (10, '2021-03-11', 119, 6, '125');

insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (1, '2021-03-12', 78, -40, '38');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (2, '2021-03-12', 82, -20, '62');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (3, '2021-03-12', 102, 6, '108');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (4, '2021-03-12', 52, 4, '56');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (5, '2021-03-12', 138, 4, '142');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (6, '2021-03-12', 128, 4, '132');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (7, '2021-03-12', 107, -5, '102');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (8, '2021-03-12', 96, -5, '91');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (9, '2021-03-12', 96, -5, '91');
insert into registro (id_trabajador, fecha, disponibilidad_inicial, disponibilidad_modificar, disponibilidad_total) values (10, '2021-03-12', 125, 4, '129');
