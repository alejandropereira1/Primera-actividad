CREATE DATABASE practica1;

USE practica1;

CREATE TABLE clientes(
Id INT AUTO_INCREMENT PRIMARY KEY,
Dni INT (13),
Nombre VARCHAR (40),
Apellido VARCHAR (40),
Teléfono INT (10),
Correo VARCHAR (40),
Fecha_de_nacimiento DATE

);


ALTER TABLE clientes RENAME Clientes

DESCRIBE clientes;

ALTER TABLE clientes MODIFY COLUMN Dni INT (13) NOT NULL UNIQUE;
ALTER TABLE clientes MODIFY COLUMN Nombre VARCHAR (40) NOT NULL;
ALTER TABLE clientes MODIFY COLUMN Apellido VARCHAR (40) NOT NULL;
ALTER TABLE clientes MODIFY COLUMN Correo VARCHAR (40) NOT NULL UNIQUE;

CREATE TABLE empleados(
Id INT AUTO_INCREMENT PRIMARY KEY,
Dni INT (13) NOT NULL UNIQUE,
Cargo VARCHAR (40) NOT NULL,
Nombre VARCHAR  (40) NOT NULL,
Apellido VARCHAR (40) NOT NULL, 
Teléfono INT (10) NOT NULL UNIQUE,
Dirección VARCHAR (40) NOT NULL,
Correo VARCHAR (40) NOT NULL UNIQUE,
fecha_de_nacimiento DATE NOT NULL

);

DESCRIBE empleados


CREATE TABLE mesas(
Id INT AUTO_INCREMENT PRIMARY KEY, 
Numero_mesa INT (10) UNIQUE NOT NULL,
Fecha_reserva DATETIME UNIQUE NOT NULL,
FOREIGN KEY (Id) REFERENCES clientes(Id)

);


CREATE TABLE Pedidos( 
Id_pedido INT (10) UNIQUE AUTO_INCREMENT PRIMARY KEY,
Fecha_pedido DATETIME UNIQUE NOT NULL,
Dirección VARCHAR (40) NOT NULL,
FOREIGN KEY (Id_pedido) REFERENCES clientes(Id)

);

DESCRIBE Pedidos

CREATE TABLE factura(
Id_factura INT PRIMARY KEY AUTO_INCREMENT,
Fecha_emisión DATETIME NOT NULL,
Numero_factura VARCHAR (20) NOT NULL UNIQUE,
Impuestos DECIMAL (10,2),
Total DECIMAL (10,2),
Forma_de_pago VARCHAR(50),
FOREIGN KEY (Id_factura) REFERENCES clientes(Id)

);

CREATE TABLE menu(
Id_menu INT PRIMARY KEY AUTO_INCREMENT,
Nombre_plato VARCHAR (100) NOT NULL,
Descripcion TEXT,
Categoria VARCHAR (50) NOT NULL,
Precio DECIMAL (10,2)

);







