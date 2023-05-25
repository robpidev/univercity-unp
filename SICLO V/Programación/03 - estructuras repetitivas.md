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

### Ejercicio 1.6

El país $A$ tiene una población $x$ y una tasa de
crecimiento anual constante del 5%, el país $B$
tiene una población y y una tasa del 3%, ademas se sabe que
$y>x$.. Escribir un algoritmo para determinar,
después de cuántos años la población del país $A$ superará
a la del país $B$

Análisis  
SALIDA: El número de años en que la población de $A$ supera
a la de $B$.  
ENTRADA: las poblaciones $x$ e $y$.  
PROCESOS: ---

Algoritmo

```javascript
variables REALES: x, y, tiempo
LEER: x, y
tiempo <- 0

MIENTRAS y >= x HACER
    y <- y * (1 + 5/100)
    x <- x * (1 + 5/100)
    tiempo = tiempo + 1
FIN_MIENTRAS

ESCRIBIR: "Los años necesarios son: ", tiempo
```

### Ejercicio 1.7

Escribir un algoritmo para calcular el cociente entre dos números
por el método de restas sucesivas.

Ejem: 26/6 = 4

1. 26 - 6 = 20
2. 20 - 6 = 14
3. 14 - 6 = 8
4. 8 - 6 = 2

Cociente entero 4

Análisis  
SALIDA: Cociente entero.  
ENTRADA: dividendo y divisor.  
PROCESO: método de restas sucesivas

Algoritmo

```javascript
variables ENTERAS: dividendo, divisor, cociente
LEER: dividendo, divisor

cociente <-  0

MIENTRAS dividendo >= divisor HACER
    dividendo <- dividendo - divisor
    cociente <- cociente + 1
FIN_MIENTRAS

ESCRIBIR: "El cociente entero es: ", cociente
```

### Ejercicio 1.8

Escribir un algoritmo para calcular el producto de dos números
por el método de sumas sucesivas.  
Ejem:
$$5\times4 = 5 + 5 + 5 + 5 = 20$$

Análisis
SALIDA: El producto de los dos números.  
ENTRADA: Variables enteras.  
PROCESO: sumas sucesivas.

Algoritmo

```javascript
variables ENTERAS: producto, multiplicando, multiplicador, contador
LEER: multiplicando, multiplicador
contador <- 1
producto <- 0

MIENTRAS contador <= multiplicador HACER
    producto <- producto + multiplicando
    contador <- contador + 1
FIN_MIENTRAS

ESCRIBIR: "El producto es: ", producto
```

### Ejercicio 1.9

Hacer un algoritmo para calcular la potencia de un número
elevado a un exponente por el método de multiplicaciones
sucesivas.

Ejem:
$$3^4 = 3\times 3\times3\times3 = 81$$

Análisis  
SALIDA: La potencia.  
ENTRADA: Base y exponente.  
PROCESO: multiplicaciones sucesivas.

Algoritmo

```javascript
variables ENTERAS: base, exponente, potencia, base
LEER: base, potencia

potencia <- 1
contador <- 1

MIENTRAS contador <= exponente HACER
    potencia <- potencia * base
    contador <- contador + 1
FIN_MIENTRAS

ESCRIBIR: "La potencia es: ", potencia
```

### Ejercicio 1.10

Escribir un algoritmo para hallar el factorial de un número,
sabiendo que $n! = 1\times2\times3\times\cdots\times n$

Análisis  
SALIDA: el factorial del número.  
ENTRADA: el número n.  
PROCESO: multiplicar los números desde 1 hasta n.

Algoritmo

```javascript
variables ENTERAS: n, fact, contador
LEER: n

fact <- 1
contador <- 2

MIENTRAS contador <= n HACER
    fact <- fact * contador
    contador <- contador + 1
FIN_MIENTRAS

ESCRIBIR: n, "! = ", fact
```
