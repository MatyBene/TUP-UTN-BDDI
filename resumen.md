# ACID

## Concepto

ACID es un modelo para asegurar la integridad y confiabilidad de las transacciones en bases de datos relacionales.

### Transaccion

Es una secuencia de operaciones que se ejecutan como una unica unidad logica de trabajo. Operaciones: insercion, actualizacion, eliminacion, lectura de datos. Debe cumplir con las propiedades ACID.

## Atomicidad

Garantiza que una transaccion se ejecute completamente o no se ejecute en absoluto. Esto significa que si alguna parte de la transaccion falla, toda la transaccion se revierte