create user 'nataliasaza'@'localhost';
identified by '1234567';

create user 'profesor'@'localhost';
identified by '123458';


grant all privileges on bibliotecadb . * to 'nataliasaza'@'localhost';

create table Libro(
	ClaveLibro varchar(200),
	Título varchar(200),
	Idioma varchar(200),
	Formato varchar(200),
	Categoría varchar(200),
	ClaveEditorial varchar(200)
	);
create table Tema(
	ClaveTema varchar(200),
	Nombre varchar(200)
	);
create table Autor(
	ClaveAutor varchar(200),
	Nombre varchar(200)
	);
create table Editorial(
	ClaveEditorial varchar(200),
	Nombre varchar(200),
	Dirección varchar(200),
	Teléfono varchar(200)
	);
create table Ejemplar(
	ClaveLibro varchar(200),
	NúmeroOrden varchar(200),
	Edición varchar(200),
	Ubicación varchar(200)
	);
create table Socio(
	ClaveSocio varchar(200),
	Nombre varchar(200),
	Dirección varchar(200),
	Teléfono varchar(200),
	Categoría varchar(200)
	);
create table Préstamo(
	ClaveSocio varchar(200),
	ClaveLibro varchar(200),
	NúmeroOrden varchar(200),
	Fecha_préstamo varchar(200),
	Fecha_devolución varchar(200),
	Notas varchar(200)
	);
create table Trata_sobre(
	ClaveLibro varchar(200),
	ClaveTema varchar(200)
	);
create table Escrito_por(
	ClaveLibro varchar(200),
	ClaveAutor varchar(200)
	); 

insert into Libro(ClaveLibro,Título,Idioma,Formato,Categoría,ClaveEditorial)values(
'123','50sombrasdegrey','españos','impreso','adulto','1234');

insert into Tema(ClaveTema,Nombre)values('321','erotico');
insert into Autor(ClaveAutor,Nombre)values('789','grey');
insert into Editorial(ClaveEditorial,Nombre,Dirección,Teléfono)values('456','Natalia','terrazasdelllano4c','32178952');
insert into Ejemplar(ClaveLibro,NúmeroOrden,Edición,Ubicación)values('741','1-11','Natalia','cartago');
insert into Socio(ClaveSocio,Nombre,Dirección,Teléfono,Categoría)values('852','Ricardo','condominioalamos','45689823','adulto');
insert into Préstamo(ClaveSocio,ClaveLibro,NúmeroOrden,Fecha_préstamo,Fecha_devolución,Notas)values('852','321','1-11','marzo13','marzo20','50');
insert into Trata_sobre(ClaveLibro,ClaveTema)values('741','321');
insert into Escrito_por(ClaveLibro,ClaveAutor)values('741','789');

show databases;
show tables;
describe Libro;
describe Tema;
describe Autor;
describe Editorial;
describe Ejemplar;
describe Socio;
describe Préstamo;
describe Trata_sobre;
describe Escrito_por;

show * from Libro;
select * from Tema;
select * from Autor;
select * from Editorial;
select * from Ejemplar;
select * from Socio;
select * from Préstamo;
select * from Trata_sobre;
select * from Escrito_por;

mysql -u root -p bibliotecaa <'mysql/bin/elecciones_personero.sql'
show databases;
show tables;
describe ;