-- Guia DML

create database guia_DML;

use guia_DML;

create table Departamentos(
	codigo int(10) primary key,
    nombre varchar(100),
    presupuesto double,
    gastos double
);

create table Empleados(
	codigo int(10) primary key,
    nif varchar(9),
    nombre varchar(100),
    apellido1 varchar(100),
    apellido2 varchar(100),
    codigo_departamento int(10),
    foreign key (codigo_departamento) references Departamentos (codigo)
);

INSERT INTO Departamentos VALUES
(1, 'Desarrollo', 120000, 6000),
(2, 'Sistemas', 150000, 21000),
(3, 'Recursos Humanos', 280000, 25000),
(4, 'Contabilidad', 110000, 3000),
(5, 'I+D', 375000, 380000),
(6, 'Proyectos', 0, 0),
(7, 'Publicidad', 0, 1000);

INSERT INTO Empleados VALUES
(1, '32481596F', 'Aarón', 'Rivero', 'Gómez', 1),
(2, 'Y5575632D', 'Adela', 'Salas', 'Díaz', 2),
(3, 'R6970642B', 'Adolfo', 'Rubio', 'Flores', 3),
(4, '77705545E', 'Adrián', 'Suárez', NULL, 4),
(5, '17087203C', 'Marcos', 'Loyola', 'Méndez', 5),
(6, '38382980M', 'María', 'Santana', 'Moreno', 1),
(7, '80576669X', 'Pilar', 'Ruiz', NULL, 2),
(8, '71651431Z', 'Pepe', 'Ruiz', 'Santana', 3),
(9, '56399183D', 'Juan', 'Gómez', 'López', 2),
(10, '46384486H', 'Diego','Flores', 'Salas', 5),
(11, '67389283A', 'Marta','Herrera', 'Gil', 1),
(12, '41234836R', 'Irene','Salas', 'Flores', NULL),
(13, '82635162B', 'Juan Antonio','Sáez', 'Guerrero', NULL);

-- Consulta sobre una tabla
-- 1
select 
	apellido1
from
	Empleados;
    
-- 2
select distinct
	apellido1
from
	Empleados;
    
-- 3
select
	*
from
	Empleados;

-- 4
select
	nombre,
    apellido1,
    apellido2
from
	Empleados;
    
-- 5
select 
	codigo_departamento
from
    Empleados;
    
-- 6
select distinct
	codigo_departamento
from
    Empleados;
    
-- 7
select concat_ws(
	' ', 
    nombre, 
    apellido1, 
    apellido2
) as Empleados
from
	Empleados;

-- 8
select upper(concat_ws(
	' ', 
    nombre, 
    apellido1, 
    apellido2
))  as Empleados
from
	Empleados;
    
-- 9
select lower(concat_ws(
	' ', 
    nombre, 
    apellido1, 
    apellido2
))  as Empleados
from
	Empleados;
    
-- 10
select
	nombre,
    (presupuesto - gastos) as 'Presupuesto actual'
from
	Departamentos;
    
-- 11
select
	nombre,
    (presupuesto - gastos) as Presupuesto_actual
from
	Departamentos
order by
	Presupuesto_actual asc;

-- 12
select
	nombre
from
	Departamentos
order by
	nombre asc;

-- 13
select
	nombre
from
	Departamentos
order by
	nombre desc;
    
-- 14
select 
	apellido1,
    apellido2,
    nombre
from
	Empleados
order by
	apellido1, apellido2, nombre;

-- 15
select
	nombre,
    presupuesto
from
	Departamentos
order by 
	presupuesto desc
limit 3;

-- 16
select
	nombre,
    presupuesto
from
	Departamentos
order by 
	presupuesto asc
limit 3;

-- 17
select
	nombre,
    gastos
from
	Departamentos
order by 
	gastos asc
limit 2;
	
-- 18
select
	nombre,
    gastos
from
	Departamentos
order by 
	gastos desc
limit 2;

-- 19
select
	nombre,
    presupuesto
from
	Departamentos
where
	presupuesto >= 150000;
    
-- 20
select
	nombre,
    presupuesto
from
	Departamentos
where
	presupuesto < 5000;

-- 21
select
	nombre,
    presupuesto
from
	Departamentos
where
	presupuesto > 100000 and presupuesto < 200000;
    
-- 22
select
	nombre,
    presupuesto
from
	Departamentos
where
	presupuesto < 100000 and presupuesto > 200000;
    
