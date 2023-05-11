# Estructuras de decición

## 1. Proposiciones

Las deciciones estaran tomadas en base a una condición
que pueden ser

1. Expreción de declarción simple
    (Exprecion simple)

2. Dos operandos o variables lógicos unidos
por un operador de relacional ejemplo; $7>2 \vee 8<2$, $2=4 \vee 3 < 2$, $falso \wedge verdadero$

3. Compuestas: con mas de una proposición unidos con operadores lógicos ($\vee$, $\wedge$, $\sim$)

### Ejercicios

#### Ejercicio 1.1

Escribir expreciones relacionales (condiciones) para lo siguientes casos

1. $x$ es mayor que cualquir de los valores de $a$, $b$, $c$.  
SOLUCIÓN.
$$x > a \vee x > b \vee x > c$$

## 2. Estructura en seudocódigo

```python
SI [propocición] ENTONCES
    [instrucciones] # Se ejecuta si [proposición] es verdadera
FIN_SI
```

### Ejercicios 2

#### Ejercicio 2.1

Escribir un algoritmo para promedior las cuatro nostas mas altas de un
conjunto de 5 notas.

SOLUCIÓN.

*SALIDA:* Promedio de las cuatro notas  
*ENTRADA:* 5 notas  
*PROCESO:* Buscar la nota menor y eliminarla, para esto sumar las 5, buscar
la menor y dividir entre 4

Algoritmo

```python
variables REALES: primedio, nota1, nota2, nota3, nota4, nota5, nota_menor
LEER: nota1, nota2, nota3, nota4, nota5

nota_menor <- nota1

SI nota_menor > nota2 ENTONCES
    nota_menor <- nota2
FIN_SI

SI nota_menor > nota3 ENTONCES
    nota_menor <- nota3
FIN_SI

SI nota_menor > nota4 ENTONCES
    nota_menor <- nota4
FIN_SI

SI nota_menor > nota5 ENTONCES
    nota_menor <- nota5
FIN_SI

promedio <- (nota1 + nota2 + nota3 + nota4 + nota5 - nota_menor)/4

ESCRIBIR: "El promedio de las 4 mayores notas es: ", promedio
```
