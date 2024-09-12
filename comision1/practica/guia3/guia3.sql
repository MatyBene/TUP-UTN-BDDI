-- Guía práctica adicional N°3 --
use benedetti_c1;

-- Ejercicio 1 --
CREATE TABLE Customers(
  CustomerID int primary key NOT NULL AUTO_INCREMENT,
  FisrtName varchar(50) NOT NULL,
  LastName varchar(50) NOT NULL,
  Email varchar(100) unique,
  DateOfBirth date
);

-- Ejercicio 2 --
CREATE TABLE Orders (
  OrderID int PRIMARY KEY NOT NULL AUTO_INCREMENT,
  OrderDate date NOT NULL,
  TotalAmount decimal(10,2) NOT NULL,
  CustomerID int,
  FOREIGN KEY (CustomerID) REFERENCES Customers (CustomerID)
);

-- Ejercicio 3 --
create table Products(
	ProductID int primary key auto_increment,
    ProductName varchar(100) not null,
    Price decimal(10, 2) check(Price > 0),
    StockQuantity int not null check(StockQuantity >= 0)
);

-- Ejercicio 4 --
alter table Customers
add column PhoneNumber varchar(15) unique;

-- Ejercicio 5 --
alter table Products
add unique (ProductName);

-- Ejercicio 6 --
create table OrderDetails (
	OrderID int,
    ProductID int,
    Quantity int not null check (Quantity > 0),
    primary key (OrderID, ProductID),
    foreign key (OrderID) references Orders (OrderID),
    foreign key (ProductID) references Products (ProductID)
);

-- Ejercicio 7 --
alter table Customers
drop column PhoneNumber;

-- Ejercicio 8 --
alter table Products
modify column Price decimal(12, 2);

-- Ejercicio 9 --
rename table Customers to Clients;

-- Ejercicio 10 --
drop table orderdetails;
