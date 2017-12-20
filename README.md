# example-spring-roo
Pasos 
1-modificar el archivo: Mantenimientos/src/main/resources/META-INF/spring/database.properties
con los parmetros de su baase de datos.
2- crear el esquema:  CREATE SCHEMA `visitas` DEFAULT CHARACTER SET utf8 ; 
3- compilar:  mvn clean install -X
4- ejecutar:  mvn jetty:run



