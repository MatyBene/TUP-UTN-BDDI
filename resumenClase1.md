# Base de datos

Es una coleccion organizada de informacion estructurada, o datos, tipicamente almacenados en un sistema de computadora. 

Es controlada por un sistema de gestion de base de datos (DBMS).

Un sistema de base de datos, son los datos y el DBMS, junto con las aplicaciones que estan asociados con ellos.

Los datos se modelan en filas y columnas en una serie de tablas. Se puede acceder, administrar, modificar, actualizar, controlar y organizar los datos. Se utiliza el lenguaje SQL para las consultas de datos.

Estan disenadas para minimizar la redundancia, mantener la coherencia entre los datos y garantizar la integridad a traves de restricciones.

## Redundancia

### En un archivo

Es la presencia de datos duplicados dentro del mismo archivo o en diferentes archivos. Puede llevar a un uso ineficiente del espacio de almacenamiento y dificultar la actualizacion y el mantenimiento de los datos.

### En una base de datos

Para minimizar la redundancia, se utiliza la tecnica de la normalizacion. Que consiste en dividir los datos en tablas relacionadas de manera que cada dato se almacene en un solo lugar.

## Integridad

### En un archivo

Se refiere a la precision y validez de los datos almacenados. La falta de mecanismos para mantener la integridad puede llevar a errores de procesamiento y analisis de datos.

### En una base de datos

Se pueden aplicar restricciones, para asegurarse de que los datos cumplan con ciertos estandares y que las relaciones entre ellos sean coherentes y validas.

## Coherencia

### En un archivo

Se refiere a la consistencia de los datos. Si se actualiza el dato en un lugar, es posible que no se actualice en otros lugares donde tambien se utiliza.

### En una base de datos

Cuando se utilizan las DBMS, las actualizaciones se aplican de manera consistente. Esto garantiza que los datos sean coherentes y reflejen la ultima informacion disponible.

## Consistencia

Se refiere a la propiedad de mantener la integridad y la coherencia de los datos almacenados. Los datos siempre deben estar en un estado valido y preciso.

