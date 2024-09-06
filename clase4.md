# Clase 4 06/09/2024

## INNER JOIN 

```sql
select a.apellido, a.nombre, i.idcur
from alumnos as a, inscripciones as i, cursos as c
where a.idal = i.idal -- es una forma de hacerlos, se conoce como un join(inner) entre tablas
and i.idcur = c.idcurso

```
Con esta forma no necesito el where, lo hago en el from
```sql
select a.apellido, a.nombre, i.idcur
from alumnos a inner join inscripciones i 
on a.idal = i.idal inner join cursos c 
on i.idcur = c.idcurso
```

| Apellido | Nombre | idcurso | Nombre_curso |
| - | - | - | - |
| perez | juan | 1 | bdd1 |
|asdw | wqeqw | 2 | bdd2 |

## LEFT JOIN 

