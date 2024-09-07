-- TP - Practicas SQL - Joins y comandos basicos
create database guia2_c9;

use guia2_c9;

create table Departamentos(
	id_depto int primary key not null,
    nombre_depto varchar(20),
    ciudad varchar(15),
    nombre_jefe_depto char(30)
);

create table Empleados(
	id_emp int primary key not null,
    nombre char(30),
    sex_emp char(1),
    fec_nac date,
    fec_incorporacion date,
    sal_emp float,
    comision_emp float,
    cargo_emp varchar(15),
    id_depto int,
    foreign key (id_depto) references Departamentos(id_depto)
);

INSERT INTO Departamentos (id_depto, nombre_depto, ciudad, nombre_jefe_depto) VALUES 
(1, 'Recursos Humanos', 'Buenos Aires', 'Martina Gómez'),
(2, 'IT', 'Córdoba', 'Lucas Martínez'),
(3, 'Ventas', 'Rosario', 'Sofía Fernández'),
(4, 'Finanzas', 'Mendoza', 'Carlos Pérez'),
(5, 'Marketing', 'La Plata', 'Ana Torres');

INSERT INTO Empleados (id_emp, nombre, sex_emp, fec_nac, fec_incorporacion, sal_emp, comision_emp, cargo_emp, id_depto) values
(1, 'Javier Rodríguez', 'M', '1985-03-12', '2010-06-15', 55000, 5000, 'Analista', 1),
(2, 'Laura Pérez', 'F', '1990-07-21', '2015-09-01', 48000, 3000, 'Asistente', 2),
(3, 'Carlos Gutiérrez', 'M', '1979-12-05', '2005-02-12', 60000, 8000, 'Jefe', 3),
(4, 'María López', 'F', '1992-04-17', '2018-03-10', 52000, 4000, 'Coordinadora', 4),
(5, 'Ricardo Álvarez', 'M', '1987-11-25', '2011-05-20', 47000, 2000, 'Ejecutivo', 5),
(6, 'Clara Medina', 'F', '1995-01-30', '2019-07-01', 45000, 2500, 'Administrativa', 1),
(7, 'Pablo Gómez', 'M', '1983-09-11', '2008-01-15', 61000, 6000, 'Analista', 2),
(8, 'Natalia Sánchez', 'F', '1991-02-14', '2014-10-05', 53000, 3500, 'Supervisora', 3),
(9, 'Joaquín Domínguez', 'M', '1988-06-22', '2016-11-08', 49000, 1500, 'Contador', 4),
(10, 'Santiago Herrera', 'M', '1993-08-30', '2020-02-03', 46000, 1000, 'Asistente', 5);

-- Ejercicio 1
select 
	*
from 
	Empleados;
    
-- Ejercicio 2
select 
	*
from
	Departamentos;

-- Ejercicio 3
select
	nombre_depto
from
	Departamentos;
	
-- Ejercicio 4
select
	nombre, 
    sal_emp
from
	Empleados;
    
-- Ejercicio 5
select
	comision_emp
from
	Empleados;

-- Ejercicio 6
select 
	*
from 
	Empleados
where
	cargo_emp like 'Asistente';
    
-- Ejercicio 7
select 
	*
from 
	Empleados
where
	cargo_emp like 'Analista'
order by
	nombre desc;

-- Ejercicio 8










