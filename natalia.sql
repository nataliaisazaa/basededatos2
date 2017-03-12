
Setting environment for using XAMPP for Windows.
LENOVO@PERSONAL c:\xampp
# mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 6
Server version: 10.1.21-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2016, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.


MariaDB [(none)]>create database universidad;

MariaDB [(none)]>create user 'Administrador'@'localhost';
    ->          identified by '123456';

MariaDB [(none)]>grant all privileges on universidad . * to 'Administrador'@'localhost';

MariaDB [(none)]>create user 'Creador'@'localhost';
    ->      identified by '123456';

MariaDB [(none)]> grant all privileges on universidad . create table to 'Administrador'@'localhost';
Query OK, 0 rows affected (0.00 sec)

MariaDB [(none)]> exit
Bye

LENOVO@PERSONAL c:\xampp
# mysql -u administrador -p
Enter password: ******
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 7
Server version: 10.1.21-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2016, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> use universidad;
Database changed
MariaDB [universidad]> create table alumnos(
    ->          documento varchar(200),
    ->          nombre varchar(200),
    ->          direccion varchar(200),
    ->          fechadenacimiento date(),
    ->          foto LONGBLOB,
    ->          grupo varchar(200),
    ->          curso varchar(200)
    -> );
Query OK, 0 rows affected (0.32 sec)

MariaDB [universidad]> create table asignaturas(
    ->          id_materia integer unsigned primary key auto_increment,
    ->          nombre varchar(200),
    ->          id_programa integer unsigned,
    ->          id_profesor integer unsigned
    -> );
Query OK, 0 rows affected (0.44 sec)

MariaDB [universidad]>insert into alumnos(documento,nombre)values('1112789882','natalia isaza');
Query OK, 1 rows affected (0.9 sec

MariaDB [universidad]>insert into alumnos(direccion,grupo,curso)values('Terrazas del llano','11-2','11');
Query OK, 1 rows affected (0.6 sec)

MariaDB [universidad]>insert into alumnos(fechadenacimiento)values('julio-7-1997');
Query OK, 1 rows affected (0.5 sec)

MariaDB [universidad]> create table asignatura(
    ->  nombre_asignatura varchar(200),
    ->  codigo varchar(20),
    ->  ciclo varchar(200)
    -> );
Query OK, 0 rows affected (0.30 sec)


MariaDB [universidad]> show tables;
+-----------------------+
| Tables_in_universidad |
+-----------------------+
| alumnos               |
| asignatura            |
| asignaturas           |
+-----------------------+
3 rows in set (0.23 sec)

MariaDB [universidad]> describe asignatura;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| nombre_asignatura | varchar(200) | YES  |     | NULL    |       |
| codigo            | varchar(20)  | YES  |     | NULL    |       |
| ciclo             | varchar(200) | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
3 rows in set (0.13 sec)


MariaDB [universidad]> create table nombre_asignatura(
    -> matematicas varchar(20),
    -> castellano varchar(20),
    -> ingles varchar(20)
    -> );
Query OK, 0 rows affected (0.61 sec)



MariaDB [universidad]> describe nombre_asignatura;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| matematicas | varchar(20) | YES  |     | NULL    |       |
| castellano  | varchar(20) | YES  |     | NULL    |       |
| ingles      | varchar(20) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

MariaDB [universidad]> alter table asignatura add column (fecha varchar(200));
Query OK, 0 rows affected (0.60 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [universidad]> select * from asignatura;
Empty set (0.00 sec)

MariaDB [universidad]> describe asignatura;
+-------------------+--------------+------+-----+---------+-------+
| Field             | Type         | Null | Key | Default | Extra |
+-------------------+--------------+------+-----+---------+-------+
| nombre_asignatura | varchar(200) | YES  |     | NULL    |       |
| codigo            | varchar(20)  | YES  |     | NULL    |       |
| ciclo             | varchar(200) | YES  |     | NULL    |       |
| fecha             | varchar(200) | YES  |     | NULL    |       |
+-------------------+--------------+------+-----+---------+-------+
4 rows in set (0.17 sec)

MariaDB [universidad]>