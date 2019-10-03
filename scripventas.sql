/* Crear base de datos ventas */
create database ventas
	DEFAULT CHARACTER SET utf8;
/* Poner en uso la base de datos */
use ventas;
/* Crear tabla cliente */
CREATE TABLE Cliente
(
	idCliente VARCHAR(6),
	nomCliente VARCHAR(125) NOT NULL,
	apeCliente VARCHAR(125) NOT NULL,
	ciudCliente VARCHAR(100) NOT NULL,
	CONSTRAINT idCliente_PK PRIMARY KEY (idCliente)
);
/* Agregar columna Fecha de Nacimiento de cliente */
ALTER TABLE Cliente 
	ADD FecNacCliente DATE;

/* Eliminar columna ciudad cliente */
ALTER TABLE Cliente 
	DROP COLUMN ciudCliente;
/* Ver estructura de tabla cliente */
show columns in cliente;
/* Crear tabla orden */
create table orden
(
	idOrden int,
    fechaOrden date,
    cliente_idCliente varchar(6),
    CONSTRAINT idOrden_PK PRIMARY KEY (idOrden)
);
ALTER TABLE Orden 
	CHANGE idOrden idOrden INT AUTO_INCREMENT;
/* Ver listado de tablas de la base de datos ventas */
show tables;
/* Relacionar ambas tablas*/
alter table orden
	add constraint idCliente foreign key (cliente_idCliente)
    references cliente (idCliente);
/* Ingresando registro en la tabla cliente */
INSERT INTO cliente
		(idcliente, nomCliente, apeCliente, FecNacCliente)
	VALUES
		('C00001','Alberto', 'Campos Yaya', '1999-05-05');
select*from cliente;
/* Agregar más registros */
INSERT INTO  cliente
	(idCliente, nomCliente, apeCliente, FecNacCliente)
VALUES
	('C00002', 'María', 'Barrios Ramos', '1978-10-05'),
	('C00003', 'Rosa', 'Lombardi Hidalgo', '1980-08-08'),
    ('C00004', 'Juan Carlos', 'Ramírez Tapia', '1990-06-05');
select*from cliente;