create database guia1_c9;

use guia1_c9;

-- Ejercicio 1
create table Clientes(
  Cli_id int primary key NOT NULL ,
  Nombres varchar(100) NOT NULL,
  Apellido varchar(100) NOT NULL,
  Direccion varchar(100) not null,
  Email varchar(100)
);

create table Libros(
	Libro_id int primary key not null,
    Titulo varchar(300),
    Costo decimal(7, 2),
    Imagen blob
);

create table Ventas(
	Venta_id int primary key not null,
    Libro_id int,
    Cli_id int,
    Cantidad int,
    Precio decimal(7, 2),
    Fecha_compra timestamp,
    foreign key (Cli_id) references Clientes (Cli_id),
    foreign key (Libro_id) references Libros (Libro_id)
);

-- Tabla Clientes
INSERT INTO Clientes VALUES (1,'MICHAEL','THOMPSON','Olavarría 2464','datoEjemplo@libreria.com'),
(2,'SALLY','KWAN','Olavarría 2464','datoEjemplo@libreria.com'),
(3,'JOHN','GEYER','Olavarría 2464','datoEjemplo@libreria.com'),
(4,'IRVING','STERN','Olavarría 2464','datoEjemplo@libreria.com'),
(5,'EVA','PULASKI','Olavarría 2464','datoEjemplo@libreria.com'),
(6,'EILEEN','HENDERSON','Olavarría 2464','datoEjemplo@libreria.com'),
(7,'THEODORE','SPENSER','Olavarría 2464','datoEjemplo@libreria.com'),
(8,'VINCENZO','LUCCHESSI','Olavarría 2464','datoEjemplo@libreria.com'),
(9,'SEAN','O\'CONNELL','Olavarría 2464','datoEjemplo@libreria.com'),
(10,'DOLORES','QUINTANA','Olavarría 2464','datoEjemplo@libreria.com'),
(11,'HEATHER','NICHOLLS','Olavarría 2464','datoEjemplo@libreria.com'),
(12,'BRUCE','ADAMSON','Olavarría 2464','datoEjemplo@libreria.com'),
(13,'ELIZABETH','PIANKA','Olavarría 2464','datoEjemplo@libreria.com'),
(14,'MASATOSHI','YOSHIMURA','Olavarría 2464','datoEjemplo@libreria.com'),
(15,'MARILYN','SCOUTTEN','Olavarría 2464','datoEjemplo@libreria.com'),
(16,'JAMES','WALKER','Olavarría 2464','datoEjemplo@libreria.com'),
(17,'DAVID','BROWN','Olavarría 2464','datoEjemplo@libreria.com'),
(18,'WILLIAM','JONES','Olavarría 2464','datoEjemplo@libreria.com'),
(19,'JENNIFER','LUTZ','Olavarría 2464','datoEjemplo@libreria.com'),
(20,'JAMES','JEFFERSON','Olavarría 2464','datoEjemplo@libreria.com'),
(21,'SALVATORE','MARINO','Olavarría 2464','datoEjemplo@libreria.com'),
(22,'DANIEL','SMITH','Olavarría 2464','datoEjemplo@libreria.com'),
(23,'SYBIL','JOHNSON','Olavarría 2464','datoEjemplo@libreria.com'),
(24,'MARIA','PEREZ','Olavarría 2464','datoEjemplo@libreria.com'),
(25,'ETHEL','SCHNEIDER','Olavarría 2464','datoEjemplo@libreria.com'),
(26,'JOHN','PARKER','Olavarría 2464','datoEjemplo@libreria.com'),
(27,'PHILIP','SMITH','Olavarría 2464','datoEjemplo@libreria.com'),
(28,'MAUDE','SETRIGHT','Olavarría 2464','datoEjemplo@libreria.com'),
(29,'RAMLAL','MEHTA','Olavarría 2464','datoEjemplo@libreria.com'),
(30,'WING','LEE','dorrego 281','datoEjemplo@libreria.com'),
(31,'CHRISTINE','HAAS','Olavarría 2464','datoEjemplo@libreria.com');

