# Estructura Repetitivas

## 1. Estructura repetitiva ```MIENTRAS```

Ejecuta una acción en forma repetitiva en función (dependiendo)
de una ```proposición``` mientras esta sea verdadera la acción
se repite, cuando la condición, llega a ser falsa, la acción deja
de repetirse. Tiene la siguiente estructura:

```javascript
MIENTRAS [proposición] HACER
    [instrucciones] // se ejecuta si [proposición] es verdad
FIN_MIENTRAS
```

## Ejercicios 1

### Ejercicio 1.1

Escribir un algoritmo para obtener los 10 primeros números naturales

Análisis
SALIDA: los 10 números naturales  
ENTRADA: no hay entrada  
PROCESO: ---

Algoritmo

```javascript
variables ENTERAS: num_natural
num_natural = 1

MIENTRAS num_natural <= 10 HACER
    ESCRIBIR: num_natural
    num_natural <- num_natural + 1
FIN_MIENTRAS
```

### Ejercicio 1.2

Escribir un algoritmo para obtener los n primeros números pares

Análisis  
SALIDA: los n primeros números pares.  
ENTRADA: la cantidad n.  
PROCESO: ---

Algoritmo

```javascript
variables ENTERAS: par, n
LEER: n

MIENTRAS par <= 2 * n HACER
    ESCRIBIR: par
    par <- par + 2
FIN_MIENTRAS
```

### Ejercicio 1.3

Escribir un algoritmo par obtener los números impares en un rango, inclusive.

Análisis  
SALIDA: Los números impares.  
ENTRADA: Los límites del rango.  
PROCESO: ---

Algoritmo

```Javascript
variables ENTERAS: lim_inf, lim_sup, impar
LEER: lim_inf, lim_sup

// Comprobando si el lim inferior es impar
SI MÓDULO(lim_inf, 2) = 0 ENTONCES
    impar = lim_inf + 1
SINO
    impar = lim_inf
FIN_SI

// Escribiendo los números
MIENTRAS impar <= lim_sup HACER
    ESCRIBIR: impar
    impar <- impar + 2
FIN_MIENTRAS
```

### Ejercicio 1.4

Escribir un algoritmo para obtener los n primeros términos
de la serie de Fibonacci. (Todo termino
es la suma de los dos anteriores). (considere 0 y 1 como el inicio).

$$0, 1, 1, 2, 3, 5, 8, 13, \dots$$

Análisis  
SALIDA: los n primeros términos.  
ENTRADA: La cantidad n  
PROCESOS: --

```javascript
variables ENTERAS: n, termino, anterior1, anterior2, contador
LEER: n

a <- 0
b <- 1
contador <- 1

MIENTRAS contador <= n HACER
    ESCRIBIR: anterior2
    termino <- anterior2 + anterior1
    anterior2 <- anterior1
    anterior1 <- termino
    contador <- contador + 1
FIN_MIENTRAS 
```

### Ejercicio 1.5

Escriba un algoritmo para obtener los n términos de la serie de
Fibonacci a partir del término de valor $x$.

Análisis  
SALIDA: los $n$ términos a partir de $x$.  
ENTRADA: el término $x$ y la cantidad $n$.  
PROCESO: ---

```javascript
variables ENTERAS: n, términos, x, contador, anterior1, anterior2 
LEER: n, x

a <- 0
b <- 1

MIENTRAS contador <= n HACER
    SI anterior 2 >= x ENTONCES
        ESCRIBIR: anterior2
        contador <- contador + 1
    FIN_SI
    termino <- anterior2 + anterior1
    anterior2 <- anterior1
    anterior1 <- termino
FIN_MIENTRAS
    
```
