-- Guia funciones de agregado

create database guia_fa;

use guia_fa;

create table Departamentos(
	id_departamento int primary key,
    nombre_departamento varchar(100) not null,
    ubicacion varchar(100) not null
);

create table Empleados(
	id_empleado int primary key,
    nombre varchar(100) not null,
    apellido varchar(100) not null,
    fecha_contratacion date not null,
    salario decimal(10,2) not null,
    id_departamento int,
    foreign key (id_departamento) references Departamentos(id_departamento)
);

create table Proyectos(
	id_proyecto int primary key,
    nombre_proyecto varchar(100) not null,
    presupuesto decimal(10,2) not null,
    id_departamento int,
    foreign key (id_departamento) references Departamentos(id_departamento)
);

insert into Departamentos (id_departamento, nombre_departamento, ubicacion) values
(1, 'Recursos Humanos', 'New York'),
(2, 'Tecnología', 'San Francisco'),
(3, 'Marketing', 'Miami'),
(4, 'Ventas', 'New York'),
(5, 'Finanzas', 'Chicago');

insert into Empleados (id_empleado, nombre, apellido, fecha_contratacion, salario, id_departamento) values
(1, 'Juan', 'Gómez', '2020-05-15', 55000, 1),
(2, 'Ana', 'Martínez', '2017-08-20', 45000, 2),
(3, 'Pedro', 'Hernández', '2015-03-10', 60000, 2),
(4, 'Laura', 'Garcia', '2010-11-01', 70000, 3),
(5, 'María', 'Pérez', '2018-04-22', 50000, 4),
(6, 'David', 'Jiménez', '2012-06-17', 75000, 4),
(7, 'Carmen', 'González', '2023-01-05', 40000, 1),
(8, 'Luis', 'Rodríguez', '2024-09-09', 48000, 5),
(9, 'Sofía', 'Sánchez', '2021-10-01', 32000, 3),
(10, 'Javier', 'Guerrero', '2019-07-18', 58000, 1),
(11, 'Claudia', 'Giménez', '2024-09-12', 63000, 2),
(12, 'Carlos', 'Gil', '2011-02-14', 90000, 5);
    
insert into Proyectos (id_proyecto, nombre_proyecto, id_departamento, presupuesto) values
(1, 'Optimización de Recursos', 1, 120000),
(2, 'Desarrollo Web', 2, 95000),
(3, 'Campaña Publicitaria', 3, 75000),
(4, 'Expansión de Mercado', 4, 30000),
(5, 'Automatización Financiera', 5, 60000),
(6, 'Rediseño de Marca', 3, 50000),
(7, 'Auditoría Interna', 5, 100000),
(8, 'Transformación Digital', 2, 80000);

-- 1. Obtener una lista de todos los empleados ordenados por su apellido en orden ascendente.
select
	e.*
from
	Empleados as e
order by
	e.apellido asc;

-- 2. Mostrar el nombre de cada empleado junto con el nombre del departamento al que pertenece.
select
	e.nombre,
    d.nombre_departamento
from
	Empleados as e 
inner join 
	Departamentos as d
    on e.id_departamento = d.id_departamento;

-- 3. Obtener el salario promedio de todos los empleados.
select 
	avg(e.salario) as salario_promedio
from 
	Empleados as e;

-- 4. Contar cuántos empleados hay en cada departamento.
select
	d.nombre_departamento, count(e.id_empleado) as total_empleados
from
	Departamentos as d
inner join 
	Empleados as e
    on d.id_departamento = e.id_departamento
group by
	d.nombre_departamento;

-- 5. Mostrar los departamentos con más de 5 empleados.
select
	d.nombre_departamento, count(e.id_empleado) as total_empleados
from
	Departamentos as d
inner join
	Empleados as e
    on d.id_departamento = e.id_departamento
group by
	d.nombre_departamento
having
	total_empleados > 5;

-- 6. Calcular el salario total de todos los empleados por departamento, y mostrar.
select
	d.nombre_departamento, sum(e.salario) assalario_total
from
	Departamentos as d
inner join
	Empleados as e
    on d.id_departamento = e.id_departamento
group by
	d.nombre_departamento;

-- 7. Mostrar todos los empleados cuyo salario esté entre $30,000 y $60,000.
select
	e.*
from
	Empleados as e