-- Tabla Libros
INSERT INTO Libros VALUES (80001,'BOOK1_TITULO',10.99,NULL),
(80002,'BOOK2_TITULO',13.00,NULL),
(80003,'BOOK3_TITULO',8.99,NULL),
(80004,'BOOK4_TITULO',30.92,NULL),
(80005,'BOOK5_TITULO',33.56,NULL),
(80006,'BOOK6_TITULO',82.12,NULL),
(80007,'BOOK7_TITULO',35.43,NULL),
(80008,'BOOK8_TITULO',103.11,NULL),
(80009,'BOOK9_TITULO',2.00,NULL),
(80010,'BOOK10_TITULO',78.31,NULL),
(80011,'BOOK11_TITULO',19.78,NULL),
(80012,'BOOK12_TITULO',98.21,NULL),
(80013,'BOOK13_TITULO',67.43,NULL),
(80014,'BOOK14_TITULO',34.59,NULL),
(80015,'BOOK15_TITULO',9.23,NULL),
(80016,'BOOK16_TITULO',10.00,NULL),
(80017,'BOOK17_TITULO',15.00,NULL),
(80018,'BOOK18_TITULO',5.65,NULL),
(80019,'BOOK19_TITULO',8.90,NULL),
(80020,'BOOK20_TITULO',23.00,NULL),
(80021,'BOOK21_TITULO',82.99,NULL),
(80022,'BOOK22_TITULO',29.75,NULL),
(80023,'BOOK23_TITULO',73.12,NULL),
(80024,'BOOK24_TITULO',2.99,NULL),
(80025,'BOOK25_TITULO',29.22,NULL),
(80026,'BOOK26_TITULO',43.21,NULL),
(80027,'BOOK27_TITULO',55.23,NULL),
(80028,'BOOK28_TITULO',98.33,NULL),
(80029,'BOOK29_TITULO',32.19,NULL),
(80030,'BOOK30_TITULO',55.63,NULL);

-- Tabla Ventas
INSERT INTO Ventas VALUES (1,80024,1,1,4.82,'2004-03-30 03:00:00'),
(2,80030,9,2,44.21,'2004-03-30 03:00:00'),
(3,80001,30,1,83.42,'2004-03-30 03:00:00'),
(4,80018,2,1,44.12,'2004-03-30 03:00:00'),
(5,80022,2,1,71.23,'2004-03-31 03:00:00'),
(6,80006,19,2,8.43,'2004-03-31 03:00:00'),
(7,80028,21,1,19.83,'2004-03-31 03:00:00'),
(8,80003,28,1,53.87,'2004-03-31 03:00:00'),
(9,80026,27,1,92.41,'2004-03-29 03:00:00'),
(10,80002,8,1,81.23,'2004-03-29 03:00:00'),
(11,80011,3,1,39.51,'2004-03-29 03:00:00'),
(12,80009,15,1,90.32,'2004-03-29 03:00:00'),
(13,80022,13,1,19.32,'2004-03-29 03:00:00'),
(14,80019,11,1,56.98,'2004-03-29 03:00:00'),
(15,80026,10,1,4.98,'2004-03-29 03:00:00'),
(16,80011,18,1,9.98,'2004-03-28 03:00:00'),
(17,80005,7,1,20.43,'2004-03-28 03:00:00'),
(18,80009,9,1,95.32,'2004-03-28 03:00:00'),
(19,80013,27,1,41.21,'2004-03-27 03:00:00'),
(20,80001,25,3,81.90,'2004-03-27 03:00:00'),
(21,80022,24,1,20.99,'2004-03-27 03:00:00'),
(22,80018,1,1,76.32,'2004-03-27 03:00:00'),
(23,80029,1,1,97.32,'2004-03-27 03:00:00'),
(24,80014,22,1,82.41,'2004-03-26 03:00:00'),
(25,80025,18,2,67.37,'2004-03-26 03:00:00'),
(26,80007,25,1,41.21,'2004-03-26 03:00:00'),
(27,80030,4,1,8.98,'2004-03-25 03:00:00'),
(28,80001,1,1,9.99,'2004-03-25 03:00:00'),
(29,80002,30,4,10.00,'2004-03-25 03:00:00'),
(30,80002,30,4,10.00,'2004-03-25 03:00:00'),
(31,80002,30,4,10.00,'2004-03-25 03:00:00');

-- Ejercicio 2 
select 
	v.Fecha_compra, 
    c.Nombres,
    l.Titulo
from
	Ventas as v inner join Clientes as c 
    on v.Cli_id = c.Cli_id
    inner join Libros as l
    on v.Libro_id = l.Libro_id;

-- Ejercicio 3
select 
    c.Nombres,
    l.Titulo,
    (v.Precio * v.Cantidad) as Precio_total
from
	Ventas as v inner join Clientes as c 
    on v.Cli_id = c.Cli_id
    inner join Libros as l
    on v.Libro_id = l.Libro_id;

-- Ejercicio 4
select
	c.*,
    l.Titulo,
    v.Cantidad
from
	Ventas as v inner join Clientes as c 
    on v.Cli_id = c.Cli_id
    inner join Libros as l
    on v.Libro_id = l.Libro_id
where
	l.Costo > 50;
    
-- Ejercicio 5
select
	c.Nombres,
    c.Direccion,
    l.Titulo,
    v.Cantidad
from
	Ventas as v inner join Clientes as c 
    on v.Cli_id = c.Cli_id
    inner join Libros as l
    on v.Libro_id = l.Libro_id
where
	v.Venta_id between 1 and 3;

-- Ejercicio 6
select
	v.*,
	c.Nombres,
    c.Email,
    l.Titulo    
from
	Ventas as v inner join Clientes as c 
    on v.Cli_id = c.Cli_id
    inner join Libros as l
    on v.Libro_id = l.Libro_id
where
	c.Apellido like 'KWAN';