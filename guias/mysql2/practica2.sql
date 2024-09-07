-- TP - Practicas SQL - Joins y comandos basicos
use c9_benedetti_matias;

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
(1, 'Recursos Humanos', 'Madrid', 'Ana García'),
(2, 'Finanzas', 'Barcelona', 'Luis Fernández'),
(3, 'Marketing', 'Valencia', 'María López'),
(4, 'Ventas', 'Sevilla', 'Carlos Martínez'),
(5, 'IT', 'Bilbao', 'Laura Sánchez'),
(6, 'Legal', 'Zaragoza', 'Pedro Fernández'),
(7, 'Compras', 'Málaga', 'Sofía Rodríguez'),
(8, 'Logística', 'Murcia', 'Antonio Pérez'),
(9, 'Atención al Cliente', 'Palma de Mallorca', 'Lucía Gómez'),
(10, 'Desarrollo de Productos', 'Granada', 'Javier Jiménez'),
(11, 'Investigación', 'San Sebastián', 'Elena Ruiz'),
(12, 'Producción', 'Alicante', 'Francisco Moreno'),
(13, 'Calidad', 'Vigo', 'Beatriz Martínez'),
(14, 'Comunicación', 'Oviedo', 'Ricardo Torres'),
(15, 'Estrategia', 'Salamanca', 'Cristina García');

INSERT INTO Empleados (id_emp, nombre, sex_emp, fec_nac, fec_incorporacion, sal_emp, comision_emp, cargo_emp, id_depto) VALUES
(1, 'Pedro Fernández', 'M', '1985-02-20', '2020-01-15', 3500.00, 500.00, 'Analista', 1),
(2, 'Ana Martínez', 'F', '1990-07-12', '2021-05-10', 3200.00, 400.00, 'Consultora', 1),
(3, 'Javier Sánchez', 'M', '1987-09-22', '2019-08-01', 4500.00, 600.00, 'Controller', 2),
(4, 'Isabel Gómez', 'F', '1992-04-18', '2020-11-22', 4000.00, 500.00, 'Contadora', 2),
(5, 'Luis Ruiz', 'M', '1983-12-05', '2018-02-16', 4700.00, 700.00, 'Director de Marketing', 3),
(6, 'Laura Martín', 'F', '1991-10-30', '2021-07-09', 3400.00, 450.00, 'Especialista', 3),
(7, 'Carlos García', 'M', '1988-03-14', '2019-01-23', 4200.00, 550.00, 'Gerente de Ventas', 4),
(8, 'Elena Pérez', 'F', '1993-06-02', '2021-03-15', 3100.00, 400.00, 'Ejecutiva de Ventas', 4),
(9, 'Antonio Morales', 'M', '1980-11-28', '2017-12-01', 4800.00, 650.00, 'CTO', 5),
(10, 'María Sánchez', 'F', '1995-01-17', '2022-02-14', 3300.00, 420.00, 'Desarrolladora', 5),
(11, 'Ricardo Fernández', 'M', '1989-05-21', '2019-04-12', 4600.00, 600.00, 'Abogado', 6),
(12, 'Sofía López', 'F', '1992-08-09', '2021-06-30', 3500.00, 450.00, 'Asistente Legal', 6),
(13, 'José Martínez', 'M', '1986-12-14', '2018-09-03', 3400.00, 400.00, 'Comprador', 7),
(14, 'Nerea Fernández', 'F', '1990-03-17', '2020-11-05', 3200.00, 380.00, 'Auxiliar de Compras', 7),
(15, 'Gabriel Ruiz', 'M', '1984-10-10', '2019-03-20', 3700.00, 450.00, 'Coordinador de Logística', 8);

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
	