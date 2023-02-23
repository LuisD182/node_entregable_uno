Server [localhost]:
Database [postgres]:
Port [5432]:
Username [postgres]:
Contraseña para usuario postgres:
psql (15.2)
ADVERTENCIA: El código de página de la consola (850) difiere del código
            de página de Windows (1252).
            Los caracteres de 8 bits pueden funcionar incorrectamente.
            Vea la página de referencia de psql «Notes for Windows users»
            para obtener más detalles.
Digite «help» para obtener ayuda.

postgres=# \c entregable_uno;
Ahora está conectado a la base de datos «entregable_uno» con el usuario «postgres».
entregable_uno=# \dt
            Listado de relaciones
 Esquema |     Nombre      | Tipo  |  Due±o
---------+-----------------+-------+----------
 public  | course_category | tabla | postgres
 public  | course_level    | tabla | postgres
 public  | course_video    | tabla | postgres
 public  | courses         | tabla | postgres
 public  | roles           | tabla | postgres
 public  | teacher         | tabla | postgres
 public  | user            | tabla | postgres
(7 filas)


entregable_uno=# SELECT * FROM course_video;
 id | title | url
----+-------+-----
(0 filas)


entregable_uno=# INSERT INTO  course_video (title, url) VALUES ('javascript', 'https:1');
INSERT 0 1
entregable_uno=# INSERT INTO course_video (title, url) VALUES ('meditation', 'https:2');
INSERT 0 1
entregable_uno=# SELECT * FROM course_video;
 id |   title    |   url
----+------------+---------
  2 | javascript | https:1
  3 | meditation | https:2
(2 filas)


entregable_uno=# SELECT * FROM course_category;
 id | type
----+------
(0 filas)


entregable_uno=# SELECT * FROM course_level;
 id |    level
----+--------------
  1 | begginer
  2 | intermediate
  3 | advanced
(3 filas)


