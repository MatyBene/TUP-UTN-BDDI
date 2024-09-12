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
(1000, 'Ventas', 'Ciudad Real', 'Carlos Fernandez'),
(2000, 'Investigación', 'Madrid', 'Ana Gomez'),
(3000, 'Mantenimiento', 'Barcelona', 'Luis Martinez'),
(4000, 'Recursos Humanos', 'Valencia', 'Maria Lopez'),
(5000, 'Marketing', 'Sevilla', 'Elena Sanchez');

INSERT INTO Empleados (id_emp, nombre, sex_emp, fec_nac, fec_incorporacion, sal_emp, comision_emp, cargo_emp, id_depto) VALUES 
(1, 'Juan Perez', 'M', '1985-07-15', '2010-03-10', 2500.00, 300.00, 'Vendedor', 1000),
(2, 'Javier Martinez', 'M', '1990-12-05', '2015-06-20', 2200.00, 500.00, 'Secretaria', 2000),
(3, 'Josefina Lopez', 'F', '1978-03-22', '2008-09-15', 2700.00, 0.00, 'Jefe', 3000),
(4, 'Julia Sanchez', 'F', '1983-08-10', '2012-07-18', 1800.00, 200.00, 'Vendedor', 1000),
(5, 'Miguel Torres', 'M', '1975-02-13', '2000-11-30', 3000.00, 1000.00, 'Jefe', 4000),
(6, 'Lucia Fernandez', 'F', '1992-04-25', '2016-01-10', 2100.00, 0.00, 'Mantenimiento', 3000),
(7, 'Jorge Ramirez', 'M', '1988-10-15', '2011-05-22', 1900.00, 250.00, 'Secretaria', 1000),
(8, 'Antonio Garcia', 'M', '1985-09-10', '2013-03-15', 3200.00, 0.00, 'Investigador', 2000),
(9, 'Laura Campos', 'F', '1990-06-30', '2014-02-25', 2750.00, 700.00, 'Vendedor', 1000),
(10, 'Manuel Alvarez', 'M', '1979-11-20', '2007-12-01', 3500.00, 1500.00, 'Jefe', 5000);


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
	cargo_emp like 'Secretaria';
    
-- Ejercicio 7
select 
	*
from 
	Empleados
where
	cargo_emp like 'Vendedor'
order by
	nombre desc;

-- Ejercicio 8
select
	nombre,
    cargo_emp
from
	Empleados
order by
	sal_emp;

-- Ejercicio 9
select
	nombre_jefe_depto
from
	Departamentos
where
	ciudad like 'Ciudad Real';

-- Ejercicio 10
select
	nombre as Nombre,
    cargo_emp as Cargo
from
	Empleados;

-- Ejercicio 11
select
	sal_emp,
    comision_emp
from
	Empleados
where
	id_depto = 2000
order by 
	comision_emp;

-- Ejercicio 12
select
	nombre,
    (sal_emp + comision_emp + 500) as 'total a pagar'
from
	Empleados
order by
	nombre;

-- Ejercicio 13
select 
	nombre
from 
	Empleados
where
	nombre like 'L%';
    
-- Ejercicio 14
select
	sal_emp,
    comision_emp,
    (sal_emp + comision_emp) as 'salario total',
    nombre
from
	Empleados
where
	comision_emp > 1000;

-- Ejercicio 15
select
	sal_emp,
    comision_emp,
    (sal_emp + comision_emp) as 'salario total',
    nombre
from
	Empleados
where
	comision_emp = 0;

-- Ejercicio 16
select
	*
from
	Empleados
where
	sal_emp < comision_emp;
    
-- Ejercicio 17
select
	*
from
	Empleados
where
	comision_emp <= (sal_emp * 0.3);

-- Ejercicio 18
select 
	*
from
	Empleados
where
	nombre not like '%MA%'; 

-- Ejercicio 19
select
	nombre_depto
from
	Departamentos
where
	nombre_depto in ('Ventas', 'Investigación', 'Mantenimiento');

-- Ejercicio 20
select
	nombre_depto
from
	Departamentos
where
	nombre_depto not in ('Ventas', 'Investigación', 'Mantenimiento');
    
-- Ejercicio 21
select
	sal_emp
from
	Empleados
order by
	sal_emp desc
limit 1;

-- Ejercicio 22
select
	nombre
from 
	Empleados
order by
	nombre desc
limit 1;








