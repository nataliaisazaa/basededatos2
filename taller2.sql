-u root -p
create user 'natalia'@'localhost';
identified by 'isaza';

create database escuela;
grant all privileges on escuela . * to 'natalia'@'localhost';

exit

-u natalia -p
Enter password: *****

create table usuarios(
		id_usuario integer unsigned primary key auto_increment,
		nombre varchar(200),
		apellildo varchar(200),
		email varchar(200),
		password varchar(200)
);
create table libros(
		id_libro integer unsignes primary key auto_increment,
		nombre varchar(200),
		fecha_creacion timestamp not null defaul current_timestamp,
		tipos enun('comedia','drama','suspenso','amor'),
		id_usuario integer unsignes
);
alter table usuarios add constraint uq_email unique(email);
alter table libros add  constraint  up_nombre inique(nombre);