-- 23
select
	nombre,
    presupuesto
from
	Departamentos
where
	presupuesto between 100000 and 200000;
    
-- 24
select
	nombre,
    presupuesto
from
	Departamentos
where
	presupuesto not between 100000 and 200000;

-- 25
select
	nombre,
	presupuesto,
    gastos
from
	Departamentos
where
	gastos > presupuesto;

-- 26
select
	nombre,
	presupuesto,
    gastos
from
	Departamentos
where
	gastos < presupuesto;

-- 27
select
	nombre,
	presupuesto,
    gastos
from
	Departamentos
where
	gastos = presupuesto;
    
-- 28
select
	*
from
	Empleados
where
	apellido2 is null;
    
-- 29
select
	*
from
	Empleados
where
	apellido2 is not null;    

-- 30
select
	*
from
	Empleados
where
	apellido2 like 'López';    

-- 31
select
	*
from
	Empleados
where
	apellido2 like 'Díaz' or apellido2 like 'Moreno';   

-- 32
select
	*
from
	Empleados
where
	apellido2 in ('Díaz', 'Moreno');   
    
-- 33
select
	nombre,
    apellido1,
    apellido2,
    nif
from
	Empleados
where
	codigo_departamento = 3;
    
-- 34
select
	nombre,
    apellido1,
    apellido2,
    nif
from
	Empleados
where
	codigo_departamento in (2, 4, 5);
    
-- Consultas multitabla (composicion interna)
-- 1
select
	*
from
	Empleados as e inner join Departamentos as d
    on e.codigo_departamento = d.codigo;
    
-- 2
select
	*
from
	Empleados as e inner join Departamentos as d
    on e.codigo_departamento = d.codigo
order by
	d.nombre, e.apellido1, e.apellido2, e.nombre;

-- 3
select distinct
	d.codigo,
	d.nombre
from
	Departamentos as d inner join Empleados as e
    on d.codigo = e.codigo_departamento;

-- 4
select distinct
	d.codigo,
    d.nombre,
	(d.presupuesto - d.gastos) as presupuesto_actual
from
	Departamentos as d inner join Empleados as e
    on d.codigo = e.codigo_departamento;

-- 5
select
	d.nombre
from
	Departamentos as d inner join Empleados as e
    on d.codigo = e.codigo_departamento
where
	e.nif = '38382980M';

-- 6
select
	d.nombre
from
	Departamentos as d inner join Empleados as e
    on d.codigo = e.codigo_departamento
where
	e.nombre like 'Pepe' and e.apellido1 = 'Ruiz' and e.apellido2 = 'Santana';

-- 7
select 
	e.*
from
	Empleados as e inner join Departamentos as d
    on e.codigo_departamento = d.codigo
where
	d.nombre like 'I+D'
order by
	e.apellido1, e.apellido2, e.nombre;

-- 8
select 
	e.*
from
	Empleados as e inner join Departamentos as d
    on e.codigo_departamento = d.codigo
where
	d.nombre in ('Sistemas', 'Contabilidad', 'I+D')
order by
	e.apellido1, e.apellido2, e.nombre;	

-- 9
select
	e.nombre
from
	Empleados as e inner join Departamentos as d
    on e.codigo_departamento = d.codigo
where
	d.presupuesto not between 100000 and 200000;

-- 10
select distinct
	d.nombre
from
	Departamentos as d inner join Empleados as e
    on d.codigo = e.codigo_departamento
where
	e.apellido2 is null;

-- Consultas multitabla (composicion externa)   
-- 1
select
	e.*, d.*
from
	Empleados as e left join Departamentos as d
    on e.codigo_departamento = d.codigo;
    
-- 2
select
	e.*
from
	Empleados as e left join Departamentos as d
    on e.codigo_departamento = d.codigo
where
	d.codigo is null;
    
-- 3
select
	d.*
from
	Departamentos as d left join Empleados as e
    on d.codigo = e.codigo_departamento
where
	e.codigo_departamento is null;

-- 4
select
	e.*,
    d.*,
    d.nombre as nombre_dep
from
	Empleados as e 
left join
	Departamentos as d
	on e.codigo_departamento = d.codigo
union
select
	e.*,
    d.*,
    d.nombre as nombre_dep
from
	Empleados as e
right join
	Departamentos as d
    on e.codigo_departamento = d.codigo
order by
	nombre_dep;
    
-- 5    
    
    
    
    
    
