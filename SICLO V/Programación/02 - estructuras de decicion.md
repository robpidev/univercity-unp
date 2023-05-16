# Estructuras de decición

## 1. Proposiciones

Las deciciones estaran tomadas en base a una condición
que pueden ser

1. Expreción de declarción simple
    (Exprecion simple)

2. Dos operandos o variables lógicos unidos
por un operador de relacional ejemplo; $7>2 \vee 8<2$, $2=4 \vee 3 < 2$, $falso \wedge verdadero$

3. Compuestas: con mas de una proposición unidos con operadores lógicos ($\vee$, $\wedge$, $\sim$)

### Ejercicios 1

#### Ejercicio 1.1

Escribir expreciones relacionales (condiciones) para lo siguientes casos

1. $x$ es mayor que cualquir de los valores de $a$, $b$, $c$.  
SOLUCIÓN.
$$x > a \vee x > b \vee x > c$$

## 2. Estructura en seudocódigo

```javascript
SI [propocición] ENTONCES
    [instrucciones] // Se ejecuta si [proposición] es verdadera
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

## 3. Estructruas de decicsión doble

La estructura es la siguiente

```javascript
SI [proposición] ENTONCES
    [instrucciones] // se ejecuta si proposición es verdadera
SINO
    [instrucciones] // se ejecuta si proposición es falsa
FIN_SI
```

### Ejercicios 3

#### Ejercicio 3.1

Escribir un algoritmo para hallar el mayor de 2 números

SOLUCIÓN

Análisis del problema

SALIDA: El número mayor  
ENTRADA: los 2 números  
PROCESOS: comparar cual es el mayor número.

Algoritmo en seudocódigo

```Javascript
variables ENTERAS: numero1, numero2
LEER: numero1, numero2

SI numero1 < numero2 ENTONCES
    ESCRIBIR: "El mayor número es: ", numero2
SINO
    ESCRIBIR: "El mayor número es: ", numero1
FIN_SI
```

#### Ejercicio 3.2

Existe una oferta de polos $3\times2$, hasta una cantidad máxima de 15
polos. Escribir un algoritmo para determinar ¿Cuántos se debe pagar
por una cantidad n de polos.

SOLUCIÓN

*Análisis del problema*
SALIDA: monto a pagar  
ENTRADA: la cantidad de n polos y el precio del polo  
PROCESO: ---

Algoritmo

```Javascript
variables REALES: precio, monto
variables ENTERAS: n
LEER: n, precio

SI n <= 15 ENTONCES
    monto <- 2 * precio * ENTERO(n/3) + precio * MODULO(n/3)
SINO
    monto <- 2 * precio * 5 + precio * (n - 15)
FIN_SI

ESCRIBIR: "El moto a pagar por ", n " polos es: S/.", monto 
```

## 4. Estructura de dección anidada

Una estrucctura de decición anidada se refire a que se puede
tener una instrucción de decisión dentro de otra estructura de
desición. Sigue la siguiente estructura

```javascript
SI [proposición1] ENTONCES
    ...
    // Esta instrucción puede ser de decición simple o doble
    // puede haber mas de 1
    // puede contenter otra estructurae deción
    SI [proposición2] ENTONCES
    ...
    FIN_SI
    ...
SINO...
    // Esta instrucción puede ser de decición simple o doble
    // puede haber mas de 1
    // puede contenter otra estructurae deción
    SI [proposición2] ENTONCES
    ...
    FIN_SI
    ...
FIN_SI

```

### Ejercicos 4

#### Ejercicio 4.1

Escribir un algorimo para calcular las soluciónes reales de una ecuación
desegundo grado.

SOLUCION
SALIDA: las soluciones de la ecuación  
ENTRADA: los coeficientes de la ecuación  
PROCESOS: $x_1 = \frac{-b - \sqrt{b^2 - 4ac} }{2a}$,
$x_2 = \frac{-b + \sqrt{b^2 - 4ac} }{2a}$

Algoritmo

Se usará ```!=``` en vez de $\neq$ y ```^``` en vez de $\uparrow$

```Javascript
variables REALES: a, b, c, x1, x2, disc
LEER: a, b, c

SI a != 0 ENTONCES
    disc <- (-b + )
    
    SI disc >= 0 ENTONCES
        x1 <- (-b + disc^(1/2))/(2 * a)
        x2 <- (-b - disc^(1/2))/(2 * a)
    SINO
        ESCRIBIR: "Las raices son complejas"
    FIN_SI
SINO
    ESCRIBIR: "La ecuación no es de segundo grado"
FIN_SI
    
```

Escribir un algorimo para calcular las soluciónes reales de una ecuación
desegundo grado.

SOLUCION
SALIDA: las soluciones de la ecuación  
ENTRADA: los coeficientes de la ecuación  
PROCESOS: ---

Algoritmo

```javascript
variables REALES: a, b, c, real, img
LEER: a, b, c

SI a = 0 ENTONCES
    ESCRIBIR: "la ecuación no es de segundo grado"
SINO
    disc <- b^2 - 4*a*c

    SI disc < 0 ENTONCES
    real -b/(2 * a)
    img = (-disc)^(1/2)

    ESCRIBIR: real, " + ", img, "i"
    ESCRIBIR: real, " - ", img, "i"
```
