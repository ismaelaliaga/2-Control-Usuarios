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

insert into trabajadores (nombre, apellidos,grupo) values ('Alan', 'Brito', 1)
,('Alba', 'Bosa', 2)
,('Alex', 'Plosivo', 1)
,('Amilcar', 'Cajada', 3)
,('Ana', 'Konda', 1)
,('Carlitos', 'Tado', 2)
,('Cindy', 'Nero', 3)
,('Coco', 'Drilo', 3)
,('Diego', 'Loso', 2)
,('Eddy', 'Ficio', 1);