entregable_uno=# INSERT INTO  course_category (type) VALUES ('tech');
INSERT 0 1
entregable_uno=# INSERT INTO course_category (type) VALUES ('mindfullness');
INSERT 0 1
entregable_uno=# INSERT INTO roles (type) VALUES ('student'), ('teacher'), ('admin');
INSERT 0 3
entregable_uno=# INSERT INTO teacher (name, lastname) VALUES ('Obi-Wan', 'Kenobi'), ('Anakin', 'Skywalker');
INSERT 0 2
entregable_uno=# INSERT INTO teacher (name, lastname) VALUES ('Mace', 'Windu');
INSERT 0 1
entregable_uno=# INSERT INTO user (name, password, age, rol) VALUES ('david', 'u234', 32, 1);
ERROR:  error de sintaxis en o cerca de «user»
LÍNEA 1: INSERT INTO user (name, password, age, rol) VALUES ('david',...
                     ^
entregable_uno=# INSERT INTO user (name, password, age, rol) VALUES ('david', 'u234', 32, 1);
ERROR:  error de sintaxis en o cerca de «user»
LÍNEA 1: INSERT INTO user (name, password, age, rol) VALUES ('david',...
                     ^
entregable_uno=# SELECT * FROM user;
   user
----------
 postgres
(1 fila)


entregable_uno=# SELECT * FROM courses;
 id | title | description | url | level | category | teacher
----+-------+-------------+-----+-------+----------+---------
(0 filas)


entregable_uno=# DROP user;
ERROR:  error de sintaxis en o cerca de «;»
LÍNEA 1: DROP user;
                  ^
entregable_uno=# DROP TABLE user;
ERROR:  error de sintaxis en o cerca de «user»
LÍNEA 1: DROP TABLE user;
                    ^
entregable_uno=# CREATEDATA BASE uno_entregable;
ERROR:  error de sintaxis en o cerca de «CREATEDATA»
LÍNEA 1: CREATEDATA BASE uno_entregable;
         ^
entregable_uno=# CREATE DATABASE entreable;
CREATE DATABASE
entregable_uno=# \c entregable;
falló la conexión al servidor en «localhost» (::1), puerto 5432: FATAL:  no existe la base de datos «entregable»
Se ha mantenido la conexión anterior
entregable_uno=#
entregable_uno=#
entregable_uno=# \c entreable;
Ahora está conectado a la base de datos «entreable» con el usuario «postgres».
entreable=# \i "C:/Users/ld_22/Downloads/Utechmy (8).sql";
unrecognized win32 error code: 123"C:/Users/ld_22/Downloads/Utechmy (8).sql: Invalid argument
entreable=# \i "\Users\ld_22\Downloads\Utechmy (7).sql";
unrecognized win32 error code: 123"/Users/ld_22/Downloads/Utechmy (7).sql: Invalid argument
entreable=# \i '/Users/ld_22/Downloads/Utechmy (8).sql';
CREATE TABLE
CREATE TABLE
CREATE TABLE
CREATE TABLE
CREATE TABLE
CREATE TABLE
CREATE TABLE
ALTER TABLE
ALTER TABLE
ALTER TABLE
ALTER TABLE
ALTER TABLE
psql:/Users/ld_22/Downloads/Utechmy (8).sql:56: ERROR:  no hay restricción unique que coincida con las columnas dadas en la tabla referida «courses»
entreable=# SELET * FORM users;
ERROR:  error de sintaxis en o cerca de «SELET»
LÍNEA 1: SELET * FORM users;
         ^
entreable=# SELECT * FROM users;
 id | name | password | age | rol
----+------+----------+-----+-----
(0 filas)


entreable=# INSERT INTO  course_video (title, url) VALUES ('javascript', 'https:1');
INSERT 0 1
entreable=# INSERT INTO course_video (title, url) VALUES ('meditation', 'https:2');
INSERT 0 1
entreable=# INSERT INTO  course_category (type) VALUES ('tech');
INSERT 0 1
entreable=# INSERT INTO course_category (type) VALUES ('jediness');
INSERT 0 1
entreable=# INSERT INTO roles (type) VALUES ('student'), ('teacher'), ('admin');
INSERT 0 3
entreable=# INSERT INTO teacher (name, lastname) VALUES ('Obi-Wan', 'Kenobi'), ('Anakin', 'Skywalker');
INSERT 0 2
entreable=# INSERT INTO teacher (name, lastname) VALUES ('Mace', 'Windu');
INSERT 0 1
entreable=# INSERT INTO user (name, password, age, rol) VALUES ('david', 'u234', 32, 1);
ERROR:  error de sintaxis en o cerca de «user»
LÍNEA 1: INSERT INTO user (name, password, age, rol) VALUES ('david',...
                     ^
entreable=# INSERT INTO users (name, password, age, rol) VALUES ('david', 'u234', 32, 1);
INSERT 0 1
entreable=# INSERT INTO users (name, password, age, rol) VALUES ('padme', 'uz5234', 28, 1);
INSERT 0 1
entreable=# INSERT INTO users (name, password, age, rol) VALUES ('chewie', 'uz5a4', 48, 1);
INSERT 0 1
entreable=# SELECT * FROM courses;
 id | title | description | url | level | category | teacher
----+-------+-------------+-----+-------+----------+---------
(0 filas)


entreable=# INSERT INTO courses (title, description, url, level, category, teacher) VALUES (2, 'lightsaber manipultaing', 2, 1, 2, 1);
ERROR:  inserción o actualización en la tabla «courses» viola la llave foránea «courses_level_fkey»
DETALLE:  La llave (level)=(1) no está presente en la tabla «course_level».
entreable=# SELECT * FROM course_level;
 id | level
----+-------
(0 filas)


entreable=# INSERT INTO course_level (level) VALUES ('begginer') , ('padawan'), ('intermediate'), ('knight');
INSERT 0 4
entreable=# INSERT INTO courses (title, description, url, level, category, teacher) VALUES (2, 'lightsaber manipultaing', 2, 1, 2, 1);
INSERT 0 1
entreable=# INSERT INTO courses (title, description, url, level, category, teacher) VALUES (2, 'lightsaber throwing', 2, 2, 2, 2);
INSERT 0 1
entreable=# INSERT INTO courses (title, description, url, level, category, teacher) VALUES (2, 'premeditation', 2, 4, 2, 3);
INSERT 0 1
entreable=#
entreable=# \dt
            Listado de relaciones
 Esquema |     Nombre      | Tipo  |  Due±o
---------+-----------------+-------+----------
 public  | course_category | tabla | postgres
 public  | course_level    | tabla | postgres
 public  | course_video    | tabla | postgres
 public  | courses         | tabla | postgres
 public  | roles           | tabla | postgres
 public  | teacher         | tabla | postgres
 public  | users           | tabla | postgres
(7 filas)


entreable=# SELECT * FROM course_category;
 id |   type
----+----------
  1 | tech
  2 | jediness
(2 filas)


entreable=# SELECT * FROM course_level;
 id |    level
----+--------------
  1 | begginer
  2 | padawan
  3 | intermediate
  4 | knight
(4 filas)


entreable=# SELECT * FROM  course_video;
 id |   title    |   url
----+------------+---------
  1 | javascript | https:1
  2 | meditation | https:2
(2 filas)


entreable=# SELECT * FROM courses;
 id | title |       description       | url | level | category | teacher
----+-------+-------------------------+-----+-------+----------+---------
  2 |     2 | lightsaber manipultaing |   2 |     1 |        2 |       1
  3 |     2 | lightsaber throwing     |   2 |     2 |        2 |       2
  4 |     2 | premeditation           |   2 |     4 |        2 |       3
(3 filas)


entreable=# SELECT * FROM roles;
 id |  type
----+---------
  1 | student
  2 | teacher
  3 | admin
(3 filas)


entreable=# SELECT * FROM teacher;
 id |  name   | lastname
----+---------+-----------
  1 | Obi-Wan | Kenobi
  2 | Anakin  | Skywalker
  3 | Mace    | Windu
(3 filas)


entreable=# SELECT * FROM users;
 id |  name  | password | age | rol
----+--------+----------+-----+-----
  1 | david  | u234     |  32 |   1
  2 | padme  | uz5234   |  28 |   1
  3 | chewie | uz5a4    |  48 |   1
(3 filas)


entreable=#