where
	e.salario between 30000 and 60000;

-- 8. Obtener la cantidad de empleados que fueron contratados antes del 1 de enero de 2015.
select
	count(*) as empleados_antes_2015
from
	Empleados as e
where
	fecha_contratacion < '2015-01-01';

-- 9. Listar todos los empleados y los proyectos en los que trabaja su departamento (si no trabaja en ningún proyecto, mostrar NULL).


-- 10. Mostrar todos los proyectos con el nombre de su departamento correspondiente.
select
	p.nombre_proyecto, d.nombre_departamento
from
	Proyectos as p
inner join 
	Departamentos as d
    on p.id_departamento = d.id_departamento;

-- 11. Obtener la lista de proyectos con su presupuesto total, agrupados por departamento.
select
	d.nombre_departamento, sum(p.presupuesto) as presupuesto_total
from
	Proyectos as p
inner join
	Departamentos as d
    on p.id_departamento = d.id_departamento
group by
	d.nombre_departamento;

-- 12. Calcular la media de salarios en cada departamento y ordenarlos de mayor a menor.
select
	d.nombre_departamento, avg(e.salario) as presupuesto_promedio
from
	Empleados as e
inner join
	Departamentos as d
    on e.id_departamento = d.id_departamento
group by
	d.nombre_departamento
order by
	presupuesto_promedio asc;

-- 13. Listar todos los empleados cuyo apellido comience con 'G'.
select
	e.*
from
	Empleados as e
where
	e.apellido like 'G%';

-- 14. Mostrar la suma de salarios de todos los empleados que trabajan en departamentos ubicados en 'New York'.
select
	sum(e.salario) as suma_salario_NY
from
	Empleados as e
inner join
	Departamentos as d
    on e.id_departamento = d.id_departamento
where
	d.ubicacion like 'New York';

-- 15. Mostrar el departamento con el menor número de empleados (en caso de haber mas de 1, mostrar solo 1).
select
	d.nombre_departamento, count(e.id_empleado) as cantidad_empleados
from
	Departamentos as d
inner join
	Empleados as e
    on d.id_departamento = e.id_departamento
group by 
	d.nombre_departamento
order by
	cantidad_empleados asc
limit
	1;

-- 16. Obtener el nombre del proyecto con el presupuesto más alto.
select
	p.nombre_proyecto
from
	Proyectos as p
order by
	p.presupuesto desc
limit 
	1;

-- 17. Contar cuántos proyectos tienen un presupuesto menor a $50,000.
select
	count(p.id_proyecto) as proyecto_presupuesto_menor_50000
from
	Proyectos as p
where
	p.presupuesto < 50000;

-- 18. Obtener el salario promedio por departamento y solo mostrar los departamentos cuyo salario promedio sea mayor a $50,000.
select
	d.nombre_departamento, avg(e.salario) as salario_promedio
from
	Departamentos as d
inner join
	Empleados as e
    on d.id_departamento = e.id_departamento
group by
	d.nombre_departamento
having
	salario_promedio > 50000;

-- 19. Listar a todos los empleados contratados este año.
select
	e.nombre, e.apellido
from
	Empleados as e
where
	year(e.fecha_contratacion) = year(curdate());
	-- e.fecha_contratacion between '2024-01-01' and '2024-12-31';

-- 20. Mostrar los empleados contratados en el mes actual.
select
	e.nombre, e.apellido
from
	Empleados as e
where
	month(e.fecha_contratacion) = month(curdate()) and year(e.fecha_contratacion) = year(curdate());

-- 21. Obtener la cantidad de empleados que fueron contratados en los últimos 6 meses.


-- 22. Listar a los empleados cuyo aniversario de contratación es este mes.
select
	e.nombre, e.apellido
from
	Empleados as e
where
	month(e.fecha_contratacion) = month(curdate());

-- 23. Calcular cuántos días lleva cada empleado trabajando en la empresa.
select
	e.nombre, e.apellido, datediff(curdate(), e.fecha_contratacion) as dias_trabajando
from
	Empleados as e;

-- 24. Mostrar a los empleados contratados hace más de 10 años.


-- 25. Listar a los empleados contratados en los últimos 2 años.


-- 26. Obtener los empleados que serán contratados dentro de los próximos 30 días, simulando que ya existe una fecha de contratación futura.




