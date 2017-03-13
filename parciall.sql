    -> '123','50sombrasdegrey','españos','impreso','adulto','1234');
Query OK, 1 row affected (0.03 sec)

mysql> insert into Tema(ClaveTema,Nombre)values('321','erotico');
Query OK, 1 row affected (0.02 sec)

mysql> insert into Autor(ClaveAutor,Nombre)values('789','grey');
Query OK, 1 row affected (0.04 sec)

mysql> insert into Editorial(ClaveEditorial,Nombre,Dirección,Teléfono)values('45
6','Natalia','terrazasdelllano4c','32178952');
Query OK, 1 row affected (0.03 sec)

mysql> insert into Ejemplar(ClaveLibro,NúmeroOrden,Edición,Ubicación)values('741
','1-11','Natalia','cartago');
Query OK, 1 row affected (0.02 sec)

mysql> insert into Socio(ClaveSocio,Nombre,Dirección,Teléfono,Categoría)values('
852','Ricardo','condominioalamos','45689823','adulto');
Query OK, 1 row affected (0.03 sec)

mysql> insert into Préstamo(ClaveSocio,ClaveLibro,NúmeroOrden,Fecha_préstamo,Fec
ha_devolución,Notas)values('852','321','1-11','marzo13','marzo20','50');
Query OK, 1 row affected (0.02 sec)

mysql> insert into Trata_sobre(ClaveLibro,ClaveTema)values('741','321');
Query OK, 1 row affected (0.02 sec)

mysql> insert into Escrito_por(ClaveLibro,ClaveAutor)values('741','789');
Query OK, 1 row affected (0.03 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| bibliotecadb       |
| test               |
+--------------------+
3 rows in set (0.00 sec)

mysql> use bibliotecabd;
ERROR 1044 (42000): Access denied for user 'nataliasaza'@'localhost' to database
 'bibliotecabd'
mysql> shor tables;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MySQL server version for the right syntax to use near 'shor
tables' at line 1
mysql> show tables;
+------------------------+
| Tables_in_bibliotecadb |
+------------------------+
| autor                  |
| editorial              |
| ejemplar               |
| escrito_por            |
| libro                  |
| préstamo               |
| socio                  |
| tema                   |
| trata_sobre            |
+------------------------+
9 rows in set (0.00 sec)

mysql> describe Libro;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| ClaveLibro     | varchar(200) | YES  |     | NULL    |       |
| Título         | varchar(200) | YES  |     | NULL    |       |
| Idioma         | varchar(200) | YES  |     | NULL    |       |
| Formato        | varchar(200) | YES  |     | NULL    |       |
| Categoría      | varchar(200) | YES  |     | NULL    |       |
| ClaveEditorial | varchar(200) | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> describe Tema;
+-----------+--------------+------+-----+---------+-------+
| Field     | Type         | Null | Key | Default | Extra |
+-----------+--------------+------+-----+---------+-------+
| ClaveTema | varchar(200) | YES  |     | NULL    |       |
| Nombre    | varchar(200) | YES  |     | NULL    |       |
+-----------+--------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> describe Autor;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| ClaveAutor | varchar(200) | YES  |     | NULL    |       |
| Nombre     | varchar(200) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> describe Editorial;
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| ClaveEditorial | varchar(200) | YES  |     | NULL    |       |
| Nombre         | varchar(200) | YES  |     | NULL    |       |
| Dirección      | varchar(200) | YES  |     | NULL    |       |
| Teléfono       | varchar(200) | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> describe Ejemplar;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| ClaveLibro  | varchar(200) | YES  |     | NULL    |       |
| NúmeroOrden | varchar(200) | YES  |     | NULL    |       |
| Edición     | varchar(200) | YES  |     | NULL    |       |
| Ubicación   | varchar(200) | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> describe Socio;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| ClaveSocio | varchar(200) | YES  |     | NULL    |       |
| Nombre     | varchar(200) | YES  |     | NULL    |       |
| Dirección  | varchar(200) | YES  |     | NULL    |       |
| Teléfono   | varchar(200) | YES  |     | NULL    |       |
| Categoría  | varchar(200) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> describe Préstamo;
+------------------+--------------+------+-----+---------+-------+
| Field            | Type         | Null | Key | Default | Extra |
+------------------+--------------+------+-----+---------+-------+
| ClaveSocio       | varchar(200) | YES  |     | NULL    |       |
| ClaveLibro       | varchar(200) | YES  |     | NULL    |       |
| NúmeroOrden      | varchar(200) | YES  |     | NULL    |       |
| Fecha_préstamo   | varchar(200) | YES  |     | NULL    |       |
| Fecha_devolución | varchar(200) | YES  |     | NULL    |       |
| Notas            | varchar(200) | YES  |     | NULL    |       |
+------------------+--------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> describe Trata_sobre;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| ClaveLibro | varchar(200) | YES  |     | NULL    |       |
| ClaveTema  | varchar(200) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> describe Escrito_por;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| ClaveLibro | varchar(200) | YES  |     | NULL    |       |
| ClaveAutor | varchar(200) | YES  |     | NULL    |       |
+------------+--------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> show * from Libro;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MySQL server version for the right syntax to use near '* fro
m Libro' at line 1
mysql> select * from Libro;
+------------+-----------------+---------+---------+-----------+----------------
+
| ClaveLibro | Título          | Idioma  | Formato | Categoría | ClaveEditorial
|
+------------+-----------------+---------+---------+-----------+----------------
+
| 123        | 50sombrasdegrey | españos | impreso | adulto    | 1234
|
+------------+-----------------+---------+---------+-----------+----------------
+
1 row in set (0.00 sec)

mysql> select * from Tema;
+-----------+---------+
| ClaveTema | Nombre  |
+-----------+---------+
| 321       | erotico |
+-----------+---------+
1 row in set (0.00 sec)

mysql> select * from Autor;
+------------+--------+
| ClaveAutor | Nombre |
+------------+--------+
| 789        | grey   |
+------------+--------+
1 row in set (0.00 sec)

mysql> select * from Editorial;
+----------------+---------+--------------------+----------+
| ClaveEditorial | Nombre  | Dirección          | Teléfono |
+----------------+---------+--------------------+----------+
| 456            | Natalia | terrazasdelllano4c | 32178952 |
+----------------+---------+--------------------+----------+
1 row in set (0.00 sec)

mysql> select * from Ejemplar;
+------------+-------------+---------+-----------+
| ClaveLibro | NúmeroOrden | Edición | Ubicación |
+------------+-------------+---------+-----------+
| 741        | 1-11        | Natalia | cartago   |
+------------+-------------+---------+-----------+
1 row in set (0.00 sec)

mysql> select * from Socio;
+------------+---------+------------------+----------+-----------+
| ClaveSocio | Nombre  | Dirección        | Teléfono | Categoría |
+------------+---------+------------------+----------+-----------+
| 852        | Ricardo | condominioalamos | 45689823 | adulto    |
+------------+---------+------------------+----------+-----------+
1 row in set (0.00 sec)

mysql> select * from Préstamo;
+------------+------------+-------------+----------------+------------------+---
----+
| ClaveSocio | ClaveLibro | NúmeroOrden | Fecha_préstamo | Fecha_devolución | No
tas |
+------------+------------+-------------+----------------+------------------+---
----+
| 852        | 321        | 1-11        | marzo13        | marzo20          | 50
    |
+------------+------------+-------------+----------------+------------------+---
----+
1 row in set (0.00 sec)

mysql> select * from Trata_sobre;
+------------+-----------+
| ClaveLibro | ClaveTema |
+------------+-----------+
| 741        | 321       |
+------------+-----------+
1 row in set (0.00 sec)

mysql> select * from Escrito_por;
+------------+------------+
| ClaveLibro | ClaveAutor |
+------------+------------+
| 741        | 789        |
+------------+------------+
1 row in set (0.00 sec)

mysql> select * from Editorial;
+----------------+---------+--------------------+----------+
| ClaveEditorial | Nombre  | Dirección          | Teléfono |
+----------------+---------+--------------------+----------+
| 456            | Natalia | terrazasdelllano4c | 32178952 |
+----------------+---------+--------------------+----------+
1 row in set (0.00 sec)

mysql> select * from Ejemplar;
+------------+-------------+---------+-----------+
| ClaveLibro | NúmeroOrden | Edición | Ubicación |
+------------+-------------+---------+-----------+
| 741        | 1-11        | Natalia | cartago   |
+------------+-------------+---------+-----------+
1 row in set (0.00 sec)

mysql> select * from Socio;
+------------+---------+------------------+----------+-----------+
| ClaveSocio | Nombre  | Dirección        | Teléfono | Categoría |
+------------+---------+------------------+----------+-----------+
| 852        | Ricardo | condominioalamos | 45689823 | adulto    |
+------------+---------+------------------+----------+-----------+
1 row in set (0.00 sec)

mysql> select * from Préstamo;
+------------+------------+-------------+----------------+------------------+---
----+
| ClaveSocio | ClaveLibro | NúmeroOrden | Fecha_préstamo | Fecha_devolución | No
tas |
+------------+------------+-------------+----------------+------------------+---
----+
| 852        | 321        | 1-11        | marzo13        | marzo20          | 50
    |
+------------+------------+-------------+----------------+------------------+---
----+
1 row in set (0.00 sec)

mysql> select * from Trata_sobre;
+------------+-----------+
| ClaveLibro | ClaveTema |
+------------+-----------+
| 741        | 321       |
+------------+-----------+
1 row in set (0.00 sec)

mysql> select * from Escrito_por;
+------------+------------+
| ClaveLibro | ClaveAutor |
+------------+------------+
| 741        | 789        |
+------------+------------+
1 row in set (0.00 sec)

mysql>

         |                |
| identificacion | varchar(255)                       | NO   | UNI | NULL
         |                |
| grado          | varchar(11)                        | NO   |     | NULL
         |                |
| password       | varchar(60)                        | NO   |     | NULL
         |                |
| estado_voto    | tinyint(1)                         | NO   |     | NULL
         |                |
| tipo_usuario   | enum('estudiante','administrador') | NO   |     | NULL
         |                |
| remember_token | varchar(100)                       | YES  |     | NULL
         |                |
| created_at     | timestamp                          | NO   |     | 0000-00-00
00:00:00 |                |
| updated_at     | timestamp                          | NO   |     | 0000-00-00
00:00:00 |                |
+----------------+------------------------------------+------+-----+------------
---------+----------------+
11 rows in set (0.01 sec)

mysql> select nombre,apellidos from usuarios,asc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MySQL server version for the right syntax to use near 'asc'
at line 1
mysql> select nombre,apellidos from usuarios;
ERROR 1054 (42S22): Unknown column 'nombre' in 'field list'
mysql> select nombres,apellidos from usuarios,asc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that
corresponds to your MySQL server version for the right syntax to use near 'asc'
at line 1
mysql> select nombres,apellidos from usuarios;
+----------------------+----------------------------+
| nombres              | apellidos                  |
+----------------------+----------------------------+
| Carlos Alberto       | Londo                      |
| JEAN PAUL            | ESCOBAR  PATIÑO            |
| SANTIAGO             | HOYOS LÓPEZ                |
| ISABELLA             | MARIN MEJÍA                |
| THOMAS               | MONCADA LARA               |
| MIA                  | MURILLO CASAS              |
| SANTIAGO             | RADA PANTOJA               |
| JUAN MANUEL          | RIVADENEIRA OSSA           |
| JACOBO               | ALZATE AGUDELO             |
| ANA VALERIA          | ARIAS ZULUAGA              |
| SUSSAN VANESSA       | ARISTIZABAL BARRIOS        |
| FARID ANTARES        | CORDOBA RAMÍREZ            |
| JUAN ESTEBAN         | DELGADO RUIZ               |
| JUAN CAMILO          | DUQUE CARDONA              |
| NICOLAS              | GARCIA MADROÑERO           |
| JUAN MIGUEL          | MARULANDA CASTAÑEDA        |
| SIMÓN                | MOLINA ROMERO              |
| ANGIE VANESA         | OCHOA PULIDO               |
| JERÓNIMO             | OTERO TERÁN                |
| SAMUEL               | RENDÓN MONTOYA             |
| DANNA SOFIA          | SALAZAR CABEZAS            |
| JOSE EDGAR JESSEDT   | SARMIENTO GOMEZ            |
| SAMUEL               | VALENCIA DIAZ              |
| ISABELLA             | VÉLEZ ARIZA                |
| SANTIAGO             | ZAPATA GONZÁLEZ            |
| SANTIAGO             | ZAPATA SALAZAR             |
| JUAN MANUEL          | ALARZA TORO                |
| ISABELA              | CALZADA YEPES              |
| JUAN JOSÉ            | CARDONA GIRALDO            |
| LUIS FERNANDO        | CARMONA JARAMILLO          |
| NICOLAS ANDRES       | COLMENARES GALLEGO         |
| MIGUEL ANGEL         | ESCOBAR GONZALEZ           |
| MATEO                | GIRALDO RIOS               |
| MATIAS               | GÓMEZ BETANCURT            |
| SANTIAGO             | LONDOÑO GONZÁLEZ           |
| VIOLETA              | LÓPEZ GUEVARA              |
| CRISTIAN CAMILO      | MUÑOZ SEPULVEDA            |
| ANA SOFÍA            | PARRA AYALA                |
| GABRIELA             | PIÑEROS GARCIA             |
| ALEJANDRO            | RADA PANTOJA               |
| LAURA ANDREA         | SÁNCHEZ BOLIVAR            |
| MARIA PAULA          | SOLARTE SALAZAR            |
| ESTEFANIA            | USMA CARDONA               |
| SEBASTIAN            | VICUÑA MENDEZ              |
| MATIAS               | BOLIVAR HERNÁNDEZ          |
| JUAN JOSÉ            | CARRERA ALZATE             |
| ARIADNA ISABELA      | CORDOBA RAMÍREZ            |
| MARÍA CAMILA         | GIRALDO ALZATE             |
| SANTIAGO             | GÓMEZ BETANCOURT           |
| SERGIO ALEJANDRO     | GÓMEZ TORRES               |
| SAMUEL               | GONZÁLEZ RAMÍREZ           |
| PABLO AUGUSTO        | HOYOS LÓPEZ                |
| JUAN DAVID           | JARAMILLO RIOS             |
| THOMAS               | JORDÁN SALAZAR             |
| MARÍA JOSÉ           | LARA RESTREPO              |
| MIGUEL ANGEL         | ORTIZ ESCOBAR              |
| MARÍA JOSÉ           | OSPINA OROZCO              |
| SALOMÉ               | PARRA HURTADO              |
| JUAN JOSÉ            | VALDES CANO                |
| LUCIA DE LOS ANGELES | VELÁSQUEZ CERQUERA         |
| JUAN SEBASTIAN       | ALVAREZ SAAVEDRA           |
| JOSÉ DAVID           | ARBOLEDA SALGADO           |
| VALERIA              | ARIAS SÁNCHEZ              |
| MARÍA ANDREA         | ARIAS ZULUAGA              |
| DANIELA              | BENITEZ CASTRO             |
| MARCO ANTONIO        | CASTAÑEDA GAVIRIA          |
| JUAN DAVID           | CORREA ROMERO              |
| SAMUEL FERNANDO      | DAZA GIRALDO               |
| MIGUEL ANGEL         | DUQUE CARDONA              |
| ALEJANDRO            | ECHEVERRI HOYOS            |
| JUAN FELIPE          | ESPINAL MARTÍNEZ           |
| MATEO                | GARCÍA BARCO               |
| SEBASTIAN            | GUTIÉRREZ VULFERSSTHAWISKY |
| JULIAN ANDRES        | HURTADO BUITRAGO           |
| SERGIO               | LÓPEZ BEDOYA               |
| MARÍA JOSÉ           | LÓPEZ CARDONA              |
| SOFÍA                | MARÍN LOAIZA               |
| JUAN CAMILO          | MORALES OROZCO             |
| ISABEL               | OCAMPO SANCHEZ             |
| SARA                 | OSPINA ARIAS               |
| SANTIAGO             | OSPINA ARIAS               |
| ALEJANDRO            | PIMIENTO PAZ               |
| MICK JAGGER          | PONCE PÉREZ                |
| JUAN SEBASTIAN       | RUÍZ GARCÉS                |
| JUAN SEBASTIAN       | SALAZAR RAMÍREZ            |
| ESTEFAN ALESSANDRO   | SAMAROO GÓMEZ              |
| JACOB                | SERNA CATAÑO               |
| ANGELA CAMILA        | SOLARTE SALAZAR            |
| CAMILO               | AGUDELO JARAMILLO          |
| JERÓNIMO             | ARENAS SUÁREZ              |
| MARCO ANTONIO        | CASTAÑEDA WALKER           |
| CARLOS ENRIQUE       | CLAVIJO OSPINA             |
| CAMILA IRENE         | DURÁN LINTHICUM            |
| JUAN DAVID           | GALLEGO OROZCO             |
| VALERIA              | GOMÉZ ZAPATA               |
| SEBASTIAN            | GONZÁLEZ ARBOLEDA          |
| SOFÍA                | LONDOÑO GONZÁLEZ           |
| JUAN JOSÉ            | MENDOZA ZAPATA             |
| MARÍA JOSÉ           | OBANDO GALARCIO            |
| SOFÍA                | OLIVEROS VELÁSQUEZ         |
| ANA MARÍA            | PONTÓN GIL                 |
| SALOMÉ               | RAMÍREZ GARCÍA             |
| NIKOLE               | RAMIREZ SALAZAR            |
| GILMER MAURICIO      | RODRÍGUEZ VARGAS           |
| AHYTARA              | SALAZAR CAÑAS              |
| NICOLÁS              | SÁNCHEZ VILLADA            |
| JESMIN ESTEFANNY     | SARMIENTO GÓMEZ            |
| LUCAS                | VICTORIA TORO              |
| JUAN FELIPE          | ZAPATA GONZÁLEZ            |
| FELIPE               | ALZATE AGUDELO             |
| LUCAS EMANUEL        | CARDONA GÓMEZ              |
| ISABELLA             | CASTAÑEDA FERNÁNDEZ        |
| MARÍA PAULA          | CASTAÑEDA FERNÁNDEZ        |
| JERONIMO             | CASTRO HOLGUÍN             |
| SARA                 | CASTRO HOLGUÍN             |
| JUAN ESTEBAN         | ECHEVERRI MEJÍA            |
| MARIA JOSE           | FAJARDO GIRALDO            |
| NICOLÁS              | GIL PINEDA                 |
| LAURA                | GÓMEZ GRAJALES             |
| JUAN JACOBO          | GUTIERREZ NARANJO          |
| SOFÍA                | HENAO ARCILA               |
| JOSÉ DAVID           | LÓPEZ PÉREZ                |
| DANIELA              | MARTÍNEZ DÍAZ              |
| NATALIA              | MORENO SIERRA              |
| JUAN JOSÉ            | PARRA AYALA                |
| DANIEL               | PATINO                     |
| ANA SOFÍA            | PERDOMO QUINTERO           |
| ANDREA               | PINO ROMAN                 |
| SANTIAGO             | RAMÍREZ SALCEDO            |
| ALVARO ALEJANDRO     | RESTREPO GRANADA           |
| JUAN MANUEL          | SERNA BLANDON              |
| JUAN ESTEBAN         | TOLOSA GRAJALES            |
| DIEGO FELIPE         | CASTAÑEDA FERNÁNDEZ        |
| JUAN SEBASTIAN       | CONDE HOYOS                |
| THOMAS               | CORREA VIEDMA              |
| SANTIAGO             | CORTES RIVERA              |
| JUAN ESTEBAN         | FLORES GONZALEZ            |
| SANTIAGO             | GARCIA HERRERA             |
| JOSÉ DILMER          | GARCIA TAMAYO              |
| JUAN ESTEBAN         | GONZÁLEZ VEGA              |
| ANGÉLICA             | GRAJALES LÓPEZ             |
| JUAN FELIPE          | HERNÁNDEZ GIRALDO          |
| JUAN ESTEBAN         | LEMUS PÉREZ                |
| DAVID                | LOZANO SALAZAR             |
| LAURA                | PENILLA RAMÍREZ            |
| KLEIDEN              | PULGARIN HENAO             |
| CHRISTIAN            | QUINTERO CIFUENTES         |
| JACOBO               | QUINTERO RIVERA            |
| JUAN ESTEBAN         | QUINTERO SOTO              |
| MARÍA CAMILA         | QUINTERO ZAPATA            |
| ISABELLA             | RENGIFO SUÁREZ             |
| SANTIAGO             | SALAZAR CAMPO              |
| VANESSA              | SÁNCHEZ CHITIVA            |
| ANA SOFÍA            | SOLANO MONTAÑEZ            |
| ISABELLA             | SOTO OCHOA                 |
| MIGUEL ANGEL         | SOTO SÁNCHEZ               |
| JUAN DAVID           | VÁSQUEZ CARDONA            |
| SUSAN                | VILLEGAS AGUDELO           |
| YEIKO                | VILLEGAS AGUDELO           |
| RAFAEL ANTONIO       | YARCE BETANCOURTH          |
| ESTEFANIA            | ZAPATA ARROYAVE            |
| JUAN DAVID           | ALVAREZ RIOS               |
| JACOBO               | ARIZA PARDO                |
| CAMILA ALEJANDRA     | CARREÑO JIMÉNEZ            |
| JUAN PABLO           | GARCIA SERNA               |
| JUAN ESTEBAN         | GAVIRIA GÓMEZ              |
| LAURA SOFÍA          | GIRALDO VELÁSQUEZ          |
| JUAN JOSÉ            | MONCALEANO RENGIFO         |
| SANTIAGO             | MONTES CARDONA             |
| JUAN PABLO           | MONTOYA SOTO               |
| LUIS FELIPE          | MUÑOZ AGUILAR              |
| FELIPE               | MURILLO BOTERO             |
| MANUELA              | NAGLES MARÍN               |
| ANA LUCIA            | OCAMPO RAMÍREZ             |
| JUAN PABLO           | PAREDES ANGEL              |
| ANDRÉS DAVID         | PARRA GUARÍN               |
| DANIEL               | PENILLA RAMÍREZ            |
| JUAN DAVID           | PERDOMO QUINTERO           |
| LAURA MARCELA        | PÉREZ MARTÍNEZ             |
| JACOBO               | PINILLOS OSPINA            |
| ANTONIO JOSÉ         | RINCÓN RESTREPO            |
| SANTIAGO             | ROMERO GARCÍA              |
| DANIEL SANTIAGO      | SÁNCHEZ VILLADA            |
| DAVID                | SARMIENTO LEDESMA          |
| HANNAH CATALINA      | TIBAQUICHA GÓMEZ           |
| ALEJANDRO            | TORRES ORTIZ               |
| DAVID                | VELÁSQUEZ OROZCO           |
| JUAN MANUEL          | ZULUAGA LÓPEZ              |
| JUAN ESTEBAN         | BEDOYA ROJAS               |
| MARÍA CAMILA         | BERNAL RESTREPO            |
| JUAN PABLO           | CADENA ESGUERRA            |
| DAVID GUILLERMO      | CASTAÑEDA VULFERSSTHAWISKY |
| ISABELLA             | GÓMEZ MALDONADO            |
| SANTIAGO             | MARÍN GARCIA               |
| ALEJANDRO            | MORALES RIOS               |
| ISABELLA             | MUÑOZ RESTREPO             |
| MANUEL ESTEBAN       | OBANDO GALARCIO            |
| MANUEL SANTIAGO      | ORTÍZ BONILLA              |
| SANTIAGO             | ORTIZ OCAMPO               |
| VANESSA              | TABARES GUTIÉRREZ          |
| HANNA DAYANA         | WILCHES RENGIFO            |
| EDWARD               | ZORRILLA ALCARAZ           |
| JUAN SEBASTIAN       | ALZATE OCHOA               |
| MARIANA              | ARIZA HERNÁNDEZ            |
| JHON ALEJANDRO       | BENITEZ SALAZAR            |
| MELISSA              | BERRIO ESCOBAR             |
| MARIANA              | CÁRDENAS OROZCO            |
| JUAN CAMILO          | CRUZ MEJÍA                 |
| MARÍA CAMILA         | DURÁN PABÓN                |
| JUAN FELIPE          | ECHEVERRI HOYOS            |
| JUAN DIEGO           | ESPINOSA TORRES            |
| JOSHUA               | GÓMEZ ZAPATA               |
| ANDRÉS               | GONZÁLEZ ECHEVERRI         |
| DANIEL ANDRÉS        | HERNÁNDEZ GIRALDO          |
| ISABELLA             | HOYOS SALAZAR              |
| MICHELLE             | JARAMILLO MORALES          |
| VALERIE              | JARAMILLO MORALES          |
| EMELY NICOL          | JIMÉNEZ MILLÁN             |
| VALENTINA            | JORDÁN DE LA ESPRIELLA     |
| ALEJANDRO            | MURILLO BOTERO             |
| ANA MARÍA            | PÉREZ SILVA                |
| AYMER DAVID          | POSSO JORDAN               |
| CAMILA ANDREA        | QUINTERO GIRALDO           |
| ISABELLA             | RAMÍREZ CORREA             |
| ANDREA               | RAMÍREZ LONDOÑO            |
| DANIEL               | ROJAS GROIHS               |
| SANTIAGO             | SALAZAR DUQUE              |
| JUAN DAVID           | SILVA GÓMEZ                |
| JUAN DAVID           | TOBÓN LLANO                |
| VALERIA              | TRIANA SALINAS             |
| JUANITA              | URREA POSADA               |
| ESTEBAN              | VALLARINO GIRALDO          |
| EMMANUEL             | VELÁSQUEZ OROZCO           |
| VALERIA              | ÁLVAREZ BELTRÁN            |
| MARIANA              | ALZATE GÓMEZ               |
| JUANITA              | BRAVO RESTREPO             |
| JUAN CARLOS          | BUITRAGO MORENO            |
| JUAN ESTEBAN         | CAÑAS ZAPATA               |
| VALENTINA            | CASTAÑEDA WALKER           |
| DAVID ESTEBAN        | CRUZ LOZANO                |
| JUAN PABLO           | ECHEVERRI CHICA            |
| DIANA CAROLINA       | FIGUEROA RAMÍREZ           |
| DANIEL MAURICIO      | GALINDO PEREA              |
| JUAN ALEJANDRO       | GALLEGO GÓMEZ              |
| MARÍA FERNANDA       | GARCÍA PUENTES             |
| KEVIN ALBERTO        | GONZÁLEZ VERA              |
| SEBASTIAN            | MENDOZA ZAPATA             |
| SOFÍA                | MONTOYA GARCÍA             |
| SYLVANA              | MONTOYA MAYA               |
| JUAN DIEGO           | PEREA GARCÍA               |
| NICOLAS              | PINILLOS OSPINA            |
| JUAN DAVID           | POSADA HURTADO             |
| VICTORIA             | POSADA MURILLO             |
| FERNANDO             | RINCÓN HURTADO             |
| LINA MARÍA           | RODRÍGUEZ CARDONA          |
| SANTIAGO             | SUÁREZ PELÁEZ              |
| JUAN ESTEBAN         | TAMAYO MONTOYA             |
| ADAM                 | VILLEGAS AGUDELO           |
| EDWIN                | VILLEGAS GARCÍA            |
| LUCAS EMANUEL        | CARDONA GOMEZ              |
| VALERIA              | SARAY                      |
+----------------------+----------------------------+
261 rows in set (0.00 sec)

mysql>