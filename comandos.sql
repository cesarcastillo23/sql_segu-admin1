


/* PROYECTO DEL AULA ANTERIOR 3 */

SHOW GLOBAL STATUS LIKE 'Created_tmp_disk_tables';

SHOW GLOBAL STATUS LIKE 'Created_tmp_tables';

SHOW GLOBAL VARIABLES LIKE 'tmp_table_size';

SET GLOBAL tmp_table_size = 136700160;



/* PROYECTO DEL AULA ANTERIOR 4 */

CREATE TABLE df_table (ID INT, NOMBRE VARCHAR(100));

ALTER TABLE df_table ENGINE = MyISAM;

CREATE TABLE df_table1 (ID INT, NOMBRE VARCHAR(100)) ENGINE = MEMORY;

SHOW ENGINES;

CREATE DATABASE base;

SHOW VARIABLES WHERE Variable_Name LIKE '%dir';

-- Cambiamos la dirrecion de la base de datos creando una carpeta en el  disco 'C' y hacemos la modificacion en el archivo my.ini con la dirrecion 
-- C:\ProgramData\MySQL\MySQL Server 8.0 haciendo la modificacion interna en para este caso:
# Path to the database root
#datadir=C:/ProgramData/MySQL/MySQL Server 8.0\Data
-- datadir=C:/sql_dba\Data

# hacemos copia de la carpeta 'Data' de la carpeta original a la copia 

# luego deteniendo y ejecuntando los servicion de mySQL para ejecutar las nuevas modificaciones 



CREATE DATABASE base3;

DROP DATABASE base;




/* PROYECTO FINAL */

# BACK UP DE LA BASE DE DATOS
#CMD
# cd - Program Files \ mysql\ mysql server 8.0\ bin \ mysqldump	
# mysqldump -uroot -p --databases jugos_ventas > c:\sql_dba\jugos_ventas_full
#PARA OMITIR UNA TABLA EN ESPECIFICO
#mysqldump -uroot -p --databases jugos_ventas --ignore-table jugos_ventas.facturas > c:\sql_dba\jugos_ventas_sin_facturas
LOCK INSTANCE FOR BACKUP;
#Data export elegir destino y exportar 
UNLOCK INSTANCE;

# back up fisico
LOCK INSTANCE FOR BACKUP;
# copiar los archivos Data y my.ini para copia fisica 
UNLOCK INSTANCE;
#-----recuperacion de la base de datos 

#mysql -uroot -p

LOCK INSTANCE FOR BACKUP;
# copiar los archivos Data y my.ini para copia fisica 
UNLOCK INSTANCE;
#mysql -uroot -p < c:\sql_dba\jugos_ventas_full.sql signo invertido




